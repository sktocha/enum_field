# encoding: utf-8
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require File.join(File.dirname(__FILE__), 'lib', 'enum_field', 'version')

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the enum_field plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the enum_field plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'EnumField'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "enum_field"
    s.version = EnumField::VERSION
    s.summary = "Enumerated attributes"
    s.description = "Enables Active Record attributes to point to enum like objects, by saving in your database only an integer ID"
    s.email = "galeta.igor@gmail.com"
    s.homepage = "https://github.com/galetahub/enum_field"
    s.authors = ["Igor Galeta", "Pavlo Galeta"]
    s.files =  FileList["[A-Z]*", "lib/**/*"]
    s.extra_rdoc_files = FileList["[A-Z]*"] - %w(Rakefile)
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
