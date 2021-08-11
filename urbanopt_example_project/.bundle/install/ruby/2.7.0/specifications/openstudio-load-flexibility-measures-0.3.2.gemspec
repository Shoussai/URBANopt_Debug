# -*- encoding: utf-8 -*-
# stub: openstudio-load-flexibility-measures 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "openstudio-load-flexibility-measures".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karl Heine".freeze, "Ryan Meyer".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-06-30"
  s.description = "library and measures for OpenStudio for load flexibility applications.".freeze
  s.email = ["karl.heine@nrel.gov".freeze, "ryan.meyer@nrel.gov".freeze]
  s.homepage = "https://openstudio.net".freeze
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "library and measures for OpenStudio for load flexibility applications.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.54.0"])
    s.add_runtime_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.2"])
    s.add_runtime_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.13"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.54.0"])
    s.add_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.2"])
    s.add_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.13"])
  end
end
