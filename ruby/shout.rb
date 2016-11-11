module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Wolf
	include Shout
end

class Lion
	include Shout
end

wolf = Wolf.new
wolf.yell_angrily("Aroooo")
wolf.yelling_happily("Aroooo")

lion = Lion.new
lion.yell_angrily("Rawr")
lion.yelling_happily("Rawr")

# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# require_relative 'shout'

# p Shout.yell_angrily("Darn")
# p Shout.yelling_happily("Yay")