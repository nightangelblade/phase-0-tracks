=begin
PSEUDOCODE
The Create, Store, and Update a Character Machine!
- require respective gems
	- SQLite3 for database
	- Possibly Faker if numerous names need to be generated.
- User Interface
	- Upon loading, ask if the user is creating a new character, updating a current one, or deleting an old one.
		- If creating a new character, create a new table
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


# DRIVER CODE