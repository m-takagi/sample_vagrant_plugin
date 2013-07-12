require "sample_vagrant_plugin/version"

module SampleVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "sample vagrant plugin"

    command "free-memory" do
      require_relative "sample_vagrant_plugin/command"
      Command
    end

    config "my_key" do
      require_relative "sample_vagrant_plugin/config"
      Config
    end

    config("apt_get", :provisioner) do
      require_relative "sample_vagrant_plugin/provisioner_config"
      ProvisionerConfig
    end

    provisioner "apt_get" do
      require_relative "sample_vagrant_plugin/provisioner"
      Provisioner
    end
  end
end
