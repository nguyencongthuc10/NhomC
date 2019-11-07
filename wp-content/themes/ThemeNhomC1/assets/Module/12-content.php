
<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-12">
  <!-- Container -->
  <div class="container"> 
    <!-- Nametitle -->
      <div class="name-title-banner">
        <a href="#" class="nille-name">#NILLETHEME</a>
      </div>
      <!-- name banner -->
      <div class="name-title-banner-p2">
          <h1>BEST OF OUR INSTAGRAM </h1>
          <p class="hieu-banner-ins">Our campaigns, the latest trends and new collections </p>
      </div>
      <!-- images thumnal -->
      <div class="thumnal">
        <ul class="instagram-nth">
          <li>
            <a href="#" >
              <span class="instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="<?php echo get_template_directory_uri() ?>/assets/images/12-sp1.jpg" alt="">
            </a>
          </li>
          <li>
            <a href="#" >
              <span class="instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="<?php echo get_template_directory_uri() ?>/assets/images/12-sp2.jpg" alt="">
            </a>
          </li>
          <li>
            <a href="#" >
              <span class="instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="<?php echo get_template_directory_uri() ?>/assets/images/12-sp3.jpg" alt="">
            </a>
          </li>
          <li>
            <a href="#" >
              <span class="instagram-icon"><i class="fa fa-instagram"></i></span>
              <img src="<?php echo get_template_directory_uri() ?>/assets/images/12-sp4.jpg" alt="">
            </a>
          </li>
        </ul>
      </div>
      <!--images thumnal   -->
  </div>
  <!-- container -->
</div>
