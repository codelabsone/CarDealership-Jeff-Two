
require_relative "Model_Filter"
puts "\n"
puts " Car Dealer Manager (CDM) ".center(100,'#')
require 'readline'
filtered_model=$filtered_model


def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end

puts "\n*** Please Select one of the Following... *** \n"

i = 1
matches = 0
colors = Array.new
filtered_model.each do |color|
  color = color[1]
  colors_array = colors.include?(color)
    if (colors_array != true)
      colors.push(color)
      puts "Enter #{i} for #{color}. \n"
      matches += 1
      i += 1
    end
end

userinput1 = input

userinput = colors.values_at(userinput1.to_i - 1)

filtered_color = Array.new

filtered_model.each do |car|
   model = car[0]
   color = car[1]
   price = car[2]
       #puts models.values_at(input.to_i)
      if color == userinput[0]
        filtered_color.push([model, color, price])
        puts "The car is a #{color} #{model.capitalize} priced at #{price}\n"
      end
end
puts matches
$filtered_color=filtered_color
if __FILE__ == $0
  print filtered_color
end
