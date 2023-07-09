### Install Zabbix Proxy on Ubuntu
Zabbix 6.4 standard version (supported until November, 2023)
```
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu$(lsb_release -rs)_all.deb
sudo dpkg -i zabbix-release_6.4-1+ubuntu$(lsb_release -rs)_all.deb
sudo apt update
sudo apt -y install zabbix-proxy-mysql zabbix-sql-scripts
```
#### Configure database
```
sudo apt install software-properties-common -y
```
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

#### Reset root password for database
```
sudo mysql_secure_installation
```
```
Enter current password for root (enter for none): Press Enter
Switch to unix_socket authentication [Y/n] y
Change the root password? [Y/n] y
New password: <Enter root DB password>
Re-enter new password: <Repeat root DB password>
Remove anonymous users? [Y/n]: y
Disallow root login remotely? [Y/n]: y
Remove test database and access to it? [Y/n]:  y
Reload privilege tables now? [Y/n]:  y
```
#### Create database
```
sudo mysql -uroot -p'rootDBpass' -e "create database zabbix_proxy character set utf8mb4 collate utf8mb4_bin;"
sudo mysql -uroot -p'rootDBpass' -e "grant all privileges on zabbix_proxy.* to zabbix@localhost identified by 'zabbixDBpass';"
```
#### Import initial schema and data.
```
sudo cat /usr/share/zabbix-sql-scripts/mysql/proxy.sql | mysql --default-character-set=utf8mb4 -uzabbix -p'zabbixDBpass' zabbix_proxy
```
 ### Zabbix proxy configuration
```
 sudo nano /etc/zabbix/zabbix_proxy.conf
```
```
DBPassword=zabbixDBpass
ConfigFrequency=100

Server=10.113.44.235
Hostname=Zabbix proxy 01
DBName=zabbix_proxy
DBUser=zabbix
```
```
sudo systemctl restart zabbix-proxy
sudo systemctl enable zabbix-proxy
```
