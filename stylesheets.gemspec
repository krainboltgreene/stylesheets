# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stylesheets/version'

Gem::Specification.new do |gem|
  gem.name          = "stylesheets"
  gem.version       = StyleSheets::VERSION
  gem.authors       = ["Kurtis Rainbolt-Greene"]
  gem.email         = ["me@kurtisrainboltgreene.name"]
  gem.summary       = %q{A way to write ruby and get CSS}
  gem.description   = gem.summary
  gem.homepage      = "http://krainboltgreene.github.com/stylesheets"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'astruct', '~> 2.9'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'kramdown'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'minitest-colorize'
  # gem.add_runtime_dependency 'gemname', '~> 1.0'
  # gem.add_development_dependency 'gemname', '~> 1.0'
end
