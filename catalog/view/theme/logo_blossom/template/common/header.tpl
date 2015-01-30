<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

<!-- Bootstrap -->
<link href="catalog/view/theme/logo_blossom/stylesheet/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="catalog/view/theme/logo_blossom/stylesheet/style.css" rel="stylesheet" type="text/css">
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,300,500,600,700' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/logo_blossom/stylesheet/responsive.css" rel="stylesheet" type="text/css">

<!--
<link href="catalog/view/theme/logo_blossom/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
-->

<script src="catalog/view/theme/logo_blossom/js/megamenu.js"></script>
<script src="catalog/view/theme/logo_blossom/carouselengine/ac.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/logo_blossom/carouselengine/initcarousel-1.css">
<script src="catalog/view/theme/logo_blossom/carouselengine/initcarousel-1.js"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>

<body class="<?php echo $class; ?>">
<div class="header">
  <div class="header-row1">
    <div class="container">
      <div class="header-contact"> <span> <a href="<?php echo $contact; ?>"> <img src="catalog/view/theme/logo_blossom/image/phone.png" width="16" height="14" alt=""></a> Call us : <?php echo $telephone; ?></span> <span><img src="catalog/view/theme/logo_blossom/image/mail.png" width="16" height="10" alt=""> Email : <?php echo $email; ?> </span> </div>
      <!--<div class="header-offer">
        <div class="offer-heading"> Today Offer </div>
        <div class="header-offertxt"> Ready-made logo design templates for $50</div>
      </div>-->
      <div class="top-links">
        <?php if ($logged) { ?>
        <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
        <?php } else { ?>
        <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="header-row2">
    <div class="container">
      <div class="row">
        <div class="col-xs-6 col-sm-2 col-md-2 logo">
          <div id="logo">
            <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-7">
          <div class="mgmenu">
            <ul class="jetmenu blue">
              <li><a href="<?php echo $home; ?>"> Home </a></li>
              <li><a href="<?php echo $about; ?>"> About Us</a></li>
              <li><a href="<?php echo $first_category_link; ?>"> Logos </a></li>
              <li><a href="<?php echo $faq; ?>"> FAQ </a></li>
              <li><a href="<?php echo $contact; ?>"> Contact Us </a></li>
            </ul>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 cart"> <?php echo $cart; ?> 
          <!--<img src="images/cart.png" width="32" height="29" alt=""> Cart :  0 --> 
        </div>
      </div>
    </div>
  </div>
</div>
<?php if($is_home){ ?>
<div class="slider-cont">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-8 col-md-8 slider-left">
        <h2> Pick Your New logo here </h2>
        Ready-made logo design templates for $50 <?php echo $search; ?> </div>
      <div class="col-xs-12 col-sm-4 col-md-4">
        <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
          </ol>
          
          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active"> <img src="catalog/view/theme/logo_blossom/image/logo-slider.png"  alt=""> </div>
            <div class="item"> <img src="catalog/view/theme/logo_blossom/image/logo-slider.png"  alt=""> </div>
            <div class="item"> <img src="catalog/view/theme/logo_blossom/image/logo-slider.png"  alt=""> </div>
            <div class="item"> <img src="catalog/view/theme/logo_blossom/image/logo-slider.png"  alt=""> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php } ?>
<div class="body-cont">
