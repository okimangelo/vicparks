<?php
/**
 * Sage includes
 *
 * The $sage_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/sage/pull/1042
 */
$sage_includes = [
  'lib/assets.php',    // Scripts and stylesheets
  'lib/extras.php',    // Custom functions
  'lib/setup.php',     // Theme setup
  'lib/wp_bootstrap_navwalker.php',     // https://github.com/twittem/wp-bootstrap-navwalker
  'lib/titles.php',    // Page titles
  'lib/wrapper.php',   // Theme wrapper class
  'lib/customizer.php', // Theme customizer
  'lib/wp-overide-functions.php' // Theme customizer
];

foreach ($sage_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'sage'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);


function excerpt_limit($limit) {
  $excerpt = explode(' ', get_the_excerpt(), $limit);
  if (count($excerpt)>=$limit) {
    array_pop($excerpt);
    $excerpt = implode(" ",$excerpt).'...';
  } else {
    $excerpt = implode(" ",$excerpt);
  }
  $excerpt = preg_replace('`\[[^\]]*\]`','',$excerpt);
  return $excerpt;
}

function content_limit($limit) {
  remove_filter( 'the_content', 'wpautop' );
  $content = explode(' ', get_the_content(), $limit);

  if (count($content)>=$limit) {
    array_pop($content);
    $content = implode(" ",$content).'...';
  } else {
    $content = implode(" ",$content);
  }
  $content = preg_replace('/\[.+\]/','', $content);
  $content = apply_filters('the_content', $content);
  $content = str_replace(']]>', ']]&gt;', $content);
  $content .= '<a class="more-link" href="'.get_the_permalink().'">Read More</a>';
  return wpautop($content);
}

/**
 * Change the Archive Title
 */
add_filter( 'get_the_archive_title', 'change_archive_title' );

function change_archive_title($title) {
  if ( is_category() ) {
    $title = sprintf( __( 'Category: %s' ), single_cat_title( '', false ) );
  } elseif ( is_tag() ) {
    $title = sprintf( __( 'Tag: %s' ), single_tag_title( '', false ) );
  } elseif ( is_author() ) {
    $title = sprintf( __( 'Author: %s' ), '<span class="vcard">' . get_the_author() . '</span>' );
  } elseif ( is_year() ) {
    $title = sprintf( __( 'Year: %s' ), get_the_date( _x( 'Y', 'yearly archives date format' ) ) );
  } elseif ( is_month() ) {
    $title = sprintf( __( 'Month: %s' ), get_the_date( _x( 'F Y', 'monthly archives date format' ) ) );
  } elseif ( is_day() ) {
    $title = sprintf( __( 'Day: %s' ), get_the_date( _x( 'F j, Y', 'daily archives date format' ) ) );
  } elseif ( is_tax( 'post_format' ) ) {
    if ( is_tax( 'post_format', 'post-format-aside' ) ) {
      $title = _x( 'Asides', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-gallery' ) ) {
      $title = _x( 'Galleries', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-image' ) ) {
      $title = _x( 'Images', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-video' ) ) {
      $title = _x( 'Videos', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-quote' ) ) {
      $title = _x( 'Quotes', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-link' ) ) {
      $title = _x( 'Links', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-status' ) ) {
      $title = _x( 'Statuses', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-audio' ) ) {
      $title = _x( 'Audio', 'post format archive title' );
    } elseif ( is_tax( 'post_format', 'post-format-chat' ) ) {
      $title = _x( 'Chats', 'post format archive title' );
    }
  } elseif ( is_post_type_archive() ) {
    $title = post_type_archive_title( '', false );
  } elseif ( is_tax() ) {
    $tax = get_taxonomy( get_queried_object()->taxonomy );
    /* translators: 1: Taxonomy singular name, 2: Current taxonomy term */
    $title = single_term_title( '', false );
  } else {
    $title = __( 'Archives' );
  }

  return $title;
}

/** Convert Youtube URL to Embed URL
 * @param $string
 * @return mixed
 */
function convertYoutubeURL($string) {
  return preg_replace(
      "/\s*[a-zA-Z\/\/:\.]*youtu(be.com\/watch\?v=|.be\/)([a-zA-Z0-9\-_]+)([a-zA-Z0-9\/\*\-\_\?\&\;\%\=\.]*)/i",
      "<iframe style=\"margin-top: 1em;\" width=\"100%\" height=\"380\" src=\"//www.youtube.com/embed/$2\" allowfullscreen></iframe>",
      $string
  );
}

function the_breadcrumb() {

  $term_id = get_queried_object()->term_id;
  $current_taxonomy = get_queried_object()->taxonomy;
  $current_taxonomies = get_queried_object()->taxonomies;



  echo '<ul id="breadcrumbs" class="breadcrumb">';

  $member_taxonomies = array('topic-category','supplier-category');

  if (in_array($current_taxonomy,$member_taxonomies)) {
    //Members Taxonomy Pages
    echo '<li><a href="'.home_url('/member-home-page/').'">Members Home Page</a></li>';


    if(is_tax('supplier-category')) {
      echo '<li><a href="'.home_url('/preferred-suppliers/').'">Preferred Suppliers</a></li>';
    }

    if(is_tax('topic-category')) {
      echo '<li><a href="'.home_url('/information-topics/').'">Information Topics</a></li>';
    }

    echo '<li>'. get_queried_object()->name. '</li>';

  }

  else{
    //Non Taxonomy Pages
        if (!is_home()) {
          echo '<li><a href="';
          echo get_option('home');
          echo '">';
          echo 'Home';
          echo "</a></li>";
          if (is_category() || is_single()) {
            echo '<li>';
            the_category(' </li><li> ');
            if (is_single()) {
              echo "</li><li>";
              the_title();
              echo '</li>';
            }
          } elseif (is_page()) {
            echo '<li>';
            echo the_title();
            echo '</li>';
          }
        }

        elseif (is_tag()) { single_tag_title();}

        elseif (is_archive()) {
          echo 'archive';

        }
        elseif (is_day()) {echo"<li>Archive for "; the_time('F jS, Y'); echo'</li>';}
        elseif (is_month()) {echo"<li>Archive for "; the_time('F, Y'); echo'</li>';}
        elseif (is_year()) {echo"<li>Archive for "; the_time('Y'); echo'</li>';}
        elseif (is_author()) {echo"<li>Author Archive"; echo'</li>';}
        elseif (isset($_GET['paged']) && !empty($_GET['paged'])) {echo "<li>Blog Archives"; echo'</li>';}
        elseif (is_search()) {echo"<li>Search Results"; echo'</li>';}

  }

  echo '</ul>';
}
