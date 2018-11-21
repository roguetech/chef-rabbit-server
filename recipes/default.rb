include_recipe 'rabbitmq'
include_recipe 'rabbitmq::mgmt_console'
# Plugins
include_recipe 'rabbitmq::plugin_management'
# Adding users
include_recipe 'rabbitmq::user_management'
#clustering

#users

#firewall
