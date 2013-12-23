default['eventstore']['version']['major'] = '2'
default['eventstore']['version']['minor'] = '0'
default['eventstore']['version']['patch'] = '1'
default['eventstore']['version'] = "#{node['eventstore']['version']['major']}.#{node['eventstore']['version']['minor']}.#{node['eventstore']['version']['patch']}"
default['eventstore']['source_uri'] = "https://github.com/EventStore/EventStore/releases/download/ES-Mono-v#{node['eventstore']['version']}/"
default['eventstore']['bin_filename'] = "EventStore-Mono-#{node['eventstore']['version']}.tgz"

default['eventstore']['install_dir'] = '/usr/local/eventstore/'
default['eventstore']['command'] = 'mono-sgen EventStore.SingleNode.exe'
default['eventstore']['user'] = 'eventstore'
default['eventstore']['config_dir'] = '/etc/eventstore/'
default['eventstore']['config_file'] = "#{node['eventstore']['config_dir']}config.json"
default['eventstore']['data_dir'] = '/var/lib/eventstore/' 

default['eventstore']['config']['logsdir'] = '/var/log/eventstore/'
default['eventstore']['config']['db'] = node['eventstore']['data_dir']
default['eventstore']['config']['runProjections'] = 'ALL'
