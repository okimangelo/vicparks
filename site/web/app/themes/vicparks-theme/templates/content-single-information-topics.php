<?php

if(is_user_logged_in()):
      $current_user = wp_get_current_user();
      if(in_array('member',$current_user->roles) || in_array('administrator',$current_user->roles)):

            if ( function_exists('yoast_breadcrumb') ) {
              yoast_breadcrumb('<p id="breadcrumbs" class="breadcrumb">','</p>');
            }

            while (have_posts()) : the_post(); ?>
              <article <?php post_class(); ?>>
                <div class="entry-content">
                  <?php the_content(); ?>
                </div>
                <footer>
                  <?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
                </footer>
                <?php comments_template('/templates/comments.php'); ?>
              </article>
            <?php endwhile;

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