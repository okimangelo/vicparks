<?php
$current_term_id = get_queried_object()->term_id;
$current_taxonomy = get_queried_object()->taxonomy;
$current_taxonomies = get_queried_object()->taxonomies;

?>
<div class="row">
    <form role="search" method="get" id="searchform" action="<?php bloginfo('siteurl'); ?>" class="col-md-11">
        <div class="form-holder"><label class="screen-reader-text" for="s">Search for:</label>
            <input type="text" value="" name="s" id="s" class="form-control" placeholder="Search …"/>
            <input type="hidden" name="post_type" value="information-topics"/>
            <input type="hidden" name="taxonomy" value="topic-category"/>
            <input type="submit" id="searchsubmit" value="Search" class="search-submit btn btn-default"/>
        </div>
    </form>
    <div class="nav-holder pull-right">
        <a href="#menu" class="menu-link">&#9776;</a>
    </div>
</div>
<nav id="menu" class="panel-menu" role="navigation">
    <?php

    if($current_taxonomy == 'topic-category' || in_array('topic-category',$current_taxonomies)){
        get_template_part('templates/sidebar-menu/tax','information-topics');
    }


    ?>
</nav>
<script type="text/javascript">(function (e) {
        e(document).ready(function () {
            var t = new Bloodhound({
                datumTokenizer: Bloodhound.tokenizers.obj.whitespace("post_title"),
                queryTokenizer: Bloodhound.tokenizers.whitespace,
                limit: typeahead_settings.number,
                remote: typeahead_settings.ajaxurl + "?post_type=information-topics&action=typeahead&s=%QUERY&nonce=" + typeahead_settings.nonce
            });
            t.initialize(), e('input[name="s"]').typeahead({hint: !1}, {
                name: "typeahead",
                displayKey: "post_title",
                source: t.ttAdapter()
            })
        })
    })(jQuery)</script>
<script>
    jQuery(document).ready(function($) {
        $('.menu-link').bigSlide({
            side : "right",
            menuWidth : "18.625em"
        });
        console.log('archive');
    });
</script>
<?php

if ( function_exists('yoast_breadcrumb') ) {
    if(is_post_type_archive('association-matters')){
        echo '<p id="breadcrumbs" class="breadcrumb"><span xmlns:v="http://rdf.data-vocabulary.org/#"><span typeof="v:Breadcrumb"><a href="'.home_url('/member-dashboard/').'" rel="v:url" property="v:title">Members Dashboard</a> » <span class="breadcrumb_last">Association Matters</span></span></span></p>';
    } else {
        yoast_breadcrumb('<p id="breadcrumbs" class="breadcrumb">','</p>');
    }

}

?>
<div class="wrap">
    <?php
    get_template_part('templates/category', get_post_type() != 'post' ? get_post_type() : get_post_format());?>
</div>




