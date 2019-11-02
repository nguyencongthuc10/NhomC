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
        <h2 class="name-pr-25">Related products</h2>
        <!-- row -->
        <div class="row">
            <!-- col-md-4 -->
            <div class="col-md-4 a3_1">
                <!-- button -->
                <div class="disco">
                    <div class="btn-discover">
                        <a href="#" class="view-card">View Cart</a> 
                        <a href="#" class="qw">Quick View</a> 
                    </div>
                </div>
                <!-- images -->
                <div class="a3_1_2 ">
                    <a href="">
                        <img src="images/main-shop-25.jpg" alt="hhh" width="100%" height="100%" >
                    </a>
                   <span class="New-proruct-25">New</span>
               </div>
               <!-- name product -->
               <div class="product-product-25">
                <h5 class="name-25-product-hieu"><a href="">Silk Shirt</a></h5>
                  <div class="hkg-hieu-25">
                    <!--svg icon -->
                    <div class="traitim-25-hieunguyen">
                        <a href="#">
                             <svg>   
                                <path  class="traitim-251" d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                                c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z">
                                </path>
                            </svg>
                        </a>
                    </div>
                    </div>
                <span class="product-25-category"><a href="#">Clothes</a></span>
                <p class="product-25-price">$220.000</p>
                </div>
            </div>
            <!-- col-md-4 -->
            <div class="col-md-4 a3_1">
                 <!-- button -->
                <div class="disco">
                    <div class="btn-discover">
                        <a href="#"  class="view-card">View Cart</a> 
                        <a href=""class="qw">Quick View</a> 
                    </div>
                </div>
                 <!-- images -->
                <div class="a3_1_2 ">
                   <a href=""><img src="images/main-shop-sl2-7.jpg" alt="" width="100%" height="100%"></a>
               </div>
                
               <!-- name product -->
               <div class="product-product-25">
                    <h5 class="name-25-product-hieu">
                        <a href="">Silk Shirt</a></h5>
                      <div class="hkg-hieu-25 ">
                         <!--svg icon -->
                        <div class="traitim-25-hieunguyen ">
                            <a href="#" >
                                <svg>   
                                    <path  class="traitim-251"  d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                                    c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z" >
                                    </path>
                                </svg>
                            </a>   
                        </div>
                        </div>
                    <span class="product-25-category"><a href="#">Clothes</a></span>
                    <p class="product-25-price">$180.00</p>
                </div> 
           </div>
           <!-- col-md-4 -->
           <div class="col-md-4 a3_1">
            <!-- button -->
              <div class="disco">
                <div class="btn-discover">
                    <a href="#"  class="view-card">View Cart</a> 
                    <a href=""class="qw">Quick View</a> 
                </div>
            </div>
            <!-- images -->
            <div class="a3_1_2 ">  
                <a href=""> <img src="images/main-shop-sl2-2.jpg" alt="" width="100%" height="100%"></a>
            </div>    
            <!-- name product -->
            <div class="product-product-25">
                <h5 class="name-25-product-hieu"><a href="">Silk Shirt</a></h5>
                  <div class="hkg-hieu-25 ">
                    <!--svg icon -->
                    <div class="traitim-25-hieunguyen " >
                        <a href="#" >
                            <svg >   
                                <path  class="traitim-251"   d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                                c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z" >
                                </path>
                            </svg>
                        </a>  
                    </div>
                </div>
                    <span class="product-25-category"><a href="#">Clothes</a></span>
                    <p class="product-25-price">$35.00</p>
                </div> 
        </div>
    </div>
</div>
</div>
