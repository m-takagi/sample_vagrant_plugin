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

    def validate(machine)
      errors = []

      if !@value
        errors << "Value must be set."
      end

      return {"my_key" => errors}
    end
  end
end
