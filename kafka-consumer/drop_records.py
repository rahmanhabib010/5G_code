import influx_connector
import sys

INFLUX_HOST = "10.0.0.172"
INFLUX_PORT = "8086"
INFLUX_TOKEN = ""
BUCKET = "vt_slice"
# MEASUREMENT = "live_data"
MEASUREMENT = "debug_data"

if __name__ == '__main__':
    if len(sys.argv) >= 2:
        MEASUREMENT = sys.argv[1]
    print(f'Running Query | DROP MEASUREMENT "{MEASUREMENT}"')
    influxObj = influx_connector.InfluxConnector(host=INFLUX_HOST, port=INFLUX_PORT, _database = BUCKET)
    influxObj.drop(MEASUREMENT)