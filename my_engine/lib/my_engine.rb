require "my_engine/engine"
require "my_engine/config"
require "jquery/rails"

module MyEngine
  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config if block_given?
  end
end
