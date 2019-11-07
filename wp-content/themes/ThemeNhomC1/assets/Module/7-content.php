<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-7">
  <div class="container">
    <div class="row">
      <!-- Col-md-7 -->
      <div class="col-md-7 ">
        <!-- img 1 -->
        <div class="a7_1">
          <img src="<?php echo get_template_directory_uri() ?>/assets/images/7-1.jpg" alt="hinh1">
        </div>
        <!-- end img 1 -->
      </div>
      <!-- End col-md-7 -->
      <!-- Col-md-5 -->
      <div class="col-md-5">
        <!--img 2 -->
        <div class=" a7_2">
          <img src="<?php echo get_template_directory_uri() ?>/assets/images/7-2.jpg" alt="hinh2">
        </div> 
        <!--end img 2 -->
        <!--noi dung bên phải -->
        <div class="a7_3">
          <h2 class="a7_3_1">new</h2>
          <h2 class="a7_3_2">golden collection</h2>
          <div class="disco">
            <div class="btn-discover">
              <div class="discover">
                <a href="#">Discover</a>
              </div>
            </div>
          </div>
        </div>
        <!-- end noi dung bên phải -->
      </div>
      <!--End Col-md-5 -->
    </div>
  </div>
</div>
