class GuessGame
	def initialize
		puts "Starting Guess Game..."
	end

	def get_answer
		puts "Player 1 enter your word."
		answer = gets.chomp
		answer
	end
end

game = GuessGame.new
test = game.get_answer
