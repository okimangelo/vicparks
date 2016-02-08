<?php
/**
 * Search Bar Template Part
 */
?>


<section class="search-box bg-primary">
  <div class="container">
    <section class="row">
      <div class="col-md-6">
        <div class="search-title">
          <h3>Find a Park </h3>
          <img src="<?php echo IMAGES_URL;?>/icon-search.png" alt="search">
        </div>
        <p>Start you next perfect holiday here.</p>
      </div>
      <?php
      echo do_shortcode('[searchandfilter id="152"]');
      echo do_shortcode('[searchandfilter id="165"]');
      ?>
    </section>
  </div>
</section>

