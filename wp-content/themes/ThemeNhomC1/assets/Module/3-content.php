<?php
$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-3">
  <div class="container">
	  <div class="swiper-container" id="t">
			<div class="swiper-wrapper">
			 <!-- Item -->
        <div class="swiper-slide">
          <div class="colum">
            <div class="a3_1">
              <div class="a3_1_1">
                <div class="disco">
                  <div class="btn-discover">
                    <a href="#" class="addtocart">add to cart</a>
                    <br>
                    <a href="#" class="quickview">quick view</a>
                  </div>
                </div>
              </div>
              <div class="a3_1_2">
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/3-1.jpg ?>" alt="hinh1">
                <span>New</span>
              </div>
            </div>
            <div class="a3_2">
              <div class="a3_2_1">
                <a href="#"><h5>Swimsuit Sofi</h5></a>
                <div class="traitim-footer" style="display:block">
                  <a href="#" >
                    <svg>    
                      <path  class="traitim" d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                      c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z">
                      </path>
                    </svg>
                  </a>
                </div>  
              </div>
              <a href="#">
              <p>Clothes</p>
              </a>
              <span>$180.00</span>
            </div>
          </div><!-- end  column -->
        </div>
        <!-- END Item -->
        <!-- Item -->
	       <!-- Item -->
        <div class="swiper-slide">
          <div class="colum">
            <div class="a3_1">
              <div class="a3_1_1">
                <div class="disco">
                  <div class="btn-discover">
                    <a href="#" class="addtocart">add to cart</a>
                    <br>
                    <a href="#" class="quickview">quick view</a>
                  </div>
                </div>
              </div>
              <div class="a3_1_2">
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/3-3.jpg ?>" alt="hinh1">
                <span>New</span>
              </div>
            </div>
            <div class="a3_2">
              <div class="a3_2_1">
                <a href="#"><h5>Swimsuit Sofi</h5></a>
                <div class="traitim-footer" style="display:block">
                  <a href="#" >
                    <svg>    
                      <path  class="traitim" d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                      c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z">
                      </path>
                    </svg>
                  </a>
                </div>  
              </div>
              <a href="#">
              <p>Clothes</p>
              </a>
              <span>$180.00</span>
            </div>
          </div><!-- end  column -->
        </div>
        <!-- END Item -->
        <!-- Item -->
        <!-- Item -->
        <div class="swiper-slide">
          <div class="colum">
            <div class="a3_1">
              <div class="a3_1_1">
                <div class="disco">
                  <div class="btn-discover">
                    <a href="#" class="addtocart">add to cart</a>
                    <br>
                    <a href="#" class="quickview">quick view</a>
                  </div>
                </div>
              </div>
              <div class="a3_1_2">
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/3-4.jpg ?>" alt="hinh1">
                <span>New</span>
              </div>
            </div>
            <div class="a3_2">
              <div class="a3_2_1">
                <a href="#"><h5>Swimsuit Sofi</h5></a>
                <div class="traitim-footer" style="display:block">
                  <a href="#" >
                    <svg>    
                      <path  class="traitim" d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                      c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z">
                      </path>
                    </svg>
                  </a>
                </div>  
              </div>
              <a href="#">
              <p>Clothes</p>
              </a>
              <span>$180.00</span>
            </div>
          </div><!-- end  column -->
        </div>
        <!-- END Item -->
        <!-- Item -->
        <!-- Item -->
        <div class="swiper-slide">
          <div class="colum">
            <div class="a3_1">
              <div class="a3_1_1">
                <div class="disco">
                  <div class="btn-discover">
                    <a href="#" class="addtocart">add to cart</a>
                    <br>
                    <a href="#" class="quickview">quick view</a>
                  </div>
                </div>
              </div>
              <div class="a3_1_2">
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/3-5.jpg ?>" alt="hinh1">
                <span>New</span>
              </div>
            </div>
            <div class="a3_2">
              <div class="a3_2_1">
                <a href="#"><h5>Swimsuit Sofi</h5></a>
                <div class="traitim-footer" style="display:block">
                  <a href="#" >
                    <svg>    
                      <path  class="traitim" d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                      c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z">
                      </path>
                    </svg>
                  </a>
                </div>  
              </div>
              <a href="#">
              <p>Clothes</p>
              </a>
              <span>$180.00</span>
            </div>
          </div><!-- end  column -->
        </div>
        <!-- END Item -->
        <!-- Item -->
        <!-- Item -->
        <div class="swiper-slide">
          <div class="colum">
            <div class="a3_1">
              <div class="a3_1_1">
                <div class="disco">
                  <div class="btn-discover">
                    <a href="#" class="addtocart">add to cart</a>
                    <br>
                    <a href="#" class="quickview">quick view</a>
                  </div>
                </div>
              </div>
              <div class="a3_1_2">
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/3-1.jpg ?>" alt="hinh1">
                <span>New</span>
              </div>
            </div>
            <div class="a3_2">
              <div class="a3_2_1">
                <a href="#"><h5>Swimsuit Sofi</h5></a>
                <div class="traitim-footer" style="display:block">
                  <a href="#" >
                    <svg>    
                      <path  class="traitim" d=" M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
                      c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z">
                      </path>
                    </svg>
                  </a>
                </div>  
              </div>
              <a href="#">
              <p>Clothes</p>
              </a>
              <span>$180.00</span>
            </div>
          </div><!-- end  column -->
        </div>
        <!-- END Item -->
        <!-- Item -->
			</div>
		</div>
	</div>
</div>

