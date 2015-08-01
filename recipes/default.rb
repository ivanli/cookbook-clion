#
# Cookbook Name:: clion
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ark'

case node['platform']

when 'ubuntu'
  ark 'clion' do
    url "http://download.jetbrains.com/cpp/clion-#{node['clion']['version']}.tar.gz"
    version node['clion']['version']
    action :install
  end
else  
  Chef::Log.error "Unknown platform #{node['platform']}"  
end



#http://download.jetbrains.com/cpp/clion-1.0.5.exe
#http://download.jetbrains.com/cpp/clion-1.0.5.tar.gz