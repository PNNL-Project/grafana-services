#!/bin/bash

echo "Launching grafana and influxdb"
sudo docker-compose up -d

echo "Restoring data for influxdb..."
docker exec -d my_influxdb influxd restore -portable /db_snapshot 

echo "Grafana is running on localhost:3000. InfluxDB is on localhost:8086"
echo "To specify the data source for Grafana, use 'my_influxdb:8086' for the host url. Database name: cs6510"
