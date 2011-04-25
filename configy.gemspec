# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{configy}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gabe Varela", "Brian Marini"]
  s.date = %q{2011-04-21}
  s.email = %q{gvarela@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "configy.gemspec",
     "lib/configy.rb",
     "lib/configy/configuration.rb",
     "test/configy_test.rb",
     "test/scratch/.gitkeep",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/gvarela/configy}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple yaml driven configuration gem}
  s.test_files = [
    "test/configy_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 2.1.0"])
    else
      s.add_dependency(%q<minitest>, ["~> 2.1.0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 2.1.0"])
  end
end

