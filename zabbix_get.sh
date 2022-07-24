zabbix_get -s 127.0.0.1 -p 10050 -k agent.ping
zabbix_get -s 127.0.0.1 -p 10050 -k agent.version
zabbix_get -s 127.0.0.1 -p 10050 -k agent.hostname
zabbix_get -s 127.0.0.1 -p 10050 -k system.cpu.load[all,avg1]
