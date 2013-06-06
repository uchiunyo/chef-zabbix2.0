name             "zabbix2.0"
maintainer       "uchiunyo"
maintainer_email "@uchiunyo"
license          "All rights reserved"
description      "Installs/Configures zabbix2.0"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends          "yum"

recipe           "zabbix2.0::server", "Zabbix2.0 server install"
recipe           "zabbix2.0::agent", "Zabbix2.0 agent install"

%w{ centos amazon }.each do |os|
    supports os
end

attribute "zabbix/database",
  :display_name => "zabbix use database",
  :description => "rds or mysql specify possible",
  :default => 'mysql'

attribute "zabbix/mysql/buffer_pool_size",
  :display_name => "buffer_pool_size",
  :description => "Set buffer_pool_size of my.cnf",
  :default => '128M'

attribute "zabbix/mysql/log_file_size",
  :display_name => "log_file__size",
  :description => "Set log_file_size of my.cnf",
  :default => '32M'

attribute "zabbix/rds/MasterUsername",
  :display_name => "RDS MasterUsername",
  :description => "Set MasterUsername of AmazonRDS",
  :default => 'rdsuser'

attribute "zabbix/rds/MasterPassword",
  :display_name => "RDS MasterPassword",
  :description => "Set MasterPassword of AmazonRDS",
  :default => 'rdspass'

attribute "zabbix/server/DebugLevel",
  :display_name => "ZabbixServer DebugLevel",
  :description => "Set DebugLevel of zabbix_server.conf",
  :default => '3'

attribute "zabbix/server/DBHost",
  :display_name => "ZabbixServer DBHost",
  :description => "Set DBHost of zabbix_server.conf",
  :default => 'localhost'

attribute "zabbix/server/DBName",
  :display_name => "ZabbixServer DBName",
  :description => "Set DBName of zabbix_server.conf",
  :default => 'zabbix'

attribute "zabbix/server/DBUser",
  :display_name => "ZabbixServer DBUser",
  :description => "Set DBUser of zabbix_server.conf",
  :default => 'zabbix'

attribute "zabbix/server/DBPassword",
  :display_name => "ZabbixServer DBPassword",
  :description => "Set DBPassword of zabbix_server.conf",
  :default => 'zabbix'

attribute "zabbix/server/ListenIP",
  :display_name => "ZabbixServer ListenIP",
  :description => "Set ListenIP of zabbix_server.conf",
  :default => '0.0.0.0'

attribute "zabbix/server/Timeout",
  :display_name => "ZabbixServer Timeout",
  :description => "Set Timeout of zabbix_server.conf",
  :default => '30'

attribute "zabbix/agent/DebugLevel",
  :display_name => "ZabbixAgent DebugLevel",
  :description => "Set Timeout of zabbix_agentd.conf",
  :default => '3'

attribute "zabbix/agent/Server",
  :display_name => "ZabbixAgent Server",
  :description => "Set Server of zabbix_agentd.conf",
  :default => '127.0.0.1'

attribute "zabbix/agent/ListenIP",
  :display_name => "ZabbixAgent ListenIP",
  :description => "Set ListenIP of zabbix_agentd.conf",
  :default => '0.0.0.0'

attribute "zabbix/agent/StartAgents",
  :display_name => "ZabbixAgent StartAgents",
  :description => "Set StartAgents of zabbix_agentd.conf",
  :default => '3'

attribute "zabbix/agent/ServerActive",
  :display_name => "ZabbixAgent ServerActive",
  :description => "Set ServerActive of zabbix_agentd.conf",
  :default => '127.0.0.1'

attribute "zabbix/agent/Hostname",
  :display_name => "ZabbixAgent Hostname",
  :description => "Set Hostname of zabbix_agentd.conf",
  :default => 'OS Hostname'

attribute "zabbix/agent/Timeout",
  :display_name => "ZabbixAgent Timeout",
  :description => "Set Timeout of zabbix_agentd.conf",
  :default => '3'
