-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 12:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Kancaroo_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `ka_commentmeta`
--

CREATE TABLE `ka_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ka_comments`
--

CREATE TABLE `ka_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ka_links`
--

CREATE TABLE `ka_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ka_options`
--

CREATE TABLE `ka_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_options`
--

INSERT INTO `ka_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Kancaroo/blog', 'yes'),
(2, 'home', 'http://localhost/Kancaroo/blog', 'yes'),
(3, 'blogname', 'Kancaroo Car Carriers', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bharathikinkwc@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=153&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:74:\"/opt/lampp/htdocs/Kancaroo/blog/wp-content/themes/kancaroo-theme/style.css\";i:2;s:88:\"/opt/lampp/htdocs/Kancaroo/blog/wp-content/themes/twentytwentyfour/templates/single.html\";i:3;s:87:\"/opt/lampp/htdocs/Kancaroo/blog/wp-content/themes/twentytwentyfour/templates/index.html\";i:4;s:84:\"/opt/lampp/htdocs/Kancaroo/blog/wp-content/themes/twentytwentyfour/parts/footer.html\";i:5;s:87:\"/opt/lampp/htdocs/Kancaroo/blog/wp-content/themes/twentytwentyfour/parts/post-meta.html\";}', 'no'),
(40, 'template', 'kancaroo-theme', 'yes'),
(41, 'stylesheet', 'kancaroo-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '153', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '157', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1728468952', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'ka_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1715080564;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1715120164;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715120177;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715151691;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715163362;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715163377;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715163380;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715336303;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1715422563;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.2\";s:5:\"files\";a:500:{i:0;s:19:\"archives/editor.css\";i:1;s:23:\"archives/editor.min.css\";i:2;s:23:\"archives/editor-rtl.css\";i:3;s:27:\"archives/editor-rtl.min.css\";i:4;s:18:\"archives/style.css\";i:5;s:22:\"archives/style.min.css\";i:6;s:22:\"archives/style-rtl.css\";i:7;s:26:\"archives/style-rtl.min.css\";i:8;s:16:\"audio/editor.css\";i:9;s:20:\"audio/editor.min.css\";i:10;s:20:\"audio/editor-rtl.css\";i:11;s:24:\"audio/editor-rtl.min.css\";i:12;s:15:\"audio/style.css\";i:13;s:19:\"audio/style.min.css\";i:14;s:19:\"audio/style-rtl.css\";i:15;s:23:\"audio/style-rtl.min.css\";i:16;s:15:\"audio/theme.css\";i:17;s:19:\"audio/theme.min.css\";i:18;s:19:\"audio/theme-rtl.css\";i:19;s:23:\"audio/theme-rtl.min.css\";i:20;s:17:\"avatar/editor.css\";i:21;s:21:\"avatar/editor.min.css\";i:22;s:21:\"avatar/editor-rtl.css\";i:23;s:25:\"avatar/editor-rtl.min.css\";i:24;s:16:\"avatar/style.css\";i:25;s:20:\"avatar/style.min.css\";i:26;s:20:\"avatar/style-rtl.css\";i:27;s:24:\"avatar/style-rtl.min.css\";i:28;s:16:\"block/editor.css\";i:29;s:20:\"block/editor.min.css\";i:30;s:20:\"block/editor-rtl.css\";i:31;s:24:\"block/editor-rtl.min.css\";i:32;s:17:\"button/editor.css\";i:33;s:21:\"button/editor.min.css\";i:34;s:21:\"button/editor-rtl.css\";i:35;s:25:\"button/editor-rtl.min.css\";i:36;s:18:\"buttons/editor.css\";i:37;s:22:\"buttons/editor.min.css\";i:38;s:22:\"buttons/editor-rtl.css\";i:39;s:26:\"buttons/editor-rtl.min.css\";i:40;s:17:\"buttons/style.css\";i:41;s:21:\"buttons/style.min.css\";i:42;s:21:\"buttons/style-rtl.css\";i:43;s:25:\"buttons/style-rtl.min.css\";i:44;s:16:\"button/style.css\";i:45;s:20:\"button/style.min.css\";i:46;s:20:\"button/style-rtl.css\";i:47;s:24:\"button/style-rtl.min.css\";i:48;s:18:\"calendar/style.css\";i:49;s:22:\"calendar/style.min.css\";i:50;s:22:\"calendar/style-rtl.css\";i:51;s:26:\"calendar/style-rtl.min.css\";i:52;s:21:\"categories/editor.css\";i:53;s:25:\"categories/editor.min.css\";i:54;s:25:\"categories/editor-rtl.css\";i:55;s:29:\"categories/editor-rtl.min.css\";i:56;s:20:\"categories/style.css\";i:57;s:24:\"categories/style.min.css\";i:58;s:24:\"categories/style-rtl.css\";i:59;s:28:\"categories/style-rtl.min.css\";i:60;s:15:\"code/editor.css\";i:61;s:19:\"code/editor.min.css\";i:62;s:19:\"code/editor-rtl.css\";i:63;s:23:\"code/editor-rtl.min.css\";i:64;s:14:\"code/style.css\";i:65;s:18:\"code/style.min.css\";i:66;s:18:\"code/style-rtl.css\";i:67;s:22:\"code/style-rtl.min.css\";i:68;s:14:\"code/theme.css\";i:69;s:18:\"code/theme.min.css\";i:70;s:18:\"code/theme-rtl.css\";i:71;s:22:\"code/theme-rtl.min.css\";i:72;s:18:\"columns/editor.css\";i:73;s:22:\"columns/editor.min.css\";i:74;s:22:\"columns/editor-rtl.css\";i:75;s:26:\"columns/editor-rtl.min.css\";i:76;s:17:\"columns/style.css\";i:77;s:21:\"columns/style.min.css\";i:78;s:21:\"columns/style-rtl.css\";i:79;s:25:\"columns/style-rtl.min.css\";i:80;s:25:\"comment-content/style.css\";i:81;s:29:\"comment-content/style.min.css\";i:82;s:29:\"comment-content/style-rtl.css\";i:83;s:33:\"comment-content/style-rtl.min.css\";i:84;s:19:\"comments/editor.css\";i:85;s:23:\"comments/editor.min.css\";i:86;s:23:\"comments/editor-rtl.css\";i:87;s:27:\"comments/editor-rtl.min.css\";i:88;s:30:\"comments-pagination/editor.css\";i:89;s:34:\"comments-pagination/editor.min.css\";i:90;s:34:\"comments-pagination/editor-rtl.css\";i:91;s:38:\"comments-pagination/editor-rtl.min.css\";i:92;s:38:\"comments-pagination-numbers/editor.css\";i:93;s:42:\"comments-pagination-numbers/editor.min.css\";i:94;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:95;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:96;s:29:\"comments-pagination/style.css\";i:97;s:33:\"comments-pagination/style.min.css\";i:98;s:33:\"comments-pagination/style-rtl.css\";i:99;s:37:\"comments-pagination/style-rtl.min.css\";i:100;s:18:\"comments/style.css\";i:101;s:22:\"comments/style.min.css\";i:102;s:22:\"comments/style-rtl.css\";i:103;s:26:\"comments/style-rtl.min.css\";i:104;s:25:\"comments-title/editor.css\";i:105;s:29:\"comments-title/editor.min.css\";i:106;s:29:\"comments-title/editor-rtl.css\";i:107;s:33:\"comments-title/editor-rtl.min.css\";i:108;s:26:\"comment-template/style.css\";i:109;s:30:\"comment-template/style.min.css\";i:110;s:30:\"comment-template/style-rtl.css\";i:111;s:34:\"comment-template/style-rtl.min.css\";i:112;s:16:\"cover/editor.css\";i:113;s:20:\"cover/editor.min.css\";i:114;s:20:\"cover/editor-rtl.css\";i:115;s:24:\"cover/editor-rtl.min.css\";i:116;s:15:\"cover/style.css\";i:117;s:19:\"cover/style.min.css\";i:118;s:19:\"cover/style-rtl.css\";i:119;s:23:\"cover/style-rtl.min.css\";i:120;s:18:\"details/editor.css\";i:121;s:22:\"details/editor.min.css\";i:122;s:22:\"details/editor-rtl.css\";i:123;s:26:\"details/editor-rtl.min.css\";i:124;s:17:\"details/style.css\";i:125;s:21:\"details/style.min.css\";i:126;s:21:\"details/style-rtl.css\";i:127;s:25:\"details/style-rtl.min.css\";i:128;s:16:\"embed/editor.css\";i:129;s:20:\"embed/editor.min.css\";i:130;s:20:\"embed/editor-rtl.css\";i:131;s:24:\"embed/editor-rtl.min.css\";i:132;s:15:\"embed/style.css\";i:133;s:19:\"embed/style.min.css\";i:134;s:19:\"embed/style-rtl.css\";i:135;s:23:\"embed/style-rtl.min.css\";i:136;s:15:\"embed/theme.css\";i:137;s:19:\"embed/theme.min.css\";i:138;s:19:\"embed/theme-rtl.css\";i:139;s:23:\"embed/theme-rtl.min.css\";i:140;s:15:\"file/editor.css\";i:141;s:19:\"file/editor.min.css\";i:142;s:19:\"file/editor-rtl.css\";i:143;s:23:\"file/editor-rtl.min.css\";i:144;s:14:\"file/style.css\";i:145;s:18:\"file/style.min.css\";i:146;s:18:\"file/style-rtl.css\";i:147;s:22:\"file/style-rtl.min.css\";i:148;s:19:\"footnotes/style.css\";i:149;s:23:\"footnotes/style.min.css\";i:150;s:23:\"footnotes/style-rtl.css\";i:151;s:27:\"footnotes/style-rtl.min.css\";i:152;s:19:\"freeform/editor.css\";i:153;s:23:\"freeform/editor.min.css\";i:154;s:23:\"freeform/editor-rtl.css\";i:155;s:27:\"freeform/editor-rtl.min.css\";i:156;s:18:\"gallery/editor.css\";i:157;s:22:\"gallery/editor.min.css\";i:158;s:22:\"gallery/editor-rtl.css\";i:159;s:26:\"gallery/editor-rtl.min.css\";i:160;s:17:\"gallery/style.css\";i:161;s:21:\"gallery/style.min.css\";i:162;s:21:\"gallery/style-rtl.css\";i:163;s:25:\"gallery/style-rtl.min.css\";i:164;s:17:\"gallery/theme.css\";i:165;s:21:\"gallery/theme.min.css\";i:166;s:21:\"gallery/theme-rtl.css\";i:167;s:25:\"gallery/theme-rtl.min.css\";i:168;s:16:\"group/editor.css\";i:169;s:20:\"group/editor.min.css\";i:170;s:20:\"group/editor-rtl.css\";i:171;s:24:\"group/editor-rtl.min.css\";i:172;s:15:\"group/style.css\";i:173;s:19:\"group/style.min.css\";i:174;s:19:\"group/style-rtl.css\";i:175;s:23:\"group/style-rtl.min.css\";i:176;s:15:\"group/theme.css\";i:177;s:19:\"group/theme.min.css\";i:178;s:19:\"group/theme-rtl.css\";i:179;s:23:\"group/theme-rtl.min.css\";i:180;s:17:\"heading/style.css\";i:181;s:21:\"heading/style.min.css\";i:182;s:21:\"heading/style-rtl.css\";i:183;s:25:\"heading/style-rtl.min.css\";i:184;s:15:\"html/editor.css\";i:185;s:19:\"html/editor.min.css\";i:186;s:19:\"html/editor-rtl.css\";i:187;s:23:\"html/editor-rtl.min.css\";i:188;s:16:\"image/editor.css\";i:189;s:20:\"image/editor.min.css\";i:190;s:20:\"image/editor-rtl.css\";i:191;s:24:\"image/editor-rtl.min.css\";i:192;s:15:\"image/style.css\";i:193;s:19:\"image/style.min.css\";i:194;s:19:\"image/style-rtl.css\";i:195;s:23:\"image/style-rtl.min.css\";i:196;s:15:\"image/theme.css\";i:197;s:19:\"image/theme.min.css\";i:198;s:19:\"image/theme-rtl.css\";i:199;s:23:\"image/theme-rtl.min.css\";i:200;s:25:\"latest-comments/style.css\";i:201;s:29:\"latest-comments/style.min.css\";i:202;s:29:\"latest-comments/style-rtl.css\";i:203;s:33:\"latest-comments/style-rtl.min.css\";i:204;s:23:\"latest-posts/editor.css\";i:205;s:27:\"latest-posts/editor.min.css\";i:206;s:27:\"latest-posts/editor-rtl.css\";i:207;s:31:\"latest-posts/editor-rtl.min.css\";i:208;s:22:\"latest-posts/style.css\";i:209;s:26:\"latest-posts/style.min.css\";i:210;s:26:\"latest-posts/style-rtl.css\";i:211;s:30:\"latest-posts/style-rtl.min.css\";i:212;s:14:\"list/style.css\";i:213;s:18:\"list/style.min.css\";i:214;s:18:\"list/style-rtl.css\";i:215;s:22:\"list/style-rtl.min.css\";i:216;s:21:\"media-text/editor.css\";i:217;s:25:\"media-text/editor.min.css\";i:218;s:25:\"media-text/editor-rtl.css\";i:219;s:29:\"media-text/editor-rtl.min.css\";i:220;s:20:\"media-text/style.css\";i:221;s:24:\"media-text/style.min.css\";i:222;s:24:\"media-text/style-rtl.css\";i:223;s:28:\"media-text/style-rtl.min.css\";i:224;s:15:\"more/editor.css\";i:225;s:19:\"more/editor.min.css\";i:226;s:19:\"more/editor-rtl.css\";i:227;s:23:\"more/editor-rtl.min.css\";i:228;s:21:\"navigation/editor.css\";i:229;s:25:\"navigation/editor.min.css\";i:230;s:25:\"navigation/editor-rtl.css\";i:231;s:29:\"navigation/editor-rtl.min.css\";i:232;s:26:\"navigation-link/editor.css\";i:233;s:30:\"navigation-link/editor.min.css\";i:234;s:30:\"navigation-link/editor-rtl.css\";i:235;s:34:\"navigation-link/editor-rtl.min.css\";i:236;s:25:\"navigation-link/style.css\";i:237;s:29:\"navigation-link/style.min.css\";i:238;s:29:\"navigation-link/style-rtl.css\";i:239;s:33:\"navigation-link/style-rtl.min.css\";i:240;s:20:\"navigation/style.css\";i:241;s:24:\"navigation/style.min.css\";i:242;s:24:\"navigation/style-rtl.css\";i:243;s:28:\"navigation/style-rtl.min.css\";i:244;s:29:\"navigation-submenu/editor.css\";i:245;s:33:\"navigation-submenu/editor.min.css\";i:246;s:33:\"navigation-submenu/editor-rtl.css\";i:247;s:37:\"navigation-submenu/editor-rtl.min.css\";i:248;s:19:\"nextpage/editor.css\";i:249;s:23:\"nextpage/editor.min.css\";i:250;s:23:\"nextpage/editor-rtl.css\";i:251;s:27:\"nextpage/editor-rtl.min.css\";i:252;s:20:\"page-list/editor.css\";i:253;s:24:\"page-list/editor.min.css\";i:254;s:24:\"page-list/editor-rtl.css\";i:255;s:28:\"page-list/editor-rtl.min.css\";i:256;s:19:\"page-list/style.css\";i:257;s:23:\"page-list/style.min.css\";i:258;s:23:\"page-list/style-rtl.css\";i:259;s:27:\"page-list/style-rtl.min.css\";i:260;s:20:\"paragraph/editor.css\";i:261;s:24:\"paragraph/editor.min.css\";i:262;s:24:\"paragraph/editor-rtl.css\";i:263;s:28:\"paragraph/editor-rtl.min.css\";i:264;s:19:\"paragraph/style.css\";i:265;s:23:\"paragraph/style.min.css\";i:266;s:23:\"paragraph/style-rtl.css\";i:267;s:27:\"paragraph/style-rtl.min.css\";i:268;s:21:\"post-author/style.css\";i:269;s:25:\"post-author/style.min.css\";i:270;s:25:\"post-author/style-rtl.css\";i:271;s:29:\"post-author/style-rtl.min.css\";i:272;s:29:\"post-comments-form/editor.css\";i:273;s:33:\"post-comments-form/editor.min.css\";i:274;s:33:\"post-comments-form/editor-rtl.css\";i:275;s:37:\"post-comments-form/editor-rtl.min.css\";i:276;s:28:\"post-comments-form/style.css\";i:277;s:32:\"post-comments-form/style.min.css\";i:278;s:32:\"post-comments-form/style-rtl.css\";i:279;s:36:\"post-comments-form/style-rtl.min.css\";i:280;s:23:\"post-content/editor.css\";i:281;s:27:\"post-content/editor.min.css\";i:282;s:27:\"post-content/editor-rtl.css\";i:283;s:31:\"post-content/editor-rtl.min.css\";i:284;s:19:\"post-date/style.css\";i:285;s:23:\"post-date/style.min.css\";i:286;s:23:\"post-date/style-rtl.css\";i:287;s:27:\"post-date/style-rtl.min.css\";i:288;s:23:\"post-excerpt/editor.css\";i:289;s:27:\"post-excerpt/editor.min.css\";i:290;s:27:\"post-excerpt/editor-rtl.css\";i:291;s:31:\"post-excerpt/editor-rtl.min.css\";i:292;s:22:\"post-excerpt/style.css\";i:293;s:26:\"post-excerpt/style.min.css\";i:294;s:26:\"post-excerpt/style-rtl.css\";i:295;s:30:\"post-excerpt/style-rtl.min.css\";i:296;s:30:\"post-featured-image/editor.css\";i:297;s:34:\"post-featured-image/editor.min.css\";i:298;s:34:\"post-featured-image/editor-rtl.css\";i:299;s:38:\"post-featured-image/editor-rtl.min.css\";i:300;s:29:\"post-featured-image/style.css\";i:301;s:33:\"post-featured-image/style.min.css\";i:302;s:33:\"post-featured-image/style-rtl.css\";i:303;s:37:\"post-featured-image/style-rtl.min.css\";i:304;s:30:\"post-navigation-link/style.css\";i:305;s:34:\"post-navigation-link/style.min.css\";i:306;s:34:\"post-navigation-link/style-rtl.css\";i:307;s:38:\"post-navigation-link/style-rtl.min.css\";i:308;s:24:\"post-template/editor.css\";i:309;s:28:\"post-template/editor.min.css\";i:310;s:28:\"post-template/editor-rtl.css\";i:311;s:32:\"post-template/editor-rtl.min.css\";i:312;s:23:\"post-template/style.css\";i:313;s:27:\"post-template/style.min.css\";i:314;s:27:\"post-template/style-rtl.css\";i:315;s:31:\"post-template/style-rtl.min.css\";i:316;s:20:\"post-terms/style.css\";i:317;s:24:\"post-terms/style.min.css\";i:318;s:24:\"post-terms/style-rtl.css\";i:319;s:28:\"post-terms/style-rtl.min.css\";i:320;s:20:\"post-title/style.css\";i:321;s:24:\"post-title/style.min.css\";i:322;s:24:\"post-title/style-rtl.css\";i:323;s:28:\"post-title/style-rtl.min.css\";i:324;s:22:\"preformatted/style.css\";i:325;s:26:\"preformatted/style.min.css\";i:326;s:26:\"preformatted/style-rtl.css\";i:327;s:30:\"preformatted/style-rtl.min.css\";i:328;s:20:\"pullquote/editor.css\";i:329;s:24:\"pullquote/editor.min.css\";i:330;s:24:\"pullquote/editor-rtl.css\";i:331;s:28:\"pullquote/editor-rtl.min.css\";i:332;s:19:\"pullquote/style.css\";i:333;s:23:\"pullquote/style.min.css\";i:334;s:23:\"pullquote/style-rtl.css\";i:335;s:27:\"pullquote/style-rtl.min.css\";i:336;s:19:\"pullquote/theme.css\";i:337;s:23:\"pullquote/theme.min.css\";i:338;s:23:\"pullquote/theme-rtl.css\";i:339;s:27:\"pullquote/theme-rtl.min.css\";i:340;s:16:\"query/editor.css\";i:341;s:20:\"query/editor.min.css\";i:342;s:20:\"query/editor-rtl.css\";i:343;s:24:\"query/editor-rtl.min.css\";i:344;s:27:\"query-pagination/editor.css\";i:345;s:31:\"query-pagination/editor.min.css\";i:346;s:31:\"query-pagination/editor-rtl.css\";i:347;s:35:\"query-pagination/editor-rtl.min.css\";i:348;s:35:\"query-pagination-numbers/editor.css\";i:349;s:39:\"query-pagination-numbers/editor.min.css\";i:350;s:39:\"query-pagination-numbers/editor-rtl.css\";i:351;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:352;s:26:\"query-pagination/style.css\";i:353;s:30:\"query-pagination/style.min.css\";i:354;s:30:\"query-pagination/style-rtl.css\";i:355;s:34:\"query-pagination/style-rtl.min.css\";i:356;s:21:\"query-title/style.css\";i:357;s:25:\"query-title/style.min.css\";i:358;s:25:\"query-title/style-rtl.css\";i:359;s:29:\"query-title/style-rtl.min.css\";i:360;s:15:\"quote/style.css\";i:361;s:19:\"quote/style.min.css\";i:362;s:19:\"quote/style-rtl.css\";i:363;s:23:\"quote/style-rtl.min.css\";i:364;s:15:\"quote/theme.css\";i:365;s:19:\"quote/theme.min.css\";i:366;s:19:\"quote/theme-rtl.css\";i:367;s:23:\"quote/theme-rtl.min.css\";i:368;s:19:\"read-more/style.css\";i:369;s:23:\"read-more/style.min.css\";i:370;s:23:\"read-more/style-rtl.css\";i:371;s:27:\"read-more/style-rtl.min.css\";i:372;s:14:\"rss/editor.css\";i:373;s:18:\"rss/editor.min.css\";i:374;s:18:\"rss/editor-rtl.css\";i:375;s:22:\"rss/editor-rtl.min.css\";i:376;s:13:\"rss/style.css\";i:377;s:17:\"rss/style.min.css\";i:378;s:17:\"rss/style-rtl.css\";i:379;s:21:\"rss/style-rtl.min.css\";i:380;s:17:\"search/editor.css\";i:381;s:21:\"search/editor.min.css\";i:382;s:21:\"search/editor-rtl.css\";i:383;s:25:\"search/editor-rtl.min.css\";i:384;s:16:\"search/style.css\";i:385;s:20:\"search/style.min.css\";i:386;s:20:\"search/style-rtl.css\";i:387;s:24:\"search/style-rtl.min.css\";i:388;s:16:\"search/theme.css\";i:389;s:20:\"search/theme.min.css\";i:390;s:20:\"search/theme-rtl.css\";i:391;s:24:\"search/theme-rtl.min.css\";i:392;s:20:\"separator/editor.css\";i:393;s:24:\"separator/editor.min.css\";i:394;s:24:\"separator/editor-rtl.css\";i:395;s:28:\"separator/editor-rtl.min.css\";i:396;s:19:\"separator/style.css\";i:397;s:23:\"separator/style.min.css\";i:398;s:23:\"separator/style-rtl.css\";i:399;s:27:\"separator/style-rtl.min.css\";i:400;s:19:\"separator/theme.css\";i:401;s:23:\"separator/theme.min.css\";i:402;s:23:\"separator/theme-rtl.css\";i:403;s:27:\"separator/theme-rtl.min.css\";i:404;s:20:\"shortcode/editor.css\";i:405;s:24:\"shortcode/editor.min.css\";i:406;s:24:\"shortcode/editor-rtl.css\";i:407;s:28:\"shortcode/editor-rtl.min.css\";i:408;s:20:\"site-logo/editor.css\";i:409;s:24:\"site-logo/editor.min.css\";i:410;s:24:\"site-logo/editor-rtl.css\";i:411;s:28:\"site-logo/editor-rtl.min.css\";i:412;s:19:\"site-logo/style.css\";i:413;s:23:\"site-logo/style.min.css\";i:414;s:23:\"site-logo/style-rtl.css\";i:415;s:27:\"site-logo/style-rtl.min.css\";i:416;s:23:\"site-tagline/editor.css\";i:417;s:27:\"site-tagline/editor.min.css\";i:418;s:27:\"site-tagline/editor-rtl.css\";i:419;s:31:\"site-tagline/editor-rtl.min.css\";i:420;s:21:\"site-title/editor.css\";i:421;s:25:\"site-title/editor.min.css\";i:422;s:25:\"site-title/editor-rtl.css\";i:423;s:29:\"site-title/editor-rtl.min.css\";i:424;s:20:\"site-title/style.css\";i:425;s:24:\"site-title/style.min.css\";i:426;s:24:\"site-title/style-rtl.css\";i:427;s:28:\"site-title/style-rtl.min.css\";i:428;s:22:\"social-link/editor.css\";i:429;s:26:\"social-link/editor.min.css\";i:430;s:26:\"social-link/editor-rtl.css\";i:431;s:30:\"social-link/editor-rtl.min.css\";i:432;s:23:\"social-links/editor.css\";i:433;s:27:\"social-links/editor.min.css\";i:434;s:27:\"social-links/editor-rtl.css\";i:435;s:31:\"social-links/editor-rtl.min.css\";i:436;s:22:\"social-links/style.css\";i:437;s:26:\"social-links/style.min.css\";i:438;s:26:\"social-links/style-rtl.css\";i:439;s:30:\"social-links/style-rtl.min.css\";i:440;s:17:\"spacer/editor.css\";i:441;s:21:\"spacer/editor.min.css\";i:442;s:21:\"spacer/editor-rtl.css\";i:443;s:25:\"spacer/editor-rtl.min.css\";i:444;s:16:\"spacer/style.css\";i:445;s:20:\"spacer/style.min.css\";i:446;s:20:\"spacer/style-rtl.css\";i:447;s:24:\"spacer/style-rtl.min.css\";i:448;s:16:\"table/editor.css\";i:449;s:20:\"table/editor.min.css\";i:450;s:20:\"table/editor-rtl.css\";i:451;s:24:\"table/editor-rtl.min.css\";i:452;s:15:\"table/style.css\";i:453;s:19:\"table/style.min.css\";i:454;s:19:\"table/style-rtl.css\";i:455;s:23:\"table/style-rtl.min.css\";i:456;s:15:\"table/theme.css\";i:457;s:19:\"table/theme.min.css\";i:458;s:19:\"table/theme-rtl.css\";i:459;s:23:\"table/theme-rtl.min.css\";i:460;s:19:\"tag-cloud/style.css\";i:461;s:23:\"tag-cloud/style.min.css\";i:462;s:23:\"tag-cloud/style-rtl.css\";i:463;s:27:\"tag-cloud/style-rtl.min.css\";i:464;s:24:\"template-part/editor.css\";i:465;s:28:\"template-part/editor.min.css\";i:466;s:28:\"template-part/editor-rtl.css\";i:467;s:32:\"template-part/editor-rtl.min.css\";i:468;s:23:\"template-part/theme.css\";i:469;s:27:\"template-part/theme.min.css\";i:470;s:27:\"template-part/theme-rtl.css\";i:471;s:31:\"template-part/theme-rtl.min.css\";i:472;s:26:\"term-description/style.css\";i:473;s:30:\"term-description/style.min.css\";i:474;s:30:\"term-description/style-rtl.css\";i:475;s:34:\"term-description/style-rtl.min.css\";i:476;s:23:\"text-columns/editor.css\";i:477;s:27:\"text-columns/editor.min.css\";i:478;s:27:\"text-columns/editor-rtl.css\";i:479;s:31:\"text-columns/editor-rtl.min.css\";i:480;s:22:\"text-columns/style.css\";i:481;s:26:\"text-columns/style.min.css\";i:482;s:26:\"text-columns/style-rtl.css\";i:483;s:30:\"text-columns/style-rtl.min.css\";i:484;s:15:\"verse/style.css\";i:485;s:19:\"verse/style.min.css\";i:486;s:19:\"verse/style-rtl.css\";i:487;s:23:\"verse/style-rtl.min.css\";i:488;s:16:\"video/editor.css\";i:489;s:20:\"video/editor.min.css\";i:490;s:20:\"video/editor-rtl.css\";i:491;s:24:\"video/editor-rtl.min.css\";i:492;s:15:\"video/style.css\";i:493;s:19:\"video/style.min.css\";i:494;s:19:\"video/style-rtl.css\";i:495;s:23:\"video/style-rtl.min.css\";i:496;s:15:\"video/theme.css\";i:497;s:19:\"video/theme.min.css\";i:498;s:19:\"video/theme-rtl.css\";i:499;s:23:\"video/theme-rtl.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.2\";s:7:\"version\";s:5:\"6.5.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1715077978;s:15:\"version_checked\";s:5:\"6.5.2\";s:12:\"translations\";a:0:{}}', 'no'),
(127, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1712984130;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1715077981;s:7:\"checked\";a:1:{s:14:\"kancaroo-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(138, 'can_compress_scripts', '1', 'yes'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(184, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(195, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(196, 'recently_activated', 'a:0:{}', 'yes'),
(201, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:24:\"localhost/Kancaroo/blog/\";s:8:\"username\";s:8:\"Kancaroo\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(210, 'acf_first_activated_version', '6.2.9', 'yes'),
(211, 'acf_version', '6.2.9', 'yes'),
(217, 'current_theme', 'kancaroo-theme', 'yes'),
(218, 'theme_mods_kancaroo-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";}', 'yes'),
(219, 'theme_switched', '', 'yes'),
(238, 'cptui_new_install', 'false', 'yes'),
(240, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(245, 'cptui_post_types', 'a:0:{}', 'yes'),
(273, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(274, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":6,\"critical\":1}', 'yes'),
(314, 'category_children', 'a:0:{}', 'yes'),
(482, 'WPLANG', '', 'yes'),
(483, 'new_admin_email', 'bharathikinkwc@gmail.com', 'yes'),
(563, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"22.6\";}', 'yes');
INSERT INTO `ka_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(564, 'wpseo', 'a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"22.6\";s:16:\"previous_version\";s:4:\"22.5\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1714114893;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:30:\"http://localhost/Kancaroo/blog\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1714114902;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}s:23:\"last_known_no_unindexed\";a:6:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1715078020;s:27:\"wpseo_total_unindexed_posts\";i:1714115976;s:27:\"wpseo_total_unindexed_terms\";i:1714115977;s:31:\"wpseo_unindexed_post_link_count\";i:1715078021;s:31:\"wpseo_unindexed_term_link_count\";i:1715078021;s:35:\"wpseo_total_unindexed_general_items\";i:1715078020;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}', 'yes'),
(565, 'wpseo_titles', 'a:129:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(566, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(751, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1715077981;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.16.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.16.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.3\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.9\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.16.0\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"22.6\";}}', 'no'),
(846, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1715426708', 'no'),
(847, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(882, '_site_transient_timeout_theme_roots', '1715079780', 'no'),
(883, '_site_transient_theme_roots', 'a:1:{s:14:\"kancaroo-theme\";s:7:\"/themes\";}', 'no'),
(884, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1715078920', 'no'),
(885, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(886, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1715078920', 'no'),
(887, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no'),
(888, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1715164420', 'no'),
(889, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(890, '_transient_timeout_wpseo_total_unindexed_general_items', '1715164420', 'no'),
(891, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(892, '_transient_timeout_wpseo_unindexed_post_link_count', '1715164421', 'no'),
(893, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(894, '_transient_timeout_wpseo_unindexed_term_link_count', '1715164421', 'no'),
(895, '_transient_wpseo_unindexed_term_link_count', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ka_postmeta`
--

CREATE TABLE `ka_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_postmeta`
--

INSERT INTO `ka_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(52, 36, '_menu_item_type', 'custom'),
(53, 36, '_menu_item_menu_item_parent', '0'),
(54, 36, '_menu_item_object_id', '36'),
(55, 36, '_menu_item_object', 'custom'),
(56, 36, '_menu_item_target', ''),
(57, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 36, '_menu_item_xfn', ''),
(59, 36, '_menu_item_url', 'http://localhost/Kancaroo/blog/'),
(60, 36, '_menu_item_orphaned', '1712990544'),
(70, 38, '_menu_item_type', 'custom'),
(71, 38, '_menu_item_menu_item_parent', '0'),
(72, 38, '_menu_item_object_id', '38'),
(73, 38, '_menu_item_object', 'custom'),
(74, 38, '_menu_item_target', ''),
(75, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 38, '_menu_item_xfn', ''),
(77, 38, '_menu_item_url', 'http://localhost/Kancaroo/blog/'),
(78, 38, '_menu_item_orphaned', '1712990564'),
(124, 44, '_wp_trash_meta_status', 'publish'),
(125, 44, '_wp_trash_meta_time', '1712990748'),
(126, 45, '_wp_trash_meta_status', 'publish'),
(127, 45, '_wp_trash_meta_time', '1712990895'),
(128, 46, '_wp_trash_meta_status', 'publish'),
(129, 46, '_wp_trash_meta_time', '1712990921'),
(130, 47, '_menu_item_type', 'custom'),
(131, 47, '_menu_item_menu_item_parent', '0'),
(132, 47, '_menu_item_object_id', '47'),
(133, 47, '_menu_item_object', 'custom'),
(134, 47, '_menu_item_target', ''),
(135, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 47, '_menu_item_xfn', ''),
(137, 47, '_menu_item_url', 'http://localhost/Kancaroo/blog/'),
(138, 47, '_menu_item_orphaned', '1712990954'),
(148, 49, '_menu_item_type', 'custom'),
(149, 49, '_menu_item_menu_item_parent', '0'),
(150, 49, '_menu_item_object_id', '49'),
(151, 49, '_menu_item_object', 'custom'),
(152, 49, '_menu_item_target', ''),
(153, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 49, '_menu_item_xfn', ''),
(155, 49, '_menu_item_url', 'http://localhost/Kancaroo/blog/'),
(156, 49, '_menu_item_orphaned', '1712990990'),
(166, 51, '_menu_item_type', 'custom'),
(167, 51, '_menu_item_menu_item_parent', '0'),
(168, 51, '_menu_item_object_id', '51'),
(169, 51, '_menu_item_object', 'custom'),
(170, 51, '_menu_item_target', ''),
(171, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 51, '_menu_item_xfn', ''),
(173, 51, '_menu_item_url', '#'),
(174, 51, '_menu_item_orphaned', '1712991023'),
(175, 52, '_menu_item_type', 'custom'),
(176, 52, '_menu_item_menu_item_parent', '0'),
(177, 52, '_menu_item_object_id', '52'),
(178, 52, '_menu_item_object', 'custom'),
(179, 52, '_menu_item_target', ''),
(180, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 52, '_menu_item_xfn', ''),
(182, 52, '_menu_item_url', 'http://localhost/Kancaroo/blog/'),
(193, 54, '_menu_item_type', 'custom'),
(194, 54, '_menu_item_menu_item_parent', '0'),
(195, 54, '_menu_item_object_id', '54'),
(196, 54, '_menu_item_object', 'custom'),
(197, 54, '_menu_item_target', ''),
(198, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 54, '_menu_item_xfn', ''),
(200, 54, '_menu_item_url', '#'),
(202, 55, '_menu_item_type', 'custom'),
(203, 55, '_menu_item_menu_item_parent', '0'),
(204, 55, '_menu_item_object_id', '55'),
(205, 55, '_menu_item_object', 'custom'),
(206, 55, '_menu_item_target', ''),
(207, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 55, '_menu_item_xfn', ''),
(209, 55, '_menu_item_url', '#'),
(211, 56, '_edit_last', '1'),
(212, 56, '_edit_lock', '1713165896:1'),
(395, 56, '_wp_trash_meta_status', 'publish'),
(396, 56, '_wp_trash_meta_time', '1713174244'),
(397, 56, '_wp_desired_post_slug', 'group_661a2fc6897c0'),
(398, 82, '_edit_last', '1'),
(399, 82, '_edit_lock', '1713175508:1'),
(423, 82, '_wp_trash_meta_status', 'publish'),
(424, 82, '_wp_trash_meta_time', '1713181128'),
(425, 82, '_wp_desired_post_slug', 'group_661cf6ea459c1'),
(426, 83, '_wp_trash_meta_status', 'publish'),
(427, 83, '_wp_trash_meta_time', '1713181128'),
(428, 83, '_wp_desired_post_slug', 'field_661cf73f8980e'),
(449, 95, '_wp_trash_meta_status', 'publish'),
(450, 95, '_wp_trash_meta_time', '1713256622'),
(451, 96, '_wp_trash_meta_status', 'publish'),
(452, 96, '_wp_trash_meta_time', '1713256642'),
(502, 112, '_edit_last', '1'),
(503, 112, '_edit_lock', '1714114618:1'),
(676, 133, '_edit_last', '1'),
(677, 133, '_edit_lock', '1714742430:1'),
(680, 133, 'banner_image', '135'),
(681, 133, '_banner_image', 'field_661fcd84f82ce'),
(682, 133, 'featured_image_small', '137'),
(683, 133, '_featured_image_small', 'field_6628db9014fba'),
(684, 134, 'banner_image', ''),
(685, 134, '_banner_image', 'field_661fcd84f82ce'),
(686, 134, 'featured_image_small', ''),
(687, 134, '_featured_image_small', 'field_6628db9014fba'),
(688, 135, '_wp_attached_file', '2024/04/post-banner.png'),
(689, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1193;s:6:\"height\";i:387;s:4:\"file\";s:23:\"2024/04/post-banner.png\";s:8:\"filesize\";i:775346;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"post-banner-300x97.png\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:57099;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"post-banner-1024x332.png\";s:5:\"width\";i:1024;s:6:\"height\";i:332;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:536867;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"post-banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38835;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"post-banner-768x249.png\";s:5:\"width\";i:768;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:323694;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 136, '_wp_attached_file', '2024/04/blog-img.png'),
(691, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:647;s:6:\"height\";i:574;s:4:\"file\";s:20:\"2024/04/blog-img.png\";s:8:\"filesize\";i:721868;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"blog-img-300x266.png\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:158494;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"blog-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47471;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(692, 137, '_wp_attached_file', '2024/04/blog-thumb.png'),
(693, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:253;s:6:\"height\";i:260;s:4:\"file\";s:22:\"2024/04/blog-thumb.png\";s:8:\"filesize\";i:110461;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-thumb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43038;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 133, '_thumbnail_id', '136'),
(697, 138, 'banner_image', '135'),
(698, 138, '_banner_image', 'field_661fcd84f82ce'),
(699, 138, 'featured_image_small', '137'),
(700, 138, '_featured_image_small', 'field_6628db9014fba'),
(705, 140, 'banner_image', '135'),
(706, 140, '_banner_image', 'field_661fcd84f82ce'),
(707, 140, 'featured_image_small', '137'),
(708, 140, '_featured_image_small', 'field_6628db9014fba'),
(786, 153, '_edit_last', '1'),
(787, 153, '_edit_lock', '1714626690:1'),
(788, 153, '_wp_page_template', 'page-home.php'),
(789, 153, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(790, 153, '_yoast_wpseo_wordproof_timestamp', ''),
(791, 153, '_yoast_wpseo_title', 'Car Transportation Tips & Services - Kancaroo Car Carriers'),
(792, 153, '_yoast_wpseo_metadesc', 'Make moving stress-free! Explore Kancaroo Car Carriers\' expert tips & guides for a smooth relocation. Check out our blog now'),
(793, 155, '_wp_attached_file', '2024/04/og-tag.png'),
(794, 155, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:630;s:4:\"file\";s:18:\"2024/04/og-tag.png\";s:8:\"filesize\";i:117999;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"og-tag-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30451;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"og-tag-1024x538.png\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:168681;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"og-tag-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16014;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"og-tag-768x403.png\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:113504;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(795, 153, '_thumbnail_id', '155'),
(796, 156, '_wp_attached_file', '2024/04/favicon.png'),
(797, 156, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:19:\"2024/04/favicon.png\";s:8:\"filesize\";i:1920;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(798, 157, '_wp_attached_file', '2024/04/cropped-favicon.png'),
(799, 157, '_wp_attachment_context', 'site-icon'),
(800, 157, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2024/04/cropped-favicon.png\";s:8:\"filesize\";i:14576;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18670;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12609;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15053;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12921;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12727;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2060;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(875, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:4474:\"<h2 class=\"wp-block-heading\">Who we are</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/Kancaroo/blog.</p><h2 class=\"wp-block-heading\">Comments</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h2 class=\"wp-block-heading\">Media</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h2 class=\"wp-block-heading\">Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h2 class=\"wp-block-heading\">Embedded content from other websites</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h2 class=\"wp-block-heading\">Who we share your data with</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><h2 class=\"wp-block-heading\">How long we retain your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2 class=\"wp-block-heading\">What rights you have over your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2 class=\"wp-block-heading\">Where your data is sent</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\";s:5:\"added\";i:1714375121;}'),
(876, 156, '_wp_attachment_image_alt', 'favicon'),
(877, 155, '_wp_attachment_image_alt', 'og-image');

-- --------------------------------------------------------

--
-- Table structure for table `ka_posts`
--

CREATE TABLE `ka_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_posts`
--

INSERT INTO `ka_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-04-12 10:16:06', '2024-04-12 10:16:06', '<!-- wp:navigation-link {\"label\":\"Sample Page\",\"type\":\"page\",\"id\":2,\"url\":\"http://localhost/Kancaroo/blog/sample-page/\",\"kind\":\"post-type\"} /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-04-12 12:12:56', '2024-04-12 12:12:56', '', 0, 'http://localhost/Kancaroo/blog/index.php/2024/04/12/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-04-12 10:20:47', '2024-04-12 10:20:47', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-04-12 10:20:47', '2024-04-12 10:20:47', '', 0, 'http://localhost/Kancaroo/blog/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(21, 1, '2024-04-12 12:12:56', '2024-04-12 12:12:56', '<!-- wp:navigation-link {\"label\":\"Sample Page\",\"type\":\"page\",\"id\":2,\"url\":\"http://localhost/Kancaroo/blog/sample-page/\",\"kind\":\"post-type\"} /-->', 'Navigation', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2024-04-12 12:12:56', '2024-04-12 12:12:56', '', 4, 'http://localhost/Kancaroo/blog/?p=21', 0, 'revision', '', 0),
(36, 1, '2024-04-13 06:42:23', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-04-13 06:42:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Kancaroo/blog/?p=36', 1, 'nav_menu_item', '', 0),
(38, 1, '2024-04-13 06:42:43', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-04-13 06:42:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/Kancaroo/blog/?p=38', 1, 'nav_menu_item', '', 0),
(44, 1, '2024-04-13 06:45:48', '2024-04-13 06:45:48', '{\n    \"kancaroo-theme::nav_menu_locations[menu-1]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-13 06:45:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7cce7fd6-30a9-407b-b5e7-3b17a85f742b', '', '', '2024-04-13 06:45:48', '2024-04-13 06:45:48', '', 0, 'http://localhost/Kancaroo/blog/7cce7fd6-30a9-407b-b5e7-3b17a85f742b/', 0, 'customize_changeset', '', 0),
(45, 1, '2024-04-13 06:48:15', '2024-04-13 06:48:15', '{\n    \"kancaroo-theme::nav_menu_locations[menu-1]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-13 06:48:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '27cbc55e-9e1c-4a4d-a42c-420968c167c7', '', '', '2024-04-13 06:48:15', '2024-04-13 06:48:15', '', 0, 'http://localhost/Kancaroo/blog/27cbc55e-9e1c-4a4d-a42c-420968c167c7/', 0, 'customize_changeset', '', 0),
(46, 1, '2024-04-13 06:48:40', '2024-04-13 06:48:40', '{\n    \"kancaroo-theme::nav_menu_locations[menu-1]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-13 06:48:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25d678a5-191f-4364-bd54-8c0e1b3631e2', '', '', '2024-04-13 06:48:40', '2024-04-13 06:48:40', '', 0, 'http://localhost/Kancaroo/blog/25d678a5-191f-4364-bd54-8c0e1b3631e2/', 0, 'customize_changeset', '', 0),
(47, 1, '2024-04-13 06:49:13', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-04-13 06:49:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/Kancaroo/blog/?p=47', 1, 'nav_menu_item', '', 0),
(49, 1, '2024-04-13 06:49:50', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-04-13 06:49:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Kancaroo/blog/?p=49', 1, 'nav_menu_item', '', 0),
(51, 1, '2024-04-13 06:50:22', '0000-00-00 00:00:00', '', 'About', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-04-13 06:50:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/Kancaroo/blog/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2024-04-13 06:51:14', '2024-04-13 06:51:14', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-04-13 06:51:14', '2024-04-13 06:51:14', '', 0, 'http://localhost/Kancaroo/blog/?p=52', 1, 'nav_menu_item', '', 0),
(54, 1, '2024-04-13 06:55:23', '2024-04-13 06:52:15', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2024-04-13 06:55:23', '2024-04-13 06:55:23', '', 0, 'http://localhost/Kancaroo/blog/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2024-04-13 06:55:23', '2024-04-13 06:52:15', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2024-04-13 06:55:23', '2024-04-13 06:55:23', '', 0, 'http://localhost/Kancaroo/blog/?p=55', 2, 'nav_menu_item', '', 0),
(56, 1, '2024-04-13 07:17:53', '2024-04-13 07:17:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Banner', 'banner', 'trash', 'closed', 'closed', '', 'group_661a2fc6897c0__trashed', '', '', '2024-04-15 09:44:04', '2024-04-15 09:44:04', '', 0, 'http://localhost/Kancaroo/blog/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(82, 1, '2024-04-15 09:47:44', '2024-04-15 09:47:44', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'blog-section', 'blog-section', 'trash', 'closed', 'closed', '', 'group_661cf6ea459c1__trashed', '', '', '2024-04-15 11:38:48', '2024-04-15 11:38:48', '', 0, 'http://localhost/Kancaroo/blog/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2024-04-15 09:47:43', '2024-04-15 09:47:43', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'blog content', 'blog_content', 'trash', 'closed', 'closed', '', 'field_661cf73f8980e__trashed', '', '', '2024-04-15 11:38:48', '2024-04-15 11:38:48', '', 82, 'http://localhost/Kancaroo/blog/?post_type=acf-field&#038;p=83', 0, 'acf-field', '', 0),
(84, 1, '2024-04-15 09:47:44', '2024-04-15 09:47:44', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'heading', 'heading', 'publish', 'closed', 'closed', '', 'field_661cf7928980f', '', '', '2024-04-15 09:47:44', '2024-04-15 09:47:44', '', 83, 'http://localhost/Kancaroo/blog/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(95, 1, '2024-04-16 08:37:02', '2024-04-16 08:37:02', '{\n    \"kancaroo-theme::custom_logo\": {\n        \"value\": 94,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-16 08:37:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e809b55c-0540-4ef4-8c17-1bdeae78bdf8', '', '', '2024-04-16 08:37:02', '2024-04-16 08:37:02', '', 0, 'http://localhost/Kancaroo/blog/e809b55c-0540-4ef4-8c17-1bdeae78bdf8/', 0, 'customize_changeset', '', 0),
(96, 1, '2024-04-16 08:37:22', '2024-04-16 08:37:22', '{\n    \"kancaroo-theme::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-04-16 08:37:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '864f23eb-def7-4d4e-9d4a-7ee1112ec920', '', '', '2024-04-16 08:37:22', '2024-04-16 08:37:22', '', 0, 'http://localhost/Kancaroo/blog/864f23eb-def7-4d4e-9d4a-7ee1112ec920/', 0, 'customize_changeset', '', 0),
(112, 1, '2024-04-17 13:26:27', '2024-04-17 13:26:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Post Images', 'post-images', 'publish', 'closed', 'closed', '', 'group_661fcd846525f', '', '', '2024-04-26 06:59:17', '2024-04-26 06:59:17', '', 0, 'http://localhost/Kancaroo/blog/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2024-04-17 13:26:27', '2024-04-17 13:26:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_661fcd84f82ce', '', '', '2024-04-18 07:16:44', '2024-04-18 07:16:44', '', 112, 'http://localhost/Kancaroo/blog/?post_type=acf-field&#038;p=113', 0, 'acf-field', '', 0),
(127, 1, '2024-04-24 10:16:34', '2024-04-24 10:16:34', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Featured Thumbnail Image', 'featured_image_small', 'publish', 'closed', 'closed', '', 'field_6628db9014fba', '', '', '2024-04-26 06:59:17', '2024-04-26 06:59:17', '', 112, 'http://localhost/Kancaroo/blog/?post_type=acf-field&#038;p=127', 1, 'acf-field', '', 0),
(133, 1, '2024-04-25 10:11:19', '2024-04-25 10:11:19', '<strong>Why Choose Kancaroo Car Carrier Services?</strong>\r\n\r\n<strong>1. Expertise in Car Transportation:</strong> Kancaroo specializes in car shifting services, offering unparalleled expertise in safely transporting vehicles from one location to another. Kancaroo ensures that your vehicle arrives at its destination in pristine condition.\r\n\r\n<strong>2. Comprehensive Car Shifting Solutions:</strong> Whether you\'re moving across town, Kancaroo offers comprehensive car shifting solutions tailored to your specific needs. From door-to-door service to secure vehicle storage options, Kancaroo has you covered every step of the way.\r\n\r\n<strong>3. Cutting-Edge Transport Technology:</strong> Kancaroo utilizes cutting-edge transport technology to ensure the safe and efficient transportation of your vehicle. With state-of-the-art car carriers and advanced tracking systems, you can have peace of mind knowing that your vehicle is in good hands.\r\n\r\n<strong>4. Professional and Reliable Service:</strong> At Kancaroo, professionalism and reliability are our top priorities. Our team of experienced drivers and logistics experts are dedicated to providing you with the highest level of service, ensuring a smooth and hassle-free car shifting experience.\r\n\r\n<strong>5. Affordable Pricing Options:</strong> Contrary to popular belief, professional car carrier services can be affordable. Kancaroo offers competitive pricing options to suit any budget, allowing you to enjoy the convenience of professional car transportation without breaking the bank.', 'Streamline Your Relocation: The Ultimate Guide to Kancaroo Car Carrier Services', 'Introduction: Planning a move can be stressful, especially when it comes to transporting your vehicle. However, with Kancaroo\'s car carrier services, your car shifting worries can be a thing of the past. we\'ll delve into the benefits of using professional car transportation services like Kancaroo and how they can make your relocation seamless and stress-free.', 'publish', 'closed', 'closed', '', 'streamline-your-relocation-the-ultimate-guide-to-kancaroo-car-carrier-services', '', '', '2024-04-25 13:44:35', '2024-04-25 13:44:35', '', 0, 'http://localhost/Kancaroo/blog/?p=133', 0, 'post', '', 0),
(134, 1, '2024-04-25 10:11:19', '2024-04-25 10:11:19', 'Why Choose Kancaroo Car Carrier Services?\r\n1. Expertise in Car Transportation: Kancaroo specializes in car shifting services, offering unparalleled expertise in safely transporting vehicles from one location to another. Kancaroo ensures that your vehicle arrives at its destination in pristine condition.\r\n2. Comprehensive Car Shifting Solutions: Whether you\'re moving across town, Kancaroo offers comprehensive car shifting solutions tailored to your specific needs. From door-to-door service to secure vehicle storage options, Kancaroo has you covered every step of the way.\r\n3. Cutting-Edge Transport Technology: Kancaroo utilizes cutting-edge transport technology to ensure the safe and efficient transportation of your vehicle. With state-of-the-art car carriers and advanced tracking systems, you can have peace of mind knowing that your vehicle is in good hands.\r\n4. Professional and Reliable Service: At Kancaroo, professionalism and reliability are our top priorities. Our team of experienced drivers and logistics experts are dedicated to providing you with the highest level of service, ensuring a smooth and hassle-free car shifting experience.\r\n5. Affordable Pricing Options: Contrary to popular belief, professional car carrier services can be affordable. Kancaroo offers competitive pricing options to suit any budget, allowing you to enjoy the convenience of professional car transportation without breaking the bank.', 'Streamline Your Relocation: The Ultimate Guide to Kancaroo Car Carrier Services', 'Introduction: Planning a move can be stressful, especially when it comes to transporting your vehicle. However, with Kancaroo\'s car carrier services, your car shifting worries can be a thing of the past. we\'ll delve into the benefits of using professional car transportation services like Kancaroo and how they can make your relocation seamless and stress-free.', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2024-04-25 10:11:19', '2024-04-25 10:11:19', '', 133, 'http://localhost/Kancaroo/blog/?p=134', 0, 'revision', '', 0),
(135, 1, '2024-04-25 10:19:08', '2024-04-25 10:19:08', '', 'post-banner', '', 'inherit', 'open', 'closed', '', 'post-banner', '', '', '2024-04-25 10:19:08', '2024-04-25 10:19:08', '', 133, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/post-banner.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2024-04-25 10:19:10', '2024-04-25 10:19:10', '', 'blog-img', '', 'inherit', 'open', 'closed', '', 'blog-img', '', '', '2024-04-25 10:19:10', '2024-04-25 10:19:10', '', 133, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/blog-img.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2024-04-25 10:19:10', '2024-04-25 10:19:10', '', 'blog-thumb', '', 'inherit', 'open', 'closed', '', 'blog-thumb', '', '', '2024-04-25 10:19:10', '2024-04-25 10:19:10', '', 133, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/blog-thumb.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2024-04-25 10:20:14', '2024-04-25 10:20:14', 'Why Choose Kancaroo Car Carrier Services?\r\n1. Expertise in Car Transportation: Kancaroo specializes in car shifting services, offering unparalleled expertise in safely transporting vehicles from one location to another. Kancaroo ensures that your vehicle arrives at its destination in pristine condition.\r\n2. Comprehensive Car Shifting Solutions: Whether you\'re moving across town, Kancaroo offers comprehensive car shifting solutions tailored to your specific needs. From door-to-door service to secure vehicle storage options, Kancaroo has you covered every step of the way.\r\n3. Cutting-Edge Transport Technology: Kancaroo utilizes cutting-edge transport technology to ensure the safe and efficient transportation of your vehicle. With state-of-the-art car carriers and advanced tracking systems, you can have peace of mind knowing that your vehicle is in good hands.\r\n4. Professional and Reliable Service: At Kancaroo, professionalism and reliability are our top priorities. Our team of experienced drivers and logistics experts are dedicated to providing you with the highest level of service, ensuring a smooth and hassle-free car shifting experience.\r\n5. Affordable Pricing Options: Contrary to popular belief, professional car carrier services can be affordable. Kancaroo offers competitive pricing options to suit any budget, allowing you to enjoy the convenience of professional car transportation without breaking the bank.', 'Streamline Your Relocation: The Ultimate Guide to Kancaroo Car Carrier Services', 'Introduction: Planning a move can be stressful, especially when it comes to transporting your vehicle. However, with Kancaroo\'s car carrier services, your car shifting worries can be a thing of the past. we\'ll delve into the benefits of using professional car transportation services like Kancaroo and how they can make your relocation seamless and stress-free.', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2024-04-25 10:20:14', '2024-04-25 10:20:14', '', 133, 'http://localhost/Kancaroo/blog/?p=138', 0, 'revision', '', 0),
(139, 1, '2024-04-25 10:25:02', '2024-04-25 10:25:02', '<strong>Why Choose Kancaroo Car Carrier Services?</strong>\n\n1. Expertise in Car Transportation: Kancaroo specializes in car shifting services, offering unparalleled expertise in safely transporting vehicles from one location to another. Kancaroo ensures that your vehicle arrives at its destination in pristine condition.\n2. Comprehensive Car Shifting Solutions: Whether you\'re moving across town, Kancaroo offers comprehensive car shifting solutions tailored to your specific needs. From door-to-door service to secure vehicle storage options, Kancaroo has you covered every step of the way.\n3. Cutting-Edge Transport Technology: Kancaroo utilizes cutting-edge transport technology to ensure the safe and efficient transportation of your vehicle. With state-of-the-art car carriers and advanced tracking systems, you can have peace of mind knowing that your vehicle is in good hands.\n4. Professional and Reliable Service: At Kancaroo, professionalism and reliability are our top priorities. Our team of experienced drivers and logistics experts are dedicated to providing you with the highest level of service, ensuring a smooth and hassle-free car shifting experience.\n5. Affordable Pricing Options: Contrary to popular belief, professional car carrier services can be affordable. Kancaroo offers competitive pricing options to suit any budget, allowing you to enjoy the convenience of professional car transportation without breaking the bank.', 'Streamline Your Relocation: The Ultimate Guide to Kancaroo Car Carrier Services', 'Introduction: Planning a move can be stressful, especially when it comes to transporting your vehicle. However, with Kancaroo\'s car carrier services, your car shifting worries can be a thing of the past. we\'ll delve into the benefits of using professional car transportation services like Kancaroo and how they can make your relocation seamless and stress-free.', 'inherit', 'closed', 'closed', '', '133-autosave-v1', '', '', '2024-04-25 10:25:02', '2024-04-25 10:25:02', '', 133, 'http://localhost/Kancaroo/blog/?p=139', 0, 'revision', '', 0),
(140, 1, '2024-04-25 10:26:27', '2024-04-25 10:26:27', '<strong>Why Choose Kancaroo Car Carrier Services?</strong>\r\n\r\n<strong>1. Expertise in Car Transportation:</strong> Kancaroo specializes in car shifting services, offering unparalleled expertise in safely transporting vehicles from one location to another. Kancaroo ensures that your vehicle arrives at its destination in pristine condition.\r\n\r\n<strong>2. Comprehensive Car Shifting Solutions:</strong> Whether you\'re moving across town, Kancaroo offers comprehensive car shifting solutions tailored to your specific needs. From door-to-door service to secure vehicle storage options, Kancaroo has you covered every step of the way.\r\n\r\n<strong>3. Cutting-Edge Transport Technology:</strong> Kancaroo utilizes cutting-edge transport technology to ensure the safe and efficient transportation of your vehicle. With state-of-the-art car carriers and advanced tracking systems, you can have peace of mind knowing that your vehicle is in good hands.\r\n\r\n<strong>4. Professional and Reliable Service:</strong> At Kancaroo, professionalism and reliability are our top priorities. Our team of experienced drivers and logistics experts are dedicated to providing you with the highest level of service, ensuring a smooth and hassle-free car shifting experience.\r\n\r\n<strong>5. Affordable Pricing Options:</strong> Contrary to popular belief, professional car carrier services can be affordable. Kancaroo offers competitive pricing options to suit any budget, allowing you to enjoy the convenience of professional car transportation without breaking the bank.', 'Streamline Your Relocation: The Ultimate Guide to Kancaroo Car Carrier Services', 'Introduction: Planning a move can be stressful, especially when it comes to transporting your vehicle. However, with Kancaroo\'s car carrier services, your car shifting worries can be a thing of the past. we\'ll delve into the benefits of using professional car transportation services like Kancaroo and how they can make your relocation seamless and stress-free.', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2024-04-25 10:26:27', '2024-04-25 10:26:27', '', 133, 'http://localhost/Kancaroo/blog/?p=140', 0, 'revision', '', 0),
(153, 1, '2024-04-26 07:41:36', '2024-04-26 07:41:36', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-05-02 05:13:48', '2024-05-02 05:13:48', '', 0, 'http://localhost/Kancaroo/blog/?page_id=153', 0, 'page', '', 0),
(154, 1, '2024-04-26 07:41:36', '2024-04-26 07:41:36', '', 'home', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2024-04-26 07:41:36', '2024-04-26 07:41:36', '', 153, 'http://localhost/Kancaroo/blog/?p=154', 0, 'revision', '', 0),
(155, 1, '2024-04-26 08:49:33', '2024-04-26 08:49:33', '', 'og-tag', '', 'inherit', 'open', 'closed', '', 'og-tag', '', '', '2024-04-29 13:16:20', '2024-04-29 13:16:20', '', 153, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/og-tag.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2024-04-26 09:23:50', '2024-04-26 09:23:50', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2024-04-29 13:15:31', '2024-04-29 13:15:31', '', 0, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/favicon.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2024-04-26 09:24:00', '2024-04-26 09:24:00', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2024-05-03 13:26:12', '2024-05-03 13:26:12', '', 156, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/cropped-favicon.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ka_termmeta`
--

CREATE TABLE `ka_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ka_terms`
--

CREATE TABLE `ka_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_terms`
--

INSERT INTO `ka_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(4, 'Menu 1', 'menu-1', 0),
(5, 'top-menu', 'top-menu', 0),
(6, 'Blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ka_term_relationships`
--

CREATE TABLE `ka_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_term_relationships`
--

INSERT INTO `ka_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(52, 4, 0),
(54, 5, 0),
(55, 5, 0),
(133, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ka_term_taxonomy`
--

CREATE TABLE `ka_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_term_taxonomy`
--

INSERT INTO `ka_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ka_usermeta`
--

CREATE TABLE `ka_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_usermeta`
--

INSERT INTO `ka_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Kancaroo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'ka_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ka_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"b067d9223bb55d3f3c34c0be5dc6f911bfc3296fcb59808fbab07b11c62d5421\";a:4:{s:10:\"expiration\";i:1715143865;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1714971065;}s:64:\"a1658163da9047eb0373a7db6d317f4b24afddecdfbaa1c1e78d8ce91109e920\";a:4:{s:10:\"expiration\";i:1715143868;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1714971068;}s:64:\"e9de94036bc88055507377b8a9d7b624137792e268084b823cb15293f5770300\";a:4:{s:10:\"expiration\";i:1715250819;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1715078019;}}'),
(17, 1, 'ka_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'ka_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list'),
(19, 1, 'ka_user-settings-time', '1714971078'),
(20, 1, 'ka_persisted_preferences', 'a:6:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-04-16T11:54:55.612Z\";s:4:\"core\";a:3:{s:29:\"isTemplatePartMoveHintVisible\";b:0;s:10:\"openPanels\";a:6:{i:0;s:23:\"taxonomy-panel-category\";i:1;s:23:\"taxonomy-panel-post_tag\";i:2;s:12:\"post-excerpt\";i:3;s:15:\"page-attributes\";i:4;s:14:\"featured-image\";i:5;s:16:\"discussion-panel\";}s:10:\"editorMode\";s:6:\"visual\";}s:14:\"core/edit-site\";a:2:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:0;}s:17:\"core/block-editor\";a:1:{s:25:\"linkControlSettingsDrawer\";b:0;}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}}'),
(21, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(22, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(23, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(27, 1, 'nav_menu_recently_edited', '4'),
(28, 1, 'closedpostboxes_post', 'a:2:{i:0;s:12:\"revisionsdiv\";i:1;s:9:\"authordiv\";}'),
(29, 1, 'metaboxhidden_post', 'a:0:{}'),
(30, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:11:\"postexcerpt\";s:4:\"side\";s:64:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv,revisionsdiv\";s:6:\"normal\";s:95:\"acf-group_661fcd846525f,wpseo_meta,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_post', '2'),
(33, 1, '_yoast_alerts_dismissed', 'a:1:{s:26:\"webinar-promo-notification\";b:1;}'),
(39, 1, 'ka_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:300:\"<p>Because of a change in your permalink structure, some of your SEO data needs to be reprocessed.</p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"http://localhost/Kancaroo/blog/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";d:0.8000000000000000444089209850062616169452667236328125;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(40, 1, 'ka_wpseo-reindex', 'seen');

-- --------------------------------------------------------

--
-- Table structure for table `ka_users`
--

CREATE TABLE `ka_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_users`
--

INSERT INTO `ka_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Kancaroo', '$P$Bwwv0ro0Aj.sjguA85tsRVlUTnobTG1', 'kancaroo', 'bharathikinkwc@gmail.com', 'http://localhost/Kancaroo/blog', '2024-04-12 10:16:00', '', 0, 'Kancaroo');

-- --------------------------------------------------------

--
-- Table structure for table `ka_yoast_indexable`
--

CREATE TABLE `ka_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_yoast_indexable`
--

INSERT INTO `ka_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(2, 'http://localhost/Kancaroo/blog/author/kancaroo/', '47:2f4e3215f14e75e938153c91739e1c2f', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/d771fb1c8812af6a7c0a4e8f17c12575?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/d771fb1c8812af6a7c0a4e8f17c12575?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2024-04-26 07:02:02', '2024-05-07 05:04:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-07 10:34:00', '2024-04-12 10:20:47', NULL),
(5, 'http://localhost/Kancaroo/blog/streamline-your-relocation-the-ultimate-guide-to-kancaroo-car-carrier-services/', '110:a4b793e8b0faef3002606b4d4b933e55', 133, 'post', 'post', 1, 0, NULL, NULL, 'Streamline Your Relocation: The Ultimate Guide to Kancaroo Car Carrier Services', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/blog-img.png', NULL, '136', 'featured-image', NULL, NULL, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/blog-img.png', '136', 'featured-image', '{\n    \"width\": 647,\n    \"height\": 574,\n    \"filesize\": 721868,\n    \"url\": \"http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/blog-img.png\",\n    \"path\": \"/opt/lampp/htdocs/Kancaroo/blog/wp-content/uploads/2024/04/blog-img.png\",\n    \"size\": \"full\",\n    \"id\": 136,\n    \"alt\": \"\",\n    \"pixels\": 371378,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-04-26 07:02:03', '2024-04-27 02:11:37', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-04-25 13:44:35', '2024-04-25 10:11:19', 0),
(6, 'http://localhost/Kancaroo/blog/', '31:2869b73aec0b79d34f7690c26cb5955c', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-04-26 07:06:06', '2024-05-07 05:04:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-07 10:34:00', '2024-04-25 10:11:19', NULL),
(7, 'http://localhost/Kancaroo/blog/category/uncategorized/', '54:c61cbac14f6948560c479ec0016ac216', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-26 07:19:24', '2024-05-03 00:36:15', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-03 06:06:13', '2024-04-29 05:19:12', NULL),
(8, 'http://localhost/Kancaroo/blog/category/blog/', '45:6af46693b22b3bc94f92f9e0f1cf5a64', 6, 'term', 'category', NULL, NULL, NULL, NULL, 'Blog', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-26 07:19:24', '2024-05-03 07:56:45', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-03 13:26:43', '2024-04-25 10:11:19', NULL),
(19, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-26 07:19:27', '2024-04-28 23:46:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(20, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-26 07:19:27', '2024-04-28 23:46:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-26 07:19:27', '2024-04-28 23:46:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(23, 'http://localhost/Kancaroo/blog/', '31:2869b73aec0b79d34f7690c26cb5955c', 153, 'post', 'page', 1, 0, 'Car Transportation Tips & Services - Kancaroo Car Carriers', 'Make moving stress-free! Explore Kancaroo Car Carriers\' expert tips & guides for a smooth relocation. Check out our blog now', 'home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/og-tag.png', NULL, '155', 'featured-image', NULL, NULL, 'http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/og-tag.png', '155', 'featured-image', '{\n    \"width\": 1200,\n    \"height\": 630,\n    \"filesize\": 117999,\n    \"url\": \"http://localhost/Kancaroo/blog/wp-content/uploads/2024/04/og-tag.png\",\n    \"path\": \"/opt/lampp/htdocs/Kancaroo/blog/wp-content/uploads/2024/04/og-tag.png\",\n    \"size\": \"full\",\n    \"id\": 155,\n    \"alt\": \"og-image\",\n    \"pixels\": 756000,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-04-26 07:41:32', '2024-05-01 23:43:49', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-02 05:13:48', '2024-04-26 07:41:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ka_yoast_indexable_hierarchy`
--

CREATE TABLE `ka_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_yoast_indexable_hierarchy`
--

INSERT INTO `ka_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(5, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(23, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ka_yoast_migrations`
--

CREATE TABLE `ka_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ka_yoast_migrations`
--

INSERT INTO `ka_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Table structure for table `ka_yoast_primary_term`
--

CREATE TABLE `ka_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ka_yoast_seo_links`
--

CREATE TABLE `ka_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ka_commentmeta`
--
ALTER TABLE `ka_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ka_comments`
--
ALTER TABLE `ka_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ka_links`
--
ALTER TABLE `ka_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ka_options`
--
ALTER TABLE `ka_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `ka_postmeta`
--
ALTER TABLE `ka_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ka_posts`
--
ALTER TABLE `ka_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ka_termmeta`
--
ALTER TABLE `ka_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ka_terms`
--
ALTER TABLE `ka_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `ka_term_relationships`
--
ALTER TABLE `ka_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ka_term_taxonomy`
--
ALTER TABLE `ka_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ka_usermeta`
--
ALTER TABLE `ka_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ka_users`
--
ALTER TABLE `ka_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `ka_yoast_indexable`
--
ALTER TABLE `ka_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `ka_yoast_indexable_hierarchy`
--
ALTER TABLE `ka_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `ka_yoast_migrations`
--
ALTER TABLE `ka_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ka_yoast_migrations_version` (`version`);

--
-- Indexes for table `ka_yoast_primary_term`
--
ALTER TABLE `ka_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `ka_yoast_seo_links`
--
ALTER TABLE `ka_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ka_commentmeta`
--
ALTER TABLE `ka_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ka_comments`
--
ALTER TABLE `ka_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ka_links`
--
ALTER TABLE `ka_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ka_options`
--
ALTER TABLE `ka_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- AUTO_INCREMENT for table `ka_postmeta`
--
ALTER TABLE `ka_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT for table `ka_posts`
--
ALTER TABLE `ka_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `ka_termmeta`
--
ALTER TABLE `ka_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ka_terms`
--
ALTER TABLE `ka_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ka_term_taxonomy`
--
ALTER TABLE `ka_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ka_usermeta`
--
ALTER TABLE `ka_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ka_users`
--
ALTER TABLE `ka_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ka_yoast_indexable`
--
ALTER TABLE `ka_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ka_yoast_migrations`
--
ALTER TABLE `ka_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ka_yoast_primary_term`
--
ALTER TABLE `ka_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ka_yoast_seo_links`
--
ALTER TABLE `ka_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
