<?php
/**
 * WP Overide Functions
 */


/** Custom Mark Up for wp_list_category
 * Display or retrieve the HTML list of categories.
 *
 * @since 2.1.0
 * @since 4.4.0 Introduced the `hide_title_if_empty` and `separator` arguments. The `current_category` argument was modified to
 *              optionally accept an array of values.
 *
 * @param string|array $args {
 *     Array of optional arguments.
 *
 *     @type string       $show_option_all       Text to display for showing all categories. Default empty string.
 *     @type string       $show_option_none      Text to display for the 'no categories' option.
 *                                               Default 'No categories'.
 *     @type string       $orderby               The column to use for ordering categories. Default 'ID'.
 *     @type string       $order                 Which direction to order categories. Accepts 'ASC' or 'DESC'.
 *                                               Default 'ASC'.
 *     @type bool|int     $show_count            Whether to show how many posts are in the category. Default 0.
 *     @type bool|int     $hide_empty            Whether to hide categories that don't have any posts attached to them.
 *                                               Default 1.
 *     @type bool|int     $use_desc_for_title    Whether to use the category description as the title attribute.
 *                                               Default 1.
 *     @type string       $feed                  Text to use for the feed link. Default 'Feed for all posts filed
 *                                               under [cat name]'.
 *     @type string       $feed_type             Feed type. Used to build feed link. See {@link get_term_feed_link()}.
 *                                               Default empty string (default feed).
 *     @type string       $feed_image            URL of an image to use for the feed link. Default empty string.
 *     @type int          $child_of              Term ID to retrieve child terms of. See {@link get_terms()}. Default 0.
 *     @type array|string $exclude               Array or comma/space-separated string of term IDs to exclude.
 *                                               If `$hierarchical` is true, descendants of `$exclude` terms will also
 *                                               be excluded; see `$exclude_tree`. See {@link get_terms()}.
 *                                               Default empty string.
 *     @type array|string $exclude_tree          Array or comma/space-separated string of term IDs to exclude, along
 *                                               with their descendants. See {@link get_terms()}. Default empty string.
 *     @type bool|int     $echo                  True to echo markup, false to return it. Default 1.
 *     @type int|array    $current_category      ID of category, or array of IDs of categories, that should get the
 *                                               'current-cat' class. Default 0.
 *     @type bool         $hierarchical          Whether to include terms that have non-empty descendants.
 *                                               See {@link get_terms()}. Default true.
 *     @type string       $title_li              Text to use for the list title `<li>` element. Pass an empty string
 *                                               to disable. Default 'Categories'.
 *     @type bool         $hide_title_if_empty   Whether to hide the `$title_li` element if there are no terms in
 *                                               the list. Default false (title will always be shown).
 *     @type int          $depth                 Category depth. Used for tab indentation. Default 0.
 *     @type string       $taxonomy              Taxonomy name. Default 'category'.
 * }
 * @return false|string HTML content only if 'echo' argument is 0.
 */
function pb_wp_list_categories( $args = '' ) {
    $defaults = array(
        'show_option_all' => '', 'show_option_none' => __('No categories'),
        'orderby' => 'name', 'order' => 'ASC',
        'style' => 'list',
        'show_count' => 0, 'hide_empty' => 1,
        'use_desc_for_title' => 1, 'child_of' => 0,
        'feed' => '', 'feed_type' => '',
        'feed_image' => '', 'exclude' => '',
        'exclude_tree' => '', 'current_category' => 0,
        'hierarchical' => true, 'title_li' => __( 'Categories' ),
        'hide_title_if_empty' => false,
        'echo' => 1, 'depth' => 0,
        'separator' => '<br />',
        'taxonomy' => 'category'
    );

    $r = wp_parse_args( $args, $defaults );

    if ( !isset( $r['pad_counts'] ) && $r['show_count'] && $r['hierarchical'] )
        $r['pad_counts'] = true;

    // Descendants of exclusions should be excluded too.
    if ( true == $r['hierarchical'] ) {
        $exclude_tree = array();

        if ( $r['exclude_tree'] ) {
            $exclude_tree = array_merge( $exclude_tree, (array) $r['exclude_tree'] );
        }

        if ( $r['exclude'] ) {
            $exclude_tree = array_merge( $exclude_tree, (array) $r['exclude'] );
        }

        $r['exclude_tree'] = $exclude_tree;
        $r['exclude'] = '';
    }

    if ( ! isset( $r['class'] ) )
        $r['class'] = ( 'category' == $r['taxonomy'] ) ? 'categories' : $r['taxonomy'];

    if ( ! taxonomy_exists( $r['taxonomy'] ) ) {
        return false;
    }

    $show_option_all = $r['show_option_all'];
    $show_option_none = $r['show_option_none'];

    $categories = get_categories( $r );

    $output = '';
    if ( $r['title_li'] && 'list' == $r['style'] && ( ! empty( $categories ) || ! $r['hide_title_if_empty'] ) ) {
        $output = '<li class="' . esc_attr( $r['class'] ) . '">' . $r['title_li'] . '<ul>';
    }
    if ( empty( $categories ) ) {
        if ( ! empty( $show_option_none ) ) {
            if ( 'list' == $r['style'] ) {
                $output .= '<li class="cat-item-none">' . $show_option_none . '</li>';
            } else {
                $output .= $show_option_none;
            }
        }
    } else {
        if ( ! empty( $show_option_all ) ) {

            $posts_page = '';

            // For taxonomies that belong only to custom post types, point to a valid archive.
            $taxonomy_object = get_taxonomy( $r['taxonomy'] );
            if ( ! in_array( 'post', $taxonomy_object->object_type ) && ! in_array( 'page', $taxonomy_object->object_type ) ) {
                foreach ( $taxonomy_object->object_type as $object_type ) {
                    $_object_type = get_post_type_object( $object_type );

                    // Grab the first one.
                    if ( ! empty( $_object_type->has_archive ) ) {
                        $posts_page = get_post_type_archive_link( $object_type );
                        break;
                    }
                }
            }

            // Fallback for the 'All' link is the posts page.
            if ( ! $posts_page ) {
                if ( 'page' == get_option( 'show_on_front' ) && get_option( 'page_for_posts' ) ) {
                    $posts_page = get_permalink( get_option( 'page_for_posts' ) );
                } else {
                    $posts_page = home_url( '/' );
                }
            }

            $posts_page = esc_url( $posts_page );
            if ( 'list' == $r['style'] ) {
                $output .= "<li class='cat-item-all'><a href='$posts_page'>$show_option_all</a></li>";
            } else {
                $output .= "<a href='$posts_page'>$show_option_all</a>";
            }
        }

        if ( empty( $r['current_category'] ) && ( is_category() || is_tax() || is_tag() ) ) {
            $current_term_object = get_queried_object();
            if ( $current_term_object && $r['taxonomy'] === $current_term_object->taxonomy ) {
                $r['current_category'] = get_queried_object_id();
            }
        }

        if ( $r['hierarchical'] ) {
            $depth = $r['depth'];
        } else {
            $depth = -1; // Flat.
        }
        $output .= walk_category_tree( $categories, $depth, $r );
    }

    if ( $r['title_li'] && 'list' == $r['style'] )
        $output .= '</ul></li>';

    /**
     * Filter the HTML output of a taxonomy list.
     *
     * @since 2.1.0
     *
     * @param string $output HTML output.
     * @param array  $args   An array of taxonomy-listing arguments.
     */
    $html = apply_filters( 'wp_list_categories', $output, $args );

    if ( $r['echo'] ) {
        echo $html;
    } else {
        return $html;
    }
}