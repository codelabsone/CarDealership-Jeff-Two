require_relative 'interactive'

dealer = Dealer.new(" Jeff's Car Dealership 2 ")
dealer.load_vehicles("inventory.csv")

dealer.formatted_title
dealer.greeting
dealer.i_brands
