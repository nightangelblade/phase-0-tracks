console.log("Script Activated!");

function changetable(event) {
	event.target.style.border = "1px solid blue";
	event.target.style.backgroundColor = "red";
}

var table = document.getElementById("table");
table.addEventListener("click", changetable);

var paragraph = document.getElementById("paragraph");
paragraph.style.fontFamily = "Helvetica";

var para = document.createElement("p");
var node = document.createTextNode("This is new.");
para.appendChild(node);

var element = document.getElementById("container");
element.appendChild(para);