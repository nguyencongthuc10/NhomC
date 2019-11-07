<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>
<div class="type-23">
	<div class="container">
		<div class="row">
			<div class="col-md-2 anh-phu">
				<div class="slide-anhphu">
					<img src="./images/main-product-2-img-1-600x850.jpg" alt="" class="img-responsive">
					<img src="./images/main-product-2-img-2-600x850.jpg" alt="" class="img-responsive">
					<img src="./images/main-product-2-img-3-600x850.jpg" alt="" class="img-responsive">
					<img src="./images/main-product-2-img-4-600x850.jpg" alt="" class="img-responsive">
				</div>
			</div>
			<div class="col-md-5 main-img">
				<img src="./images/main-product-2-img-2-600x850.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-5 content">
				<h2>WHITE PEARL</h2>
				<div class="price"><p>$35.00</p></div>
				<div class="description-sp">
					<p>Saepe in venir cu quo, mel et epics de salu tatus si que, has eu graecis aco moda. Vix ei mucius iriure dolors umin, mel ad nobis esentis adis dio. Etiam ultricies nisi velt.</p>
				</div>
				<div class="info-sp">
					<p>SKU: <strong>207</strong></p>
					<p>Catelogy: <strong>CLOTHES</strong></p>
					<p>Tag: <strong>LIFE</strong></p>
				</div>
				<form class="cart" action="https://nille.qodeinteractive.com/product/white-pearl/" method="post" enctype="multipart/form-data">
					<div class="qodef-quantity-buttons quantity">
						<label class="screen-reader-text" for="quantity_5da66c0390cb1">White pearl quantity</label>
						<span class="qodef-quantity-minus increment">-</span>
						<input type="text" id="quantity_5da66c0390cb1" class="qodef-quantity-input input-text qty text" data-step="1" data-min="1" data-max="" name="quantity" value="1" title="Qty" size="4" inputmode="numeric">
						<span class="qodef-quantity-plus increment">+</span>
					</div>
					<button type="submit" name="add-to-cart" value="723" class="single_add_to_cart_button button alt">Add to cart</button>
				</form>
				<div class="yith-wcwl-add-to-wishlist add-to-wishlist-723">
					<div class="yith-wcwl-add-button show" style="display:block">
						<a href="/product/white-pearl/?add_to_wishlist=723" rel="nofollow" data-product-id="723" data-product-type="simple" class="add_to_wishlist">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 18 16" style="enable-background:new 0 0 18 16;" xml:space="preserve">
								<style type="text/css">
									.st0{fill:none;stroke:#bf5c30;stroke-width:0.65;stroke-miterlimit:10;}
								</style>
								<path class="st0" d="M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8C9.8,1.4,9.1,3.9,8.9,3.9c-0.2,0-1-2.6-3.7-2.6
								c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z"></path>
							</svg>Add to Wishlist
						</a>
						<img src="https://nille.qodeinteractive.com/wp-content/plugins/yith-woocommerce-wishlist/assets/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden">
					</div>
					<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
						<span class="feedback"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 18 16" style="enable-background:new 0 0 18 16;" xml:space="preserve">
							<style type="text/css">
								.st-fill{fill: #bf5c30;stroke:#bf5c30;stroke-width:0.65;stroke-miterlimit:10;}
							</style>
							<path class="st-fill" d="M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8c-2.6,0-3.3,2.5-3.5,2.5c-0.2,0-1-2.6-3.7-2.6
							c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z"></path>
						</svg>Product added!</span>
						<a href="https://nille.qodeinteractive.com/wishlist/" rel="nofollow">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 18 16" style="enable-background:new 0 0 18 16;" xml:space="preserve">
								<style type="text/css">
									.st-fill{fill: #bf5c30;stroke:#bf5c30;stroke-width:0.65;stroke-miterlimit:10;}
								</style>
								<path class="st-fill" d="M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8c-2.6,0-3.3,2.5-3.5,2.5c-0.2,0-1-2.6-3.7-2.6
								c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z"></path>
							</svg>Browse Wishlist 
						</a>
					</div>
					<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
						<span class="feedback"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 18 16" style="enable-background:new 0 0 18 16;" xml:space="preserve">
							<style type="text/css">
								.st-fill{fill: #bf5c30;stroke:#bf5c30;stroke-width:0.65;stroke-miterlimit:10;}
							</style>
							<path class="st-fill" d="M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8c-2.6,0-3.3,2.5-3.5,2.5c-0.2,0-1-2.6-3.7-2.6
							c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z"></path>
						</svg>The product is already in the wishlist!</span>
						<a href="https://nille.qodeinteractive.com/wishlist/" rel="nofollow">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 18 16" style="enable-background:new 0 0 18 16;" xml:space="preserve">
								<style type="text/css">
									.st-fill{fill: #bf5c30;stroke:#bf5c30;stroke-width:0.65;stroke-miterlimit:10;}
								</style>
								<path class="st-fill" d="M8.9,14.8c0.5,0,10.4-6.4,7-11.6c-0.5-0.8-1.8-1.9-3.5-1.8c-2.6,0-3.3,2.5-3.5,2.5c-0.2,0-1-2.6-3.7-2.6
								c-1.9,0-3.1,1.3-3.4,1.9C-1.2,8.4,8.4,14.8,8.9,14.8z"></path>
							</svg>Browse Wishlist 
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">  
   $(function(){
     $('.increment').click(function() {
        var valueElement = $('#'+$(this).siblings('input').attr('id'));

        if($(this).hasClass('qodef-quantity-plus')) 
        {
           valueElement.val(Math.max(parseInt(valueElement.val()) + 1));
        } 
        else if (valueElement.val() > 1) // Stops the value going into negatives
        {
           valueElement.val(Math.max(parseInt(valueElement.val()) - 1));
        } 

     return false;
});

});
</script> 