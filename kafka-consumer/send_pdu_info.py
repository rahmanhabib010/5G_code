import pandas as pd
import influx_connector
from datetime import datetime
import time

INFLUX_HOST = "10.0.0.172"
INFLUX_PORT = "8086"
INFLUX_TOKEN = ""
BUCKET = "vt_slice"
MEASUREMENT = "pdu_info"

def writeDataFrame(influxObj ,df):
    for index, row in df.iterrows():
        data_point = [
            {
                "measurement": MEASUREMENT,
                "time": datetime.utcnow(),
                "tags":{
                    "SUPI" : row["SUPI"], 
                },
                "fields":{
                    "PDU_IP" : row["PDU-IP"],
                    "State" : row["State"],
                }
            }
        ]
        print(data_point)
        influxObj.writeDataPoint(data_point, BUCKET)

if __name__ == '__main__':
    INPUT_FILE_PATH = "/home/cci/ashish/ash_open5gs/build/tests/app/pdu_info.csv"
    LOG_PERIOD = 2
    influxObj = influx_connector.InfluxConnector(host=INFLUX_HOST, port=INFLUX_PORT, _database = BUCKET)
    influxObj.drop(MEASUREMENT)
    prevdf = pd.DataFrame()
    print("Starting Influx-Client")
    while True:
        curdf = pd.read_csv(INPUT_FILE_PATH)
        if prevdf.equals(curdf):
            print("PDU_INFO_WRITER:: No new PDU-Session Found !")
        else:
            print("PDU_INFO_WRITER:: Updating the PDU-Session in influxDb")
            print(curdf)
            influxObj.drop(MEASUREMENT)

            writeDataFrame(influxObj, curdf)
            prevdf = curdf
        time.sleep(LOG_PERIOD)

