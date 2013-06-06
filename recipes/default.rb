#
# Cookbook Name:: zabbix2.0
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum::epel"

case node['platform']
when "centos", "amazon"
  yum_repository "zabbix" do
    if /i386|i686/ =~ node['kernel']['machine']
      url "http://repo.zabbix.com/zabbix/2.0/rhel/6/i386/"
    else
      url "http://repo.zabbix.com/zabbix/2.0/rhel/6/x86_64/"
    end
    action :add
  end
end
