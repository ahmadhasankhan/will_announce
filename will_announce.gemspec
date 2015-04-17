# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'will_announce/version'

Gem::Specification.new do |spec|
  spec.name          = "will_announce"
  spec.version       = WillAnnounce::VERSION
  spec.authors       = ["ahmadhasankhan"]
  spec.email         = ["er.ahmad.hassan@gmail.com"]
  spec.summary       = "Sometimes you need to display an administrative announcement to every page on the site and give the ability to users to hide the announcement, this gem will provide you to make site wide announcements."
  spec.description   = "Sometimes you need to display an administrative announcement to every page on the site and give the ability to users to hide the announcement, this gem will provide you to make site wide announcements."
  spec.homepage      = "http://github.com/ahmadhasankhan/will_announce"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end


