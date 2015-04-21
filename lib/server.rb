require 'sinatra/base'
require 'data_mapper'
require_relative 'world'
require_relative 'data_mapper_setup'

# Life sim server
# Add a place to type in the size of grid you want to start with
class Life < Sinatra::Base
  get '/' do
    world = World.new
    world.generate(9).keys.each do |element|
      i = element.to_s
      f = i.split('')
      Grid.create(row: f[1], column: f[0], value: '')
    end
    'Hello World'
  end
end

# world = World.new
# letters = []
# world.letter_range(9).each { |letter| letters << letter }
# numbers = []
# (1..world.dimensions(9)).each { |number| numbers << number }
# # 9.times do |letter, number|
# #   world.
# # grid = Grid.create(row: '1', column: 'A', value: '')
# # 'Grid successfully made' if grid.save
# # grid = Grid.get(1)
