require_relative 'dealership_new'

dealer = Dealership.new(" Jeff's Car Dealer 2 ")
puts "#{dealer.title}".center(120, '=')
puts "\nWelcome to #{dealer.title.strip}!"

dealer.greeting
dealer.user_interface
