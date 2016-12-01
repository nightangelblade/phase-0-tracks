Variables can be set up similar to hashes, and have inherent attribute reader properties.

Ex. var sean = {
	name: "Sean Wright",
	age: 26
};

Almost seems like an inbetween between JavaScript and Ruby. built-in functions seem closer to Ruby than JavaScript, but function building is the same as JavaScript.

Remember the $(document).ready() syntax in order to have a document ready to be manipulated.

Ex. ( document ).ready(function(){
	console.log( 'ready!' );
})

Appears similar to how you declare a class in Ruby and define the initialize method.

Select elements with the $( 'element' ) syntax

Ex. $( 'li' ) selects all list items
$( '#header' ) selects element with id of "header"

Appears similar to how you select elements in CSS.

Using .attr built-in method allows you to manipulate the appearance of elements similar to CSS.