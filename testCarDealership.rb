require_relative 'database.rb'
#<<<<<<< HEAD
#=======
#cars = IO.read('database.rb')

#>>>>>>> 6a6f671fc3b04aef3b7d7fbf8a1fdfd1d8ea7268
puts"\n"
puts " Car Dealer Manager (CDM) ".center(100,'#')
require 'readline'
cars = $cars
def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end

user_prompt = input "\n*** Please Select one of the Following... *** \n Enter '1' for Ford. \n Enter '2' for Chevy \n Enter 'Exit' To Quit. "
puts"\n"
if user_prompt == "1"
   inputmake = "ford"
 elsif user_prompt == "2"
   inputmake = "chevy"
 elsif user_prompt == "Exit"
 system("exit")
else
 puts "**** ERROR Please Enter 1 or 2 ****"
 system("ruby app.rb")
 end

cars.each do |car|
   make = car[0]
   model = car[1]
   color = car[2]
   price = car[3]
      if(make == inputmake)
        puts "The car is a #{color} #{make} #{model.capitalize} priced at #{price}\n"
end
end
