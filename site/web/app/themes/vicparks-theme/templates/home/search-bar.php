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
          <h3>Find a Park</h3>
          <img src="<?php echo IMAGES_URL;?>/icon-search.png" alt="search">
        </div>
        <p>Start your perfect holiday here.</p>
      </div>
      <div class="md-pull-right" style="padding: 1em;">
        <div class="pull-left">
          <img class="img-responsive" src="<?php echo WP_CONTENT_URL;?>/uploads/2016/03/brochure.png" alt="Vicparks Cover" style="margin-right: 10px;height: 80px;"/>
        </div>
        <div class="pull-right">
          <h4>Download Our Guide</h4>
          <ul class="files-content list-unstyled"><li>
              <a target="_blank" href="<?php echo WP_CONTENT_URL;?>/uploads/2016/03/12227-VCCC-GUIDE-2016_All.pdf"><i class="fa fa-file-pdf-o"></i>
                Click to download our brochure</a>
            </li></ul>
        </div>
      </div>
      <?php
      echo do_shortcode('[searchandfilter id="152"]'); //Local Dev Form
      echo do_shortcode('[searchandfilter id="165"]'); // Staging Form
      ?>
    </section>
  </div>
</section>

