<?php

$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);

if (!class_exists('lessc')) {
  $dir_block = dirname($_SERVER['SCRIPT_FILENAME']);      
  require_once($dir_block.'/libs/lessc.inc.php');
}

$less = new lessc;
$less->compileFile('less/3.less', 'css/3.css');

?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <title>module 3</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="css/bootstrap.min.css" rel="stylesheet"  />
  <link href="css/font-awesome.min.css" rel="stylesheet"/>
  <link href="css/3.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/swiper.css">
  <script src="js/jquery.min.js" ></script>
  <script src="js/swiper.js"></script>
  <script src="js/bootstrap-rating.js"></script>
  <script src="js/3.js"></script>
  <?php
  if (!class_exists('lessc')) {
    include ('./libs/lessc.inc.php');
  }
  $less = new lessc;
  $less->compileFile('less/3.less', 'css/3.css');
  ?>
</head>
<body>
 <?php  $dir_block.include'3-content.php'; ?>
 <!-- javascrip swiper -->
 <script>
   var swiper = new Swiper('.swiper-container', {
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
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
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
        slidesPerView: 3,
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
</script>
</body>
</html>