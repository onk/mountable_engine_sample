require "active_support/configurable"
module MyEngine
  class Config
    include ActiveSupport::Configurable
    config_accessor :hoge

    configure do |config|
      config.hoge = true
    end
  end
end
