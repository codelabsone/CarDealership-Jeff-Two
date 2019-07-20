inputcolor = "red"
cars = Array.new
cars = [
  ["escape", "red", "15K"],
  ["escape", "black", "15K"],
  ["escape", "white", "15K"],
  ["escape", "red", "20K"],
  ["escape" "black", "20K"],
  ["escape", "white", "20K"],
  ["escape", "red", "25K"],
  ["escape", "black", "25K"],
  ["escape", "white", "25K"],
  ["focus", "red", "15K"],
  ["focus", "black", "15K"],
  ["focus", "white", "15K"],
  ["focus", "red", "20K"],
  ["focus", "black", "20K"],
  ["focus", "white", "20K"],
  ["focus", "red", "25K"],
  ["focus", "black", "25K"],
  ["focus", "white", "25K"],
  ["fiesta", "red", "15K"],
  ["fiesta", "black", "15K"],
  ["fiesta", "white", "15K"],
  ["fiesta", "red", "20K"],
  ["fiesta", "black", "20K"],
  ["fiesta", "white", "20K"],
  ["fiesta", "red", "25K"],
  ["fiesta", "black", "25K"],
  ["fiesta", "white", "25K"]
]

puts"\n"
puts " Car Dealer Manager (CDM) ".center(100,'#')
require 'readline'

def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end

user_prompt = input "\n*** Please Select one of the Following... *** \n Enter '1' for fiesta. \n Enter '2' for escape \n Enter '3' for focus \n Enter 'Exit' To Quit. "
puts"\n"
if user_prompt == "1"
   inputmodel = "fiesta"
 elsif user_prompt == "2"
   inputmodel = "escape"
 elsif user_prompt == "3"
   inputmodel =  "focus"
 elsif user_prompt == "Exit"
 system("exit")
else
 puts "**** ERROR Please Enter 1, 2 or 3 ****"
 system("ruby app.rb")
 end

cars.each do |car|
   model = car[0]
   color = car[1]
   price = car[2]
      if(model == inputmodel)
        puts "The car is a #{color} #{model.capitalize} priced at #{price}\n"
end
end
