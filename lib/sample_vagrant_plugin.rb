require "sample_vagrant_plugin/version"

module SampleVagrantPlugin
  class Plugin < Vagrant.plugin("2")
    name "sample vagrant plugin"
  end
end
