# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-7.2"

  if ENV['GRAVITEE_VB_MEM']
    memory = ENV["GRAVITEE_VB_MEM"]
  else
    memory = 4096
  end

  config.vm.provider :virtualbox do |vb|
   vb.name = "graviteeio"
   vb.memory = memory
  end

  config.vm.network :forwarded_port, guest: 80, host: 18080

  config.vm.provision "shell", path: "env/env.sh"
  config.vm.provision "shell", path: "nginx/nginx.sh"
  config.vm.provision "shell", path: "mongodb/mongodb.sh"
  config.vm.provision "shell", path: "elasticsearch/elasticsearch.sh"
  config.vm.provision "shell", path: "tomcat/tomcat.sh"
  config.vm.provision "shell", path: "gravitee.io/graviteeio.sh"
end
