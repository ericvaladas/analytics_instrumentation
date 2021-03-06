$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "analytics_instrumentation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "analytics_instrumentation"
  s.version     = AnalyticsInstrumentation::VERSION
  s.authors     = ["Jordan Feldstein", "Michael Feldstein"]
  s.email       = ["jfeldstein@gmail.com", "michael@canopy.co"]
  s.homepage    = "https://github.com/arcaneio/analytics_instrumentation"
  s.summary     = "Best-practices analytics instrumentation for Rails."
  s.description = "Add analytics to any app, quickly, robustly, and accurately. \n\nDefine events and their properties in a single, simple .yml file.\n\nPlus: Get valuable campaign attribution, and best-practices learned across dozens of projects, to streamline the collection of clean, usable, reliable product and user data."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "analytics-ruby", '~> 2.0'
  s.add_dependency "voight_kampff", '~> 0'
  s.add_dependency "browser", '~> 0.8'
  s.add_dependency "addressable", "~> 2.3"

  s.add_development_dependency "sqlite3", '~> 0'
  s.add_development_dependency "activesupport"

  s.post_install_message = "VERSION 0.1.7 introduces BREAKING CHANGES! You MUST include AnalyticsInstrumentation in your ApplicationController, manually!"

end
