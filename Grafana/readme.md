## Install Grafana

Update and upgrade system packages

```
apt update && apt upgrade
```

Install the prerequisite packages:

```
sudo apt-get install -y apt-transport-https software-properties-common wget
```

Import the GPG key:

```
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
```

Add the repository for stable releases

```
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```

Update the list of available packages

```
sudo apt-get update
```

Install Grafana OSS Edition 

```
sudo apt-get install grafana
```

Install Grafana Enterprise Edition

```
sudo apt-get install grafana-enterprise
```

Start Grafana Server

```
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server
```

Enable Grafana as a Startup Service

```
sudo systemctl enable grafana-server.service
```
## Uninstall Grafana on Debian or Ubuntu

#### Stop Grafana systemd

```
sudo systemctl stop grafana-server
```

#### Stop Grafana init.d

```
sudo service grafana-server stop
```

#### Uninstall Grafana OSS Edition

```
sudo apt-get remove grafana
```

#### Uninstall Grafana Enterprise Edition

```
sudo apt-get remove grafana-enterprise
```

#### Remove Grafana Repo

```
sudo rm -i /etc/apt/sources.list.d/grafana.list
```