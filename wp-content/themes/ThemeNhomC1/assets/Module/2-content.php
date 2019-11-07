<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-2">
    <div class="container-fluid">
        <div class="swiper-container" id="t2">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="parallax-bg" style="background-image:url('<?php bloginfo("template_directory")?>/assets/images/main-rev-i-1.jpg')">
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
                    <div class="item-after">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-5-1.png ?>" alt="popup" class="img-fix">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-6.png ?>" alt="popup" class="img-fix">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-7.png ?>" alt="popup" class="img-fix">
                    </div>
                    <div class="item-before">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-1.png ?>" alt="popup" class="img-fix1">
                        <div class="item-before-inner">
                            <h3>WHITE PEARL</h3>
                            <p>Chagall Earrings</p>
                            <span>$ 12,00</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="parallax-bg" style="background-image:url('<?php bloginfo("template_directory")?>/assets/images/main-rev-i-2.jpg')">
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
                    <div class="item-after">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-5-1.png ?>" alt="popup" class="img-fix">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-6.png ?>" alt="popup" class="img-fix">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-7.png ?>" alt="popup" class="img-fix">
                    </div>
                    <div class="item-before">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-8.png ?>" alt="popup" class="img-fix1">
                        <div class="item-before-inner">
                            <h3>GOLDEN LOCKET</h3>
                            <p>Sun Medallion</p>
                            <span>$ 12,00</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="parallax-bg" style="background-image:url('<?php bloginfo("template_directory")?>/assets/images/main-rev-i-3.jpg')">
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
                    <div class="item-after">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-5-1.png ?>" alt="popup" class="img-fix">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-6.png ?>" alt="popup" class="img-fix">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-7.png ?>" alt="popup" class="img-fix">
                    </div>
                    <div class="item-before">
                        <img src="<?php echo get_template_directory_uri() ?>/assets/images/main-rev-image-9.png ?>" alt="popup" class="img-fix1">
                        <div class="item-before-inner">
                            <h3>PLATED PENDANT</h3>
                            <p>Braque Brooch</p>
                            <span>$ 12,00</span>
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


