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

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
      </div>
      <form action="<?php bloginfo('siteurl'); ?>" id="searchform" method="get" class="col-md-12 search-form">
        <fieldset>
          <div class="form-group">
            <label for="s" class="">Search for:</label>
            <input type="search" id="s" name="s" placeholder="keyword" required class="form-control"/>
          </div>
          <div class="input-container form-group">
            <label for="s" class="">In:</label>
            <select name="region" id="state" class="region select-box-default form-control">
              <option selected>State</option>
              <option value="All">All</option>
              <option value="Australian Capital Territory">Australian Capital Territory</option>
              <option value="New South Wales">New South Wales</option>
              <option value="Northern Territory">Northern Territory</option>
              <option value="Queensland">Queensland</option>
              <option value="South Australia">South Australia</option>
              <option value="Tasmania">Tasmania</option>
              <option value="Victoria">Victoria</option>
              <option value="Western Australia">Western Australia</option>
            </select>
          </div>
          <div class="input-container form-group">
            <label for="park_type" class="">Park Type:</label>
            <select name="park_type" id="park_type" class="state select-box-default form-control">
              <option selected>Type</option>
            </select>
          </div>
          <input type="submit" class="btn btn-danger" value="go">
        </fieldset>

      </form>
    </section>
  </div>
</section>
