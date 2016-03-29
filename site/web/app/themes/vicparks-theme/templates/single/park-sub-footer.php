<?php
/**
 * Template Part: Park Sub Footer
 */
?>

<section class="park-sub-footer row">
  <aside class="col-md-4">
    <?php echo do_shortcode('[wp_geo_map]');?>
  </aside>
  <address class="park-info-holder col-md-4">
    <?php
    //echo '<h4>'.get_the_title().'</h4>';
    if(get_field('address'))
      echo '<span class="address park-info"><i class="fa fa-map-marker"></i><span>'.get_field('address').'</span></span>';

    if(get_field('website'))
      echo '<span class="website park-info"><i class="fa fa-globe"></i><a target="_blank" href="'.get_field('website').'">'.get_field('website').'</a></span>';

    if(get_field('telephone'))
      echo '<span class="telephone park-info"><i class="fa fa-phone"></i>'.get_field('telephone').'</span>';

    if(get_field('email'))
      echo '<span class="email park-info"><i class="fa fa-envelope"></i><a href="mailto:'.get_field('email').'">'.get_field('email').'</a></span>';

    if(get_field('facebook'))
      echo '<span class="facebook park-info"><i class="fa fa-facebook"></i><a href="mailto:'.get_field('facebook').'">'.get_field('facebook').'</a></span>';

    if(get_field('twitter'))
      echo '<span class="twitter park-info"><i class="fa fa-twitter"></i><a href="mailto:'.get_field('twitter').'">'.get_field('twitter').'</a></span>';

    if(get_field('google_plus'))
      echo '<span class="google-plus park-info"><i class="fa fa-google-plus"></i><a href="mailto:'.get_field('google_plus').'">'.get_field('google_plus').'</a></span>';

    ?>


  </address>
  <aside class="col-md-4">

    <?php if(get_field('logo_url'))
      $logo = get_field('logo_url');
      echo '<img src="'.$logo['url'].'" alt="'.$logo['alt'].'">';?>
  </aside>
</section>

