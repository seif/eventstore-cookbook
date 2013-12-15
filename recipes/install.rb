source_uri = "https://github.com/EventStore/EventStore/releases/download/ES-Mono-v#{node['eventstore']['version']}/"
bin_filename = "EventStore-Mono-#{node['eventstore']['version']}.tgz"

group "eventstore" do
    system true
end

user "eventstore" do
    gid "eventstore"
    shell "/bin/bash"
    home node['eventstore']['data_dir']
    system true
end

remote_file "#{Chef::Config[:file_cache_path]}/#{bin_filename}" do
  source source_uri + bin_filename 
  not_if { File.exists?("#{Chef::Config[:file_cache_path]}/#{bin_filename}") }
  notifies :run, "execute[eventstore_unpack]", :immediately
end

execute "eventstore_unpack" do
  cwd Chef::Config[:file_cache_path]
  command "mkdir -p #{node['eventstore']['install_dir']} && tar -xvf #{bin_filename} -C #{node['eventstore']['install_dir']}"
  action :nothing
end


template "/etc/init/eventstore.conf" do
    source "upstart/eventstore.conf.erb"
end

