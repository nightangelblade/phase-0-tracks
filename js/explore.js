// Take string as parameter
// - Split string into an array
// Method:
// - Reverse array
// - Rejoin array back into string
// Return the joined string
// Confirm string was returned corretly using boolean
// - Compare expected result to actual result.

function reverse(string) {
	var split_string = string.split("");
	var reverse_array = split_string.reverse();
	return reverse_array;
}

console.log(reverse("Hello"));