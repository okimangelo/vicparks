<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;

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
      get_template_part('templates/header','conference');
      do_action('after_header');
        if(get_field('page_banner_heading')):
        ?>
          <div class="container banner-container">
            <div class="row">
              <aside class="page-banner-heading col-lg-12">
                <?php the_field('page_banner_heading');?>
              </aside>
            </div>
          </div>
        <?php
        endif;

      get_template_part('templates/conference/slider', 'main');
      //get_template_part('templates/page', 'header');
    ?>
    <div class="wrap container" role="document">
      <div class="content row">
        <main class="main">
          <?php include Wrapper\template_path(); ?>
        </main><!-- /.main -->
        <?php if (Setup\display_sidebar()) : ?>
          <aside class="sidebar">
            <?php include Wrapper\sidebar_path(); ?>
          </aside><!-- /.sidebar -->
        <?php endif; ?>
      </div><!-- /.content -->
    </div><!-- /.wrap -->

    <?php
      get_template_part('templates/conference/grid','speakers');
      do_action('get_footer');
      get_template_part('templates/footer');
      wp_footer();
    ?>
    <script type="text/javascript">
      jQuery('#stickyHeader').affix({
        offset: {
          top: 100,
          bottom: function () {
            return (this.bottom = jQuery('.footer').outerHeight(true))
          }
        }
      });
    </script>
  </body>
</html>
