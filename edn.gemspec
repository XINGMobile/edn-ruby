# -*- encoding: utf-8 -*-
require File.expand_path('../lib/edn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Clinton N. Dreisbach & Russ Olsen"]
  gem.email         = ["russ@russolsen.com"]
  gem.description   = %q{'edn implements a reader for Extensible Data Notation by Rich Hickey.'}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/relevance/edn-ruby"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "edn"
  gem.require_paths = ["lib"]
  gem.version       = EDN::VERSION

  gem.add_development_dependency 'pry-byebug', '~> 3.10'
  gem.add_development_dependency 'rake', '~> 13.1'
  gem.add_development_dependency 'rantly', '~> 0.3.1'
  gem.add_development_dependency 'rspec', '~> 3.13'
end
