
group 'pi' do
  gid 2001
end

# create a /usr/local/bin and add to path
# file '/etc/profile.d/usrlocal.sh' do
#   action :create
#   content 'pathmunge /usr/local/bin'
#   owner 'root'
#   group 'root'
#   mode 00644
# end

include_recipe 'bossjones-chef-scarlett::prereqs'

#include_recipe 'users::piusers'
#include_recipe 'sudoers::scarlett'
