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
	var reverse_string = reverse_array.join("");
	return reverse_string;
}

console.log(reverse("Hello"));

var r_string = (reverse("Hello"));

console.log(r_string == "olleH");