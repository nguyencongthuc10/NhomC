<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-21">
	<div class="container title">
		<div class="title-store">
			<h1>Our stores</h1>
			<p class="qodef-st-text" style="margin-top: 25px">Check our lovely stores worldwide</p>
		</div>
	</div>
	<div class="container store">
		<div class="row">
			<div class="col-md-3 cl-store">
				<div class="store-img">
					<img src="images/Store-locator-img-1.jpg" alt="" class="img-responsive">
				</div>
				<div class="store-content">
					<h5>Barcelona</h5>
					<p><a href="#">1316 Abbot Kinney Blvd</a></p>
					<p><a href="#">+31123456789</a></p>
				</div>
			</div>
			<div class="col-md-3 cl-store">
				<div class="store-img">
					<img src="images/Store-locator-img-2.jpg" alt="" class="img-responsive">
				</div>
				<div class="store-content">
					<h5>Cape town</h5>
					<p><a href="#">31611 Biezen Straat</a></p>
					<p><a href="#">+31123456789</a></p>
				</div>
			</div>
			<div class="col-md-3 cl-store">
				<div class="store-img">
					<img src="images/Store-locator-img-3.jpg" alt="" class="img-responsive">
				</div>
				<div class="store-content">
					<h5>Amsterdam</h5>
					<p><a href="#">1316 Abbot Kinney Blvd</a></p>
					<p><a href="#">+31123456789</a></p>
				</div>
			</div>
			<div class="col-md-3 cl-store">
				<div class="store-img">
					<img src="images/Store-locator-img-4.jpg" alt="" class="img-responsive">
				</div>
				<div class="store-content">
					<h5>Copenhagen</h5>
					<p><a href="#">1316 Abbot Kinney Blvd</a></p>
					<p><a href="#">+31123456789</a></p>
				</div>
			</div>
		</div>
	</div>
</div>