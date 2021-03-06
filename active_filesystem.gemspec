$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_filesystem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_filesystem"
  s.version     = ActiveFilesystem::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/active_filesystem"
  s.summary     = "Rails file system access via ActiveModel."
  s.description = "Rails file system access via ActiveModel."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
  
  # Development Server  
  s.add_development_dependency "thin"  
  
  # Documentation
  s.add_development_dependency "yard"
  
  # Active admin
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails' 
  
  # Tests
  s.add_development_dependency 'capybara'    
  s.add_development_dependency 'rspec-rails', '~> 2.0'  
  s.add_development_dependency 'shoulda-matchers'
  
  # Test automation
  # s.add_development_dependency 'guard-rails' # See gemfile for a patched version, for engine support.
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'  
end
