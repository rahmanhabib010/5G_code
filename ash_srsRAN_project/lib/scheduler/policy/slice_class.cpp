#include <iostream>
#include <fstream>
#include <vector>

bool NEW_PARTITION_KPI_CALC = true;
// The Slice class is created to handle Slice-Scheduling at Du-level
class SliceStats{
  public:
    int partition;
    int slotCount;
    double   sumPrbs;
    
    
    SliceStats(double _sumPrbs, int _partition, int _slotCount){
        sumPrbs = _sumPrbs;
        partition = _partition;
        slotCount = _slotCount;
    }
};

class Slice
{
private:
  uint8_t  sst;
  uint32_t sd;
  int slotCount;
  std::vector<SliceStats> stats;
  int      partition;
  double   slicePrbUsage;
  double   sumPrbs;
  // Actual traffic represents the prbs asked for before we apply partition
  double   bytesSent;

public:

  

  Slice(uint8_t _sst, uint32_t _sd, int _partition){
    this->slotCount = 0;
    this->sst       = _sst;
    this->sd        = _sd;
    this->partition = _partition;
    this->slicePrbUsage = 0;
    this->sumPrbs = 0;
    this->bytesSent = 0;
  }

  Slice(){
    this->sst       = 0;
    this->sd        = 0;
    this->partition = 0;
    this->slicePrbUsage = 0;
    this->sumPrbs = 0;
    this->bytesSent = 0;
  }

    int getPartition(){
      return partition;
    }

    std::pair<uint8_t, uint32_t> getSliceIdentifier(){
      return {sst, sd};
    }

    void addPrbs(int val){
        // std::cout<<"xxxxxxxxx---------------- PRbs Are added "<<sumPrbs<<std::endl;
        this->sumPrbs += val;
        // Assuming single-ue is allocated each slot to one slot: BOLD ASSUMPTION
        this->slotCount++;
    }

  void incrementByteSent(int bytes){
    this->bytesSent += bytes;
  }


    void calculatePrbUsgae(double numSlots){
        slicePrbUsage = sumPrbs / numSlots / double(partition) * 100.0;
    }

    void calculatePrbUsageWithVaryingPartition(double numSlots){
        // Now to calculate PRB-Usage with Varying Parition
        if (slotCount != 0) // Pushing the last Stats
          stats.push_back(SliceStats(sumPrbs, partition, slotCount));
        if(stats.size() == 0){
          std::cout<<"Warning Stats are empty for KPI calculations"<<std::endl;
          slicePrbUsage = 0;
          return;
        }

        // std::cout<<"Stats-Size : "<<stats.size()<<std::endl;
        
        double totSlotCount = 0, resAllocated = 0;;
        for(SliceStats cur: stats){
          totSlotCount += cur.slotCount;
          resAllocated += cur.sumPrbs;
        }
        if(totSlotCount > numSlots){
          std::cout<<"Warning:: Slot Count is more than the default one | Signifying Multiple Ue's allocated in single slot "<<std::endl;
          std::cout<<"Warning:: Calculated-Slots : "<<totSlotCount<<", Given Slots : "<<numSlots<<std::endl;
          // increasing numslots to totSlotCount
          numSlots = totSlotCount;
        }
        // Now, There will be some empty slots in numSlots (for-sure) when compared to totSlotCount
        // But how many empty slots in each partition, in order to do that we divide (numSlots) to various stats % wise
        double ratio = numSlots/totSlotCount;
        double totAvailableResource = 0;
        for(SliceStats cur: stats){
          double  adjustedSlotCount =  ratio * cur.slotCount;
          // For the adjustedSlotCount, partition was the max-resources avaiable
          totAvailableResource += (cur.partition * adjustedSlotCount);
        }
        
        slicePrbUsage = resAllocated / totAvailableResource * 100.0;
        std::cout<<"Total resources avaiable : "<<totAvailableResource<<" \t Used: "<<resAllocated<<"\t\t % : "<<slicePrbUsage<<"\t\t SlotCount : "<<totSlotCount<<std::endl;
    }

    std::string getKafkaString(std::string curTime = ""){
        std::string kafkaString = curTime + "," + std::to_string(sst) + "," + std::to_string(sd) + "," + std::to_string(slicePrbUsage) + "," + std::to_string(partition) + "," + std::to_string(sumPrbs) + ',' + std::to_string(bytesSent);
        return kafkaString;
    }

    

    void reset(){
        this->slicePrbUsage = 0;
        this->sumPrbs = 0;
        this->slotCount = 0;
        this->bytesSent = 0;
        this->stats.clear();

    }

    bool modifyPartition(int newAlloc){
      // When modifying the NewPartition-Store the Slice-stats already calculated
      if (NEW_PARTITION_KPI_CALC){
        if(this->slotCount != 0){
          // Save the current state
          stats.push_back(SliceStats(sumPrbs, partition, slotCount));
          // reset the state
          this->sumPrbs = 0;
          this->slotCount = 0;
        }
        
      }
      this->partition = newAlloc;
      return true;
    }

};
