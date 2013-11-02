$(document).ready(function (){
	$("#free").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#freelanding").offset().top
	    }, 500);
	});

	$("#talented").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#talentedlanding").offset().top
	    }, 500);
	});

	$("#adaptive").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#adaptivelanding").offset().top
	    }, 500);
	});

});