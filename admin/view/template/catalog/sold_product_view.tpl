<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">
<div class="page-header">
  <div class="container-fluid">
    <div class="pull-right">
      <a href="<?php echo $back; ?>" data-toggle="tooltip" title="<?php echo $button_back; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
    </div>
    <h1><?php echo $sold_product_heading; ?></h1>
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container-fluid">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $sold_product_heading; ?></h3>
    </div>
    <div class="panel-body">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
        <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
        <li><a href="#tab-links" data-toggle="tab"><?php echo $tab_links; ?></a></li>
        <li><a href="#tab-image" data-toggle="tab"><?php echo $tab_image; ?></a></li>
        <li><a href="#tab-option" data-toggle="tab"><?php echo $tab_option; ?></a></li>
        <li><a href="#tab-history" data-toggle="tab"><?php echo $tab_history; ?></a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab-general">
          <table class="table table-bordered" width="100%">
            <tr>
              <td width="12%"><?php echo $entry_name; ?></td>
              <td width="88%">
			  	<?php foreach ($languages as $language) { ?>
                <?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_description; ?></td>
              <td><?php foreach ($languages as $language) { ?>
                <?php echo isset($product_description[$language['language_id']]) ? html_entity_decode($product_description[$language['language_id']]['description']) : ''; ?>
                <?php } ?></td>
            </tr>
          </table>
        </div>
        <div class="tab-pane" id="tab-data">
          <table class="table table-bordered" width="100%">
            <tr>
              <td width="12%"><?php echo $entry_image; ?></td>
              <td width="88%"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_model; ?></td>
              <td><?php echo $model; ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_tax_class; ?></td>
              <td><?php foreach ($tax_classes as $tax_class) { ?>
                <?php if ($tax_class['tax_class_id'] == $tax_class_id) { ?>
                <?php echo $tax_class['title']; ?>
                <?php } ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_date_available; ?></td>
              <td><?php echo $date_available; ?></td>
            </tr>
          </table>
        </div>
        <div class="tab-pane" id="tab-links">
          <table class="table table-bordered" width="100%">
            <tr>
              <td width="12%"><?php echo $entry_manufacturer; ?></td>
              <td width="88%"><?php echo $manufacturer ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_category; ?></td>
              <td><?php foreach ($product_categories as $product_category) { ?>
                <?php echo $product_category['name'] . '<br>'; ?>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_download; ?></td>
              <td><?php foreach ($product_downloads as $product_download) { ?>
                <?php echo $product_download['name'] . '<br>'; ?>
                <?php } ?></td>
            </tr>
          </table>
        </div>
        <div class="tab-pane" id="tab-image">
          <table class="table table-bordered">
            <tr>
              <td><?php echo $entry_image; ?></td>
            </tr>
            <?php foreach ($product_images as $product_image) { ?>
            <tr>
              <td><img src="<?php echo $product_image['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        
        <div class="tab-pane" id="tab-option">
            <?php foreach ($product_options as $product_option) { ?>
            <?php if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') { ?>
            <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover">
                <thead>
                  <tr>
                    <td class="text-left" width="50%"><?php echo $entry_option_value; ?></td>
                    <td class="text-right" width="50%"><?php echo $entry_price; ?></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($product_option['product_option_value'] as $product_option_value) { ?>
                  <tr>
                    <td class="text-left"><?php if (isset($option_values[$product_option['option_id']])) { ?>
                        <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                        <?php if ($option_value['option_value_id'] == $product_option_value['option_value_id']) { ?>
                        <?php echo $option_value['name']; ?>
                        <?php } ?>
                      <?php } ?>
                      <?php } ?></td>
                    <td class="text-right"><?php echo $product_option_value['price']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
            <?php } ?>
            <?php } ?>
        </div>
        
        <div class="tab-pane" id="tab-history">
          <table class="table table-bordered">
          <thead>
            <tr>
              <td>Customer Name</td>
              <td>Date</td>
              <td>License</td>
            </tr>
          </thead>
          <tbody>  
            <?php foreach ($history as $history_product) { ?>
            <tr>
              <td><?php echo $history_product['customer'] ?></td>
              <td><?php echo $history_product['order_date'] ?></td>
              <td><?php echo $history_product['order_option'] ?></td>
            </tr>
            <?php } ?>
            </tbody>
          </table>
        </div>
        
        
        
        
        
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?> 