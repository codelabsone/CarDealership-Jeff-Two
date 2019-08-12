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

    selection = @vehicles.select{|vehicle| vehicle.include? userinput }
    selection.each do |car|
      puts "These vehicles match your selection:"
      puts car
    end

  end

end
