<?php


$taxonomy = 'supplier-category';
$args = array(
    'hide_empty' => false,
    'orderby' => 'post_title',
    'order' => 'ASC',
    'hierarchical' => 0,
    'show_count' => 1,
    'title_li' => 0 //Remove Title
);


$supplier_categories = get_terms($taxonomy,$args);

if ( ! empty( $supplier_categories ) && ! is_wp_error( $supplier_categories ) ):

  echo '<ul class="preferred-suppliers-list">';
  foreach ( $supplier_categories as $supplier_category ) :
    ?>
    <li class="cat-item">
      <div class="cat-title">
        <a href="<?php echo home_url('/supplier-category/').$supplier_category->slug; ?>/"><?php echo $supplier_category->name; ?></a>(<?php echo $supplier_category->count; ?>)
      </div>
      <ul id="cat_<?php echo $supplier_category->term_id?>" class="children">
        <?php
        $args = array(
            'orderby' => 'post_title',
            'order' => 'ASC',
            'post_type' =>'supplier',
            'posts_per_page' => -1,
            'tax_query' => array(
                array(
                    'taxonomy' => 'supplier-category',
                    'field'    => 'term_id',
                    'terms'    => $supplier_category->term_id,
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