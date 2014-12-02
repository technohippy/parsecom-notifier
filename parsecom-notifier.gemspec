# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parsecom/notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "parsecom-notifier"
  spec.version       = '0.0'
  spec.authors       = ["ANDO Yasushi"]
  spec.email         = ["andyjpn@gmail.com"]
  spec.summary       = %q{Register Pushes}
  spec.description   = %q{Register Pushes}
  spec.homepage      = "https://github.com/technohippy/parsecom-notifier"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  #spec.require_paths = ["lib"]

  spec.add_dependency "parsecom", ">=0.7.0"
end
