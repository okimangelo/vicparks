<?php
/**
 * Search & Filter Pro
 *
 * Results Template
 *
 *
 */

if ( $query->have_posts() )
{
	?>

	<div class="pagination">

		<div class="nav-previous"><?php next_posts_link( 'Older posts', $query->max_num_pages ); ?></div>
		<div class="nav-next"><?php previous_posts_link( 'Newer posts' ); ?></div>
		<?php
			/* example code for using the wp_pagenavi plugin */
			if (function_exists('wp_pagenavi'))
			{
				echo "<br />";
				wp_pagenavi( array( 'query' => $query ) );
			}
		?>
	</div>

	<?php
	while ($query->have_posts())
	{
		$query->the_post();

		?>
		<aside class="park-content clearfix">
      <div class="row">
      <?php
      if ( has_post_thumbnail() ) {
        echo '<div class="img-holder col-md-3">';
          the_post_thumbnail("small", array('class'=>'img-responsive'));
        echo '</div>';
      }
      ?>
        <div class="entry-content col-md-9">
          <h4 class="park-name"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
          <div class="park-info-holder">
            <?php
            if(get_field('address'))
              echo '<span class="address park-info"><i class="fa fa-map-marker"></i>'.get_field('address').'</span>';

            if(get_field('telephone'))
              echo '<span class="telephone park-info"><i class="fa fa-phone"></i>'.get_field('telephone').'</span>';

            if(get_field('email'))
              echo '<span class="email park-info"><i class="fa fa-envelope"></i><a href="mailto:'.get_field('email').'">'.get_field('email').'</a></span>';
            ?>
          </div>

          <p><?php the_excerpt(); ?><p>
         <?php
            $park_categories = get_the_terms( get_the_ID(), 'park-category' );
            if($park_categories):
              echo '<ul class="park-types">';
                foreach ($park_categories as $park_category){
                  echo ' <li><i class="fa fa-star"></i>'.$park_category->name.'</li>';
                }
              echo '</ul>';
            endif;
            ;?>


        </div>
      </div>
		</aside>
		<?php
	}
	?>

	<div class="pagination">

		<div class="nav-previous"><?php next_posts_link( 'Older posts', $query->max_num_pages ); ?></div>
		<div class="nav-next"><?php previous_posts_link( 'Newer posts' ); ?></div>
		<?php
			/* example code for using the wp_pagenavi plugin */
			if (function_exists('wp_pagenavi'))
			{
				echo "<br />";
				wp_pagenavi( array( 'query' => $query ) );
			}
		?>
	</div>
	<?php
}
else
{
	echo "No Results Found";
}
?>
