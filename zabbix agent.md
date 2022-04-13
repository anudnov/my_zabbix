Install Zabbix 6 on Ubuntu 20.04|18.04
```
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu20.04_all.deb
sudo dpkg -i zabbix-release_6.0-1+ubuntu20.04_all.deb
```

sudo apt update
sudo apt install zabbix-agent

nano /etc/zabbix/zabbix_agentd.conf

sudo systemctl restart zabbix-agent
sudo systemctl status zabbix-agent

sudo ufw allow 10050/tcp

######################################################################################################################################
######################################################################################################################################

Uninstall agent CentOS:
yum remove zabbix-agent -y
cd /etc
rm -rf zabbix

rpm -qa | grep 


New istallation:
https://www.zabbix.com/download_agents?version=5.4&release=5.4.2&os=Linux&os_version=3.0&hardware=amd64&encryption=No+encryption&packaging=Archive&show_legacy=0

######################################################################################################################################
######################################################################################################################################
######################################################################################################################################
Remove zabbix agent:

rpm -qa | grep -i zabbi
rpm -e
cat /etc/redhat-release
yum remove -y zabbix-release

CENTOS6 
yum install -y https://repo.zabbix.com/zabbix/5.0/rhel/6/x86_64/zabbix-release-5.0-1.el6.noarch.rpm
yum clean all
yum install -y zabbix-agent

CENTOS7
yum install http://repo.zabbix.com/zabbix/2.4/rhel/7/x86_64/zabbix-release-2.4-1.el7.noarch.rpm
yum clean all
yum install -y zabbix-agent

cp /etc/zabbix/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.default && cd /etc/zabbix/
	nano /etc/zabbix/zabbix_agentd.conf
		Server=10.113.0.0/24
		ServerActive=10.113.0.X
		Hostname=

service zabbix-agent start
chkconfig zabbix-agent on

iptables -L -n |grep "10050"
cp /etc/sysconfig/iptables /etc/sysconfig/iptables.orig

iptables -I INPUT -s 10.0.0.0/24 -p tcp -m tcp --dport 10050 -j ACCEPT
iptables -I INPUT -s 10.0.0.0/24 -p udp -m udp --dport 10050 -j ACCEPT


service iptables save
service iptables restart
iptables -L -n |grep "10050"

####################################################
CentOS7
#Check zone
firewall-cmd --get-default-zone
#zone = public.
#port = 10050 (zabbix)
	firewall-cmd --zone=public --permanent --add-port=10050/tcp
# save configuration
	firewall-cmd --reload
