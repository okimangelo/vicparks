<?php

/**
 *  Region Selector Template Part
 */


$taxonomy = 'region';

$term_args=array(
  'hide_empty' => false,
  'orderby' => 'id',
  'order' => 'ASC'
);

$regions = get_terms($taxonomy,$term_args);

if ( ! empty( $regions ) && ! is_wp_error( $region ) ):

          ?>
          <section class="region-selector" style="background: url('<?php echo get_field("region_background_image",6);?>') no-repeat center/cover; min-height: 281px;">
            <div class="container">
              <section class="row text-white">
                <div class="col-md-12">
                  <h3>Choose your Region</h3>
                  <ul class="filters">
                    <?php foreach ( $regions as $region ): ?>
                      <li><a class="hvr-fade"  href="<?php echo home_url('/region/').$region->slug;?>"><?php echo $region->name;?></a></li>
                    <?php endforeach;?>
                  </ul>
                </div>
              </section>
            </div>
          </section>
<?php
endif;

