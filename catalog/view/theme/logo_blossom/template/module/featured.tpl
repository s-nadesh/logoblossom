<div class="col-xs-12 col-sm-12 col-md-12 featured-heading">
  <h2><?php echo $heading_title; ?></h2>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div id="amazingcarousel-container-1">
    <div id="amazingcarousel-1" style="display:block;position:relative;width:100%;margin:0px auto 0px;">
      <div class="amazingcarousel-list-container" style="overflow:hidden;">
        <ul class="amazingcarousel-list">
        <?php foreach ($products as $product) { ?>
          <li class="amazingcarousel-item">
            <div class="amazingcarousel-item-container">
              <div class="amazingcarousel-image">
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              </div>
              <div class="amazingcarousel-description"></div>
            </div>
          </li>
         <?php } ?> 
        </ul>
      </div>
      <div class="amazingcarousel-prev"></div>
      <div class="amazingcarousel-next"></div>
      <div class="amazingcarousel-nav"></div>
    </div>
  </div>
  <div class="shadow2"></div>
</div>