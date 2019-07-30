require_relative "Model_Filter"
require_relative "Color_Filter"
puts "\n"
puts " Car Dealer Manager (CDM) ".center(100, '#')
filtered_color=$filtered_color

def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end

puts "\n*** Please Select one of the Following... *** \n"

i = 1
matches = 0
prices = Array.new
filtered_color.each do |price|
  price = price[2]
  prices_array = prices.include?(price)
    if (prices_array != true)
      prices.push(price)
      puts "Enter #{i} for #{price}. \n"
      matches += 1
      i += 1
    end
  end

  userinput1 = input

  userinput = prices.values_at(userinput1.to_i - 1)

  filtered_prices = Array.new

  filtered_color.each do |car|
    model = car[0]
    color = car[1]
    price = car[2]

    if price == userinput[0]
      filtered_prices.push(model, color, price)
      puts "The car is a #{color} #{model.capitalize} priced at #{price}\n"
    end
  end
  puts matches

  $filtered_prices=filtered_prices
  if __FILE__ == $0
    print filtered_prices
  end
