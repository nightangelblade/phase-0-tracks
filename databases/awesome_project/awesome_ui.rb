# BUSINESS CODE

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

character_database.execute(create_table_cmd)
character_database.execute(create_campaign_cmd)

# USER INTERFACE

puts "Are you working on a character or a campaign?"
character_campaign = gets.chomp
	if character_campaign == "character"

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
			post_character(character_database, character_name)

		elsif action == "update"

			puts "Which character are you updating?"
			p character_database.execute("SELECT characters.name FROM characters")
			update_character_name = gets.chomp
			puts "What part of the profile are you editing? (name, age, class, level, campaign)"
			edit = gets.chomp
			if edit == "name"
				puts "What is the new name for your character?"
				new_name = gets.chomp
				update_character_name(character_database, new_name, update_character_name)
				post_character(character_database, new_name)
			elsif edit == "age"
				puts "What is the new age for your character?"
				new_age = gets.chomp.to_i
				update_character_age(character_database, new_age, update_character_name)
				post_character(character_database, update_character_name)
			elsif edit == "class"
				puts "What is the new class for your character?"
				new_class = gets.chomp
				update_character_class(character_database, new_class, update_character_name)
				post_character(character_database, update_character_name)
			elsif edit == "level"
				puts "What is the new level for your character?"
				new_level = gets.chomp.to_i
				update_character_level(character_database, new_level, update_character_name)
				post_character(character_database, update_character_name)
			elsif edit == "campaign"
				puts "What is the new campaign your character is playing in?"
				p character_database.execute("SELECT campaigns.id, campaigns.name FROM campaigns")
				new_campaign = gets.chomp.to_i
				update_character_campaign(character_database, new_campaign, update_character_name)
				post_character(character_database, update_character_name)
			else
				puts "Sorry I missed that. Are you updating something for your character?"
			end

		elsif action == "delete"

			puts "Which character are you deleting?"
			p character_database.execute("SELECT characters.name FROM characters")
			delete_character_name = gets.chomp
			puts "Are you sure you want to delete #{delete_character_name}? (Type 'yes' or 'no')"
			confirm = gets.chomp
				if confirm == "yes"
					delete_character(character_database, delete_character_name)
				else
					puts "#{delete_character_name} was not deleted."
				end
			p character_database.execute("SELECT characters.name FROM characters")

		else
			puts "Sorry, I didn't catch that. What were you trying to do? (Type 'new', 'update', or 'delete')"
		end

	elsif character_campaign == "campaign"
		puts "Initializing Campaign Database..."
		puts "Are you creating a new campaign, updating, or deleting a current one? (Type 'new', 'update', or 'delete')"
		action = gets.chomp
			if action == "new"

				puts "Okay, please follow the instructions to come!"
				puts "Please enter your campaign's name."
				campaign_name = gets.chomp
				puts "Please enter your campaign's roleplay system."
				campaign_system = gets.chomp
				puts "Please enter your campaign's theme."
				campaign_theme = gets.chomp
				puts "Please enter your campaign's level."
				campaign_level = gets.chomp
				new_campaign(character_database, campaign_name, campaign_system, campaign_theme, campaign_level)
				post_campaign(character_database, campaign_name)

			elsif action == "update"

				puts "Which campaign are you updating?"
				p character_database.execute("SELECT campaigns.name FROM campaigns")
				update_campaign_name = gets.chomp
				puts "What part of the profile are you editing? (name, system, theme, level)"
				edit = gets.chomp
				
					if edit == "name"
						puts "What is the new name for your campaign?"
						new_name = gets.chomp
						update_campaign_name(character_database, new_name, update_campaign_name)
						post_campaign(character_database, new_name)
					elsif edit == "system"
						puts "What is the new roleplay system for your campaign?"
						new_system = gets.chomp
						update_campaign_system(character_database, new_system, update_campaign_name)
						post_campaign(character_database, update_campaign_name)
					elsif edit == "theme"
						puts "What is the new theme for your campaign?"
						new_theme = gets.chomp
						update_campaign_theme(character_database, new_theme, update_campaign_name)
						post_campaign(character_database, update_campaign_name)
					elsif edit == "level"
						puts "What is the new level for your campaign?"
						new_level = gets.chomp
						update_campaign_level(character_database, new_level, update_campaign_name)
						post_campaign(character_database, update_campaign_name)
					else
						puts "Sorry I missed that. Are you updating something for your character?"
					end

			elsif action == "delete"

				puts "Which campaign are you deleting?"
				p character_database.execute("SELECT campaigns.name FROM campaigns")
				delete_campaign_name = gets.chomp
				puts "Are you sure you want to delete #{delete_campaign_name}? (Type 'yes' or 'no')"
				confirm = gets.chomp
					if confirm == "yes"
						delete_campaign(character_database, delete_campaign_name)
					else
						puts "#{delete_campaign_name} was not deleted."
					end
				p character_database.execute("SELECT campaigns.name FROM campaigns")
			else
				puts "Sorry, I didn't catch that. What were you trying to do? (Type 'new', 'update', or 'delete')"
			end
	else
		puts "Sorry, I didn't catch that. What were you trying to do? (Type 'character', 'campaign', or 'exit')"
	end


