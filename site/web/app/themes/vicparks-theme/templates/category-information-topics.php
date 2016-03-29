<?php
//Private Content MEMBERS ONLY
if(is_user_logged_in()):
        $current_user = wp_get_current_user();
        if(in_array('member',$current_user->roles) || in_array('administrator',$current_user->roles)):

                $taxonomy = 'topic-category';
                $args = array(
                    'hide_empty' => false,
                    'orderby' => 'post_title',
                    'order' => 'ASC',
                    'hierarchical' => 0,
                    'show_count' => 1,
                    'title_li' => 0 //Remove Title
                );


                $info_topic_categories = get_terms($taxonomy,$args);

                if ( ! empty( $info_topic_categories ) && ! is_wp_error( $info_topic_categories ) ):

                        echo '<ul class="information-topics category-grid">';
                        foreach ( $info_topic_categories as $info_topic_category ) :
                                ?>
                                <li class="cat-item">
                                        <div class="cat-title">
                                                <a href="<?php echo home_url('/topic-category/').$info_topic_category->slug; ?>/">
                                                        <?php echo $info_topic_category->name; ?>
                                                </a>
                                                (<?php echo $info_topic_category->count; ?>)
                                        </div>
                                        <ul class="children">
                                                <?php
                                                $args = array(
                                                    'orderby' => 'post_title',
                                                    'order' => 'ASC',
                                                    'post_type' =>'information-topics',
                                                    'posts_per_page' => 5,
                                                    'tax_query' => array(
                                                        array(
                                                            'taxonomy' => 'topic-category',
                                                            'field'    => 'term_id',
                                                            'terms'    => $info_topic_category->term_id,
                                                        ),
                                                    ),
                                                );

                                                $taxonomy_posts = get_posts( $args );
                                                foreach ( $taxonomy_posts as $post ) : setup_postdata( $post );
                                                        $title = get_the_title();
                                                        //$title = (strlen($title) > 30) ? substr($title, 0,30).'...' : $title;
                                                        ?>
                                                        <li>
                                                                <a href="<?php the_permalink(); ?>"><?php echo $title; //wp_trim_words( get_the_title(), $num_words = 4, $more = '… ' ); ?></a>
                                                        </li>
                                                <?php endforeach;
                                                        wp_reset_postdata();
                                                ?>

                                        </ul>
                                </li>
                        <?php

                        endforeach;
                        echo '</ul>';
                endif;
                //With Sub Category
//                echo '<ul class="information-topics category-grid">';
//                        pb_wp_list_categories($term_args);
//                echo '</ul>';

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