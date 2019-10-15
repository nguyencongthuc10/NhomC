<?php
    $url_host = $_SERVER['HTTP_HOST'];
    $pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
    $pattern_uri = '/' . $pattern_document_root . '(.*)$/';
    preg_match_all($pattern_uri, __DIR__, $matches);
    $url_path = $url_host . $matches[1][0];
    $url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-24">
<div id="exTab1" class="container"> 
    <ul  class="nav nav-pills">
           
    </ul>
      <ul class="tabs wc-tabs" role="tablist">
           <li class="active">
              <a  href="#1a" data-toggle="tab" >DESCRIPTION</a>
            </li>
            <li><a href="#2a" data-toggle="tab">ADDITIONAL INFORMATION</a>
            </li>
            <li><a href="#3a" data-toggle="tab">REVIEWS (0)</a>
            </li>
</ul>

            <div class="tab-content clearfix">
                <div class="tab-pane active" id="1a">
                 <p style="text-align: center; color: #757575;margin: 10px 0px 0px; font-size: 16px ;box-sizing: border-box;
    padding-left: 15px;
    padding-right: 15px;
    width: 100%;">Convenire salut atus consulatu vim ei, pri choro cont enti ones in. Mea at malor um lobotis iudic abit, ubique comune an cum, eu ferri ex plicari vel. Nam nei numis quam civib, duoms quem alii modus ut. Sed in purto discer. Veni am de defini tiones eu eam. Sape inveni cu quo, mel et epicuri salu tatus simi lique, has eu graei aco moda. Vix ei muciu iriurei de dolors um, mel ad nobis esent adipi.</p>             
                </div>
                    <div class="tab-pane" id="2a">
                        <p class="name-product-infomation" >Weight</p>
                        <p class="name-product-infomation2">4 OZ</p>
                         <p class="name-product-infomation" >Dimensions</p>
                        <p class="name-product-infomation2">90 × 90 × 60 IN</p>
                </div>
                    <div class="tab-pane" id="3a">
                         <h2 class="review">REVIEWS</h2>
                         <p class="t2-review">There are no reviews yet</p>
                         <span class="t3-review">BE THE FIRST TO REVIEW “ELEGANT DRESS”</span>
                         <p  class="t2-review" style="padding-top: 20px;">Your email address will not be published. Required fields are marked *</p>
                         <p  class="t2-review">Your rating</p>
                           <div class="stars" style="margin-left: -195px;">
                              <form action="">
                                <input class="star star-5" id="star-5" type="radio" name="star"/>
                                <label class="star star-5" for="star-5"></label>
                                <input class="star star-4" id="star-4" type="radio" name="star"/>
                                <label class="star star-4" for="star-4"></label>
                                <input class="star star-3" id="star-3" type="radio" name="star"/>
                                <label class="star star-3" for="star-3"></label>
                                <input class="star star-2" id="star-2" type="radio" name="star"/>
                                <label class="star star-2" for="star-2"></label>
                                <input class="star star-1" id="star-1" type="radio" name="star"/>
                                <label class="star star-1" for="star-1"></label>
                              </form>
                            </div>
                          <p class="t2-review">Your review *</p>
                          <textarea name="" id="" cols="45" rows="8" style="width: 100%"></textarea>
                          <div class="row">
                            <div class="col-md-6">
                              <p  class="t2-review">Name *</p>
                              <input id="author" name="author" type="text" value="" size="30" required=""  width="100%">
                            </div>
                            <div class="col-md-6">
                             <p  class="t2-review">Email *</p>
                              <input id="author" name="author" type="text" value="" size="30" required="">
                            </div>
                          </div>
                        <div class="form-group" style="padding-top: 20px;">
                          <span class="form-group"><input type="checkbox"> </span>
                          <span style="padding-right: 20px;" class="t2-review">Save my name, email, and website in this browser for the next time I comment.</span>
                        
                      </div>
                      <div class="form-submit">
                        <input name="submit" type="submit" id="submit" class="submit" value="SUBMIT"> 
                      </div>

                    </div>

            </div>
  </div>


</div>

