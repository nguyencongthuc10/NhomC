<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-6">
    <div  class="container">
      <div class="a6_1">
        <h2>on sale now</h2>
      </div>
      <div class="row a6_2">
        <div class="col-md-3 a6_2_1">
          <div class="over">
            <a href="#"><img src="images/6-1.jpg" alt="hinh1"></a>
          </div>
          <div class="a6_2_1_1">
            <h2>Clothes</h2>
          </div>
        </div>
        <div class="col-md-3 a6_2_1">
          <div class="over">
            <a href="#"><img src="images/6-2.jpg" alt="hinh2"></a>
          </div>
          <div class="a6_2_1_1">
            <h2>Design </h2>
          </div>
        </div>
        <div class="col-md-3 a6_2_1">
          <div class="over">
            <a href="#"><img src="images/6-3.jpg" alt="hinh3"></a>
          </div>
          <div class="a6_2_1_1">
            <h2>Accessories</h2>
          </div>
        </div>
        <div class="col-md-3 a6_2_1">
          <div class="over">
            <a href="#"><img src="images/6-4.jpg" alt="hinh4"></a>
          </div>
          <div class="a6_2_1_1">
            <h2>Art & Decor </h2>
          </div>
        </div>
      </div>
    </div>
</div>