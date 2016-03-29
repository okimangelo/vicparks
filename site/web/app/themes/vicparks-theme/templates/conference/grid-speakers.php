<?php

/* Park Categories (Where do you want to go section) */

$taxonomy = 'speaker';

$term_args=array(
  'hide_empty' => false,
  'orderby' => 'id',
  'order' => 'ASC'
);
$conference_speakers = get_terms($taxonomy,$term_args);



if ( ! empty( $conference_speakers ) && ! is_wp_error( $conference_speakers ) ){
  echo '<h4 class="text-center" style="margin-bottom: 1em;">Speakers</h4>';
  echo '<section class="parks-grid">';

  
  foreach ( $conference_speakers as $conference_speaker ) {

    $profile_image = get_field('profile_image',$taxonomy . '_' . $conference_speaker->term_id);
    $short_description = get_field('short_description',$taxonomy . '_' . $conference_speaker->term_id);
    $theme = get_field('theme',$taxonomy . '_' . $conference_speaker->term_id);


    echo '<a href="'.home_url().'/'.$taxonomy.'/'.$conference_speaker->slug.'">
              <aside class="grid-content" style="background: url('.$profile_image['url'].') no-repeat center/cover; min-height: 400px;">
                <div class="content-meta-holder">
                  <div class="content-meta '.$theme.'">
                    <div class="row">
                        <div class="col-md-10">
                          <h4>'.$conference_speaker->name.'</h4>
                        </div>
                        <div class="meta-footer col-md-2">
                          <span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span>
                        </div>
                    </div>
                  </div>
                </div>

            </aside></a>';

  }
  echo '</section>';
}
