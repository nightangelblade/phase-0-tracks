
# RELEASE 1
def november
	relation = "Tomorrow"
	date = 3
	puts "Today is November 2"
	yield(relation, date)
end

november { |relation, date| puts "#{relation} is November #{date}"}


starter_pokemon = ["Bulbasaur", "Charmander", "Squirtle"]

beginner_pokemon = {
	grass: "Bulbasaur",
	fire: "Charmander",
	water: "Squirtle"
}

p starter_pokemon
starter_pokemon.each { |x| puts "#{x} is a Pokemon"}
p starter_pokemon.map! { |x| x + "!" }

p beginner_pokemon
p beginner_pokemon.each { |type, name| puts "#{name} is a #{type} Pokemon"}
beginner_pokemon.map { |type, name| puts "#{name} is a #{type} Pokemon"}



# RELEASE 2
num_array = [2, 64, 76, 1, 7, 889998, 5, 13, 34, 654355, 781, 11, 21]


#1
p num_array
p num_array.delete_if { |digit| digit > 30}

#2
p num_array
p num_array.reject { |digit| digit > 30}

#3
p num_array
p num_array.select { |digit| digit < 30}

#4
number_hash = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}

p number_hash
p number_hash.delete_if { |word, integer| integer.even? }