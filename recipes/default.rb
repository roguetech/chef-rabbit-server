include_recipe 'rabbitmq'
include_recipe 'rabbitmq::mgmt_console'
# Plugins
include_recipe 'rabbit::plugin_management'
#clustering

#users

#firewall
