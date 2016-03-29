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
    <a class="brand" href="<?= esc_url(home_url('/')); ?>"><img src="<?php echo IMAGES_URL;?>/logo-sm.png" alt="<?php bloginfo('name'); ?>"></a>
    <nav class="nav-primary navbar col-sm-6 col-md-7 col-lg-5 md-pull-right">
      <?php
      if (has_nav_menu('primary_navigation')) :
        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav']);
      endif;
      ?>
    </nav>
  </div>
</header>
<section id="stickyHeader">
    <div class="container">
        <div class="row">
            <nav class="nav-primary navbar col-md-12 conference">
                <?php
                if (has_nav_menu('conference_navigation')) :
                    wp_nav_menu(['theme_location' => 'conference_navigation', 'menu_class' => 'nav navbar-nav conference-nav', 'container_class'=>'menu-conference-menu-container clearfix']);
                endif;
                ?>
            </nav>
        </div>
    </div>
</section>
