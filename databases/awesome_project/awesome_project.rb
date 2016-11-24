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
	- Upon loading, ask if the user is creating a new character, updating a current one, or deleting an old one.
		- If creating a new character, create a new row
			- Walk user through each part of the table until entire table is filled with information.
		- If updating a current one, ask the user for the name of the character they had created (make note for correct syntax). Additionaly give user ability to see all stored characters if they don't remember.
			- After selecting character, ask user what (row) they are updating
			- After selecting row, ask user for the updated information.
			- Loop: Until user is done updating the character, keep asking what they want to update until they say "done".
		- If deleting an old character, follow similar for updating.
			- After selecting character, confirm if the user wants to delete the character.
			- Delete the character.
	- Loop: Upon completion, confirm if there was anything else the user wanted to do. If so, return back to the beginning until the user confirms they are done.
=end

# BUSINESS CODE
require 'sqlite3'

character_database = SQLite3::Database.new("characters.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS characters(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    class VARCHAR(255),
    level INT,
    personality VARCHAR(255),
    strengths VARCHAR(255),
    weaknesses VARCHAR(255),
    background VARCHAR(255)
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


def new_character()
	#character_database.execute("INSERT INTO characters (name, age, class, level, personality, strengths, weaknesses, background, campaign_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [name, age, class, level, personality, strengths, weaknesses, background, campaign_idname, age, class, level, personality, strengths, weaknesses, background, campaign_id])
end

def update_character()

end

def delete_character()

end


# DRIVER CODE

character_database.execute(create_table_cmd)
character_database.execute(create_campaign_cmd)