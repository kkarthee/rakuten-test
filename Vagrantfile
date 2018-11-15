
# Single box with VirtualBox provider and Puppet provisioning.
#

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "rakuten.training"
  config.vm.url = file:///Users/karthikeyan.kanagaraj/Training/Rakuten/trusty-server-cloudimg-amd64-vagrant-disk1.box
 # config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/trusty64"
  config.vm.network :private_network, ip: "10.10.10.20"
  config.vm.synced_folder "devops-challenge/" , "/webapps/devops/
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "512",
    ]
  end
  
# Puppet Agent installation 
# config.vm.provision :shell, :path => "bootstrap.sh"

###Provision Puppet as recommended   
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "site.pp"
    puppet.module_path = "puppet/modules"
  end
end
