# WordPress MySQL database migration
#
# Generated: Sunday 7. February 2016 06:04 UTC
# Hostname: localhost
# Database: `stage_vicparks`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_layerslider`
#

DROP TABLE IF EXISTS `wp_layerslider`;


#
# Table structure of table `wp_layerslider`
#

CREATE TABLE `wp_layerslider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(11) NOT NULL,
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_layerslider`
#
INSERT INTO `wp_layerslider` ( `id`, `author`, `name`, `slug`, `data`, `date_c`, `date_m`, `flag_hidden`, `flag_deleted`) VALUES
(1, 1, 'Full width demo slider', '', '{"properties":{"post_type":["attachment"],"post_taxonomy":"0","post_orderby":"date","post_order":"DESC","post_offset":"-1","title":"Full width demo slider","slug":"","width":"100%","height":"500px","maxwidth":"","forceresponsive":"on","responsiveunder":"1280","sublayercontainer":"1280","hideunder":"0","hideover":"100000","autostart":"on","pauseonhover":"on","firstlayer":"1","animatefirstlayer":"on","keybnav":"on","touchnav":"on","loops":"0","forceloopnum":"on","skin":"noskin","backgroundcolor":"transparent","backgroundimageId":"","backgroundimage":"","sliderfadeinduration":"350","sliderstyle":"margin-bottom: 0px;","navprevnext":"on","navstartstop":"on","navbuttons":"on","circletimer":"on","thumb_nav":"hover","thumb_container_width":"60%","thumb_width":"100","thumb_height":"60","thumb_active_opacity":"35","thumb_inactive_opacity":"100","autopauseslideshow":"auto","youtubepreview":"maxresdefault.jpg","imgpreload":"on","lazyload":"on","yourlogoId":"","yourlogo":"","yourlogostyle":"left: 10px; top: 10px;","yourlogolink":"","yourlogotarget":"_self","cbinit":"function(element) { }","cbstart":"function(data) { }","cbstop":"function(data) { }","cbpause":"function(data) { }","cbanimstart":"function(data) { }","cbanimstop":"function(data) { }","cbprev":"function(data) { }","cbnext":"function(data) { }"},"layers":[{"properties":{"post_offset":"-1","3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","backgroundId":"34","background":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/fw-1.jpg","thumbnailId":"","thumbnail":"","slidedelay":"4000","timeshift":"-1000","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Slide Image","media":"img","type":"p","imageId":"87","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/2015\\/12\\/slider1.jpg","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"0\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"5000\\",\\"delayin\\":\\"5000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":false,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"0\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"1000\\",\\"showuntil\\":\\"220\\",\\"easingout\\":\\"easeInOutQuart\\",\\"fadeout\\":false,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% top 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1.2\\",\\"scaleyout\\":\\"1.2\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{}","top":"-3px","left":"-235px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Slide Title","media":"text","type":"h1","imageId":"","image":"","html":"<aside class=\\"slider-title col-md-6 col-lg-8\\">\\r\\n        <h1><strong>Victoria<\\/strong> Cabin, <br>\\r\\n          Caravan &amp; Camping<\\/h1>\\r\\n      <\\/aside>","post_text_length":"","transition":"{\\"offsetxin\\":\\"80\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-80\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{}","top":"102px","left":"134px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"arrow left","media":"img","type":"p","imageId":"38","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/left.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"-50\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"1000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"-40\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-50\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"-40\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"#3","target":"_self","styles":"{}","top":"460px","left":"610px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"arrow right","media":"img","type":"p","imageId":"39","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/right.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"50\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"1000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"50\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"#2","target":"_self","styles":"{}","top":"460px","left":"650px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #5","media":"html","type":"p","imageId":"","image":"","html":"<div class=\\"slider-caption col-lg-3 col-md-4 bg-info\\">\\r\\n        <h3 class=\\"align-bottom\\">AHHH...<br>\\r\\n          <strong>DO YOU <br>\\r\\n            WANT SOME<br>\\r\\n            SUMMER<br>\\r\\n            SUN?<span class=\\"glyphicon glyphicon-menu-right icon-circle pull-right\\"><\\/span><\\/strong><\\/h3>\\r\\n      <\\/div>","post_text_length":"","transition":"{\\"offsetxin\\":\\"80\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-80\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{}","top":"246px","left":"869px","style":"","id":"","class":"","title":"","alt":"","rel":""}]},{"properties":{"post_offset":"-1","3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","backgroundId":"34","background":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/fw-1.jpg","thumbnailId":"","thumbnail":"","slidedelay":"4000","timeshift":"-1000","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"lamb far","media":"img","type":"p","imageId":"35","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/l1.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"300\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-300\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"-1\\"}","url":"","target":"_self","styles":"{}","top":"157px","left":"284px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"lamb middle","media":"img","type":"p","imageId":"36","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/l2.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"600\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-600\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"1\\"}","url":"","target":"_self","styles":"{}","top":"20px","left":"50%","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"lamb close","media":"img","type":"p","imageId":"37","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/l3.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"900\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-900\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"4\\"}","url":"","target":"_self","styles":"{}","top":"37px","left":"564px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"spicy parallax","media":"text","type":"p","imageId":"","image":"","html":"SPICY PARALLAX EFFECT","post_text_length":"","transition":"{\\"offsetxin\\":\\"0\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"1500\\",\\"easingin\\":\\"easeOutElastic\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"-90\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% top 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-200\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"1000\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"10\\"}","url":"","target":"_self","styles":"{\\"height\\":\\"40px\\",\\"padding-right\\":\\"10px\\",\\"padding-left\\":\\"10px\\",\\"font-family\\":\\"Lato, \\\\\'Open Sans\\\\\', sans-serif\\",\\"font-size\\":\\"30px\\",\\"line-height\\":\\"37px\\",\\"color\\":\\"#ffffff\\",\\"background\\":\\"#f04705\\",\\"border-radius\\":\\"3px\\"}","top":"170px","left":"174px","style":"font-weight: 300;","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"for main course","media":"text","type":"p","imageId":"","image":"","html":"for main course","post_text_length":"","transition":"{\\"offsetxin\\":\\"0\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"2000\\",\\"easingin\\":\\"easeOutElastic\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"90\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% top 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-400\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"8\\"}","url":"","target":"_self","styles":"{\\"font-family\\":\\"\\\\\'Indie Flower\\\\\'\\",\\"font-size\\":\\"31px\\",\\"color\\":\\"#f04705\\"}","top":"210px","left":"183px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"arrow left","media":"img","type":"p","imageId":"38","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/left.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"-50\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"1000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-50\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"3\\"}","url":"#1","target":"_self","styles":"{}","top":"430px","left":"210px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"arrow right","media":"img","type":"p","imageId":"39","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/right.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"50\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"1000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"50\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"3\\"}","url":"#3","target":"_self","styles":"{}","top":"430px","left":"250px","style":"","id":"","class":"","title":"","alt":"","rel":""}]},{"properties":{"post_offset":"-1","3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","backgroundId":"34","background":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/fw-1.jpg","thumbnailId":"","thumbnail":"","slidedelay":"4000","timeshift":"-1000","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"cake far","media":"img","type":"p","imageId":"32","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/d1.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"400\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"400\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{}","top":"129px","left":"487px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"cake close","media":"img","type":"p","imageId":"33","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/d2.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"-200\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"0\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-200\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{}","top":"104px","left":"70px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"sweet transitions","media":"text","type":"p","imageId":"","image":"","html":"SWEET TRANSITIONS","post_text_length":"","transition":"{\\"offsetxin\\":\\"0\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"1500\\",\\"easingin\\":\\"easeOutElastic\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"-90\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% top 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-400\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"1000\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{\\"height\\":\\"40px\\",\\"padding-right\\":\\"10px\\",\\"padding-left\\":\\"10px\\",\\"font-family\\":\\"Lato, \\\\\'Open Sans\\\\\', sans-serif\\",\\"font-size\\":\\"30px\\",\\"line-height\\":\\"37px\\",\\"color\\":\\"#ffffff\\",\\"background\\":\\"#544f8c\\",\\"border-radius\\":\\"3px\\"}","top":"320px","left":"830px","style":"font-weight: 300;","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"for dessert","media":"text","type":"p","imageId":"","image":"","html":"for dessert","post_text_length":"","transition":"{\\"offsetxin\\":\\"0\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"2000\\",\\"delayin\\":\\"2000\\",\\"easingin\\":\\"easeOutElastic\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"90\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% top 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-600\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"","target":"_self","styles":"{\\"font-family\\":\\"\\\\\'Indie Flower\\\\\'\\",\\"font-size\\":\\"31px\\",\\"color\\":\\"#544f8c\\"}","top":"360px","left":"836px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"arrow left","media":"img","type":"p","imageId":"38","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/left.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"-50\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"1000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"-50\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"#2","target":"_self","styles":"{}","top":"430px","left":"960px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"arrow right","media":"img","type":"p","imageId":"39","image":"http:\\/\\/vicparks.dev\\/app\\/uploads\\/layerslider\\/Full-width-demo-slider\\/right.png","html":"","post_text_length":"","transition":"{\\"offsetxin\\":\\"50\\",\\"offsetyin\\":\\"0\\",\\"durationin\\":\\"1000\\",\\"delayin\\":\\"1000\\",\\"easingin\\":\\"easeInOutQuint\\",\\"fadein\\":true,\\"rotatein\\":\\"0\\",\\"rotatexin\\":\\"0\\",\\"rotateyin\\":\\"0\\",\\"transformoriginin\\":\\"50% 50% 0\\",\\"skewxin\\":\\"0\\",\\"skewyin\\":\\"0\\",\\"scalexin\\":\\"1\\",\\"scaleyin\\":\\"1\\",\\"offsetxout\\":\\"50\\",\\"offsetyout\\":\\"0\\",\\"durationout\\":\\"400\\",\\"showuntil\\":\\"0\\",\\"easingout\\":\\"easeInOutQuint\\",\\"fadeout\\":true,\\"rotateout\\":\\"0\\",\\"rotatexout\\":\\"0\\",\\"rotateyout\\":\\"0\\",\\"transformoriginout\\":\\"50% 50% 0\\",\\"skewxout\\":\\"0\\",\\"skewyout\\":\\"0\\",\\"scalexout\\":\\"1\\",\\"scaleyout\\":\\"1\\",\\"parallaxlevel\\":\\"0\\"}","url":"#1","target":"_self","styles":"{}","top":"430px","left":"1000px","style":"","id":"","class":"","title":"","alt":"","rel":""}]}]}', 1449725970, 1451535910, 0, 0) ;

