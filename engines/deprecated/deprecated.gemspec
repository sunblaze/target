require_relative "lib/deprecated/version"

Gem::Specification.new do |spec|
  spec.name        = "deprecated"
  spec.version     = Deprecated::VERSION
  spec.authors     = ["James Reid-Smith"]
  spec.email       = ["james.reidsmith@shopify.com"]
  spec.summary     = "Summary of Deprecated."
  spec.description = "Description of Deprecated."
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 7.0.0.alpha2"
end
