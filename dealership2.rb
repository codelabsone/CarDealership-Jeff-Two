require_relative 'interactive2'


dealer = Dealer.new(" Jeff's Car Dealership 2 ")
dealer.load_vehicles("inventory2.csv")

dealer.formatted_title
dealer.greeting
dealer.i_brands
