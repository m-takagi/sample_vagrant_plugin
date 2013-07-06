require "sample_vagrant_plugin/version"

module SampleVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "sample vagrant plugin"

    command "free-memory" do
      require_relative "sample_vagrant_plugin/command"
      Command
    end
  end
end
