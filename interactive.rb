require_relative 'inventory'
require 'csv'
require 'readline'

class Dealer

  attr_accessor :title

  def initialize(dealer_title)
    @title = dealer_title
    @vehicles = []
    #@types = []
    #@brands = []
    #@models =[]
    #@colors = []
    #@prices = []
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

  #def input(prompt="", newline=false)
  #  prompt += "\n" if newline
  #  Readline.readline(prompt, true).squeeze(" ").strip
  #end

  def i_brands
    brand = []
    @vehicles.each do |vehicle|
      brand.push(vehicle.brand)
    end
    integer = 1
    brand = brand.uniq!.sort
    brand.each do |vehicle|
      puts "Select #{integer} for #{vehicle}.\n"
      integer +=1
    end
    input = gets.chomp.to_i

    def by_brand
      (brand[input - 1])
    end

    puts

    puts "\nor type 'quit' to exit."
  end


end
