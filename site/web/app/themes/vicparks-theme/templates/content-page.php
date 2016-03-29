<?php the_content();
    if(!get_field('disable_social_media_icons')) {
        echo do_shortcode("[wp_social_sharing social_options='facebook,twitter,googleplus,linkedin,pinterest'  show_icons='1']");
    }
?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
