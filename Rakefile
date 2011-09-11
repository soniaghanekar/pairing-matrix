#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'vendor', 'plugins', 'cucumber-rails', 'lib')
require 'rake'
require 'rake/testtask'
require 'rdoc/task'



PairingMatrix::Application.load_tasks
namespace :tests do

  begin
    desc "Run all tests"
    task :tests => ['tests:unit', 'tests:integration', :cucumber]


    task :pre_test => ['tests:set_env', 'db:migrate:reset']

    desc "Run all unit tests"
    task :unit => [:pre_test, :spec]
  end

end

desc "Run all tests"
task :tests => ['tests:unit', :cucumber]

desc "Clears the DB for running selenium tests"
task :acceptance => ['environment:test', 'db:drop','db:create','db:migrate'] do
  ruby "spec/selenium/*.rb"
end
