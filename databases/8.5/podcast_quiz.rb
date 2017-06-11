require 'sqlite3'

db = SQLite3::Database.new("podcasts_list.db")
# db.results_as_hash = true

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

puts "Enter your name to take the podcast quiz!"
name = gets.chomp
puts "Answer yes or no to the following questions to receive your podcast suggestion!\n"
puts "Do you enjoy stories that tug at your heartstrings?"
hearts = gets.chomp
puts "Do you enjoy stories that disturb you or leave you feeling unsettled?"
disturb = gets.chomp
puts "Do you like to stay up to date on the news and world happenings?"
news = gets.chomp
puts "Do you like to learn things while listening to your podcasts?"
learning = gets.chomp
puts "Are you okay with adult language and content?"
adult = gets.chomp


if (hearts == "yes") && (disturb == "no") && (news == "no") && (learning == "no") && (adult == "no")
  podcast = "This American Life"
elsif (hearts == "no") && (disturb == "yes") && (news == "no") && (learning == "no") && (adult == "no")
  podcast = "Sword and Scale"
elsif (hearts == "no") && (disturb == "no") && (news == "yes") && (learning == "no") && (adult == "no")
  podcast = "NPR Politics"
elsif(hearts == "no") && (disturb == "no") && (news == "no") && (learning == "yes") && (adult == "no")
  podcast = "TED Radio Hour"
end


db.execute("INSERT INTO podcasts_list (name, podcasts) VALUES ('#{name}', '#{podcast}')")