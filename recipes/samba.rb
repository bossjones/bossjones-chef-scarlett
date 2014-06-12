#
# Cookbook Name:: besamba
# Recipe:: default
#
# Copyright 2013, Behance / Adobe
#
# All rights reserved - Do Not Redistribute
#

# install samba
%w{ samba samba-common }.each do |pkg|
  package pkg do
    action :install
  end
end

%w{ python-glade2 system-config-samba }.each do |pkg|
  package pkg do
    action :install
  end
end

# smb config
cookbook_file '/etc/samba/smb.conf' do
  source 'smb.conf'
  action :create
end

# enable services
service 'smbd' do
  action [ :enable, :start ]
end

# set password for pi
execute 'set password' do
  command '(echo pi; echo pi) | smbpasswd -s -a pi'
end

# restart samba
service 'smbd' do
  action :restart
end
