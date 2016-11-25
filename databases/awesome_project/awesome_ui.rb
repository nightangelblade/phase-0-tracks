require_relative 'awesome_project'

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
	character_database.execute("SELECT * FROM campaigns")


elsif action == "update"

	puts "Which character are you updating?"
	character_name = gets.chomp


elsif action == "delete"

else
	puts "Sorry, I didn't catch that. What were you trying to do? (Type 'new', 'update', or 'delete')"
end