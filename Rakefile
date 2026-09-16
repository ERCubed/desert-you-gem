# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'bump'
Bump.tag_by_default = true
require 'bump/tasks'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new(:spec)

task default: %i[rubocop spec]
