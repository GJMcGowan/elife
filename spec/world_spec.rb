require 'world'

describe World do
  let(:plant) { double :plant }
  context 'Basic Functions' do
    let(:grid) { ['#', ' ', ' '] }
    let(:world) { World.new(grid) }
    it('there is a grid') do
      expect(world.grid).to eq(grid)
    end

    it('the grid can contain 3 strings') do
      expect(world.grid).to eq(grid)
    end

    it('the grid can contain a hash of coordinates') do
      grid = { A1: '#', A2: ' ', A3: ' ' }
      world = World.new(grid)
      expect(world.grid).to eq(grid)
    end

    it('the world can have turns') do
      expect(world.turn).to eq(0)
    end

    it('the world can run multiple turns') do
      world.next_turn
      expect(world.turn).to eq(1)
    end
  end

  context('Plants') do
    let(:grid) { [plant, ' ', ' '] }
    let(:world) { World.new(grid) }
    it('the grid can contain plants') do
      expect(world.grid).to eq(grid)
    end

    it('the grid can report on where all the plants are') do
    end
  end
end
