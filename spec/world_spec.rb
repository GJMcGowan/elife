require 'world'

describe World do
  let(:plant) { double :plant }
  let(:grid) do
    { A1: ' ', A2: ' ', A3: ' ', B1: ' ', B2: ' ', B3: ' ',
      C1: ' ', C2: ' ', C3: ' ' }
  end
  context 'Basic Functions' do
    let(:world) { World.new }
    it('there is a grid') do
      expect(world.grid).to eq(grid)
    end

    it('the grid can contain 3 strings') do
      expect(world.grid).to eq(grid)
    end

    it('the grid can contain a hash of coordinates') do
      world = World.new
      expect(world.grid).to eq(grid)
    end

    it('the world can have turns') do
      expect(world.turn).to eq(0)
    end

    it('the world can run multiple turns') do
      world.next_turn
      expect(world.turn).to eq(1)
    end

    it('the world can generate a board, based on a size') do
      world.generate(3)
      expect(world.grid).to eq(grid)
    end

    it('the world can populate a board with plants, given a no. of plants') do
    end
  end

  context('Plants') do
    let(:world) { World.new }
    it('the grid can contain plants') do
      expect(world.grid).to eq(grid)
    end
  end
end
