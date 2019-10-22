$(document).ready(function(){
    $(function() {
      $(".traitim-footer a svg").click(function() {
        if ($(this).hasClass("traitimdoimau")) {
      		$(this).removeClass("traitimdoimau");
      	}
      	else{
      		$(this).addClass("traitimdoimau"); 
      	}
      });   
    });
});