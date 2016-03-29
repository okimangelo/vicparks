<section class="banner navbar navbar-success top-header bg-success" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only"><?= __('Toggle navigation', 'sage'); ?></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
      <nav class="collapse navbar-collapse navbar-top">
          <div class="container">
                <?php
                if (has_nav_menu('top_navigation')) :
                    wp_nav_menu(['theme_location' => 'top_navigation', 'walker' => new wp_bootstrap_navwalker(), 'menu_class' => 'nav navbar-nav top-nav-menu']);
                endif;
                ?>
          </div>
      </nav>
    </div>
</section>
<header class="banner container">
  <div class="row">
    <a class="brand" href="<?= esc_url(home_url('/')); ?>"><img src="<?php echo IMAGES_URL;?>/logo-sm.png" alt="<?php bloginfo('name'); ?>"></a>
      <aside class="header-rhs-sidebar col-md-8 col-sm-12 md-pull-right">
          <?php if(!dynamic_sidebar('sidebar-header-rhs')): ?>
              <img class="img-responsive md-pull-right" src="<?php echo UPLOADS_URL;?>/2016/03/RMS-VICPARKS-BANNER.png" alt="All in one Reservation and Channel Management"/>
          <?php endif;?>
      </aside>
  </div>
</header>
