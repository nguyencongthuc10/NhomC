
<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>


<div class="type-12">
  <div class="container"> 
      <div class="name-title-banner">
        <a href="" style="color: #bf5c30">#NILLETHEME</a>
      </div>
      <div class="name-title-banner-p2">
          <h1>BEST OF OUR INSTAGRAM </h1>
          <p class="hieu-banner-ins">Our campaigns, the latest trends and new collections </p>
      </div>
      <!-- ins -->
      <div class="ins-thumnal">
        <ul class="qodef-instagram-feed">
          <li>
            <a href="#" >
              <span class="qodef-instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="images/sp1.jpg" alt="">
            </a>
          </li>
          <li>
            <a href="#" >
              <span class="qodef-instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="images/sp2.jpg" alt="">
            </a>
          </li>
          <li>
            <a href="#" >
              <span class="qodef-instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="images/sp3.jpg" alt="">
            </a>
          </li>
          <li>
            <a href="#" >
              <span class="qodef-instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="images/sp4.jpg" alt="">
            </a>
          </li>
        </ul>
      </div>
  </div>
</div>
