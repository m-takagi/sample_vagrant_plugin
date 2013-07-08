module SampleVagrantPlugin
  class Config < Vagrant.plugin("2", "config")
    attr_accessor :value

    def initialize
      super

      @value = UNSET_VALUE
    end

    def finalize!
      @value = nil if @value == UNSET_VALUE
    end
  end
end
