
# TODO: Should this be an attribute?
packages = %w{  openssh-server }

packages.each do |pkg|
  package pkg do
    action :install
  end
end

service 'sshd' do
  supports :restart => true
  action [ :enable, :start ]
end

cookbook_file '/etc/ssh/sshd_config' do
  source 'sshd_config'
  owner 'root'
  group 'root'
  mode 00600
  notifies :restart, 'service[sshd]', :immediately
end

cookbook_file '/home/pi/.ssh/authorized_keys' do
  source 'authorized_keys_pi'
  owner 'root'
  group 'root'
  mode 00644
  notifies :restart, 'service[sshd]', :immediately
end
