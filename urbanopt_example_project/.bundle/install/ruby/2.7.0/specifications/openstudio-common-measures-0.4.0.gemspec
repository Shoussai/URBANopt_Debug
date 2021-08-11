# -*- encoding: utf-8 -*-
# stub: openstudio-common-measures 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "openstudio-common-measures".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/NREL/openstudio-common-measures-gem/issues", "changelog_uri" => "https://github.com/NREL/openstudio-common-measures-gem/blob/develop/CHANGELOG.md", "source_code_uri" => "https://github.com/NREL/openstudio-common-measures-gem/tree/v0.4.0" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Goldwasser".freeze, "Nicholas Long".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-04-23"
  s.description = "Common library and measures for OpenStudio".freeze
  s.email = ["david.goldwasser@nrel.gov".freeze, "nicholas.long@nrel.gov".freeze]
  s.homepage = "https://openstudio.net".freeze
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Common library and measures for OpenStudio".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<bundler>.freeze, [">= 2.1"])
    s.add_runtime_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.2"])
    s.add_runtime_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.13"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 2.1"])
    s.add_dependency(%q<openstudio-extension>.freeze, ["~> 0.4.2"])
    s.add_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
  end
end
