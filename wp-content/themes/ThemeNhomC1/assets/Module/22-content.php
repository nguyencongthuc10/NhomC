<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>


<div class="module-22 container-fluid">
    <div class="row">
        <div class="col-md-12 column">
            <div class="image-holder">
                <div class="inner">
                    <img src="./images/module-22-1.jpg" class="size-full" alt="a"> </div>
            </div>
        </div>
    </div>
</div>