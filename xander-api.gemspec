
# -*- encoding: utf-8 -*-
$:.push('lib')
require "xander/version"

Gem::Specification.new do |s|
  s.name     = "xander-api"
  s.version  = Xander::VERSION.dup
  s.date     = "2013-03-24"
  s.summary  = "An API for interfacing with http://xander.io"
  s.email    = "martyn@255bits.com"
  s.homepage = "http://xander.io"
  s.authors  = ['Martyn Garcia']
  
  s.description = <<-EOF
  This gem makes it easy to run multivariate experiments using the Xander platform.
EOF
  
  dependencies = [
    # Examples:
    # [:runtime,     "rack",  "~> 1.1"],
    # [:development, "rspec", "~> 2.1"],
  ]
  
  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = "2.0.3"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version
  
  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end
