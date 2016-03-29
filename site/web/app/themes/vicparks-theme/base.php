<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;

?>

<!doctype html>
<html <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php body_class('push'); ?>>
    <!--[if IE]>
      <div class="alert alert-warning">
        <?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
      </div>
    <![endif]-->
    <?php
        do_action('get_header');
        get_template_part('templates/header');
        do_action('after_header');
    if(is_singular('park')):
        get_template_part('templates/page', 'header-park');
    else: ?>
        <div class="container">
          <div class="row">
            <?php get_template_part('templates/page', 'header'); ?>
          </div>
          <?php if(is_singular(array('post','page'))): ?>
          <section class="row">
            <div class="col-md-12 the-excerpt">
            <?php
                //Show Page Excerpt if available
                if(get_field('page_excerpt')) {
                    the_field('page_excerpt');
                }
                //Show Post Excerpt if it is a post
                if(is_singular('post')) {
                    the_excerpt();
                }
            ?>
            </div>
          </section>
        <?php endif;?>
        </div>
    <?php endif;

    if(is_singular(array('post','page')) && has_post_thumbnail()){
        echo '<aside class="featured-image" style="background: url('. get_the_post_thumbnail_url().') no-repeat center / cover; min-height: 400px;margin-bottom: 1em;"></aside>';
    }



?>
    <div class="wrap container" role="document">
      <?php if(!is_singular('park')):?>

      <?php endif;?>
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
      do_action('get_footer');
      get_template_part('templates/footer');
      wp_footer();

    if(is_singular('park')):
    ?>
    <script type="text/javascript">
      jQuery(document).ready(function($){
        jQuery('#stickyPageHeader').affix({
          offset: {
            top: 100,
            bottom: function () {
              return (this.bottom = $('.footer').outerHeight(true))
            }
          }
        });
      });
    </script>
  <?php endif; ?>
  </body>
</html>
