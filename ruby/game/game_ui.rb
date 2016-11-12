require_relative 'game'

#User Interface

game = GuessGame.new
wrong_attempt = 0

puts "Player 1, please enter word."
word = gets.chomp
answer = game.get_answer(word)
guesses = game.guesses_total(answer)
guess = ""


p game.guess_scramble(word, "_")
loop do
puts "Player 2, you have #{guesses - wrong_attempt} guesses remaining. Please guess a letter."
guess_input = gets.chomp

if word.include? (guess_input)
	if guess.include? (guess_input)
		puts "#{guess_input} is already used. Please try another letter."
		p game.guess_scramble(word, guess)
	else
		puts "Nice! The word does contain #{guess_input}!"
		guess = guess + guess_input
		scramble = game.guess_scramble(word, guess)
		p scramble
	end
	if (scramble.include? ('_')) == false
		puts "Congratulations! You solved the word!"
		break
	end
else
	puts "Sorry! The word doesn't contain #{guess_input}."
	wrong_attempt += 1
	if wrong_attempt == guesses
		puts "Game Over! You lost!"
		puts "The word was #{answer}."
		break
	else
		scramble = game.guess_scramble(word, guess)
		p scramble
	end
end
end