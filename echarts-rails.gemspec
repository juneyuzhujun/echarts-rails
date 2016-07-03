# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "echarts-rails"
  spec.version       = "0.1.2"
  spec.authors       = ["Echo Han"]
  spec.email         = ["echohn@gmail.com"]

  spec.summary       = "Wrappers of Echarts Javascript Chart Libary for Rails 3.1+"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/echohn/echarts-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         =Dir["{lib,vendor}/**/*"] + ["LICENSE", "Rakefile", "Gemfile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rails",">=3.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
