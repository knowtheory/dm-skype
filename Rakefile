require 'rubygems'
require 'rake'

begin
  gem 'jeweler', '~> 1.5.2'
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name        = 'dm-skype'
    gem.summary     = 'DataMapper models for Skype v5'
    gem.description = 'DataMapper models wrapping Skype v5\'s sqlite tables'
    gem.email       = 'gems@knowtheory.net'
    gem.homepage    = 'http://github.com/knowtheory/%s' % gem.name
    gem.authors     = [ 'Ted Han' ]
  end

  Jeweler::GemcutterTasks.new

rescue LoadError => e
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
  puts '-----------------------------------------------------------------------------'
  puts e.backtrace # Let's help by actually showing *which* dependency is missing
end
