<?php while (have_posts()) : the_post(); ?>
  <article <?php post_class('row'); ?> id="park">
      <aside class="col-md-6">
        <?php
        //Gallery
        get_template_part('templates/single/park', 'gallery');

        //Youtube Video
        $youtubeURL = get_field('youtube_video');
        if($youtubeURL){
          echo convertYoutubeURL($youtubeURL);
        }

        ?>

      </aside>
      <div class="entry-content col-md-6">
        <?php if(function_exists('the_ratings')):?>
          <div class="well well-sm park-rating">
            <h5 class="text-uppercase">Park Rating</h5>
            <?php  the_ratings(); ?>
          </div>
        <?php endif;?>
        <?php the_content(); ?>
      </div>
  </article>
  <section class="park-features">
    <div class="row">
      <div class="col-md-12">
          <h4>Features</h4>
      </div>
    </div>
    <?php
      $features = get_field('features');
      if($features):
    ?>
    <div class="row">
      <div class="member-features col-md-12">
        <div class="row">
          <?php




          //Park Features

          if( in_array('Access For All', $features) )
            echo '<aside><span class="icon-access-for-all">Access For All</span></aside>';

          if( in_array('Baby Change Area', $features) )
            echo '<aside><span class="icon-baby-change-area">Baby Change Area</span></aside>';

          if( in_array('Boat Friendly', $features) )
            echo '<aside><span class="icon-boat-friendly">Boat Friendly</span></aside>';

          if( in_array('Cabins', $features) )
            echo '<aside><span class="icon-cabins">Cabins</span></aside>';

          if( in_array('Camp Kitchen', $features) )
            echo '<aside><span class="icon-camp-kitchen">Camp Kitchen</span></aside>';

          if( in_array('Childrens Playground', $features) )
            echo '<aside><span class="icon-children-playground">Childrens Playground</span></aside>';

          if( in_array('Convenience Store', $features) )
            echo '<aside><span class="icon-convenience-store">Convenience Store</span></aside>';

          if( in_array('Credit Card / EFT POS', $features) )
            echo '<aside><span class="icon-credit-card">Credit Card/EFTPOS</span></aside>';

          if( in_array('Disabled Facilities', $features) )
            echo '<aside><span class="icon-disabled-facilities">Disabled Facilities</span></aside>';

          if( in_array('Dump Site', $features) )
            echo '<aside><span class="icon-dump-site">Dump Site</span></aside>';

          if( in_array('Dump Point', $features) )
            echo '<aside><span class="icon-dump-point">Dump Point</span></aside>';

          if( in_array('Ensuite Sites', $features) )
            echo '<aside><span class="icon-ensuite-sites">Ensuite Sites</span></aside>';

          if( in_array('Fishing', $features) )
            echo '<aside><span class="icon-fishing">Fishing</span></aside>';

          if( in_array('Jumping Pillow', $features) )
            echo '<aside><span class="icon-jumping-pillow">Jumping Pillow</span></aside>';

          if( in_array('Launch Facilities', $features) )
            echo '<aside><span class="icon-launch-facilities">Launch Facilities</span></aside>';

          if( in_array('Long Term Sites', $features) )
            echo '<aside><span class="icon-long-term-sites">Long Term Sites</span></aside>';

          if( in_array('Motor Home Sites', $features) )
            echo '<aside><span class="icon-motor-home-sites">Motor Home Sites</span></aside>';

          if( in_array('Non-Smoking Accommodation', $features) )
            echo '<aside><span class="icon-non-smoking-accom">Non-smoking Accom.</span></aside>';

          if( in_array('On Site Vans', $features) )
            echo '<aside><span class="icon-on-site-vans">On Site Vans</span></aside>';

          if( in_array('Playground', $features) )
            echo '<aside><span class="icon-playground">Fishing</span></aside>';

          if( in_array('Powered Sites', $features) )
            echo '<aside><span class="icon-powered-sites">Powered Sites</span></aside>';

          if( in_array('Public Email Facilities', $features) )
            echo '<aside><span class="icon-public-email-facilities">Public Email Facilities</span></aside>';

          if( in_array('Public Transport', $features) )
            echo '<aside><span class="icon-public-transport">Public Transport</span></aside>';

          if( in_array('Residential Sites', $features) )
            echo '<aside><span class="icon-residential-sites">Residential Sites</span></aside>';

          if( in_array('Some Pets Allowed', $features) )
            echo '<aside><span class="icon-some-pets-allowed">Some Pets Allowed</span></aside>';

          if( in_array('Swimming Pool', $features) )
            echo '<aside><span class="icon-swimming-pool">Swimming Pool</span></aside>';

          if( in_array('Tennis Court', $features) )
            echo '<aside><span class="icon-tent-sites">Tennis Court</span></aside>';

          if( in_array('Tent Sites', $features) )
            echo '<aside><span class="icon-tent-sites">Tent Sites</span></aside>';

          if( in_array('Tourist Information', $features) )
            echo '<aside><span class="icon-tourist-information">Tourist Information</span></aside>';

          if( in_array('TV/Games Room', $features) )
            echo '<aside><span class="icon-tv-games-room">TV/Games Room</span></aside>';

          if( in_array('Waterfront Location', $features) )
            echo '<aside><span class="icon-waterfront-location">Waterfront Location</span></aside>';

          if( in_array('Wireless Internet', $features) )
            echo '<aside><span class="icon-wireless-internet">Wireless Internet</span></aside>';


          ?>
        </div>
      </div>
    </div>
    <?php endif; ?>

  </section>
<?php
    get_template_part('templates/single/park', 'sub-footer');
endwhile;
