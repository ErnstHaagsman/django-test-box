Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  config.vm.network "forwarded_port", guest: 22, host: 8022

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "main.yml"
  end
end
