# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent-plugin-access/version'

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-access"
  gem.version       = Fluent::Plugin::Access::VERSION
  gem.authors       = ["kkaneko"]
  gem.email         = ["kkaneko@iacc.co.jp"]
  gem.description   = %q{filtreing access log}
  gem.summary       = %q{filtreing access log}
  gem.homepage      = "https://github.com/kenjikaneko/fluent-plugin-access"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "fluentd"
  gem.add_dependency "mongoid"
  gem.add_dependency "msgpack"
  gem.add_dependency "nokogiri"
end
