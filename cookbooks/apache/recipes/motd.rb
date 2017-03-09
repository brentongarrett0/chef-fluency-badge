#set hostname variable.
hostname = node['hostname']

#set ipaddress variable
ipaddress = node['ipaddress']

file '/etc/motd' do
	
	if ipaddress == '172.31.21.182'
		content "Hostname is this: #{hostname} . Brenton is cool. "
	else
		content "unknown hostname for ip address #{ipaddress}"
        end
end
	
