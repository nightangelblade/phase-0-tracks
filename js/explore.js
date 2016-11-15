// PSEUDOCODE
// Take string as parameter -
// - Split string into an array -
// Method:
// - Reverse array -
// - Rejoin array back into string -
// Return the joined string -
// Confirm string was returned corretly using boolean -
// - Compare expected result to actual result. -

// BUSINESS CODE
function reverse(string) {
	var split_string = string.split("");
	var reverse_array = split_string.reverse();
	var reverse_string = reverse_array.join("");
	return reverse_string;
}

// DRIVER CODE
console.log(reverse("Hello"));

var r_string = (reverse("Hello"));
var expected_string = "olleH";
var expected_string_fail = "olleh";

console.log(r_string == "olleH");

// Test to confirm expected result, expected to pass
if (r_string == expected_string) {
	console.log("Actual and expected result match!");
} else {
	console.log("Something didn't match! Check the code!");
}

// Test to confirm unexpected result, expected to fail
if (r_string == expected_string_fail) {
	console.log("Actual and expected result match!");
} else {
	console.log("Something didn't match! Check the code!");
}