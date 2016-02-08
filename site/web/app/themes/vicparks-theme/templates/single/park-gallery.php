<?php
/**
 * Template Part: Gallery for Single Park Page
 */
$images = get_field('gallery');

// check if the repeater field for Slider has rows of data
if( have_rows('gallery') ): ?>
  <section id="parkCarousel" class="carousel slide park-slider" data-ride="carousel" style="min-height: 400px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <?php
      $slide_number = 0;
      foreach( $images as $image ): ?>
        <li data-target="#parkCarousel" data-slide-to="<?php echo $slide_number;?>" class="<?php echo ($slide_number == 0)? 'active':''; ?>"></li>
        <?php
        $slide_number++;
      endforeach; ?>
    </ol>
    <!-- Wrapper for slides -->
    <aside class="carousel-inner" role="listbox">
      <?php  // loop through the rows of data
      $slide_number = 0;
      foreach( $images as $image ):?>
        <div class="item <?php echo ($slide_number == 0)? 'active':''; ?>" style="background: url('<?php echo $image['url']; ?>') no-repeat center / cover; min-height: 400px;">

        </div>
        <?php
        $slide_number++;
      endforeach; ?>
    </aside>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#parkCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#parkCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </section>
<?php else :

  // no rows found
  ?>

<?php endif;

?>

