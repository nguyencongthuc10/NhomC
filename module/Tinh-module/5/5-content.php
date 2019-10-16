<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
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
        <title>Document</title>
    </head>
    <body>
        <div class="type-5">
            <div class="container">
                <div class="row">
                <div class="item-top">
                    <div class="col-md-6 col-xs-12 item-fix" style="text-align:justify; font-weight: 300; line-height: 2.5rem">
                        <h3>PERFUMES DI SUN</h3>
                        <p class="des">Ut enim ad minim veniam, quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusm temp incid idunt ut labe et dolore magna aliqua. Nisip ex ea commodo consat. Duis aute irure dolor in reprehenderit n volup tate velit e cillum dolore euy elit ale rui.</p>
                    </div>
                
                    <div class="col-md-6 col-xs-12">
                        <img src="../5/images/aboutus-img-2.jpg" alt="hinh2" class="img-responsive">
                    </div>
                </div>
                </div>
                <div class="row">
                <div class="item-center">
                    <div class="col-md-6 col-xs-12">
                        <img src="../5/images/aboutus-img-3.jpg" alt="hinh3" class="img-responsive"> 
                        
                    </div>
                    <div class="col-md-6 col-xs-12 item-fix" style="text-align:justify; font-weight: 300; line-height: 2.5rem">
                    <h3>PERFUMES DI SUN</h3>
                        <p class="des">Ut enim ad minim veniam, quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusm temp incid idunt ut labe et dolore magna aliqua. Nisip ex ea commodo consat. Duis aute irure dolor in reprehenderit n volup tate velit e cillum dolore euy elit ale rui.</p>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </body>
</html>