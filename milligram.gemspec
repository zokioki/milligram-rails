# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'milligram/version'

Gem::Specification.new do |spec|
  spec.name          = 'milligram'
  spec.version       = Milligram::VERSION
  spec.authors       = ['Zoran']
  spec.email         = ['zspesic@gmail.com']

  spec.summary       = %q{A minimalist CSS framework.}
  spec.description   = %q{Milligram framework's assets packaged into a Ruby gem.}
  spec.homepage      = 'https://github.com/zokioki/milligram-rb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 2.0.2'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.10.3'
end
