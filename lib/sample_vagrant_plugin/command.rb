module SampleVagrantPlugin
  class Command < Vagrant.plugin("2", "command")
    def execute
      command = "grep MemFree /proc/meminfo | awk '{print $2}'"

      with_target_vms(@argv) do |machine|
        if machine.state.id != :running
          @env.ui.info("#{machine.name} is not running.")
          next
        end

        machine.communicate.execute(command) do |type, data|
          @env.ui.info(data)
        end
      end

      return 0
    end
  end
end
