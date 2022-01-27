# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.define "host1" do |host1|
    host1.vm.network "private_network", ip: "192.168.56.12"
    host1.vm.hostname = "host1"
  end

  # Minimal resources
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = "4096"
  end
end
