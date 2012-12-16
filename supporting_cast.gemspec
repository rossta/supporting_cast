# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'supporting_cast/version'

Gem::Specification.new do |gem|
  gem.name          = "supporting_cast"
  gem.version       = SupportingCast::VERSION
  gem.authors       = ["Ross Kaffenberger"]
  gem.email         = ["rosskaff@gmail.com"]
  gem.description   = "Opinionated generators for common Rails supporting cast services, or 'supporting_casts'"
  gem.summary       = "Opinionated generators for common Rails supporting cast services, or 'supporting_casts'"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
