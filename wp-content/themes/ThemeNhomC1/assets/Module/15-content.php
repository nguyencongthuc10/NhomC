<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-15">
	<div class="container-banner">
		<div class="banner-img-about-us">
			<div class="grid">
				<h1 class="qodef-page-title entry-title" style="color: #ffffff">About Us</h1>
				<p class="qodef-page-subtitle" style="color: #ffffff">If you need to message us, please fill out the form bellow</p>
			</div>
		</div>
	</div>
</div>