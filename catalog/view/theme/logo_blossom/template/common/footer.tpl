</div>

<div class="footer">
  <div class="container">
    <div class="row">
     <?php if ($informations) { ?>
      <div class="col-xs-12 col-sm-3 col-md-3 footerpart1">
        <h2> <?php echo $text_information; ?> </h2>
        <ul>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?> 
      <div class="col-xs-12 col-sm-3 col-md-3 footerpart1 footerpart2">
        <h2> Logos </h2>
        <?php if($limited_categories){ ?>
        <ul>
          <?php foreach($limited_categories as $limited_category){ ?>
          <li><a href="<?php echo $limited_category['href']; ?>"> <?php echo $limited_category['name']; ?> </a></li>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
     
      <div class="col-xs-12 col-sm-3 col-md-3 footerpart1 footerpart2">
        <h2>Need a help ?</h2>
        <ul>
          <li><a href="<?php echo $contact; ?>"> Contact Us </a></li>
          <li><a href="<?php echo $sitemap; ?>"> Sitemap </a></li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-3 col-md-3 footerpart1 footerpart3">
        <h2>Connect With Us</h2>
        <div class="social-newsletter">
          <div class="social-links">
            <ul class="list-inline list-unstyled">
             <li class="facebookfoot"><a href="#"><i class="fa fa-facebook"></i></a></li>              
             <li class="twitterfoot"><a href="#"><i class="fa fa-twitter"></i></a></li>              
             <li class="pinterestfoot"><a href="#"><i class="fa fa-pinterest"></i></a></li>              
             <li class="googlefoot"><a href="#"><i class="fa fa-google-plus"></i></a></li>
             <li class="rssfoot"><a href="#"><i class="fa fa-rss"></i></a></li>              
             <li class="dribblefoot"><a href="#"><i class="fa fa-dribbble"></i></a></li>              
             <li class="youtubefoot"><a href="#"><i class="fa fa-youtube"></i></a></li>
             <li class="linkedinfoot"><a href="#"><i class="fa fa-linkedin"></i></a></li>                             
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container"> <?php echo $powered; ?> </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
  	$(window).jetmenu({speed: 500});
	$('.indicator').click(function(e){
		$(this).parent('li').children('ul:not(.fading)').slideToggle();
		e.preventDefault();
	});
});
</script>
</body></html>