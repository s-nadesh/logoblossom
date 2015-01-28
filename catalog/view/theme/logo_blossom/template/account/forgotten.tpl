<?php echo $header; ?>
<div class="container">
  <!--<ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>-->
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row">
    <div id="content" class="col-xs-12 col-sm-12 col-md-10 create-account">
	<?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <p><?php echo $text_email; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_your_email; ?></legend>
          <div class="form-group required">
            <label for="input-email"><?php echo $entry_email; ?></label>
              <input type="email" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="create-accounttxtfield" />
          </div>
        </fieldset>
        <div class="buttons clearfix">
          <div class="pull-left"><a href="<?php echo $back; ?>" class="signin-btn"><?php echo $button_back; ?></a></div>
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="regsiter-btn" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
  </div>
</div>
<?php echo $footer; ?>