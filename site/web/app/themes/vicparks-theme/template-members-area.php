<?php
/**
 * Template Name: Page - Members Area
 */

if(is_user_logged_in()):

$current_user = wp_get_current_user();
//var_dump($current_user);

      if(in_array('member',$current_user->roles) || in_array('administrator',$current_user->roles)):
      ?>
      <div class="row">
        <?php get_template_part('templates/members/alert','notification'); ?>
      </div>
      <div class="row">
        <section class="main-members-dashboard col-md-8">
          <h3>Welcome <?php echo $current_user->user_firstname; ?></h3>
          <aside class="member-details clearfix" style="margin-bottom: 1em;">
            <?php echo do_shortcode('[upme]');?>
          </aside>

          <aside class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Bulletin Board Latest Topics</h3>
            </div>
            <div class="panel-body">
              Load Bulletin Board Latest Topics
            </div>
          </aside>
          <aside class="panel panel-default">
            <div class="panel-heading clearfix">
              <h3 class="panel-title pull-left">Information Topics</h3>
              <a href="<?php echo home_url('/information-topics/');?>" class="pull-right">View All</a>
            </div>
            <div class="panel-body">
              <?php get_template_part('templates/members/featured','information-topics'); ?>
            </div>
          </aside>
          <aside class="panel panel-default">
            <div class="panel-heading clearfix">
              <h3 class="panel-title pull-left">Association Matters</h3>
              <a href="<?php echo home_url('/association-matters/');?>" class="pull-right">View All</a>
            </div>
            <div class="panel-body">
              <?php get_template_part('templates/members/featured','association-matters'); ?>
            </div>
          </aside>
        </section>
        <aside class="member-dashboard-sidebar col-md-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Upcoming Member Events</h3>
            </div>
            <div class="panel-body">
              <?php get_template_part('templates/archive','tribe-events'); ?>
            </div>
          </div>
        </aside>



      </div>

      <?php while (have_posts()) : the_post(); ?>
        <?php get_template_part('templates/content', 'page'); ?>
      <?php endwhile;

      else:

          echo '<div class="alert alert-danger clearfix" role="alert">
                    <h4 class="text-center">You are not allowed to access this page.</h4>
                    <a class="text-center col-md-12" href="'.home_url().'">Click here if you are not redirected to the homepage.</a>
                    </div>';
          echo '<META http-equiv="refresh" content="0;URL='.home_url().'">';

      endif; //End If Admin or Member

else:
    echo '<div class="alert alert-warning clearfix" role="alert">
          <h4 class="text-center">Please login to access this page.</h4>
        </div>';
    echo do_shortcode('[upme_login]');
endif; //End IF logged in