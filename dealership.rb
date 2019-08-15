require_relative 'car_class'

class Dealership

  attr_reader :title

  def initialize(title)
    @title = title
    @cars = []
  end

  def add_cars(a_car)
    @cars << (a_car)
  end

  def greeting
    puts "\nWe have #{@cars.size} cars to choose from:"
    puts "\n"
    @cars.each do |car|
      puts "A #{car.color} #{car.make} #{car.model} for $#{car.price}"
      #puts car
    end
  end

  def selection
    puts "\nHow would you like to sort the cars?"
    puts "\nColor\nModel"
  end

  def interaction_model
    models = []
    @cars.each do |car|
      models << (car.model)
    end
    unique_models = models.uniq
    puts "\nPlease choose the model of car you want."
    puts "\n"
    unique_models.sort.each do |model|
      puts model
    end
    answer = gets.chomp.downcase
    puts "\n"
    @cars.each do |car|
      if car.model == answer.capitalize
        puts "We have a #{car.color} #{car.make} #{car.model} in stock for $#{car.price}."
      end
    end
  end

  def interaction_color
    colors = []
    @cars.each do |car|
      colors << (car.color)
    end
    unique_colors = colors.uniq
    puts "\nPlease choose the color of car you want."
    puts "\n"
    unique_colors.sort.each do |color|
      puts color
    end
    answer = gets.chomp.downcase
    puts "\n"
    @cars.each do |car|
      if car.color == answer
        puts "We have a #{car.color} #{car.make} #{car.model} in stock for $#{car.price}."
      end
    end
  end

end
