module SampleVagrantPlugin
  class Provisioner < Vagrant.plugin("2", "provisioner")
    def provision
      command = "apt-get install -y #{@config.packages.join(" ")}"

      @machine.communicate.sudo(command) do |type, data|
        @machine.env.ui.info(data.chomp, prefix: false)
      end
    end
  end
end
