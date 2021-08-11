# -*- encoding: utf-8 -*-
# stub: openstudio-workflow 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "openstudio-workflow".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nicholas Long".freeze, "Henry Horsey".freeze]
  s.date = "2021-06-02"
  s.description = "Run OpenStudio based measures and simulations using EnergyPlus".freeze
  s.email = ["nicholas.long@nrel.gov".freeze, "henry.horsey@nrel.gov".freeze]
  s.homepage = "https://github.com/NREL/OpenStudio-workflow-gem".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "OpenStudio Workflow Manager".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<builder>.freeze, ["~> 3.2.4"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_development_dependency(%q<ci_reporter>.freeze, ["~> 2.0.0"])
    s.add_development_dependency(%q<ci_reporter_rspec>.freeze, ["~> 1.0.0"])
    s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.21"])
    s.add_development_dependency(%q<json-schema>.freeze, ["~> 2.8.0"])
    s.add_development_dependency(%q<openstudio_measure_tester>.freeze, ["~> 0.3.1"])
    s.add_development_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.14"])
    s.add_development_dependency(%q<parallel>.freeze, ["~> 1.19.1"])
    s.add_development_dependency(%q<public_suffix>.freeze, ["~> 4.0.3"])
    s.add_development_dependency(%q<rainbow>.freeze, ["~> 3.0.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
  else
    s.add_dependency(%q<builder>.freeze, ["~> 3.2.4"])
    s.add_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_dependency(%q<ci_reporter>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<ci_reporter_rspec>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.21"])
    s.add_dependency(%q<json-schema>.freeze, ["~> 2.8.0"])
    s.add_dependency(%q<openstudio_measure_tester>.freeze, ["~> 0.3.1"])
    s.add_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.14"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.19.1"])
    s.add_dependency(%q<public_suffix>.freeze, ["~> 4.0.3"])
    s.add_dependency(%q<rainbow>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
  end
end
