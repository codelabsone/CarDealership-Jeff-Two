makes = ["ford", "chevy", "toyota", "honda"]
models = ["truck", "sedan", "SUV", "sports car"]
colors = ["black", "red", "white", "green", "silver"]

Car = Struct.new(:id, :make, :model, :color, :price)

rounds = 100
id = 0

1.upto(rounds) do
  vehicle = Car.new
  vehicle.id = id += 1
  vehicle.make = makes.sample
  vehicle.model = models.sample
  vehicle.color = colors.sample
  vehicle.price = rand(5000 ..25000)
end

fleet = Array.new
ObjectSpace.each_object(Car) do |car|
  fleet.push([car.id, car.model, car.color, car.price])
end

print fleet
