# Business Code

class GuessGame
	def initialize
		puts "Starting Guess Game..."
	end

	def get_answer(answer)
		answer
	end

	def answer_setup(answer)
		@guess_layout = answer.chars
		@guess_length = @guess_layout.length
	end

	def guess_scramble(answer)
		scramble = ''
		scrambe_length = answer.length
		scrambe_length.times do
			scramble += "_"
		end
		scramble
		end
end

#User Interface

# game = GuessGame.new
# answer = game.get_answer