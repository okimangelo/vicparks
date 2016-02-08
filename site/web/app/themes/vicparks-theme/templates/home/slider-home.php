<?php

// check if the repeater field for Slider has rows of data
if( have_rows('slides') ): ?>
<section id="homeCarousel" class="carousel slide home-slider" data-ride="carousel" style="min-height: 500px;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <?php
    $slide_number = 0;
    while ( have_rows('slides') ) : the_row(); ?>
      <li data-target="#homeCarousel" data-slide-to="<?php echo $slide_number;?>" class="<?php echo ($slide_number == 0)? 'active':''; ?>"></li>
    <?php
      $slide_number++;
      endwhile; ?>
  </ol>
  <!-- Wrapper for slides -->
  <aside class="carousel-inner" role="listbox">
<?php  // loop through the rows of data
  $slide_number = 0;
  while ( have_rows('slides') ) : the_row(); ?>
    <div class="item <?php echo ($slide_number == 0)? 'active':''; ?>" style="background: url('<?php the_sub_field("slide_image");?>') no-repeat center / cover; min-height: 500px;">
      <div class="container">
        <section class="row" style="height: 500px;">
          <aside class="slider-title col-md-6 col-lg-8">
            <h1 style="color:<?php the_sub_field('banner_heading_text_color');?>;">
              <?php the_sub_field('banner_heading');?>
            </h1>
          </aside>
          <div class="slider-caption col-lg-3 col-md-4 bg-info">
            <a href="<?php the_sub_field('slide_link');?>">
              <?php the_sub_field('slide_caption');?>
            </a>
          </div>
        </section>
      </div>
    </div>
  <?php
    $slide_number++;
  endwhile; ?>
  </aside>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#homeCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#homeCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</section>
<?php else :

  // no rows found
?>

<?php endif;

?>






