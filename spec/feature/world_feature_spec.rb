require 'capybara/rspec'
require 'world'
require 'plant'

feature 'Basic Features: World' do
  let(:world) { World.new }

  scenario 'the board outputs the number of plants' do
    expect(world.plants).to eq(0)
  end

  scenario 'the world can add plants to random positions' do
    world.add_plants(2)
    expect(world.plants).to eq(2)
  end

  scenario 'the plants can reproduce' do
    world.add_plants(1)
    world.next_turn
    expect(world.turn).to eq(1)
    expect(world.plants).to eq(2)
  end
end
