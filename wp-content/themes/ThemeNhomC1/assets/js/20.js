$(document).ready(function() {
	$('.qodef-btn').hover(
		function(){ $(this).addClass('hovered') },
	)
	setInterval(function(){	
		$(".qodef-btn").removeClass('hovered');
	},1800);
});
