<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled">
        <li><span aria-hidden="true" class="glyphicon glyphicon-user"></span> <a href="<?php echo $edit; ?>"> <?php echo $text_edit; ?></a></li>
        <li><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> <a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><span aria-hidden="true" class="glyphicon glyphicon-home"></span> <a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
        <li><span aria-hidden="true" class="glyphicon glyphicon-heart"></span> <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      </ul>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled">
        <li><span aria-hidden="true" class="glyphicon glyphicon-shopping-cart"></span> <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        <li><span aria-hidden="true" class="glyphicon glyphicon-cloud-download"></span> <a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
        <li><span aria-hidden="true" class="glyphicon glyphicon-bookmark"></span> <a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
        <?php } ?>
        <li><span aria-hidden="true" class="glyphicon glyphicon-retweet"></span> <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><span aria-hidden="true" class="glyphicon glyphicon-credit-card"></span>  <a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        <li><span class="glyphicon glyphicon-random" aria-hidden="true"></span> <a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
      </ul>
      <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
        <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>