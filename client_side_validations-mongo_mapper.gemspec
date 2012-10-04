# -*- encoding: utf-8 -*-
require File.expand_path('../lib/client_side_validations/mongo_mapper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Cardarella"]
  gem.email         = ["bcardarella@gmail.com"]
  gem.description   = %q{MongoMapper Plugin for ClientSideValidaitons}
  gem.summary       = %q{MongoMapper Plugin for ClientSideValidations}
  gem.homepage      = 'https://github.com/dockyard/client_side_validations-mongo_mapper'

  gem.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  gem.name          = 'client_side_validations-mongo_mapper'
  gem.require_paths = ['lib']
  gem.version       = ClientSideValidations::MongoMapper::VERSION

  gem.add_dependency 'client_side_validations', '~> 3.2.0.rc.1'
  gem.add_dependency 'mongo_mapper', '~> 0.11'

  gem.add_development_dependency 'bson_ext'
  gem.add_development_dependency 'rails', '~> 3.2.0'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'm'

  # For QUnit testing
  gem.add_development_dependency 'sinatra', '~> 1.0'
  gem.add_development_dependency 'shotgun'
  gem.add_development_dependency 'thin'
  gem.add_development_dependency 'json'
end
