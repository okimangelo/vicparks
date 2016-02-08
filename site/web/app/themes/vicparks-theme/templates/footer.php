<footer class="content-info bg-primary">
  <section class="top-footer bg-success">
    <nav class="navbar navbar-success navbar-top">
      <div class="container">
        <?php
        if (has_nav_menu('top_navigation')) :
          wp_nav_menu(['theme_location' => 'top_navigation', 'menu_class' => 'nav navbar-nav footer-nav-menu','container_class'=>'row']);
        endif;
        ?>
      </div>
    </nav>
  </section>
  <div class="container">
      <div class="row">
      <?php if(!dynamic_sidebar('sidebar-footer')): ?>
          <div class="col-md-12 footer-copy">
            <ul class="footer-links">
              <li><a href="<?php echo home_url();?>">&copy 2015 VICParks</a></li>
              <li><a href="<?php echo home_url('/privacy/');?>">Website Privacy Statement</a></li>
              <li><a href="http://platformb.com.au/" target="_blank">Site by Platform B</a></li>
            </ul>
          </div>
      <?php endif;?>
      </div>
  </div>
</footer>
<link rel="stylesheet" type="text/css" href="https://cloud.typography.com/6548692/6798952/css/fonts.css" />
