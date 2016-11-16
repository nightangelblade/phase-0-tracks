// var colors = ["blue", "red", "rasberry", "ombre"];
// var names = ["Spirit", "Maximus", "Lasty", "Amber"];


// console.log(colors);
// console.log(names);

// colors.push("almond brown");
// names.push("Captain");

// console.log(colors);
// console.log(names);

// function horses(name, color) {
// 	var horses = {};
// 	for (var index = 0; index < name.length; index++){
// 		horses[name[index]] = color[index];
// 	}
// 	return horses
// }

// console.log(horses(names, colors));

function Car(type, drive, isFamilySafe){
	console.log("Our new car:", this);
	this.type = type;
	this.drive = drive;
	this.isFamilySafe = isFamilySafe;
	this.drift = function() {
		if (this.isFamilySafe) {
			console.log("This car can't drift.");
		} else {
				console.log("This car can drift!");
		}
	}
	this.honk = function() {console.log("Honk!");};
	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");
var aCar = new Car("sedan", "FF", true);
console.log(aCar);
console.log("Our car can honk:");
aCar.honk();
aCar.drift();
console.log("----");

console.log("Let's build another car ...");
var anotherCar = new Car("sportscar", "FR", false);
console.log(anotherCar);
console.log("This car can also honk:");
anotherCar.honk();
anotherCar.drift();
console.log("----");

console.log("Let's build a weird car ...");
var weirdCar = new Car("experimental", "no drive", true);
console.log(weirdCar);
console.log("This car can also honk:");
weirdCar.honk();
weirdCar.drift();
console.log("----");