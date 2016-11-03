apartment = {

	nico_room: {
		tech_info: {
			computers: 1,
			televisions: 0
			},
		description: ['tall', 'roomy', 'simple']
		},

	joeynicolette_room: {
		tech_info: {
			computers: 2,
			televisions: 1
			},
		description: ['medium', 'crowded', 'dangerous']
		},

	right_bathroom: {
		cleanliness: 'ok',
		main_users: ['Nico', 'Joey', 'Nicolette'],
		sub_users: ['Guests']
	},

	living_room: {
		tech_info: {
			computers: 0,
			televisions: 1
			},
		description: ['large', 'roomy', 'spacious']
	},

	kitchen: {
		cleanliness: 'needs cleaning',
		main_users: ['Nico', 'Joey', 'Nicolette', 'Joanne', 'Sean'],
		sub_users: ['Guests']
	},

	joannesean_room: {
			tech_info: {
			computers: 3,
			televisions: 1
			},
		description: ['medium', 'crowded', 'complicated']
	},

	left_bathroom: {
		cleanliness: 'ok',
		main_users: ['Joanne', 'Sean'],
		sub_users: ['Guests']
	}
}

p apartment[:living_room]
p apartment[:left_bathroom][:cleanliness]
p apartment[:joannesean_room][:description][1]
p apartment[:nico_room][:tech_info]
computers_total = "#{apartment[:nico_room][:tech_info][:computers] + apartment[:joeynicolette_room][:tech_info][:computers] + apartment[:joannesean_room][:tech_info][:computers]}"
p computers_total
