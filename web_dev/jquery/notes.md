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
------
Implementation Strategies

Note: Remember to check for typos. I misspelled script and got confused why my jQuery file wasn't loading.

Neat Things: You can actually implement multiple "animation" built-in methods to a single object Ex. hide().show().toggle.... plus you can even determine how fast or slow you want the animation to take.

Definitely make sure you get the overall structure of your script set up first before you begin building the various scripts. Having IDs set up and determining what tags will have what changes will make sure if something acts off you know where to trouble shoot. Pseudocoding and the like I can see also being really useful to not get lost while playing with jQuery.