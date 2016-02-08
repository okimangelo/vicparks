<?php while (have_posts()) : the_post(); ?>
  <article <?php post_class('row'); ?> id="park">
      <aside class="col-md-6">
        <?php get_template_part('templates/single/park', 'gallery');?>
      </aside>
      <div class="entry-content col-md-6">
        <div class="well well-sm park-rating">
          <h5 class="text-uppercase">Park Rating</h5>
          <?php if(function_exists('the_ratings')) { the_ratings(); } ?>
        </div>
        <?php the_content(); ?>
      </div>
  </article>
  <section class="park-features">
    <div class="row">
      <div class="col-md-12">
          <h4>Features</h4>
      </div>
    </div>
    <div class="row">
      <div class="member-features col-md-12">
        <div class="row">
          <aside><span>Cabins</span></aside>
          <aside><span>Residential Sites</span></aside>
          <aside><span>Disabled Facilities</span></aside>
          <aside><span>Swimming Pool</span></aside>
          <aside><span>Tourist Information</span></aside>
          <aside><span>Wireless Internet</span></aside>
          <aside><span>Non-smoking Accom.</span></aside>
          <aside><span>TV/Games Room</span></aside>
          <aside><span>Credit Card/EFTPOS</span></aside>
          <aside><span>Public Transport</span></aside>
          <aside><span>Public Email Facilities</span></aside>
        </div>
      </div>
    </div>

  </section>
<?php
    get_template_part('templates/single/park', 'sub-footer');

  endwhile;
