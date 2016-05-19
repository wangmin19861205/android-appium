require_relative '../../libs/iframe/settings'
require 'net/ssh'


class MySSH
  class << self
    def sshconn sh
      @setting=Settings.new.SSH
      host=@setting.host
      username=@setting.username
      password=@setting.password
      port=@setting.port
      p host,username,password,port
      ssh=Net::SSH.start(host,username,:password => password,:port=> port)
      ssh.exec!(sh)
    end
  end
end



p MySSH.sshconn('export PATH="$PATH:/usr/local/opt/redis/bin"; echo "FLUSHALL" | redis-cli')
#MySSH.sshconn('lsof -i tcp:4723')
#MySSH.sshconn(appium -a 127.0.0.1 -p4723 -UF2C0214807009313 --no-reset)


