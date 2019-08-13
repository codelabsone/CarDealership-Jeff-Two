

require 'sqlite3'

begin

db = SQLite3::Database.open "cars.db"
rows = db.execute <<-SQL
          create table if not exists vehicles(
            id int,
           make text,
           model text,
           color text,
           price int
         );
        SQL

puts rows
puts rows.inspect

makes = ["ford", "chevy", "toyota", "honda"]
models = ["truck", "sedan", "SUV", "sports car"]
colors = ["black", "red", "white", "green", "silver"]

Car = Struct.new(:id, :make, :model, :color, :price)

rounds = 5
id = 0

1.upto(rounds) do
  vehicle = Car.new
  # vehicle.make = makes.sample
  # vehicle.model = models.sample
  # vehicle.color = colors.sample
  # vehicle.price = rand(5000..25000)
  db.execute("INSERT INTO vehicles(id, make, model, color, price) VALUES(?, ?, ?, ?, ?)", [vehicle.id = id += 1, vehicle.make = makes.sample, vehicle.model = models.sample, vehicle.color = colors.sample, vehicle.price = rand(5000..25000)])
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
