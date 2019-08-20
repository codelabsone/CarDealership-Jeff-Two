require 'sqlite3'

class Dealership

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def user_interface

    begin

        db = SQLite3::Database.open "cars_data.db"
        db.results_as_hash = true
        ary = db.execute "SELECT * FROM Cars"
        puts "\sWhat model of car would you like?"
        puts "\n"
        models = []
        colors = []
        ary.each do |row|
          models.push(row['Model'])
        end
        models.uniq.each do |model|
          puts model.capitalize
        end
        answer1 = gets.chomp.downcase

        ary.each do |row|
          colors.push(row['Color'])
        end
        puts "\nWhat color would you like?"
        colors.uniq.each do |color|
          puts color.capitalize
        end
        answer2 = gets.chomp.downcase
        ary.each do |row|
          if row['Model'] == answer1
            if row['Color'] == answer2
              printf "We have a %s %s %s for $%s\n",row['Color'], row['Make'].capitalize,
              row['Model'].capitalize, row['Price']
            end
          end
        end

    rescue SQLite3::Exception => e

        puts "Exception occurred"
        puts e

    ensure
        db.close if db
    end

  end

end
