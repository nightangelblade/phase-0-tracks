# Define method for detecting vowels and consonants
def checker(name)
	output = []

	# Define the vowels and consonants
	vowel = ['a', 'e', 'i', 'o', 'u', 'y']
	vowel_upper = ['A', 'E', 'I', 'O', 'U', 'Y']

	consonant = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
	consonant_upper = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Z']
	
	# Determine if a vowel or consonant, and execute accordingly

		# Statement for consonants
		if consonant.include?(name) == true
			if consonant.index(name).next == 20
				output << consonant[0]
			else
				output << consonant[consonant.index(name).next]
			end

		# Catch in case it is an uppercase consonant
		elsif consonant_upper.include?(name) == true
			if consonant_upper.index(name).next == 20
				output << consonant_upper[0]
			else
				output << consonant_upper[consonant_upper.index(name).next]
			end

		# Statement for vowels
		elsif vowel.include?(name) == true
			if vowel.index(name).next == 6
				output << vowel[0]
			else
				output << vowel[vowel.index(name).next]
			end

		# Catch in case it is an uppercase vowel
		elsif vowel_upper.include?(name) == true
			if vowel_upper.index(name).next == 6
				output << vowel_upper[0]
			else
				output << vowel_upper[vowel_upper.index(name).next]
			end
		end
	output
end


# Loop for UI
# Define variable to add all results to
full = []

# Loop until user wishes to exit
loop do

# Prompt for input
puts "Would you like an encryption? If so press enter, all else type 'quit'"
input = ""
input = gets.chomp
break if input == 'quit'

# Prompt for entering name for encryption
puts "Enter your full name"
input_name = gets.chomp

# Reverse the name for output
input_full = input_name.split(' ').reverse

# Break into separate characters for method input
input_last = input_full[0].split('')
input_first = input_full[1].split('')

# Run through the method
input_first.map! {|encrypt| checker(encrypt)}
input_last.map! {|encrypt| checker(encrypt)}

# Join characters back together after method is complete
output_first = input_last.join
output_last = input_first.join

# Merge back into new result
output_full = "#{output_first} #{output_last}"

# Add to total for final output when exiting
full.push("#{input_name} is #{output_full}")
end

# Print total results, each on their own line
full.each do |code|
	puts "#{code}!"
end