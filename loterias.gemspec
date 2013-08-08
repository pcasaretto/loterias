# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'loterias/version'

Gem::Specification.new do |spec|
  spec.name          = "loterias"
  spec.version       = Loterias::VERSION
  spec.authors       = ["Paulo L F Casaretto"]
  spec.email         = ["pcasaretto@gmail.com"]
  spec.description   = "Loterias API wrapper for ruby"
  spec.summary       = "Loterias API undocumented API wrapper for ruby"
  spec.homepage      = "http://github.com/pcasaretto"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry-plus"

end
