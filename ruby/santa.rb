# Business Code
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end

	def celebrate_birthday
		@age += 1
		@age
	end	

	def get_mat_at(reindeer)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index("#{reindeer}")))
	end
	
	# getter methods
	# def age
	# 	@age
	# end
	
	# def ethnicity
	# 	@ethnicity
	# end
	
	# #setter methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end
	
end


# User Interface
# list = {
# 	agender: "black",
# 	female: "Latino",
# 	bigender: "white",
# 	male: "Japanese",
# 	female: "Prefer not to say",
# 	gender_fluid: "Mystical Creature (unicorn)",
# 	na: "N/A"
# }

# list_test = []

# list.each do |gender, race|
# 	puts "Creating profile"
# 	list_test << Santa.new(gender, race)
# end

instance = Santa.new("male", "Asian")
instance.get_mat_at("Vixen")
instance.age
instance.celebrate_birthday
instance.age
instance.gender = "female"
# instance = Santa.new
# instance.speak
# instance.eat_milk_and_cookies("chocolate chip cookie")