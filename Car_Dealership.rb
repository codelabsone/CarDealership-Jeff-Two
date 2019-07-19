# Enter New Sale
class Cars
  makes = ["fiesta", "escape", "focus"]
  colors = ["red", "white", "black"]
  types = ["sedan", "SUV", "pickup"]

  def initialize (makes, types, colors)
    @make = []
    @typesn = []
    @color = []
  end

  def to_s
    "@make, @type, @color"
  end
end


car1 = Cars.new ("fiesta", "white", "sedan")
puts car1

# puts"\n"
# puts " Car Dealer Manager (CDM) ".center(100,'#')
# require 'readline'
#
# def input(prompt="", newline=false)
#   prompt += "\n" if newline
#   Readline.readline(prompt, true).squeeze(" ").strip
# end
#
# user_prompt = input "\n*** Please Select one of the Following... *** \n Enter '1' for sedans. \n Enter '2' for SUV \n Enter '3' for pickup \n Enter 'Exit' To Quit. "
# puts"\n"
# if user_prompt == "1"
#    puts "List of Sedans"
#  elsif user_prompt == "2"
#    puts "List of SUV"
#  elsif user_prompt == "3"
#    puts "List of pickups"
#  elsif user_prompt == "Exit"
#  system("exit")
# else
#  puts "**** ERROR Please Enter 1, 2 or 3 ****"
#  system("ruby app.rb")
#  end
#
#
# types = ["sedan", "SUV", "pickup"]
# types.each do |car|
#  print car.capitalize + " " + "\n"
# end
#
# colors = ["red", "white", "black"]
# colors.each do |car|
#   print car + " " + "\n"
# end
#
# makes = ["escape", "focus", "fiesta"]
# makes.each do |car|
#   print car.capitalize + " "
# end
