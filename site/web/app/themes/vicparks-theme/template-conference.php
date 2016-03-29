<?php
/**
 * Template Name: Page - Conference
 */

?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/conference/content', 'main'); ?>
<?php endwhile; ?>
