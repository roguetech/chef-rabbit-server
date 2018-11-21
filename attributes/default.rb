default['erlang']['install_method'] = "esl"
default['rabbitmq']['version'] = "3.7.9"
#default['rabbitmq']['default_user'] = 'guest'
#default['rabbitmq']['default_pass'] = 'guest'
default['rabbitmq']['loopback_users'] = nil
default['rabbitmq']['user'] = 'administrator'
default['rabbitmq']['pass'] = 'admin'

# Plugins
default['rabbitmq']['enabled_plugins'] = ['rabbitmq_management_visualiser','rabbitmq_test','amqp_client','cowboy','eldap','mochiweb','sockjs','webmachine']

# Create users
default['rabbitmq']['enable_users'] = [
  {
    :name => 'administrator',
    :password => 'admin',
    :tag => 'administrators',
    :rights => [
      {
        :vhost => '/',
        :conf => '.*',
        :write => '.*',
        :read => '.*'
      }
    ]
  }
]
