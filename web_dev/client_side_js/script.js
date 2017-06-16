console.log("The script is running!");

function addBorder(event) {
	event.target.style.border = "5px dotted darkblue";
}

var els = document.getElementById('title')
els.addEventListener("click", addBorder); 


