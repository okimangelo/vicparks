<?php
/** Loop Featured Association Matters CPT
 */

        $args = array(
            'post_type' => 'association-matters',
            'posts_per_page' => 10,
            'meta_key'       => 'featured_association_matters',
            'meta_value' => true
        );




       $loop = new WP_Query( $args );
       if($loop->have_posts()):
           echo '<ul class="association-matters list-unstyled">';
            while ( $loop->have_posts() ) : $loop->the_post();
                $icon = get_field('icon');
                echo '<li><a href="'.get_the_permalink().'">'.$icon.get_the_title().'</a></li>';
            endwhile;
           echo '</ul>';
       wp_reset_query();
       else:
           echo 'No Association Matters';
       endif;



