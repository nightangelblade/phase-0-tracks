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

var test1 = {test: 1, name: "Test", age: 54};
var test2 = {test: 1, name: "Testy", age: 54};

Object.keys(test1).forEach(function(key){
	if (test1[key] == test2[key]) {
		console.log(true);
	}
	else {
		console.log(false);
	}
});

