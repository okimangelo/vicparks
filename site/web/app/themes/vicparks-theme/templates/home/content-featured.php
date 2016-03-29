<?php
$featured_park = get_field('featured_park');

if( $featured_park ): ?>
<section class="featured-park bg-teal carousel slide" data-ride="carousel">
  <div class="carousel-inner" role="listbox" style="min-height: 300px;">

    <?php
      $slide_number = 0;
      foreach( $featured_park as $post): // variable must be called $post (IMPORTANT) ?>
      <?php setup_postdata($post); ?>

          <div class="item <?php echo ($slide_number == 0)? 'active':''; ?>">
            <div class="container">
              <section class="row">
                  <div class="content-holder col-lg-9 col-md-8">
                    <div class="section-title-arrow">
                      <a href="<?php the_permalink(); ?>">
                        <hgroup>
                          <h4 class="">Featured Park</h4>
                          <h5><?php the_title(); ?></h5>
                        </hgroup>
                        <span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span>
                      </a>

                      <aside class="park-info-holder">
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
                        ?>
                      </aside>
                    </div>
                    <div class="entry-content">
                      <?php the_field('park_description')?>
                    </div>

                  </div>

              <?php
              if(has_post_thumbnail()): ?>
                <aside class="col-lg-3 col-md-4">
                  <a href="<?php the_permalink(); ?>">
                    <div style="background: url('<?php the_post_thumbnail_url();?>') no-repeat center/cover; min-height: 300px;"></div>
                  </a>
                </aside>
              <?php endif;?>
            </section>
        </div>
      </div>

        <?php
        $slide_number++;
        endforeach;

        ?>

  </div>
</section>
  <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
<?php endif;

get_template_part('templates/section','region-selector');




