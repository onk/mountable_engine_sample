$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "my_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my_engine"
  s.version     = MyEngine::VERSION
  s.authors     = ["Takafumi ONAKA"]
  s.email       = ["takafumi.onaka@gmail.com"]
  s.homepage    = "https://github.com/onk/mountable_engine_sample/"
  s.summary     = "Mountable Engine Sample"
  s.description = "Mountable Engine Sample"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.8"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
end
