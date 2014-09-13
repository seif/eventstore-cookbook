default['eventstore']['source_uri'] = "https://github.com/EventStore/EventStore/releases/download/OSS-v3.0.0-rc9/EventStore-OSS-Linux-v3.0.0-rc9.tar.gz"

default['eventstore']['install_dir'] = '/usr/local/eventstore/'
# 2.5.0rc4 had the binaries in a subfolder, this would allow consumer of cookbook to override executable dir if using non-standard archive
default['eventstore']['executable_dir'] = "#{node['eventstore']['install_dir']}EventStore-OSS-Linux-v3.0.0-rc9/" 
default['eventstore']['command'] = 'MONO_GC_DEBUG=clear-at-gc ./clusternode'
default['eventstore']['user'] = 'eventstore'
default['eventstore']['config_dir'] = '/etc/eventstore/'
default['eventstore']['config_file'] = "#{node['eventstore']['config_dir']}config.yaml"
default['eventstore']['data_dir'] = '/var/lib/eventstore/' 

default['eventstore']['config']['Logs'] = '/var/log/eventstore/'
default['eventstore']['config']['Db'] = node['eventstore']['data_dir']
default['eventstore']['config']['RunProjections'] = 'ALL'
