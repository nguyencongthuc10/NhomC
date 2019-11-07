$(document).ready(function(){
    $(function() {
      $(".traitim-25-hieunguyen a svg").click(function() {
        if ($(this).hasClass("traitimdoimau")) {
      		$(this).removeClass("traitimdoimau");
      	}
      	else{
      		$(this).addClass("traitimdoimau"); 
      	}
      });   
    });
});