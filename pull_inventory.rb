require 'sqlite3'

db = SQLite3::Database.open "cars.db"

db.execute("select * from vehicles") do |result|
  print result
end

print result
