require_relative 'database'
cars = $cars


class Car
  attr_accessor :make, :model, :color, :price, :type

  def initialize (make, model, color, price, type)
    @id = id
    @make = make
    @model = model
    @color = color
    @price = price
    @type = type
  end
end

cars.each do |car|
  make = car[0]
  model = car[1]
  color = car[2]
  price = car[3]
  type = car[4]
  car1 = Car.new (make, model, color, price, type)
  # models.push (model)
  # print models
  # car.new(car.make, car.model, car.color, car.price, car.type)
end





# fleet = Array.new
# ObjectSpace.each_object(Car) do |car|
#   fleet.push([car.id, car.model, car.color, car.price])
# end
#
# print fleet
