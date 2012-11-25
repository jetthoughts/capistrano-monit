# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-monit/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-monit"
  gem.version       = Capistrano::Monit::VERSION
  gem.authors       = ["Michael Nikitochkin"]
  gem.email         = ["miry.sof@gmail.com"]
  gem.description   = %q{Capistrano tasks to ability to restart monit service and show current status}
  gem.summary       = %q{Monit plugin for Capistrano}
  gem.homepage      = "https://github.com/jetthoughts/capistrano-monit"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
