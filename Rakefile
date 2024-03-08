#!/usr/bin/env rake

# debug
require "pry-byebug"

require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :irb do
  sh "irb -I lib -r edn"
  sh "reset"
end

# refactored raketasks
require_relative 'lib/edn.rb'
Dir['tasks/**/*.rb'].each { |file| require_relative file }
