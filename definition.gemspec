# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "definition/version"

Gem::Specification.new do |spec|
  spec.name          = "definition"
  spec.version       = Definition::VERSION
  spec.authors       = ["Dominik Goltermann"]
  spec.email         = ["dominik@goltermann.cc"]

  spec.summary       = "Simple and composable validation and coercion of data structures inspired by clojure specs"
  spec.homepage      = "https://github.com/Goltergaul/definition"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "approvals", "~> 0.0"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "benchmark-ips"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "fuubar"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-its", "~> 1.2"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "rubocop_runner"
  spec.add_development_dependency "timecop"
end
