<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="module-16 container">
    <div class="row page-16">
        <div class="col-md-6">
            <div class="page-left">
                <h4>Lovely Story</h4>
                <p id="page-left-1">Ut enim ad minim veniam, quis nostrud exercitation ullamco.<br>
                    Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusm temp<br>
                    incid idunt ut labe et dolore magna aliqua. Nisip ex ea commodo consat.<br>
                    Duis aute irure dolor in reprehenderit n volup tate velit e cillum dolore euy<br>
                    elit ale rui.</p>
                <p id="page-left-2">Ut enim ad minim veniam, quis nostrud exercitation ullamco.<br>
                    Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusm temp<br>
                    incid idunt ut labe et dolore magna aliqua. Nisip ex ea commodo consat.</p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="page-right">
                <img src="./images/module-16-1" alt="">
            </div>
        </div>
    </div>
</div>
