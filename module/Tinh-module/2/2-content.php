<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-2">
    <div class="container">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
				<div class="parallax-bg" style="background-image:url(./images/main-rev-i-1.jpg)">
			</div>
				<div class="item-inner">
                    <div class="title" data-swiper-parallax="-300">NEW JEWELRY</div>
                    
                    <div class="text" data-swiper-parallax="-100">
                        <p>A breath of fresh air arrives to your jewelry box – browse our new collection, brought to you by Nillé</p>
					</div>
					<div class="disco">
        				<div class="btn-discover">
            				<div class="discover">
                				<a href="#">Discover</a>
            				</div>
        				</div>
    				</div>
					</div>
                </div>
                <div class="swiper-slide">
				<div class="parallax-bg" style="background-image:url(./images/main-rev-i-2.jpg)">
			</div>
			<div class="item-inner">
                    <div class="title" data-swiper-parallax="-300" data-swiper-parallax-opacity="0">ALL DREAMLIKE</div>
                    
                    <div class="text" data-swiper-parallax="-100">
                        <p>A breath of fresh air arrives to your jewelry box – browse our new collection, brought to you by Nillé</p>
					</div>
					<div class="disco">
        				<div class="btn-discover">
            				<div class="discover">
                				<a href="#">Discover</a>
            				</div>
        				</div>
    				</div>
			</div>
                </div>
                <div class="swiper-slide">
				<div class="parallax-bg" style="background-image:url(./images/main-rev-i-3.jpg)">
			</div>
			<div class="item-inner">
                    <div class="title" data-swiper-parallax="-300">FRESH VISION</div>
                    
                    <div class="text" data-swiper-parallax="-100">
                        <p>A breath of fresh air arrives to your jewelry box – browse our new collection, brought to you by Nillé</p>
					</div>
					<div class="disco">
        				<div class="btn-discover">
            				<div class="discover">
                				<a href="#" class="dv">Discover</a>
            				</div>
        				</div>
    				</div>
			</div>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Navigation -->
            <div class="swiper-button-prev swiper-button-white"></div>
            <div class="swiper-button-next swiper-button-white"></div>
        </div>
    </div>
</div>