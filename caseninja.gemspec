# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caseninja/version'

Gem::Specification.new do |spec|
  spec.name          = "caseninja"
  spec.version       = Caseninja::VERSION
  spec.authors       = ["ongaeshi"]
  spec.email         = ["ongaeshi0621@gmail.com"]
  spec.summary       = %q{Convert input text to chain, snake, camel and pascal case.}
  spec.description   = %q{Caseninja converts input text to chain, snake, camel and pascal case. It will freely convert any text to any case.}
  spec.homepage      = "https://github.com/ongaeshi/caseninja"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
