# frozen_string_literal: true

require 'bundler/setup'
require 'rails'
require 'action_controller/railtie'
require 'desert_you'

# Normally loaded by a host Rails app's routes reloader when the engine is
# mounted; loaded explicitly here so the engine's route set can be exercised
# directly, without booting a full Rails::Application.
require_relative '../config/routes'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
