# -*- encoding: utf-8 -*-
# stub: urbanopt-core 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "urbanopt-core".freeze
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dan Macumber".freeze, "Nicholas Long".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-07-01"
  s.description = "URBANopt core library and measures".freeze
  s.email = ["nicholas.long@nrel.gov".freeze]
  s.homepage = "https://github.com/urbanopt".freeze
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "URBANopt core library and measures".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_runtime_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.3"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.3"])
  end
end
