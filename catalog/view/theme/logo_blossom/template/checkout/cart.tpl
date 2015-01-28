<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row">
    <div id="content">
      <div class="col-xs-12 col-sm-12 col-md-12 shopping-cart-heading">
	    <?php echo $content_top; ?>
        <h1><?php echo $heading_title; ?>
          <?php if ($weight) { ?>
          &nbsp;(<?php echo $weight; ?>)
          <?php } ?>
        </h1>
      </div>
      <div class="col-xs-12 col-sm-8 col-md-8">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="cart-left">
          <div class="shopping-links-bg">
            <div class="row">
              <div class="col-xs-12 col-sm-6 col-md-8 cart-items"> You have <?php echo $cart_count; ?> items in your cart </div>
              <div class="col-xs-12 col-sm-6 col-md-4 "> 
                <a href="<?php echo $continue; ?>" class="gree-btn"><?php echo $button_shopping; ?></a>
              </div>
            </div>
          </div>
          <?php foreach ($products as $product) { ?>
          <div class="cart-item-cont">
            <div class="row">
              <div class="col-xs-12 col-sm-3 col-md-2 ">
                <div class="cart-thumb"> 
                <?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                <?php } ?>
                </div>
              </div>
              <div class="col-xs-12 col-sm-7 col-md-7  ">
                <div class="cart-pro-details"> 
                  <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <p><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Model: <?php echo $product['model']; ?></p>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <p> <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> <?php echo $option['name']; ?>: <?php echo $option['value']; ?></p>
                  <?php } ?>
                  <?php } ?>
                </div>
              </div>
              <div class="col-xs-12 col-sm-12 col-md-3"> 
			    <p class="cart-price"><?php echo $product['price']; ?></p>
                <p class="pull-right">
                  <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['key']; ?>');"><i class="fa fa-times-circle"></i></button>
                  </span>
                </p>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
        </form>
      </div>
      <div class="col-xs-12 col-sm-3 col-md-3">
        <div class="cart-price-total">
          <p> Your cart total </p>
          <?php foreach ($totals as $total) { ?>
          <?php if($total['title'] == 'Total'){ ?>
            <div class="cart-price-totaltxt"><?php echo $total['text']; ?></div>
          <?php } ?>
          <?php } ?>
          <p><a href="<?php echo $checkout; ?>" class="gree-btn"><?php echo $button_checkout; ?></a></p>
        </div>
        
        <?php /*?><?php if ($coupon || $voucher || $reward || $shipping) { ?>
        <div class="cart-price-total">
          <p> <?php echo $text_next; ?> </p>
          <p><?php echo $text_next_choice; ?></p>
          <div class="panel-group" id="accordion">
		    <?php echo $coupon; ?>
		    <?php echo $voucher; ?>
		    <?php echo $reward; ?>
		    <?php echo $shipping; ?>
          </div>
        </div>
        <?php } ?><?php */?>
        
      </div>
      <?php echo $content_bottom; ?></div>
    </div>
</div>
<?php echo $footer; ?> 