# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xander-api'

Gem::Specification.new do |spec|
  spec.name          = "xander-api"
  spec.version       = Xander::VERSION
  spec.authors       = ["Martyn Garcia"]
  spec.email         = ["martyn@255bits.com"]
  spec.description   = %q{RESTful library for using xander.io, the persistent multivariate testing platform.}
  spec.summary       = %q{Runs multivariate big data analysis on data sets using http://xander.io.}
  spec.homepage      = "http://xander.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "activeresource"
end
