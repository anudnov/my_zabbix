#### Step 1: Install Zabbix Proxy on Ubuntu
Zabbix 6.4 standard version (supported until November, 2023)
```
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu$(lsb_release -rs)_all.deb
sudo dpkg -i zabbix-release_6.4-1+ubuntu$(lsb_release -rs)_all.deb
sudo apt update
sudo apt -y install zabbix-proxy-mysql zabbix-sql-scripts
```
#### Step 2: Configure database
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
