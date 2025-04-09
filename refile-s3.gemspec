# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "refile/s3/version"

Gem::Specification.new do |spec|
  spec.name          = "refile-s3"
  spec.version       = Refile::S3::VERSION
  spec.authors       = ["Jonas Nicklas"]
  spec.email         = ["jonas.nicklas@gmail.com"]
  spec.summary       = "Amazon S3 backend for the Refile gem"
  spec.homepage      = "https://github.com/Grupo-Essent/refile-s3"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "refile", ">= 0.3.2"
  spec.add_dependency "aws-sdk-s3", ">= 1.0", "< 2.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock"
end
