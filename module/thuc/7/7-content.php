<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-7">
  <div class="row">
    <div class="col-md-7 ">
    <div class="a7_1">
      <img src="img/7-1.jpg" alt="hinh1">
    </div>  
    </div>
    <div class="col-md-5">
      <div class=" a7_2">
        <img src="img/7-2.jpg" alt="hinh2">
      </div>
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
    </div>
  </div>  
</div>  
