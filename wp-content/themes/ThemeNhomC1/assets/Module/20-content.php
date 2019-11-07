<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-20">
	<div class="container title">
		<div class="title-contacts">
			<h1>Contact us</h1>
			<p class="qodef-st-text" style="margin-top: 25px">If you need to message us, please fill out the form bellow </p>
		</div>
	</div>
	<div class="container contact">
		<div class="row ct-contact">
			<div class="col-md-4">
				<h4>Main Office</h4>
				<p><a href="tel:+123467897">+ 1123456789</a></p>
				<p style="margin-top: 2px;"><a href="https://www.google.com/maps/place/Amsterdam,+Netherlands/@52.3677313,4.8939612,16z/data=!4m5!3m4!1s0x47c63fb5949a7755:0x6600fd4cb7c0af8d!8m2!3d52.3679843!4d4.9035614?hl=en" target="_blank" rel="noopener noreferrer">1316 Biezen Straat</a></p>
				<p style="margin-top: 2px;"><a href="https://www.google.com/maps/place/Amsterdam,+Netherlands/@52.3677313,4.8939612,16z/data=!4m5!3m4!1s0x47c63fb5949a7755:0x6600fd4cb7c0af8d!8m2!3d52.3679843!4d4.9035614?hl=en" target="_blank" rel="noopener noreferrer">Amsterdam CA 90291</a></p>
				<p style="margin-top: 2px;"><a href="mailto:name@email.com">nille@select.com</a></p>

				<span class="qodef-icon-shortcode qodef-normal   " data-color="#b3b3b3">
					<a itemprop="url" class="" href="https://www.facebook.com/QodeInteractive/" target="_blank">
						<i class="fab fa-facebook-f" style="color: #b3b3b3;font-size:16px;"></i> 
					</a>
				</span>
				<span class="qodef-icon-shortcode qodef-normal   " style="margin: 0 20px" data-color="#b3b3b3">
					<a itemprop="url" class="" href="https://www.instagram.com/qodeinteractive/" target="_blank">
						<i class="fab fa-instagram" style="color: #b3b3b3;font-size:16px"></i> 
					</a>
				</span>
				<span class="qodef-icon-shortcode qodef-normal   " data-color="#b3b3b3">
					<a itemprop="url" class="" href="https://twitter.com/QodeInteractive" target="_blank">
						<i class="fab fa-twitter" style="color: #b3b3b3;font-size:16px"></i>
					</a>
				</span>
				<span class="qodef-icon-shortcode qodef-normal   " style="margin: 0 0 0 20px" data-color="#b3b3b3">
					<a itemprop="url" class="" href="https://www.pinterest.com/qodeinteractive/" target="_blank">
						<i class="fab fa-pinterest-p" style="color: #b3b3b3;font-size:16px"></i> 
					</a>
				</span>
			</div>
			<div class="col-md-8">
				<form action="/contact-us/#wpcf7-f5-p558-o2" method="post" class="wpcf7-form cf7_custom_style_2 invalid" novalidate="novalidate">
					<div style="display: none;">
						<input type="hidden" name="_wpcf7" value="5">
						<input type="hidden" name="_wpcf7_version" value="5.1.4">
						<input type="hidden" name="_wpcf7_locale" value="en_US">
						<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f5-p558-o2">
						<input type="hidden" name="_wpcf7_container_post" value="558">
					</div>
					<div class="custom-contact">
						<span class="wpcf7-form-control-wrap your-name wpcf7-text">
							<input type="text" name="your-name" value="" size="40" class="wpcf7-form-control  wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="NAME">
						</span>
						<span class="wpcf7-form-control-wrap your-email wpcf7-text">
							<input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email wpcf7-not-valid" aria-required="true" aria-invalid="true" placeholder="EMAIL">
						</span>
						<span class="wpcf7-form-control-wrap your-message">
							<textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="MESSAGE"></textarea>
						</span>
						<button type="submit" class="wpcf7-form-control wpcf7-submit qodef-btn-outline qodef-btn qodef-btn-medium">
							<span class="qodef-btn-text">Send</span>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>