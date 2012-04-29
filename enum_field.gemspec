# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "enum_field/version"

Gem::Specification.new do |s|
  s.name = "galetahub-enum_field"
  s.version = EnumField::VERSION.dup
  s.platform = Gem::Platform::RUBY 
  s.summary = "Enumerated attributes for Active Record"
  s.description = "Enables Active Record attributes to point to enum like objects, by saving in your database only an integer ID"
  s.authors = ["Igor Galeta", "Pavlo Galeta"]
  s.email = "galeta.igor@gmail.com"
  s.rubyforge_project = "enum_field"
  s.homepage = "https://github.com/galetahub/enum_field"
  
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["{spec}/**/*"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.require_paths = ["lib"]
end
