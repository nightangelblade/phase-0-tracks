class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end

	def initialize
		puts "Initializing Santa instance..."
		@gender = 
		@ethnicity = 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

end

instance = Santa.new
instance.speak
instance.eat_milk_and_cookies("chocolate chip cookie")