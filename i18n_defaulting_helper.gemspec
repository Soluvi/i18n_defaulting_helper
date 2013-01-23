# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_defaulting_helper/version'

Gem::Specification.new do |gem|
  gem.name          = "i18n_defaulting_helper"
  gem.version       = I18nDefaultingHelper::VERSION
  gem.authors       = ["Mart Karu"]
  gem.email         = ["karu@metal.ee"]
  gem.description   = %q{I18n defaulting helper}
  gem.summary       = %q{Attempts to find translations in a Rails app for a missing translation key from defaults.* before giving up.}
  gem.homepage      = "http://github.com/Soluvi/i18n_defaulting_helper"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", "~> 3.2.11"
  gem.add_dependency "i18n"
end
