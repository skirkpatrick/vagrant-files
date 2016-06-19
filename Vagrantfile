ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|

  # Box
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |vb|
    # Increase RAM to 1GB
    vb.memory = "1024"
  end

  # Network
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true

  # Base provisioning
  config.vm.provision :shell, path: "provision/bootstrap.sh", privileged: false

  # Node provisioning
  # config.vm.provision :shell, path: "provision/bootstrap_node.sh", privileged: false
end
