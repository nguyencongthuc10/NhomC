<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-19">
  <div class="container">
    <!--SWIPER -->
    <div class="swiper-container">
      <div class="parallax-bg" style="background:#c5af93;" data-swiper-parallax="-23%"></div>
      <div class=a19_1>
       <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="200px" height="130px" viewBox="0 0 200 130" style="enable-background:new 0 0 200 130;" xml:space="preserve"><style type="text/css">.st0{fill:none;stroke:#BD8158;stroke-miterlimit:10;}</style><g><g><path class="st0" d="M74.4,18.6c5.7,9,8.5,19.9,8.5,32.9c0,16.6-4.2,31.6-12.7,44.8c-8.5,13.3-21.3,23.9-38.6,31.9l-4.5-9
        c10.3-4.3,19.2-11.1,26.7-20.4C61.2,89.5,65,80.1,65,70.4c0-4-0.5-7.5-1.5-10.5C58.1,64.3,52,66.4,45,66.4c-9,0-16.5-2.9-22.7-8.7
        c-6.1-5.8-9.2-13.5-9.2-23.2c0-9,3.1-16.5,9.2-22.7C28.5,5.7,36.1,2.7,45,2.7C58,2.7,67.8,8,74.4,18.6z M179.1,18.6
        c5.7,9,8.5,19.9,8.5,32.9c0,16.6-4.2,31.6-12.7,44.8c-8.5,13.3-21.3,23.9-38.6,31.9l-4.5-9c10.3-4.3,19.2-11.1,26.7-20.4
        s11.2-18.8,11.2-28.4c0-4-0.5-7.5-1.5-10.5c-5.3,4.3-11.5,6.5-18.4,6.5c-9,0-16.5-2.9-22.7-8.7c-6.1-5.8-9.2-13.5-9.2-23.2
        c0-9,3.1-16.5,9.2-22.7c6.2-6.2,13.7-9.2,22.7-9.2C162.7,2.7,172.5,8,179.1,18.6z"></path></g></g></svg>
      </div>
      <div class="swiper-wrapper ">
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300"><h4>Consectetur adipiscing elit sed do orem ipsum dolor pout sitame.</h4></div>
          <div class="subtitle" data-swiper-parallax="-200"><span>Ulan Vang Designer</span></div>
        </div>
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300"><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit sedtdo sectet.</h4></div>
          <div class="subtitle" data-swiper-parallax="-200"><span>Mary Altman Blogger</span></div>

        </div>
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300"><h4>Love the regenerating cleanser! My face feels so soft after using.</h4></div>
          <div class="subtitle" data-swiper-parallax="-200"><span>Lina Sandoval Beauty Magazine</span></div>  
        </div>
      </div>
      <div class="a19_2 swiper-pagination"><span></span></div>
    </div>
    <!--END SWIPER -->
  </div>
  </div>

