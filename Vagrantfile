# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"

  config.vm.define "host1" do |host1|
    host1.vm.network "private_network", ip: "192.168.56.12"
    host1.vm.hostname = "host1"

    # We can access forwarded ports using 127.0.0.1:host or 192.168.56.12:guest
    host1.vm.network "forwarded_port", guest: 7000, host: 7000
    host1.vm.network "forwarded_port", guest: 7003, host: 7001
  end

  config.vm.synced_folder "data/", "/mnt/data", owner: "root", group: "root"

  # Minimal resources
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = "4096"
  end
end
