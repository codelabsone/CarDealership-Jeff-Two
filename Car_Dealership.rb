Enter New Sale
puts"\n"
puts " Car Dealer Manager (CDM) ".center(100,'#')
require 'readline'

def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end

user_prompt = input "\n*** Please Select one of the Following... *** \n Enter '1' for sedans. \n Enter '2' for SUV \n Enter '3' for pickup \n Enter 'Exit' To Quit. "
puts"\n"
if user_prompt == "1"
   puts "List of Sedans"
 elsif user_prompt == "2"
   puts "List of SUV"
 elsif user_prompt == "3"
   puts "List of pickups"
 elsif user_prompt == "Exit"
 system("exit")
else
 puts "**** ERROR Please Enter 1, 2 or 3 ****"
 system("ruby app.rb")
 end


types = ["sedan", "SUV", "pickup"]
types.each do |car|
 print car.capitalize + " "
end
