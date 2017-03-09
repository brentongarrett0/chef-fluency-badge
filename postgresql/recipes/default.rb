#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


#Install the package, notify the execute command.
package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end


#Execute the command
execute 'postgresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end


#Start and enable the service
service 'postgresql' do
	action [:enable, :start]
end

