$(document).ready(function(){
  var swiper = new Swiper('.swiper-container', {
    spaceBetween: 30,
    centeredSlides: true,
    loop:true,
    autoplayHoverPause: true,
    autoplay: {
      delay: 2500,
      disableOnInteraction: false,
    },
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    }, 
  });
    $(".swiper-container").hover(function() {
      (this).swiper.autoplay.stop();
  }, function() {
      (this).swiper.autoplay.start();
  }); 
});