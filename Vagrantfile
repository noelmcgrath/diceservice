Vagrant.configure("2") do |config|
	config.vm.box = "dockerNoel"
	config.vm.box_url = "http://files.vagrantup.com/precise64.box"
	# we'll forward the port 8000 from the VM to the port 8000 on the host (OS X)
	config.vm.network :forwarded_port, host: 8000, guest: 8000
	config.vm.provision "docker",
	images: ["ubuntu"]
end