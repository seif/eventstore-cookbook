# eventstore cookbook

OpsCode Chef cookbook to install [EventStore](http://geteventstore.com/ "EventStore")

# Overview

[Event Store](http://geteventstore.com/ "EventStore") gives you a straightforward persistence engine for applications using event-sourcing, as well as being great for storing time-series data.

This cookbook allows the installation of the EventStore using OpsCode chef.

# Dependencies

Depends on the [mono](https://github.com/Youscribe/cookbook-mono/) cookbook from github, which has support for later versions of ubuntu, the mono cookbook will need to be used from github as it hasn't yet been updated on the chef community site.

# Getting Started

The cookbook can simply be used by adding "eventstore" to the run list of a node. All the config options for the installation are in the `node['eventstore']` namespace. You can configure the eventstore instance by adding attributes in the `node['eventstore']['config']` namespace. Any attributes added in the config namespace will be used in the generated config.yaml file. The attributes key  should match the yaml config key from [EventStore arguments](https://github.com/EventStore/EventStore/wiki/Command-Line-Arguments), e.g. `node['eventstore']['config']['runProjections'] = 'ALL'`.

# Attributes
* node['eventstore']['source_uri'] Uri of eventstore package. Current default is 3.0.0-rc9

* node['eventstore']['install_dir'] Path where the eventstore binaries will be extracted to.
* node['eventstore']['user'] Username to run eventstore under, user will be created and given appropriate permissions. Default is 'eventstore'
* node['eventstore']['config_dir'] Where to store eventstore config files. Default is '/etc/eventstore/'
* node['eventstore']['data_dir'] Path of directory where eventstore will store its data. Default is '/var/lib/eventstore/' 

* node['eventstore']['config']['WHATEVER'] Will add a key WHATEVER to the generated config value with the value specified

# Author

Author:: Seif Attar (iam@seifattar.net)
