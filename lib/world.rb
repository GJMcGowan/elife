require_relative 'plant'

# This is the world class
class World
  attr_reader :grid, :turn
  def initialize(size = 9)
    @grid = generate(size)
    @turn = 0
  end

  def next_turn
    @turn += 1
    make_breed = []
    grid.each do |key, value|
      value.class == Plant && !value.bred? ? make_breed << key : nil
    end
    make_breed.each { |i| breed(i) }
  end

  def add_plants(number)
    temp_keys = @grid.keys.shuffle
    number.times do
      grid[temp_keys.pop.to_sym] = Plant.new
    end
  end

  def plants
    count = 0
    grid.each_value do |element|
      element.class == Plant ? count += 1 : nil
    end
    count
  end

  def breed(key)
    place = surrounding_space(key).sample
    grid[place] = Plant.new
  end

  def surrounding_space(key)
    array = [] << key.next
    array << key.to_s.reverse.next.reverse.to_sym
    backwards(key, array)
    array.select! { |item| grid.key?(item) }
    puts array
    array
  end

  def backwards(key, array)
    var = key.to_s.split('')[0].ord - 1
    letter_back = (var.chr + key[1]).to_sym
    var = key.to_s.split('')[1].ord - 1
    number_back = (key[0] + var.chr).to_sym
    array.push(letter_back, number_back)
  end

  def generate(size)
    letter_range(size).map do |letter|
      (1..dimensions(size)).map do |number|
        { "#{letter}#{number}".to_sym => ' ' }
      end
    end.flatten.reduce(:merge)
  end

  def dimensions(size)
    Math.sqrt(size).floor
  end

  def letter_range(size)
    ('A'..letter_alphabet(dimensions(size)))
  end

  def letter_alphabet(number)
    (number.ord + 64).chr
  end
end
