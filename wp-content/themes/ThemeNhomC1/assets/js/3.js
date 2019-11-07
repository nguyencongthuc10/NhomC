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
	
	var t = new Swiper('#t', {
     slidesPerView: 4,
     spaceBetween: 30,
     slidesPerGroup: 1,
     centeredSlides: true,
     grabCursor: true,
     loop:true,
     raction: false,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
   
     breakpoints:{
      1200:{
        slidesPerView: 4,
        spaceBetween: 30,
      },
      1024:{
        slidesPerView: 4,
        spaceBetween: 30,
      },
      990:{
        slidesPerView: 4,
        spaceBetween: 30,
      },
    
      768:{
        slidesPerView:2,
        spaceBetween: 30,
      },
      411:{
        slidesPerView: 1,
        spaceBetween: 30,
      },
      375:{
        slidesPerView: 1,
        spaceBetween: 30,
      },
      360:{
        slidesPerView: 1,
        spaceBetween: 30,
      },
      320:{
        slidesPerView: 1,
        spaceBetween: 30,
      },
      220:{
        slidesPerView: 1,
        spaceBetween: 30,
      },
    }
  });

   $(".swiper-container").hover(function() {
        (this).swiper.autoplay.stop();
    }, function() {
        (this).swiper.autoplay.start();
    });
});