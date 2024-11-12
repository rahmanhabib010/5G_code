import pandas as pd
from influxdb import InfluxDBClient
from datetime import datetime

class InfluxConnector:
    def __init__(self, host, port, _database):
        self.client = InfluxDBClient(host = host, port = port, database=_database)
        self.bucket = _database
    
    def readData(self, _measurement, _bucket = None):
        if _bucket is None:
            _bucket = self.bucket
        query = f'SELECT * FROM "{_measurement}"'
        out = self.client.query(query)
        return out

    def drop(self, _measurement, _bucket = None):
        if _bucket is None:
            _bucket = self.bucket
        query = f'DROP MEASUREMENT "{_measurement}"'
        self.client.query(query, database=_bucket)


    def writeData(self, _measurement, data, _bucket = None):
        if _bucket is None:
            _bucket = self.bucket
        # data["timestamp"] = '2021-08-09T18:04:56.865943'
        data_point = [
            {
                "measurement": _measurement,
                "time": data["timestamp"], # internally, the timestamp will be converted to unix-timestamp and then stored in influxdb
                "tags":{
                    "sst" : data["sst"], 
                    "sd" : data["sd"],
                },
                "fields":{
                    "prbUsage" : data["prbUsage"],
                    "partition" : data["partition"],
                    "sumPrbs": data["sumPrbs"],
                    "byteSent": data["byteSent"],
                    "normal_time": data["timestamp"], # For sorting & info, purposes

                }
            }
        ]
        self.client.write_points(data_point, database=_bucket)

    def writeDataPoint(self, data_point, _bucket = None):
        if _bucket is None:
            _bucket = self.bucket

        self.client.write_points(data_point, database=_bucket)


    def writeActionData(self, _measurement, data, cur, extrapolated, _bucket = None):
        if _bucket is None:
            _bucket = self.bucket

        data_point = [
            {
                "measurement": _measurement,
                "time": datetime.utcnow(),
                "tags":{
                    "sst" : data["sst"], 
                    "sd" : data["sd"],
                },
                "fields":{
                    "prbUsage" : cur,
                    "extrapolated" : extrapolated,
                }
            }
        ]
        self.client.write_points(data_point, database=_bucket)