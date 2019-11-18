#
# Cookbook:: ac_high
# Recipe:: ac_10_2
#
# Copyright:: 2019, The Authors, All Rights Reserved.
template '/etc/security/limits.conf' do
  source 'limits.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end
