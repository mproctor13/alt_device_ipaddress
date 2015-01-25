#
# Cookbook Name:: alt_device_paddress
# Recipe:: default
#
# Author:: Michael Proctor-Smith (<mproctor13@gmail.com>)
#
# Copyright 2015, Michael Proctor-Smith
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if Ohai::VERSION.to_i >= 7
  ohai_version = 7
  plugin_name = 'AltDeviceIpaddress'
else
  ohai_version = 6
  plugin_name = 'alt_device_ipaddress'
end

ohai 'reload_alt_ip' do
  plugin plugin_name
  action :nothing
end

template "#{node['ohai']['plugin_path']}/alt_device_ipaddress.rb" do
  source "alt_device_ipaddress_#{ohai_version}.rb.erb"
  owner  'root'
  group  node['root_group']
  mode   '0755'
  notifies :reload, 'ohai[reload_alt_ip]', :immediately
end

include_recipe 'ohai::default'