#
# End of data contents of table `wp_layerslider`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=780 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://vicparks.dev/wp', 'yes'),
(4, 'home', 'http://vicparks.dev/wp', 'yes'),
(5, 'blogname', 'VicParks', 'yes'),
(6, 'blogdescription', 'Just another WordPress site', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'admin@vicparks.dev', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '1', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'F j, Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(31, 'hack_file', '0', 'yes'),
(32, 'blog_charset', 'UTF-8', 'yes'),
(33, 'moderation_keys', '', 'no'),
(34, 'active_plugins', 'a:10:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:33:"duplicate-post/duplicate-post.php";i:4;s:39:"multiple-sidebars/multiple-sidebars.php";i:5;s:33:"pb-find-a-park/pb-find-a-park.php";i:6;s:39:"search-filter-pro/search-filter-pro.php";i:7;s:17:"wp-geo/wp-geo.php";i:8;s:31:"wp-migrate-db/wp-migrate-db.php";i:9;s:33:"wp-postratings/wp-postratings.php";}', 'yes'),
(35, 'category_base', '', 'yes'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'vicparks-theme', 'yes'),
(42, 'stylesheet', 'vicparks-theme', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '35700', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'none', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:27:"LayerSlider/layerslider.php";s:29:"layerslider_uninstall_scripts";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '6', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'site_icon', '0', 'yes'),
(90, 'medium_large_size_w', '768', 'yes'),
(91, 'medium_large_size_h', '0', 'yes'),
(92, 'initial_db_version', '35700', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;s:14:"manage_ratings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}s:25:"multiple-sidebars-default";a:0:{}s:18:"multiplesidebars74";a:1:{i:0;s:10:"archives-3";}s:13:"array_version";i:3;}', 'yes'),
(102, 'bedrock_autoloader', 'a:2:{s:7:"plugins";a:0:{}s:5:"count";i:0;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'cron', 'a:5:{i:1454829600;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454861701;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454895684;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454909422;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(118, 'auth_key', 'w8>#bb f= @|ygcV3lA]GIT#Q;iU{{fy809/=,#Ywm-aZ.VDXEhyikT`3]/ 6zI#', 'yes'),
(119, 'auth_salt', 'DHOy%h$w~hc:Nf?m>W;BLY[5I*S>j+,1n{8R_ 4Klo<[cy{^:fl}|A)$(?NnGdCo', 'yes'),
(120, 'logged_in_key', '/)N3o6c:ro2&BPxzNxo`YuDood5d[-K}G5mR-$`HL}DV7ndY?uog7M26tr7jNS*H', 'yes'),
(121, 'logged_in_salt', 'pk*Qq`]_[4U`n>Ms9b0L:%|+-th@~[>DN(($#=OuwNjsxvA*P_!A;#O?[;$kd2c7', 'yes'),
(122, 'nonce_key', '1m$f9A@_~7+zt%^,Yah80@LrbKaUM;B;Y^T#ktX(eyJiRX&19#zt%B2Xr ^=Ix]W', 'yes'),
(123, 'nonce_salt', '){d}#S]8wYjWZ*n(FgLO1Pn`qB=~GC%7^ERywSI9|qmqu i<$xkD#v2.;1hpqi7d', 'yes'),
(127, 'can_compress_scripts', '0', 'yes'),
(146, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1449639035;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(147, 'template_root', '/themes', 'yes'),
(148, 'stylesheet_root', '/themes', 'yes'),
(149, 'current_theme', 'Sage Starter Theme', 'yes'),
(150, 'theme_mods_vicparks-theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:14:"top_navigation";i:2;s:18:"primary_navigation";i:3;}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(159, 'recently_activated', 'a:1:{s:23:"geo-my-wp/geo-my-wp.php";i:1454377688;}', 'yes'),
(160, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(162, 'gform_enable_background_updates', '1', 'yes'),
(163, 'rg_form_version', '1.9.14', 'yes'),
(166, 'acf_version', '5.3.0', 'yes'),
(169, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(174, 'ls-plugin-version', '5.3.2', 'yes'),
(175, 'ls-db-version', '5.0.0', 'yes'),
(176, 'ls-installed', '1', 'yes'),
(177, 'ls-google-fonts', 'a:4:{i:0;a:2:{s:5:"param";s:28:"Lato:100,300,regular,700,900";s:5:"admin";b:0;}i:1;a:2:{s:5:"param";s:13:"Open+Sans:300";s:5:"admin";b:0;}i:2;a:2:{s:5:"param";s:20:"Indie+Flower:regular";s:5:"admin";b:0;}i:3;a:2:{s:5:"param";s:22:"Oswald:300,regular,700";s:5:"admin";b:0;}}', 'yes'),
(178, 'ls-date-installed', '1449725919', 'yes'),
(180, 'widget_layerslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'cptui_post_types', 'a:2:{s:5:"event";a:23:{s:4:"name";s:5:"event";s:5:"label";s:6:"Events";s:14:"singular_label";s:5:"Event";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:18:"dashicons-calendar";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:4:"park";a:23:{s:4:"name";s:4:"park";s:5:"label";s:5:"Parks";s:14:"singular_label";s:4:"Park";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:18:"dashicons-palmtree";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:9:"thumbnail";}s:10:"taxonomies";a:2:{i:0;s:13:"park-category";i:1;s:6:"region";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(271, 'duplicate_post_copyexcerpt', '1', 'yes'),
(272, 'duplicate_post_copyattachments', '0', 'yes'),
(273, 'duplicate_post_copychildren', '0', 'yes'),
(274, 'duplicate_post_copystatus', '0', 'yes'),
(275, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(276, 'duplicate_post_show_row', '1', 'yes'),
(277, 'duplicate_post_show_adminbar', '1', 'yes'),
(278, 'duplicate_post_show_submitbox', '1', 'yes'),
(279, 'duplicate_post_version', '2.6', 'yes'),
(346, 'widget_multiple_sidebars_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(347, 'MultipleSidebarsHome', 'multiple-sidebars-default', 'yes'),
(348, 'MultipleSidebarsSearch', 'multiple-sidebars-default', 'yes'),
(349, 'MultipleSidebarsPostDefault', 'multiple-sidebars-default', 'yes'),
(350, 'MultipleSidebarsPageDefault', 'multiple-sidebars-default', 'yes'),
(351, 'MultipleSidebarsCategoryDefault', 'multiple-sidebars-default', 'yes'),
(355, 'cptui_taxonomies', 'a:2:{s:13:"park-category";a:14:{s:4:"name";s:13:"park-category";s:5:"label";s:10:"Park Types";s:14:"singular_label";s:9:"Park Type";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:6:"labels";a:15:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";}s:12:"object_types";a:1:{i:0;s:4:"park";}}s:6:"region";a:14:{s:4:"name";s:6:"region";s:5:"label";s:6:"Region";s:14:"singular_label";s:6:"Region";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:6:"labels";a:15:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";}s:12:"object_types";a:1:{i:0;s:4:"park";}}}', 'yes'),
(391, 'park-category_5_sub_heading', '', 'no'),
(392, '_park-category_5_sub_heading', 'field_5689e00f1cd58', 'no'),
(393, 'park-category_5_background_image_url', '158', 'no'),
(394, '_park-category_5_background_image_url', 'field_5689e0161cd59', 'no'),
(395, 'park-category_5_theme', 'bg-primary', 'no'),
(396, '_park-category_5_theme', 'field_5689e06c1fd6b', 'no'),
(397, 'park-category_6_sub_heading', '', 'no'),
(398, '_park-category_6_sub_heading', 'field_5689e00f1cd58', 'no'),
(399, 'park-category_6_background_image_url', '154', 'no'),
(400, '_park-category_6_background_image_url', 'field_5689e0161cd59', 'no'),
(401, 'park-category_6_theme', 'bg-success', 'no'),
(402, '_park-category_6_theme', 'field_5689e06c1fd6b', 'no'),
(403, 'park-category_7_sub_heading', '', 'no'),
(404, '_park-category_7_sub_heading', 'field_5689e00f1cd58', 'no'),
(405, 'park-category_7_background_image_url', '152', 'no'),
(406, '_park-category_7_background_image_url', 'field_5689e0161cd59', 'no'),
(407, 'park-category_7_theme', 'bg-info', 'no'),
(408, '_park-category_7_theme', 'field_5689e06c1fd6b', 'no'),
(409, 'park-category_8_sub_heading', '', 'no'),
(410, '_park-category_8_sub_heading', 'field_5689e00f1cd58', 'no'),
(411, 'park-category_8_background_image_url', '155', 'no'),
(412, '_park-category_8_background_image_url', 'field_5689e0161cd59', 'no'),
(413, 'park-category_8_theme', 'bg-info', 'no'),
(414, '_park-category_8_theme', 'field_5689e06c1fd6b', 'no'),
(415, 'park-category_9_sub_heading', '', 'no'),
(416, '_park-category_9_sub_heading', 'field_5689e00f1cd58', 'no'),
(417, 'park-category_9_background_image_url', '156', 'no'),
(418, '_park-category_9_background_image_url', 'field_5689e0161cd59', 'no'),
(419, 'park-category_9_theme', 'bg-primary', 'no'),
(420, '_park-category_9_theme', 'field_5689e06c1fd6b', 'no'),
(421, 'park-category_10_sub_heading', '', 'no'),
(422, '_park-category_10_sub_heading', 'field_5689e00f1cd58', 'no'),
(423, 'park-category_10_background_image_url', '159', 'no'),
(424, '_park-category_10_background_image_url', 'field_5689e0161cd59', 'no'),
(425, 'park-category_10_theme', 'bg-success', 'no'),
(426, '_park-category_10_theme', 'field_5689e06c1fd6b', 'no'),
(427, 'park-category_11_sub_heading', '', 'no'),
(428, '_park-category_11_sub_heading', 'field_5689e00f1cd58', 'no'),
(429, 'park-category_11_background_image_url', '160', 'no'),
(430, '_park-category_11_background_image_url', 'field_5689e0161cd59', 'no'),
(431, 'park-category_11_theme', 'bg-success', 'no'),
(432, '_park-category_11_theme', 'field_5689e06c1fd6b', 'no'),
(433, 'park-category_12_sub_heading', '', 'no'),
(434, '_park-category_12_sub_heading', 'field_5689e00f1cd58', 'no'),
(435, 'park-category_12_background_image_url', '161', 'no'),
(436, '_park-category_12_background_image_url', 'field_5689e0161cd59', 'no'),
(437, 'park-category_12_theme', 'bg-info', 'no'),
(438, '_park-category_12_theme', 'field_5689e06c1fd6b', 'no'),
(439, 'park-category_13_sub_heading', '', 'no'),
(440, '_park-category_13_sub_heading', 'field_5689e00f1cd58', 'no'),
(441, 'park-category_13_background_image_url', '157', 'no'),
(442, '_park-category_13_background_image_url', 'field_5689e0161cd59', 'no'),
(443, 'park-category_13_theme', 'bg-primary', 'no'),
(444, '_park-category_13_theme', 'field_5689e06c1fd6b', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(514, 'widget_wppl_widget_location', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(515, 'widget_wppl_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(516, 'wppl_plugins', 'a:1:{s:10:"post_types";s:1:"1";}', 'yes'),
(519, 'gmw_pt_db_version', '1.1', 'yes'),
(520, 'wppl_fields', 'a:6:{s:10:"google_api";s:0:"";s:8:"bing_key";s:0:"";s:12:"country_code";s:0:"";s:12:"results_page";s:2:"27";s:14:"address_fields";a:1:{i:0;s:4:"park";}s:17:"mandatory_address";s:1:"1";}', 'yes'),
(521, 'wppl_shortcode', 'a:1:{i:1;a:10:{s:7:"form_id";s:1:"1";s:9:"form_type";s:5:"posts";s:12:"results_type";s:4:"both";s:14:"map_icon_usage";s:4:"same";s:9:"auto_zoom";i:1;s:8:"map_icon";s:12:"_default.png";s:18:"your_location_icon";s:12:"blue-dot.png";s:12:"locator_icon";a:1:{s:4:"icon";s:12:"blue-dot.png";}s:14:"address_fields";a:1:{s:3:"how";s:6:"single";}s:14:"keywords_field";s:4:"dont";}}', 'yes'),
(545, 'wp_geo_show_version_msg', 'Y', 'yes'),
(546, 'wp_geo_version', '3.4', 'yes'),
(547, 'wp_geo_options', 'a:36:{s:20:"show_map_type_normal";s:1:"Y";s:23:"show_map_type_satellite";s:1:"Y";s:20:"show_map_type_hybrid";s:1:"Y";s:22:"show_map_type_physical";s:1:"Y";s:14:"show_map_scale";s:1:"N";s:17:"show_map_overview";s:1:"N";s:23:"show_streetview_control";s:1:"N";s:14:"save_post_zoom";s:1:"Y";s:18:"save_post_map_type";s:1:"N";s:22:"save_post_centre_point";s:1:"N";s:14:"show_polylines";s:1:"Y";s:20:"supported_post_types";a:1:{i:0;s:4:"park";}s:17:"show_maps_on_home";s:1:"N";s:18:"show_maps_on_pages";s:1:"N";s:18:"show_maps_on_posts";s:1:"N";s:25:"show_maps_in_datearchives";s:1:"N";s:29:"show_maps_in_categoryarchives";s:1:"N";s:24:"show_maps_in_tagarchives";s:1:"N";s:24:"show_maps_in_taxarchives";s:1:"N";s:27:"show_maps_in_authorarchives";s:1:"N";s:26:"show_maps_in_searchresults";s:1:"N";s:21:"show_maps_on_excerpts";s:1:"N";s:26:"add_geo_information_to_rss";s:1:"Y";s:10:"public_api";s:12:"googlemapsv3";s:9:"admin_api";s:12:"googlemapsv3";s:14:"google_api_key";s:39:"AIzaSyBEas8zn_mx44-ze7_rXMZczQ8e20t_Vto";s:15:"google_map_type";s:12:"G_NORMAL_MAP";s:13:"show_post_map";s:4:"HIDE";s:20:"default_map_latitude";s:18:"51.492526418807465";s:21:"default_map_longitude";s:20:"-0.15754222869873047";s:17:"default_map_width";s:4:"100%";s:18:"default_map_height";s:5:"300px";s:16:"default_map_zoom";s:2:"13";s:19:"default_map_control";s:18:"GLargeMapControl3D";s:15:"polyline_colour";s:7:"#FFFFFF";s:28:"show_maps_on_customposttypes";a:1:{s:4:"park";s:1:"Y";}}', 'yes'),
(548, 'widget_wpgeo_contextual_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(549, 'widget_wpgeo_category_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(550, 'widget_wpgeo_recent_locations_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(560, 'region_15_latitude', '-37.7965826', 'no'),
(561, '_region_15_latitude', 'field_56b03fc05938c', 'no'),
(562, 'region_15_longitude', '144.9709139', 'no'),
(563, '_region_15_longitude', 'field_56b03f9f5938b', 'no'),
(564, 'region_15_map_zoom_level', '8', 'no'),
(565, '_region_15_map_zoom_level', 'field_56b041080cd29', 'no'),
(599, 'widget_search_filter_register_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(683, 'park-category_children', 'a:0:{}', 'yes'),
(687, 'category_children', 'a:0:{}', 'yes'),
(689, 'region_27_latitude', '', 'no'),
(690, '_region_27_latitude', 'field_56b03fc05938c', 'no'),
(691, 'region_27_longitude', '', 'no'),
(692, '_region_27_longitude', 'field_56b03f9f5938b', 'no'),
(693, 'region_27_map_zoom_level', '', 'no'),
(694, '_region_27_map_zoom_level', 'field_56b041080cd29', 'no'),
(695, 'region_children', 'a:0:{}', 'yes'),
(698, 'rewrite_rules', 'a:137:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:54:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:49:"category/(.+?)/(feed|rdf|rss|rss2|atom|georss)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:51:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:46:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:52:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:47:"type/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:61:"park-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:52:"index.php?park-category=$matches[1]&feed=$matches[2]";s:56:"park-category/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:52:"index.php?park-category=$matches[1]&feed=$matches[2]";s:42:"park-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?park-category=$matches[1]&paged=$matches[2]";s:24:"park-category/([^/]+)/?$";s:35:"index.php?park-category=$matches[1]";s:54:"region/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:45:"index.php?region=$matches[1]&feed=$matches[2]";s:49:"region/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:45:"index.php?region=$matches[1]&feed=$matches[2]";s:35:"region/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?region=$matches[1]&paged=$matches[2]";s:17:"region/([^/]+)/?$";s:28:"index.php?region=$matches[1]";s:33:"event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"event/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"event/([^/]+)/embed/?$";s:38:"index.php?event=$matches[1]&embed=true";s:26:"event/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:34:"event/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:41:"event/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:30:"event/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:22:"event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"event/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"park/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"park/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"park/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"park/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"park/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"park/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"park/([^/]+)/embed/?$";s:37:"index.php?park=$matches[1]&embed=true";s:25:"park/([^/]+)/trackback/?$";s:31:"index.php?park=$matches[1]&tb=1";s:33:"park/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?park=$matches[1]&paged=$matches[2]";s:40:"park/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?park=$matches[1]&cpage=$matches[2]";s:29:"park/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?park=$matches[1]&page=$matches[2]";s:21:"park/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"park/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"park/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"park/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"park/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"park/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"multiple-sidebars/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"multiple-sidebars/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:82:"multiple-sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"multiple-sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"multiple-sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"multiple-sidebars/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"multiple-sidebars/([^/]+)/embed/?$";s:50:"index.php?multiple-sidebars=$matches[1]&embed=true";s:38:"multiple-sidebars/([^/]+)/trackback/?$";s:44:"index.php?multiple-sidebars=$matches[1]&tb=1";s:46:"multiple-sidebars/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?multiple-sidebars=$matches[1]&paged=$matches[2]";s:53:"multiple-sidebars/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?multiple-sidebars=$matches[1]&cpage=$matches[2]";s:42:"multiple-sidebars/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?multiple-sidebars=$matches[1]&page=$matches[2]";s:34:"multiple-sidebars/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"multiple-sidebars/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"multiple-sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"multiple-sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"multiple-sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"multiple-sidebars/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:39:"feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:27:"index.php?&feed=$matches[1]";s:34:"(feed|rdf|rss|rss2|atom|georss)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:48:"comments/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:43:"comments/(feed|rdf|rss|rss2|atom|georss)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:51:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:46:"search/(.+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:54:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:49:"author/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:76:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:71:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|georss)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:63:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:58:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|georss)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:50:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:45:"([0-9]{4})/(feed|rdf|rss|rss2|atom|georss)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:84:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:79:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$";s:75:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:71:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:66:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:48:"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|georss)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:47:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|georss)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:42:"(.?.+?)/(feed|rdf|rss|rss2|atom|georss)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(727, 'postratings_image', 'stars', 'yes'),
(728, 'postratings_max', '5', 'yes'),
(729, 'postratings_template_vote', '%RATINGS_IMAGES_VOTE% (<strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%)<br />%RATINGS_TEXT%', 'yes'),
(730, 'postratings_template_text', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%, <strong>rated</strong></em>)', 'yes'),
(731, 'postratings_template_none', '%RATINGS_IMAGES_VOTE% (No Ratings Yet)<br />%RATINGS_TEXT%', 'yes'),
(732, 'postratings_logging_method', '3', 'yes'),
(733, 'postratings_allowtorate', '2', 'yes'),
(734, 'postratings_ratingstext', 'a:5:{i:0;s:6:"1 Star";i:1;s:7:"2 Stars";i:2;s:7:"3 Stars";i:3;s:7:"4 Stars";i:4;s:7:"5 Stars";}', 'yes'),
(735, 'postratings_template_highestrated', '<li><a href="%POST_URL%" title="%POST_TITLE%">%POST_TITLE%</a> %RATINGS_IMAGES% (%RATINGS_AVERAGE% out of %RATINGS_MAX%)</li>', 'yes'),
(736, 'postratings_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(737, 'postratings_ratingsvalue', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}', 'yes'),
(738, 'postratings_customrating', '0', 'yes'),
(739, 'postratings_template_permission', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%</em>)<br /><em>You need to be a registered member to rate this post.</em>', 'yes'),
(740, 'postratings_template_mostrated', '<li><a href="%POST_URL%"  title="%POST_TITLE%">%POST_TITLE%</a> - %RATINGS_USERS% votes</li>', 'yes'),
(741, 'widget_ratings-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_places_locator`
#

DROP TABLE IF EXISTS `wp_places_locator`;


#
# Table structure of table `wp_places_locator`
#

CREATE TABLE `wp_places_locator` (
  `post_id` bigint(30) NOT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0',
  `post_status` varchar(20) NOT NULL,
  `post_type` varchar(20) DEFAULT 'post',
  `post_title` text,
  `lat` float(10,6) NOT NULL,
  `long` float(10,6) NOT NULL,
  `street` varchar(128) NOT NULL,
  `apt` varchar(50) NOT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(50) NOT NULL,
  `state_long` varchar(128) NOT NULL,
  `zipcode` varchar(40) NOT NULL,
  `country` varchar(50) NOT NULL,
  `country_long` varchar(128) NOT NULL,
  `address` varchar(255) NOT NULL,
  `formatted_address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `map_icon` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_places_locator`
#
INSERT INTO `wp_places_locator` ( `post_id`, `feature`, `post_status`, `post_type`, `post_title`, `lat`, `long`, `street`, `apt`, `city`, `state`, `state_long`, `zipcode`, `country`, `country_long`, `address`, `formatted_address`, `phone`, `fax`, `email`, `website`, `map_icon`) VALUES
(135, 0, 'publish', 'park', 'Airport Tourist Village Melbourne', '-37.672913', '144.887436', '37 Ardlie Street', '', 'Attwood', 'VIC', 'Victoria', '3049', 'AU', 'Australia', '37 Ardlie Street  Attwood  VIC 3049 ', '37 Ardlie St, Attwood VIC 3049, Australia', '', '', '', '', '_default.png') ;

#
# End of data contents of table `wp_places_locator`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://vicparks.dev/'),
(10, 4, '_menu_item_orphaned', '1449711628'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1449711628'),
(20, 6, '_edit_last', '1'),
(21, 6, '_edit_lock', '1454564578:1'),
(22, 6, '_wp_page_template', 'template-home.php'),
(23, 2, '_edit_lock', '1451530027:1'),
(24, 2, '_edit_last', '1'),
(25, 9, '_edit_last', '1'),
(26, 9, '_wp_page_template', 'default'),
(27, 9, '_edit_lock', '1449711587:1'),
(28, 11, '_edit_last', '1'),
(29, 11, '_wp_page_template', 'default'),
(30, 11, '_edit_lock', '1449711598:1'),
(31, 13, '_edit_last', '1'),
(32, 13, '_edit_lock', '1449711610:1'),
(33, 13, '_wp_page_template', 'default'),
(34, 15, '_edit_last', '1'),
(35, 15, '_wp_page_template', 'default'),
(36, 15, '_edit_lock', '1449711697:1'),
(37, 17, '_menu_item_type', 'custom'),
(38, 17, '_menu_item_menu_item_parent', '0'),
(39, 17, '_menu_item_object_id', '17'),
(40, 17, '_menu_item_object', 'custom'),
(41, 17, '_menu_item_target', ''),
(42, 17, '_menu_item_classes', 'a:1:{i:0;s:9:"icon-home";}'),
(43, 17, '_menu_item_xfn', ''),
(44, 17, '_menu_item_url', 'http://vicparks.dev/'),
(46, 18, '_menu_item_type', 'post_type'),
(47, 18, '_menu_item_menu_item_parent', '0'),
(48, 18, '_menu_item_object_id', '15'),
(49, 18, '_menu_item_object', 'page'),
(50, 18, '_menu_item_target', ''),
(51, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 18, '_menu_item_xfn', ''),
(53, 18, '_menu_item_url', ''),
(55, 19, '_menu_item_type', 'post_type'),
(56, 19, '_menu_item_menu_item_parent', '0'),
(57, 19, '_menu_item_object_id', '11'),
(58, 19, '_menu_item_object', 'page'),
(59, 19, '_menu_item_target', ''),
(60, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 19, '_menu_item_xfn', ''),
(62, 19, '_menu_item_url', ''),
(64, 20, '_menu_item_type', 'post_type'),
(65, 20, '_menu_item_menu_item_parent', '0'),
(66, 20, '_menu_item_object_id', '9'),
(67, 20, '_menu_item_object', 'page'),
(68, 20, '_menu_item_target', ''),
(69, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 20, '_menu_item_xfn', ''),
(71, 20, '_menu_item_url', ''),
(73, 21, '_menu_item_type', 'post_type'),
(74, 21, '_menu_item_menu_item_parent', '0'),
(75, 21, '_menu_item_object_id', '13'),
(76, 21, '_menu_item_object', 'page'),
(77, 21, '_menu_item_target', ''),
(78, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 21, '_menu_item_xfn', ''),
(80, 21, '_menu_item_url', ''),
(82, 22, '_menu_item_type', 'post_type'),
(83, 22, '_menu_item_menu_item_parent', '0'),
(84, 22, '_menu_item_object_id', '2'),
(85, 22, '_menu_item_object', 'page'),
(86, 22, '_menu_item_target', ''),
(87, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 22, '_menu_item_xfn', ''),
(89, 22, '_menu_item_url', ''),
(91, 23, '_edit_last', '1'),
(92, 23, '_wp_page_template', 'default'),
(93, 23, '_edit_lock', '1449715044:1'),
(94, 25, '_edit_last', '1'),
(95, 25, '_wp_page_template', 'default'),
(96, 25, '_edit_lock', '1449715055:1'),
(97, 27, '_edit_last', '1'),
(98, 27, '_wp_page_template', 'template-find-a-park.php'),
(99, 27, '_edit_lock', '1454467212:1'),
(100, 29, '_menu_item_type', 'post_type'),
(101, 29, '_menu_item_menu_item_parent', '0'),
(102, 29, '_menu_item_object_id', '27'),
(103, 29, '_menu_item_object', 'page'),
(104, 29, '_menu_item_target', ''),
(105, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 29, '_menu_item_xfn', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(107, 29, '_menu_item_url', ''),
(109, 30, '_menu_item_type', 'post_type'),
(110, 30, '_menu_item_menu_item_parent', '0'),
(111, 30, '_menu_item_object_id', '25'),
(112, 30, '_menu_item_object', 'page'),
(113, 30, '_menu_item_target', ''),
(114, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 30, '_menu_item_xfn', ''),
(116, 30, '_menu_item_url', ''),
(118, 31, '_menu_item_type', 'post_type'),
(119, 31, '_menu_item_menu_item_parent', '0'),
(120, 31, '_menu_item_object_id', '23'),
(121, 31, '_menu_item_object', 'page'),
(122, 31, '_menu_item_target', ''),
(123, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 31, '_menu_item_xfn', ''),
(125, 31, '_menu_item_url', ''),
(127, 32, '_wp_attached_file', 'layerslider/Full-width-demo-slider/d1.png'),
(128, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:366;s:6:"height";i:183;s:4:"file";s:41:"layerslider/Full-width-demo-slider/d1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"d1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"d1-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(129, 33, '_wp_attached_file', 'layerslider/Full-width-demo-slider/d2.png'),
(130, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:577;s:6:"height";i:404;s:4:"file";s:41:"layerslider/Full-width-demo-slider/d2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"d2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"d2-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(131, 34, '_wp_attached_file', 'layerslider/Full-width-demo-slider/fw-1.jpg'),
(132, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2560;s:6:"height";i:600;s:4:"file";s:43:"layerslider/Full-width-demo-slider/fw-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"fw-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"fw-1-300x70.jpg";s:5:"width";i:300;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"fw-1-768x180.jpg";s:5:"width";i:768;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"fw-1-1024x240.jpg";s:5:"width";i:1024;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(133, 35, '_wp_attached_file', 'layerslider/Full-width-demo-slider/l1.png'),
(134, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:368;s:6:"height";i:223;s:4:"file";s:41:"layerslider/Full-width-demo-slider/l1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"l1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"l1-300x182.png";s:5:"width";i:300;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(135, 36, '_wp_attached_file', 'layerslider/Full-width-demo-slider/l2.png'),
(136, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:651;s:6:"height";i:481;s:4:"file";s:41:"layerslider/Full-width-demo-slider/l2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"l2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"l2-300x222.png";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(137, 37, '_wp_attached_file', 'layerslider/Full-width-demo-slider/l3.png'),
(138, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:717;s:6:"height";i:481;s:4:"file";s:41:"layerslider/Full-width-demo-slider/l3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"l3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"l3-300x201.png";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(139, 38, '_wp_attached_file', 'layerslider/Full-width-demo-slider/left.png'),
(140, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:20;s:6:"height";i:20;s:4:"file";s:43:"layerslider/Full-width-demo-slider/left.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(141, 39, '_wp_attached_file', 'layerslider/Full-width-demo-slider/right.png'),
(142, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:20;s:6:"height";i:20;s:4:"file";s:44:"layerslider/Full-width-demo-slider/right.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(143, 40, '_wp_attached_file', 'layerslider/Full-width-demo-slider/s1.jpg'),
(144, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:388;s:6:"height";i:258;s:4:"file";s:41:"layerslider/Full-width-demo-slider/s1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"s1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"s1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(145, 41, '_wp_attached_file', 'layerslider/Full-width-demo-slider/s1.png'),
(146, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2144;s:6:"height";i:227;s:4:"file";s:41:"layerslider/Full-width-demo-slider/s1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"s1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"s1-300x32.png";s:5:"width";i:300;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"s1-768x81.png";s:5:"width";i:768;s:6:"height";i:81;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:15:"s1-1024x108.png";s:5:"width";i:1024;s:6:"height";i:108;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(147, 42, '_wp_attached_file', 'layerslider/Full-width-demo-slider/s2.jpg'),
(148, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:296;s:6:"height";i:206;s:4:"file";s:41:"layerslider/Full-width-demo-slider/s2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"s2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(149, 43, '_wp_attached_file', 'layerslider/Full-width-demo-slider/s2.png'),
(150, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2498;s:6:"height";i:272;s:4:"file";s:41:"layerslider/Full-width-demo-slider/s2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"s2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"s2-300x33.png";s:5:"width";i:300;s:6:"height";i:33;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"s2-768x84.png";s:5:"width";i:768;s:6:"height";i:84;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:15:"s2-1024x112.png";s:5:"width";i:1024;s:6:"height";i:112;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(151, 48, '_wp_attached_file', '2015/12/slider-family.png'),
(152, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:497;s:4:"file";s:25:"2015/12/slider-family.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"slider-family-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"slider-family-300x83.png";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"slider-family-768x212.png";s:5:"width";i:768;s:6:"height";i:212;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"slider-family-1024x283.png";s:5:"width";i:1024;s:6:"height";i:283;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(153, 50, '_wp_attached_file', '2015/12/placeholder-featured-park.png'),
(154, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:346;s:6:"height";i:279;s:4:"file";s:37:"2015/12/placeholder-featured-park.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"placeholder-featured-park-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"placeholder-featured-park-300x242.png";s:5:"width";i:300;s:6:"height";i:242;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(155, 51, '_wp_attached_file', '2015/12/region-selector.png'),
(156, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:772;s:4:"file";s:27:"2015/12/region-selector.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"region-selector-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"region-selector-300x129.png";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:27:"region-selector-768x329.png";s:5:"width";i:768;s:6:"height";i:329;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:28:"region-selector-1024x439.png";s:5:"width";i:1024;s:6:"height";i:439;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(157, 53, '_wp_attached_file', '2015/12/placeholder-featured-one.png'),
(158, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:602;s:6:"height";i:402;s:4:"file";s:36:"2015/12/placeholder-featured-one.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"placeholder-featured-one-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:36:"placeholder-featured-one-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(159, 54, '_wp_attached_file', '2015/12/placeholder-featured-three.png'),
(160, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:599;s:6:"height";i:401;s:4:"file";s:38:"2015/12/placeholder-featured-three.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"placeholder-featured-three-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:38:"placeholder-featured-three-300x201.png";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(161, 55, '_wp_attached_file', '2015/12/placeholder-featured-two.png'),
(162, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:603;s:6:"height";i:402;s:4:"file";s:36:"2015/12/placeholder-featured-two.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"placeholder-featured-two-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:36:"placeholder-featured-two-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(163, 56, '_wp_attached_file', '2015/12/placeholder-latest-news-one.png'),
(164, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:194;s:4:"file";s:39:"2015/12/placeholder-latest-news-one.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"placeholder-latest-news-one-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"placeholder-latest-news-one-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(165, 57, '_wp_attached_file', '2015/12/placeholder-latest-news-two.png'),
(166, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:194;s:4:"file";s:39:"2015/12/placeholder-latest-news-two.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"placeholder-latest-news-two-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"placeholder-latest-news-two-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(167, 58, '_edit_last', '1'),
(168, 58, '_edit_lock', '1454553175:1'),
(169, 58, '_thumbnail_id', '57'),
(174, 60, '_edit_last', '1'),
(175, 60, '_edit_lock', '1450396927:1'),
(176, 60, '_thumbnail_id', '56'),
(182, 63, '_edit_last', '1'),
(183, 63, '_edit_lock', '1450403208:1'),
(184, 64, '_edit_last', '1'),
(185, 64, '_edit_lock', '1450403326:1'),
(186, 64, '_dp_original', '63'),
(187, 65, '_edit_last', '1'),
(188, 65, '_edit_lock', '1450403485:1'),
(190, 65, '_dp_original', '64'),
(191, 66, '_edit_last', '1'),
(192, 66, '_edit_lock', '1450403494:1'),
(194, 66, '_dp_original', '65'),
(195, 67, '_edit_last', '1'),
(196, 67, '_edit_lock', '1450403505:1'),
(197, 67, '_dp_original', '63'),
(198, 69, '_edit_last', '1'),
(199, 69, '_edit_lock', '1451530290:1'),
(200, 71, 'page_sub_title', 'Sub Title Why Join'),
(201, 71, '_page_sub_title', 'field_5684942256ad3'),
(202, 2, 'page_sub_title', 'Sub Title Why Join'),
(203, 2, '_page_sub_title', 'field_5684942256ad3'),
(204, 72, 'page_sub_title', 'Sub Title Why Join'),
(205, 72, '_page_sub_title', 'field_5684942256ad3'),
(206, 73, 'page_sub_title', 'Sub Title Why Join'),
(207, 73, '_page_sub_title', 'field_5684942256ad3'),
(208, 74, '_edit_last', '1'),
(209, 74, '_edit_lock', '1451529889:1'),
(210, 2, 'MultipleSidebars', 'multiplesidebars74,'),
(221, 85, 'banner_heading', 'Welcome to VicParks - fabulous holidays in the best locations'),
(222, 85, '_banner_heading', 'field_5684aa58c8883'),
(223, 85, 'slides', '0'),
(224, 85, '_slides', 'field_5684a9ab6b84f'),
(225, 85, 'region_background_image', ''),
(226, 85, '_region_background_image', 'field_5684aa8b716f1'),
(227, 6, 'MultipleSidebars', 'multiple-sidebars-default'),
(228, 6, 'banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(229, 6, '_banner_heading', 'field_5684aa58c8883'),
(230, 6, 'slides', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(231, 6, '_slides', 'field_5684a9ab6b84f'),
(232, 6, 'region_background_image', '92'),
(233, 6, '_region_background_image', 'field_5684aa8b716f1'),
(234, 86, 'banner_heading', 'Welcome to VicParks - fabulous holidays in the best locations'),
(235, 86, '_banner_heading', 'field_5684aa58c8883'),
(236, 86, 'slides_0_slide_image', ''),
(237, 86, '_slides_0_slide_image', 'field_5684a9c16b850'),
(238, 86, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>DO YOU\r\nWANT SOME\r\nSUMMER\r\nSUN?</strong></h3>'),
(239, 86, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(240, 86, 'slides', '1'),
(241, 86, '_slides', 'field_5684a9ab6b84f'),
(242, 86, 'region_background_image', ''),
(243, 86, '_region_background_image', 'field_5684aa8b716f1'),
(244, 6, 'slides_0_slide_image', '87'),
(245, 6, '_slides_0_slide_image', 'field_5684a9c16b850'),
(246, 6, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>'),
(247, 6, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(248, 87, '_wp_attached_file', '2015/12/slider1.jpg'),
(249, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:500;s:4:"file";s:19:"2015/12/slider1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider1-300x83.jpg";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider1-768x213.jpg";s:5:"width";i:768;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slider1-1024x284.jpg";s:5:"width";i:1024;s:6:"height";i:284;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(250, 88, '_wp_attached_file', '2015/12/slider2.jpg'),
(251, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:500;s:4:"file";s:19:"2015/12/slider2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider2-300x83.jpg";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider2-768x213.jpg";s:5:"width";i:768;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"slider2-1024x284.jpg";s:5:"width";i:1024;s:6:"height";i:284;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(252, 89, '_wp_attached_file', '2015/12/Slider3.jpg'),
(253, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:500;s:4:"file";s:19:"2015/12/Slider3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Slider3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Slider3-300x83.jpg";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Slider3-768x213.jpg";s:5:"width";i:768;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"Slider3-1024x284.jpg";s:5:"width";i:1024;s:6:"height";i:284;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(254, 90, 'banner_heading', 'Welcome to VicParks - fabulous holidays in the best locations'),
(255, 90, '_banner_heading', 'field_5684aa58c8883'),
(256, 90, 'slides_0_slide_image', '87'),
(257, 90, '_slides_0_slide_image', 'field_5684a9c16b850'),
(258, 90, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>'),
(259, 90, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(260, 90, 'slides_1_slide_image', '88'),
(261, 90, '_slides_1_slide_image', 'field_5684a9c16b850'),
(262, 90, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(263, 90, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(264, 90, 'slides_2_slide_image', '89'),
(265, 90, '_slides_2_slide_image', 'field_5684a9c16b850'),
(266, 90, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(267, 90, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(268, 90, 'slides', '3'),
(269, 90, '_slides', 'field_5684a9ab6b84f'),
(270, 90, 'region_background_image', ''),
(271, 90, '_region_background_image', 'field_5684aa8b716f1'),
(280, 91, 'banner_heading', 'Welcome to VicParks - fabulous holidays in the best locations'),
(281, 91, '_banner_heading', 'field_5684aa58c8883'),
(282, 91, 'slides_0_slide_image', '87'),
(283, 91, '_slides_0_slide_image', 'field_5684a9c16b850'),
(284, 91, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(285, 91, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(286, 91, 'slides_1_slide_image', '88'),
(287, 91, '_slides_1_slide_image', 'field_5684a9c16b850'),
(288, 91, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(289, 91, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(290, 91, 'slides_2_slide_image', '89'),
(291, 91, '_slides_2_slide_image', 'field_5684a9c16b850'),
(292, 91, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(293, 91, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(294, 91, 'slides', '3'),
(295, 91, '_slides', 'field_5684a9ab6b84f'),
(296, 91, 'region_background_image', ''),
(297, 91, '_region_background_image', 'field_5684aa8b716f1'),
(298, 92, '_wp_attached_file', '2015/12/Choose-your-region.jpg'),
(299, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:700;s:4:"file";s:30:"2015/12/Choose-your-region.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Choose-your-region-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"Choose-your-region-300x105.jpg";s:5:"width";i:300;s:6:"height";i:105;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"Choose-your-region-768x269.jpg";s:5:"width";i:768;s:6:"height";i:269;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"Choose-your-region-1024x358.jpg";s:5:"width";i:1024;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(300, 93, 'banner_heading', 'Welcome to VicParks - fabulous holidays in the best locations'),
(301, 93, '_banner_heading', 'field_5684aa58c8883'),
(302, 93, 'slides_0_slide_image', '87'),
(303, 93, '_slides_0_slide_image', 'field_5684a9c16b850'),
(304, 93, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(305, 93, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(306, 93, 'slides_1_slide_image', '88'),
(307, 93, '_slides_1_slide_image', 'field_5684a9c16b850'),
(308, 93, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(309, 93, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(310, 93, 'slides_2_slide_image', '89'),
(311, 93, '_slides_2_slide_image', 'field_5684a9c16b850'),
(312, 93, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(313, 93, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(314, 93, 'slides', '3'),
(315, 93, '_slides', 'field_5684a9ab6b84f'),
(316, 93, 'region_background_image', '92'),
(317, 93, '_region_background_image', 'field_5684aa8b716f1'),
(319, 95, 'banner_heading', 'Welcome to VicParks - fabulous holidays in the best locations'),
(320, 95, '_banner_heading', 'field_5684aa58c8883'),
(321, 95, 'slides_0_slide_image', '87'),
(322, 95, '_slides_0_slide_image', 'field_5684a9c16b850'),
(323, 95, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(324, 95, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(325, 95, 'slides_0_slide_link', '11'),
(326, 95, '_slides_0_slide_link', 'field_5684c2a73878a'),
(327, 95, 'slides_1_slide_image', '88'),
(328, 95, '_slides_1_slide_image', 'field_5684a9c16b850'),
(329, 95, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(330, 95, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(331, 95, 'slides_1_slide_link', '63'),
(332, 95, '_slides_1_slide_link', 'field_5684c2a73878a'),
(333, 95, 'slides_2_slide_image', '89'),
(334, 95, '_slides_2_slide_image', 'field_5684a9c16b850'),
(335, 95, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(336, 95, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(337, 95, 'slides_2_slide_link', '58'),
(338, 95, '_slides_2_slide_link', 'field_5684c2a73878a'),
(339, 95, 'slides', '3') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(340, 95, '_slides', 'field_5684a9ab6b84f'),
(341, 95, 'region_background_image', '92'),
(342, 95, '_region_background_image', 'field_5684aa8b716f1'),
(343, 6, 'slides_0_slide_link', '11'),
(344, 6, '_slides_0_slide_link', 'field_5684c2a73878a'),
(349, 96, 'banner_heading', ' <h1><strong>Victoria</strong> Cabin, <br>Caravan & Camping</h1>'),
(350, 96, '_banner_heading', 'field_5684aa58c8883'),
(351, 96, 'slides_0_slide_image', '87'),
(352, 96, '_slides_0_slide_image', 'field_5684a9c16b850'),
(353, 96, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(354, 96, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(355, 96, 'slides_0_slide_link', '11'),
(356, 96, '_slides_0_slide_link', 'field_5684c2a73878a'),
(357, 96, 'slides_1_slide_image', '88'),
(358, 96, '_slides_1_slide_image', 'field_5684a9c16b850'),
(359, 96, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(360, 96, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(361, 96, 'slides_1_slide_link', '63'),
(362, 96, '_slides_1_slide_link', 'field_5684c2a73878a'),
(363, 96, 'slides_2_slide_image', '89'),
(364, 96, '_slides_2_slide_image', 'field_5684a9c16b850'),
(365, 96, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(366, 96, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(367, 96, 'slides_2_slide_link', '58'),
(368, 96, '_slides_2_slide_link', 'field_5684c2a73878a'),
(369, 96, 'slides', '3'),
(370, 96, '_slides', 'field_5684a9ab6b84f'),
(371, 96, 'region_background_image', '92'),
(372, 96, '_region_background_image', 'field_5684aa8b716f1'),
(374, 98, 'banner_heading', '<h1><strong>Victoria</strong> Cabin, <br>Caravan & Camping</h1>'),
(375, 98, '_banner_heading', 'field_5684aa58c8883'),
(376, 98, 'banner_heading_text_color', '#ffffff'),
(377, 98, '_banner_heading_text_color', 'field_5684c4a397c4f'),
(378, 98, 'slides_0_slide_image', '87'),
(379, 98, '_slides_0_slide_image', 'field_5684a9c16b850'),
(380, 98, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(381, 98, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(382, 98, 'slides_0_slide_link', '11'),
(383, 98, '_slides_0_slide_link', 'field_5684c2a73878a'),
(384, 98, 'slides_1_slide_image', '88'),
(385, 98, '_slides_1_slide_image', 'field_5684a9c16b850'),
(386, 98, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(387, 98, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(388, 98, 'slides_1_slide_link', '63'),
(389, 98, '_slides_1_slide_link', 'field_5684c2a73878a'),
(390, 98, 'slides_2_slide_image', '89'),
(391, 98, '_slides_2_slide_image', 'field_5684a9c16b850'),
(392, 98, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(393, 98, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(394, 98, 'slides_2_slide_link', '58'),
(395, 98, '_slides_2_slide_link', 'field_5684c2a73878a'),
(396, 98, 'slides', '3'),
(397, 98, '_slides', 'field_5684a9ab6b84f'),
(398, 98, 'region_background_image', '92'),
(399, 98, '_region_background_image', 'field_5684aa8b716f1'),
(400, 6, 'banner_heading_text_color', '#ffffff'),
(401, 6, '_banner_heading_text_color', 'field_5684c4a397c4f'),
(402, 99, 'banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(403, 99, '_banner_heading', 'field_5684aa58c8883'),
(404, 99, 'banner_heading_text_color', '#ffffff'),
(405, 99, '_banner_heading_text_color', 'field_5684c4a397c4f'),
(406, 99, 'slides_0_slide_image', '87'),
(407, 99, '_slides_0_slide_image', 'field_5684a9c16b850'),
(408, 99, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(409, 99, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(410, 99, 'slides_0_slide_link', '11'),
(411, 99, '_slides_0_slide_link', 'field_5684c2a73878a'),
(412, 99, 'slides_1_slide_image', '88'),
(413, 99, '_slides_1_slide_image', 'field_5684a9c16b850'),
(414, 99, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(415, 99, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(416, 99, 'slides_1_slide_link', '63'),
(417, 99, '_slides_1_slide_link', 'field_5684c2a73878a'),
(418, 99, 'slides_2_slide_image', '89'),
(419, 99, '_slides_2_slide_image', 'field_5684a9c16b850'),
(420, 99, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(421, 99, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(422, 99, 'slides_2_slide_link', '58'),
(423, 99, '_slides_2_slide_link', 'field_5684c2a73878a'),
(424, 99, 'slides', '3'),
(425, 99, '_slides', 'field_5684a9ab6b84f'),
(426, 99, 'region_background_image', '92'),
(427, 99, '_region_background_image', 'field_5684aa8b716f1'),
(430, 102, 'slides_0_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(431, 102, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(432, 102, 'slides_0_slide_image', '87'),
(433, 102, '_slides_0_slide_image', 'field_5684a9c16b850'),
(434, 102, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(435, 102, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(436, 102, 'slides_0_slide_link', '11'),
(437, 102, '_slides_0_slide_link', 'field_5684c2a73878a'),
(438, 102, 'slides_0_banner_heading_text_color', '#004b9b'),
(439, 102, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(440, 102, 'slides_1_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(441, 102, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(442, 102, 'slides_1_slide_image', '88'),
(443, 102, '_slides_1_slide_image', 'field_5684a9c16b850'),
(444, 102, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(445, 102, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(446, 102, 'slides_1_slide_link', '63') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(447, 102, '_slides_1_slide_link', 'field_5684c2a73878a'),
(448, 102, 'slides_1_banner_heading_text_color', '#004b9b'),
(449, 102, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(450, 102, 'slides_2_banner_heading', ''),
(451, 102, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(452, 102, 'slides_2_slide_image', '89'),
(453, 102, '_slides_2_slide_image', 'field_5684a9c16b850'),
(454, 102, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(455, 102, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(456, 102, 'slides_2_slide_link', '58'),
(457, 102, '_slides_2_slide_link', 'field_5684c2a73878a'),
(458, 102, 'slides_2_banner_heading_text_color', '#004b9b'),
(459, 102, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(460, 102, 'slides', '3'),
(461, 102, '_slides', 'field_5684a9ab6b84f'),
(462, 102, 'region_background_image', '92'),
(463, 102, '_region_background_image', 'field_5684aa8b716f1'),
(464, 6, 'slides_0_banner_heading', 'Welcome to <br><strong>VicParks</strong> - fabulous <br>holidays in the best locations'),
(465, 6, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(466, 6, 'slides_0_banner_heading_text_color', '#ffffff'),
(467, 6, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(476, 103, 'slides_0_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(477, 103, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(478, 103, 'slides_0_banner_heading_text_color', '#004b9b'),
(479, 103, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(480, 103, 'slides_0_slide_image', '87'),
(481, 103, '_slides_0_slide_image', 'field_5684a9c16b850'),
(482, 103, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(483, 103, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(484, 103, 'slides_0_slide_link', '11'),
(485, 103, '_slides_0_slide_link', 'field_5684c2a73878a'),
(486, 103, 'slides_1_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(487, 103, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(488, 103, 'slides_1_banner_heading_text_color', '#004b9b'),
(489, 103, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(490, 103, 'slides_1_slide_image', '88'),
(491, 103, '_slides_1_slide_image', 'field_5684a9c16b850'),
(492, 103, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(493, 103, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(494, 103, 'slides_1_slide_link', '63'),
(495, 103, '_slides_1_slide_link', 'field_5684c2a73878a'),
(496, 103, 'slides_2_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(497, 103, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(498, 103, 'slides_2_banner_heading_text_color', '#004b9b'),
(499, 103, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(500, 103, 'slides_2_slide_image', '89'),
(501, 103, '_slides_2_slide_image', 'field_5684a9c16b850'),
(502, 103, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(503, 103, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(504, 103, 'slides_2_slide_link', '58'),
(505, 103, '_slides_2_slide_link', 'field_5684c2a73878a'),
(506, 103, 'slides', '3'),
(507, 103, '_slides', 'field_5684a9ab6b84f'),
(508, 103, 'region_background_image', '92'),
(509, 103, '_region_background_image', 'field_5684aa8b716f1'),
(510, 104, 'slides_0_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(511, 104, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(512, 104, 'slides_0_banner_heading_text_color', '#ffffff'),
(513, 104, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(514, 104, 'slides_0_slide_image', '87'),
(515, 104, '_slides_0_slide_image', 'field_5684a9c16b850'),
(516, 104, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(517, 104, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(518, 104, 'slides_0_slide_link', '11'),
(519, 104, '_slides_0_slide_link', 'field_5684c2a73878a'),
(520, 104, 'slides_1_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(521, 104, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(522, 104, 'slides_1_banner_heading_text_color', '#004b9b'),
(523, 104, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(524, 104, 'slides_1_slide_image', '88'),
(525, 104, '_slides_1_slide_image', 'field_5684a9c16b850'),
(526, 104, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(527, 104, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(528, 104, 'slides_1_slide_link', '63'),
(529, 104, '_slides_1_slide_link', 'field_5684c2a73878a'),
(530, 104, 'slides_2_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(531, 104, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(532, 104, 'slides_2_banner_heading_text_color', '#004b9b'),
(533, 104, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(534, 104, 'slides_2_slide_image', '89'),
(535, 104, '_slides_2_slide_image', 'field_5684a9c16b850'),
(536, 104, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(537, 104, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(538, 104, 'slides_2_slide_link', '58'),
(539, 104, '_slides_2_slide_link', 'field_5684c2a73878a'),
(540, 104, 'slides', '3'),
(541, 104, '_slides', 'field_5684a9ab6b84f'),
(542, 104, 'region_background_image', '92'),
(543, 104, '_region_background_image', 'field_5684aa8b716f1'),
(544, 105, 'slides_0_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(545, 105, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(546, 105, 'slides_0_banner_heading_text_color', '#ffffff'),
(547, 105, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(548, 105, 'slides_0_slide_image', '87'),
(549, 105, '_slides_0_slide_image', 'field_5684a9c16b850'),
(550, 105, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(551, 105, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(552, 105, 'slides_0_slide_link', '11'),
(553, 105, '_slides_0_slide_link', 'field_5684c2a73878a'),
(554, 105, 'slides_1_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(555, 105, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(556, 105, 'slides_1_banner_heading_text_color', '#75b510'),
(557, 105, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(558, 105, 'slides_1_slide_image', '88'),
(559, 105, '_slides_1_slide_image', 'field_5684a9c16b850'),
(560, 105, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(561, 105, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(562, 105, 'slides_1_slide_link', '63'),
(563, 105, '_slides_1_slide_link', 'field_5684c2a73878a'),
(564, 105, 'slides_2_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(565, 105, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(566, 105, 'slides_2_banner_heading_text_color', '#e9124a'),
(567, 105, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(568, 105, 'slides_2_slide_image', '89'),
(569, 105, '_slides_2_slide_image', 'field_5684a9c16b850'),
(570, 105, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(571, 105, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(572, 105, 'slides_2_slide_link', '58'),
(573, 105, '_slides_2_slide_link', 'field_5684c2a73878a'),
(574, 105, 'slides', '3'),
(575, 105, '_slides', 'field_5684a9ab6b84f'),
(576, 105, 'region_background_image', '92'),
(577, 105, '_region_background_image', 'field_5684aa8b716f1'),
(578, 106, 'slides_0_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(579, 106, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(580, 106, 'slides_0_banner_heading_text_color', '#ffffff'),
(581, 106, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(582, 106, 'slides_0_slide_image', '87'),
(583, 106, '_slides_0_slide_image', 'field_5684a9c16b850'),
(584, 106, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>\r\n\r\n'),
(585, 106, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(586, 106, 'slides_0_slide_link', '11'),
(587, 106, '_slides_0_slide_link', 'field_5684c2a73878a'),
(588, 106, 'slides_1_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(589, 106, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(590, 106, 'slides_1_banner_heading_text_color', '#1e73be'),
(591, 106, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(592, 106, 'slides_1_slide_image', '88'),
(593, 106, '_slides_1_slide_image', 'field_5684a9c16b850'),
(594, 106, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.</strong></h3>'),
(595, 106, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(596, 106, 'slides_1_slide_link', '63'),
(597, 106, '_slides_1_slide_link', 'field_5684c2a73878a'),
(598, 106, 'slides_2_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(599, 106, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(600, 106, 'slides_2_banner_heading_text_color', '#1e73be'),
(601, 106, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(602, 106, 'slides_2_slide_image', '89'),
(603, 106, '_slides_2_slide_image', 'field_5684a9c16b850'),
(604, 106, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?</strong></h3>'),
(605, 106, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(606, 106, 'slides_2_slide_link', '58'),
(607, 106, '_slides_2_slide_link', 'field_5684c2a73878a'),
(608, 106, 'slides', '3'),
(609, 106, '_slides', 'field_5684a9ab6b84f'),
(610, 106, 'region_background_image', '92'),
(611, 106, '_region_background_image', 'field_5684aa8b716f1'),
(612, 107, 'slides_0_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(613, 107, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(614, 107, 'slides_0_banner_heading_text_color', '#ffffff'),
(615, 107, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(616, 107, 'slides_0_slide_image', '87'),
(617, 107, '_slides_0_slide_image', 'field_5684a9c16b850'),
(618, 107, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>\r\n\r\n'),
(619, 107, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(620, 107, 'slides_0_slide_link', '11'),
(621, 107, '_slides_0_slide_link', 'field_5684c2a73878a'),
(622, 107, 'slides_1_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(623, 107, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(624, 107, 'slides_1_banner_heading_text_color', '#1e73be'),
(625, 107, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(626, 107, 'slides_1_slide_image', '88'),
(627, 107, '_slides_1_slide_image', 'field_5684a9c16b850'),
(628, 107, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>\r\n'),
(629, 107, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(630, 107, 'slides_1_slide_link', '63'),
(631, 107, '_slides_1_slide_link', 'field_5684c2a73878a'),
(632, 107, 'slides_2_banner_heading', '<strong>Victoria</strong> Cabin, <br>Caravan & Camping'),
(633, 107, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(634, 107, 'slides_2_banner_heading_text_color', '#1e73be'),
(635, 107, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(636, 107, 'slides_2_slide_image', '89'),
(637, 107, '_slides_2_slide_image', 'field_5684a9c16b850'),
(638, 107, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>'),
(639, 107, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(640, 107, 'slides_2_slide_link', '58'),
(641, 107, '_slides_2_slide_link', 'field_5684c2a73878a'),
(642, 107, 'slides', '3'),
(643, 107, '_slides', 'field_5684a9ab6b84f'),
(644, 107, 'region_background_image', '92'),
(645, 107, '_region_background_image', 'field_5684aa8b716f1'),
(646, 108, 'slides_0_banner_heading', 'Welcome to <br><strong>VicParks</strong> - fabulous <br>holidays in the best locations'),
(647, 108, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(648, 108, 'slides_0_banner_heading_text_color', '#ffffff'),
(649, 108, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(650, 108, 'slides_0_slide_image', '87'),
(651, 108, '_slides_0_slide_image', 'field_5684a9c16b850'),
(652, 108, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>\r\n\r\n'),
(653, 108, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(654, 108, 'slides_0_slide_link', '11') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(655, 108, '_slides_0_slide_link', 'field_5684c2a73878a'),
(656, 108, 'slides_1_banner_heading', 'Welcome to <br><strong>VicParks</strong> - fabulous <br>holidays in the best locations'),
(657, 108, '_slides_1_banner_heading', 'field_5684c58aa1f1d'),
(658, 108, 'slides_1_banner_heading_text_color', '#1e73be'),
(659, 108, '_slides_1_banner_heading_text_color', 'field_5684c5bbdea52'),
(660, 108, 'slides_1_slide_image', '88'),
(661, 108, '_slides_1_slide_image', 'field_5684a9c16b850'),
(662, 108, 'slides_1_slide_caption', '<h3 class="align-bottom">Serenity...\r\n<strong>Quality time with the family.<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>\r\n'),
(663, 108, '_slides_1_slide_caption', 'field_5684a9eb6b851'),
(664, 108, 'slides_1_slide_link', '63'),
(665, 108, '_slides_1_slide_link', 'field_5684c2a73878a'),
(666, 108, 'slides_2_banner_heading', 'Welcome to <br><strong>VicParks</strong> - fabulous <br>holidays in the best locations'),
(667, 108, '_slides_2_banner_heading', 'field_5684c58aa1f1d'),
(668, 108, 'slides_2_banner_heading_text_color', '#1e73be'),
(669, 108, '_slides_2_banner_heading_text_color', 'field_5684c5bbdea52'),
(670, 108, 'slides_2_slide_image', '89'),
(671, 108, '_slides_2_slide_image', 'field_5684a9c16b850'),
(672, 108, 'slides_2_slide_caption', '<h3 class="align-bottom"> Whoa...\r\n<strong>Do you feel the need for speed?<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>'),
(673, 108, '_slides_2_slide_caption', 'field_5684a9eb6b851'),
(674, 108, 'slides_2_slide_link', '58'),
(675, 108, '_slides_2_slide_link', 'field_5684c2a73878a'),
(676, 108, 'slides', '3'),
(677, 108, '_slides', 'field_5684a9ab6b84f'),
(678, 108, 'region_background_image', '92'),
(679, 108, '_region_background_image', 'field_5684aa8b716f1'),
(680, 109, '_edit_last', '1'),
(681, 109, 'MultipleSidebars', 'multiple-sidebars-default'),
(682, 109, '_edit_lock', '1454390805:1'),
(683, 110, 'MultipleSidebars', 'multiple-sidebars-default'),
(684, 111, 'MultipleSidebars', 'multiple-sidebars-default'),
(685, 112, 'MultipleSidebars', 'multiple-sidebars-default'),
(686, 113, '_edit_last', '1'),
(687, 113, '_edit_lock', '1454491379:1'),
(708, 113, 'features', '0'),
(709, 113, '_features', 'field_568b5cb46a9e8'),
(710, 113, 'address', ''),
(711, 113, '_address', 'field_568b5c22b105c'),
(712, 113, 'telephone', ''),
(713, 113, '_telephone', 'field_568b5c33b105d'),
(714, 113, 'fax', ''),
(715, 113, '_fax', 'field_568b5c4db105e'),
(716, 113, 'email', ''),
(717, 113, '_email', 'field_568b5c5be40a8'),
(718, 113, 'website', ''),
(719, 113, '_website', 'field_568b5c6373887'),
(720, 113, 'social_media', '0'),
(721, 113, '_social_media', 'field_568b5dd75a23c'),
(722, 113, 'logo_url', ''),
(723, 113, '_logo_url', 'field_568b5ef23ef70'),
(724, 113, 'gallery', ''),
(725, 113, '_gallery', 'field_568b5f94f8ddd'),
(726, 113, 'MultipleSidebars', 'multiple-sidebars-default'),
(727, 134, 'page_sub_title', ''),
(728, 134, '_page_sub_title', 'field_5684942256ad3'),
(729, 27, 'MultipleSidebars', 'multiple-sidebars-default'),
(730, 27, 'page_sub_title', ''),
(731, 27, '_page_sub_title', 'field_5684942256ad3'),
(732, 135, '_edit_last', '1'),
(733, 135, '_edit_lock', '1454731132:1'),
(734, 135, 'features', '0'),
(735, 135, '_features', 'field_568b5cb46a9e8'),
(736, 135, 'address', 'Tourist Park, Residential Park in Attwood'),
(737, 135, '_address', 'field_568b5c22b105c'),
(738, 135, 'telephone', '0393331619'),
(739, 135, '_telephone', 'field_568b5c33b105d'),
(740, 135, 'fax', '0393334109'),
(741, 135, '_fax', 'field_568b5c4db105e'),
(742, 135, 'email', 'info@atvm.com.au'),
(743, 135, '_email', 'field_568b5c5be40a8'),
(744, 135, 'website', 'http://www.atvm.com.au/'),
(745, 135, '_website', 'field_568b5c6373887'),
(746, 135, 'social_media', '0'),
(747, 135, '_social_media', 'field_568b5dd75a23c'),
(748, 135, 'logo_url', '209'),
(749, 135, '_logo_url', 'field_568b5ef23ef70'),
(750, 135, 'gallery', 'a:8:{i:0;s:3:"201";i:1;s:3:"202";i:2;s:3:"203";i:3;s:3:"204";i:4;s:3:"205";i:5;s:3:"206";i:6;s:3:"207";i:7;s:3:"208";}'),
(751, 135, '_gallery', 'field_568b5f94f8ddd'),
(752, 135, '_wppl_street', '37 Ardlie Street'),
(753, 135, '_wppl_city', 'Attwood'),
(754, 135, '_wppl_state', 'VIC'),
(755, 135, '_wppl_zipcode', '3049'),
(756, 135, '_wppl_country', 'AU'),
(757, 135, '_wppl_lat', '-37.6729126'),
(758, 135, '_wppl_long', '144.88743669999997'),
(759, 135, '_wppl_address', '37 Ardlie Street  Attwood  VIC 3049 '),
(760, 135, '_wppl_days_hours', 'a:7:{i:0;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}i:1;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}i:2;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}i:3;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}i:4;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}i:5;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}i:6;a:2:{s:4:"days";s:0:"";s:5:"hours";s:0:"";}}'),
(761, 135, '_wppl_state_long', 'Victoria'),
(762, 135, '_wppl_country_long', 'Australia'),
(763, 135, '_wppl_formatted_address', '37 Ardlie St, Attwood VIC 3049, Australia'),
(764, 135, 'MultipleSidebars', 'multiple-sidebars-default'),
(781, 138, '_edit_last', '1'),
(782, 139, 'MultipleSidebars', 'multiple-sidebars-default'),
(783, 140, 'MultipleSidebars', 'multiple-sidebars-default'),
(784, 138, 'MultipleSidebars', 'multiple-sidebars-default'),
(785, 138, '_edit_lock', '1454398311:1'),
(786, 141, 'MultipleSidebars', 'multiple-sidebars-default'),
(787, 142, 'MultipleSidebars', 'multiple-sidebars-default'),
(788, 143, '_edit_last', '1'),
(789, 143, 'features', '0'),
(790, 143, '_features', 'field_568b5cb46a9e8') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(791, 143, 'address', ''),
(792, 143, '_address', 'field_568b5c22b105c'),
(793, 143, 'telephone', ''),
(794, 143, '_telephone', 'field_568b5c33b105d'),
(795, 143, 'fax', ''),
(796, 143, '_fax', 'field_568b5c4db105e'),
(797, 143, 'email', ''),
(798, 143, '_email', 'field_568b5c5be40a8'),
(799, 143, 'website', ''),
(800, 143, '_website', 'field_568b5c6373887'),
(801, 143, 'social_media', '0'),
(802, 143, '_social_media', 'field_568b5dd75a23c'),
(803, 143, 'logo_url', ''),
(804, 143, '_logo_url', 'field_568b5ef23ef70'),
(805, 143, 'gallery', ''),
(806, 143, '_gallery', 'field_568b5f94f8ddd'),
(807, 143, 'MultipleSidebars', 'multiple-sidebars-default'),
(812, 143, '_edit_lock', '1454405872:1'),
(818, 143, 'park_description', 'On the banks of the Goulburn River close to Lake Eildon. Open fires and pets welcome (conditions apply). Two swimming pools, playground and recreation room.\r\n\r\nAir-conditioned ensuite cabins, bunk-house or river-front camping and powered sites. Fish or kayak from the park grounds. Kids activities most school holidays.'),
(819, 143, '_park_description', 'field_56b05cdae9aed'),
(820, 143, '_wp_geo_latitude', '-38.058171'),
(821, 143, '_wp_geo_longitude', '145.38814'),
(822, 143, '_wp_geo_title', 'Blue Gum Residential Park'),
(823, 143, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:1:"Y";}'),
(824, 135, 'park_description', 'The park has excellent facilities, a great range of accommodation to suit everyone, and is also ideally located for you to explore some of Melbourne and Victoria’s great attractions and events.'),
(825, 135, '_park_description', 'field_56b05cdae9aed'),
(830, 145, '_edit_last', '1'),
(831, 145, '_edit_lock', '1454464547:1'),
(832, 145, 'park_description', 'Take a break and unwind at Carrum Downs Holiday Park. Bring your caravan and relax in your own space, or enjoy the convenience of your own lounge and kitchenette in one of our motel rooms.'),
(833, 145, '_park_description', 'field_56b05cdae9aed'),
(834, 145, 'features', '0'),
(835, 145, '_features', 'field_568b5cb46a9e8'),
(836, 145, 'address', '1165 Frankston Dandenong Road Carrum Downs, VIC, 3201'),
(837, 145, '_address', 'field_568b5c22b105c'),
(838, 145, 'telephone', '0397821292'),
(839, 145, '_telephone', 'field_568b5c33b105d'),
(840, 145, 'fax', ''),
(841, 145, '_fax', 'field_568b5c4db105e'),
(842, 145, 'email', 'carrumdowns@cpoaus.com.au'),
(843, 145, '_email', 'field_568b5c5be40a8'),
(844, 145, 'website', 'http://www.cpoaus.com.au'),
(845, 145, '_website', 'field_568b5c6373887'),
(846, 145, 'social_media', '0'),
(847, 145, '_social_media', 'field_568b5dd75a23c'),
(848, 145, 'logo_url', ''),
(849, 145, '_logo_url', 'field_568b5ef23ef70'),
(850, 145, 'gallery', ''),
(851, 145, '_gallery', 'field_568b5f94f8ddd'),
(852, 145, 'MultipleSidebars', 'multiple-sidebars-default'),
(861, 145, '_wp_geo_latitude', '-38.093016'),
(862, 145, '_wp_geo_longitude', '145.178949'),
(863, 145, '_wp_geo_title', 'Carrum Downs Holiday Park'),
(864, 145, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:2:"14";}'),
(865, 146, '_edit_last', '1'),
(866, 146, '_edit_lock', '1454464807:1'),
(867, 146, 'park_description', 'Chelsea Holiday Park is based just off the Nepean Highway, only 45 minutes from Melbourne.'),
(868, 146, '_park_description', 'field_56b05cdae9aed'),
(869, 146, 'features', '0'),
(870, 146, '_features', 'field_568b5cb46a9e8'),
(871, 146, 'address', '100 Broadway Bonbeach, VIC, 3196'),
(872, 146, '_address', 'field_568b5c22b105c'),
(873, 146, 'telephone', '0397722485'),
(874, 146, '_telephone', 'field_568b5c33b105d'),
(875, 146, 'fax', ''),
(876, 146, '_fax', 'field_568b5c4db105e'),
(877, 146, 'email', 'chelsea@cpoaus.com.au'),
(878, 146, '_email', 'field_568b5c5be40a8'),
(879, 146, 'website', 'http://www.cpoaus.com.au'),
(880, 146, '_website', 'field_568b5c6373887'),
(881, 146, 'social_media', '0'),
(882, 146, '_social_media', 'field_568b5dd75a23c'),
(883, 146, 'logo_url', ''),
(884, 146, '_logo_url', 'field_568b5ef23ef70'),
(885, 146, 'gallery', ''),
(886, 146, '_gallery', 'field_568b5f94f8ddd'),
(887, 146, 'MultipleSidebars', 'multiple-sidebars-default'),
(888, 146, '_wp_geo_latitude', '-38.05734'),
(889, 146, '_wp_geo_longitude', '145.132639'),
(890, 146, '_wp_geo_title', 'Chelsea Holiday Park'),
(891, 146, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:1:"Y";}'),
(892, 148, '_edit_last', '1'),
(893, 148, '_edit_lock', '1454464865:1'),
(894, 148, 'park_description', ''),
(895, 148, '_park_description', 'field_56b05cdae9aed'),
(896, 148, 'features', '0'),
(897, 148, '_features', 'field_568b5cb46a9e8'),
(898, 148, 'address', '182 Warrandyte Road Doncaster East, VIC, 3109'),
(899, 148, '_address', 'field_568b5c22b105c'),
(900, 148, 'telephone', '0398443637'),
(901, 148, '_telephone', 'field_568b5c33b105d'),
(902, 148, 'fax', '0398443342'),
(903, 148, '_fax', 'field_568b5c4db105e'),
(904, 148, 'email', 'info@cbtp.com.au'),
(905, 148, '_email', 'field_568b5c5be40a8'),
(906, 148, 'website', 'http://www.cbtp.com.au'),
(907, 148, '_website', 'field_568b5c6373887'),
(908, 148, 'social_media', '0'),
(909, 148, '_social_media', 'field_568b5dd75a23c'),
(910, 148, 'logo_url', ''),
(911, 148, '_logo_url', 'field_568b5ef23ef70') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(912, 148, 'gallery', ''),
(913, 148, '_gallery', 'field_568b5f94f8ddd'),
(914, 148, 'MultipleSidebars', 'multiple-sidebars-default'),
(919, 148, '_wp_geo_latitude', '-32.0184406'),
(920, 148, '_wp_geo_longitude', '116.01904'),
(921, 148, '_wp_geo_title', 'Crystal Brook Tourist Park'),
(922, 148, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:1:"Y";}'),
(923, 149, '_edit_last', '1'),
(924, 149, 'MultipleSidebars', 'multiple-sidebars-default'),
(925, 149, '_search-filter-fields', 'a:4:{i:0;a:3:{s:4:"type";s:6:"search";s:7:"heading";s:11:"SEARCH FOR:";s:11:"placeholder";s:7:"keyword";}i:1;a:16:{s:4:"type";s:8:"taxonomy";s:10:"input_type";s:6:"select";s:7:"heading";s:3:"IN:";s:15:"all_items_label";s:6:"Region";s:10:"show_count";i:1;s:10:"hide_empty";i:0;s:12:"hierarchical";i:1;s:16:"include_children";i:0;s:10:"drill_down";i:0;s:20:"sync_include_exclude";i:1;s:9:"combo_box";i:0;s:8:"operator";s:3:"and";s:8:"order_by";s:7:"default";s:9:"order_dir";s:3:"asc";s:11:"exclude_ids";s:0:"";s:13:"taxonomy_name";s:6:"region";}i:2;a:16:{s:4:"type";s:8:"taxonomy";s:10:"input_type";s:6:"select";s:7:"heading";s:10:"PARK TYPE:";s:15:"all_items_label";s:4:"Type";s:10:"show_count";i:1;s:10:"hide_empty";i:0;s:12:"hierarchical";i:0;s:16:"include_children";i:0;s:10:"drill_down";i:0;s:20:"sync_include_exclude";i:1;s:9:"combo_box";i:0;s:8:"operator";s:3:"and";s:8:"order_by";s:7:"default";s:9:"order_dir";s:3:"asc";s:11:"exclude_ids";s:0:"";s:13:"taxonomy_name";s:13:"park-category";}i:3;a:3:{s:4:"type";s:6:"submit";s:7:"heading";s:0:"";s:5:"label";s:2:"Go";}}'),
(926, 149, '_search-filter-settings', 'a:25:{s:26:"use_template_manual_toggle";i:1;s:17:"enable_auto_count";i:0;s:20:"template_name_manual";s:10:"search.php";s:9:"page_slug";s:0:"";s:10:"post_types";a:1:{s:4:"park";i:1;}s:11:"post_status";a:1:{s:7:"publish";i:1;}s:15:"use_ajax_toggle";i:1;s:13:"scroll_to_pos";s:6:"custom";s:16:"custom_scroll_to";s:4:"#map";s:16:"scroll_on_action";s:3:"all";s:14:"maintain_state";i:1;s:15:"force_is_search";i:1;s:18:"display_results_as";s:9:"shortcode";s:15:"update_ajax_url";i:1;s:11:"ajax_target";s:8:"#content";s:11:"results_url";s:32:"http://vicparks.dev/find-a-park/";s:19:"ajax_links_selector";s:13:".pagination a";s:16:"results_per_page";i:30;s:16:"exclude_post_ids";s:0:"";s:17:"taxonomy_relation";s:0:"";s:15:"default_sort_by";s:1:"0";s:16:"default_sort_dir";s:4:"desc";s:16:"default_meta_key";s:8:"_address";s:17:"default_sort_type";s:7:"numeric";s:19:"taxonomies_settings";a:5:{s:8:"category";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:8:"post_tag";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:11:"post_format";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:13:"park-category";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:6:"region";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}}}'),
(927, 149, '_edit_lock', '1454490807:1'),
(928, 113, 'park_description', ''),
(929, 113, '_park_description', 'field_56b05cdae9aed'),
(930, 113, '_wp_geo_latitude', '-37.8002143'),
(931, 113, '_wp_geo_longitude', '145.1925931'),
(932, 113, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:2:"12";}'),
(933, 151, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Beach-Beauty.jpg'),
(934, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:48:"2016/02/Where-do-you-want-to-go_Beach-Beauty.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"Where-do-you-want-to-go_Beach-Beauty-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"Where-do-you-want-to-go_Beach-Beauty-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(935, 152, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Beach-Beauty-1.jpg'),
(936, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:594;s:6:"height";i:396;s:4:"file";s:50:"2016/02/Where-do-you-want-to-go_Beach-Beauty-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"Where-do-you-want-to-go_Beach-Beauty-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"Where-do-you-want-to-go_Beach-Beauty-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(937, 153, 'slides_0_banner_heading', 'Welcome to <br><strong>VicParks</strong> - fabulous <br>holidays in the best locations'),
(938, 153, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(939, 153, 'slides_0_banner_heading_text_color', '#ffffff'),
(940, 153, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(941, 153, 'slides_0_slide_image', '87'),
(942, 153, '_slides_0_slide_image', 'field_5684a9c16b850'),
(943, 153, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria<span class="glyphicon glyphicon-menu-right icon-circle pull-right"></span></strong></h3>\r\n\r\n'),
(944, 153, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(945, 153, 'slides_0_slide_link', '11'),
(946, 153, '_slides_0_slide_link', 'field_5684c2a73878a'),
(947, 153, 'slides', '1'),
(948, 153, '_slides', 'field_5684a9ab6b84f'),
(949, 153, 'region_background_image', '92'),
(950, 153, '_region_background_image', 'field_5684aa8b716f1'),
(951, 154, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Adventure_in-Victoria_.jpg'),
(952, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:58:"2016/02/Where-do-you-want-to-go_Adventure_in-Victoria_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"Where-do-you-want-to-go_Adventure_in-Victoria_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"Where-do-you-want-to-go_Adventure_in-Victoria_-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(953, 155, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Going-Fishing_visionsofvictoria919489-302.jpg'),
(954, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:77:"2016/02/Where-do-you-want-to-go_Going-Fishing_visionsofvictoria919489-302.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:77:"Where-do-you-want-to-go_Going-Fishing_visionsofvictoria919489-302-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:77:"Where-do-you-want-to-go_Going-Fishing_visionsofvictoria919489-302-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(955, 156, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Push-the-boat-out_visionsofvictoria1049661-302.jpg'),
(956, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:82:"2016/02/Where-do-you-want-to-go_Push-the-boat-out_visionsofvictoria1049661-302.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:82:"Where-do-you-want-to-go_Push-the-boat-out_visionsofvictoria1049661-302-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:82:"Where-do-you-want-to-go_Push-the-boat-out_visionsofvictoria1049661-302-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(957, 157, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Put-your-feet-up-year-round-annual-holiday-sites-2_2012-caravan-cover.jpg'),
(958, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:105:"2016/02/Where-do-you-want-to-go_Put-your-feet-up-year-round-annual-holiday-sites-2_2012-caravan-cover.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:105:"Where-do-you-want-to-go_Put-your-feet-up-year-round-annual-holiday-sites-2_2012-caravan-cover-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:105:"Where-do-you-want-to-go_Put-your-feet-up-year-round-annual-holiday-sites-2_2012-caravan-cover-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(959, 158, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Summer-Sun.jpg'),
(960, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:46:"2016/02/Where-do-you-want-to-go_Summer-Sun.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"Where-do-you-want-to-go_Summer-Sun-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"Where-do-you-want-to-go_Summer-Sun-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(961, 159, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Surfing.jpg'),
(962, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:43:"2016/02/Where-do-you-want-to-go_Surfing.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"Where-do-you-want-to-go_Surfing-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"Where-do-you-want-to-go_Surfing-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(963, 160, '_wp_attached_file', '2016/02/where-do-you-want-to-go_When-in-doubt-pedal-it-out-cycling__visionsofvictoria1461465-302.jpg'),
(964, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:396;s:4:"file";s:100:"2016/02/where-do-you-want-to-go_When-in-doubt-pedal-it-out-cycling__visionsofvictoria1461465-302.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:100:"where-do-you-want-to-go_When-in-doubt-pedal-it-out-cycling__visionsofvictoria1461465-302-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:100:"where-do-you-want-to-go_When-in-doubt-pedal-it-out-cycling__visionsofvictoria1461465-302-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(965, 161, '_wp_attached_file', '2016/02/Where-do-you-want-to-go_Looking-for-a-new-homeresidential_lifestyle-communities.jpg'),
(966, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:492;s:6:"height";i:328;s:4:"file";s:91:"2016/02/Where-do-you-want-to-go_Looking-for-a-new-homeresidential_lifestyle-communities.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:91:"Where-do-you-want-to-go_Looking-for-a-new-homeresidential_lifestyle-communities-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:91:"Where-do-you-want-to-go_Looking-for-a-new-homeresidential_lifestyle-communities-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(967, 162, '_wp_attached_file', '2016/02/Choose-your-region_Geelong-Bellarine-Peininsula_visionsofvictoria1377900-302.jpg'),
(968, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:866;s:6:"height";i:577;s:4:"file";s:88:"2016/02/Choose-your-region_Geelong-Bellarine-Peininsula_visionsofvictoria1377900-302.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:88:"Choose-your-region_Geelong-Bellarine-Peininsula_visionsofvictoria1377900-302-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:88:"Choose-your-region_Geelong-Bellarine-Peininsula_visionsofvictoria1377900-302-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:88:"Choose-your-region_Geelong-Bellarine-Peininsula_visionsofvictoria1377900-302-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(969, 162, '_edit_lock', '1454551104:1'),
(972, 58, 'MultipleSidebars', 'multiple-sidebars-default'),
(973, 165, '_edit_last', '1'),
(974, 165, 'MultipleSidebars', 'multiple-sidebars-default'),
(975, 165, '_search-filter-fields', 'a:4:{i:0;a:3:{s:4:"type";s:6:"search";s:7:"heading";s:11:"SEARCH FOR:";s:11:"placeholder";s:7:"keyword";}i:1;a:16:{s:4:"type";s:8:"taxonomy";s:10:"input_type";s:6:"select";s:7:"heading";s:3:"IN:";s:15:"all_items_label";s:6:"Region";s:10:"show_count";i:1;s:10:"hide_empty";i:0;s:12:"hierarchical";i:1;s:16:"include_children";i:0;s:10:"drill_down";i:0;s:20:"sync_include_exclude";i:1;s:9:"combo_box";i:0;s:8:"operator";s:3:"and";s:8:"order_by";s:7:"default";s:9:"order_dir";s:3:"asc";s:11:"exclude_ids";s:0:"";s:13:"taxonomy_name";s:6:"region";}i:2;a:16:{s:4:"type";s:8:"taxonomy";s:10:"input_type";s:6:"select";s:7:"heading";s:10:"PARK TYPE:";s:15:"all_items_label";s:4:"Type";s:10:"show_count";i:1;s:10:"hide_empty";i:0;s:12:"hierarchical";i:0;s:16:"include_children";i:0;s:10:"drill_down";i:0;s:20:"sync_include_exclude";i:1;s:9:"combo_box";i:0;s:8:"operator";s:3:"and";s:8:"order_by";s:7:"default";s:9:"order_dir";s:3:"asc";s:11:"exclude_ids";s:0:"";s:13:"taxonomy_name";s:13:"park-category";}i:3;a:3:{s:4:"type";s:6:"submit";s:7:"heading";s:0:"";s:5:"label";s:2:"Go";}}'),
(976, 165, '_search-filter-settings', 'a:24:{s:26:"use_template_manual_toggle";i:1;s:17:"enable_auto_count";i:0;s:20:"template_name_manual";s:10:"search.php";s:9:"page_slug";s:0:"";s:10:"post_types";a:1:{s:4:"park";i:1;}s:11:"post_status";a:1:{s:7:"publish";i:1;}s:13:"scroll_to_pos";s:6:"custom";s:16:"custom_scroll_to";s:4:"#map";s:16:"scroll_on_action";s:3:"all";s:14:"maintain_state";i:1;s:15:"force_is_search";i:1;s:18:"display_results_as";s:9:"shortcode";s:15:"update_ajax_url";i:1;s:11:"ajax_target";s:8:"#content";s:11:"results_url";s:32:"http://vicparks.dev/find-a-park/";s:19:"ajax_links_selector";s:13:".pagination a";s:16:"results_per_page";i:30;s:16:"exclude_post_ids";s:0:"";s:17:"taxonomy_relation";s:0:"";s:15:"default_sort_by";s:1:"0";s:16:"default_sort_dir";s:4:"desc";s:16:"default_meta_key";s:8:"_address";s:17:"default_sort_type";s:7:"numeric";s:19:"taxonomies_settings";a:5:{s:8:"category";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:8:"post_tag";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:11:"post_format";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:13:"park-category";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}s:6:"region";a:2:{s:15:"include_exclude";s:7:"include";s:3:"ids";s:0:"";}}}'),
(977, 165, '_edit_lock', '1454558482:1'),
(978, 165, '_dp_original', '149'),
(1019, 198, '_edit_last', '1'),
(1020, 198, '_edit_lock', '1454564726:1'),
(1021, 198, 'park_headline', '51 Awards to Celebrate 45 Years of Operation'),
(1022, 198, '_park_headline', 'field_56b2c3717d1af'),
(1023, 198, 'park_description', 'The perfect escape for your next holiday or short break'),
(1024, 198, '_park_description', 'field_56b05cdae9aed'),
(1025, 198, 'address', ''),
(1026, 198, '_address', 'field_568b5c22b105c'),
(1027, 198, 'telephone', ''),
(1028, 198, '_telephone', 'field_568b5c33b105d'),
(1029, 198, 'fax', ''),
(1030, 198, '_fax', 'field_568b5c4db105e'),
(1031, 198, 'email', ''),
(1032, 198, '_email', 'field_568b5c5be40a8'),
(1033, 198, 'website', ''),
(1034, 198, '_website', 'field_568b5c6373887'),
(1035, 198, 'features', '0'),
(1036, 198, '_features', 'field_568b5cb46a9e8'),
(1037, 198, 'social_media', '0'),
(1038, 198, '_social_media', 'field_568b5dd75a23c'),
(1039, 198, 'logo_url', ''),
(1040, 198, '_logo_url', 'field_568b5ef23ef70'),
(1041, 198, 'gallery', ''),
(1042, 198, '_gallery', 'field_568b5f94f8ddd'),
(1043, 198, 'MultipleSidebars', 'multiple-sidebars-default'),
(1045, 199, 'slides_0_banner_heading', 'Welcome to <br><strong>VicParks</strong> - fabulous <br>holidays in the best locations'),
(1046, 199, '_slides_0_banner_heading', 'field_5684c58aa1f1d'),
(1047, 199, 'slides_0_banner_heading_text_color', '#ffffff'),
(1048, 199, '_slides_0_banner_heading_text_color', 'field_5684c5bbdea52'),
(1049, 199, 'slides_0_slide_image', '87'),
(1050, 199, '_slides_0_slide_image', 'field_5684a9c16b850'),
(1051, 199, 'slides_0_slide_caption', '<h3 class="align-bottom">AHHH...\r\n<strong>Unique Aussie holidays in Victoria</strong></h3>'),
(1052, 199, '_slides_0_slide_caption', 'field_5684a9eb6b851'),
(1053, 199, 'slides_0_slide_link', '11'),
(1054, 199, '_slides_0_slide_link', 'field_5684c2a73878a'),
(1055, 199, 'slides', '1'),
(1056, 199, '_slides', 'field_5684a9ab6b84f'),
(1057, 199, 'region_background_image', '92'),
(1058, 199, '_region_background_image', 'field_5684aa8b716f1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1059, 199, 'featured_park', 'a:1:{i:0;s:3:"198";}'),
(1060, 199, '_featured_park', 'field_56b2c4019aea9'),
(1061, 6, 'featured_park', 'a:1:{i:0;s:3:"198";}'),
(1062, 6, '_featured_park', 'field_56b2c4019aea9'),
(1063, 200, '_wp_attached_file', '2016/02/Feature-Park-3_BIG4-Swan-Hill-Riverside_rivers-site-good.jpg'),
(1064, 200, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:260;s:6:"height";i:280;s:4:"file";s:68:"2016/02/Feature-Park-3_BIG4-Swan-Hill-Riverside_rivers-site-good.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:68:"Feature-Park-3_BIG4-Swan-Hill-Riverside_rivers-site-good-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1065, 198, '_thumbnail_id', '200'),
(1066, 198, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:1:"Y";}'),
(1067, 201, '_wp_attached_file', '2016/02/933-x-400-ATVM4-408x312.jpg'),
(1068, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:35:"2016/02/933-x-400-ATVM4-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"933-x-400-ATVM4-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"933-x-400-ATVM4-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1069, 202, '_wp_attached_file', '2016/02/933-x-400-IMG_3414-01-408x312.jpg'),
(1070, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:41:"2016/02/933-x-400-IMG_3414-01-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"933-x-400-IMG_3414-01-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"933-x-400-IMG_3414-01-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1071, 203, '_wp_attached_file', '2016/02/IMG_5813-408x312.jpg'),
(1072, 203, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:28:"2016/02/IMG_5813-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_5813-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_5813-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1073, 204, '_wp_attached_file', '2016/02/IMG_5854-408x312.jpg'),
(1074, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:28:"2016/02/IMG_5854-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_5854-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_5854-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1075, 205, '_wp_attached_file', '2016/02/IMG_5890-408x312.jpg'),
(1076, 205, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:28:"2016/02/IMG_5890-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_5890-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_5890-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1077, 206, '_wp_attached_file', '2016/02/IMG_6448-408x294.jpg'),
(1078, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:294;s:4:"file";s:28:"2016/02/IMG_6448-408x294.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_6448-408x294-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_6448-408x294-300x216.jpg";s:5:"width";i:300;s:6:"height";i:216;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1079, 207, '_wp_attached_file', '2016/02/MG_5783-408x312.jpg'),
(1080, 207, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:27:"2016/02/MG_5783-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"MG_5783-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"MG_5783-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1081, 208, '_wp_attached_file', '2016/02/MG_6336-408x312.jpg'),
(1082, 208, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:312;s:4:"file";s:27:"2016/02/MG_6336-408x312.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"MG_6336-408x312-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"MG_6336-408x312-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1083, 135, 'park_headline', ''),
(1084, 135, '_park_headline', 'field_56b2c3717d1af'),
(1089, 135, 'ratings_users', '1'),
(1090, 135, 'ratings_score', '5'),
(1091, 135, 'ratings_average', '5'),
(1092, 209, '_wp_attached_file', '2016/02/airport-tourist-village-logo.png'),
(1093, 209, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:241;s:6:"height";i:70;s:4:"file";s:40:"2016/02/airport-tourist-village-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"airport-tourist-village-logo-150x70.png";s:5:"width";i:150;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(1102, 178, '_edit_lock', '1454661889:1'),
(1103, 178, '_edit_last', '1'),
(1104, 192, 'MultipleSidebars', 'multiple-sidebars-default'),
(1105, 178, 'MultipleSidebars', 'multiple-sidebars-default'),
(1106, 135, '_thumbnail_id', '207'),
(1107, 135, '_wp_geo_latitude', '-37.673907'),
(1108, 135, '_wp_geo_longitude', '144.886237'),
(1109, 135, '_wp_geo_title', 'Airport Tourist Village Melbourne'),
(1110, 135, '_wp_geo_map_settings', 'a:1:{s:4:"zoom";s:1:"Y";}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2015-12-09 04:06:43', '2015-12-09 04:06:43', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas egestas arcu quis ligula mattis placerat. Quisque id odio. Nulla porta dolor. In hac habitasse platea dictumst.\r\n\r\nVivamus elementum semper nisi. Maecenas nec odio et ante tincidunt tempus. Vestibulum volutpat pretium libero. Aenean ut eros et nisl sagittis vestibulum. Morbi mollis tellus ac sapien.\r\n\r\nPhasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce vulputate eleifend sapien.. Phasellus nec sem in justo pellentesque facilisis. Morbi nec metus.\r\n\r\nEtiam ut purus mattis mauris sodales aliquam. Etiam ut purus mattis mauris sodales aliquam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo. Sed hendrerit.\r\n\r\nNunc sed turpis. In consectetuer turpis ut velit. Quisque id odio. Ut leo. Aenean viverra rhoncus pede.\r\n\r\nEtiam iaculis nunc ac metus. Aenean commodo ligula eget dolor. In turpis. Etiam iaculis nunc ac metus. Nullam dictum felis eu pede mollis pretium.\r\n\r\nCras ultricies mi eu turpis hendrerit fringilla. Morbi vestibulum volutpat enim. Praesent adipiscing. Aliquam lobortis. Quisque ut nisi.', 'Why Join?', '', 'publish', 'closed', 'open', '', 'why-join', '', '', '2015-12-31 02:49:25', '2015-12-31 02:49:25', '', 0, 'http://vicparks.dev/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-12-10 01:40:28', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-10 01:40:28', '0000-00-00 00:00:00', '', 0, 'http://vicparks.dev/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2015-12-10 01:40:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-10 01:40:28', '0000-00-00 00:00:00', '', 0, 'http://vicparks.dev/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2015-12-10 01:41:34', '2015-12-10 01:41:34', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-02-04 04:05:50', '2016-02-04 04:05:50', '', 0, 'http://vicparks.dev/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-12-10 01:41:34', '2015-12-10 01:41:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-10 01:41:34', '2015-12-10 01:41:34', '', 6, 'http://vicparks.dev/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-12-10 01:41:53', '2015-12-10 01:41:53', '', 'Why Join?', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-10 01:41:53', '2015-12-10 01:41:53', '', 2, 'http://vicparks.dev/?p=8', 0, 'revision', '', 0),
(9, 1, '2015-12-10 01:42:10', '2015-12-10 01:42:10', '', 'Preferred Suppliers', '', 'publish', 'closed', 'closed', '', 'preferred-suppliers', '', '', '2015-12-10 01:42:10', '2015-12-10 01:42:10', '', 0, 'http://vicparks.dev/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-12-10 01:42:10', '2015-12-10 01:42:10', '', 'Preferred Suppliers', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-10 01:42:10', '2015-12-10 01:42:10', '', 9, 'http://vicparks.dev/2015/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-12-10 01:42:20', '2015-12-10 01:42:20', '', 'Park Employment', '', 'publish', 'closed', 'closed', '', 'park-employment', '', '', '2015-12-10 01:42:20', '2015-12-10 01:42:20', '', 0, 'http://vicparks.dev/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-12-10 01:42:20', '2015-12-10 01:42:20', '', 'Park Employment', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-12-10 01:42:20', '2015-12-10 01:42:20', '', 11, 'http://vicparks.dev/2015/12/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-12-10 01:42:30', '2015-12-10 01:42:30', '', 'Vic Parks Member Login', '', 'publish', 'closed', 'closed', '', 'vic-parks-member-login', '', '', '2015-12-10 01:42:30', '2015-12-10 01:42:30', '', 0, 'http://vicparks.dev/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-12-10 01:42:30', '2015-12-10 01:42:30', '', 'Vic Parks Member Login', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-12-10 01:42:30', '2015-12-10 01:42:30', '', 13, 'http://vicparks.dev/2015/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-12-10 01:42:38', '2015-12-10 01:42:38', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-12-10 01:42:38', '2015-12-10 01:42:38', '', 0, 'http://vicparks.dev/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-12-10 01:42:38', '2015-12-10 01:42:38', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-12-10 01:42:38', '2015-12-10 01:42:38', '', 15, 'http://vicparks.dev/2015/12/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2015-12-10 01:59:53', '2015-12-10 01:59:53', '', '<span class="glyphicon glyphicon-home" aria-hidden="true"></span>', '', 'publish', 'closed', 'closed', '', '17', '', '', '2015-12-10 02:40:15', '2015-12-10 02:40:15', '', 0, 'http://vicparks.dev/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2015-12-10 01:59:53', '2015-12-10 01:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2015-12-10 02:40:15', '2015-12-10 02:40:15', '', 0, 'http://vicparks.dev/?p=18', 6, 'nav_menu_item', '', 0),
(19, 1, '2015-12-10 01:59:53', '2015-12-10 01:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2015-12-10 02:40:15', '2015-12-10 02:40:15', '', 0, 'http://vicparks.dev/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2015-12-10 01:59:53', '2015-12-10 01:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2015-12-10 02:40:15', '2015-12-10 02:40:15', '', 0, 'http://vicparks.dev/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2015-12-10 01:59:53', '2015-12-10 01:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2015-12-10 02:40:15', '2015-12-10 02:40:15', '', 0, 'http://vicparks.dev/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2015-12-10 01:59:53', '2015-12-10 01:59:53', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2015-12-10 02:40:15', '2015-12-10 02:40:15', '', 0, 'http://vicparks.dev/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2015-12-10 02:39:45', '2015-12-10 02:39:45', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2015-12-10 02:39:45', '2015-12-10 02:39:45', '', 0, 'http://vicparks.dev/?page_id=23', 0, 'page', '', 0),
(24, 1, '2015-12-10 02:39:45', '2015-12-10 02:39:45', '', 'About', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2015-12-10 02:39:45', '2015-12-10 02:39:45', '', 23, 'http://vicparks.dev/2015/12/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-12-10 02:39:55', '2015-12-10 02:39:55', '', 'What\'s On', '', 'publish', 'closed', 'closed', '', 'whats-on', '', '', '2015-12-10 02:39:55', '2015-12-10 02:39:55', '', 0, 'http://vicparks.dev/?page_id=25', 0, 'page', '', 0),
(26, 1, '2015-12-10 02:39:55', '2015-12-10 02:39:55', '', 'What\'s On', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2015-12-10 02:39:55', '2015-12-10 02:39:55', '', 25, 'http://vicparks.dev/2015/12/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-12-10 02:40:06', '2015-12-10 02:40:06', '[searchandfilter id="149"]', 'Find a park', '', 'publish', 'closed', 'closed', '', 'find-a-park', '', '', '2016-02-03 02:42:33', '2016-02-03 02:42:33', '', 0, 'http://vicparks.dev/?page_id=27', 0, 'page', '', 0),
(28, 1, '2015-12-10 02:40:06', '2015-12-10 02:40:06', '', 'Find a park', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2015-12-10 02:40:06', '2015-12-10 02:40:06', '', 27, 'http://vicparks.dev/2015/12/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-12-10 02:40:54', '2015-12-10 02:40:54', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2015-12-10 02:40:54', '2015-12-10 02:40:54', '', 0, 'http://vicparks.dev/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2015-12-10 02:40:54', '2015-12-10 02:40:54', '', 'What\'s On', '', 'publish', 'closed', 'closed', '', 'whats-on', '', '', '2015-12-10 02:40:54', '2015-12-10 02:40:54', '', 0, 'http://vicparks.dev/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2015-12-10 02:40:54', '2015-12-10 02:40:54', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2015-12-10 02:40:54', '2015-12-10 02:40:54', '', 0, 'http://vicparks.dev/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2015-12-10 05:39:29', '2015-12-10 05:39:29', '', 'd1', '', 'inherit', 'open', 'closed', '', 'd1', '', '', '2015-12-10 05:39:29', '2015-12-10 05:39:29', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/d1.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2015-12-10 05:39:29', '2015-12-10 05:39:29', '', 'd2', '', 'inherit', 'open', 'closed', '', 'd2', '', '', '2015-12-10 05:39:29', '2015-12-10 05:39:29', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/d2.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 'fw-1', '', 'inherit', 'open', 'closed', '', 'fw-1', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/fw-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 'l1', '', 'inherit', 'open', 'closed', '', 'l1', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/l1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 'l2', '', 'inherit', 'open', 'closed', '', 'l2', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/l2.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 'l3', '', 'inherit', 'open', 'closed', '', 'l3', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/l3.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 'left', '', 'inherit', 'open', 'closed', '', 'left', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/left.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 'right', '', 'inherit', 'open', 'closed', '', 'right', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/right.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 's1', '', 'inherit', 'open', 'closed', '', 's1', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/s1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 's1', '', 'inherit', 'open', 'closed', '', 's1-2', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/s1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 's2', '', 'inherit', 'open', 'closed', '', 's2', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/s2.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 's2', '', 'inherit', 'open', 'closed', '', 's2-2', '', '', '2015-12-10 05:39:30', '2015-12-10 05:39:30', '', 37, '/var/www/vicparks.tinbotdevelopment.com/htdocs/current/web/app/uploads/layerslider/Full-width-demo-slider/s2.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2015-12-10 05:39:57', '2015-12-10 05:39:57', '[layerslider id="1"]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-10 05:39:57', '2015-12-10 05:39:57', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-12-10 05:40:23', '2015-12-10 05:40:23', '[layerslider id="1"]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2015-12-10 05:40:23', '2015-12-10 05:40:23', '', 6, 'http://vicparks.dev/2015/12/6-autosave-v1/', 0, 'revision', '', 0),
(46, 1, '2015-12-10 05:41:47', '2015-12-10 05:41:47', 'Ab fuga. Magni elit, ut est, minus iste officia nihil in explicabo. Alias exercitationem rem duis ex dolor obcaecati.', 'Aut nemo accusantium error esse', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-10 05:41:47', '2015-12-10 05:41:47', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-12-10 05:42:14', '2015-12-10 05:42:14', '[layerslider id="1"]', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-10 05:42:14', '2015-12-10 05:42:14', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-12-10 05:45:07', '2015-12-10 05:45:07', '', 'slider-family', '', 'inherit', 'open', 'closed', '', 'slider-family', '', '', '2015-12-10 05:45:07', '2015-12-10 05:45:07', '', 0, 'http://vicparks.dev/app/uploads/2015/12/slider-family.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2015-12-10 05:53:38', '2015-12-10 05:53:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-10 05:53:38', '2015-12-10 05:53:38', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-12-14 05:56:04', '2015-12-14 05:56:04', '', 'placeholder-featured-park', '', 'inherit', 'open', 'closed', '', 'placeholder-featured-park', '', '', '2015-12-14 05:56:04', '2015-12-14 05:56:04', '', 0, 'http://vicparks.dev/app/uploads/2015/12/placeholder-featured-park.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2015-12-14 06:40:41', '2015-12-14 06:40:41', '', 'region-selector', '', 'inherit', 'open', 'closed', '', 'region-selector', '', '', '2015-12-14 06:40:41', '2015-12-14 06:40:41', '', 0, 'http://vicparks.dev/app/uploads/2015/12/region-selector.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2015-12-17 08:21:20', '2015-12-17 08:21:20', '', 'placeholder-featured-one', '', 'inherit', 'open', 'closed', '', 'placeholder-featured-one', '', '', '2015-12-17 08:21:20', '2015-12-17 08:21:20', '', 0, 'http://vicparks.dev/app/uploads/2015/12/placeholder-featured-one.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2015-12-17 08:21:22', '2015-12-17 08:21:22', '', 'placeholder-featured-three', '', 'inherit', 'open', 'closed', '', 'placeholder-featured-three', '', '', '2015-12-17 08:21:22', '2015-12-17 08:21:22', '', 0, 'http://vicparks.dev/app/uploads/2015/12/placeholder-featured-three.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2015-12-17 08:21:22', '2015-12-17 08:21:22', '', 'placeholder-featured-two', '', 'inherit', 'open', 'closed', '', 'placeholder-featured-two', '', '', '2015-12-17 08:21:22', '2015-12-17 08:21:22', '', 0, 'http://vicparks.dev/app/uploads/2015/12/placeholder-featured-two.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2015-12-17 23:54:56', '2015-12-17 23:54:56', '', 'placeholder-latest-news-one', '', 'inherit', 'open', 'closed', '', 'placeholder-latest-news-one', '', '', '2015-12-17 23:54:56', '2015-12-17 23:54:56', '', 0, 'http://vicparks.dev/app/uploads/2015/12/placeholder-latest-news-one.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2015-12-17 23:54:57', '2015-12-17 23:54:57', '', 'placeholder-latest-news-two', '', 'inherit', 'open', 'closed', '', 'placeholder-latest-news-two', '', '', '2015-12-17 23:54:57', '2015-12-17 23:54:57', '', 0, 'http://vicparks.dev/app/uploads/2015/12/placeholder-latest-news-two.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2015-12-15 23:59:42', '2015-12-15 23:59:42', '<strong>**State Control Centre media release **</strong>\r\n\r\nWhile the fire is not under control, it is currently burning away from the coast in deep seated forest and is blacked out along the Great Ocean Road between Cumberland River and Wye River.\r\n\r\nEmergency Management Commissioner Craig Lapsley said it was safe to reopen the Great Ocean Road which was critical for business and community, in what is a peak tourism period. It has been closed since Christmas Day.\r\n\r\n“Business and tourism is a crucial part of what makes a community run and particularly in an area such as the surf coast which heavily relies on summer tourism,” he said.\r\n\r\nThe Great Ocean Road will open from 8.00am Wednesday at a reduced speed and no vehicles will be allowed to stop between Cumberland River and Wye River bridge. This includes look-out points and pull-over areas on the sides of the road.\r\n\r\n“We want everyone to support local businesses and enjoy the area, but to be aware that there is still a fire being worked on so people will see aircraft and trucks and at times, smoke,” Mr Lapsley said.\r\n\r\n“Keep up to date with the latest warnings and advice and if you are travelling to the area, check the Fire Danger Ratings before you go and while you are there. Know where to get information from and what you will do if the situation changes.\r\n\r\n“Visitors are welcome and encouraged to return to these areas but please respect the privacy of residents and visitors who have been affected by the fire. This includes not taking photographs of fire affected residential areas.“\r\n\r\nAircraft and around 300 personnel continue to work on the fire each day, with the fire’s perimeter now 45 kilometres and 2500 hectares burnt. Crews from New Zealand and incident management personnel from New South Wales are also supporting.\r\n\r\nMr Lapsley said the focus has been on controlling the fire and returning residents to their homes.\r\n\r\n“When fire conditions eased enough last week, the priority was to send specialist teams in to assess the damage and the work that needed to be undertaken to return people to their homes,” he said.\r\n\r\n“Over the past few days we have seen the reopening of Kennett River and Cumberland River, including for campers, and residents safely returned to some homes in the Wye River and Separation Creek areas.\r\n\r\n“Our thoughts are with those who cannot return to their homes or properties because of safety issues.  There is still a lot of work to do in this space and we will continue to work with these communities."\r\n\r\nMr Lapsley said rehousing residents and reopening roads had been a huge logistical exercise and joint effort between agencies, local council, government, business and community.\r\n\r\n“After a fire it is not as simple as saying the fire activity has subsided so we will reopen the road or a town.   Building surveyors need to undertake assessments, infrastructure needs to be replaced and hazardous trees need to be looked at or removed - first and foremost it is about safety,” he said.\r\n\r\n“Without agencies, government, business and communities working together we would not have been able to achieve what we have in and around Wye River, particularly in the time frame, and I thank each and every one of you who have contributed and the residents and public for their patience.”\r\n<div class="social_icons"><a href="http://news.cfa.vic.gov.au/news/great-ocean-road-to-reopen.html">http://news.cfa.vic.gov.au/news/great-ocean-road-to-reopen.html</a></div>', 'Great Ocean Road to reopen', '', 'publish', 'open', 'open', '', 'news-one', '', '', '2016-02-04 02:32:53', '2016-02-04 02:32:53', '', 0, 'http://vicparks.dev/?p=58', 0, 'post', '', 0),
(59, 1, '2015-12-17 23:59:42', '2015-12-17 23:59:42', 'Pellentesque commodo eros a enim. Fusce ac felis sit amet ligula pharetra condimentum. Curabitur blandit mollis lacus. Phasellus dolor. Praesent porttitor, nulla vitae posuere iaculis, arcu nisl dignissim dolor, a pretium mi sem ut ipsum.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Praesent blandit laoreet nibh. Mauris sollicitudin fermentum libero. Etiam vitae tortor. Morbi mollis tellus ac sapien.', 'News One', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2015-12-17 23:59:42', '2015-12-17 23:59:42', '', 58, 'http://vicparks.dev/2015/12/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-10-15 23:59:58', '2015-10-15 23:59:58', 'Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Morbi ac felis. Curabitur a felis in nunc fringilla tristique. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.\r\n\r\nPraesent congue erat at massa. Donec vitae orci sed dolor rutrum auctor. Sed fringilla mauris sit amet nibh. Quisque id mi. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo.\r\n\r\nDonec elit libero, sodales nec, volutpat a, suscipit non, turpis. Praesent turpis. Praesent egestas neque eu enim. Vestibulum volutpat pretium libero. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.', 'News Two', '', 'publish', 'open', 'open', '', 'news-two', '', '', '2015-12-18 00:00:32', '2015-12-18 00:00:32', '', 0, 'http://vicparks.dev/?p=60', 0, 'post', '', 0),
(61, 1, '2015-12-18 00:00:32', '2015-12-18 00:00:32', 'Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Morbi ac felis. Curabitur a felis in nunc fringilla tristique. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.\r\n\r\nPraesent congue erat at massa. Donec vitae orci sed dolor rutrum auctor. Sed fringilla mauris sit amet nibh. Quisque id mi. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo.\r\n\r\nDonec elit libero, sodales nec, volutpat a, suscipit non, turpis. Praesent turpis. Praesent egestas neque eu enim. Vestibulum volutpat pretium libero. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.', 'News Two', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2015-12-18 00:00:32', '2015-12-18 00:00:32', '', 60, 'http://vicparks.dev/2015/12/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-12-18 01:46:47', '2015-12-18 01:46:47', 'Praesent venenatis metus at tortor pulvinar varius. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Phasellus blandit leo ut odio. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus.\r\n\r\nSed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. In ut quam vitae odio lacinia tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed fringilla mauris sit amet nibh.\r\n\r\nFusce fermentum odio nec arcu. Duis vel nibh at velit scelerisque suscipit. Fusce convallis metus id felis luctus adipiscing. Maecenas vestibulum mollis diam. Cras ultricies mi eu turpis hendrerit fringilla.', 'Event Heading', '', 'publish', 'closed', 'closed', '', 'event-heading', '', '', '2015-12-18 01:48:59', '2015-12-18 01:48:59', '', 0, 'http://vicparks.dev/?post_type=event&#038;p=63', 0, 'event', '', 0),
(64, 1, '2015-12-18 01:50:49', '2015-12-18 01:50:49', 'Praesent venenatis metus at tortor pulvinar varius. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Phasellus blandit leo ut odio. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus.\r\n\r\nSed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. In ut quam vitae odio lacinia tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed fringilla mauris sit amet nibh.\r\n\r\nFusce fermentum odio nec arcu. Duis vel nibh at velit scelerisque suscipit. Fusce convallis metus id felis luctus adipiscing. Maecenas vestibulum mollis diam. Cras ultricies mi eu turpis hendrerit fringilla.', 'Event Heading', '', 'publish', 'closed', 'closed', '', 'event-heading-2', '', '', '2015-12-18 01:51:03', '2015-12-18 01:51:03', '', 0, 'http://vicparks.dev/?post_type=event&#038;p=64', 0, 'event', '', 0),
(65, 1, '2015-12-18 01:51:17', '2015-12-18 01:51:17', 'Praesent venenatis metus at tortor pulvinar varius. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Phasellus blandit leo ut odio. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus.\r\n\r\nSed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. In ut quam vitae odio lacinia tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed fringilla mauris sit amet nibh.\r\n\r\nFusce fermentum odio nec arcu. Duis vel nibh at velit scelerisque suscipit. Fusce convallis metus id felis luctus adipiscing. Maecenas vestibulum mollis diam. Cras ultricies mi eu turpis hendrerit fringilla.', 'Event Heading', '', 'publish', 'closed', 'closed', '', 'event-heading-3', '', '', '2015-12-18 01:51:25', '2015-12-18 01:51:25', '', 0, 'http://vicparks.dev/?post_type=event&#038;p=65', 0, 'event', '', 0),
(66, 1, '2015-12-18 01:51:28', '2015-12-18 01:51:28', 'Praesent venenatis metus at tortor pulvinar varius. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Phasellus blandit leo ut odio. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus.\r\n\r\nSed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. In ut quam vitae odio lacinia tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed fringilla mauris sit amet nibh.\r\n\r\nFusce fermentum odio nec arcu. Duis vel nibh at velit scelerisque suscipit. Fusce convallis metus id felis luctus adipiscing. Maecenas vestibulum mollis diam. Cras ultricies mi eu turpis hendrerit fringilla.', 'Event Heading', '', 'publish', 'closed', 'closed', '', 'event-heading-4', '', '', '2015-12-18 01:51:34', '2015-12-18 01:51:34', '', 0, 'http://vicparks.dev/?post_type=event&#038;p=66', 0, 'event', '', 0),
(67, 1, '2015-12-18 01:51:38', '2015-12-18 01:51:38', 'Praesent venenatis metus at tortor pulvinar varius. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Phasellus blandit leo ut odio. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus.\r\n\r\nSed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. In ut quam vitae odio lacinia tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed fringilla mauris sit amet nibh.\r\n\r\nFusce fermentum odio nec arcu. Duis vel nibh at velit scelerisque suscipit. Fusce convallis metus id felis luctus adipiscing. Maecenas vestibulum mollis diam. Cras ultricies mi eu turpis hendrerit fringilla.', 'Event Heading', '', 'publish', 'closed', 'closed', '', 'event-heading-5', '', '', '2015-12-18 01:51:45', '2015-12-18 01:51:45', '', 0, 'http://vicparks.dev/?post_type=event&#038;p=67', 0, 'event', '', 0),
(69, 1, '2015-12-31 02:34:08', '2015-12-31 02:34:08', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:7:"default";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Default Page Template', 'default-page-template', 'publish', 'closed', 'closed', '', 'group_5684940e86f32', '', '', '2015-12-31 02:34:24', '2015-12-31 02:34:24', '', 0, 'http://vicparks.dev/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2015-12-31 02:34:24', '2015-12-31 02:34:24', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Page Sub Title', 'page_sub_title', 'publish', 'closed', 'closed', '', 'field_5684942256ad3', '', '', '2015-12-31 02:34:24', '2015-12-31 02:34:24', '', 69, 'http://vicparks.dev/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2015-12-31 02:34:49', '2015-12-31 02:34:49', '', 'Why Join?', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-31 02:34:49', '2015-12-31 02:34:49', '', 2, 'http://vicparks.dev/2015/12/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2015-12-31 02:35:14', '2015-12-31 02:35:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas egestas arcu quis ligula mattis placerat. Quisque id odio. Nulla porta dolor. In hac habitasse platea dictumst.\r\n\r\nVivamus elementum semper nisi. Maecenas nec odio et ante tincidunt tempus. Vestibulum volutpat pretium libero. Aenean ut eros et nisl sagittis vestibulum. Morbi mollis tellus ac sapien.\r\n\r\nPhasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce vulputate eleifend sapien.. Phasellus nec sem in justo pellentesque facilisis. Morbi nec metus.\r\n\r\n', 'Why Join?', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-31 02:35:14', '2015-12-31 02:35:14', '', 2, 'http://vicparks.dev/2015/12/2-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-12-31 02:35:27', '2015-12-31 02:35:27', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas egestas arcu quis ligula mattis placerat. Quisque id odio. Nulla porta dolor. In hac habitasse platea dictumst.\r\n\r\nVivamus elementum semper nisi. Maecenas nec odio et ante tincidunt tempus. Vestibulum volutpat pretium libero. Aenean ut eros et nisl sagittis vestibulum. Morbi mollis tellus ac sapien.\r\n\r\nPhasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce vulputate eleifend sapien.. Phasellus nec sem in justo pellentesque facilisis. Morbi nec metus.\r\n\r\nEtiam ut purus mattis mauris sodales aliquam. Etiam ut purus mattis mauris sodales aliquam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo. Sed hendrerit.\r\n\r\nNunc sed turpis. In consectetuer turpis ut velit. Quisque id odio. Ut leo. Aenean viverra rhoncus pede.\r\n\r\nEtiam iaculis nunc ac metus. Aenean commodo ligula eget dolor. In turpis. Etiam iaculis nunc ac metus. Nullam dictum felis eu pede mollis pretium.\r\n\r\nCras ultricies mi eu turpis hendrerit fringilla. Morbi vestibulum volutpat enim. Praesent adipiscing. Aliquam lobortis. Quisque ut nisi.', 'Why Join?', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-31 02:35:27', '2015-12-31 02:35:27', '', 2, 'http://vicparks.dev/2015/12/2-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2015-12-31 02:47:02', '2015-12-31 02:47:02', '', 'Why Join Page', '', 'publish', 'closed', 'closed', '', 'why-join-page', '', '', '2015-12-31 02:47:06', '2015-12-31 02:47:06', '', 0, 'http://vicparks.dev/?post_type=multiple-sidebars&#038;p=74', 0, 'multiple-sidebars', '', 0),
(75, 1, '2015-12-31 02:47:58', '2015-12-31 02:47:58', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas egestas arcu quis ligula mattis placerat. Quisque id odio. Nulla porta dolor. In hac habitasse platea dictumst.\n\nVivamus elementum semper nisi. Maecenas nec odio et ante tincidunt tempus. Vestibulum volutpat pretium libero. Aenean ut eros et nisl sagittis vestibulum. Morbi mollis tellus ac sapien.\n\nPhasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce vulputate eleifend sapien.. Phasellus nec sem in justo pellentesque facilisis. Morbi nec metus.\n\nEtiam ut purus mattis mauris sodales aliquam. Etiam ut purus mattis mauris sodales aliquam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo. Sed hendrerit.\n\nNunc sed turpis. In consectetuer turpis ut velit. Quisque id odio. Ut leo. Aenean viverra rhoncus pede.\n\nEtiam iaculis nunc ac metus. Aenean commodo ligula eget dolor. In turpis. Etiam iaculis nunc ac metus. Nullam dictum felis eu pede mollis pretium.\n\nCras ultricies mi eu turpis hendrerit fringilla. Morbi vestibulum volutpat enim. Praesent adipiscing. Aliquam lobortis. Quisque ut nisi.', 'Why Join?', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2015-12-31 02:47:58', '2015-12-31 02:47:58', '', 2, 'http://vicparks.dev/2015/12/2-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2015-12-31 04:11:01', '2015-12-31 04:11:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 04:11:01', '2015-12-31 04:11:01', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-12-31 04:11:38', '2015-12-31 04:11:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 04:11:38', '2015-12-31 04:11:38', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-12-31 04:12:19', '2015-12-31 04:12:19', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2015-12-31 04:12:19', '2015-12-31 04:12:19', '', 6, 'http://vicparks.dev/app/uploads/2015/12/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2015-12-31 04:12:20', '2015-12-31 04:12:20', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2015-12-31 04:12:20', '2015-12-31 04:12:20', '', 6, 'http://vicparks.dev/app/uploads/2015/12/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2015-12-31 04:12:20', '2015-12-31 04:12:20', '', 'Slider3', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2015-12-31 04:12:20', '2015-12-31 04:12:20', '', 6, 'http://vicparks.dev/app/uploads/2015/12/Slider3.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2015-12-31 04:14:03', '2015-12-31 04:14:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 04:14:03', '2015-12-31 04:14:03', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-12-31 04:15:09', '2015-12-31 04:15:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 04:15:09', '2015-12-31 04:15:09', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2015-12-31 04:21:30', '2015-12-31 04:21:30', '', 'Choose-your-region', '', 'inherit', 'open', 'closed', '', 'choose-your-region', '', '', '2015-12-31 04:21:30', '2015-12-31 04:21:30', '', 0, 'http://vicparks.dev/app/uploads/2015/12/Choose-your-region.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2015-12-31 04:21:44', '2015-12-31 04:21:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 04:21:44', '2015-12-31 04:21:44', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-12-31 05:52:39', '2015-12-31 05:52:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 05:52:39', '2015-12-31 05:52:39', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-12-31 05:53:45', '2015-12-31 05:53:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 05:53:45', '2015-12-31 05:53:45', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-12-31 06:01:33', '2015-12-31 06:01:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:01:33', '2015-12-31 06:01:33', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-12-31 06:03:36', '2015-12-31 06:03:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:03:36', '2015-12-31 06:03:36', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-12-31 06:07:48', '2015-12-31 06:07:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:07:48', '2015-12-31 06:07:48', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-12-31 06:12:20', '2015-12-31 06:12:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:12:20', '2015-12-31 06:12:20', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2015-12-31 06:12:27', '2015-12-31 06:12:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:12:27', '2015-12-31 06:12:27', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2015-12-31 06:13:23', '2015-12-31 06:13:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:13:23', '2015-12-31 06:13:23', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-12-31 06:13:48', '2015-12-31 06:13:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:13:48', '2015-12-31 06:13:48', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2015-12-31 06:15:39', '2015-12-31 06:15:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:15:39', '2015-12-31 06:15:39', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2015-12-31 06:27:54', '2015-12-31 06:27:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-31 06:27:54', '2015-12-31 06:27:54', '', 6, 'http://vicparks.dev/2015/12/6-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-01-04 02:57:16', '2016-01-04 02:57:16', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:13:"park-category";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Park Categories', 'park-categories', 'publish', 'closed', 'closed', '', 'group_5689df7c00d72', '', '', '2016-01-04 03:29:17', '2016-01-04 03:29:17', '', 0, 'http://vicparks.dev/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2016-01-04 03:00:24', '2016-01-04 03:00:24', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Sub Heading', 'sub_heading', 'publish', 'closed', 'closed', '', 'field_5689e00f1cd58', '', '', '2016-01-04 03:00:24', '2016-01-04 03:00:24', '', 109, 'http://vicparks.dev/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2016-01-04 03:00:24', '2016-01-04 03:00:24', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Background Image', 'background_image_url', 'publish', 'closed', 'closed', '', 'field_5689e0161cd59', '', '', '2016-01-04 03:00:24', '2016-01-04 03:00:24', '', 109, 'http://vicparks.dev/?post_type=acf-field&p=111', 1, 'acf-field', '', 0),
(112, 1, '2016-01-04 03:01:53', '2016-01-04 03:01:53', 'a:14:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{s:10:"bg-primary";s:4:"Blue";s:7:"bg-info";s:10:"Light Blue";s:10:"bg-success";s:5:"Green";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:8:"disabled";i:0;s:8:"readonly";i:0;}', 'Theme', 'theme', 'publish', 'closed', 'closed', '', 'field_5689e06c1fd6b', '', '', '2016-01-04 03:29:17', '2016-01-04 03:29:17', '', 109, 'http://vicparks.dev/?post_type=acf-field&#038;p=112', 2, 'acf-field', '', 0),
(113, 1, '2016-01-05 06:21:08', '2016-01-05 06:21:08', 'Situated in the pleasant surroundings of Melbourne’s eastern suburbs, you’ll never be too far from a wide range of services. Our cabins accommodate up to 6,have air-conditioning, heating, ensuite, TV and fully equipped kitchen.', 'Wantirna Park', '', 'publish', 'closed', 'closed', '', 'wantirna-park', '', '', '2016-02-03 09:22:58', '2016-02-03 09:22:58', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=113', 0, 'park', '', 0),
(133, 1, '2016-02-01 08:48:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-01 08:48:09', '0000-00-00 00:00:00', '', 0, 'http://vicparks.dev/?p=133', 0, 'post', '', 0),
(134, 1, '2016-02-01 08:54:06', '2016-02-01 08:54:06', '[gmw_results]', 'Find a park', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-02-01 08:54:06', '2016-02-01 08:54:06', '', 27, 'http://vicparks.dev/2016/02/27-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2016-02-01 08:58:38', '2016-02-01 08:58:38', 'Looking for a great base from which to explore Melbourne and its surrounds? Looking for a quality venue able to excellently and affordably cater to large group bookings? Or just looking for a comfortable and convenient place that’s close to the airport (with DISCOUNT SHUTTLE BUS SERVICE) to spend a night or two? Or even in town for work and looking for quality self-contained accommodation at a great price? Airport Tourist Village Melbourne is the answer, an attractive, modern park, centrally located just minutes from Melbourne’s domestic and international airports, and an easy trip by car or public transport from Melbourne’s CBD.\r\n\r\nThe park has excellent facilities, a great range of accommodation to suit everyone, and is also ideally located for you to explore some of Melbourne and Victoria’s great attractions and events.', 'Airport Tourist Village Melbourne', '', 'publish', 'closed', 'closed', '', 'airport-tourist-village-melbourne', '', '', '2016-02-06 03:55:48', '2016-02-06 03:55:48', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=135', 0, 'park', '', 0),
(136, 1, '2016-02-02 03:42:00', '2016-02-02 03:42:00', '', 'Find a park', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-02-02 03:42:00', '2016-02-02 03:42:00', '', 27, 'http://vicparks.dev/2016/02/27-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2016-02-02 05:30:33', '2016-02-02 05:30:33', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:6:"region";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Region Details', 'region-details', 'publish', 'closed', 'closed', '', 'group_56b03ebea69e9', '', '', '2016-02-02 05:38:04', '2016-02-02 05:38:04', '', 0, 'http://vicparks.dev/?post_type=acf-field-group&#038;p=138', 0, 'acf-field-group', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(139, 1, '2016-02-02 05:30:33', '2016-02-02 05:30:33', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:30;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Longitude', 'longitude', 'publish', 'closed', 'closed', '', 'field_56b03f9f5938b', '', '', '2016-02-02 05:37:34', '2016-02-02 05:37:34', '', 138, 'http://vicparks.dev/?post_type=acf-field&#038;p=139', 2, 'acf-field', '', 0),
(140, 1, '2016-02-02 05:30:33', '2016-02-02 05:30:33', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:30;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Latitude', 'latitude', 'publish', 'closed', 'closed', '', 'field_56b03fc05938c', '', '', '2016-02-02 05:37:34', '2016-02-02 05:37:34', '', 138, 'http://vicparks.dev/?post_type=acf-field&#038;p=140', 1, 'acf-field', '', 0),
(141, 1, '2016-02-02 05:30:54', '2016-02-02 05:30:54', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Center Coordinates', '', 'publish', 'closed', 'closed', '', 'field_56b03fd19ee8e', '', '', '2016-02-02 05:31:32', '2016-02-02 05:31:32', '', 138, 'http://vicparks.dev/?post_type=acf-field&#038;p=141', 0, 'acf-field', '', 0),
(142, 1, '2016-02-02 05:36:14', '2016-02-02 05:36:14', 'a:14:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:30;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Map Zoom Level', 'map_zoom_level', 'publish', 'closed', 'closed', '', 'field_56b041080cd29', '', '', '2016-02-02 05:38:04', '2016-02-02 05:38:04', '', 138, 'http://vicparks.dev/?post_type=acf-field&#038;p=142', 3, 'acf-field', '', 0),
(143, 1, '2016-02-02 06:27:10', '2016-02-02 06:27:10', '', 'Blue Gum Residential Park', '', 'publish', 'closed', 'closed', '', 'blue-gum-residential-park', '', '', '2016-02-02 07:37:38', '2016-02-02 07:37:38', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=143', 0, 'park', '', 0),
(145, 1, '2016-02-03 01:56:50', '2016-02-03 01:56:50', 'Take a break and unwind at Carrum Downs Holiday Park. Bring your caravan and relax in your own space, or enjoy the convenience of your own lounge and kitchenette in one of our motel rooms.\r\n\r\nEnjoy some alfresco dining using our BBQ facilities, cool down in our large outdoor swimming pool, or play with your dog in our off-leash dog area.\r\n\r\nCarrum Downs Holiday Park is less than one hour’s drive from Melbourne, and perfectly situated for those wishing to access the tourist attractions of both the city and the Mornington Peninsula. Offering beautiful beaches and gardens, as well as some of Victoria’s best golf courses, the greater Frankston area is the perfect place to relax and enjoy yourself.', 'Carrum Downs Holiday Park', '', 'publish', 'closed', 'closed', '', 'carrum-downs-holiday-park', '', '', '2016-02-03 01:58:06', '2016-02-03 01:58:06', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=145', 0, 'park', '', 0),
(146, 1, '2016-02-03 01:59:22', '2016-02-03 01:59:22', 'Chelsea Holiday Park is based just off the Nepean Highway, only 45 minutes from Melbourne.\r\n\r\nThis park offers grassy powered sites, and several lovely tourist cabins available for short and long stays, which sleep up to four.\r\n\r\nThe large outdoor swimming pool, undercover BBQ area and playground make this an ideal park to bring your family, with the added convenience of an onsite coin laundry, milk bar and café.\r\n\r\nThe local area boasts numersous attractions including the Edithvale-Seaford Wetlands system, well known for its colourful bird life, and bicycle tracks that run all the way to Melbourne.\r\n', 'Chelsea Holiday Park', '', 'publish', 'closed', 'closed', '', 'chelsea-holiday-park', '', '', '2016-02-03 02:00:07', '2016-02-03 02:00:07', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=146', 0, 'park', '', 0),
(147, 1, '2016-02-03 01:59:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-02-03 01:59:44', '0000-00-00 00:00:00', '', 0, 'http://vicparks.dev/?post_type=park&p=147', 0, 'park', '', 0),
(148, 1, '2016-02-03 02:02:29', '2016-02-03 02:02:29', '', 'Crystal Brook Tourist Park', '', 'publish', 'closed', 'closed', '', 'crystal-brook-tourist-park', '', '', '2016-02-03 02:02:38', '2016-02-03 02:02:38', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=148', 0, 'park', '', 0),
(149, 1, '2016-02-03 02:42:05', '2016-02-03 02:42:05', '', 'Find a Park Form', '', 'publish', 'closed', 'closed', '', '149-2', '', '', '2016-02-03 09:13:26', '2016-02-03 09:13:26', '', 0, 'http://vicparks.dev/?post_type=search-filter-widget&#038;p=149', 0, 'search-filter-widget', '', 0),
(150, 1, '2016-02-03 02:42:33', '2016-02-03 02:42:33', '[searchandfilter id="149"]', 'Find a park', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-02-03 02:42:33', '2016-02-03 02:42:33', '', 27, 'http://vicparks.dev/2016/02/27-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2016-02-03 23:17:33', '2016-02-03 23:17:33', '', 'Where do you want to go_Beach Beauty', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_beach-beauty', '', '', '2016-02-03 23:17:33', '2016-02-03 23:17:33', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Beach-Beauty.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2016-02-03 23:22:14', '2016-02-03 23:22:14', '', 'Where do you want to go_Beach Beauty', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_beach-beauty-2', '', '', '2016-02-03 23:22:14', '2016-02-03 23:22:14', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Beach-Beauty-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2016-02-03 23:32:19', '2016-02-03 23:32:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-02-03 23:32:19', '2016-02-03 23:32:19', '', 6, 'http://vicparks.dev/2016/02/6-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2016-02-03 23:42:38', '2016-02-03 23:42:38', '', 'Where do you want to go_Adventure_in Victoria_', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_adventure_in-victoria_', '', '', '2016-02-03 23:42:38', '2016-02-03 23:42:38', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Adventure_in-Victoria_.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2016-02-03 23:42:40', '2016-02-03 23:42:40', '', 'Where do you want to go_Going Fishing!_visionsofvictoria919489-302', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_going-fishing_visionsofvictoria919489-302', '', '', '2016-02-03 23:42:40', '2016-02-03 23:42:40', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Going-Fishing_visionsofvictoria919489-302.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2016-02-03 23:42:41', '2016-02-03 23:42:41', '', 'Where do you want to go_Push the boat out!_visionsofvictoria1049661-302', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_push-the-boat-out_visionsofvictoria1049661-302', '', '', '2016-02-03 23:42:41', '2016-02-03 23:42:41', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Push-the-boat-out_visionsofvictoria1049661-302.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2016-02-03 23:42:42', '2016-02-03 23:42:42', '', 'Where do you want to go_Put your feet up year round (annual holiday sites) 2_2012 caravan cover', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_put-your-feet-up-year-round-annual-holiday-sites-2_2012-caravan-cover', '', '', '2016-02-03 23:42:42', '2016-02-03 23:42:42', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Put-your-feet-up-year-round-annual-holiday-sites-2_2012-caravan-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2016-02-03 23:42:43', '2016-02-03 23:42:43', '', 'Where do you want to go_Summer Sun', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_summer-sun', '', '', '2016-02-03 23:42:43', '2016-02-03 23:42:43', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Summer-Sun.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2016-02-03 23:42:45', '2016-02-03 23:42:45', '', 'Where do you want to go_Surfing', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_surfing', '', '', '2016-02-03 23:42:45', '2016-02-03 23:42:45', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Surfing.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2016-02-03 23:42:46', '2016-02-03 23:42:46', '', 'where do you want to go_When in doubt pedal it out! (cycling__visionsofvictoria1461465-302', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_when-in-doubt-pedal-it-out-cycling__visionsofvictoria1461465-302', '', '', '2016-02-03 23:42:46', '2016-02-03 23:42:46', '', 0, 'http://vicparks.dev/app/uploads/2016/02/where-do-you-want-to-go_When-in-doubt-pedal-it-out-cycling__visionsofvictoria1461465-302.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2016-02-03 23:42:47', '2016-02-03 23:42:47', '', 'Where do you want to go_Looking for a new home(residential_lifestyle communities', '', 'inherit', 'open', 'closed', '', 'where-do-you-want-to-go_looking-for-a-new-homeresidential_lifestyle-communities', '', '', '2016-02-03 23:42:47', '2016-02-03 23:42:47', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Where-do-you-want-to-go_Looking-for-a-new-homeresidential_lifestyle-communities.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2016-02-04 00:20:47', '2016-02-04 00:20:47', '', 'Choose your region_Geelong & Bellarine Peininsula_visionsofvictoria1377900-302', '', 'inherit', 'open', 'closed', '', 'choose-your-region_geelong-bellarine-peininsula_visionsofvictoria1377900-302', '', '', '2016-02-04 00:20:47', '2016-02-04 00:20:47', '', 0, 'http://vicparks.dev/app/uploads/2016/02/Choose-your-region_Geelong-Bellarine-Peininsula_visionsofvictoria1377900-302.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2016-02-04 02:32:47', '2016-02-04 02:32:47', '<strong>**State Control Centre media release **</strong>\n\nWhile the fire is not under control, it is currently burning away from the coast in deep seated forest and is blacked out along the Great Ocean Road between Cumberland River and Wye River.\n\nEmergency Management Commissioner Craig Lapsley said it was safe to reopen the Great Ocean Road which was critical for business and community, in what is a peak tourism period. It has been closed since Christmas Day.\n\n“Business and tourism is a crucial part of what makes a community run and particularly in an area such as the surf coast which heavily relies on summer tourism,” he said.\n\nThe Great Ocean Road will open from 8.00am Wednesday at a reduced speed and no vehicles will be allowed to stop between Cumberland River and Wye River bridge. This includes look-out points and pull-over areas on the sides of the road.\n\n“We want everyone to support local businesses and enjoy the area, but to be aware that there is still a fire being worked on so people will see aircraft and trucks and at times, smoke,” Mr Lapsley said.\n\n“Keep up to date with the latest warnings and advice and if you are travelling to the area, check the Fire Danger Ratings before you go and while you are there. Know where to get information from and what you will do if the situation changes.\n\n“Visitors are welcome and encouraged to return to these areas but please respect the privacy of residents and visitors who have been affected by the fire. This includes not taking photographs of fire affected residential areas.“\n\nAircraft and around 300 personnel continue to work on the fire each day, with the fire’s perimeter now 45 kilometres and 2500 hectares burnt. Crews from New Zealand and incident management personnel from New South Wales are also supporting.\n\nMr Lapsley said the focus has been on controlling the fire and returning residents to their homes.\n\n“When fire conditions eased enough last week, the priority was to send specialist teams in to assess the damage and the work that needed to be undertaken to return people to their homes,” he said.\n\n“Over the past few days we have seen the reopening of Kennett River and Cumberland River, including for campers, and residents safely returned to some homes in the Wye River and Separation Creek areas.\n\n“Our thoughts are with those who cannot return to their homes or properties because of safety issues.  There is still a lot of work to do in this space and we will continue to work with these communities."\n\nMr Lapsley said rehousing residents and reopening roads had been a huge logistical exercise and joint effort between agencies, local council, government, business and community.\n\n“After a fire it is not as simple as saying the fire activity has subsided so we will reopen the road or a town.   Building surveyors need to undertake assessments, infrastructure needs to be replaced and hazardous trees need to be looked at or removed - first and foremost it is about safety,” he said.\n\n“Without agencies, government, business and communities working together we would not have been able to achieve what we have in and around Wye River, particularly in the time frame, and I thank each and every one of you who have contributed and the residents and public for their patience.”\n<div class="social_icons"><a href="http://news.cfa.vic.gov.au/news/great-ocean-road-to-reopen.html">http://news.cfa.vic.gov.au/news/great-ocean-road-to-reopen.html</a></div>', 'Great Ocean Road to reopen', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2016-02-04 02:32:47', '2016-02-04 02:32:47', '', 58, 'http://vicparks.dev/2016/02/58-autosave-v1/', 0, 'revision', '', 0),
(164, 1, '2016-02-04 02:32:53', '2016-02-04 02:32:53', '<strong>**State Control Centre media release **</strong>\r\n\r\nWhile the fire is not under control, it is currently burning away from the coast in deep seated forest and is blacked out along the Great Ocean Road between Cumberland River and Wye River.\r\n\r\nEmergency Management Commissioner Craig Lapsley said it was safe to reopen the Great Ocean Road which was critical for business and community, in what is a peak tourism period. It has been closed since Christmas Day.\r\n\r\n“Business and tourism is a crucial part of what makes a community run and particularly in an area such as the surf coast which heavily relies on summer tourism,” he said.\r\n\r\nThe Great Ocean Road will open from 8.00am Wednesday at a reduced speed and no vehicles will be allowed to stop between Cumberland River and Wye River bridge. This includes look-out points and pull-over areas on the sides of the road.\r\n\r\n“We want everyone to support local businesses and enjoy the area, but to be aware that there is still a fire being worked on so people will see aircraft and trucks and at times, smoke,” Mr Lapsley said.\r\n\r\n“Keep up to date with the latest warnings and advice and if you are travelling to the area, check the Fire Danger Ratings before you go and while you are there. Know where to get information from and what you will do if the situation changes.\r\n\r\n“Visitors are welcome and encouraged to return to these areas but please respect the privacy of residents and visitors who have been affected by the fire. This includes not taking photographs of fire affected residential areas.“\r\n\r\nAircraft and around 300 personnel continue to work on the fire each day, with the fire’s perimeter now 45 kilometres and 2500 hectares burnt. Crews from New Zealand and incident management personnel from New South Wales are also supporting.\r\n\r\nMr Lapsley said the focus has been on controlling the fire and returning residents to their homes.\r\n\r\n“When fire conditions eased enough last week, the priority was to send specialist teams in to assess the damage and the work that needed to be undertaken to return people to their homes,” he said.\r\n\r\n“Over the past few days we have seen the reopening of Kennett River and Cumberland River, including for campers, and residents safely returned to some homes in the Wye River and Separation Creek areas.\r\n\r\n“Our thoughts are with those who cannot return to their homes or properties because of safety issues.  There is still a lot of work to do in this space and we will continue to work with these communities."\r\n\r\nMr Lapsley said rehousing residents and reopening roads had been a huge logistical exercise and joint effort between agencies, local council, government, business and community.\r\n\r\n“After a fire it is not as simple as saying the fire activity has subsided so we will reopen the road or a town.   Building surveyors need to undertake assessments, infrastructure needs to be replaced and hazardous trees need to be looked at or removed - first and foremost it is about safety,” he said.\r\n\r\n“Without agencies, government, business and communities working together we would not have been able to achieve what we have in and around Wye River, particularly in the time frame, and I thank each and every one of you who have contributed and the residents and public for their patience.”\r\n<div class="social_icons"><a href="http://news.cfa.vic.gov.au/news/great-ocean-road-to-reopen.html">http://news.cfa.vic.gov.au/news/great-ocean-road-to-reopen.html</a></div>', 'Great Ocean Road to reopen', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-02-04 02:32:53', '2016-02-04 02:32:53', '', 58, 'http://vicparks.dev/2016/02/58-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2016-02-04 02:57:42', '2016-02-04 02:57:42', '', 'Find a Park Form', '', 'publish', 'closed', 'closed', '', 'find-a-park-form', '', '', '2016-02-04 02:57:42', '2016-02-04 02:57:42', '', 0, 'http://vicparks.dev/?post_type=search-filter-widget&#038;p=165', 0, 'search-filter-widget', '', 0),
(166, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"template-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5684a97558232', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 0, 'http://vicparks.dev/?post_type=acf-field-group&p=166', 0, 'acf-field-group', '', 0),
(167, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Slider', '', 'publish', 'closed', 'closed', '', 'field_5684aa3d86bae', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 166, 'http://vicparks.dev/?post_type=acf-field&p=167', 0, 'acf-field', '', 0),
(168, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:9:"Add Slide";}', 'Slides', 'slides', 'publish', 'closed', 'closed', '', 'field_5684a9ab6b84f', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 166, 'http://vicparks.dev/?post_type=acf-field&p=168', 1, 'acf-field', '', 0),
(169, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Choose Your Region Section', '', 'publish', 'closed', 'closed', '', 'field_5684aa7e716f0', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 166, 'http://vicparks.dev/?post_type=acf-field&p=169', 2, 'acf-field', '', 0),
(170, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Region Background Image', 'region_background_image', 'publish', 'closed', 'closed', '', 'field_5684aa8b716f1', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 166, 'http://vicparks.dev/?post_type=acf-field&p=170', 3, 'acf-field', '', 0),
(171, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Featured Park Section', '', 'publish', 'closed', 'closed', '', 'field_56b2c3e27f22e', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 166, 'http://vicparks.dev/?post_type=acf-field&p=171', 4, 'acf-field', '', 0),
(172, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:4:"park";}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:1;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'Featured Park', 'featured_park', 'publish', 'closed', 'closed', '', 'field_56b2c4019aea9', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 166, 'http://vicparks.dev/?post_type=acf-field&p=172', 5, 'acf-field', '', 0),
(173, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Banner Heading', 'banner_heading', 'publish', 'closed', 'closed', '', 'field_5684c58aa1f1d', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 168, 'http://vicparks.dev/?post_type=acf-field&p=173', 0, 'acf-field', '', 0),
(174, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:7:"#004b9b";}', 'Banner Heading Text Color', 'banner_heading_text_color', 'publish', 'closed', 'closed', '', 'field_5684c5bbdea52', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 168, 'http://vicparks.dev/?post_type=acf-field&p=174', 1, 'acf-field', '', 0),
(175, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Slide Image', 'slide_image', 'publish', 'closed', 'closed', '', 'field_5684a9c16b850', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 168, 'http://vicparks.dev/?post_type=acf-field&p=175', 2, 'acf-field', '', 0),
(176, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Slide Caption', 'slide_caption', 'publish', 'closed', 'closed', '', 'field_5684a9eb6b851', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 168, 'http://vicparks.dev/?post_type=acf-field&p=176', 3, 'acf-field', '', 0),
(177, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:9:{s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:0:{}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;}', 'Slide link', 'slide_link', 'publish', 'closed', 'closed', '', 'field_5684c2a73878a', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 168, 'http://vicparks.dev/?post_type=acf-field&p=177', 4, 'acf-field', '', 0),
(178, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"park";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Park Information', 'park-information', 'publish', 'closed', 'closed', '', 'group_568b5c10815ca', '', '', '2016-02-05 07:50:04', '2016-02-05 07:50:04', '', 0, 'http://vicparks.dev/?post_type=acf-field-group&#038;p=178', 0, 'acf-field-group', '', 0),
(179, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Park Headline', 'park_headline', 'publish', 'closed', 'closed', '', 'field_56b2c3717d1af', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=179', 0, 'acf-field', '', 0),
(180, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:37:"Park Description on Google Map Pop Up";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Park Description', 'park_description', 'publish', 'closed', 'closed', '', 'field_56b05cdae9aed', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=180', 1, 'acf-field', '', 0),
(181, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Contact Information', '', 'publish', 'closed', 'closed', '', 'field_568b5c8b6a9e7', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=181', 2, 'acf-field', '', 0),
(182, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_568b5c22b105c', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=182', 3, 'acf-field', '', 0),
(183, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:14:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:25;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Telephone', 'telephone', 'publish', 'closed', 'closed', '', 'field_568b5c33b105d', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=183', 4, 'acf-field', '', 0),
(184, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:14:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:25;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Fax', 'fax', 'publish', 'closed', 'closed', '', 'field_568b5c4db105e', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=184', 5, 'acf-field', '', 0),
(185, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:25;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_568b5c5be40a8', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=185', 6, 'acf-field', '', 0),
(186, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:25;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Website', 'website', 'publish', 'closed', 'closed', '', 'field_568b5c6373887', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=186', 7, 'acf-field', '', 0),
(187, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Features', '', 'publish', 'closed', 'closed', '', 'field_568b5c6f6a9e6', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=187', 8, 'acf-field', '', 0),
(188, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Features', 'features', 'publish', 'closed', 'closed', '', 'field_568b5cb46a9e8', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=188', 9, 'acf-field', '', 0),
(189, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Social Media', '', 'publish', 'closed', 'closed', '', 'field_568b5dc75a23b', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=189', 10, 'acf-field', '', 0),
(190, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Social Media', 'social_media', 'publish', 'closed', 'closed', '', 'field_568b5dd75a23c', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=190', 11, 'acf-field', '', 0),
(191, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Images', '', 'publish', 'closed', 'closed', '', 'field_568b5f80f8ddc', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=191', 12, 'acf-field', '', 0),
(192, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo_url', 'publish', 'closed', 'closed', '', 'field_568b5ef23ef70', '', '', '2016-02-05 07:50:04', '2016-02-05 07:50:04', '', 178, 'http://vicparks.dev/?post_type=acf-field&#038;p=192', 13, 'acf-field', '', 0),
(193, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_568b5f94f8ddd', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 178, 'http://vicparks.dev/?post_type=acf-field&p=193', 14, 'acf-field', '', 0),
(194, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Feature Icon', 'icon_url', 'publish', 'closed', 'closed', '', 'field_568b5cbf6a9e9', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 188, 'http://vicparks.dev/?post_type=acf-field&p=194', 0, 'acf-field', '', 0),
(195, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Feature Name', 'feature_name', 'publish', 'closed', 'closed', '', 'field_568b5ce46a9ea', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 188, 'http://vicparks.dev/?post_type=acf-field&p=195', 1, 'acf-field', '', 0),
(196, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:14:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:6:{s:8:"Facebook";s:8:"Facebook";s:7:"Twitter";s:7:"Twitter";s:9:"Instagram";s:9:"Instagram";s:7:"Youtube";s:7:"Youtube";s:6:"Google";s:6:"Google";s:8:"LinkedIn";s:8:"LinkedIn";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:8:"disabled";i:0;s:8:"readonly";i:0;}', 'Account Type', 'account_type', 'publish', 'closed', 'closed', '', 'field_568b5e195a23d', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 190, 'http://vicparks.dev/?post_type=acf-field&p=196', 0, 'acf-field', '', 0),
(197, 1, '2016-02-04 04:03:20', '2016-02-04 04:03:20', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_568b5e5c5a23e', '', '', '2016-02-04 04:03:20', '2016-02-04 04:03:20', '', 190, 'http://vicparks.dev/?post_type=acf-field&p=197', 1, 'acf-field', '', 0),
(198, 1, '2016-02-04 04:05:32', '2016-02-04 04:05:32', 'The perfect escape for your next holiday or short break', 'BIG4 Beacon Resort', '', 'publish', 'closed', 'closed', '', 'big4-beacon-resort', '', '', '2016-02-04 04:06:57', '2016-02-04 04:06:57', '', 0, 'http://vicparks.dev/?post_type=park&#038;p=198', 0, 'park', '', 0),
(199, 1, '2016-02-04 04:05:50', '2016-02-04 04:05:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-02-04 04:05:50', '2016-02-04 04:05:50', '', 6, 'http://vicparks.dev/2016/02/6-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2016-02-04 04:06:52', '2016-02-04 04:06:52', '', 'Feature Park 3_BIG4 Swan Hill Riverside_rivers site good', '', 'inherit', 'open', 'closed', '', 'feature-park-3_big4-swan-hill-riverside_rivers-site-good', '', '', '2016-02-04 04:06:52', '2016-02-04 04:06:52', '', 198, 'http://vicparks.dev/app/uploads/2016/02/Feature-Park-3_BIG4-Swan-Hill-Riverside_rivers-site-good.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2016-02-05 06:33:36', '2016-02-05 06:33:36', '', '933-x-400-ATVM4-408x312', '', 'inherit', 'open', 'closed', '', '933-x-400-atvm4-408x312', '', '', '2016-02-05 06:33:36', '2016-02-05 06:33:36', '', 135, 'http://vicparks.dev/app/uploads/2016/02/933-x-400-ATVM4-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2016-02-05 06:33:37', '2016-02-05 06:33:37', '', '933-x-400-IMG_3414-01-408x312', '', 'inherit', 'open', 'closed', '', '933-x-400-img_3414-01-408x312', '', '', '2016-02-05 06:33:37', '2016-02-05 06:33:37', '', 135, 'http://vicparks.dev/app/uploads/2016/02/933-x-400-IMG_3414-01-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2016-02-05 06:33:38', '2016-02-05 06:33:38', '', 'IMG_5813-408x312', '', 'inherit', 'open', 'closed', '', 'img_5813-408x312', '', '', '2016-02-05 06:33:38', '2016-02-05 06:33:38', '', 135, 'http://vicparks.dev/app/uploads/2016/02/IMG_5813-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2016-02-05 06:33:39', '2016-02-05 06:33:39', '', 'IMG_5854-408x312', '', 'inherit', 'open', 'closed', '', 'img_5854-408x312', '', '', '2016-02-05 06:33:39', '2016-02-05 06:33:39', '', 135, 'http://vicparks.dev/app/uploads/2016/02/IMG_5854-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2016-02-05 06:33:39', '2016-02-05 06:33:39', '', 'IMG_5890-408x312', '', 'inherit', 'open', 'closed', '', 'img_5890-408x312', '', '', '2016-02-05 06:33:39', '2016-02-05 06:33:39', '', 135, 'http://vicparks.dev/app/uploads/2016/02/IMG_5890-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(206, 1, '2016-02-05 06:33:40', '2016-02-05 06:33:40', '', 'IMG_6448-408x294', '', 'inherit', 'open', 'closed', '', 'img_6448-408x294', '', '', '2016-02-05 06:33:40', '2016-02-05 06:33:40', '', 135, 'http://vicparks.dev/app/uploads/2016/02/IMG_6448-408x294.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2016-02-05 06:33:41', '2016-02-05 06:33:41', '', 'MG_5783-408x312', '', 'inherit', 'open', 'closed', '', 'mg_5783-408x312', '', '', '2016-02-05 06:33:41', '2016-02-05 06:33:41', '', 135, 'http://vicparks.dev/app/uploads/2016/02/MG_5783-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2016-02-05 06:33:42', '2016-02-05 06:33:42', '', 'MG_6336-408x312', '', 'inherit', 'open', 'closed', '', 'mg_6336-408x312', '', '', '2016-02-05 06:33:42', '2016-02-05 06:33:42', '', 135, 'http://vicparks.dev/app/uploads/2016/02/MG_6336-408x312.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2016-02-05 07:48:11', '2016-02-05 07:48:11', '', 'airport-tourist-village-logo', '', 'inherit', 'open', 'closed', '', 'airport-tourist-village-logo', '', '', '2016-02-05 07:48:11', '2016-02-05 07:48:11', '', 135, 'http://vicparks.dev/app/uploads/2016/02/airport-tourist-village-logo.png', 0, 'attachment', 'image/png', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_ratings`
#

DROP TABLE IF EXISTS `wp_ratings`;


#
# Table structure of table `wp_ratings`
#

CREATE TABLE `wp_ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_postid` int(11) NOT NULL,
  `rating_posttitle` text NOT NULL,
  `rating_rating` int(2) NOT NULL,
  `rating_timestamp` varchar(15) NOT NULL,
  `rating_ip` varchar(40) NOT NULL,
  `rating_host` varchar(200) NOT NULL,
  `rating_username` varchar(50) NOT NULL,
  `rating_userid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_ratings`
#
INSERT INTO `wp_ratings` ( `rating_id`, `rating_postid`, `rating_posttitle`, `rating_rating`, `rating_timestamp`, `rating_ip`, `rating_host`, `rating_username`, `rating_userid`) VALUES
(1, 135, 'Airport Tourist Village Melbourne', 5, '1454654082', '49.151.105.194', 'dsl.49.151.105.194.pldt.net', 'Guest', 0) ;

#
# End of data contents of table `wp_ratings`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form`
#

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8_unicode_ci,
  `confirmations` longtext COLLATE utf8_unicode_ci,
  `notifications` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form_meta`
#

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form_view`
#

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;


#
# Table structure of table `wp_rg_incomplete_submissions`
#

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead`
#

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail`
#

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `note_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(58, 25, 0),
(58, 26, 0),
(60, 1, 0),
(113, 24, 0),
(135, 15, 0),
(143, 15, 0),
(146, 15, 0),
(148, 15, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'park category', 'Summers like you remember them from your childhood', 0, 0),
(5, 5, 'park-category', 'Summers like you remember', 0, 0),
(6, 6, 'park-category', 'Expect the unexpected', 0, 0),
(7, 7, 'park-category', 'The best beaches in stunning locations', 0, 0),
(8, 8, 'park-category', 'Finally hooking the one that always got away', 0, 0),
(9, 9, 'park-category', 'There\'s nothing like messing about in boats', 0, 0),
(10, 10, 'park-category', 'And the next wave can be yours', 0, 0),
(11, 11, 'park-category', 'Bike trails for the family and the fluoro brigade', 0, 0),
(12, 12, 'park-category', 'Finding friends and security in a new location', 0, 0),
(13, 13, 'park-category', 'Arriving in your little bit of heaven - bliss', 0, 0),
(14, 14, 'region', '', 0, 0),
(15, 15, 'region', '', 0, 4),
(16, 16, 'region', '', 0, 0),
(17, 17, 'region', '', 0, 0),
(18, 18, 'region', '', 0, 0),
(19, 19, 'region', '', 0, 0),
(20, 20, 'region', '', 0, 0),
(21, 21, 'region', '', 0, 0),
(22, 22, 'region', '', 0, 0),
(23, 23, 'region', '', 0, 0),
(24, 24, 'region', '', 0, 1),
(25, 25, 'category', '', 0, 1),
(26, 26, 'category', '', 0, 1),
(27, 27, 'region', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Navigation', 'top-navigation', 0),
(3, 'Main Nav', 'main-nav', 0),
(4, 'Summer Sun', 'summer-sun', 0),
(5, 'Summer Sun', 'summer-sun', 0),
(6, 'Adventure in Victoria', 'adventure-in-victoria', 0),
(7, 'Beach Beauty', 'beach-beauty', 0),
(8, 'Going Fishing!', 'going-fishing', 0),
(9, 'Push the boat out!', 'push-the-boat-out-boating', 0),
(10, 'Surf\'s Up', 'surfs-up', 0),
(11, 'When in doubt pedal it out!', 'when-in-doubt-pedal-it-out-cycling', 0),
(12, 'Looking for a new home', 'looking-for-a-new-home-residential-parks', 0),
(13, 'Put your feet up year round', 'put-your-feet-up-year-round-annual-holiday-sites', 0),
(14, 'Daylesford and the Macedon Ranges', 'daylesford-and-the-macedon-ranges', 0),
(15, 'Melbourne', 'melbourne', 0),
(16, 'Gippsland', 'gippsland', 0),
(17, 'Goldfields', 'goldfields', 0),
(18, 'Grampians', 'grampians', 0),
(19, 'Great Ocean Road', 'great-ocean-road', 0),
(20, 'Mornington Peninsula', 'mornington-peninsula', 0),
(21, 'Phillip Island', 'phillip-island', 0),
(22, 'The Murray', 'the-murray', 0),
(23, 'Victoria High Country', 'victoria-high-country', 0),
(24, 'Yarra Valley and Dandenong Ranges', 'yarra-valley-and-dandenong-ranges', 0),
(25, 'News', 'news', 0),
(26, 'Media release', 'media-release', 0),
(27, 'Geelong and Bellarine Peninsula', 'geelong-and-bellarine-peninsula', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"75215c3ea25d835afadf594060634e8aa2c89510a80b54c52f160f5bb0ca7fd6";a:4:{s:10:"expiration";i:1455701632;s:2:"ip";s:14:"49.151.105.194";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36";s:5:"login";i:1454492032;}s:64:"0d02fa63864fa51f44ea96d840321f548620a0437c16ed65c6eb0348c309fa7b";a:4:{s:10:"expiration";i:1456034549;s:2:"ip";s:14:"49.151.105.194";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36";s:5:"login";i:1454824949;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '133'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'layerslider_help_wp_pointer', '1'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1454542396'),
(21, 1, 'closedpostboxes_page', 'a:1:{i:0;s:15:"mostrar_metabox";}'),
(22, 1, 'metaboxhidden_page', 'a:9:{i:0;s:23:"acf-group_568b5c10815ca";i:1;s:23:"acf-group_5684940e86f32";i:2;s:23:"acf-group_5689df7c00d72";i:3;s:23:"acf-group_56b03ebea69e9";i:4;s:10:"postcustom";i:5;s:16:"commentstatusdiv";i:6;s:11:"commentsdiv";i:7;s:7:"slugdiv";i:8;s:9:"authordiv";}'),
(23, 1, 'search-filter-show-welcome-notice', '1'),
(24, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:23:"acf-group_568b5c10815ca";s:4:"side";s:52:"mostrar_metabox,submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:166:"acf-group_5684940e86f32,acf-group_5684a97558232,acf-group_5689df7c00d72,acf-group_56b03ebea69e9,revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_page', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSM35ycy7k42bg4lKUHVzR.st/9VPu/', 'admin', 'admin@vicparks.dev', '', '2015-12-09 04:06:43', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

