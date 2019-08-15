require_relative 'dealership'

car1 = Car.new("ford", "fiesta", "red", "14,900")
car2 = Car.new("ford", "fiesta", "black", "19,900")
car3 = Car.new("ford", "mustang", "red", "24,900")
car4 = Car.new("ford", "mustang", "blue", "34,900")
car5 = Car.new("ford", "explorer","black", "34,900")
car6 = Car.new("ford", "explorer", "green", "39,900")
car7 = Car.new("ford", "edge", "black", "29,900")
car8 = Car.new("ford", "edge", "silver","35,900")
car9 = Car.new("ford", "f150", "blue", "29,900")
car10 = Car.new("ford", "f150", "grey", "34,900")
dealer = Dealership.new(" Jeff's Car Dealer 2 ")


dealer.add_cars(car1)
dealer.add_cars(car2)
dealer.add_cars(car3)
dealer.add_cars(car4)
dealer.add_cars(car5)
dealer.add_cars(car6)
dealer.add_cars(car7)
dealer.add_cars(car8)
dealer.add_cars(car9)
dealer.add_cars(car10)

puts "#{dealer.title}".center(100, '*')
puts "\nWelcome to #{dealer.title.strip}"
dealer.greeting
dealer.selection

loop do
  answer = gets.chomp.downcase
  case answer
  when 'model'
    dealer.interaction_model
    break
  when 'color'
    dealer.interaction_color
    break
  when 'quit', 'exit'
    break
  else
    puts "Please select one of the options or type 'quit'"
  end
end
