# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mandrill_inbound_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "mandrill_inbound_parser"
  spec.version       = MandrillInboundParser::VERSION
  spec.authors       = ["Gilang Mahardhika"]
  spec.email         = ["gilangmahardhika@gmail.com"]
  spec.summary       = %q{Parse mandrill inbound data to readable text.}
  spec.description   = %q{Parse mandrill inbound data to readable text.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
