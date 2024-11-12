#ifndef PRODUCER_H
#define PRODUCER_H

#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <vector>
#include <librdkafka/rdkafkacpp.h>
#include <chrono>
#include <thread>
#include <fstream>
#include <ctime>
#include <iomanip>
#if _AIX
#include <unistd.h>
#endif



 class FileDeliveryReportCb : public RdKafka::DeliveryReportCb
{
public:
  void dr_cb(RdKafka::Message &message) override
  {
    std::ofstream kafkaLogStream;
    kafkaLogStream.open("kafka-log.txt", std::ios::app);
    if (!kafkaLogStream.is_open()) {
        std::cerr << "Failed to open Kafka-Log-File!" << std::endl;
        return ;
    }
    /* If message.err() is non-zero the message delivery failed permanently
     * for the message. */
    if (message.err())
      kafkaLogStream << "Message Delivery FAILED: " << message.errstr()
                << std::endl;
    else{
      
      kafkaLogStream << "Message Delivered to topic " << message.topic_name()
                << " [" << message.partition() << "] at offset "
                << message.offset() << std::endl;
      auto start = std::chrono::high_resolution_clock::now();
      std::time_t start_time_t = std::chrono::system_clock::to_time_t(start);
      std::tm* start_time_tm = std::localtime(&start_time_t);
      kafkaLogStream << "Start Time: " 
                  << std::put_time(start_time_tm, "%Y-%m-%d %H:%M:%S ") 
                  << std::endl;
      auto microseconds = std::chrono::duration_cast<std::chrono::microseconds>(
                                start.time_since_epoch()) % 1000000;

        kafkaLogStream << "." << std::setfill('0') << std::setw(6) << microseconds.count() << " microseconds" << std::endl;
    }
      
  }
};



// Kafka Producer Helper class
class KafkaProducerHelper
{
public:
    // Constructor
    KafkaProducerHelper(std::string brokers);
    // Function to produce a single message to Kafka
    bool produceSingleMessage(std::string topic, std::string data);

    // Destructor
    ~KafkaProducerHelper();

private:
    RdKafka::Producer *producer;
    FileDeliveryReportCb ex_dr_cb;
    int retry_limit = 5;
};

// KafkaProducerHelper* sayhelloxyz();
#endif // PRODUCER_H
