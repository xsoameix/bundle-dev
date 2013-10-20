lib = File.expand_path '../lib', __FILE__
$LOAD_PATH.unshift lib if not $LOAD_PATH.include? lib
require 'bundle_dev/version'

Gem::Specification.new do |spec|
  spec.name          = 'bundle_dev'
  spec.version       = BundleDev::VERSION
  spec.authors       = ['Lien Chiang']
  spec.email         = ['xsoameix@gmail.com']
  spec.description   = 'Install the development dependencies for your gem'
  spec.summary       = 'BundleDev'
  spec.homepage      = 'https://github.com/xsoameix/bundle-dev'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split $/
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename f }
  spec.test_files    = spec.files.grep /^(test|spec|features)\//
  spec.require_paths = ['lib']

  spec.add_dependency 'bundler', '~> 1.3'
  spec.add_dependency 'thor'

  spec.add_development_dependency 'rake'
end
