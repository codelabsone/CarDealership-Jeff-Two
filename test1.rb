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
#puts cars[13]

cars.each do |car|
   model = car[0]
   color = car[1]
      if(color == inputcolor)
        puts "The car is a #{color} #{model}\n"
end
end
