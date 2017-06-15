$(document).ready(function(){
 
$('li:lt(4)').hide().fadeIn(1500);


$("#btn1").click(function (){

	var selectedVal = $('select').val();

	$('ul').append('<li>'+selectedVal+'</li>')
});


$('ul').on('click', 'li', function() {
	$(this).remove();
});



});
