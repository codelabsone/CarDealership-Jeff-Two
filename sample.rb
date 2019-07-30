class Person
  attr_accessor :first_name,:last_name,:city ,:ids

  def initialize
    self.ids = [] # on object creation initialize this to an array
  end

  def print_csv_record
    print last_name.empty? ? "," : "\"#{last_name}\","
    print first_name.empty? ? "," : "\"#{first_name}\","
    print city.empty? ? "" : "\"#{city}\","
    p "\n"
  end
end

p = Person.new
p.last_name = ""
p.first_name = "Plucket"
p.city = "San Diego"

p.ids.push("1")
p.ids.push("55")

p.ids.each do |i|
  print i
  puts "\n"
end
