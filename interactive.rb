require_relative 'inventory'
require 'csv'
require 'readline'

class Dealer

  attr_accessor :title

  def initialize(dealer_title)
    @title = dealer_title
    @vehicles = []
    @brands = []
    @type = []
    @model = []
    @price = []
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

  def input(prompt="", newline=false)
    prompt += "\n" if newline
    Readline.readline(prompt, true).squeeze(" ").strip
  end

  def i_brands
  #  brands = []
  #  vehicles = []
  #  integer = 1

    @vehicles.each do |vehicle|
      @brands.push(vehicle.brand)
      @type.push(vehicle.type)
      @model.push(vehicle.model)
      @color.push(vehicle.color)
      @price.push(vehicle.price)
    end


    end

  #  @vehicles.each do |vehicle|
  #    vehicles.push(vehicle)
  #    puts "#{vehicle.type}, #{vehicle.brand} #{vehicle.model} #{vehicle.color} #{vehicle.price}"
  #  end

  #  puts "We have the following brands to choose from.\nPlease select one of the following:"
  #  puts "\n"
  #  brands = brands.uniq!.sort
  #  brands.each do |vehicle|
  #    puts "Select #{integer} for #{vehicle}.\n"
  #    integer +=1
  #  end
  #  puts "\n"

  #  userinput = brands.values_at(input.to_i - 1)

  #  puts userinput

  #  vehicles.each do |vehicle|
  #    brand = vehicle[1]
  #    model = vehicle[2]
  #    color = vehicle[3]
  #    price = vehicle[4].to_i
  #    if vehicle == userinput[1]
  #      puts "#{vehicle.color} #{vehicle.model} #{vehicle.price}"
  #    else
  #      puts "no matches"
  #    end

  #  end
  #end





end
