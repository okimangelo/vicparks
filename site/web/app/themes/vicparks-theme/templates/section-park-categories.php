<?php

/* Park Categories (Where do you want to go section) */

$taxonomy = 'park-category';

$term_args=array(
  'hide_empty' => false,
  'orderby' => 'id',
  'order' => 'ASC'
);
$park_categories = get_terms($taxonomy,$term_args);



if ( ! empty( $park_categories ) && ! is_wp_error( $park_categories ) ){
  echo '<section class="parks-grid clearfix">
            <div class="container">
              <section class="row">
                  <h3 class="col-md-12">Where do you want to go?</h3>
              </section>
            </div>';
  foreach ( $park_categories as $park_category ) {

    $bg_img_url = get_field('background_image_url',$taxonomy . '_' . $park_category->term_id);

//    $sub_heading = get_field('sub_heading',$taxonomy . '_' . $park_category->term_id);
    $theme = get_field('theme',$taxonomy . '_' . $park_category->term_id);
    $park_category_description = get_field('park_category_description',$taxonomy . '_' . $park_category->term_id);


    echo '<a href="'.home_url().'/park-category/'.$park_category->slug.'">
              <aside class="hvr hvr-overline-reveal grid-content '.$theme.'" style="background: url('.$bg_img_url.') no-repeat center/cover; min-height: 400px;">
                <div class="content-meta-holder">
                  <div class="content-meta '.$theme.'">
                    <h4>'.$park_category->name.'</h4>
                    <span class="grid-footer">
                       <p class="pull-left">'.$park_category_description.'</p>
                      <span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span>
                    </span>

                  </div>
                </div>

            </aside></a>';

  }
  echo '</section>';
}
