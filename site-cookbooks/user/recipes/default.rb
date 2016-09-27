#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group node["user"] do
  group_name node["user"]
  action [:create]
end

user node['user'] do
  comment "#{node['user']}"
  group node['user']
  home "/home/#{node['user']}"
  supports manage: true
  action %w(create manage)
end
