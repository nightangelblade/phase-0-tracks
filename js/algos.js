// Release 0
//- Take array of words and/or phrases
//- Determine the length of each individual word/phrases
//	- Store lengths in array
//	- Determine largest number in the array
//	- Find phrase with matching length
//- Returns the longest word/phrase

//var test = ["test", "longest phrase ever", "long phrase"]

// function longest_phrase(array){
// 	var length = [];

// 	for (var index = 0; index < array.length; index++){
// 			length.push(array[index].length);
// 	}

// 	for (var index = 0; index < array.length; index++){
// 		if (array[index].length == Math.max.apply(Math, length)){
// 			console.log(array[index]);
// 		}
// 		else;
// 	}
// }

// longest_phrase(["test", "longest phrase ever", "long phrase"])
// longest_phrase(["so long it is incomprehensibly long", "kinda long", "super long"])
// longest_phrase(["longitylonglong", "long", "looooooooooooooooooooooooooooooong"])

// Release 1
// - Take two objects
// - Iterate through objects
// 	- If there is at least one match of key and value, return true
// 	- If there is no match of key and value, return false

// var test = {favorite_number: 1, name: "Test", age: 53};
// var test_true = {favorite_number: 1, name: "Testy", age: 54};
// var test_false = {favorite_number: 2, name: "Tesst", age: 20};

// function comparison_test(test1, test2) {
// 	var true_test = 0
// 	var false_test = 0
// Object.keys(test1).forEach(function(key){
// 	if (test1[key] == test2[key]) {
// 		true_test += 1;
// 	}
// 	else {
// 		false_test += 1;
// 	}
// 	});
// if (true_test > 0) {
// 	return true;
// }
// else {
// 	return false;
// }
// };

// console.log("This is the baseline.");
// console.log(test);

// console.log("This should return true.");
// console.log(test_true);
// console.log(comparison_test(test, test_true));

// console.log("This should return false.");
// console.log(test_false);
// console.log(comparison_test(test, test_false));

// Release 2
// - Takes integer
// - Builds array of length of integer (add to blank array so many times)
// - Fills array with random words
// - Words need to be of random lengths between 1-10 letters.

function array_generator(amount) {
	array = [];
	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"];
	
	

};
