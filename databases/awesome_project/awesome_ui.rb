require_relative 'awesome_project'

character_database = SQLite3::Database.new("characters.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS characters(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    class VARCHAR(255),
    level INT,
    campaign_id INT,
    FOREIGN KEY (campaign_id) REFERENCES campaigns(id)
  )
SQL

create_campaign_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS campaigns(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    system VARCHAR(255),
    theme VARCHAR(255),
    level VARCHAR(255)
  )
SQL

puts "Initializing Character Database..."
puts "Are you creating a new character, updating, or deleting a current one? (Type 'new', 'update', or 'delete')"
action = gets.chomp
if action == "new"

	puts "Okay, please follow the instructions to come!"
	puts "Please enter your character's name."
	character_name = gets.chomp
	puts "Please enter your character's age."
	character_age = gets.chomp.to_i
	puts "Please enter your character's class."
	character_class = gets.chomp
	puts "Please enter your character's level."
	character_level = gets.chomp.to_i
	puts "Please enter the number of the campaign your character is a part of!"
	p character_database.execute("SELECT * FROM campaigns")
	campaign = gets.chomp.to_i

	new_character(character_database, character_name, character_age, character_class, character_level, campaign)


elsif action == "update"

	puts "Which character are you updating?"
	character_name = gets.chomp


elsif action == "delete"

else
	puts "Sorry, I didn't catch that. What were you trying to do? (Type 'new', 'update', or 'delete')"
end