<?php
/** Loop Association Matters CPT
 */

if(is_user_logged_in()):
    $current_user = wp_get_current_user();
    if(in_array('member',$current_user->roles) || in_array('administrator',$current_user->roles)):

            $args = array(
                'post_type' => 'association-matters',
                'posts_per_page' => 10,
                'orderby' => 'slug',
                'order' => 'ASC',
            );

            $loop = new WP_Query( $args );

            if($loop->have_posts()):
                echo '<ul class="association-matters list-unstyled">';
                while ( $loop->have_posts() ) : $loop->the_post();
                    echo '<li><a href="'.get_the_permalink().'"><img src="'.DIST_URL.'/images/logo-association-matters.png" alt="VicParks"><span>'.get_the_title().'</span></a></li>';
                endwhile;
                echo '</ul>';
                wp_reset_query();
            else:
                echo 'No Association Matters';
            endif;

else:

    echo '<div class="alert alert-danger clearfix" role="alert">
                            <h4 class="text-center">You are not allowed to access this page.</h4>
                            <a class="text-center col-md-12" href="'.home_url().'">Click here if you are not redirected to the homepage.</a>
                            </div>';
    echo '<META http-equiv="refresh" content="0;URL='.home_url().'">';

    endif; //End If Admin or Member

    else:
    echo '<div class="alert alert-warning clearfix" role="alert">
              <h4 class="text-center">Please login to access this page.</h4>
            </div>';
    echo do_shortcode('[upme_login]');

endif; //End IF logged in