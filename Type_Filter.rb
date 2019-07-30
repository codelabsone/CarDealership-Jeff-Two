require_relative "Model_Filter"
require_relative "Color_Filter"
require_relative "Price_Filter"
puts "\n"
puts " Car Dealer Manager (CDM) ".center(100, '#')
filtered_prices=$filtered_prices

def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end
i = 1
matches = 0
types = Array.new
filtered_prices.each do |type|
  type = type[3]
  types_array = types.include?(type)
    if (types_array != true)
      types.push(type)
      puts "Enter #{i} for #{type}. \n"
      matches += 1
      i += 1
    end
  end

  userinput1 = input

  userinput = types.values_at(userinput1.to_i - 1)

  filtered_types = Array.new

  filtered_prices.each do |car|
    model = car[0]
    color = car[1]
    price = car[2]
    type = car[3]

    if types == userinput[0]
      filtered_types.push(model, color, price, type)
      puts "The car is a #{color} #{model.capitalize} #{type} priced at #{price}\n"
    end
  end
  puts matches
