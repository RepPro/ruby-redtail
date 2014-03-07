# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: ruby-redtail 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-redtail"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Colgate"]
  s.date = "2014-03-07"
  s.description = "The gem offers various methods to access the Redtail CRM API"
  s.email = "nathan@brandnewbox.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/ruby-redtail.rb",
    "lib/ruby-redtail/accounts.rb",
    "lib/ruby-redtail/activities.rb",
    "lib/ruby-redtail/addresses.rb",
    "lib/ruby-redtail/contacts.rb",
    "lib/ruby-redtail/exceptions.rb",
    "lib/ruby-redtail/notes.rb",
    "lib/ruby-redtail/query.rb",
    "lib/ruby-redtail/settings.rb",
    "lib/ruby-redtail/tag_groups.rb",
    "lib/ruby-redtail/user.rb",
    "ruby-redtail.gemspec",
    "test/helper.rb",
    "test/user_test.rb"
  ]
  s.homepage = "http://github.com/nathancolgate/ruby-redtail"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "A gem to access the Redtail CRM API"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-test>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-test>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-test>, [">= 0"])
  end
end

