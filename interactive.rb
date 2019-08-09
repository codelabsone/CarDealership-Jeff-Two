require_relative 'inventory'
require 'csv'
require 'readline'

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
    brands = []
    vehicles = []
    integer = 1

    @vehicles.each do |vehicle|
      brands.push(vehicle.brand)
    end

    @vehicles.each do |vehicle|
      vehicles.push(vehicle)
    end

    puts "We have the following brands to choose from.\nPlease select one of the following:"
    puts "\n"
    brands = brands.uniq!.sort
    brands.each do |vehicle|
      puts "Select #{integer} for #{vehicle}.\n"
      integer +=1
    end
    puts "\n"
    input = gets.chomp
    userinput = brands.values_at(input.to_i - 1)
    puts userinput
    #vehicles.each do |car|

    #end
    #answer = vehicles.select{|x| x.include?(userinput) }
    #answer.each do |vehicle|

     puts "We have a #{vehicle.color} #{vehicle.model} for #{vehicle.price}."
    end

#if input == "1"
#  input = "Chevrolet"
#elsif input == "2"
#  input = "Ford"
#elsif input == "3"
#  input = "Honda"
#end
#
#
#puts input
#
#
#    @vehicles.each do |vehicle|
#      # puts input
#        # puts " #{vehicle.brand} #{vehicle.model}"
#      if input == vehicle.brand
#        puts " #{vehicle.brand} #{vehicle.model}"
#      end
#
#      brand.push(vehicle.brand)
#    end


  end

end
