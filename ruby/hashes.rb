# Get user information
puts "Welcome to the Design Preferences Application"
puts "Please fill out the information below:"
puts "Name"
name = gets.chomp
puts "Age"
# Convert to appropriate data type
age = gets.chomp.to_i
puts "Do you have children? 'yes' or 'no'"
# Confirm if they have children first
have_children = gets.chomp
	if have_children == "yes"
		puts "How many?"
		children = gets.chomp.to_i
	# If not, have the value reflect
	elsif have_children == "no"
		children = nil
	end

puts "Decor Theme"
theme = gets.chomp

# Create an array with the gathered input
preferences = {
	name: name,
	age: age,
	children: children,
	theme: theme
}

# Print the array
p preferences

#Giver the user a chance to update their information
input = ""
until input == 'exit'
	# Ask the user if it is correct or not
	puts "Is this correct? If not enter (like above) what was incorrect. If so enter 'exit'"
	input = gets.chomp
		# Direct user to information that needs to be updated 
		if input == "name"
			puts "Name"
			preferences[:name] = gets.chomp!
		elsif input == "age"
			puts "Age"
			preferences[:age] = gets.chomp
		elsif input == "children"
			puts "Do you have children? 'yes' or 'no'"
			have_children = gets.chomp
				if have_children == "yes"
					puts "How many?"
					preferences[:children] = gets.chomp.to_i
				elsif have_children == "no"
					preferences[:children] = nil
				end
		elsif input == "theme"
			puts "Decor Theme"
			preferences[:theme] = gets.chomp
		elsif input == "exit"
		puts "Thank you, here are your results!"
		else
			puts "Sorry, I missed that. Please enter the information you wanted to update (Ex. :name) or enter 'exit'"
		end
end

# Print the updated results
p preferences