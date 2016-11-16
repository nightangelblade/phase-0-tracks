var colors = ["blue", "red", "rasberry", "ombre"];
var names = ["Spirit", "Maximus", "Lasty", "Amber"];


// console.log(colors);
// console.log(names);

colors.push("almond brown");
names.push("Captain");

// console.log(colors);
// console.log(names);

function horses(name, color) {
	var horses = {};
	for (var index = 0; index < name.length; index++){
		horses[name[index]] = color[index];
	}
	return horses
}

console.log(horses(names, colors));