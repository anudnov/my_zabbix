Zabbix Proxy: Install on Ubuntu 20.04

###### Step 1: Install Zabbix Proxy on Ubuntu
Setup Zabbix 6 .deb package and install proxy server:
```
Zabbix 6.0 LTS version (supported until February, 2027)
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu$(lsb_release -rs)_all.deb
sudo dpkg -i zabbix-release_6.0-1+ubuntu$(lsb_release -rs)_all.deb
sudo apt update
sudo apt -y install zabbix-proxy-mysql zabbix-sql-scripts
```
###### Step 2: Configure database
_In this installation, I will use password rootDBpass as root database password and zabbixDBpass as Zabbix proxy database password. Consider changing your password for security reasons._
_In your terminal, use the following command to install MariaDB 10.6._
```
sudo apt install software-properties-common -y
```
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.6
```
```
sudo apt update
sudo apt -y install mariadb-common mariadb-server-10.6 mariadb-client-10.6
```
```
sudo systemctl start mariadb
sudo systemctl enable mariadb
```
######## b. Reset root password for database



###### 
###### 
###### 
###### 
Thank you.
https://bestmonitoringtools.com/install-zabbix-proxy-on-ubuntu/
