<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>

<div class="module-4">
    <div class="table-popup">
        <div class="table-inner">
            <a href="#" class="table-close"></a>
            <div class="table-background"></div>
            <div class="table-content">
                
            </div>
        </div>
    </div>
</div>
