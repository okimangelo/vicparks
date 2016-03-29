<?php
/**
 * Template Name: Page - Preferred Suppliers
 */

?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/content', 'preferred-suppliers'); ?>
<?php endwhile; ?>
