require_relative 'inventory'
require 'csv'

class Dealer

  attr_accessor :title

  def initialize(dealer_title)
    @title = dealer_title
    @vehicles = []
  end

  def add_vehicle(a_vehicle)
    @vehicles.push(a_vehicle)
  end

  def formatted_title
    puts @title.center(100, '=')
  end

  def greeting
    puts "\nWelcome to #{@title.strip}!\nWe have a great selection of vehicles to choose from!"
    puts "\nWhat brand of vehicle are you looking for?"
    puts "\n"
  end

  def load_vehicles(from_file)
    CSV.foreach(from_file, headers: true) do |row|
      vehicle = Vehicle.new(row[0], row[1], row[2], row[3], row[4].to_i)
      add_vehicle(vehicle)
    end
  end

  def i_brands
    brand = []
      @vehicles.each do |vehicle|
      #puts "#{vehicle}"
      brand.push(vehicle.brand)
    end
    integer = 1
    brand = brand.uniq!.sort
    brand.each do |vehicle|
      puts "Select #{integer} for #{vehicle}.\n"
      integer +=1
    end
    input = gets.chomp
    #puts "\nor type 'quit' to exit."
    #print brand
    #answer = brand.select { |x| x.include? input }
if input == "1"
  input = "Chevrolet"
elsif input == "2"
  input = "Ford"
elsif input == "3"
  input = "Honda"
end


puts input


    @vehicles.each do |vehicle|
      # puts input
        # puts " #{vehicle.brand} #{vehicle.model}"
      if input == vehicle.brand
        puts " #{vehicle.brand} #{vehicle.model}"
      end

      brand.push(vehicle.brand)
    end




    # answer.each do |vehicle|
    #   type = vehicle[0]
    #   model = vehicle[2]
    #   color = vehicle[3]
    #   price = vehicle[4]
    #   puts " We have a #{color} #{model} at #{price}."
    # end

  end

end
