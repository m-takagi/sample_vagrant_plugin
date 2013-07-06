module SampleVagrantPlugin
  class Command < Vagrant.plugin("2", "command")
    def execute
      machine = @env.machine(:default, :virtualbox)
      if machine.state.id != :running
        @env.ui.error("Machine must be running.")
        return 1
      end

      return 0
    end
  end
end
