FROM ubuntu:latest
RUN apt-get update 
RUN apt install -y wget
RUN wget https://dl.grafana.com/oss/release/grafana-7.5.3.linux-amd64.tar.gz
RUN mkdir ~/grafana
COPY grafana.ini /root
RUN cat /root/grafana.ini
RUN tar -zxvf grafana-7.5.3.linux-amd64.tar.gz -C ~/grafana
WORKDIR /root/grafana/grafana-7.5.3/bin 
CMD /root/grafana/grafana-7.5.3/bin/grafana-server --config /root/grafana.ini
