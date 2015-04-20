require 'plant'

describe Plant do
  context('Basic Functions') do
    it('plants have energy') do
      plant = Plant.new
      expect(plant.energy).to eq(1)
    end
  end
end
