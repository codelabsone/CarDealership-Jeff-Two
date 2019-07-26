cars = [
  ["escape", "red", "15K"],
  ["escape", "black", "15K"],
  ["escape", "white", "15K"],
  ["escape", "red", "20K"],
  ["escape", "black", "20K"],
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
 puts "\n"
 puts " Car Dealer Manager (CDM) ".center(100,'#')
 require 'readline'
 def input(prompt="", newline=false)
   prompt += "\n" if newline
   Readline.readline(prompt, true).squeeze(" ").strip
 end

 puts "\n*** Please Select one of the Following... *** \n"

 i = 1
 matches = 0
 models = Array.new
 cars.each do |car|
   model = car[0]
   models_array = models.include?(model)
     if (models_array != true)
       models.push(model)
       puts "Enter #{i} for #{model}. \n"
       matches += 1
       i += 1
     end
 end

 userinput1 = input

 userinput = models.values_at(userinput1.to_i - 1)

 filtered_model = Array.new

 cars.each do |car|
    model = car[0]
    color = car[1]
    price = car[2]
       #puts models.values_at(input.to_i)
       if model == userinput[0]
         filtered_model.push([model, color, price])
         puts "The car is a #{color} #{model.capitalize} priced at #{price}\n"
       end
 end
$filtered_model=filtered_model

if __FILE__ == $0
  print filtered_model
end
