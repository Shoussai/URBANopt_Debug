# -*- encoding: utf-8 -*-
# stub: urbanopt-reporting 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "urbanopt-reporting".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rawad El Kontar".freeze, "Dan Macumber".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-07-01"
  s.description = "Library include scenario default reporting measure and scenario defaults reports schema and classes".freeze
  s.email = ["rawad.elkontar@nrel.gov".freeze]
  s.homepage = "https://github.com/urbanopt".freeze
  s.licenses = ["Nonstandard".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Library to report URBANopt results".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_runtime_dependency(%q<json-schema>.freeze, ["~> 2.8"])
    s.add_runtime_dependency(%q<json_pure>.freeze, ["~> 2.3"])
    s.add_runtime_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.3"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<json-schema>.freeze, ["~> 2.8"])
    s.add_dependency(%q<json_pure>.freeze, ["~> 2.3"])
    s.add_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.3"])
  end
end
