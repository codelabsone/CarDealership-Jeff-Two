require 'sqlite3'

begin

  db = SQLite3::Database.open "cars_data.db"
  db.execute "CREATE TABLE IF NOT EXISTS Cars(Id INTEGER PRIMARY KEY,
      Make TEXT, Model TEXT, Color TEXT, Price INT)"
  db.execute "INSERT INTO Cars VALUES(1, 'ford', 'edge', 'silver', 29900)"
  db.execute "INSERT INTO Cars VALUES(2, 'ford', 'edge', 'white', 32900)"
  db.execute "INSERT INTO Cars VALUES(3, 'ford', 'edge', 'black', 34900)"
  db.execute "INSERT INTO Cars VALUES(4, 'ford', 'edge', 'red', 39900)"
  db.execute "INSERT INTO Cars VALUES(5, 'ford', 'fiesta', 'red', 14900)"
  db.execute "INSERT INTO Cars VALUES(6, 'ford', 'fiesta', 'silver', 16900)"
  db.execute "INSERT INTO Cars VALUES(7, 'ford', 'fiesta', 'yellow', 18900)"
  db.execute "INSERT INTO Cars VALUES(8, 'ford', 'fiesta', 'black', 19900)"
  db.execute "INSERT INTO Cars VALUES(9, 'ford', 'fusion', 'black', 24900)"
  db.execute "INSERT INTO Cars VALUES(10, 'ford', 'fusion', 'white', 28900)"
  db.execute "INSERT INTO Cars VALUES(11, 'ford', 'fusion', 'red', 29900)"
  db.execute "INSERT INTO Cars VALUES(12, 'ford', 'fusion', 'blue', 32900)"
  db.execute "INSERT INTO Cars VALUES(13, 'ford', 'f150', 'silver', 24900)"
  db.execute "INSERT INTO Cars VALUES(14, 'ford', 'f150', 'black', 34900)"
  db.execute "INSERT INTO Cars VALUES(15, 'ford', 'f150', 'red', 36900)"
  db.execute "INSERT INTO Cars VALUES(16, 'ford', 'f150', 'grey', 42900)"
  db.execute "INSERT INTO Cars VALUES(17, 'ford', 'mustang', 'red', 29900)"
  db.execute "INSERT INTO Cars VALUES(18, 'ford', 'mustang', 'silver', 32900)"
  db.execute "INSERT INTO Cars VALUES(19, 'ford', 'mustang', 'yellow', 39900)"
  db.execute "INSERT INTO Cars VALUES(20, 'ford', 'mustang', 'black', 44900)"

rescue SQLite3::Exception => e

  puts "Exception occurred"
  puts e

ensure
  db.close if db
end
