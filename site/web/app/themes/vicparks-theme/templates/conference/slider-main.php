<?php

// check if the repeater field for Slider has rows of data
if( have_rows('slides') ): ?>
<section id="mainCarousel" class="carousel slide page-slider" data-ride="carousel" style="min-height: 500px;">
  <!-- Indicators -->
  <?php
  //Hide Indicators if only one slide
  if(count(get_field('slides')) > 1): ?>
  <ol class="carousel-indicators">
    <?php

    $slide_number = 0;
    while ( have_rows('slides') ) : the_row(); ?>
      <li data-target="#mainCarousel" data-slide-to="<?php echo $slide_number;?>" class="<?php echo ($slide_number == 0)? 'active':''; ?>"></li>
    <?php
      $slide_number++;
      endwhile; ?>
  </ol>
  <?php endif;?>
  <!-- Wrapper for slides -->
  <aside class="carousel-inner" role="listbox">
<?php  // loop through the rows of data
  $slide_number = 0;
  while ( have_rows('slides') ) : the_row(); ?>
    <div class="item <?php echo ($slide_number == 0)? 'active':''; ?>" style="background: url('<?php the_sub_field("slide_image");?>') no-repeat center / cover; min-height: 500px;">
      <div class="container">
        <section class="row" style="height: 500px;">
            <div class="slide-caption-holder col-md-12">
              <a href="<?php the_field('slide_link'); ?>">
                <i class="glyphicon glyphicon-menu-right icon-circle pull-right"></i>
                <div class="slide-caption">
                  <?php the_sub_field('slide_caption',false);?>
                </div>
              </a
            </div>
        </section>
      </div>
    </div>
  <?php
    $slide_number++;
  endwhile; ?>
  </aside>
  <?php if(count(get_field('slides')) > 1): ?>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#mainCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#mainCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  <?php endif;?>
</section>
<?php else :

  // no rows found
?>

<?php endif;

?>






