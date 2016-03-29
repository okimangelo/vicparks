<?php


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

    echo '<ul class="information-topics-menu category-menu">';
    foreach ( $info_topic_categories as $info_topic_category ) :
        ?>
        <li class="cat-item">
            <div class="cat-title">
                <a href="#cat_<?php echo $info_topic_category->term_id?>" data-toggle="collapse" data-parent="#menu"><?php echo $info_topic_category->name; ?></a>

                <a class="icon-arrow" href="<?php echo home_url('/topic-category/').$info_topic_category->slug; ?>/">(<?php echo $info_topic_category->count; ?>)</a>

            </div>
            <ul id="cat_<?php echo $info_topic_category->term_id?>" class="collapse children">
                <?php
                $args = array(
                    'orderby' => 'post_title',
                    'order' => 'ASC',
                    'post_type' =>'information-topics',
                    'posts_per_page' => -1,
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
                <?php
                endforeach;
                wp_reset_postdata();
                ?>

            </ul>
        </li>
        <?php

    endforeach;
    echo '</ul>';
endif;