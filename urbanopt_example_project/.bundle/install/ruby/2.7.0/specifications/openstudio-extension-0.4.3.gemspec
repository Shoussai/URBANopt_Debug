# -*- encoding: utf-8 -*-
# stub: openstudio-extension 0.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "openstudio-extension".freeze
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/NREL/openstudio-extension-gem/issues", "changelog_uri" => "https://github.com/NREL/openstudio-extension-gem/blob/develop/CHANGELOG.md", "source_code_uri" => "https://github.com/NREL/openstudio-extension-gem/tree/v0.4.3" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Katherine Fleming".freeze, "Nicholas Long".freeze, "Daniel Macumber".freeze, "David Goldwasser".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-06-02"
  s.description = "openstudio base gem for creating generic extensions with encapsulated data and measures. Also contains ruby libraries that required by many measures.".freeze
  s.email = ["katherine.fleming@nrel.gov".freeze, "nicholas.long@nrel.gov".freeze, "daniel.macumber@nrel.gov".freeze, "david.goldwasser@nrel.gov".freeze]
  s.homepage = "https://openstudio.net".freeze
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "openstudio base gem for creating generic extensions with encapsulated data and measures.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<bcl>.freeze, ["~> 0.7.0"])
    s.add_runtime_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_runtime_dependency(%q<octokit>.freeze, ["~> 4.18.0"])
    s.add_runtime_dependency(%q<openstudio_measure_tester>.freeze, ["~> 0.3.1"])
    s.add_runtime_dependency(%q<openstudio-workflow>.freeze, ["~> 2.2.0"])
    s.add_runtime_dependency(%q<parallel>.freeze, ["~> 1.19.1"])
    s.add_development_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.13"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
  else
    s.add_dependency(%q<bcl>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_dependency(%q<octokit>.freeze, ["~> 4.18.0"])
    s.add_dependency(%q<openstudio_measure_tester>.freeze, ["~> 0.3.1"])
    s.add_dependency(%q<openstudio-workflow>.freeze, ["~> 2.2.0"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.19.1"])
    s.add_dependency(%q<openstudio-standards>.freeze, ["~> 0.2.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
  end
end
