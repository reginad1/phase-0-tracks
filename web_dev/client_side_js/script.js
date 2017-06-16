console.log("The script is running!");

function addBorder(event) {
	event.target.style.border = "5px dotted #019962";
}

var els = document.getElementById('title')
els.addEventListener("click", addBorder); 

var lis = document.getElementsByTagName('strong')
var li1 = lis[0]
li1.style.color = "#019962";

var li2 = lis[1]
li2.style.color = "#019962";

var li3 = lis[2]
li3.style.color = "#019962";
