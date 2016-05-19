require 'settingslogic'

class Settings<Settingslogic
  source File.dirname(File.dirname(File.dirname(__FILE__)))+"/config/config.yml"
  namespace "test"
  #namespace "defaults"
  load!
end






