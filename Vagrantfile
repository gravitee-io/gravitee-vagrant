# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = "jhcook/centos7"

  if ENV['GRAVITEE_VB_MEM']
    memory = ENV["GRAVITEE_VB_MEM"]
  else
    memory = 2048
  end

  config.vm.provider :virtualbox do |vb|
   vb.name = "vagrant_graviteeio"
   vb.memory = memory
  end

  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.network :forwarded_port, guest: 8001, host: 8001

  config.vm.provision "shell", path: "scripts/env.sh"
  config.vm.provision "shell", path: "scripts/mongodb.sh"
  config.vm.provision "shell", path: "scripts/elasticsearch.sh"
end
