require "rake/extensiontask"
require 'rake/testtask'

Rake::ExtensionTask.new "geoip2" do |ext|
  ext.lib_dir = "lib/geoip2"
end

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs.push 'spec'
end

desc "Download free IP to City database"
task :download_free_database do
  file = 'GeoLite2-City.mmdb'
  if File.exist?(file)
    puts "File already exists"
  else
    puts "Downloading file"
    `curl http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz | gzip -d > #{file}`
  end
end

desc "An IRB console with the project loaded"
task :console do
  $: << 'lib'
  require 'geoip2'
  GeoIP2.file('GeoLite2-City.mmdb')
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end

task default: [:compile, :test]