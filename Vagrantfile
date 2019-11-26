
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "octopi"

  config.vm.network "forwarded_port", guest: 2375, host: 2375
  config.vm.network "forwarded_port", guest: 3333, host: 3333

  config.vm.provision "shell",
      path: "dotfiles/docker-bootstrap.sh"
  config.vm.provision "shell",
      path: "dotfiles/install-usefull-packages.sh"
  config.vm.provision "shell",
      path: "dotfiles/dotfiles-bootstrap.sh",
      privileged: false,
      args: "/vagrant/dotfiles"
  config.vm.provision "shell",
      inline: "timedatectl set-timezone America/New_York"
  # usermod -a -G docker,vboxsf vagrant
end
