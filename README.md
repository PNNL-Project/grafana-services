# What is this?

It is a bash script that launches containers of Grafana dashboard and its dependency -- influxdb.

# How to use it?

Make sure a docker is installed and running on your machine. `cd ./grafana-services` and then `./influx_init.sh`. An influxDB container will be up and running on your machine. Please use the default port: `8086`. You can access the Grafana dashboard via `localhost:3000`

# What does the script do?

Basically, it downloads an influxDB docker image and launch its container. Then it will import the data inside `db_snapshot` directory. Meanwhile, it creates the Grafana container with an initialization script.

# Data source?

When adding the data source for Grafana, use `my_influxdb:8086` as the URL (The host name must be consistent with the container name of the influxDB). For Database under InfluxDB details, use `cs6510`.

# More about Grafana

See this [doc](./README.md)
