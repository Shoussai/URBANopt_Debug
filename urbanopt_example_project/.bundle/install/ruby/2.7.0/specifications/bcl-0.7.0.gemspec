# -*- encoding: utf-8 -*-
# stub: bcl 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bcl".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Macumber".freeze, "Nicholas Long".freeze, "Andrew Parker".freeze, "Katherine Fleming".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-15"
  s.description = "This gem contains helper methods for generating the Component XML file needed to upload files to the Building Component Library. It also contains the classes needed for logging in via the api and uploading generating components and measures.".freeze
  s.email = "Nicholas.Long@nrel.gov".freeze
  s.homepage = "http://bcl.nrel.gov".freeze
  s.licenses = ["LGPL".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Classes for creating component XML files and manageing measures for the BCL".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<builder>.freeze, ["= 3.2.4"])
    s.add_runtime_dependency(%q<faraday>.freeze, ["~> 1.0.1"])
    s.add_runtime_dependency(%q<minitar>.freeze, ["~> 0.9"])
    s.add_runtime_dependency(%q<openstudio_measure_tester>.freeze, ["~> 0.3.0"])
    s.add_runtime_dependency(%q<rexml>.freeze, ["= 3.2.4"])
    s.add_runtime_dependency(%q<rubyzip>.freeze, ["~> 2.3.0"])
    s.add_runtime_dependency(%q<spreadsheet>.freeze, ["= 1.2.6"])
    s.add_runtime_dependency(%q<uuid>.freeze, ["~> 2.3.9"])
    s.add_runtime_dependency(%q<yamler>.freeze, ["= 0.1.0"])
    s.add_runtime_dependency(%q<zliby>.freeze, ["= 0.0.5"])
  else
    s.add_dependency(%q<builder>.freeze, ["= 3.2.4"])
    s.add_dependency(%q<faraday>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<minitar>.freeze, ["~> 0.9"])
    s.add_dependency(%q<openstudio_measure_tester>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<rexml>.freeze, ["= 3.2.4"])
    s.add_dependency(%q<rubyzip>.freeze, ["~> 2.3.0"])
    s.add_dependency(%q<spreadsheet>.freeze, ["= 1.2.6"])
    s.add_dependency(%q<uuid>.freeze, ["~> 2.3.9"])
    s.add_dependency(%q<yamler>.freeze, ["= 0.1.0"])
    s.add_dependency(%q<zliby>.freeze, ["= 0.0.5"])
  end
end
