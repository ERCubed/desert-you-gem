# frozen_string_literal: true

require_relative 'lib/desert_you/version'

Gem::Specification.new do |s|
  s.name          = 'desert_you'
  s.version       = DesertYou::VERSION
  s.required_ruby_version = '>= 3.0'
  s.summary       = 'Redirects all routes ending in `.php` to a certain video.'
  s.authors       = ['Eric Roberts']
  s.files         = ['lib/desert_you.rb', 'lib/desert_you/version.rb', 'lib/desert_you/engine.rb',
                     'config/routes.rb', 'README.md', 'LICENSE']
  s.require_paths = ['lib']
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/ERCubed/desert-you-gem'
  s.metadata      = { 'rubygems_mfa_required' => 'true' }

  s.add_dependency 'railties', '>= 6.0'
end
