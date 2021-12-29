#!/bin/bash

systemctl restart zabbix-server zabbix-agent apache2
systemctl status zabbix-server && systemctl status apache2
# systemctl status zabbix-agent
# service zabbix-server restart && service zabbix-server status
