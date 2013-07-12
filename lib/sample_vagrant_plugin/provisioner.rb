module SampleVagrantPlugin
  class Provisioner < Vagrant.plugin("2", "provisioner")
    def provision
      packages = ["htop", "curl"]
      command = "apt-get install -y #{packages.join(" ")}"

      @machine.communicate.sudo(command) do |type, data|
        @machine.env.ui.info(data.chomp, prefix: false)
      end
    end
  end
end
