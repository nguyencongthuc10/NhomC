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
    <div class="a10_1">
      <h1>LET’S GET CONNECTED</h1>
      <p>Our campaigns, the latest trends and new collections</p>
    </div>
    <div class="row a10_2">
      <div class="col-md-4">
        <a href="#"><img src="img/1.jpg"></a>
        <div class="a10_2_1">
            <h4>ABOUT US</h4>
            <p>Blandit massa enim nec duin</p>
        </div>
      </div>
      <div class="col-md-4">
        <a href="#"><img src="img/2.jpg"></a>
        <div class="a10_2_1">
            <h4>ABOUT US</h4>
            <p>Blandit massa enim nec duin</p>
        </div>
      </div>
      <div class="col-md-4">
        <a href="#"><img src="img/3.jpg"></a>
        <div class="a10_2_1">
            <h4>ABOUT US</h4>
            <p>Blandit massa enim nec duin</p>
        </div>
      </div>
    </div>
  </div>
</div>
