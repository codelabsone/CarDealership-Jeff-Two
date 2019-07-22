inputcolor = "red"
ford = Array.new
cars = [
  ["ford", "escape", "red", "15K"],
  ["ford", "escape", "black", "15K"],
  ["ford", "escape", "white", "15K"],
  ["ford", "escape", "red", "20K"],
  ["ford", "escape" "black", "20K"],
  ["ford", "escape", "white", "20K"],
  ["ford", "escape", "red", "25K"],
  ["ford", "escape", "black", "25K"],
  ["ford", "escape", "white", "25K"],
  ["ford", "focus", "red", "15K"],
  ["ford", "focus", "black", "15K"],
  ["ford", "focus", "white", "15K"],
  ["ford", "focus", "red", "20K"],
  ["ford", "focus", "black", "20K"],
  ["ford", "focus", "white", "20K"],
  ["ford", "focus", "red", "25K"],
  ["ford", "focus", "black", "25K"],
  ["ford", "focus", "white", "25K"],
  ["ford", "fiesta", "red", "15K"],
  ["ford", "fiesta", "black", "15K"],
  ["ford", "fiesta", "white", "15K"],
  ["ford", "fiesta", "red", "20K"],
  ["ford", "fiesta", "black", "20K"],
  ["ford", "fiesta", "white", "20K"],
  ["ford", "fiesta", "red", "25K"],
  ["ford", "fiesta", "black", "25K"],
  ["ford", "fiesta", "white", "25K"],
  ["chevy", "camaro", "red", "15K"],
  ["chevy", "camaro", "black", "15K"],
  ["chevy", "camaro", "white", "15K"],
  ["chevy", "camaro", "red", "20K"],
  ["chevy", "camaro", "black", "20K"],
  ["chevy", "camaro", "white", "20K"],
  ["chevy", "camaro", "red", "25K"],
  ["chevy", "camaro", "black", "25K"],
  ["chevy", "camaro", "white", "25K"],
  ["chevy", "impala", "red", "15K"],
  ["chevy", "impala", "black", "15K"],
  ["chevy", "impala", "white", "15K"],
  ["chevy", "impala", "red", "20K"],
  ["chevy", "impala", "black", "20K"],
  ["chevy", "impala", "white", "20K"],
  ["chevy", "impala", "red", "25K"],
  ["chevy", "impala", "black", "25K"],
  ["chevy", "impala", "white", "25K"],
  ["chevy", "malibu", "red", "15K"],
  ["chevy", "malibu", "black", "15K"],
  ["chevy", "malibu", "white", "15K"],
  ["chevy", "malibu", "red", "20K"],
  ["chevy", "malibu", "black", "20K"],
  ["chevy", "malibu", "white", "20K"],
  ["chevy", "malibu", "red", "25K"],
  ["chevy", "malibu", "black", "25K"],
  ["chevy", "malibu", "white", "25K"]
]

cars.each do |car|
   make = cars[0]
   model = cars[1]
   color = cars[2]
   price = cars[3]
      if(color == inputcolor)
        puts "The car is a #{color} #{model}\n"
end
end
