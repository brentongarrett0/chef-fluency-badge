#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


if node['platform_family'] == "rhel"
	#set pkgname to httpd.
	pkgname = "httpd"

elsif node['platform_family'] == 'debian'
	#set pkgname to apache2
	pkgname = "apache2"
end


#Install apache package.
package 'apache2' do
	package_name pkgname
	action :install
end


#Start and enable apache package.
service 'apache2' do
	service_name pkgname
	action [:start, :enable]
end


#Recipes to run
include_recipe 'apache::websites'
