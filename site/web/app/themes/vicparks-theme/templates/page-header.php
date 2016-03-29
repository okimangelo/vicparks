<?php use Roots\Sage\Titles;
$term_id = get_queried_object()->term_id;
?>

    <div class="page-header clearfix text-center">
      <h1><?= Titles\title(); ?></h1>
    </div>
    <?php
    if(get_field('page_description')) : ?>
        <div class="row">
            <section class="col-md-12">
                <div class="post-meta well text-center page-description">
                    <?php the_field('page_description'); ?>
                </div>
            </section>
        </div>
    <?php endif; ?>

    <?php
    if(get_field('region_page_description','region_'.$term_id)) : ?>
        <div class="row">
            <section class="col-md-12">
                <div class="post-meta well text-center page-description">
                    <?php the_field('region_page_description','region_'.$term_id); ?>
                </div>
            </section>
        </div>
    <?php endif; ?>
    <?php
    if(get_field('park_category_description','park-category_'.$term_id)) : ?>
        <div class="row">
            <section class="col-md-12">
                <div class="post-meta well text-center page-description">
                    <?php the_field('park_category_description','park-category_'.$term_id); ?>
                </div>
            </section>
        </div>
    <?php endif; ?>


<?php

if(is_singular('post')): ?>
    <div class="col-md-12">
        <div class="post-meta well text-center page-description">
            <?php
            $categories = get_the_category();
            $separator = ', ';
            $output = '';

            if ( ! empty( $categories ) ) {
                echo 'Posted in: <span class="post-categories">';
                foreach( $categories as $category ) {
                    $output .= '<a href="' . esc_url( get_category_link( $category->term_id ) ) . '" alt="' . esc_attr( sprintf( __( 'View all posts in %s', 'textdomain' ), $category->name ) ) . '">' . esc_html( $category->name ) . '</a>' . $separator;
                }
                echo trim( $output, $separator );
                echo '</span>';
            }

            the_date('M j, Y','<span class="post-date">','</span>');

            ?>
        </div>
    </div>

<?php

endif;
