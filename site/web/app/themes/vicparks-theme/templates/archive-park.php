<?php
/** Loop Park CPT
 */

$slug = get_query_var( 'term' );
$term = get_term_by('slug',$slug,'park-category');
//Get the Theme of the Current Park Category and apply it to the Parks under it.
$theme = get_field('theme','park-category' . '_' . $term->term_id);


   if(have_posts()):
       echo '<section class="row parks-grid ">';
           while ( have_posts() ) : the_post();

               $bg_img_url = wp_get_attachment_image_src(get_post_thumbnail_id(),'full');
               $sub_heading = get_field('park_headline');
               $park_description = get_field('park_description',get_the_ID(),false);

               ?>

               <a title="<?php echo $park_description;?>" href="<?php the_permalink();?>" class="entry-content-park">
                   <aside class="hvr hvr-overline-reveal grid-content <?php echo $theme; ?>" style="background: url(<?php echo $bg_img_url[0];?>) no-repeat center/cover; min-height: 400px;">
                       <div class="content-meta-holder">
                           <div class="content-meta <?php echo $theme; ?>">
                               <h4><?php the_title();?></h4>
                                <span class="grid-footer">
                                   <p class="pull-left"><?php echo $sub_heading;?></p>
                                  <span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span>
                                </span>
                           </div>
                       </div>

                   </aside>
               </a>
                <?php
           endwhile;
           echo paginate_links();
           wp_reset_query();
   echo '</section>';
   endif;



