<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-25">
    <!--CONTAINER-->
    <div class="container">
        <h2>Related products</h2>
        <div class="row">
            <div class="col-md-4 a3_1">
                <div class="disco">
                    <div class="btn-discover">
                        <a href="#" style="background-color: #000;color: #fff" class="abc">View Cart</a> 
                        
                        <a href="" style="margin-top: 20px;  ">Quick View</a> 
                    </div>
                </div>
                <div class="a3_1_2 ">
                 <a href=""><img src="images/main-shop-25.jpg" alt="" width="100%" height="100%"></a>
             </div>
         </div>
         <div class="col-md-4 a3_1">
            <div class="disco">
                <div class="btn-discover">
                    <a href="#" style="background-color: #000;color: #fff" class="abc">View Cart</a> 
                    <a href="" style="margin-top: 20px;  ">Quick View</a> 
                </div>
            </div>
            <div class="a3_1_2 ">
             <a href=""><img src="images/main-shop-sl2-7.jpg" alt="" width="100%" height="100%"></a>
         </div>
     </div>
     <div class="col-md-4 a3_1">
      <div class="disco">
        <div class="btn-discover">
            <a href="#" style="background-color: #000;color: #fff" class="abc">View Cart</a> 
            <a href="" style="margin-top: 20px;  ">Quick View</a> 
        </div>
    </div>
    <div class="a3_1_2 ">  
        <a href=""> <img src="images/main-shop-sl2-2.jpg" alt="" width="100%" height="100%"></a>
    </div>     
</div>
</div>
</div>
</div>