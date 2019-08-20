require_relative 'dealership_new'

dealer = Dealership.new(" Jeff's Car Dealer 2 ")
puts "#{dealer.title}".center(100, '*')
puts "\n\sWelcome to #{dealer.title.strip}"

dealer.user_interface
