# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'h2o/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "h2o-ruby"
  spec.version       = H2o::Ruby::VERSION
  spec.authors       = ["Sho Nakatani"]
  spec.email         = ["lay.sakura@gmail.com"]
  spec.summary       = %q{H2O/Ruby Interface}
  spec.description   = %q{H2O/Ruby Interface}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
