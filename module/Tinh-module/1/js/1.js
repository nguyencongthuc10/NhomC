$(document).ready(function(){
    $(".dropdown a").hover(function() {
      $(this).find("dropdown-menu li a:first").slideDown(500);
    }, function() {
      $(this).find("dropdown-menu li a:first").hide(300);
    });


  });