Gem::Specification.new do |s|
  s.name         = 'geoip2'
  s.version      = "0.0.8"

  s.licenses     = ['WTFPL']

  s.authors      = ['Maksim Stepanov']
  s.email        = ['stepanov.ms@mail.ru']

  s.summary      = "A Binding to the GeoIP2 C library"
  s.description  = 'Generic GeoIP2 lookup tool.'
  s.homepage     = "http://github.com"

  s.files        = `git ls-files`.split("\n")
  s.extensions   = ['ext/geoip2/extconf.rb']
  s.require_paths = ["lib"]

  s.add_development_dependency 'minitest',      '~> 5.7.0'
  s.add_development_dependency 'rake',          '~> 10.0'
  s.add_development_dependency 'rake-compiler', '~> 0.9.5'
end
