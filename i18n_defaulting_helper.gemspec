# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_defaulting_helper/version'

Gem::Specification.new do |gem|
  gem.name          = "i18n_defaulting_helper"
  gem.version       = I18nDefaultingHelper::VERSION
  gem.authors       = ["Mart Karu"]
  gem.email         = ["karu@metal.ee"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
