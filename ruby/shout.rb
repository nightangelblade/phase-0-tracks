module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

require_relative 'shout'

p Shout.yell_angrily("Darn")
p Shout.yelling_happily("Yay")