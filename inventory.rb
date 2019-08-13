require_relative 'interactive'

class Vehicle

  attr_accessor :type, :brand, :model, :color, :price

  def initialize(type, brand, model, color, price)
    @type = type
    @brand = brand.capitalize
    @model = model.capitalize
    @color = color
    @price = price
  end

end
