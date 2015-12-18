<section class="top-header bg-success">
  <nav class="navbar navbar-success navbar-top">
      <div class="container">
            <?php
            if (has_nav_menu('top_navigation')) :
              wp_nav_menu(['theme_location' => 'top_navigation', 'menu_class' => 'nav navbar-nav top-nav-menu','container_class'=>'row']);
            endif;
            ?>
      </div>
  </nav>
</section>
<header class="banner container">
  <div class="row">
    <a class="brand" href="<?= esc_url(home_url('/')); ?>"><img src="<?php echo IMAGES_URL;?>/logo.png" alt="<?php bloginfo('name'); ?>"></a>
    <nav class="nav-primary navbar col-sm-6 col-md-7 col-lg-5 md-pull-right">
      <?php
      if (has_nav_menu('primary_navigation')) :
        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav']);
      endif;
      ?>
    </nav>
  </div>
</header>
