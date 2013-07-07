# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "sample_vagrant_plugin"

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
end

Vagrant.configure("2") do |config|
  config.my_key.value = 12
end
