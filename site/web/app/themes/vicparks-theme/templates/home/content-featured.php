<?php
$featured_park = get_field('featured_park');

if( $featured_park ): ?>
<section class="featured-park bg-teal carousel" data-ride="carousel">
  <div class="carousel-inner" role="listbox">

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
                          <h4 class=""><?php the_title(); ?></h4>
                          <h5><?php the_field('park_headline')?></h5>
                        </hgroup>
                        <span class="glyphicon glyphicon-menu-right text-danger"></span>
                      </a>
                    </div>
                    <div class="entry-content">
                      <?php the_field('park_description')?>
                    </div>

                  </div>

              <?php
              if(has_post_thumbnail()): ?>
                <aside class="col-lg-3 col-md-4">
                  <a href="<?php the_permalink(); ?>">
                    <div style="background: url('<?php the_post_thumbnail_url();?>') no-repeat center/cover; min-height: 281px;"></div>
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




