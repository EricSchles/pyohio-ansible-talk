# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.define "webserver" do |webserver|
    # For dynamic host file updates
    # run: vagrant install vagrant-hostupdater
    webserver.vm.network :private_network, ip: "192.168.3.10"
    webserver.vm.network :forwarded_port, guest: 80, host: 1776, auto_correct: true
    webserver.vm.hostname = "webserver"
  end

  config.vm.define "database" do |database|
    database.vm.network :private_network, ip: "192.168.3.20"
    database.vm.network :forwarded_port, guest: 5432, host: 54320, auto_correct: true
    database.vm.hostname = "database"
  end
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
