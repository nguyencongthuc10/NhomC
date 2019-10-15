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
                <div class="col-md-6 qodef-eh-item">
                    <div class="tittle-13">
                        <h5 class="sub-13-aboutt">SUBSCRIBE TO NEWSLETTER</h5>
                    <p class="abouus-13-oder" style="font-size: 16px;">Subscribe and get 10% off new collection</p>
                    </div>
                    
                    <div role="form" class="wpcf7"  style="padding:0 20px">
                        <form action="" method="" class="wpcf7-form" novalidate="novalidate">
                            <div class="custom-email" style="padding-top: 20px;">
                                <span class="wpcf7-form-control">
                                    <input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email" placeholder="Enter-mail">
                                </span>
                                <button type="submit" class="qodef-btn ">
                                    <span class="qodef-btn-text">SEND</span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                 <div class="col-md-6">
                     <img src="images/aboutus-13.png" alt="" class="img-ab-13" >
                       <div class="tittle-13">
                        <h5 style="font-weight: 600;">ORDER YOUR GIFT CARD</h5>
                        <p class="abouus-13-oder" style="font-size: 16px;">Order your gift card today and get 8% off</p>
                    </div>
                 </div> 
        </div> 


</div>
</div>
