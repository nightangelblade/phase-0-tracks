=begin
PSEUDOCODE
The Create, Store, and Update a Character Machine!
- require respective gems
	- SQLite3 for database-
	- Possibly Faker if numerous names need to be generated.
- Create database-
	- Create table for storing characters- 
	- Create table for storing campaigns- 
- User Interface
	- Upon loading, ask if the user is creating a new character, updating a current one, or deleting an old one.-
		- If creating a new character, create a new row-
			- Walk user through each part of the table until entire table is filled with information.
		- If updating a current one, ask the user for the name of the character they had created (make note for correct syntax). Additionaly give user ability to see all stored characters if they don't remember.-
			- After selecting character, ask user what (column) they are updating-
			- After selecting column, ask user for the updated information.-
			- Loop: Until user is done updating the character, keep asking what they want to update until they say "done".
		- If deleting an old character, follow similar for updating.-
			- After selecting character, confirm if the user wants to delete the character.-
				- If so delete the character.-
				- If not, let user know the character wasn't deleted
	- Loop: Upon completion, confirm if there was anything else the user wanted to do. If so, return back to the beginning until the user confirms they are done.
=end

# BUSINESS CODE
require 'sqlite3'

def new_character(database, name, age, type, level, campaign_id)
	database.execute("INSERT INTO characters (name, age, class, level, campaign_id) VALUES (?, ?, ?, ?, ?)", [name, age, type, level, campaign_id])
	puts "Character created!"
end

def update_character_name(database, value, character_name)
	database.execute("UPDATE characters SET name=? WHERE name=?", [value, character_name])
	puts "Character name updated!"
end

def update_character_age(database, value, character_name)
	database.execute("UPDATE characters SET age=? WHERE name=?", [value, character_name])
	puts "Character age updated!"
end

def update_character_class(database, value, character_name)
	database.execute("UPDATE characters SET class=? WHERE name=?", [value, character_name])
	puts "Character class updated!"
end

def update_character_level(database, value, character_name)
	database.execute("UPDATE characters SET level=? WHERE name=?", [value, character_name])
	puts "Character level updated!"
end

def update_character_campaign(database, value, character_name)
	database.execute("UPDATE characters SET campaign_id=? WHERE name=?", [value, character_name])
	puts "Character campaign updated!"
end

def delete_character(database, character_name)
	database.execute("DELETE FROM characters WHERE name=?", [character_name])
	puts "Character deleted!"
end

def post_character(database, character_name)
	p database.execute("SELECT characters.name, characters.age, characters.class, characters.level, campaigns.name FROM characters JOIN campaigns ON characters.campaign_id = campaigns.id WHERE characters.name=?", [character_name])
end


# DRIVER CODE



# new_character(character_database, "Cain", 20, "fighter", 3, 1)
# update_character_name(character_database, "Basil", "Cain")
# update_character_age(character_database, 30, "Basil")
# update_character_class(character_database, "mage", "Basil")
# update_character_level(character_database, 4, "Basil")
# update_character_campaign(character_database, 2, "Basil")
# delete_character(character_database, "Basil")