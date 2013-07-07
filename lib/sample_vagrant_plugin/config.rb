module SampleVagrantPlugin
  class Config < Vagrant.plugin("2", "config")
    attr_accessor :value
  end
end
