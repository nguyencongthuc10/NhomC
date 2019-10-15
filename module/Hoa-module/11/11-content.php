<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>


<div class="module-11">
    <div class="title container">
        <h1>FASHION STORIES</h1>
        <p>Our campaigns, the latest trends and new collections</p>
    </div>
    <div class="container img">
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
                <a class="img-trans" href=""><img src="./images/module_11_1" alt=""></a>
                <div class="img-content">
                    <div class="img-title">
                        <a href="#">Lifestyle</a>
                    </div>
                    <h5>
                        <a href="">Fascinate and Creative,<br>Remarkable Style</a>
                    </h5>
                    <div class="img-info">
                        <a href="">Angie McQueen</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
                <a class="img-trans" href=""><img src="./images/module_11_2" alt=""></a>
                <div class="img-content">
                    <div class="img-title">
                        <a href="#">Lifestyle</a>
                    </div>
                    <h5>
                        <a href="">Quiz: What’s Your Home,<br>Decor Style?</a>
                    </h5>
                    <div class="img-info">
                        <a href="">Angie McQueen</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
                <a class="img-trans" href=""><img src="./images/module_11_3" alt=""></a>
                <div class="img-content">
                    <div class="img-title">
                        <a href="#">Lifestyle</a>
                    </div>
                    <h5>
                        <a href="">Inventive Elements And,<br>Unlimited Possibilities</a>
                    </h5>
                    <div class="img-info">
                        <a href="">Angie McQueen</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-text container-fluid">
        <span class="magazine-text">M</span>
        <span class="magazine-text">A</span>
        <span class="magazine-text">G</span>
        <span class="magazine-text">A</span>
        <span class="magazine-text">Z</span>
        <span class="magazine-text">I</span>
        <span class="magazine-text">N</span>
        <span class="magazine-text">E</span>
    </div>
    <div class="disco container">
        <div class="btn-discover">
            <div class="discover">
                <a href="#">Discover all</a>
            </div>
        </div>
    </div>

</div>