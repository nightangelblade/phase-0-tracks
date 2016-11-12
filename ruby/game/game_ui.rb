require_relative 'game'

#User Interface

game = GuessGame.new

puts "Player 1, please enter word."
word = gets.chomp
answer = game.get_answer(word)
guesses = game.guesses_total(answer)
guess = ""

p game.guess_scramble(word, "_")

puts "Player 2, you have #{guesses} guesses remaining. Please guess a letter."
guess_input = gets.chomp
guess = guess + guess_input
scramble = game.guess_scramble(word, guess)
p scramble