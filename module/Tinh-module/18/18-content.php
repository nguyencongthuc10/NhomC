<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>type-18</title>
    </head>
    <body>
        <div class="type-18">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12 col-sm-6">
                        <a href="#">
                            <img src="../18/images/main-h-img-1.jpg" alt="imagesMain1" class="img-responsive">
                        </a>
                        <div class="item-wrap">
                            <h3>NEW IN</h3>
                            <p>Discover this week’s new arrivals</p>
                            <a href="#" class="cover main-cover" style="margin-top:21px;">Shop Now</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 col-sm-6">
                        <a href="#">
                            <img src="../18/images/main-h-img-2.jpg" alt="imagesMain2" class="img-responsive">
                        </a>
                        <div class="item-wrap">
                            <h3>SHOP TOPS</h3>
                            <p>Setting new trends this year</p>
                            <a href="#" class="cover main-cover" style="margin-top:21px;">Shop Now</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 col-sm-6">
                        <a href="#">
                            <img src="../18/images/main-h-img-3.jpg" alt="imagesMain3" class="img-responsive">
                        </a>
                        <div class="item-wrap">
                            <h3>SHOP JEWELLERY</h3>
                            <p>Discover this week’s new arrivals</p>
                            <a href="#" class="cover main-cover" style="margin-top:21px;">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>