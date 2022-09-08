### Install the Zabbix Agent
```
sudo dnf -y update
sudo dnf install -y vim
```

```
sudo dnf install -y https://repo.zabbix.com/zabbix/6.2/rhel/8/x86_64/zabbix-release-6.2-1.el8.noarch.rpm
```
_sudo dnf install -y https://repo.zabbix.com/zabbix/5.4/rhel/8/x86_64/zabbix-release-5.4-1.el8.noarch.rpm_

_sudo dnf install -y https://repo.zabbix.com/zabbix/6.0/rhel/8/x86_64/zabbix-release-6.0-2.el8.noarch.rpm_


```
sudo dnf install -y zabbix-agent
```

#### Confirm the software version installed:
```
rpm -qi zabbix-agent
```

#### Configure Zabbix Agent
```
vi /etc/zabbix/zabbix_agentd.conf
```
```
Server=10.10.10.10
ServerActive=10.10.10.10
Hostname=localhost_server_name
```
