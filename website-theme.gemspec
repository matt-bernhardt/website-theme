require_relative "lib/website/theme/version"

Gem::Specification.new do |spec|
  spec.name        = "website-theme"
  spec.version     = Website::Theme::VERSION
  spec.authors     = ["Matt Bernhardt"]
  spec.email       = ["mjbernha@mit.edu"]
  spec.homepage    = "https://github.com/matt-bernhardt/website-theme"
  spec.summary     = "A website theming gem"
  spec.description = "This is a temporary copy of an existing gem used by the MIT Libraries."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/matt-bernhardt/website-theme"
  spec.metadata["changelog_uri"] = "https://github.com/matt-bernhardt/website-theme/changelog.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3.1"
  spec.add_dependency "sassc-rails", "~> 2"
end
