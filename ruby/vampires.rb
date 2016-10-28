puts "How many employees will be processed?"
	employees = gets.chomp.to_i
	counter = 0
	while counter < employees

		puts "What is your name?"
			name = gets.chomp
			name_check = true
			if name == "Drake Cula"
				name_check = false
				elsif name == "Tu Fang"
				name_check = false
			end

		puts "How old are you?"
			age = gets.chomp.to_i

		puts "What year were you born?"
			current_year = 2016
			year = gets.chomp.to_i
			age_check = current_year - year
			if age == age_check
				life = true
			else
				life = false
			end

		puts "Our company cafeteria serves garlic bread. Should we order some for you?"
			garlic = gets.chomp
			if garlic == "yes"
				likes_garlic = true
			else
				likes_garlic = false
			end

		puts "Would you like to enroll in company's health insurance?"
			health = gets.chomp
			if health == "yes"
				insurance = true
			else
				insurance = false
			end
			
		allergy_count = 0

		puts "Please name any allergies you have. Please type done when finished"
			allergies = ""
			
			while allergy_count < 1
				allergies = gets.chomp
				if allergies == "done"
					allergy_count += 1
					elsif allergies == "sunshine"
					allergy_count += 1
					allergy_check = true
				end
		end

		if name_check != true
			puts "Definitely a vampire."
		elsif allergy_check == true
			puts "Probably a vampire."
		elsif life && (likes_garlic || insurance) == true
			puts "Probably not a vampire."
		elsif life || likes_garlic || insurance == true
			puts "Probably a vampire."
		elsif life || likes_garlic || insurance == false
			puts "Almost certainly a vampire."
		else
			puts "Results inconclusive."
		end

	counter += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."