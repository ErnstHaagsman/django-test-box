Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"

  # This is a box we want to re-use, so we need to use the
  # default vagrant insecure key
  config.ssh.insert_key = false

  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 22, host: 8022

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "main.yml"
  end
end
