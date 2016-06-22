ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|

  # Box
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |vb|
    # Increase RAM to 1GB
    vb.memory = "1024"
  end

  # Network
  # Default to dhcp to avoid IP conflicts
  config.vm.network :private_network, type: "dhcp"
  # Each project needs a unique static IP
  #config.vm.network :private_network, ip: "192.168.80.80"

  # Synced folders
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  # Base provisioning
  config.vm.provision :shell, path: "provision/bootstrap.sh", privileged: false

  # Node provisioning
  # config.vm.provision :shell, path: "provision/bootstrap_node.sh", privileged: false
end
