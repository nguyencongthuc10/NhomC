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
            <!-- col-md-4-->
            <div class="col-md-4">
                <!-- images -->
                <img src="images/Hieu-img-aboutus1.png" alt=""  class="img-17" >
                <div class="name-ab-us"><h5>UNEVEN TEXTURE</h5>
                    <p class="name-story">Our Story face feels organic</p></div>
                    
                </div>
                <!-- col-md-4 -->
                <div class="col-md-4">
                    <!-- images -->
                    <img src="images/Hieu-img-aboutus2.png" alt="" class="img-17">
                    <div class="name-ab-us"><h5>UNEVEN TEXTURE</h5>
                        <p class="name-story">Our Story face feels organic</p></div>
                    </div>
                    <!-- col-md-4 -->
                    <div class="col-md-4">
                        <!-- images -->
                        <img src="images/Hieu-imgaboutus3.png" alt="" class="img-17-m3">
                        <div class="name-ab-us"><h5>UNEVEN TEXTURE</h5>
                            <p class="name-story">Our Story face feels organic</p></div>
                        </div>
                    </div>
                    <!--/ROW-->
                </div>
                <!--/CONTAINER-->
            </div>