<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-17">
    <!--CONTAINER-->
    <div class="container line">
        <!--ROW-->
        <div class="row">
            <div class="col-md-4">
                <img src="images/Hieu-img-aboutus1.png" alt="" style="float: left;" >
                <div class="name-ab-us"><h5>UNEVEN TEXTURE</h5>
                    <p class="name-story">Our Story face feels organic</p></div>
                    
                </div>
                <div class="col-md-4">
                    <img src="images/Hieu-img-aboutus2.png" alt="" style="float: left;">
                    <div class="name-ab-us"><h5>UNEVEN TEXTURE</h5>
                        <p class="name-story">Our Story face feels organic</p></div>
                    </div>
                    <div class="col-md-4">
                        <img src="images/Hieu-imgaboutus3.png" alt="" style="float: left; display: block;">
                        <div class="name-ab-us"><h5>UNEVEN TEXTURE</h5>
                            <p class="name-story">Our Story face feels organic</p></div>
                        </div>
                    </div>
                    <!--/ROW-->
                </div>
                <!--/CONTAINER-->
            </div>