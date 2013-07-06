module SampleVagrantPlugin
  class Command < Vagrant.plugin("2", "command")
    def execute
      machine = @env.machine(:default, :virtualbox)
      puts machine.state.id.to_s
      return 0
    end
  end
end
