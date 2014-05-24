directory '/usr/install' do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

node['apt']['scarlett']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end
