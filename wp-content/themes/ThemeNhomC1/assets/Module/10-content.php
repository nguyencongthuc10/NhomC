<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-10">
  <div class="container">
    <!-- phần đầu -->
    <div class="a10_1">
      <h1>LET’S GET CONNECTED</h1>
      <p>Our campaigns, the latest trends and new collections</p>
    </div>
    <!--end phần đầu -->
    <!-- phần sau -->
    <div class="row a10_2">
      <!--img-->
      <div class="col-md-4">
        <div class="over">
          <a href="#"><img src="<?php echo get_template_directory_uri() ?>/assets/images/10-1.jpg" alt="hinhanh1"></a>
        </div>
        <div class="a10_2_1">
            <h4>ABOUT US</h4>
            <p>Blandit massa enim nec duin</p>
        </div>
      </div>
      <!-- end img -->
      <!--img-->
      <div class="col-md-4">
        <div class="over">
          <a href="#"><img src="<?php echo get_template_directory_uri() ?>/assets/images/10-2.jpg" alt="hinhanh2"></a>
        </div>
        <div class="a10_2_1">
            <h4>ABOUT US</h4>
            <p>Blandit massa enim nec duin</p>
        </div>
      </div>
      <!-- end img -->
      <!--img-->
      <div class="col-md-4">
        <div class="over">
          <a href="#"><img src="<?php echo get_template_directory_uri() ?>/assets/images/10-3.jpg" alt="hinhanh3"></a>
        </div>
        <div class="a10_2_1">
            <h4>ABOUT US</h4>
            <p>Blandit massa enim nec duin</p>
        </div>
      </div>
      <!-- end img -->
    </div>
    <!-- end phần sau -->
  </div>
</div>
