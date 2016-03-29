<div class="row featured-news-events">
  <!--Latest News-->
  <section class="col-md-4 latest-news-holder">
      <h4>Latest news</h4>
    <?php
    $latest_news = new WP_Query(array(
      'posts_per_page' => 2,
      'orderby' => 'post_title',
      'order' => 'ASC',
      'category_name' => 'news'
    ));
    if ( $latest_news->have_posts() ) : while ( $latest_news->have_posts() ) : $latest_news->the_post(); ?>
          <aside class="latest-news">
            <a href="<?php the_permalink();?>">
              <?php the_post_thumbnail('full',array('class'=>'img-responsive'));
                    the_title('<h5>','</h5>');?>
            </a>
            <span class="entry-date"><?php echo get_the_date('l jS F'); ?></span>
          </aside>
    <?php endwhile; else : ?>
    <?php endif;
    wp_reset_postdata();
    ?>
  </section>
  <!-- Upcoming Events -->
  <section class="col-md-8 upcoming-events-holder">
    <h4>Upcoming Events</h4>
    <?php
    $events = new WP_Query(array(
      'posts_per_page' => 4,
      'orderby' => 'post_title',
      'order' => 'ASC',
      'category_name' => 'events'
    ));
    if ( $events->have_posts() ) : while ( $events->have_posts() ) : $events->the_post(); ?>
        <div class="row">
          <aside class="upcoming-event col-md-8">
            <?php
            the_title('<h5>','</h5>');?>
            <span class="entry-date"><?php echo get_the_date('l jS F'); ?></span>
            <?php echo content_limit(40);?>
          </aside>
          <?php the_post_thumbnail('event-thumbnails',array('class'=>'img-responsive'));?>
        </div>
    <?php endwhile; else : ?>
    <?php endif;
    wp_reset_postdata();
    ?>
  </section>
</div>



<?php
wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
