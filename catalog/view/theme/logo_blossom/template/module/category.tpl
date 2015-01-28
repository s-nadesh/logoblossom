<div class="left-widget">
<div class="widget-heading">Category </div>
<div class="list-group">
<ul>
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li><a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <ul>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li>
    <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  </li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  </ul>
  <?php } ?>
  </li>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
</ul>
</div>
</div>
