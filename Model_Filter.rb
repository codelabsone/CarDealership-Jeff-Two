require_relative "smpldtbs"
 puts "\n"
 puts " Car Dealer Manager (CDM) ".center(100,'#')
 require 'readline'
 def input(prompt="", newline=false)
   prompt += "\n" if newline
   Readline.readline(prompt, true).squeeze(" ").strip
 end

 puts "\n*** Please Select one of the Following... *** \n"
cars = $cars
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
