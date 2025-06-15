#!/bin/bash

# Update system
sudo yum update -y

# Install Prometheus
sudo useradd --no-create-home --shell /bin/false prometheus
mkdir /etc/prometheus /var/lib/prometheus
cd /tmp
curl -LO https://github.com/prometheus/prometheus/releases/download/v2.52.0/prometheus-2.52.0.linux-amd64.tar.gz
tar -xvf prometheus-2.52.0.linux-amd64.tar.gz
cd prometheus-2.52.0.linux-amd64
sudo cp prometheus promtool /usr/local/bin/
sudo cp -r consoles console_libraries /etc/prometheus/

# Install Grafana
sudo yum install -y https://dl.grafana.com/oss/release/grafana-10.4.2-1.x86_64.rpm
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
