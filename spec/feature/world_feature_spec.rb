require 'capybara/rspec'
require 'world'
require 'plant'

feature 'Basic Features: World' do
  let(:grid) { [Plant.new, ' ', ' '] }
  let(:world) { World.new(grid) }

  scenario 'the board outputs the number of plants' do
    expect(world.plants).to eq(1)
  end

  scenario 'the board can have turns' do
  end
end
