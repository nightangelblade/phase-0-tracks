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
	p character_database.execute("SELECT campaigns.id, campaigns.name FROM campaigns")
	campaign = gets.chomp.to_i

	new_character(character_database, character_name, character_age, character_class, character_level, campaign)


elsif action == "update"

	puts "Which character are you updating?"
	update_character_name = gets.chomp
	puts "What part of the profile are you editing? (name, age, class, level, campaign)"
	edit = gets.chomp
	if edit == "name"
		puts "What is the new name for your character?"
		new_name = gets.chomp
		update_character_name(character_database, new_name, update_character_name)
	elsif edit == "age"
		puts "What is the new age for your character?"
		new_age = gets.chomp.to_i
		update_character_age(character_database, new_age, update_character_name)
	elsif edit == "class"
		puts "What is the new class for your character?"
		new_class = gets.chomp
		update_character_class(character_database, new_class, update_character_name)
	elsif edit == "level"
		puts "What is the new class for your character?"
		new_level = gets.chomp.to_i
		update_character_level(character_database, new_class, update_character_name)
	elsif edit == "campaign"
		puts "What is the new campaign your character is playing in?"
		p character_database.execute("SELECT campaigns.id, campaigns.name FROM campaigns")
		new_campaign = gets.chomp.to_i
		update_character_campaign(character_database, new_campaign, update_character_name)
	else
		puts "Sorry I missed that. Are you updating something for your character?"
	end

elsif action == "delete"

	puts "Which character are you deleting?"
	delete_character_name = gets.chomp
	delete_character(character_database, delete_character_name)

else
	puts "Sorry, I didn't catch that. What were you trying to do? (Type 'new', 'update', or 'delete')"
end