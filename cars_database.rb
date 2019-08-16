require 'sqlite3'

begin

  db = SQLite3::Database.open "cars_data.db"
  db.execute "CREATE TABLE IF NOT EXISTS Cars(Id INTEGER PRIMARY KEY,
      Make TEXT, Model TEXT, Color TEXT, Price INT)"
  db.execute "INSERT INTO Cars VALUES(1,'Ford', 'Edge', 'Silver', 29900)"
  db.execute "INSERT INTO Cars VALUES(2,'Ford', 'Edge', 'Black', 34900)"
  db.execute "INSERT INTO Cars VALUES(3,'Ford', 'Fiesta', 'Red', 14900)"
  db.execute "INSERT INTO Cars VALUES(4,'Ford', 'Fiesta', 'Yellow', 18900)"
  db.execute "INSERT INTO Cars VALUES(5,'Ford', 'Fusion', 'Black', 24900)"
  db.execute "INSERT INTO Cars VALUES(6,'Ford', 'Fusion', 'White', 28900)"
  db.execute "INSERT INTO Cars VALUES(7,'Ford', 'F150', 'Silver', 24900)"
  db.execute "INSERT INTO Cars VALUES(8,'Ford', 'F150', 'Black', 34900)"
  db.execute "INSERT INTO Cars VALUES(9,'Ford', 'Mustang', 'Red', 29900)"
  db.execute "INSERT INTO Cars VALUES(10,'Ford', 'Mustang', 'Black', 44900)"

rescue SQLite3::Exception => e

  puts "Exception occurred"
  puts e

ensure
  db.close if db
end
