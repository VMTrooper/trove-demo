#require 'vagrant-openstack-plugin'

puts "\nHave you sourced your OpenStack creds today???\n"

# nodes = ['master','node1']
nodes = ['webapp']

Vagrant.configure("2") do |config|
  config.vm.box = "openstack"
  config.ssh.private_key_path = "~/.ssh/id_rsa"
  nodes.each do |server|
    config.vm.define "#{server}" do |box|
      config.vm.provider :openstack do |os|
        os.endpoint     = "#{ENV['OS_AUTH_URL']}/tokens"      # e.g. "#{ENV['OS_AUTH_URL']}/tokens"   
        os.username     = "#{ENV['OS_USERNAME']}"          # e.g. "#{ENV['OS_USERNAME']}"
        os.tenant_name = "#{ENV['OS_TENANT_NAME']}"
        os.api_key      = "#{ENV['OS_PASSWORD']}"          # e.g. "#{ENV['OS_PASSWORD']}"
        os.flavor = /m1.small/
        os.image        = "63953fb3-1675-47c5-a865-4873163f1cc8"
        os.keypair_name = "demo-keypair"      # as stored in Nova
        os.ssh_username = "ubuntu"           # login for the VM
        os.networks = ["trove-network"]
        os.floating_ip = :auto
        os.floating_ip_pool = "EXTNET"
      end
      box.vm.provision :shell, :path => "#{server}.sh"
    end
  end
end
