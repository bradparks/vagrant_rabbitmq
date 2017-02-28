VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "rabbitmq.localdomain"
	config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, :path => "install.sh"

  config.vm.network :private_network, type:"dhcp"
  config.vm.synced_folder "./", "/vagrant"

  config.vm.provider "virtualbox" do |v|
    v.memory = 768
    v.cpus = 1
  end

  # Forward rabbitmq and rabbitmq web management ports
	config.vm.network :forwarded_port, guest: 5672, host: 5672
	config.vm.network :forwarded_port, guest: 15672, host: 15672
end
