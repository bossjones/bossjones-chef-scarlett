
include_recipe 'users::default'
include_recipe 'users::piusers'
include_recipe 'bossjones-chef-scarlett::sshd_config'

# create a /usr/local/bin and add to path
file '/etc/profile.d/usrlocal.sh' do
  action :create
  content 'pathmunge /usr/local/bin'
  owner 'root'
  group 'root'
  mode 00644
end

include_recipe 'bossjones-chef-scarlett::prereqs'
