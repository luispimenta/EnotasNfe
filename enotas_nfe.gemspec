$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enotas_nfe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enotas_nfe"
  s.version     = EnotasNfe::VERSION
  s.authors     = ["Luis Fernando Pimenta"]
  s.email         = ["email@luispimenta.me"]
  
  s.summary       = "E-Notas nfe"
  s.description   = "E-Notas nfe gateway wrapper"
  s.homepage      = "https://github.com/luispimenta/EnotasNfe"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.13"
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency "rspec", "~> 3.0"

  s.add_runtime_dependency "virtus", '~> 1.0', '>= 1.0.5'
  s.add_runtime_dependency "virtus_convert", "~> 0.1.0"
  s.add_runtime_dependency "faraday", "~> 0.9"
  s.add_runtime_dependency "faraday_middleware", "~> 0.12.0"
end
