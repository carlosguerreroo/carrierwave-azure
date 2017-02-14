lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/azure/version'

Gem::Specification.new do |gem|
  gem.name          = 'carrierwave-azure-blob'
  gem.version       = Carrierwave::Azure::VERSION
  gem.authors       = ['Carlos Omana', 'Yusuke Shibahara']
  gem.email         = ['carlos.omag@gmail.com']
  gem.summary       = %q{Windows Azure blob storage support for CarrierWave}
  gem.description   = %q{Allows file upload to Azure with the officail sdk}
  gem.homepage      = 'https://github.com/carlosguerreroo/carrierwave-azure'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^rspec})
  gem.require_paths = ['lib']

  gem.add_dependency 'carrierwave'
  gem.add_dependency 'azure'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 3'
end
