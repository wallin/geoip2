require 'mkmf'
extension_name = 'geoip2'

$LDFLAGS << " #{ENV['LDFLAGS']}"
$CFLAGS << " #{ENV['CFLAGS']}"

RbConfig::MAKEFILE_CONFIG['CC'] = ENV['CC'] if ENV['CC']

if have_header('maxminddb.h')
  create_makefile("#{extension_name}/#{extension_name}")
else
  abort "you must have mmdb library"
end

