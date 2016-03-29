<?php
/** Loop Featured Information Topics CPT
 */

        $args = array(
            'post_type' => 'information-topics',
            'posts_per_page' => 10,
            'meta_key'       => 'featured_topic_md',
            'meta_value' => true
        );


       $loop = new WP_Query( $args );
       if($loop->have_posts()):
       while ( $loop->have_posts() ) : $loop->the_post();
            echo '<div class="information-topic">';
                echo '<h4 class="entry-title"><a href="'.get_the_permalink().'">'.get_the_title().'</a></h4>';
                echo '<div class="entry-content">';
                    the_excerpt();
                echo '</div>';
            echo '</div>';
       endwhile;
       wp_reset_query();
       else:
           echo 'No Featured Information Topics';
       endif;



