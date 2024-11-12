import pandas as pd
from influxdb_client import InfluxDBClient, Point
from influxdb_client.client.write_api import SYNCHRONOUS
from datetime import datetime



class INSERTDATA:

   def __init__(self):
        self.client = InfluxDBClient(url = "http://10.0.0.216:8086")

def populatedb():
    #  df = pd.read_json('cell.json.gz', lines=True)
    #  df = df[['cellMeasReport']].dropna()
    #  df = jsonToTable(df)
    #  df = time(df)
    df = pd.DataFrame({"Time": [0, 1, 2], "Val" : [10, 20, 30]})
    print(df.head())
    db = INSERTDATA()
    temperature_point = Point("temperature") \
                    .tag("location", "room1") \
                    .field("value", 25.3) \
                    .field("value2", 30)  \
                    .time(datetime.utcnow())
    write_api = db.client.write_api(write_options=SYNCHRONOUS)
    write_api.write(bucket="UEData",record=temperature_point, org="primary")

populatedb()