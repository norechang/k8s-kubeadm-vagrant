# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.disksize.size = '100GB'
  config.vm.box_check_update = false
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = 8192
  end

# master node
  config.vm.define "master" do |node|
    node.vm.hostname = "master"
    node.vm.network "private_network", ip: "192.168.10.10"
    node.vm.provision :hosts, :sync_hosts => true
    node.vm.provider "virtualbox" do |vb|
      vb.name = "master"
    end
  end

  (1..2).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.hostname = "node#{i}"
      node.vm.network "private_network", ip: "192.168.10.1#{i}"
      node.vm.provision :hosts, :sync_hosts => true
      node.vm.provider "virtualbox" do |vb|
        vb.name = "node#{i}"
      end
    end
  end
end
