name             'bossjones-chef-scarlett'
maintainer       'Malcolm Jones'
maintainer_email 'hyena@bossjones.com'
license          'All rights reserved'
description      'Installs/Configures scarlett server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'user', '~> 2.1.0'
depends 'sudo', '~> 2.1.0'

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end
