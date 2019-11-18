#
# Cookbook:: ac_high
# Recipe:: ac_2_2
#
# Copyright:: 2019, The Authors, All Rights Reserved.
template '/etc/login.defs' do
  source 'login.defs.erb'
  owner 'root'
  group 'root'
  mode '0600'
end
