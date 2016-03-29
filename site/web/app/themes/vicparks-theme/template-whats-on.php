<?php
/**
 * Template Name: Page - What's On
 */

?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/content', 'whats-on'); ?>
<?php endwhile; ?>
