Gem::Specification.new do |gem|
  gem.name = 'em-spec-helpers'
  gem.version = '0.0.1'

  gem.summary = 'Helpers for writing RSpec examples for EventMachine-based code.'
  gem.description = <<-DESC
Helpers for writing RSpec examples for EventMachine-based code.
  DESC

  gem.authors = ['Sam Stokes']
  gem.email = %w(sam@rapportive.com)
  gem.homepage = 'https://github.com/rapportive/em-spec-helpers'


  gem.add_dependency 'eventmachine'
  gem.add_dependency 'rspec'


  gem.files = Dir[*%w(
      lib/**/*
      README*)]
end
