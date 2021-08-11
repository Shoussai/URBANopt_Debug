# -*- encoding: utf-8 -*-
# stub: openstudio_measure_tester 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "openstudio_measure_tester".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/NREL/OpenStudio-measure-tester-gem/issues", "changelog_uri" => "https://github.com/NREL/OpenStudio-measure-tester-gem/blob/develop/CHANGELOG.md", "source_code_uri" => "https://github.com/NREL/OpenStudio-measure-tester-gem/tree/v0.3.1" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nicholas Long".freeze, "Katherine Fleming".freeze, "Daniel Macumber".freeze, "Robert Guglielmetti".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-05-26"
  s.description = "Testing framework for OpenStudio measures".freeze
  s.email = ["nicholas.long@nrel.gov".freeze]
  s.homepage = "https://openstudio.nrel.gov".freeze
  s.required_ruby_version = Gem::Requirement.new("~> 2.7.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Testing framework for OpenStudio measures".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<git>.freeze, ["~> 1.8.1"])
    s.add_runtime_dependency(%q<minitest>.freeze, ["~> 5.14.0"])
    s.add_runtime_dependency(%q<minitest-reporters>.freeze, ["~> 1.4.2"])
    s.add_runtime_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_runtime_dependency(%q<rubocop>.freeze, ["~> 1.15.0"])
    s.add_runtime_dependency(%q<rubocop-performance>.freeze, ["~> 1.11.3"])
    s.add_runtime_dependency(%q<rubocop-checkstyle_formatter>.freeze, ["~> 0.4.0"])
    s.add_runtime_dependency(%q<simplecov>.freeze, ["~> 0.18.2"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
  else
    s.add_dependency(%q<git>.freeze, ["~> 1.8.1"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.14.0"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.4.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.15.0"])
    s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.11.3"])
    s.add_dependency(%q<rubocop-checkstyle_formatter>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.18.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 2.1.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
  end
end
