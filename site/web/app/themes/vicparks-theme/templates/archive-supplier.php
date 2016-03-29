<?php
/** Loop Supplier CPT
 */

$suppliers_args = array(
    'post_type'  => 'supplier',
    'meta_key'   => 'premium_supplier',
    'orderby'    => 'meta_value_num',
    'order'      => 'ASC'
);

$suppliers = new WP_Query($suppliers_args);

       if($suppliers->have_posts()):
           echo '<section class="row">';
       while ( $suppliers->have_posts() ) : $suppliers->the_post();
           $address = get_field('address');
           $contact_name = get_field('contact_name');
           $telephone = get_field('telephone');
           $fax = get_field('fax');
           $email = get_field('email');
           $website = get_field('website');

           if(get_post_meta(get_the_ID(),'premium_supplier',true) !== 'true'):
           ?>

                   <aside class="col-md-12 premium-supplier">
                       <div class="supplier-details bg-primary clearfix">
                           <h4 class="entry-title">
                                   <?php the_title();?>
                           </h4>
                           <address class="supplier-contact-info">
                               <p><?php echo $address; ?></p>
                               <div class="row">
                                   <section class="col-sm-8">
                                       <div class="row">
                                           <span class="col-xs-6 contact-label">Contact name:</span><span class="col-xs-6"><?php echo $contact_name; ?></span>
                                           <span class="col-xs-6 contact-label">Telephone:</span><span class="col-xs-6"><?php echo $telephone; ?></span>
                                           <span class="col-xs-6 contact-label">Fax:</span><span class="col-xs-6"><?php echo $fax; ?></span>
                                           <span class="col-xs-6 contact-label">Email:</span><span class="col-xs-6"><a href="mailto: <?php echo $email; ?>"><?php echo $email; ?></a></span>
                                           <span class="col-xs-6 contact-label">Website:</span><span class="col-xs-6"><a href="<?php echo $website; ?>" target="_blank"><?php echo $website; ?></a></span>
                                       </div>
                                   </section>
                               </div>
                           </address>

                       </div>
                   </aside>

            <?php else: ?>

                   <aside class="col-sm-6 non-premium-supplier">
                       <div class="supplier-details clearfix">
                           <h4 class="entry-title">
                                   <?php the_title();?>
                           </h4>
                           <address class="supplier-contact-info">
                               <p><?php echo $address; ?></p>
                               <div class="row">
                                   <section class="col-sm-8">
                                       <div class="row">
                                           <span class="col-xs-6 contact-label">Contact name:</span><span class="col-xs-6"><?php echo $contact_name; ?></span>
                                           <span class="col-xs-6 contact-label">Telephone:</span><span class="col-xs-6"><?php echo $telephone; ?></span>
                                           <span class="col-xs-6 contact-label">Fax:</span><span class="col-xs-6"><?php echo $fax; ?></span>
                                           <span class="col-xs-6 contact-label">Email:</span><span class="col-xs-6"><a href="mailto: <?php echo $email; ?>"><?php echo $email; ?></a></span>
                                           <span class="col-xs-6 contact-label">Website:</span><span class="col-xs-6"><a href="<?php echo $website; ?>" target="_blank"><?php echo $website; ?></a></span>
                                       </div>
                                   </section>
                               </div>
                           </address>

                       </div>
                   </aside>
           <?php endif;

       endwhile;
       echo paginate_links();



       wp_reset_query();
       echo '</section>';
   endif;



