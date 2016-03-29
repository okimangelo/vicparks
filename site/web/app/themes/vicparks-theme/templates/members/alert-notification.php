<?php
/**
 * Template to show the Member Alert Notification as a Carousel with Fade effects
 */

$args = array( 'post_type' => 'member-notification', 'posts_per_page' => -1 );
$notifications = new WP_Query( $args );
if($notifications->have_posts()): ?>
    <section id="membersAlert" class="carousel slide carousel-fade col-md-12" data-ride="carousel" data-interval="5000" style="min-height: 100px;">
        <!-- Wrapper for slides -->
        <aside class="carousel-inner" role="listbox">
            <?php  // loop through the rows of data
            $slide_number = 0;
            while ( $notifications->have_posts() ) : $notifications->the_post(); ?>
                <div class="item <?php echo ($slide_number == 0)? 'active':''; ?>">
                    <?php
                    $hide_alert = get_field('hide_alert');
                    $alert_type = get_field('alert_type') ? get_field('alert_type'): 'alert-info';

                    echo ($hide_alert) ? '':'<div class="alert alert-dismissible '.$alert_type.'" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'.get_the_content().'</div>';
                    ?>
                </div>
                <?php
                $slide_number++;
            endwhile; ?>
        </aside>
    </section>
<?php endif;