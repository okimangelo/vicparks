<div class="row featured-news-events">
  <!--Latest News-->
  <section class="col-md-4 latest-news-holder">
      <h4>Latest news</h4>
    <?php
    $latest_news = new WP_Query(array(
      'post_type' => 'post',
      'posts_per_page' => 2,

    ));
    if ( $latest_news->have_posts() ) : while ( $latest_news->have_posts() ) : $latest_news->the_post(); ?>
          <aside class="latest-news">
              <?php the_post_thumbnail('full',array('class'=>'img-responsive'));
                    the_title('<h5>','</h5>');?>
            <span class="entry-date"><?php echo get_the_date('l jS F'); ?></span>
            <?php echo content_limit(15);?>
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
    $latest_news = new WP_Query(array(
      'post_type' => 'event',
      'posts_per_page' => 4,

    ));
    if ( $latest_news->have_posts() ) : while ( $latest_news->have_posts() ) : $latest_news->the_post(); ?>
      <aside class="upcoming-event">
        <?php the_post_thumbnail('full',array('class'=>'img-responsive'));
        the_title('<h5>','</h5>');?>
        <span class="entry-date"><?php echo get_the_date('l jS F'); ?></span>
        <?php echo content_limit(40);?>
      </aside>
    <?php endwhile; else : ?>
    <?php endif;
    wp_reset_postdata();
    ?>
  </section>
</div>



<?php
wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
