# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gocr/version'

Gem::Specification.new do |spec|
  spec.name          = "gocr-ruby"
  spec.version       = GOCR::VERSION
  spec.authors       = ["Vladimir Zyablitskiy"]
  spec.email         = ["zyablitskiy@gmail.com"]
  spec.description   = %q{GOCR Ruby binding}
  spec.summary       = %q{Unofficial port for Ruby}
  spec.homepage      = "https://github.com/rainlabs/gocr-ruby"
  spec.license       = "MIT"
  spec.extensions    = %w[ext/gocr/extconf.rb]

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
end

#Gem::PackageTask.new s do end
