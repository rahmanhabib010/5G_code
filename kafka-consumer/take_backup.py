import pandas as pd
import influx_connector
from datetime import datetime
import time

INFLUX_HOST = "10.0.0.172"
INFLUX_PORT = "8086"
INFLUX_TOKEN = ""
BUCKET = "vt_slice"
MEASUREMENT_TO_BACKUP = "live_data"



if __name__ == '__main__':
    influxObj = influx_connector.InfluxConnector(host=INFLUX_HOST, port=INFLUX_PORT, _database = BUCKET)
    data = influxObj.readData(MEASUREMENT_TO_BACKUP, BUCKET)
    df = pd.DataFrame(data.get_points())
    print(df)
    df.to_csv("{}.csv".format(MEASUREMENT_TO_BACKUP))

