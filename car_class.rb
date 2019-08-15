class Car

  attr_accessor :make, :model, :color, :price

  def initialize(make, model, color, price)
    @make = make.capitalize
    @model = model.capitalize
    @color = color
    @price = price
  end

end
