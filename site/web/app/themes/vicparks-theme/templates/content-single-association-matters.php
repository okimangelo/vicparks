<?php
if(is_user_logged_in()):
        $current_user = wp_get_current_user();
        if(in_array('member',$current_user->roles) || in_array('administrator',$current_user->roles)):

            while (have_posts()) : the_post(); ?>

              <article <?php post_class(); ?>>
                <div class="entry-content">
                  <?php
                    // Query Section Content
                    if( have_rows('section_content') ):
                        echo '<ul class="section-content list-unstyled clearfix">';
                          // loop through the rows of data
                          while ( have_rows('section_content') ) : the_row();
                              $image = get_sub_field('image');
                              echo '<li>';
                                  echo (!empty($image)) ? '<div class="img-holder pull-left"><img src="'. $image['url'].'" alt="'. $image['alt'].'" /></div>': $image;
                                  echo '<h4>'. get_sub_field('heading').'</h4>';
                                  the_sub_field('content');
                              echo '</li>';
                          endwhile;

                        echo '</ul>';
                    endif;

                      if( have_rows('file_attachments_section') ):
                          echo '<ul class="file-attachments-section list-unstyled clearfix">';
                          // loop through the rows of data
                          while ( have_rows('file_attachments_section') ) : the_row();

                              echo '<li>';
                                  echo '<h4>'. get_sub_field('heading').'</h4>';
                              if( have_rows('files') ):
                                  echo '<ul class="files-content list-unstyled">';
                                  // loop through the rows of data
                                  while ( have_rows('files') ) : the_row();
                                      echo '<li>';
                                          $file = get_sub_field('file_attachment');
                                          $file_description = get_sub_field('file_description');

                                          if( $file ): ?>
                                              <a target="_blank" href="<?php echo $file['url']; ?>"><i class="fa fa-file-pdf-o"></i>
                                                  <?php echo $file_description; ?></a>
                                          <?php endif;
                                      echo '</li>';
                                  endwhile;

                                  echo '</ul>';
                              endif;
                              echo '</li>';

                          endwhile;

                          echo '</ul>';
                      endif;


                    the_content();
                  ?>
                </div>
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