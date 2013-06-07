#
# Cookbook Name:: xvfb
# Recipe:: daemon
#
# Copyright 2011, Substantial
#
# All rights reserved - Do Not Redistribute
#

template "/etc/init.d/xvfb" do
  source "xvfb.init.erb"
  mode "0755"
end

service "xvfb" do
  action [:start, :enable]
end
