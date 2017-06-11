require 'sqlite3'

db = SQLite3::Database.new("podcasts_list.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS podcasts_list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    podcasts VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

#add test podcast to podcast table
# db.execute("INSERT INTO podcasts_list (name, podcasts) VALUES ('Bob', 'My Favorite Murder')")
