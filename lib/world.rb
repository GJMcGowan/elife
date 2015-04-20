# This is the world class
class World
  attr_reader :grid, :turn
  def initialize(grid)
    @grid = grid
    @turn = 0
  end

  def plants
    count = 0
    grid.each do |element|
      element.class == Plant ? count += 1 : nil
    end
    count
  end

  def next_turn
    @turn += 1
  end
end
