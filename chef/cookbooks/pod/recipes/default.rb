include_recipe "pod::setup"

class Chef::Recipe
    # mix in recipe helpers
    include Chef::RubyBuild::RecipeHelpers
end

include_recipe "nginx"
include_recipe "unicorn"

directory "/home/#{node['pod']['user']}/apps" do
  owner node['pod']['user']
  group "admin"
  action :create
end

template "/etc/nginx/sites-enabled/#{node['pod']['app_name']}" do
  owner "root"
  group "root"
  mode 00644
  source "nginx.erb"
  variables( :app_name => node['pod']['app_name'], :user => node['pod']['user'] )
  notifies :restart, "service[nginx]"
end

directory "/var/run/unicorn" do
  owner node['pod']['user']
  group "admin"
  action :create
end

directory "/var/run/unicorn/log" do
  owner node['pod']['user']
  group "admin"
  action :create
end

template "/etc/init.d/unicorn_#{node['pod']['app_name']}" do
  owner node['pod']['user']
  group node['pod']['user']
  mode 00777
  source "unicorn_init.erb"
  variables( :app_name => node['pod']['app_name'], :user => node['pod']['user'] )
end

service "nginx"