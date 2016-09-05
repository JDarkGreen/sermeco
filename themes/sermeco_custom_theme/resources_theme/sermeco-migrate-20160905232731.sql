# WordPress MySQL database migration
#
# Generated: Monday 5. September 2016 23:27 UTC
# Hostname: localhost
# Database: `sermeco`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-09-05 15:40:40', '2016-09-05 15:40:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/sermeco', 'yes'),
(2, 'home', 'http://localhost/sermeco', 'yes'),
(3, 'blogname', 'Sermeco Website', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez.4net@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:166:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:17:"theme-services/?$";s:34:"index.php?post_type=theme-services";s:47:"theme-services/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:42:"theme-services/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:34:"theme-services/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-services&paged=$matches[1]";s:23:"theme-gallery-images/?$";s:40:"index.php?post_type=theme-gallery-images";s:53:"theme-gallery-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-images&feed=$matches[1]";s:48:"theme-gallery-images/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-images&feed=$matches[1]";s:40:"theme-gallery-images/page/([0-9]{1,})/?$";s:58:"index.php?post_type=theme-gallery-images&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:58:"producto-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?producto_category=$matches[1]&feed=$matches[2]";s:53:"producto-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?producto_category=$matches[1]&feed=$matches[2]";s:34:"producto-category/([^/]+)/embed/?$";s:50:"index.php?producto_category=$matches[1]&embed=true";s:46:"producto-category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?producto_category=$matches[1]&paged=$matches[2]";s:28:"producto-category/([^/]+)/?$";s:39:"index.php?producto_category=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-services/([^/]+)/embed/?$";s:47:"index.php?theme-services=$matches[1]&embed=true";s:35:"theme-services/([^/]+)/trackback/?$";s:41:"index.php?theme-services=$matches[1]&tb=1";s:55:"theme-services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:50:"theme-services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:43:"theme-services/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&paged=$matches[2]";s:50:"theme-services/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&cpage=$matches[2]";s:39:"theme-services/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-services=$matches[1]&page=$matches[2]";s:31:"theme-services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"theme-gallery-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"theme-gallery-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"theme-gallery-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"theme-gallery-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"theme-gallery-images/([^/]+)/embed/?$";s:53:"index.php?theme-gallery-images=$matches[1]&embed=true";s:41:"theme-gallery-images/([^/]+)/trackback/?$";s:47:"index.php?theme-gallery-images=$matches[1]&tb=1";s:61:"theme-gallery-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-images=$matches[1]&feed=$matches[2]";s:56:"theme-gallery-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-images=$matches[1]&feed=$matches[2]";s:49:"theme-gallery-images/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?theme-gallery-images=$matches[1]&paged=$matches[2]";s:56:"theme-gallery-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?theme-gallery-images=$matches[1]&cpage=$matches[2]";s:45:"theme-gallery-images/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?theme-gallery-images=$matches[1]&page=$matches[2]";s:37:"theme-gallery-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"theme-gallery-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"theme-gallery-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"theme-gallery-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:37:"error-log-viewer/error-log-viewer.php";i:1;s:45:"material-admin-theme/material-admin-theme.php";i:2;s:41:"page-or-post-clone/page-or-post-clone.php";i:3;s:35:"wp-media-folder/wp-media-folder.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sermeco_custom_theme', 'yes'),
(41, 'stylesheet', 'sermeco_custom_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1473119405;a:1:{s:22:"rrrlgvwr_shedule_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:17:"rrrlgvwr_interval";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1473133242;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1473133733;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1473176470;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473186842;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(117, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'wpmf_use_taxonomy', '1', 'yes'),
(148, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(149, 'wpmf_padding_masonry', '5', 'yes'),
(150, 'wpmf_padding_portfolio', '10', 'yes'),
(151, 'wpmf_usegellery', '1', 'yes'),
(152, 'wpmf_useorder', '1', 'yes'),
(153, 'wpmf_folder_option1', '0', 'yes'),
(154, 'wpmf_option_override', '0', 'yes'),
(155, 'wpmf_active_media', '0', 'yes'),
(156, 'wpmf_folder_option2', '1', 'yes'),
(157, 'wpmf_option_searchall', '0', 'yes'),
(158, 'wpmf_usegellery_lightbox', '1', 'yes'),
(159, 'wpmf_media_rename', '0', 'yes'),
(160, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(161, 'wpmf_rename_number', '0', 'yes'),
(162, 'wpmf_option_media_remove', '0', 'yes'),
(163, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(164, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(165, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(166, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(167, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(168, 'wpmf_option_singlefile', '0', 'yes'),
(169, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1473111507;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.1";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.1";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(170, '_wpmf_import_notice_flag', 'no', 'yes'),
(173, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(174, 'rrrlgvwr_options', 'a:17:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";s:2:"10";s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:44:"C:/xampp/htdocs/sermeco/wp-content/debug.log";s:17:"count_visible_log";i:1;s:14:"frequency_send";s:1:"1";s:8:"hour_day";s:4:"3600";s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:13:"first_install";i:1473090549;s:19:"go_settings_counter";i:1;s:9:"file_path";a:1:{i:1;s:44:"C:/xampp/htdocs/sermeco/wp-content/debug.log";}s:10:"send_email";i:1;s:15:"0_debug_visible";i:1;s:5:"email";s:21:"jgomez.4net@gmail.com";s:24:"change_file_size_1_debug";i:7451;}', 'yes'),
(176, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1473090846;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(177, 'current_theme', 'Sermeco Website', 'yes'),
(178, 'theme_mods_sermeco_custom_theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:3;}}', 'yes'),
(179, 'theme_switched', '', 'yes'),
(180, 'theme_settings', 'a:27:{s:16:"theme_rewriteurl";a:4:{s:17:"producto_category";s:17:"producto_category";s:11:"slider-home";s:11:"slider-home";s:14:"theme-producto";s:14:"theme-producto";s:20:"theme-gallery-images";s:20:"theme-gallery-images";}s:20:"theme_social_fb_text";s:6:"asdasd";s:25:"theme_social_twitter_text";s:0:"";s:25:"theme_social_youtube_text";s:0:"";s:23:"theme_meta_presentacion";a:2:{i:0;s:4:" \r\n	";i:1;s:4:" \r\n	";}s:19:"theme_meta_brochure";s:0:"";s:27:"theme_meta_gallery_nosotros";s:2:"-1";s:12:"theme_mision";a:2:{s:4:"text";s:25:"                         ";s:5:"image";s:0:"";}s:12:"theme_vision";a:2:{s:4:"text";s:25:"                         ";s:5:"image";s:0:"";}s:30:"theme_organizational_structure";a:2:{s:4:"text";s:25:"                         ";s:5:"image";s:0:"";}s:14:"theme_ruc_text";s:25:"                         ";s:16:"theme_phone_text";a:2:{i:0;s:0:"";i:1;s:0:"";}s:14:"theme_cel_text";a:2:{i:0;s:0:"";i:1;s:0:"";}s:16:"theme_email_text";s:0:"";s:18:"theme_address_text";s:25:"                         ";s:15:"theme_lat_coord";s:0:"";s:16:"theme_long_coord";s:0:"";s:15:"theme_zoom_mapa";s:2:"16";s:21:"theme_text_markup_map";s:25:"                         ";s:17:"theme_img_contact";s:0:"";s:20:"theme_meta_logo_text";s:60:"http://localhost/sermeco/wp-content/uploads/2016/09/logo.jpg";s:22:"theme_meta_slogan_text";s:25:"                         ";s:22:"theme_meta_header_text";s:25:"                         ";s:17:"theme_footer_text";s:25:"                         ";s:22:"theme_footer_more_info";s:25:"                         ";s:13:"theme_code_qr";s:0:"";s:33:"theme_text_proyectos_presentation";s:0:"";}', 'yes'),
(189, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(204, 'wpmf-category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_wp_attached_file', '2016/09/logo.jpg'),
(5, 5, 'wpmf_size', '11762'),
(6, 5, 'wpmf_filetype', 'jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:327;s:6:"height";i:91;s:4:"file";s:16:"2016/09/logo.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x91.jpg";s:5:"width";i:150;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x83.jpg";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:15:"logo-210x91.jpg";s:5:"width";i:210;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1473100439'),
(10, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(11, 7, '_edit_last', '1'),
(12, 7, '_edit_lock', '1473100319:1'),
(13, 9, '_edit_last', '1'),
(14, 9, '_edit_lock', '1473100336:1'),
(15, 11, '_edit_last', '1'),
(16, 11, '_edit_lock', '1473100346:1'),
(17, 13, '_edit_last', '1'),
(18, 13, '_edit_lock', '1473100354:1'),
(19, 15, '_edit_last', '1'),
(20, 15, '_edit_lock', '1473100365:1'),
(21, 18, '_edit_last', '1'),
(22, 18, '_edit_lock', '1473100376:1'),
(23, 20, '_menu_item_type', 'custom'),
(24, 20, '_menu_item_menu_item_parent', '0'),
(25, 20, '_menu_item_object_id', '20'),
(26, 20, '_menu_item_object', 'custom'),
(27, 20, '_menu_item_target', ''),
(28, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 20, '_menu_item_xfn', ''),
(30, 20, '_menu_item_url', 'http://localhost/sermeco/'),
(31, 20, '_menu_item_orphaned', '1473100522'),
(32, 21, '_menu_item_type', 'post_type'),
(33, 21, '_menu_item_menu_item_parent', '0'),
(34, 21, '_menu_item_object_id', '13'),
(35, 21, '_menu_item_object', 'page'),
(36, 21, '_menu_item_target', ''),
(37, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 21, '_menu_item_xfn', ''),
(39, 21, '_menu_item_url', ''),
(41, 22, '_menu_item_type', 'post_type'),
(42, 22, '_menu_item_menu_item_parent', '0'),
(43, 22, '_menu_item_object_id', '18'),
(44, 22, '_menu_item_object', 'page'),
(45, 22, '_menu_item_target', ''),
(46, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 22, '_menu_item_xfn', ''),
(48, 22, '_menu_item_url', ''),
(50, 23, '_menu_item_type', 'post_type'),
(51, 23, '_menu_item_menu_item_parent', '0'),
(52, 23, '_menu_item_object_id', '7'),
(53, 23, '_menu_item_object', 'page'),
(54, 23, '_menu_item_target', ''),
(55, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 23, '_menu_item_xfn', ''),
(57, 23, '_menu_item_url', ''),
(59, 24, '_menu_item_type', 'post_type'),
(60, 24, '_menu_item_menu_item_parent', '0'),
(61, 24, '_menu_item_object_id', '9'),
(62, 24, '_menu_item_object', 'page'),
(63, 24, '_menu_item_target', ''),
(64, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 24, '_menu_item_xfn', ''),
(66, 24, '_menu_item_url', ''),
(68, 25, '_menu_item_type', 'post_type'),
(69, 25, '_menu_item_menu_item_parent', '0'),
(70, 25, '_menu_item_object_id', '15'),
(71, 25, '_menu_item_object', 'page'),
(72, 25, '_menu_item_target', ''),
(73, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 25, '_menu_item_xfn', ''),
(75, 25, '_menu_item_url', ''),
(77, 26, '_menu_item_type', 'post_type'),
(78, 26, '_menu_item_menu_item_parent', '0'),
(79, 26, '_menu_item_object_id', '11'),
(80, 26, '_menu_item_object', 'page'),
(81, 26, '_menu_item_target', ''),
(82, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 26, '_menu_item_xfn', ''),
(84, 26, '_menu_item_url', ''),
(86, 27, '_edit_last', '1'),
(87, 27, '_edit_lock', '1473109652:1'),
(88, 28, '_wp_attached_file', '2016/09/sample-slider.jpg'),
(89, 28, 'wpmf_size', '133506'),
(90, 28, 'wpmf_filetype', 'jpg'),
(91, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:541;s:4:"file";s:25:"2016/09/sample-slider.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sample-slider-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"sample-slider-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sample-slider-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sample-slider-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"sample-slider-621x350.jpg";s:5:"width";i:621;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 27, '_thumbnail_id', '28'),
(93, 29, '_edit_last', '1'),
(94, 29, '_edit_lock', '1473115759:1'),
(95, 29, '_thumbnail_id', '31'),
(96, 29, '_wp_old_slug', 'profesionales-en-fabricacion-de-repuestos'),
(97, 30, '_edit_last', '1'),
(98, 30, '_edit_lock', '1473111543:1'),
(99, 30, '_thumbnail_id', '28'),
(100, 30, '_wp_old_slug', 'profesionales-en-fabricacion-de-repuestos'),
(101, 31, '_wp_attached_file', '2016/09/sample-slider2.jpg'),
(102, 31, 'wpmf_size', '118524'),
(103, 31, 'wpmf_filetype', 'jpg'),
(104, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:541;s:4:"file";s:26:"2016/09/sample-slider2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"sample-slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"sample-slider2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"sample-slider2-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"sample-slider2-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:26:"sample-slider2-621x350.jpg";s:5:"width";i:621;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 32, '_edit_last', '1'),
(106, 32, '_edit_lock', '1473116786:1'),
(107, 33, '_wp_attached_file', '2016/09/sample-services.jpg'),
(108, 33, 'wpmf_size', '78787') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(109, 33, 'wpmf_filetype', 'jpg'),
(110, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:442;s:4:"file";s:27:"2016/09/sample-services.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-services-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-services-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"sample-services-768x424.jpg";s:5:"width";i:768;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-services-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-services-633x350.jpg";s:5:"width";i:633;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 32, '_thumbnail_id', '33'),
(112, 34, '_edit_last', '1'),
(113, 34, '_edit_lock', '1473116802:1'),
(114, 34, '_thumbnail_id', '33'),
(115, 34, '_wp_old_slug', 'montaje-de-estructura'),
(116, 35, '_edit_last', '1'),
(117, 35, '_edit_lock', '1473117891:1'),
(118, 35, '_thumbnail_id', '33'),
(119, 35, '_wp_old_slug', 'montaje-de-estructura'),
(123, 35, '_wp_old_slug', 'montaje-de-estructura-2'),
(124, 36, '_edit_last', '1'),
(125, 36, '_edit_lock', '1473117179:1'),
(126, 36, '_thumbnail_id', '33'),
(127, 36, '_wp_old_slug', 'montaje-de-estructura'),
(128, 36, '_wp_old_slug', 'montaje-de-estructura-2'),
(131, 36, '_wp_old_slug', 'montaje-de-estructura-2-2'),
(132, 36, 'mb_color_service_text', '#065ba0'),
(133, 35, 'mb_color_service_text', '#eeee22') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-05 15:40:40', '2016-09-05 15:40:40', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-09-05 15:40:40', '2016-09-05 15:40:40', '', 0, 'http://localhost/sermeco/?p=1', 0, 'post', '', 1),
(2, 1, '2016-09-05 15:40:40', '2016-09-05 15:40:40', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/sermeco/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-09-05 18:33:59', '2016-09-05 18:33:59', '', 0, 'http://localhost/sermeco/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-09-05 15:40:55', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-09-05 15:40:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/sermeco/?p=3', 0, 'post', '', 0),
(5, 1, '2016-09-05 18:21:56', '2016-09-05 18:21:56', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-09-05 18:21:56', '2016-09-05 18:21:56', '', 0, 'http://localhost/sermeco/wp-content/uploads/2016/09/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-09-05 18:33:59', '2016-09-05 18:33:59', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/sermeco/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-09-05 18:33:59', '2016-09-05 18:33:59', '', 2, 'http://localhost/sermeco/2016/09/05/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-09-05 18:34:20', '2016-09-05 18:34:20', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-09-05 18:34:20', '2016-09-05 18:34:20', '', 0, 'http://localhost/sermeco/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-09-05 18:34:20', '2016-09-05 18:34:20', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-09-05 18:34:20', '2016-09-05 18:34:20', '', 7, 'http://localhost/sermeco/2016/09/05/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-09-05 18:34:33', '2016-09-05 18:34:33', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'productos', '', '', '2016-09-05 18:34:37', '2016-09-05 18:34:37', '', 0, 'http://localhost/sermeco/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-09-05 18:34:30', '2016-09-05 18:34:30', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-09-05 18:34:30', '2016-09-05 18:34:30', '', 9, 'http://localhost/sermeco/2016/09/05/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-09-05 18:34:46', '2016-09-05 18:34:46', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-09-05 18:34:46', '2016-09-05 18:34:46', '', 0, 'http://localhost/sermeco/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-09-05 18:34:46', '2016-09-05 18:34:46', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-09-05 18:34:46', '2016-09-05 18:34:46', '', 11, 'http://localhost/sermeco/2016/09/05/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-09-05 18:34:55', '2016-09-05 18:34:55', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-09-05 18:34:55', '2016-09-05 18:34:55', '', 0, 'http://localhost/sermeco/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-09-05 18:34:55', '2016-09-05 18:34:55', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-05 18:34:55', '2016-09-05 18:34:55', '', 13, 'http://localhost/sermeco/2016/09/05/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-09-05 18:35:06', '2016-09-05 18:35:06', '', 'Proyectos', '', 'publish', 'closed', 'closed', '', 'proyectos', '', '', '2016-09-05 18:35:06', '2016-09-05 18:35:06', '', 0, 'http://localhost/sermeco/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-09-05 18:35:06', '2016-09-05 18:35:06', '', 'Proyectos', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-09-05 18:35:06', '2016-09-05 18:35:06', '', 15, 'http://localhost/sermeco/2016/09/05/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-09-05 18:35:09', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-05 18:35:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/sermeco/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-09-05 18:35:16', '2016-09-05 18:35:16', '', 'Contactenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2016-09-05 18:35:16', '2016-09-05 18:35:16', '', 0, 'http://localhost/sermeco/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-09-05 18:35:16', '2016-09-05 18:35:16', '', 'Contactenos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-09-05 18:35:16', '2016-09-05 18:35:16', '', 18, 'http://localhost/sermeco/2016/09/05/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-09-05 18:35:22', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 18:35:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/sermeco/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-09-05 18:35:53', '2016-09-05 18:35:53', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-09-05 18:36:07', '2016-09-05 18:36:07', '', 0, 'http://localhost/sermeco/?p=21', 4, 'nav_menu_item', '', 0),
(22, 1, '2016-09-05 18:35:53', '2016-09-05 18:35:53', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-09-05 18:36:07', '2016-09-05 18:36:07', '', 0, 'http://localhost/sermeco/?p=22', 6, 'nav_menu_item', '', 0),
(23, 1, '2016-09-05 18:35:52', '2016-09-05 18:35:52', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-09-05 18:36:06', '2016-09-05 18:36:06', '', 0, 'http://localhost/sermeco/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2016-09-05 18:35:52', '2016-09-05 18:35:52', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-09-05 18:36:06', '2016-09-05 18:36:06', '', 0, 'http://localhost/sermeco/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2016-09-05 18:35:53', '2016-09-05 18:35:53', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-09-05 18:36:07', '2016-09-05 18:36:07', '', 0, 'http://localhost/sermeco/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2016-09-05 18:35:52', '2016-09-05 18:35:52', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-09-05 18:36:07', '2016-09-05 18:36:07', '', 0, 'http://localhost/sermeco/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2016-09-05 21:09:52', '2016-09-05 21:09:52', 'Sermeco, Calidad y Garantía para su Industria', 'Profesionales en Fabricación de Repuestos', '', 'publish', 'closed', 'closed', '', 'profesionales-en-fabricacion-de-repuestos', '', '', '2016-09-05 21:09:52', '2016-09-05 21:09:52', '', 0, 'http://localhost/sermeco/?post_type=slider-home&#038;p=27', 0, 'slider-home', '', 0),
(28, 1, '2016-09-05 21:09:39', '2016-09-05 21:09:39', '', 'sample-slider', '', 'inherit', 'open', 'closed', '', 'sample-slider', '', '', '2016-09-05 21:09:39', '2016-09-05 21:09:39', '', 27, 'http://localhost/sermeco/wp-content/uploads/2016/09/sample-slider.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-09-05 21:40:35', '2016-09-05 21:40:35', '', 'Fabricación de Repuestos', '', 'publish', 'closed', 'closed', '', 'profesionales-en-fabricacion-de-repuestos-2', '', '', '2016-09-05 22:37:37', '2016-09-05 22:37:37', '', 0, 'http://localhost/sermeco/?post_type=slider-home&#038;p=29', 0, 'slider-home', '', 0),
(30, 1, '2016-09-05 21:41:22', '2016-09-05 21:41:22', 'Sermeco, Calidad y Garantía para su Industria', 'Profesionales en Fabricación de Repuestos', '', 'publish', 'closed', 'closed', '', 'profesionales-en-fabricacion-de-repuestos-3', '', '', '2016-09-05 21:41:22', '2016-09-05 21:41:22', '', 0, 'http://localhost/sermeco/?post_type=slider-home&#038;p=30', 0, 'slider-home', '', 0),
(31, 1, '2016-09-05 22:05:23', '2016-09-05 22:05:23', '', 'sample-slider2', '', 'inherit', 'open', 'closed', '', 'sample-slider2', '', '', '2016-09-05 22:05:23', '2016-09-05 22:05:23', '', 29, 'http://localhost/sermeco/wp-content/uploads/2016/09/sample-slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2016-09-05 23:08:48', '2016-09-05 23:08:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur.\r\n\r\nExcepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Montaje de Estructura', '', 'publish', 'closed', 'closed', '', 'montaje-de-estructura', '', '', '2016-09-05 23:08:48', '2016-09-05 23:08:48', '', 0, 'http://localhost/sermeco/?post_type=theme-services&#038;p=32', 0, 'theme-services', '', 0),
(33, 1, '2016-09-05 23:08:42', '2016-09-05 23:08:42', '', 'sample-services', '', 'inherit', 'open', 'closed', '', 'sample-services', '', '', '2016-09-05 23:08:42', '2016-09-05 23:08:42', '', 32, 'http://localhost/sermeco/wp-content/uploads/2016/09/sample-services.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-09-05 23:08:58', '2016-09-05 23:08:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur.\r\n\r\nExcepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Montaje de Estructura', '', 'publish', 'closed', 'closed', '', 'montaje-de-estructura-2', '', '', '2016-09-05 23:08:58', '2016-09-05 23:08:58', '', 0, 'http://localhost/sermeco/?post_type=theme-services&#038;p=34', 0, 'theme-services', '', 0),
(35, 1, '2016-09-05 23:09:12', '2016-09-05 23:09:12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur.\r\n\r\nExcepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Montaje de Estructura', '', 'publish', 'closed', 'closed', '', 'montaje-de-estructura-2-2', '', '', '2016-09-05 23:16:03', '2016-09-05 23:16:03', '', 0, 'http://localhost/sermeco/?post_type=theme-services&#038;p=35', 0, 'theme-services', '', 0),
(36, 1, '2016-09-05 23:09:21', '2016-09-05 23:09:21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur.\r\n\r\nExcepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Montaje de Estructura', '', 'publish', 'closed', 'closed', '', 'montaje-de-estructura-2-2-2', '', '', '2016-09-05 23:15:16', '2016-09-05 23:15:16', '', 0, 'http://localhost/sermeco/?post_type=theme-services&#038;p=36', 0, 'theme-services', '', 0) ;

#
# End of data contents of table `wp_posts`
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
(1, 1, 0),
(5, 2, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(28, 4, 0),
(33, 5, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wpmf-category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'wpmf-category', '', 0, 0),
(5, 5, 'wpmf-category', '', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'LOGOS', 'logos', 1),
(3, 'Main Menu', 'main-menu', 0),
(4, 'SLIDER HOME', 'slider-home', 1),
(5, 'SERVICIOS', 'servicios', 1) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(14, 1, 'session_tokens', 'a:3:{s:64:"4ef09a02fae020d98fbb43e71dee176a8eb1cb99df8c882696ea073a93e93444";a:4:{s:10:"expiration";i:1473262853;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1473090053;}s:64:"437e0b53dbab56b8fe6a909c0b3f8458b0f42b9fe9dd288428d173d3b8a269c8";a:4:{s:10:"expiration";i:1473274738;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1473101938;}s:64:"335b0f8b44fa6ba7d1452ac4cad783aa3ce012d2c0ede363d10991fdb282f50b";a:4:{s:10:"expiration";i:1473284298;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1473111498;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1473099718'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:25:"add-post-type-slider-home";i:1;s:28:"add-post-type-theme-producto";i:2;s:34:"add-post-type-theme-gallery-images";i:3;s:12:"add-post_tag";i:4;s:15:"add-post_format";i:5;s:21:"add-producto_category";}'),
(20, 1, 'closedpostboxes_theme-services', 'a:1:{i:0;s:10:"postcustom";}'),
(21, 1, 'metaboxhidden_theme-services', 'a:1:{i:0;s:7:"slugdiv";}') ;

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
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BGXwc5OQ6hmhylwKSDkeVyaNPd4AKj0', 'admin', 'jgomez.4net@gmail.com', '', '2016-09-05 15:40:39', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

