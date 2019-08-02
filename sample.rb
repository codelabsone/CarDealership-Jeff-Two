class Car
  def initialize (make, model, color, price)
    @make = make
    @model = model
    @color = color
    @price = price
  end
end
car1 = Car.new("ford", "fiesta", "black", 2000)
car2 = Car.new("ford", "focus", "white", 3000)
​
fleet = Array.new
ObjectSpace.each_object(Car) do |car|
  fleet.push(car)
end
