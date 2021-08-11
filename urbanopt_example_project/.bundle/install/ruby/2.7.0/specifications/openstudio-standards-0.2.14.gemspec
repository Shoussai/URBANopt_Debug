# -*- encoding: utf-8 -*-
# stub: openstudio-standards 0.2.14 ruby lib

Gem::Specification.new do |s|
  s.name = "openstudio-standards".freeze
  s.version = "0.2.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Parker".freeze, "Yixing Chen".freeze, "Mark Adams".freeze, "Kaiyu Sun".freeze, "Mini Maholtra".freeze, "David Goldwasser".freeze, "Phylroy Lopez".freeze, "Maria Mottillo".freeze, "Kamel Haddad".freeze, "Julien Marrec".freeze, "Matt Leach".freeze, "Matt Steen".freeze, "Eric Ringold".freeze, "Daniel Macumber".freeze, "Matthew Dahlhausen".freeze]
  s.date = "2021-05-28"
  s.description = "Creates DOE Prototype building models and transforms proposed models to baseline models for energy codes like ASHRAE 90.1 and the Canadian NECB.".freeze
  s.email = ["andrew.parker@nrel.gov".freeze]
  s.homepage = "http://openstudio.net".freeze
  s.licenses = ["LGPL".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Creates DOE Prototype building models and transforms proposed OpenStudio models to baseline OpenStudio models.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-parallel_fork>.freeze, [">= 0"])
    s.add_development_dependency(%q<ruby-progressbar>.freeze, [">= 0"])
    s.add_development_dependency(%q<parallel_tests>.freeze, ["~> 3.0.0"])
    s.add_development_dependency(%q<nokogiri>.freeze, ["<= 1.8.2"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.3.1"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.68.1"])
    s.add_development_dependency(%q<rubocop-checkstyle_formatter>.freeze, ["~> 0.1.1"])
    s.add_development_dependency(%q<minitest-ci>.freeze, ["<= 5.10.3"])
    s.add_development_dependency(%q<rubyXL>.freeze, ["= 3.3.8"])
    s.add_development_dependency(%q<activesupport>.freeze, ["= 4.2.5"])
    s.add_development_dependency(%q<public_suffix>.freeze, ["= 3.0.3"])
    s.add_development_dependency(%q<faraday>.freeze, ["= 0.15.4"])
    s.add_development_dependency(%q<signet>.freeze, ["< 0.12.0"])
    s.add_development_dependency(%q<launchy>.freeze, ["< 2.5.0"])
    s.add_development_dependency(%q<google-api-client>.freeze, ["= 0.8.6"])
    s.add_development_dependency(%q<simplecov-html>.freeze, ["< 0.11.0"])
    s.add_development_dependency(%q<codecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<rest-client>.freeze, ["= 2.0.2"])
    s.add_development_dependency(%q<aes>.freeze, ["= 0.5.0"])
    s.add_development_dependency(%q<roo>.freeze, ["= 2.7.1"])
    s.add_development_dependency(%q<openstudio-api-stubs>.freeze, [">= 0"])
  else
    s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-parallel_fork>.freeze, [">= 0"])
    s.add_dependency(%q<ruby-progressbar>.freeze, [">= 0"])
    s.add_dependency(%q<parallel_tests>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["<= 1.8.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3.1"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.68.1"])
    s.add_dependency(%q<rubocop-checkstyle_formatter>.freeze, ["~> 0.1.1"])
    s.add_dependency(%q<minitest-ci>.freeze, ["<= 5.10.3"])
    s.add_dependency(%q<rubyXL>.freeze, ["= 3.3.8"])
    s.add_dependency(%q<activesupport>.freeze, ["= 4.2.5"])
    s.add_dependency(%q<public_suffix>.freeze, ["= 3.0.3"])
    s.add_dependency(%q<faraday>.freeze, ["= 0.15.4"])
    s.add_dependency(%q<signet>.freeze, ["< 0.12.0"])
    s.add_dependency(%q<launchy>.freeze, ["< 2.5.0"])
    s.add_dependency(%q<google-api-client>.freeze, ["= 0.8.6"])
    s.add_dependency(%q<simplecov-html>.freeze, ["< 0.11.0"])
    s.add_dependency(%q<codecov>.freeze, [">= 0"])
    s.add_dependency(%q<rest-client>.freeze, ["= 2.0.2"])
    s.add_dependency(%q<aes>.freeze, ["= 0.5.0"])
    s.add_dependency(%q<roo>.freeze, ["= 2.7.1"])
    s.add_dependency(%q<openstudio-api-stubs>.freeze, [">= 0"])
  end
end
