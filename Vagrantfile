Vagrant.configure("2") do |config|
	
	#configure developtment server
	config.vm.define "Server" do |server|
		# Get the ubuntu/trusty64 image
		server.vm.box = "bento/ubuntu-16.04"
		
		#Define Hostname for VM
		server.vm.hostname = "Server"
		
		#Assign a private ip to the vm
		server.vm.network "private_network", ip: "192.168.12.11"
		
		#Modify the VM resource parameters (if required).
		server.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", "4096"]
		end
	end	
	config.vm.provision "ansible_local" do |ansible|
		ansible.playbook = "playbook.yml"		
	end
end