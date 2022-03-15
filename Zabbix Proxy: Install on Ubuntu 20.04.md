Zabbix Proxy: Install on Ubuntu 20.04

Step 1: Install Zabbix Proxy on Ubuntu
Setup Zabbix 6 .deb package and install proxy server:
```
Zabbix 6.0 LTS version (supported until February, 2027)
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu$(lsb_release -rs)_all.deb
sudo dpkg -i zabbix-release_6.0-1+ubuntu$(lsb_release -rs)_all.deb
sudo apt update
sudo apt -y install zabbix-proxy-mysql zabbix-sql-scripts
```




Thank you.
https://bestmonitoringtools.com/install-zabbix-proxy-on-ubuntu/
