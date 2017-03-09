#Install the tree package
package 'tree' do
	package_name 'tree'
	action :install
end


#Install the vim package
package 'vim' do
	package_name 'vim'
	action :install
end

#Create test file
file '/etc/chef/testfile.txt' do
	content 'Hello Brenton!'
end
