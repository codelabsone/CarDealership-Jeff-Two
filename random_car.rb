

require 'sqlite3'

begin

db = SQLite3::Database.open 'cars.db'
#db = SQLite3::Database.open "dealer.db"
db.execute "CREATE TABLE IF NOT EXISTS Cars(make TEXT, model TEXT, color TEXT, price INT)"

makes = ["ford", "chevy", "toyota", "honda"]
models = ["truck", "sedan", "SUV", "sports car"]
colors = ["black", "red", "white", "green", "silver"]

Car = Struct.new(:make, :model, :color, :price)

rounds = 100

1.upto(rounds) do
  vehicle = Car.new
  vehicle.make = makes.sample
  vehicle.model = models.sample
  vehicle.color = colors.sample
  vehicle.price = rand(5000..25000)
  db.execute "INSERT INTO Cars VALUES(make, model, color, price)"
end

rescue SQLite3::Exception => e

    puts "Exception occurred"
    puts e

  ensure
  db.close if db
end

# fleet = Array.new
# ObjectSpace.each_object(Car) do |car|
#   fleet.push([car.id, car.model, car.color, car.price])
# end
#
# print fleet
