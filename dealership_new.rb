require 'sqlite3'

class Dealership

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def greeting
    puts "We have a great selection to choose from."
    puts "\n"
  end

  def user_interface
    begin
      db = SQLite3::Database.open "cars_data.db"
      db.results_as_hash = true
      ary = db.execute "SELECT * FROM Cars"
      models = []
      ary.each do |row|
        models.push(row['Model'])
      end
      puts "We currently have #{models.size} cars and trucks to choose from."
      puts "\nPlease select the model you would like:"
      puts "\n"
      models.uniq.each do |model|
        puts model.capitalize
      end
    rescue SQLite3::Exception => e
      puts "Exception occurred"
      puts e
    ensure
      db.close if db
    end

    begin
      db = SQLite3::Database.open "cars_data.db"
      puts "\n"
      answer1 = gets.chomp.downcase
      puts "\n"
      model = answer1
      stm = db.prepare "SELECT Color FROM Cars WHERE Model = ?"
      stm.bind_param 1, model
      ary2 = stm.execute
      ary2 = ary2.sort
      puts "Please select from the colors below:"
      puts "\n"
      ary2.uniq.each do |color|
        puts color
      end
    rescue SQLite3::Exception => e
      puts "Exception occurred"
      puts e
    ensure
      stm.close if stm
      db.close if db
    end

      puts "\n"
      answer2 = gets.chomp.downcase
      puts "\n"
    ary.each do |row|
      if row['Model'] == answer1
        if row['Color'] == answer2
          printf "We have a %s %s %s for $%s\n",row['Color'].capitalize, row['Make'].capitalize,
          row['Model'].capitalize, row['Price']
        end
      end
    end
  end
end
