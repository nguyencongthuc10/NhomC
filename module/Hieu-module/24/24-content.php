<?php
$url_host = $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>

<div class="type-24">
  <div id="tab-hieu" class="container"> 
    <ul  class="nav nav-pills">
    </ul>
    <ul class="tabs " role="tablist">
     <li class="active">
      <a  href="#hieu" data-toggle="tab" >DESCRIPTION</a>
    </li>
    <li><a href="#hieu1" data-toggle="tab">ADDITIONAL INFORMATION</a>
    </li>
    <li><a href="#hieu3" data-toggle="tab">REVIEWS (0)</a>
    </li>
  </ul>
  <div class="tab-content ">
    <div class="tab-pane active" id="hieu">
     <p style="" class="title-24">
     Convenire salut atus consulatu vim ei, pri choro cont enti ones in. Mea at malor um lobotis iudic abit, ubique comune an cum, eu ferri ex plicari vel. Nam nei numis quam civib, duoms quem alii modus ut. Sed in purto discer. Veni am de defini tiones eu eam. Sape inveni cu quo, mel et epicuri salu tatus simi lique, has eu graei aco moda. Vix ei muciu iriurei de dolors um, mel ad nobis esent adipi.</p>             
   </div>
   <div class="tab-pane" id="hieu1">
    <p class="name-product-infomation" >Weight</p>
    <p class="name-product-infomation2">4 OZ</p>
    <p class="name-product-infomation" >Dimensions</p>
    <p class="name-product-infomation2">90 × 90 × 60 IN</p>
  </div>
  <div class="tab-pane" id="hieu3">
   <h2 class="review">REVIEWS</h2>
   <p class="t2-hh">There are no reviews yet</p>
   <span class="t3-hh">BE THE FIRST TO REVIEW “ELEGANT DRESS”</span>
   <p  class="t2-hh">Your email address will not be published. Required fields are marked *</p>
   <p  class="t2-hh">Your rating</p>
   <div class="stars">
    <form >
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
  <p class="t2-hh">Your review *</p>
  <textarea cols="45" rows="8" style="width: 100%"></textarea>
    <div class="row">
      <div class="col-md-6">
        <p  class="t2-hh">Name *</p>
        <input class="author" type="text" value="" size="30" style="width: 100%">
      </div>
      <div class="col-md-6">
       <p  class="t2-hh">Email *</p>
       <input class="author"  type="text" size="30" >
     </div>
    </div>
     <div class="form-group" style="padding-top: 20px;">
      <span class="form-group">
        <input id="cbox" type="checkbox"> </span>      
        <label for="cbox">Save my name, email, and website in this browser for the next time I comment.</label>          
      
    </div>
    <div class="form-submit">
      <input name="submit" type="submit" id="submit" class="submit" value="SUBMIT"> 
    </div>
</div>
</div>
</div>
</div>

