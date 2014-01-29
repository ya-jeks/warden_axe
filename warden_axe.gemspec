# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'warden_axe/version'

Gem::Specification.new do |spec|
  spec.name          = "warden_axe"
  spec.version       = WardenAxe::VERSION
  spec.authors       = ["Eugene Jeks"]
  spec.email         = ["ya.jeks@yandex.ru"]
  spec.description   = [""]
  spec.summary       = [""]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "warden"
  spec.add_dependency "redis-rails"
end
