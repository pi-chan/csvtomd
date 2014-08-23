# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csvtomd/version'

Gem::Specification.new do |spec|
  spec.name          = "csvtomd"
  spec.version       = Csvtomd::VERSION
  spec.authors       = ["xoyip"]
  spec.email         = ["xoyip@piyox.info"]
  spec.summary       = %q{Convert CSV text to markdown style table.}
  spec.description   = {}
  spec.homepage      = "https://github.com/xoyip/csvtomd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
