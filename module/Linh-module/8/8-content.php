<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-8">
	<div class="container">
		<div class="banner-img">
			<div class="text-outner">
				<div class="text-inner">
					<h6>We care</h6>
					<h1>RECYCLED COTTON</h1>
					<p>Earrings, necklaces, rings, bracelets from the latest collection</p>
				</div>
				<span class="qodef-banner-bg-text">
					<span class="qodef-char-mask">
						<span class="qodef-show">N</span>
					</span>
					<span class="qodef-char-mask">
						<span class="qodef-show">A</span>
					</span>
					<span class="qodef-char-mask">
						<span class="qodef-show">T</span>
					</span>
					<span class="qodef-char-mask">
						<span class="qodef-show">U</span>
					</span>
					<span class="qodef-char-mask">
						<span class="qodef-show">R</span>
					</span>
					<span class="qodef-char-mask">
						<span class="qodef-show">A</span>
					</span>
					<span class="qodef-char-mask">
						<span class="qodef-show">L</span>
					</span>
				</span>
			</div>
		</div>
	</div>
	<div class="banner-8">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<span>Free orders over $30 and free returns</span>
				</div>
			</div>
		</div>
	</div>
</div>