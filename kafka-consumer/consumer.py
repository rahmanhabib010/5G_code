from confluent_kafka import Consumer
import influx_connector
import datetime

INFLUX_HOST = "10.0.0.172"
INFLUX_PORT = "8086"
INFLUX_TOKEN = ""
BUCKET = "vt_slice"
MEASUREMENT = "live_data"
# MEASUREMENT = "four_ue_bw_prbSum"
# MEASUREMENT = "two_ue_bw"
# MEASUREMENT = "five_period"
# MEASUREMENT = "debug_data"
# ORG = "est"

def preprocessMessage(message):
    try:
        msgList = message.split(',')
        # msgList must be of size 7 [time, sst, sd, prbUsage, partition, sumPrbs, bytesSent]
        if len(msgList) != 7:
            print("Message must contain 7 comma-separated entries, Got ", msgList)
            return None
        else:
            data = {
                "timestamp" : msgList[0],
                "sst" : int(msgList[1]), 
                "sd" : int(msgList[2]), 
                "prbUsage" : float(msgList[3]), 
                "partition" : int(msgList[4]),
                "sumPrbs" : float(msgList[5]),
                "byteSent": float(msgList[6])
            }
            return data
    except Exception as err:
        print("Error in processing message {} | Error : {}".format(message, err))
        return None


if __name__ == '__main__':
    consumer = Consumer({
    'bootstrap.servers': 'localhost',
    'group.id': 'mygroup',
    'auto.offset.reset': 'earliest'
    })

    consumer.subscribe(['test'])
    try:
        while True:
            try:
                msg = consumer.poll(1.0)
                if msg is None:
                    continue
                if msg.error():
                    print("Consumer error: {}".format(msg.error()))
                    continue
                message = msg.value().decode('utf-8')
                print("Recieved Message is ", message)
                message = preprocessMessage(message)
                print("Processed Message is ", message)
                if message is not None:
                    # Sent the data to influxDb
                    influxObj = influx_connector.InfluxConnector(host=INFLUX_HOST, port=INFLUX_PORT, _database = BUCKET)
                    influxObj.writeData(MEASUREMENT, message)
                    print("Message sent to influxDb at : ", datetime.datetime.now())
            except Exception as err:
                print(err)
                print("Error Occured Err: ", err)
                input("xxx:: Press the Enter key to Skip Current Message and continue\t\t") 

    except KeyboardInterrupt:
        print("Keyboard Interrupt")
    
    finally:
        print("Closing the consumer")
        consumer.close()