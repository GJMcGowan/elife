require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/life_#{env}")

require_relative 'grid'

DataMapper.finalize
# Possibly move this to rakefile or something later
DataMapper.auto_upgrade!
