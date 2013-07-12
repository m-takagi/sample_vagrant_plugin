module SampleVagrantPlugin
  class ProvisionerConfig < Vagrant.plugin("2", "config")
    attr_accessor :packages

    def initialize
      super
      @packages = UNSET_VALUE
    end

    def finalize!
      @packages = [] if @packages == UNSET_VALUE
    end
  end
end
