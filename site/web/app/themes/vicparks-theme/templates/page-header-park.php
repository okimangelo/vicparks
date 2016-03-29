<?php
/**
 * Template Part for Single Park Page Header
 */
use Roots\Sage\Titles;
?>


<section id="stickyPageHeader">
    <div class="container">
        <section class="row">
            <div class="page-header">
                <h1><?= Titles\title(); ?></h1>
                <?php
                if(get_field('address'))
                    echo '<span class="address park-info"><i class="fa fa-map-marker"></i><span>'.get_field('address').'</span></span>';
                if(get_field('telephone'))
                    echo '<span class="telephone park-info"><i class="fa fa-phone"></i>'.get_field('telephone').'</span>';
                ?>
            </div>
        </section>
    </div>
</section>