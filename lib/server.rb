require 'sinatra/base'
require 'data_mapper'
require_relative 'world'
require_relative 'data_mapper_setup'

# Life sim server
# Add a place to type in the size of grid you want to start with
class Life < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/new_sim' do
    world = World.new
    size = params['Size'].to_i
    world.generate(size).keys.each do |element|
      i = element.to_s
      f = i.split('')
      Grid.create(row: f[1], column: f[0], value: '')
    end
    @grid = Grid.all
    @grid.get(rand(1..size)).update(value: 'plant')
    erb :new_sim
  end
end
