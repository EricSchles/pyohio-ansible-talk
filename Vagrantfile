# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.define "webserver" do |webserver|
    # For dynamic host file updates
    # run: vagrant install vagrant-hostupdater
    config.vm.network :private_network, ip: "192.168.3.10"
    config.vm.network :forwarded_port, guest: 80, host: 1776, auto_correct: true
    config.vm.hostname = "webserver"
    config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end 
  end

  config.vm.define "database" do |database|
    config.vm.network :private_network, ip: "192.168.3.11"
    config.vm.network :forwarded_port, guest: 5432, host: 54320, auto_correct: true
    config.vm.hostname = "database"
    config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end 
  end

end
