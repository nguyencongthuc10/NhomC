<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-3">
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
       <div class="colum">
       <div class="a3_1">
          <div class="a3_1_1">
            <a href="#" class="addtocart">add to cart</a>
            <a href="#" class="quickview"> quick view</a>
          </div>
          <div class="a3_1_2">
            <img src="img/2.jpg" alt="text">
            <span>New</span>
          </div>
        </div>
        <div class="a3_2">
          <div class="a3_2_1">
          <i id="a3_2_2" class="fa fa-heart"></i>
          <a href="#"><h5>Swimsuit Sofi</h5></a>
          </div>
          <a href="#">
            <p>Clothes</p>
          </a>
          <span>$180.00</span>
        </div>
      </div>
    </div>
    <div class="swiper-slide">
       <div class="colum">
        <div class="a3_1">
          <div class="a3_1_1">
            <a href="#" class="addtocart">add to cart</a>
            <a href="#" class="quickview"> quick view</a>
          </div>
          <div class="a3_1_2">
            <img src="img/3.jpg" alt="text">
            <span>New</span>
          </div>
        </div>
        <div class="a3_2">
          <div class="a3_2_1">
          <i id="a3_2_2" class="fa fa-heart"></i>
          <a href="#"><h5>Swimsuit Sofi</h5></a>
          </div>
          <a href="#">
            <p>Clothes</p>
          </a>
          <span>$180.00</span>
        </div>
      </div>
    </div>

    <div class="swiper-slide">
       <div class="colum">
        <div class="a3_1">
          <div class="a3_1_1">
            <a href="#" class="addtocart">add to cart</a>
            <a href="#" class="quickview"> quick view</a>
          </div>
          <div class="a3_1_2">
            <img src="img/4.jpg" alt="text">
            <span>New</span>
          </div>
        </div>
        <div class="a3_2">
          <div class="a3_2_1">
          <i class="glyphicon glyphicon-heart-empty"></i>
          <a href="#"><h5>Swimsuit Sofi</h5></a>
          </div>
          <a href="#">
            <p>Clothes</p>
          </a>
          <span>$180.00</span>
        </div>
      </div>
    </div>

    <div class="swiper-slide">
       <div class="colum">
        <div class="a3_1">
          <div class="a3_1_1">
            <a href="#" class="addtocart">add to cart</a>
            <a href="#" class="quickview"> quick view</a>
          </div>
          <div class="a3_1_2">
            <img src="img/6.jpg" alt="text">
            <span>New</span>
          </div>
        </div>
        <div class="a3_2">
          <div class="a3_2_1">
          <i class="glyphicon glyphicon-heart-empty"></i>
          <a href="#"><h5>Swimsuit Sofi</h5></a>
          </div>
          <a href="#">
            <p>Clothes</p>
          </a>
          <span>$180.00</span>
        </div>
      </div>
    </div>

    <div class="swiper-slide">
       <div class="colum">
        <div class="a3_1">
          <div class="a3_1_1">
            <a href="#" class="addtocart">add to cart</a>
            <a href="#" class="quickview"> quick view</a>
          </div>
          <div class="a3_1_2">
            <img src="img/5.jpg" alt="text">
            <span>New</span>
          </div>
        </div>
        <div class="a3_2">
          <div class="a3_2_1">
          <i class="glyphicon glyphicon-heart-empty"></i>
          <a href="#"><h5>Swimsuit Sofi</h5></a>
          </div>
          <a href="#">
            <p>Clothes</p>
          </a>
          <span>$180.00</span>
        </div>
      </div>
    </div>
    
    </div>
  </div>
</div>
