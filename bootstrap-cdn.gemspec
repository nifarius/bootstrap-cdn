# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap/cdn/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-cdn"
  spec.version       = Bootstrap::CDN::VERSION
  spec.authors       = ["Nifarius"]
  spec.email         = ["nifarius@gmail.com"]
  spec.description   = %q{Twitter Boostrap CDN support for Rails 3 and 4}
  spec.summary       = %q{Twitter Boostrap CDN support for Rails 3 and 4}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.0", "< 5.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
