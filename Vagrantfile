Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.synced_folder "./", "/app"
    config.vm.network :forwarded_port, guest: 8000, host: 8000
    config.vm.provision :shell,
      inline: "source /app/vagrantfiles/env.sh &&
               sudo -E /app/vagrantfiles/provision.sh"

    config.vm.provider "virtualbox" do |v|
      v.customize [ "modifyvm", :id, "--cpus", 2 ]
      v.customize [ "modifyvm", :id, "--memory", 2048 ]
      v.customize [ "modifyvm", :id, "--name", "drf_tutorial" ]
    end
end
