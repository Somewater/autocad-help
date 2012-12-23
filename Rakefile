#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

AutocadHelp::Application.load_tasks

desc 'precompile app assets'
task :precompile => ['environment'] do
  puts "start..."
  Rails.application.config.assets.paths = Rails.application.config.assets.paths.take(5)
  t = Time.new.to_i
  Rake::Task["assets:precompile:primary"].execute
  puts "successfully precompiled from #{(Time.new.to_i - t).to_i} sec, include dirs:"
  puts Rails.application.config.assets.paths
end
