<?php
/** Region Archive Page Template
 */

$term_id = get_queried_object()->term_id;

$premium_parks_args = array(
    'post_type' => 'park',
    'orderby' => 'title',
    'order' => 'ASC',
    'posts_per_page' => -1,
    'tax_query' => array(
        array(
            'taxonomy' => 'region',
            'field'    => 'term_id',
            'terms'    => $term_id,
            'operator' => 'IN',
        ),
    ),
    'meta_query' => array(
        array(
            'key'     => 'park_has_microsite',
            'value'   => 'true',
            'compare' => 'IN',
        ),
    ),
);



//Query Premium Members First
$premium_members = new WP_Query($premium_parks_args);


if ( $premium_members->have_posts() )
{
    while ($premium_members->have_posts())
    {
        $premium_members->the_post();
        /* Premium Members */
        ?>
        <aside class="park-content clearfix premium-park">
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
                        $park_categories = get_the_terms( get_the_ID(), 'region' );
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
}



$non_premium_parks_args = array(
    'post_type' => 'park',
    'orderby' => 'title',
    'order' => 'ASC',
    'posts_per_page' => -1,
    'tax_query' => array(
        array(
            'taxonomy' => 'region',
            'field'    => 'term_id',
            'terms'    => $term_id,
            'operator' => 'IN',
        ),
    ),
    'meta_query' => array(
        array(
            'key'     => 'park_has_microsite',
            'value'   => 'false',
            'compare' => 'IN',
        ),
    ),
);

//Query non_premium Members First
$non_premium_members = new WP_Query($non_premium_parks_args);


if ( $non_premium_members->have_posts() )
{
    while ($non_premium_members->have_posts())
    {
        $non_premium_members->the_post();
        /* non_premium Members */
        ?>
        <aside class="park-content clearfix non-premium-park">
            <div class="row">
                <div class="entry-content col-md-9">
                    <h4 class="park-name"><?php the_title(); ?></h4>
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

                    <p><?php the_content(); ?><p>
                        <?php
                        $park_categories = get_the_terms( get_the_ID(), 'region' );
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
}

