$(document).ready(function (){
	$("#free").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#freelanding").offset().top
	    }, 600);
	});

	$("#talented").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#talentedlanding").offset().top
	    }, 600);
	});

	$("#adaptive").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#adaptivelanding").offset().top
	    }, 600);
	});

});