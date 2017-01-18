$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'mpcm/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'mpcm'
  s.version     = Mpcm::VERSION
  s.authors     = ['guillaume bonin']
  s.email       = ['guillaume.bonin@seniormedia.fr']
  s.homepage    = 'localhost:3000'
  s.summary     = 'CMS in Rails'
  s.description = 'Multi Purpose Content Manager is a Ruby On Rails CMS'
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.1'

  s.add_development_dependency 'pg'
end
