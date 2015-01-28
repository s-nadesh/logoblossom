<div class="col-xs-12 col-sm-12 col-md-12 featured-heading2">
  <h2><?php echo $heading_title; ?></h2>
</div>
<?php foreach ($products as $product) { ?>
<div class="col-xs-6 col-sm-3 col-md-3 logo-thumb-details product-layout">
  <div class="latest-logo-img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-9">
      <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a> 
      <span>
	  <?php if ($product['regular_license_price']) { ?>
        <p class="price">
          <?php echo $product['regular_license_price']; ?>
        </p>
      <?php } else {?>
        <p class="price">
          ---
        </p>
      <?php } ?>
      </span>
    </div>
    <div class="col-xs-12 col-sm-9 col-md-3 buynow button-group"> 
    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <!--<span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>--></button>
      <!--<a href="#" onclick="cart.add('<?php echo $product['product_id']; ?>');"> <?php echo $button_cart; ?> </a>-->
    </div>
  </div>
</div>
<?php } ?>
<hr>