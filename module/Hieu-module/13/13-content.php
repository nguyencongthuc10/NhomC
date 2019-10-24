<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-13">
    <div class="container">
        <div class="row header-aboutus-13">
            <div class="col-md-6 module-13-item">
                <div class="tittle-13">
                    <h5 class="sub-13-aboutt">SUBSCRIBE TO NEWSLETTER</h5>
                    <p class="abouus-13-oder" >Subscribe and get 10% off new collection</p>
                </div>
                
                <div role="form" class="abouts-md-13">
                    <form>
                        <div class="custom-email">
                            <span class="wpcf7-form-control">
                                <input type="email" name="your-email" value="" size="40" class="input-13 wpcf7-text wpcf7-email" placeholder="Enter-mail">
                            </span>
                            <button type="submit" class="abouts-btn ">
                            <span class="qodef-btn-text">SEND</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <img src="images/aboutus-13.png" alt="" class="img-ab-13" >
                <div class="tittle-13">
                    <h5 class="odr-13">ORDER YOUR GIFT CARD</h5>
                    <p class="abouus-13-oder">Order your gift card today and get 8% off</p>
                </div>
            </div>
        </div>
    </div>
</div>