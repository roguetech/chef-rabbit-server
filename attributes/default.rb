default['erlang']['install_method'] = "esl"
default['rabbitmq']['version'] = "3.7.9"
default['rabbitmq']['default_user'] = 'guest'
default['rabbitmq']['default_pass'] = 'guest'
default['rabbitmq']['loopback_users'] = nil
default['rabbitmq']['user'] = 'admin'
default['rabbitmq']['pass'] = 'admin'

# Plugins
default['rabbitmq']['enabled_plugins'] = ['rabbitmq_management_visualiser','rabbitmq_test']
