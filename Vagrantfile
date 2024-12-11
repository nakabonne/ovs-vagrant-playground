Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end
  config.vm.provision :shell, inline: "sudo apt-get update && sudo apt-get upgrade -y"

  config.vm.define "h1" do |h1|
    h1.vm.hostname = "h1"
    h1.vm.network "private_network", ip: "192.168.60.2"
    h1.vm.provision "shell", inline: <<-SHELL
        # Install docker
        sudo apt-get update
        sudo apt-get install -y ca-certificates curl
        sudo install -m 0755 -d /etc/apt/keyrings
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
        sudo chmod a+r /etc/apt/keyrings/docker.asc
        # Add the repository to Apt sources:
        echo \
          "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
          $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
          sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update

        sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
        # Verify the installation is successful
        sudo docker run hello-world

        apt-get update
        sudo apt-get install -y openvswitch-switch openvswitch-common bridge-utils
    SHELL
  end

  config.vm.define "h2" do |h2|
    h2.vm.hostname = "h2"
    h2.vm.network "private_network", ip: "192.168.60.3"
    h2.vm.provision "shell", inline: <<-SHELL
        # Install docker
        sudo apt-get update
        sudo apt-get install -y ca-certificates curl
        sudo install -m 0755 -d /etc/apt/keyrings
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
        sudo chmod a+r /etc/apt/keyrings/docker.asc
        # Add the repository to Apt sources:
        echo \
          "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
          $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
          sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update

        sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
        # Verify the installation is successful
        sudo docker run hello-world

        apt-get update
        sudo apt-get install -y openvswitch-switch openvswitch-common bridge-utils
    SHELL
  end
end
