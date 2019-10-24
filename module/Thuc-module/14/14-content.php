<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-14">
  <div class="container">
    <div class="row a14_1">
      <div class="col-md-3">
        <h5>CONTACT</h5>
        <p>
          <a href="#">+ 1123456789</a>
        </p>
        <p>
          <a href="#">1316 Biezen Straat</a>
        </p>
        <p>
          <a href="#">Amsterdam CA 90291</a>
        </p>
        <div class="a14_2">
          <a href="#">
            <span class="fa fa-facebook"></span>
          </a>
          <a href="#"><span class="fa fa-twitter"></span>
        </a>
        <a href="#">
          <span class="fa fa-instagram"></span>
        </a>
        <a href="#">
          <span class="fa fa-pinterest"></span>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <h5>ABOUT US</h5>
      <p>
        <a href="#">Our Story</a>
      </p>
      <p>
        <a href="#">Job Opportunities</a>
      </p>
      <p>
        <a href="#">Store Locator</a>
      </p>
      <p>
        <a href="#">Contact us</a>
      </p>
    </div>
    <div class="col-md-3">
      <h5>HELP</h5>
      <p>
        <a href="#">FAQ’s</a>
      </p>
      <p>
        <a href="#">Pricing Plans</a>
      </p>
      <p>
        <a href="#">Order Track</a>
      </p>
      <p>
        <a href="#">Your Order</a>
      </p>
      <p>
        <a href="#">Returns</a>
      </p>
    </div>
    <div class="col-md-3">
      <h5>CUSTOMER SERVICE</h5>
      <p>
        <a href="#">My Account</a>
      </p>
      <p>
        <a href="#">Terms of Use</a>
      </p>
      <p>
        <a href="#">Deliveries & Returns</a>
      </p>
      <p>
        <a href="#">Gift Card</a>
      </p>
    </div>
  </div>
</div>
<div class="a14_3">
  <div class="container">
    <div class="a14_4 row">
      <div class="col-md-6">
        <h6>COPYRIGHT &copy;
        <a href="#">ODE INTERACTIVE</a>
        </h6>
      </div>
      <div class="col-md-6">
        <img src="images/14-1.png" alt="hinhanh">
      </div>
    </div>
  </div>
</div>
</div>