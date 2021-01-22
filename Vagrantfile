# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Based on Ubuntu 18.04
  config.vm.box = "ubuntu/bionic64"

  # Port forwaring
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 9000, host: 9000

  # Shared folder
  config.vm.synced_folder ".", "/vagrant"
    
  # VM Provider
  config.vm.provider "virtualbox" do |vb|
  # vb.gui = true
   vb.memory = "2048"
  end
  
  # Proxy configuration
  #  if Vagrant.has_plugin?("vagrant-proxyconf")
  #    config.proxy.http     = "http://proxyurl:8080/"
  #    config.proxy.https    = "http://proxyurl:8080/"
  #    config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  #  end
  
  # Boot timeout
  config.vm.boot_timeout = 900
  
  # Provision
  config.vm.provision :shell, path: "bootstrap.sh", run: "once"
  
  # Docker proxy configuration
  # config.vm.provision :shell, path: "proxy.sh", run: "once"
  
  # Portainer installation
  config.vm.provision :shell, path: "./docker/portainer.sh", run: "once"

    
end
