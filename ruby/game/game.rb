# Business Code

class GuessGame
	def initialize
		puts "Starting Guess Game..."
	end

	def get_answer(answer)
		answer
	end

	def guesses_total(answer)
		@guess_layout = answer.chars
		@guess_length = @guess_layout.length
	end

	def guess_scramble(answer, input)
		scramble = ''
		answer.chars { |letter|
			scramble += (input.include? letter)? letter : '_'}
		scramble
		end
end

#User Interface

# game = GuessGame.new
# answer = game.get_answer