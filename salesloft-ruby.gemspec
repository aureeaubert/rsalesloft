# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'rsalesloft'

Gem::Specification.new do |s|
  s.name = "rsalesloft"
  s.version = RSalesloft::VERSION
  s.authors = ["Auree Aubert"]
  s.email = "contact@auree.me"
  s.homepage = 'https://github.com/aureeaubert/salesloft-ruby'
  s.summary = 'A Ruby wrapper for the Salesloft API'
  s.description = 'A Ruby wrapper for the Salesloft API '
  s.files = `git ls-files -z`.split("\x0")
  s.test_files = s.files.grep(/^spec\//)
  s.require_paths = ['lib']

  s.add_runtime_dependency("faraday")
  s.add_runtime_dependency("faraday_middleware")
  s.add_runtime_dependency("json")

  s.add_development_dependency("bundler")
  s.add_development_dependency("webmock")
  s.add_development_dependency("rake")
  s.add_development_dependency("rspec")
  s.add_development_dependency("yard")
  s.add_development_dependency("vcr", "~> 3.0")
end