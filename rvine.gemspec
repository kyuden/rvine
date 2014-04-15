# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rvine/version'

Gem::Specification.new do |spec|
  spec.name          = "rvine"
  spec.version       = Rvine::VERSION
  spec.authors       = ["Kyuden"]
  spec.email         = ["msmsms.um@gmail.com"]
  spec.summary       = %q{Ruby wrapper for Vine API}
  spec.description   = %q{Ruby wrapper for Vine API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'faraday_middleware'
  spec.add_runtime_dependency 'json'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '~> 2.14.1'
end
