# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "bgarrett"
client_key               "#{current_dir}/bgarrett.pem"
chef_server_url          "https://brentongarrett02.mylabserver.com/organizations/gci"
cookbook_path            ["#{current_dir}/../cookbooks"]
