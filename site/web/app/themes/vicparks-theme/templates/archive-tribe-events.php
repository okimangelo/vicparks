<?php
/** Loop Tribe Events CPT
 */

 $args = array( 'post_type' => 'tribe_events', 'posts_per_page' => 10 );
       $loop = new WP_Query( $args );
       if($loop->have_posts()):
           while ( $loop->have_posts() ) : $loop->the_post();
                echo '<div class="tribe-events">';
                    echo '<h5 class="entry-title">'.get_the_title().'</h5>';
                    echo '<div class="entry-content">';
                    echo content_limit(20);
                    echo '</div>';
                echo '</div>';
           endwhile;
           wp_reset_query();
       else:
        echo 'No Upcoming Events';
       endif;

?>

