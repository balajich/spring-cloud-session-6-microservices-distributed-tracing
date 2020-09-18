# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
  
  config.vm.define "dtdockerserver" do |dtdockerserver|
    dtdockerserver.vm.box = "centos/7"
    dtdockerserver.vm.hostname = "dtdockerserver.eduami.org"
    dtdockerserver.vm.network "private_network", ip: "192.168.50.25"
    #dtdockerserver.vm.network "forwarded_port", guest: 8080, host: 8080
    #dtdockerserver.vm.network "forwarded_port", guest: 8761, host: 8761
    dtdockerserver.vm.network "forwarded_port", guest: 5672, host: 5672
    dtdockerserver.vm.network "forwarded_port", guest: 15672, host: 15672
    dtdockerserver.vm.network "forwarded_port", guest: 9411, host: 9411
    dtdockerserver.vm.provision "shell", path: "startup-dtdockerserver.sh"
    dtdockerserver.vm.provider "virtualbox" do |vb|
      vb.name = "dtdockerserver"
      vb.memory = 4024
      vb.cpus = 4
    end
  end
end
