<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;
$term_id = get_queried_object()->term_id;
$region_image = get_field('region_image','region_'.$term_id);
$currentRegion = get_query_var( 'term' );
?>

<!doctype html>
<html <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php body_class(); ?>>
    <!--[if IE]>
      <div class="alert alert-warning">
        <?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
      </div>
    <![endif]-->
    <?php
        do_action('get_header');
        get_template_part('templates/header');
        do_action('after_header');
  ?>
        <div class="container">
          <aside class="row">
            <?php get_template_part('templates/page', 'header'); ?>
          </aside>
          <div class="row">
            <section class="the-excerpt">
              <?php echo get_field('region_page_excerpt','region_'.$term_id);?>
            </section>
          </div>
        </div>

        <aside class="region-featured-image" <?php echo ( !empty($region_image) ) ? 'style="min-height: 400px; background: url('.$region_image['url'].') center/cover no-repeat;"' :''?> >
        </aside>

        <div class="container">
          <section class="row">
            <aside class="region-description col-md-12">
                <?php echo term_description( $term_id );?>
            </aside>
          </section>

        </div>
    <div class="wrap container" role="document">
      <div class="content row">
        <main class="main">
          <?php

          display_park_region_map_markup($term_id);
          include Wrapper\template_path(); ?>
        </main><!-- /.main -->
        <?php if (Setup\display_sidebar()) : ?>
          <aside class="sidebar">
            <?php include Wrapper\sidebar_path(); ?>
          </aside><!-- /.sidebar -->
        <?php endif; ?>
      </div><!-- /.content -->
    </div><!-- /.wrap -->
    <?php
      do_action('get_footer');
      get_template_part('templates/footer');
      wp_footer();
    ?>

  </body>
</html>
