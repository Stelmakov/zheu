-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 05 2018 г., 22:40
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zheu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-25 21:12:08', '2018-07-25 18:12:08', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://zheu.loc', 'yes'),
(2, 'home', 'http://zheu.loc', 'yes'),
(3, 'blogname', 'ЖЭУ №7', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'giperilia@mail.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:27:\"cyr-and-lat/cyr-and-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'zheu', 'yes'),
(41, 'stylesheet', 'zheu', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"cyr-and-lat/cyr-and-lat.php\";a:2:{i:0;s:13:\"Admin_Notices\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', '~Cuer>U{[g`w^*v!iwN`4W/;]m5rmjG_Qt.-I{54`}e,s|hR@;-=gz`Ak[Ai]8Pp', 'no'),
(109, 'nonce_salt', ':DXB~c!f~bzb lMs5[Pdc<H>?90@6JbFfZe7}tV/_ZR[pCP&YgPZMt-{k!Z`ga_^', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:5:{i:1533499930;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533535930;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533579147;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533579192;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532543292;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-7.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.7\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1533497243;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533497246;s:7:\"checked\";a:1:{s:4:\"zheu\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'auth_key', '4FqPBGrXclBJ*X$=T=Jbn65s&5bj0=KKzdjfYj!=Z.L[R%^P.n?o6iEJj@hwN0fn', 'no'),
(129, 'auth_salt', '7N}6a(P0W$E1plxq6TDkb(,Gpe~tPTo%@RPthu)#:3H&@N>u>*zh}c$D<dPd7Tqb', 'no'),
(130, 'logged_in_key', '*/x!4csr6x/f99x [f2!>QznpS{`ykA.MNFxmC%:Ueq;Hm#P `|lII_uRqn.:Uwa', 'no'),
(131, 'logged_in_salt', 'uS}:r@j.H6i`O>QZ&}lPw/VX%T5nMVUdCrP05@J`p_g=MfXs&1Q=z=V<edj}|%&+', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'can_compress_scripts', '1', 'no'),
(154, 'new_admin_email', 'giperilia@mail.ru', 'yes'),
(164, 'current_theme', 'Zheu', 'yes'),
(165, 'theme_mods_zheu', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"footer-menu\";i:7;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(176, 'wbcr_cyrandlat_an__activated_on', '1532558077', 'yes'),
(177, 'wbcr_wp_term_1_old_slug', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 'no'),
(178, 'wbcr_wp_term_2_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'no'),
(179, 'wbcr_cyrandlat_an__dismissed_suggestions_on', '1532558096', 'yes'),
(184, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(205, 'acf_version', '4.4.12', 'yes'),
(222, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533497246;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"1.1.1\";s:27:\"cyr-and-lat/cyr-and-lat.php\";s:5:\"1.1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"cyr-and-lat/cyr-and-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/cyr-and-lat\";s:4:\"slug\";s:11:\"cyr-and-lat\";s:6:\"plugin\";s:27:\"cyr-and-lat/cyr-and-lat.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/cyr-and-lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr-and-lat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/cyr-and-lat/assets/icon-256x256.jpg?rev=1877806\";s:2:\"1x\";s:64:\"https://ps.w.org/cyr-and-lat/assets/icon-128x128.jpg?rev=1877806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/cyr-and-lat/assets/banner-1544x500.jpg?rev=1877806\";s:2:\"1x\";s:66:\"https://ps.w.org/cyr-and-lat/assets/banner-772x250.jpg?rev=1877806\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(278, 'category_children', 'a:0:{}', 'yes'),
(288, '_site_transient_timeout_theme_roots', '1533499045', 'no'),
(289, '_site_transient_theme_roots', 'a:1:{s:4:\"zheu\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1532542379'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1532542385'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1533387111:1'),
(11, 1, 'wbcr_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(12, 7, 'wbcr_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(22, 10, '_menu_item_type', 'taxonomy'),
(23, 10, '_menu_item_menu_item_parent', '0'),
(24, 10, '_menu_item_object_id', '4'),
(25, 10, '_menu_item_object', 'category'),
(26, 10, '_menu_item_target', ''),
(27, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 10, '_menu_item_xfn', ''),
(29, 10, '_menu_item_url', ''),
(31, 11, '_menu_item_type', 'taxonomy'),
(32, 11, '_menu_item_menu_item_parent', '0'),
(33, 11, '_menu_item_object_id', '5'),
(34, 11, '_menu_item_object', 'category'),
(35, 11, '_menu_item_target', ''),
(36, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 11, '_menu_item_xfn', ''),
(38, 11, '_menu_item_url', ''),
(40, 12, '_edit_last', '1'),
(41, 12, '_edit_lock', '1532558167:1'),
(42, 14, '_edit_last', '1'),
(43, 14, '_edit_lock', '1532558203:1'),
(44, 16, '_edit_last', '1'),
(45, 16, '_edit_lock', '1533374315:1'),
(46, 18, '_edit_last', '1'),
(47, 18, '_edit_lock', '1533393474:1'),
(48, 20, '_menu_item_type', 'post_type'),
(49, 20, '_menu_item_menu_item_parent', '0'),
(50, 20, '_menu_item_object_id', '14'),
(51, 20, '_menu_item_object', 'page'),
(52, 20, '_menu_item_target', ''),
(53, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 20, '_menu_item_xfn', ''),
(55, 20, '_menu_item_url', ''),
(56, 20, '_menu_item_orphaned', '1532559386'),
(57, 21, '_menu_item_type', 'post_type'),
(58, 21, '_menu_item_menu_item_parent', '0'),
(59, 21, '_menu_item_object_id', '18'),
(60, 21, '_menu_item_object', 'page'),
(61, 21, '_menu_item_target', ''),
(62, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 21, '_menu_item_xfn', ''),
(64, 21, '_menu_item_url', ''),
(65, 21, '_menu_item_orphaned', '1532559387'),
(66, 22, '_menu_item_type', 'post_type'),
(67, 22, '_menu_item_menu_item_parent', '0'),
(68, 22, '_menu_item_object_id', '16'),
(69, 22, '_menu_item_object', 'page'),
(70, 22, '_menu_item_target', ''),
(71, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 22, '_menu_item_xfn', ''),
(73, 22, '_menu_item_url', ''),
(74, 22, '_menu_item_orphaned', '1532559387'),
(75, 23, '_menu_item_type', 'post_type'),
(76, 23, '_menu_item_menu_item_parent', '0'),
(77, 23, '_menu_item_object_id', '12'),
(78, 23, '_menu_item_object', 'page'),
(79, 23, '_menu_item_target', ''),
(80, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 23, '_menu_item_xfn', ''),
(82, 23, '_menu_item_url', ''),
(83, 23, '_menu_item_orphaned', '1532559401'),
(93, 25, '_menu_item_type', 'post_type'),
(94, 25, '_menu_item_menu_item_parent', '104'),
(95, 25, '_menu_item_object_id', '18'),
(96, 25, '_menu_item_object', 'page'),
(97, 25, '_menu_item_target', ''),
(98, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 25, '_menu_item_xfn', ''),
(100, 25, '_menu_item_url', ''),
(102, 26, '_menu_item_type', 'post_type'),
(103, 26, '_menu_item_menu_item_parent', '104'),
(104, 26, '_menu_item_object_id', '16'),
(105, 26, '_menu_item_object', 'page'),
(106, 26, '_menu_item_target', ''),
(107, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 26, '_menu_item_xfn', ''),
(109, 26, '_menu_item_url', ''),
(111, 27, '_menu_item_type', 'post_type'),
(112, 27, '_menu_item_menu_item_parent', '0'),
(113, 27, '_menu_item_object_id', '12'),
(114, 27, '_menu_item_object', 'page'),
(115, 27, '_menu_item_target', ''),
(116, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 27, '_menu_item_xfn', ''),
(118, 27, '_menu_item_url', ''),
(129, 29, '_edit_last', '1'),
(130, 29, 'field_5b5c0da05cbfa', 'a:14:{s:3:\"key\";s:19:\"field_5b5c0da05cbfa\";s:5:\"label\";s:31:\"Телефон приёмной\";s:4:\"name\";s:12:\"header_phone\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(132, 29, 'position', 'normal'),
(133, 29, 'layout', 'no_box'),
(134, 29, 'hide_on_screen', ''),
(135, 29, '_edit_lock', '1533379215:1'),
(137, 30, 'header_phone', '+375 17 234-41-94'),
(138, 30, '_header_phone', 'field_5b5c0da05cbfa'),
(139, 7, 'header_phone', '+375 17 234-41-94'),
(140, 7, '_header_phone', 'field_5b5c0da05cbfa'),
(141, 31, '_edit_last', '1'),
(142, 31, '_edit_lock', '1532765409:1'),
(144, 1, '_wp_trash_meta_status', 'publish'),
(145, 1, '_wp_trash_meta_time', '1532765529'),
(146, 1, '_wp_desired_post_slug', 'privet-mir'),
(147, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(148, 34, '_edit_last', '1'),
(149, 34, '_edit_lock', '1532765479:1'),
(151, 36, '_edit_last', '1'),
(152, 36, '_edit_lock', '1532765983:1'),
(154, 38, '_edit_last', '1'),
(155, 38, '_edit_lock', '1532769383:1'),
(156, 39, '_edit_last', '1'),
(157, 39, 'field_5b5c34cbb28f9', 'a:11:{s:3:\"key\";s:19:\"field_5b5c34cbb28f9\";s:5:\"label\";s:12:\"Иконка\";s:4:\"name\";s:4:\"icon\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(158, 39, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(159, 39, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"3\";s:8:\"order_no\";i:1;s:8:\"group_no\";i:0;}'),
(160, 39, 'position', 'normal'),
(161, 39, 'layout', 'no_box'),
(162, 39, 'hide_on_screen', ''),
(163, 39, '_edit_lock', '1532769434:1'),
(166, 41, '_edit_last', '1'),
(167, 41, '_edit_lock', '1532769727:1'),
(168, 42, '_wp_attached_file', '2018/07/icon_elektrik.png'),
(169, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:50;s:4:\"file\";s:25:\"2018/07/icon_elektrik.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 43, 'icon', '42'),
(172, 43, '_icon', 'field_5b5c34cbb28f9'),
(173, 41, 'icon', '42'),
(174, 41, '_icon', 'field_5b5c34cbb28f9'),
(175, 44, '_edit_last', '1'),
(176, 44, '_edit_lock', '1532769787:1'),
(177, 45, '_wp_attached_file', '2018/07/icon_plotnik.png'),
(178, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:26;s:4:\"file\";s:24:\"2018/07/icon_plotnik.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 46, 'icon', '45'),
(181, 46, '_icon', 'field_5b5c34cbb28f9'),
(182, 44, 'icon', '45'),
(183, 44, '_icon', 'field_5b5c34cbb28f9'),
(184, 47, '_edit_last', '1'),
(185, 47, '_edit_lock', '1532769841:1'),
(186, 48, '_wp_attached_file', '2018/07/icon_santehnik.png'),
(187, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:26:\"2018/07/icon_santehnik.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 49, 'icon', '48'),
(190, 49, '_icon', 'field_5b5c34cbb28f9'),
(191, 47, 'icon', '48'),
(192, 47, '_icon', 'field_5b5c34cbb28f9'),
(193, 50, '_edit_last', '1'),
(194, 50, '_edit_lock', '1532769904:1'),
(195, 51, '_wp_attached_file', '2018/07/icon_vyvoz_musora.png'),
(196, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:50;s:4:\"file\";s:29:\"2018/07/icon_vyvoz_musora.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 52, 'icon', '51'),
(199, 52, '_icon', 'field_5b5c34cbb28f9'),
(200, 50, 'icon', '51'),
(201, 50, '_icon', 'field_5b5c34cbb28f9'),
(202, 29, 'field_5b5c370a8462a', 'a:13:{s:3:\"key\";s:19:\"field_5b5c370a8462a\";s:5:\"label\";s:12:\"Услуги\";s:4:\"name\";s:8:\"services\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:13:{s:3:\"key\";s:19:\"field_5b5c371d8462b\";s:5:\"label\";s:12:\"Услуга\";s:4:\"name\";s:7:\"service\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(204, 53, 'header_phone', '+375 17 234-41-94'),
(205, 53, '_header_phone', 'field_5b5c0da05cbfa'),
(206, 53, 'services_0_service', '41'),
(207, 53, '_services_0_service', 'field_5b5c371d8462b'),
(208, 53, 'services_1_service', '44'),
(209, 53, '_services_1_service', 'field_5b5c371d8462b'),
(210, 53, 'services_2_service', '47'),
(211, 53, '_services_2_service', 'field_5b5c371d8462b'),
(212, 53, 'services_3_service', '50'),
(213, 53, '_services_3_service', 'field_5b5c371d8462b'),
(214, 53, 'services', '4'),
(215, 53, '_services', 'field_5b5c370a8462a'),
(216, 7, 'services_0_service', '41'),
(217, 7, '_services_0_service', 'field_5b5c371d8462b'),
(218, 7, 'services_1_service', '44'),
(219, 7, '_services_1_service', 'field_5b5c371d8462b'),
(220, 7, 'services_2_service', '47'),
(221, 7, '_services_2_service', 'field_5b5c371d8462b'),
(222, 7, 'services_3_service', '50'),
(223, 7, '_services_3_service', 'field_5b5c371d8462b'),
(224, 7, 'services', '4'),
(225, 7, '_services', 'field_5b5c370a8462a'),
(226, 29, 'field_5b5c449429cf5', 'a:13:{s:3:\"key\";s:19:\"field_5b5c449429cf5\";s:5:\"label\";s:52:\"Телефоны жэс для блока услуг\";s:4:\"name\";s:11:\"zhes_phones\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:15:{s:3:\"key\";s:19:\"field_5b5c44bc29cf6\";s:5:\"label\";s:14:\"Телефон\";s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_5b5c44ef5cf18\";s:5:\"label\";s:18:\"Заголовок\";s:4:\"name\";s:6:\"header\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(229, 54, 'header_phone', '+375 17 234-41-94'),
(230, 54, '_header_phone', 'field_5b5c0da05cbfa'),
(231, 54, 'services_0_service', '41'),
(232, 54, '_services_0_service', 'field_5b5c371d8462b'),
(233, 54, 'services_1_service', '44'),
(234, 54, '_services_1_service', 'field_5b5c371d8462b'),
(235, 54, 'services_2_service', '47'),
(236, 54, '_services_2_service', 'field_5b5c371d8462b'),
(237, 54, 'services_3_service', '50'),
(238, 54, '_services_3_service', 'field_5b5c371d8462b'),
(239, 54, 'services', '4'),
(240, 54, '_services', 'field_5b5c370a8462a'),
(241, 54, 'zhes_phones_0_phone', '+375 17 289-98-98'),
(242, 54, '_zhes_phones_0_phone', 'field_5b5c44bc29cf6'),
(243, 54, 'zhes_phones_0_header', 'ЖЭС №43'),
(244, 54, '_zhes_phones_0_header', 'field_5b5c44ef5cf18'),
(245, 54, 'zhes_phones_1_phone', '+375 17 277-00-11'),
(246, 54, '_zhes_phones_1_phone', 'field_5b5c44bc29cf6'),
(247, 54, 'zhes_phones_1_header', 'ЖЭС №53'),
(248, 54, '_zhes_phones_1_header', 'field_5b5c44ef5cf18'),
(249, 54, 'zhes_phones_2_phone', '+375 17 235-28-17'),
(250, 54, '_zhes_phones_2_phone', 'field_5b5c44bc29cf6'),
(251, 54, 'zhes_phones_2_header', 'ЖЭС №57'),
(252, 54, '_zhes_phones_2_header', 'field_5b5c44ef5cf18'),
(253, 54, 'zhes_phones_3_phone', '+375 17 222-17-11'),
(254, 54, '_zhes_phones_3_phone', 'field_5b5c44bc29cf6'),
(255, 54, 'zhes_phones_3_header', 'ЖЭС №66'),
(256, 54, '_zhes_phones_3_header', 'field_5b5c44ef5cf18'),
(257, 54, 'zhes_phones', '4'),
(258, 54, '_zhes_phones', 'field_5b5c449429cf5'),
(259, 7, 'zhes_phones_0_phone', '+375 17 289-98-98'),
(260, 7, '_zhes_phones_0_phone', 'field_5b5c44bc29cf6'),
(261, 7, 'zhes_phones_0_header', 'ЖЭС №43'),
(262, 7, '_zhes_phones_0_header', 'field_5b5c44ef5cf18'),
(263, 7, 'zhes_phones_1_phone', '+375 17 277-00-11'),
(264, 7, '_zhes_phones_1_phone', 'field_5b5c44bc29cf6'),
(265, 7, 'zhes_phones_1_header', 'ЖЭС №53'),
(266, 7, '_zhes_phones_1_header', 'field_5b5c44ef5cf18'),
(267, 7, 'zhes_phones_2_phone', '+375 17 235-28-17'),
(268, 7, '_zhes_phones_2_phone', 'field_5b5c44bc29cf6'),
(269, 7, 'zhes_phones_2_header', 'ЖЭС №57'),
(270, 7, '_zhes_phones_2_header', 'field_5b5c44ef5cf18'),
(271, 7, 'zhes_phones_3_phone', '+375 17 222-17-11'),
(272, 7, '_zhes_phones_3_phone', 'field_5b5c44bc29cf6'),
(273, 7, 'zhes_phones_3_header', 'ЖЭС №66'),
(274, 7, '_zhes_phones_3_header', 'field_5b5c44ef5cf18'),
(275, 7, 'zhes_phones', '4'),
(276, 7, '_zhes_phones', 'field_5b5c449429cf5'),
(277, 29, 'field_5b5caa0acd384', 'a:14:{s:3:\"key\";s:19:\"field_5b5caa0acd384\";s:5:\"label\";s:10:\"Адрес\";s:4:\"name\";s:7:\"address\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(279, 55, 'header_phone', '+375 17 234-41-94'),
(280, 55, '_header_phone', 'field_5b5c0da05cbfa'),
(281, 55, 'services_0_service', '41'),
(282, 55, '_services_0_service', 'field_5b5c371d8462b'),
(283, 55, 'services_1_service', '44'),
(284, 55, '_services_1_service', 'field_5b5c371d8462b'),
(285, 55, 'services_2_service', '47'),
(286, 55, '_services_2_service', 'field_5b5c371d8462b'),
(287, 55, 'services_3_service', '50'),
(288, 55, '_services_3_service', 'field_5b5c371d8462b'),
(289, 55, 'services', '4'),
(290, 55, '_services', 'field_5b5c370a8462a'),
(291, 55, 'zhes_phones_0_phone', '+375 17 289-98-98'),
(292, 55, '_zhes_phones_0_phone', 'field_5b5c44bc29cf6'),
(293, 55, 'zhes_phones_0_header', 'ЖЭС №43'),
(294, 55, '_zhes_phones_0_header', 'field_5b5c44ef5cf18'),
(295, 55, 'zhes_phones_1_phone', '+375 17 277-00-11'),
(296, 55, '_zhes_phones_1_phone', 'field_5b5c44bc29cf6'),
(297, 55, 'zhes_phones_1_header', 'ЖЭС №53'),
(298, 55, '_zhes_phones_1_header', 'field_5b5c44ef5cf18'),
(299, 55, 'zhes_phones_2_phone', '+375 17 235-28-17'),
(300, 55, '_zhes_phones_2_phone', 'field_5b5c44bc29cf6'),
(301, 55, 'zhes_phones_2_header', 'ЖЭС №57'),
(302, 55, '_zhes_phones_2_header', 'field_5b5c44ef5cf18'),
(303, 55, 'zhes_phones_3_phone', '+375 17 222-17-11'),
(304, 55, '_zhes_phones_3_phone', 'field_5b5c44bc29cf6'),
(305, 55, 'zhes_phones_3_header', 'ЖЭС №66'),
(306, 55, '_zhes_phones_3_header', 'field_5b5c44ef5cf18'),
(307, 55, 'zhes_phones', '4'),
(308, 55, '_zhes_phones', 'field_5b5c449429cf5'),
(309, 55, 'address', 'ул. Лынькова, 59'),
(310, 55, '_address', 'field_5b5caa0acd384'),
(311, 7, 'address', 'ул. Лынькова, 59'),
(312, 7, '_address', 'field_5b5caa0acd384'),
(313, 56, '_edit_last', '1'),
(314, 56, '_edit_lock', '1532940157:1'),
(334, 60, '_edit_last', '1'),
(335, 60, '_edit_lock', '1532940420:1'),
(337, 60, '_wp_trash_meta_status', 'publish'),
(338, 60, '_wp_trash_meta_time', '1532940595'),
(339, 60, '_wp_desired_post_slug', 'grafik-prijomov'),
(340, 62, '_edit_last', '1'),
(341, 62, '_edit_lock', '1532940470:1'),
(342, 64, '_menu_item_type', 'post_type'),
(343, 64, '_menu_item_menu_item_parent', '0'),
(344, 64, '_menu_item_object_id', '62'),
(345, 64, '_menu_item_object', 'page'),
(346, 64, '_menu_item_target', ''),
(347, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(348, 64, '_menu_item_xfn', ''),
(349, 64, '_menu_item_url', ''),
(351, 65, '_menu_item_type', 'post_type'),
(352, 65, '_menu_item_menu_item_parent', '0'),
(353, 65, '_menu_item_object_id', '12'),
(354, 65, '_menu_item_object', 'page'),
(355, 65, '_menu_item_target', ''),
(356, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 65, '_menu_item_xfn', ''),
(358, 65, '_menu_item_url', ''),
(360, 66, '_edit_last', '1'),
(361, 66, '_edit_lock', '1533043796:1'),
(362, 68, '_menu_item_type', 'post_type'),
(363, 68, '_menu_item_menu_item_parent', '0'),
(364, 68, '_menu_item_object_id', '66'),
(365, 68, '_menu_item_object', 'page'),
(366, 68, '_menu_item_target', ''),
(367, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(368, 68, '_menu_item_xfn', ''),
(369, 68, '_menu_item_url', ''),
(380, 70, '_edit_last', '1'),
(381, 70, 'field_5b5edc2b8e32e', 'a:13:{s:3:\"key\";s:19:\"field_5b5edc2b8e32e\";s:5:\"label\";s:12:\"Ссылки\";s:4:\"name\";s:5:\"links\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:13:{s:3:\"key\";s:19:\"field_5b5edc3d8e32f\";s:5:\"label\";s:12:\"Ссылка\";s:4:\"name\";s:4:\"link\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:9:\"post_type\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:8:\"taxonomy\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(383, 70, 'position', 'normal'),
(384, 70, 'layout', 'no_box'),
(385, 70, 'hide_on_screen', ''),
(386, 70, '_edit_lock', '1532947715:1'),
(387, 71, 'links_0_link', '47'),
(388, 71, '_links_0_link', 'field_5b5edc3d8e32f'),
(389, 71, 'links_1_link', '44'),
(390, 71, '_links_1_link', 'field_5b5edc3d8e32f'),
(391, 71, 'links_2_link', '50'),
(392, 71, '_links_2_link', 'field_5b5edc3d8e32f'),
(393, 71, 'links', '3'),
(394, 71, '_links', 'field_5b5edc2b8e32e'),
(395, 66, 'links_0_link', '47'),
(396, 66, '_links_0_link', 'field_5b5edc3d8e32f'),
(397, 66, 'links_1_link', '44'),
(398, 66, '_links_1_link', 'field_5b5edc3d8e32f'),
(399, 66, 'links_2_link', '31'),
(400, 66, '_links_2_link', 'field_5b5edc3d8e32f'),
(401, 66, 'links', '4'),
(402, 66, '_links', 'field_5b5edc2b8e32e'),
(403, 70, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"66\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(404, 72, '_menu_item_type', 'post_type'),
(405, 72, '_menu_item_menu_item_parent', '0'),
(406, 72, '_menu_item_object_id', '66'),
(407, 72, '_menu_item_object', 'page'),
(408, 72, '_menu_item_target', ''),
(409, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(410, 72, '_menu_item_xfn', ''),
(411, 72, '_menu_item_url', ''),
(413, 73, 'links_0_link', '47'),
(414, 73, '_links_0_link', 'field_5b5edc3d8e32f'),
(415, 73, 'links_1_link', '44'),
(416, 73, '_links_1_link', 'field_5b5edc3d8e32f'),
(417, 73, 'links_2_link', '31'),
(418, 73, '_links_2_link', 'field_5b5edc3d8e32f'),
(419, 73, 'links_3_link', '34'),
(420, 73, '_links_3_link', 'field_5b5edc3d8e32f'),
(421, 73, 'links', '4'),
(422, 73, '_links', 'field_5b5edc2b8e32e'),
(423, 66, 'links_3_link', '34'),
(424, 66, '_links_3_link', 'field_5b5edc3d8e32f'),
(425, 75, 'links_0_link', '47'),
(426, 75, '_links_0_link', 'field_5b5edc3d8e32f'),
(427, 75, 'links_1_link', '44'),
(428, 75, '_links_1_link', 'field_5b5edc3d8e32f'),
(429, 75, 'links_2_link', '31'),
(430, 75, '_links_2_link', 'field_5b5edc3d8e32f'),
(431, 75, 'links_3_link', '34'),
(432, 75, '_links_3_link', 'field_5b5edc3d8e32f'),
(433, 75, 'links', '4'),
(434, 75, '_links', 'field_5b5edc2b8e32e'),
(435, 76, '_edit_last', '1'),
(436, 76, 'field_5b60609ef4718', 'a:10:{s:3:\"key\";s:19:\"field_5b60609ef4718\";s:5:\"label\";s:8:\"Файл\";s:4:\"name\";s:4:\"file\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(437, 76, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(438, 76, 'position', 'normal'),
(439, 76, 'layout', 'no_box'),
(440, 76, 'hide_on_screen', ''),
(441, 76, '_edit_lock', '1533042733:1'),
(442, 77, 'links_0_link', '47'),
(443, 77, '_links_0_link', 'field_5b5edc3d8e32f'),
(444, 77, 'links_1_link', '44'),
(445, 77, '_links_1_link', 'field_5b5edc3d8e32f'),
(446, 77, 'links_2_link', '31'),
(447, 77, '_links_2_link', 'field_5b5edc3d8e32f'),
(448, 77, 'links_3_link', '34'),
(449, 77, '_links_3_link', 'field_5b5edc3d8e32f'),
(450, 77, 'links', '4'),
(451, 77, '_links', 'field_5b5edc2b8e32e'),
(452, 77, 'file', '51'),
(453, 77, '_file', 'field_5b60609ef4718'),
(454, 66, 'file', '51'),
(455, 66, '_file', 'field_5b60609ef4718'),
(456, 78, 'links_0_link', '47'),
(457, 78, '_links_0_link', 'field_5b5edc3d8e32f'),
(458, 78, 'links_1_link', '44'),
(459, 78, '_links_1_link', 'field_5b5edc3d8e32f'),
(460, 78, 'links_2_link', '31'),
(461, 78, '_links_2_link', 'field_5b5edc3d8e32f'),
(462, 78, 'links_3_link', '34'),
(463, 78, '_links_3_link', 'field_5b5edc3d8e32f'),
(464, 78, 'links', '4'),
(465, 78, '_links', 'field_5b5edc2b8e32e'),
(466, 78, 'file', '51'),
(467, 78, '_file', 'field_5b60609ef4718'),
(468, 79, 'links_0_link', '47'),
(469, 79, '_links_0_link', 'field_5b5edc3d8e32f'),
(470, 79, 'links_1_link', '44'),
(471, 79, '_links_1_link', 'field_5b5edc3d8e32f'),
(472, 79, 'links_2_link', '31'),
(473, 79, '_links_2_link', 'field_5b5edc3d8e32f'),
(474, 79, 'links_3_link', '34'),
(475, 79, '_links_3_link', 'field_5b5edc3d8e32f'),
(476, 79, 'links', '4'),
(477, 79, '_links', 'field_5b5edc2b8e32e'),
(478, 79, 'file', '51'),
(479, 79, '_file', 'field_5b60609ef4718'),
(480, 80, 'links_0_link', '47'),
(481, 80, '_links_0_link', 'field_5b5edc3d8e32f'),
(482, 80, 'links_1_link', '44'),
(483, 80, '_links_1_link', 'field_5b5edc3d8e32f'),
(484, 80, 'links_2_link', '31'),
(485, 80, '_links_2_link', 'field_5b5edc3d8e32f'),
(486, 80, 'links_3_link', '34'),
(487, 80, '_links_3_link', 'field_5b5edc3d8e32f'),
(488, 80, 'links', '4'),
(489, 80, '_links', 'field_5b5edc2b8e32e'),
(490, 80, 'file', '51'),
(491, 80, '_file', 'field_5b60609ef4718'),
(494, 82, 'file', ''),
(495, 82, '_file', 'field_5b60609ef4718'),
(496, 16, 'file', ''),
(497, 16, '_file', 'field_5b60609ef4718'),
(498, 83, 'file', ''),
(499, 83, '_file', 'field_5b60609ef4718'),
(500, 84, 'file', ''),
(501, 84, '_file', 'field_5b60609ef4718'),
(502, 85, 'file', ''),
(503, 85, '_file', 'field_5b60609ef4718'),
(504, 29, 'field_5b657bf85acd2', 'a:14:{s:3:\"key\";s:19:\"field_5b657bf85acd2\";s:5:\"label\";s:68:\"Почтовый адрес для обращений граждан\";s:4:\"name\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(506, 86, 'header_phone', '+375 17 234-41-94'),
(507, 86, '_header_phone', 'field_5b5c0da05cbfa'),
(508, 86, 'services_0_service', '41'),
(509, 86, '_services_0_service', 'field_5b5c371d8462b'),
(510, 86, 'services_1_service', '44'),
(511, 86, '_services_1_service', 'field_5b5c371d8462b'),
(512, 86, 'services_2_service', '47'),
(513, 86, '_services_2_service', 'field_5b5c371d8462b'),
(514, 86, 'services_3_service', '50'),
(515, 86, '_services_3_service', 'field_5b5c371d8462b'),
(516, 86, 'services', '4'),
(517, 86, '_services', 'field_5b5c370a8462a'),
(518, 86, 'zhes_phones_0_phone', '+375 17 289-98-98'),
(519, 86, '_zhes_phones_0_phone', 'field_5b5c44bc29cf6'),
(520, 86, 'zhes_phones_0_header', 'ЖЭС №43'),
(521, 86, '_zhes_phones_0_header', 'field_5b5c44ef5cf18'),
(522, 86, 'zhes_phones_1_phone', '+375 17 277-00-11'),
(523, 86, '_zhes_phones_1_phone', 'field_5b5c44bc29cf6'),
(524, 86, 'zhes_phones_1_header', 'ЖЭС №53'),
(525, 86, '_zhes_phones_1_header', 'field_5b5c44ef5cf18'),
(526, 86, 'zhes_phones_2_phone', '+375 17 235-28-17'),
(527, 86, '_zhes_phones_2_phone', 'field_5b5c44bc29cf6'),
(528, 86, 'zhes_phones_2_header', 'ЖЭС №57'),
(529, 86, '_zhes_phones_2_header', 'field_5b5c44ef5cf18'),
(530, 86, 'zhes_phones_3_phone', '+375 17 222-17-11'),
(531, 86, '_zhes_phones_3_phone', 'field_5b5c44bc29cf6'),
(532, 86, 'zhes_phones_3_header', 'ЖЭС №66'),
(533, 86, '_zhes_phones_3_header', 'field_5b5c44ef5cf18'),
(534, 86, 'zhes_phones', '4'),
(535, 86, '_zhes_phones', 'field_5b5c449429cf5'),
(536, 86, 'address', 'ул. Лынькова, 59'),
(537, 86, '_address', 'field_5b5caa0acd384'),
(538, 86, 'email', 'giperilia@mail.ru'),
(539, 86, '_email', 'field_5b657bf85acd2'),
(540, 86, 'file', ''),
(541, 86, '_file', 'field_5b60609ef4718'),
(542, 7, 'email', 'giperilia@mail.ru'),
(543, 7, '_email', 'field_5b657bf85acd2'),
(544, 7, 'file', ''),
(545, 7, '_file', 'field_5b60609ef4718'),
(546, 29, 'field_5b6580ca52cd5', 'a:14:{s:3:\"key\";s:19:\"field_5b6580ca52cd5\";s:5:\"label\";s:16:\"reCaptcha secret\";s:4:\"name\";s:16:\"recaptcha_secret\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(547, 29, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(548, 87, 'header_phone', '+375 17 234-41-94'),
(549, 87, '_header_phone', 'field_5b5c0da05cbfa'),
(550, 87, 'services_0_service', '41'),
(551, 87, '_services_0_service', 'field_5b5c371d8462b'),
(552, 87, 'services_1_service', '44'),
(553, 87, '_services_1_service', 'field_5b5c371d8462b'),
(554, 87, 'services_2_service', '47'),
(555, 87, '_services_2_service', 'field_5b5c371d8462b'),
(556, 87, 'services_3_service', '50'),
(557, 87, '_services_3_service', 'field_5b5c371d8462b'),
(558, 87, 'services', '4'),
(559, 87, '_services', 'field_5b5c370a8462a'),
(560, 87, 'zhes_phones_0_phone', '+375 17 289-98-98'),
(561, 87, '_zhes_phones_0_phone', 'field_5b5c44bc29cf6'),
(562, 87, 'zhes_phones_0_header', 'ЖЭС №43'),
(563, 87, '_zhes_phones_0_header', 'field_5b5c44ef5cf18'),
(564, 87, 'zhes_phones_1_phone', '+375 17 277-00-11'),
(565, 87, '_zhes_phones_1_phone', 'field_5b5c44bc29cf6'),
(566, 87, 'zhes_phones_1_header', 'ЖЭС №53'),
(567, 87, '_zhes_phones_1_header', 'field_5b5c44ef5cf18'),
(568, 87, 'zhes_phones_2_phone', '+375 17 235-28-17'),
(569, 87, '_zhes_phones_2_phone', 'field_5b5c44bc29cf6'),
(570, 87, 'zhes_phones_2_header', 'ЖЭС №57'),
(571, 87, '_zhes_phones_2_header', 'field_5b5c44ef5cf18'),
(572, 87, 'zhes_phones_3_phone', '+375 17 222-17-11'),
(573, 87, '_zhes_phones_3_phone', 'field_5b5c44bc29cf6'),
(574, 87, 'zhes_phones_3_header', 'ЖЭС №66'),
(575, 87, '_zhes_phones_3_header', 'field_5b5c44ef5cf18'),
(576, 87, 'zhes_phones', '4'),
(577, 87, '_zhes_phones', 'field_5b5c449429cf5'),
(578, 87, 'address', 'ул. Лынькова, 59'),
(579, 87, '_address', 'field_5b5caa0acd384'),
(580, 87, 'email', 'giperilia@mail.ru'),
(581, 87, '_email', 'field_5b657bf85acd2'),
(582, 87, 'recaptcha_secret', '6Lf9PWgUAAAAAM3Ae7T0tOEvBvKM4n6vTsBshG_7'),
(583, 87, '_recaptcha_secret', 'field_5b6580ca52cd5'),
(584, 87, 'file', ''),
(585, 87, '_file', 'field_5b60609ef4718'),
(586, 7, 'recaptcha_secret', '6Lf9PWgUAAAAAM3Ae7T0tOEvBvKM4n6vTsBshG_7'),
(587, 7, '_recaptcha_secret', 'field_5b6580ca52cd5'),
(588, 88, '_edit_last', '1'),
(589, 88, '_edit_lock', '1533480057:1'),
(590, 89, 'file', ''),
(591, 89, '_file', 'field_5b60609ef4718'),
(592, 88, 'file', ''),
(593, 88, '_file', 'field_5b60609ef4718'),
(594, 90, 'file', ''),
(595, 90, '_file', 'field_5b60609ef4718'),
(596, 91, '_edit_last', '1'),
(597, 91, 'field_5b6702c82a413', 'a:13:{s:3:\"key\";s:19:\"field_5b6702c82a413\";s:5:\"label\";s:12:\"Адреса\";s:4:\"name\";s:9:\"addresses\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:15:{s:3:\"key\";s:19:\"field_5b6702db2a414\";s:5:\"label\";s:10:\"Адрес\";s:4:\"name\";s:7:\"address\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(599, 91, 'position', 'normal'),
(600, 91, 'layout', 'no_box'),
(601, 91, 'hide_on_screen', ''),
(602, 91, '_edit_lock', '1533477517:1'),
(603, 91, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"88\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(604, 92, 'addresses_0_address', 'Лынькова, 58'),
(605, 92, '_addresses_0_address', 'field_5b6702db2a414'),
(606, 92, 'addresses_1_address', 'Фадеева,17'),
(607, 92, '_addresses_1_address', 'field_5b6702db2a414'),
(608, 92, 'addresses', '2'),
(609, 92, '_addresses', 'field_5b6702c82a413'),
(610, 92, 'file', ''),
(611, 92, '_file', 'field_5b60609ef4718'),
(612, 88, 'addresses_0_address', 'Лынькова, 58'),
(613, 88, '_addresses_0_address', 'field_5b6702db2a414'),
(614, 88, 'addresses_1_address', 'Фадеева,17'),
(615, 88, '_addresses_1_address', 'field_5b6702db2a414'),
(616, 88, 'addresses', '2'),
(617, 88, '_addresses', 'field_5b6702c82a413'),
(618, 94, '_edit_last', '1'),
(619, 94, 'field_5b670ddd42d60', 'a:11:{s:3:\"key\";s:19:\"field_5b670ddd42d60\";s:5:\"label\";s:48:\"Изображение для категории\";s:4:\"name\";s:14:\"category_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(620, 94, 'rule', 'a:5:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(621, 94, 'position', 'normal'),
(622, 94, 'layout', 'no_box'),
(623, 94, 'hide_on_screen', ''),
(624, 94, '_edit_lock', '1533490554:1'),
(625, 95, '_edit_last', '1'),
(626, 95, '_edit_lock', '1533485273:1'),
(627, 96, '_wp_attached_file', '2018/08/bigstock-Test-word-on-white-keyboard-27134336.jpg'),
(628, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:332;s:4:\"file\";s:57:\"2018/08/bigstock-Test-word-on-white-keyboard-27134336.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"bigstock-Test-word-on-white-keyboard-27134336-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"bigstock-Test-word-on-white-keyboard-27134336-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(630, 97, 'category_image', '96'),
(631, 97, '_category_image', 'field_5b670ddd42d60'),
(632, 95, 'category_image', '96'),
(633, 95, '_category_image', 'field_5b670ddd42d60'),
(634, 99, '_wp_attached_file', '2018/08/bigstock-Test-word-on-white-keyboard-27134336-1.jpg'),
(635, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:332;s:4:\"file\";s:59:\"2018/08/bigstock-Test-word-on-white-keyboard-27134336-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"bigstock-Test-word-on-white-keyboard-27134336-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"bigstock-Test-word-on-white-keyboard-27134336-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(636, 98, '_edit_last', '1'),
(638, 100, 'category_image', '99'),
(639, 100, '_category_image', 'field_5b670ddd42d60'),
(640, 98, 'category_image', '99'),
(641, 98, '_category_image', 'field_5b670ddd42d60'),
(642, 98, '_edit_lock', '1533485494:1'),
(643, 101, '_edit_last', '1'),
(645, 102, 'category_image', '96'),
(646, 102, '_category_image', 'field_5b670ddd42d60'),
(647, 101, 'category_image', '96'),
(648, 101, '_category_image', 'field_5b670ddd42d60'),
(649, 101, '_edit_lock', '1533490585:1'),
(650, 103, '_menu_item_type', 'post_type'),
(651, 103, '_menu_item_menu_item_parent', '0'),
(652, 103, '_menu_item_object_id', '88'),
(653, 103, '_menu_item_object', 'page'),
(654, 103, '_menu_item_target', ''),
(655, 103, '_menu_item_classes', 'a:1:{i:0;s:7:\"problem\";}'),
(656, 103, '_menu_item_xfn', ''),
(657, 103, '_menu_item_url', ''),
(659, 104, '_menu_item_type', 'custom'),
(660, 104, '_menu_item_menu_item_parent', '0'),
(661, 104, '_menu_item_object_id', '104'),
(662, 104, '_menu_item_object', 'custom'),
(663, 104, '_menu_item_target', ''),
(664, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(665, 104, '_menu_item_xfn', ''),
(666, 104, '_menu_item_url', '#');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-25 21:12:08', '2018-07-25 18:12:08', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', 'privet-mir__trashed', '', '', '2018-07-28 11:12:09', '2018-07-28 08:12:09', '', 0, 'http://zheu.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-25 21:12:08', '2018-07-25 18:12:08', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://zheu.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-25 21:13:05', '2018-07-25 18:13:05', '', 0, 'http://zheu.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-25 21:12:08', '2018-07-25 18:12:08', '<h2>Кто мы</h2><p>Наш адрес сайта: http://zheu.loc.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-07-25 21:12:59', '2018-07-25 18:12:59', '', 0, 'http://zheu.loc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-25 21:12:59', '2018-07-25 18:12:59', '<h2>Кто мы</h2><p>Наш адрес сайта: http://zheu.loc.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-25 21:12:59', '2018-07-25 18:12:59', '', 3, 'http://zheu.loc/2018/07/25/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-07-25 21:13:05', '2018-07-25 18:13:05', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://zheu.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-25 21:13:05', '2018-07-25 18:13:05', '', 2, 'http://zheu.loc/2018/07/25/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-07-25 21:13:31', '2018-07-25 18:13:31', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', 'glavnaja-stranica', '', '', '2018-08-04 13:48:15', '2018-08-04 10:48:15', '', 0, 'http://zheu.loc/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-07-25 21:13:31', '2018-07-25 18:13:31', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-25 21:13:31', '2018-07-25 18:13:31', '', 7, 'http://zheu.loc/2018/07/25/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-07-26 01:37:43', '2018-07-25 22:37:43', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2018-08-05 20:48:15', '2018-08-05 17:48:15', '', 0, 'http://zheu.loc/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2018-07-26 01:37:43', '2018-07-25 22:37:43', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-08-05 20:48:15', '2018-08-05 17:48:15', '', 0, 'http://zheu.loc/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2018-07-26 01:38:20', '2018-07-25 22:38:20', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2018-07-26 01:38:20', '2018-07-25 22:38:20', '', 0, 'http://zheu.loc/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-07-26 01:38:20', '2018-07-25 22:38:20', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-07-26 01:38:20', '2018-07-25 22:38:20', '', 12, 'http://zheu.loc/head/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-07-26 01:38:50', '2018-07-25 22:38:50', '', 'Электронные обращения', '', 'publish', 'closed', 'closed', '', 'jelektronnye-obrashhenija', '', '', '2018-07-26 01:38:50', '2018-07-25 22:38:50', '', 0, 'http://zheu.loc/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-07-26 01:38:50', '2018-07-25 22:38:50', '', 'Электронные обращения', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 01:38:50', '2018-07-25 22:38:50', '', 14, 'http://zheu.loc/head/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-07-26 01:39:23', '2018-07-25 22:39:23', '<p>Обращения (предложения, заявления, жалобы) граждан независимо от того, в какой государственный орган или иную организацию они поступили, первоначально подлежат рассмотрению по существу в соответствии с компетенцией: - в местных исполнительных и распорядительных органах, подчиненных им организациях, территориальных подразделениях (органах) и организациях, подчиненных или входящих в состав (систему) республиканских органов государственного управления и государственных организаций, подчиненных Правительству Республики Беларусь, другим государственным органам, иным организациям, осуществляющих свою деятельность и расположенных в пределах той административно-территориальной единицы, на территории которой возникли вопросы, изложенные в обращениях; - в других государственных органах, иных организациях, если вопросы, изложенные в обращениях, относятся к исключительной компетенции этих органов или организаций.\r\n\r\n&nbsp;\r\n</br>\r\nОбращаем ваше внимание, что подача обращений осуществляется на белорусском или русском языках.\r\n\r\n&nbsp;\r\n</br>\r\n<strong>Оставляются без рассмотрения по существу обращения, которые (по которым):</strong>\r\n</br>\r\n- изложены не на белорусском или русском языке; - не содержат фамилии, собственного имени, отчества, адреса места жительства (места пребывания) гражданина; - не содержат полного наименования юридического лица и адреса его места нахождения, фамилии, собственного имени, отчества руководителя или лица, уполномоченного в установленном порядке подписывать обращения (для юридических лиц); - содержат текст, не поддающийся прочтению; - содержат нецензурные либо оскорбительные слова или выражения; - подлежат рассмотрению в соответствии с законодательством о конституционном судопроизводстве, гражданским, гражданским процессуальным, хозяйственным процессуальным, уголовно-процессуальным законодательством, законодательством, определяющим порядок административного процесса, законодательством об административных процедурах либо в соответствии с законодательными актами установлен иной порядок подачи и рассмотрения таких обращений; - содержат вопросы, не относящиеся к компетенции адресата; - пропущен без уважительной причины срок подачи жалобы; - подано повторное обращение и в нем не содержатся новые обстоятельства; - с заявителем прекращена переписка.\r\n\r\nОбращаем внимание, что действующим законодательством электронная форма подачи заявления либо жалобы предусмотрена только для обращений, направляемых в адрес электронной почты организации в порядке\r\n</p>', 'Электронные обращения граждан', '', 'publish', 'closed', 'closed', '', 'jelektronnye-obrashhenija-grazhdan', '', '', '2018-07-31 16:52:56', '2018-07-31 13:52:56', '', 14, 'http://zheu.loc/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-07-26 01:39:23', '2018-07-25 22:39:23', '', 'Электронные обращения граждан', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-26 01:39:23', '2018-07-25 22:39:23', '', 16, 'http://zheu.loc/head/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-07-26 01:40:06', '2018-07-25 22:40:06', '', 'Электронные обращения юридических лиц', '', 'publish', 'closed', 'closed', '', 'jelektronnye-obrashhenija-juridicheskih-lic', '', '', '2018-07-26 01:40:06', '2018-07-25 22:40:06', '', 14, 'http://zheu.loc/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-07-26 01:40:06', '2018-07-25 22:40:06', '', 'Электронные обращения юридических лиц', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-26 01:40:06', '2018-07-25 22:40:06', '', 18, 'http://zheu.loc/head/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-07-26 01:56:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-26 01:56:26', '0000-00-00 00:00:00', '', 0, 'http://zheu.loc/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-07-26 01:56:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-26 01:56:26', '0000-00-00 00:00:00', '', 14, 'http://zheu.loc/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-07-26 01:56:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-26 01:56:27', '0000-00-00 00:00:00', '', 14, 'http://zheu.loc/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-07-26 01:56:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-26 01:56:41', '0000-00-00 00:00:00', '', 0, 'http://zheu.loc/?p=23', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-07-28 07:21:06', '2018-07-28 04:21:06', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-08-05 20:48:16', '2018-08-05 17:48:16', '', 14, 'http://zheu.loc/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2018-07-28 07:21:07', '2018-07-28 04:21:07', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-08-05 20:48:16', '2018-08-05 17:48:16', '', 14, 'http://zheu.loc/?p=26', 7, 'nav_menu_item', '', 0),
(27, 1, '2018-07-28 07:21:07', '2018-07-28 04:21:07', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-08-05 20:48:16', '2018-08-05 17:48:16', '', 0, 'http://zheu.loc/?p=27', 8, 'nav_menu_item', '', 0),
(29, 1, '2018-07-28 09:31:36', '2018-07-28 06:31:36', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', 'acf_glavnaja-stranica', '', '', '2018-08-04 13:33:02', '2018-08-04 10:33:02', '', 0, 'http://zheu.loc/?post_type=acf&#038;p=29', 0, 'acf', '', 0),
(30, 1, '2018-07-28 09:34:55', '2018-07-28 06:34:55', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-28 09:34:55', '2018-07-28 06:34:55', '', 7, 'http://zheu.loc/head/7-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-07-28 11:09:39', '2018-07-28 08:09:39', '', 'В праздник не отдыхаем, а работаем. Сажаем новые деревья на улице Матусевича.', '', 'publish', 'open', 'open', '', 'v-prazdnik-ne-otdyhaem-a-rabotaem-sazhaem-novye-derevja-na-ulice-matusevicha', '', '', '2018-07-28 11:09:39', '2018-07-28 08:09:39', '', 0, 'http://zheu.loc/?p=31', 0, 'post', '', 0),
(32, 1, '2018-07-28 11:09:39', '2018-07-28 08:09:39', '', 'В праздник не отдыхаем, а работаем. Сажаем новые деревья на улице Матусевича.', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-07-28 11:09:39', '2018-07-28 08:09:39', '', 31, 'http://zheu.loc/head/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-07-28 11:12:09', '2018-07-28 08:12:09', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-28 11:12:09', '2018-07-28 08:12:09', '', 1, 'http://zheu.loc/head/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-07-28 11:13:26', '2018-07-28 08:13:26', '', 'Будем проводить плановые технические работы в доме №187', '', 'publish', 'open', 'open', '', 'budem-provodit-planovye-tehnicheskie-raboty-v-dome-187', '', '', '2018-07-28 11:13:26', '2018-07-28 08:13:26', '', 0, 'http://zheu.loc/?p=34', 0, 'post', '', 0),
(35, 1, '2018-07-28 11:13:26', '2018-07-28 08:13:26', '', 'Будем проводить плановые технические работы в доме №187', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-07-28 11:13:26', '2018-07-28 08:13:26', '', 34, 'http://zheu.loc/head/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-07-28 11:14:21', '2018-07-28 08:14:21', '', 'Перекладка тротуарных плиток в парке', '', 'publish', 'open', 'open', '', 'perekladka-trotuarnyh-plitok-v-parke', '', '', '2018-07-28 11:14:21', '2018-07-28 08:14:21', '', 0, 'http://zheu.loc/?p=36', 0, 'post', '', 0),
(37, 1, '2018-07-28 11:14:21', '2018-07-28 08:14:21', '', 'Перекладка тротуарных плиток в парке', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-07-28 11:14:21', '2018-07-28 08:14:21', '', 36, 'http://zheu.loc/head/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-28 12:16:23', '0000-00-00 00:00:00', '', 'Услуги', '', 'draft', 'open', 'open', '', '', '', '', '2018-07-28 12:16:23', '2018-07-28 09:16:23', '', 0, 'http://zheu.loc/?p=38', 0, 'post', '', 0),
(39, 1, '2018-07-28 12:19:25', '2018-07-28 09:19:25', '', 'Услуга', '', 'publish', 'closed', 'closed', '', 'acf_usluga', '', '', '2018-07-28 12:19:25', '2018-07-28 09:19:25', '', 0, 'http://zheu.loc/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(41, 1, '2018-07-28 12:24:14', '2018-07-28 09:24:14', '', 'Услуги электрика', '', 'publish', 'open', 'open', '', 'uslugi-jelektrika', '', '', '2018-07-28 12:24:14', '2018-07-28 09:24:14', '', 0, 'http://zheu.loc/?p=41', 0, 'post', '', 0),
(42, 1, '2018-07-28 12:24:05', '2018-07-28 09:24:05', '', 'icon_elektrik', '', 'inherit', 'open', 'closed', '', 'icon_elektrik', '', '', '2018-07-28 12:24:05', '2018-07-28 09:24:05', '', 41, 'http://zheu.loc/wp-content/uploads/2018/07/icon_elektrik.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-07-28 12:24:14', '2018-07-28 09:24:14', '', 'Услуги электрика', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-07-28 12:24:14', '2018-07-28 09:24:14', '', 41, 'http://zheu.loc/head/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-28 12:25:14', '2018-07-28 09:25:14', '', 'Плотницкие работы', '', 'publish', 'open', 'open', '', 'plotnickie-raboty', '', '', '2018-07-28 12:25:14', '2018-07-28 09:25:14', '', 0, 'http://zheu.loc/?p=44', 0, 'post', '', 0),
(45, 1, '2018-07-28 12:24:59', '2018-07-28 09:24:59', '', 'icon_plotnik', '', 'inherit', 'open', 'closed', '', 'icon_plotnik', '', '', '2018-07-28 12:24:59', '2018-07-28 09:24:59', '', 44, 'http://zheu.loc/wp-content/uploads/2018/07/icon_plotnik.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-07-28 12:25:14', '2018-07-28 09:25:14', '', 'Плотницкие работы', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-07-28 12:25:14', '2018-07-28 09:25:14', '', 44, 'http://zheu.loc/head/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-07-28 12:26:09', '2018-07-28 09:26:09', '', 'Услуги сантехника', '', 'publish', 'open', 'open', '', 'uslugi-santehnika', '', '', '2018-07-28 12:26:09', '2018-07-28 09:26:09', '', 0, 'http://zheu.loc/?p=47', 0, 'post', '', 0),
(48, 1, '2018-07-28 12:26:00', '2018-07-28 09:26:00', '', 'icon_santehnik', '', 'inherit', 'open', 'closed', '', 'icon_santehnik', '', '', '2018-07-28 12:26:00', '2018-07-28 09:26:00', '', 47, 'http://zheu.loc/wp-content/uploads/2018/07/icon_santehnik.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2018-07-28 12:26:09', '2018-07-28 09:26:09', '', 'Услуги сантехника', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-07-28 12:26:09', '2018-07-28 09:26:09', '', 47, 'http://zheu.loc/head/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-07-28 12:27:00', '2018-07-28 09:27:00', '', 'Вывоз мусора', '', 'publish', 'open', 'open', '', 'vyvoz-musora', '', '', '2018-07-28 12:27:00', '2018-07-28 09:27:00', '', 0, 'http://zheu.loc/?p=50', 0, 'post', '', 0),
(51, 1, '2018-07-28 12:26:53', '2018-07-28 09:26:53', '', 'icon_vyvoz_musora', '', 'inherit', 'open', 'closed', '', 'icon_vyvoz_musora', '', '', '2018-07-28 12:26:53', '2018-07-28 09:26:53', '', 50, 'http://zheu.loc/wp-content/uploads/2018/07/icon_vyvoz_musora.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-07-28 12:27:00', '2018-07-28 09:27:00', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-07-28 12:27:00', '2018-07-28 09:27:00', '', 50, 'http://zheu.loc/head/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-28 12:29:36', '2018-07-28 09:29:36', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-28 12:29:36', '2018-07-28 09:29:36', '', 7, 'http://zheu.loc/head/7-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-07-28 13:29:55', '2018-07-28 10:29:55', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-28 13:29:55', '2018-07-28 10:29:55', '', 7, 'http://zheu.loc/head/7-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-07-28 20:39:53', '2018-07-28 17:39:53', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-28 20:39:53', '2018-07-28 17:39:53', '', 7, 'http://zheu.loc/head/7-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-07-30 11:44:51', '2018-07-30 08:44:51', '', 'Бытовые услуги и цены', '', 'publish', 'open', 'open', '', 'bytovye-uslugi-i-ceny', '', '', '2018-07-30 11:44:51', '2018-07-30 08:44:51', '', 0, 'http://zheu.loc/?p=56', 0, 'post', '', 0),
(57, 1, '2018-07-30 11:44:51', '2018-07-30 08:44:51', '', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-07-30 11:44:51', '2018-07-30 08:44:51', '', 56, 'http://zheu.loc/head/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-30 11:49:18', '2018-07-30 08:49:18', '', 'График приёмов', '', 'trash', 'open', 'open', '', 'grafik-prijomov__trashed', '', '', '2018-07-30 11:49:55', '2018-07-30 08:49:55', '', 0, 'http://zheu.loc/?p=60', 0, 'post', '', 0),
(61, 1, '2018-07-30 11:49:18', '2018-07-30 08:49:18', '', 'График приёмов', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-07-30 11:49:18', '2018-07-30 08:49:18', '', 60, 'http://zheu.loc/head/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-07-30 11:50:09', '2018-07-30 08:50:09', '', 'График приёмов', '', 'publish', 'closed', 'closed', '', 'grafik-prijomov', '', '', '2018-07-30 11:50:09', '2018-07-30 08:50:09', '', 0, 'http://zheu.loc/?page_id=62', 0, 'page', '', 0),
(63, 1, '2018-07-30 11:50:09', '2018-07-30 08:50:09', '', 'График приёмов', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-07-30 11:50:09', '2018-07-30 08:50:09', '', 62, 'http://zheu.loc/head/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-07-30 11:50:39', '2018-07-30 08:50:39', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2018-07-30 12:10:56', '2018-07-30 09:10:56', '', 0, 'http://zheu.loc/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2018-07-30 11:50:39', '2018-07-30 08:50:39', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-07-30 12:10:56', '2018-07-30 09:10:56', '', 0, 'http://zheu.loc/?p=65', 3, 'nav_menu_item', '', 0),
(66, 1, '2018-07-30 12:10:06', '2018-07-30 09:10:06', 'Вызвать мастера можно по телефону:\r\n\r\nЖЭС №43\r\n<a href=\"tel:+375 17 259-95-89\"><h1>+375 17 259-95-89</h1></a>\r\nЖЭС №53\r\n<a href=\"tel:+375 17 217-00-90\"><h1>+375 17 217-00-90</h1></a></h1>\r\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\r\n\r\n{DOWNLOAD_FILE}\r\n\r\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'publish', 'closed', 'closed', '', 'bytovye-uslugi-i-ceny', '', '', '2018-07-31 16:31:50', '2018-07-31 13:31:50', '', 0, 'http://zheu.loc/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-07-30 12:10:06', '2018-07-30 09:10:06', '', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-30 12:10:06', '2018-07-30 09:10:06', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-07-30 12:10:56', '2018-07-30 09:10:56', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-07-30 12:10:56', '2018-07-30 09:10:56', '', 0, 'http://zheu.loc/?p=68', 1, 'nav_menu_item', '', 0),
(70, 1, '2018-07-30 12:38:03', '2018-07-30 09:38:03', '', 'Меню слева', '', 'publish', 'closed', 'closed', '', 'acf_menju-sleva', '', '', '2018-07-30 12:56:00', '2018-07-30 09:56:00', '', 0, 'http://zheu.loc/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2018-07-30 12:40:40', '2018-07-30 09:40:40', '', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-30 12:40:40', '2018-07-30 09:40:40', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-07-31 15:58:12', '2018-07-31 12:58:12', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-08-05 20:48:15', '2018-08-05 17:48:15', '', 0, 'http://zheu.loc/?p=72', 1, 'nav_menu_item', '', 0),
(73, 1, '2018-07-31 15:58:57', '2018-07-31 12:58:57', '', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-31 15:58:57', '2018-07-31 12:58:57', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-07-31 16:31:26', '2018-07-31 13:31:26', 'Вызвать мастера можно по телефону:\n\nЖЭС №43\n<h1><a href=\"tel:+375 17 259-95-89\">+375 17 259-95-89</a></h1>\nЖЭС №53\n<a href=\"tel:+375 17 217-00-90\"><h1>+375 17 217-00-90</h1></a></h1>\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\n\n{DOWNLOAD_FILE}\n\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2018-07-31 16:31:26', '2018-07-31 13:31:26', '', 66, 'http://zheu.loc/head/66-autosave-v1/', 0, 'revision', '', 0),
(75, 1, '2018-07-31 16:11:00', '2018-07-31 13:11:00', '<h1>Бытовые услуги и цены</h1>\r\nВызвать мастера можно по телефону:\r\n\r\nЖЭС №43\r\n<h1><a href=\"tel:+375 17 259-95-89\">+375 17 259-95-89</a></h1>\r\nЖЭС №53\r\n<h1><a href=\"tel:+375 17 217-00-90\">+375 17 217-00-90</a></h1>\r\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\r\n\r\n{DOWNLOAD_FILE}\r\n\r\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-31 16:11:00', '2018-07-31 13:11:00', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-31 16:14:34', '2018-07-31 13:14:34', '', 'Страница', '', 'publish', 'closed', 'closed', '', 'acf_stranica', '', '', '2018-07-31 16:14:34', '2018-07-31 13:14:34', '', 0, 'http://zheu.loc/?post_type=acf&#038;p=76', 0, 'acf', '', 0),
(77, 1, '2018-07-31 16:14:57', '2018-07-31 13:14:57', '<h1>Бытовые услуги и цены</h1>\r\nВызвать мастера можно по телефону:\r\n\r\nЖЭС №43\r\n<h1><a href=\"tel:+375 17 259-95-89\">+375 17 259-95-89</a></h1>\r\nЖЭС №53\r\n<h1><a href=\"tel:+375 17 217-00-90\">+375 17 217-00-90</a></h1>\r\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\r\n\r\n{DOWNLOAD_FILE}\r\n\r\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-31 16:14:57', '2018-07-31 13:14:57', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-31 16:30:34', '2018-07-31 13:30:34', 'Вызвать мастера можно по телефону:\r\n\r\nЖЭС №43\r\n<h1><a href=\"tel:+375 17 259-95-89\">+375 17 259-95-89</a></h1>\r\nЖЭС №53\r\n<h1><a href=\"tel:+375 17 217-00-90\">+375 17 217-00-90</a></h1>\r\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\r\n\r\n{DOWNLOAD_FILE}\r\n\r\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-31 16:30:34', '2018-07-31 13:30:34', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-07-31 16:31:28', '2018-07-31 13:31:28', 'Вызвать мастера можно по телефону:\r\n\r\nЖЭС №43\r\n<h1><a href=\"tel:+375 17 259-95-89\">+375 17 259-95-89</a></h1>\r\nЖЭС №53\r\n<a href=\"tel:+375 17 217-00-90\"><h1>+375 17 217-00-90</h1></a></h1>\r\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\r\n\r\n{DOWNLOAD_FILE}\r\n\r\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-31 16:31:28', '2018-07-31 13:31:28', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-31 16:31:50', '2018-07-31 13:31:50', 'Вызвать мастера можно по телефону:\r\n\r\nЖЭС №43\r\n<a href=\"tel:+375 17 259-95-89\"><h1>+375 17 259-95-89</h1></a>\r\nЖЭС №53\r\n<a href=\"tel:+375 17 217-00-90\"><h1>+375 17 217-00-90</h1></a></h1>\r\nПрейскурант цен на платные услуги по заказам населения на 01.05.2018 года\r\n\r\n{DOWNLOAD_FILE}\r\n\r\n<a href=\"#\">Перечень  видов работ по оказанию платных услуг по заказам населения и тарифы на них КУП ЖЭУ №7 Фрунзенского района г.Минска</a>', 'Бытовые услуги и цены', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-31 16:31:50', '2018-07-31 13:31:50', '', 66, 'http://zheu.loc/head/66-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-31 16:51:55', '2018-07-31 13:51:55', 'Обращения (предложения, заявления, жалобы) граждан независимо от того, в какой государственный орган или иную организацию они поступили, первоначально подлежат рассмотрению по существу в соответствии с компетенцией: - в местных исполнительных и распорядительных органах, подчиненных им организациях, территориальных подразделениях (органах) и организациях, подчиненных или входящих в состав (систему) республиканских органов государственного управления и государственных организаций, подчиненных Правительству Республики Беларусь, другим государственным органам, иным организациям, осуществляющих свою деятельность и расположенных в пределах той административно-территориальной единицы, на территории которой возникли вопросы, изложенные в обращениях; - в других государственных органах, иных организациях, если вопросы, изложенные в обращениях, относятся к исключительной компетенции этих органов или организаций.\r\n\r\nОбращаем ваше внимание, что подача обращений осуществляется на белорусском или русском языках.\r\n\r\n<strong>Оставляются без рассмотрения по существу обращения, которые (по которым):</strong>\r\n\r\n- изложены не на белорусском или русском языке; - не содержат фамилии, собственного имени, отчества, адреса места жительства (места пребывания) гражданина; - не содержат полного наименования юридического лица и адреса его места нахождения, фамилии, собственного имени, отчества руководителя или лица, уполномоченного в установленном порядке подписывать обращения (для юридических лиц); - содержат текст, не поддающийся прочтению; - содержат нецензурные либо оскорбительные слова или выражения; - подлежат рассмотрению в соответствии с законодательством о конституционном судопроизводстве, гражданским, гражданским процессуальным, хозяйственным процессуальным, уголовно-процессуальным законодательством, законодательством, определяющим порядок административного процесса, законодательством об административных процедурах либо в соответствии с законодательными актами установлен иной порядок подачи и рассмотрения таких обращений; - содержат вопросы, не относящиеся к компетенции адресата; - пропущен без уважительной причины срок подачи жалобы; - подано повторное обращение и в нем не содержатся новые обстоятельства; - с заявителем прекращена переписка.\r\n\r\nОбращаем внимание, что действующим законодательством электронная форма подачи заявления либо жалобы предусмотрена только для обращений, направляемых в адрес электронной почты организации в порядке', 'Электронные обращения граждан', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-31 16:51:55', '2018-07-31 13:51:55', '', 16, 'http://zheu.loc/head/16-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-07-31 16:52:07', '2018-07-31 13:52:07', 'Обращения (предложения, заявления, жалобы) граждан независимо от того, в какой государственный орган или иную организацию они поступили, первоначально подлежат рассмотрению по существу в соответствии с компетенцией: - в местных исполнительных и распорядительных органах, подчиненных им организациях, территориальных подразделениях (органах) и организациях, подчиненных или входящих в состав (систему) республиканских органов государственного управления и государственных организаций, подчиненных Правительству Республики Беларусь, другим государственным органам, иным организациям, осуществляющих свою деятельность и расположенных в пределах той административно-территориальной единицы, на территории которой возникли вопросы, изложенные в обращениях; - в других государственных органах, иных организациях, если вопросы, изложенные в обращениях, относятся к исключительной компетенции этих органов или организаций.\r\n\r\n&nbsp;\r\n\r\nОбращаем ваше внимание, что подача обращений осуществляется на белорусском или русском языках.\r\n\r\n&nbsp;\r\n\r\n<strong>Оставляются без рассмотрения по существу обращения, которые (по которым):</strong>\r\n\r\n- изложены не на белорусском или русском языке; - не содержат фамилии, собственного имени, отчества, адреса места жительства (места пребывания) гражданина; - не содержат полного наименования юридического лица и адреса его места нахождения, фамилии, собственного имени, отчества руководителя или лица, уполномоченного в установленном порядке подписывать обращения (для юридических лиц); - содержат текст, не поддающийся прочтению; - содержат нецензурные либо оскорбительные слова или выражения; - подлежат рассмотрению в соответствии с законодательством о конституционном судопроизводстве, гражданским, гражданским процессуальным, хозяйственным процессуальным, уголовно-процессуальным законодательством, законодательством, определяющим порядок административного процесса, законодательством об административных процедурах либо в соответствии с законодательными актами установлен иной порядок подачи и рассмотрения таких обращений; - содержат вопросы, не относящиеся к компетенции адресата; - пропущен без уважительной причины срок подачи жалобы; - подано повторное обращение и в нем не содержатся новые обстоятельства; - с заявителем прекращена переписка.\r\n\r\nОбращаем внимание, что действующим законодательством электронная форма подачи заявления либо жалобы предусмотрена только для обращений, направляемых в адрес электронной почты организации в порядке', 'Электронные обращения граждан', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-31 16:52:07', '2018-07-31 13:52:07', '', 16, 'http://zheu.loc/head/16-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-07-31 16:52:34', '2018-07-31 13:52:34', '<p>Обращения (предложения, заявления, жалобы) граждан независимо от того, в какой государственный орган или иную организацию они поступили, первоначально подлежат рассмотрению по существу в соответствии с компетенцией: - в местных исполнительных и распорядительных органах, подчиненных им организациях, территориальных подразделениях (органах) и организациях, подчиненных или входящих в состав (систему) республиканских органов государственного управления и государственных организаций, подчиненных Правительству Республики Беларусь, другим государственным органам, иным организациям, осуществляющих свою деятельность и расположенных в пределах той административно-территориальной единицы, на территории которой возникли вопросы, изложенные в обращениях; - в других государственных органах, иных организациях, если вопросы, изложенные в обращениях, относятся к исключительной компетенции этих органов или организаций.\r\n\r\n&nbsp;\r\n\r\nОбращаем ваше внимание, что подача обращений осуществляется на белорусском или русском языках.\r\n\r\n&nbsp;\r\n\r\n<strong>Оставляются без рассмотрения по существу обращения, которые (по которым):</strong>\r\n\r\n- изложены не на белорусском или русском языке; - не содержат фамилии, собственного имени, отчества, адреса места жительства (места пребывания) гражданина; - не содержат полного наименования юридического лица и адреса его места нахождения, фамилии, собственного имени, отчества руководителя или лица, уполномоченного в установленном порядке подписывать обращения (для юридических лиц); - содержат текст, не поддающийся прочтению; - содержат нецензурные либо оскорбительные слова или выражения; - подлежат рассмотрению в соответствии с законодательством о конституционном судопроизводстве, гражданским, гражданским процессуальным, хозяйственным процессуальным, уголовно-процессуальным законодательством, законодательством, определяющим порядок административного процесса, законодательством об административных процедурах либо в соответствии с законодательными актами установлен иной порядок подачи и рассмотрения таких обращений; - содержат вопросы, не относящиеся к компетенции адресата; - пропущен без уважительной причины срок подачи жалобы; - подано повторное обращение и в нем не содержатся новые обстоятельства; - с заявителем прекращена переписка.\r\n\r\nОбращаем внимание, что действующим законодательством электронная форма подачи заявления либо жалобы предусмотрена только для обращений, направляемых в адрес электронной почты организации в порядке\r\n</p>', 'Электронные обращения граждан', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-31 16:52:34', '2018-07-31 13:52:34', '', 16, 'http://zheu.loc/head/16-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-07-31 16:52:56', '2018-07-31 13:52:56', '<p>Обращения (предложения, заявления, жалобы) граждан независимо от того, в какой государственный орган или иную организацию они поступили, первоначально подлежат рассмотрению по существу в соответствии с компетенцией: - в местных исполнительных и распорядительных органах, подчиненных им организациях, территориальных подразделениях (органах) и организациях, подчиненных или входящих в состав (систему) республиканских органов государственного управления и государственных организаций, подчиненных Правительству Республики Беларусь, другим государственным органам, иным организациям, осуществляющих свою деятельность и расположенных в пределах той административно-территориальной единицы, на территории которой возникли вопросы, изложенные в обращениях; - в других государственных органах, иных организациях, если вопросы, изложенные в обращениях, относятся к исключительной компетенции этих органов или организаций.\r\n\r\n&nbsp;\r\n</br>\r\nОбращаем ваше внимание, что подача обращений осуществляется на белорусском или русском языках.\r\n\r\n&nbsp;\r\n</br>\r\n<strong>Оставляются без рассмотрения по существу обращения, которые (по которым):</strong>\r\n</br>\r\n- изложены не на белорусском или русском языке; - не содержат фамилии, собственного имени, отчества, адреса места жительства (места пребывания) гражданина; - не содержат полного наименования юридического лица и адреса его места нахождения, фамилии, собственного имени, отчества руководителя или лица, уполномоченного в установленном порядке подписывать обращения (для юридических лиц); - содержат текст, не поддающийся прочтению; - содержат нецензурные либо оскорбительные слова или выражения; - подлежат рассмотрению в соответствии с законодательством о конституционном судопроизводстве, гражданским, гражданским процессуальным, хозяйственным процессуальным, уголовно-процессуальным законодательством, законодательством, определяющим порядок административного процесса, законодательством об административных процедурах либо в соответствии с законодательными актами установлен иной порядок подачи и рассмотрения таких обращений; - содержат вопросы, не относящиеся к компетенции адресата; - пропущен без уважительной причины срок подачи жалобы; - подано повторное обращение и в нем не содержатся новые обстоятельства; - с заявителем прекращена переписка.\r\n\r\nОбращаем внимание, что действующим законодательством электронная форма подачи заявления либо жалобы предусмотрена только для обращений, направляемых в адрес электронной почты организации в порядке\r\n</p>', 'Электронные обращения граждан', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-31 16:52:56', '2018-07-31 13:52:56', '', 16, 'http://zheu.loc/head/16-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-08-04 13:14:01', '2018-08-04 10:14:01', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-08-04 13:14:01', '2018-08-04 10:14:01', '', 7, 'http://zheu.loc/head/7-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-08-04 13:48:15', '2018-08-04 10:48:15', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-08-04 13:48:15', '2018-08-04 10:48:15', '', 7, 'http://zheu.loc/head/7-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-08-05 16:57:36', '2018-08-05 13:57:36', 'Отправьте запрос повседневного текущего характера, касающегося жилищно-коммунальных услуг и городского хозяйства, потому что вы сможете поучаствовать в развитии своего города, повлиять на улучшение качества услуг в сфере ЖКХ.', 'Сообщить о проблеме во Фрунзенском районе Минска', '', 'publish', 'closed', 'closed', '', 'soobshhit-o-probleme-vo-frunzenskom-rajone-minska', '', '', '2018-08-05 17:01:51', '2018-08-05 14:01:51', '', 0, 'http://zheu.loc/?page_id=88', 0, 'page', '', 0),
(89, 1, '2018-08-05 16:57:36', '2018-08-05 13:57:36', '', 'Сообщить о проблеме во Фрунзенском районе Минска', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-08-05 16:57:36', '2018-08-05 13:57:36', '', 88, 'http://zheu.loc/head/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-08-05 16:58:02', '2018-08-05 13:58:02', 'Отправьте запрос повседневного текущего характера, касающегося жилищно-коммунальных услуг и городского хозяйства, потому что вы сможете поучаствовать в развитии своего города, повлиять на улучшение качества услуг в сфере ЖКХ.', 'Сообщить о проблеме во Фрунзенском районе Минска', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-08-05 16:58:02', '2018-08-05 13:58:02', '', 88, 'http://zheu.loc/head/88-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-08-05 17:00:11', '2018-08-05 14:00:11', '', 'Сообщить о проблеме', '', 'publish', 'closed', 'closed', '', 'acf_soobshhit-o-probleme', '', '', '2018-08-05 17:00:39', '2018-08-05 14:00:39', '', 0, 'http://zheu.loc/?post_type=acf&#038;p=91', 0, 'acf', '', 0),
(92, 1, '2018-08-05 17:01:51', '2018-08-05 14:01:51', 'Отправьте запрос повседневного текущего характера, касающегося жилищно-коммунальных услуг и городского хозяйства, потому что вы сможете поучаствовать в развитии своего города, повлиять на улучшение качества услуг в сфере ЖКХ.', 'Сообщить о проблеме во Фрунзенском районе Минска', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-08-05 17:01:51', '2018-08-05 14:01:51', '', 88, 'http://zheu.loc/head/88-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-08-05 17:45:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-05 17:45:55', '0000-00-00 00:00:00', '', 0, 'http://zheu.loc/?p=93', 0, 'post', '', 0),
(94, 1, '2018-08-05 17:47:49', '2018-08-05 14:47:49', '', 'Выполненная работа', '', 'publish', 'closed', 'closed', '', 'acf_vypolnennaja-rabota', '', '', '2018-08-05 17:47:49', '2018-08-05 14:47:49', '', 0, 'http://zheu.loc/?post_type=acf&#038;p=94', 0, 'acf', '', 0),
(95, 1, '2018-08-05 17:53:59', '2018-08-05 14:53:59', '', 'Cделали люк', '', 'publish', 'open', 'open', '', 'cdelali-ljuk', '', '', '2018-08-05 17:53:59', '2018-08-05 14:53:59', '', 0, 'http://zheu.loc/?p=95', 0, 'post', '', 0),
(96, 1, '2018-08-05 17:53:49', '2018-08-05 14:53:49', '', 'bigstock-Test-word-on-white-keyboard-27134336', '', 'inherit', 'open', 'closed', '', 'bigstock-test-word-on-white-keyboard-27134336', '', '', '2018-08-05 17:53:49', '2018-08-05 14:53:49', '', 95, 'http://zheu.loc/wp-content/uploads/2018/08/bigstock-Test-word-on-white-keyboard-27134336.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-08-05 17:53:59', '2018-08-05 14:53:59', '', 'Cделали люк', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-08-05 17:53:59', '2018-08-05 14:53:59', '', 95, 'http://zheu.loc/head/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-08-05 19:10:58', '2018-08-05 16:10:58', '', '1234', '', 'publish', 'open', 'open', '', '1234', '', '', '2018-08-05 19:10:58', '2018-08-05 16:10:58', '', 0, 'http://zheu.loc/?p=98', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(99, 1, '2018-08-05 19:10:49', '2018-08-05 16:10:49', '', 'bigstock-Test-word-on-white-keyboard-27134336', '', 'inherit', 'open', 'closed', '', 'bigstock-test-word-on-white-keyboard-27134336-2', '', '', '2018-08-05 19:10:49', '2018-08-05 16:10:49', '', 98, 'http://zheu.loc/wp-content/uploads/2018/08/bigstock-Test-word-on-white-keyboard-27134336-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-08-05 19:10:58', '2018-08-05 16:10:58', '', '1234', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-08-05 19:10:58', '2018-08-05 16:10:58', '', 98, 'http://zheu.loc/head/98-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-08-05 19:14:25', '2018-08-05 16:14:25', '', '12345', '', 'publish', 'open', 'open', '', '12345', '', '', '2018-08-05 19:14:25', '2018-08-05 16:14:25', '', 0, 'http://zheu.loc/?p=101', 0, 'post', '', 0),
(102, 1, '2018-08-05 19:14:25', '2018-08-05 16:14:25', '', '12345', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-08-05 19:14:25', '2018-08-05 16:14:25', '', 101, 'http://zheu.loc/head/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-08-05 20:44:09', '2018-08-05 17:44:09', '', 'Сообщить о проблеме', '', 'publish', 'closed', 'closed', '', 'soobshhit-o-probleme-2', '', '', '2018-08-05 20:48:16', '2018-08-05 17:48:16', '', 0, 'http://zheu.loc/?p=103', 4, 'nav_menu_item', '', 0),
(104, 1, '2018-08-05 20:48:16', '2018-08-05 17:48:16', '', 'Электронные обращения', '', 'publish', 'closed', 'closed', '', 'jelektronnye-obrashhenija', '', '', '2018-08-05 20:48:16', '2018-08-05 17:48:16', '', 0, 'http://zheu.loc/?p=104', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Главная', 'head', 0),
(2, 'Главное меню', 'glavnoe-menju', 0),
(4, 'О ЖЭУ №7', 'o-zhjeu-7', 0),
(5, 'Полезная информация', 'poleznaja-informacija', 0),
(6, 'Новости', 'news', 0),
(7, 'Footer menu', 'footer-menu', 0),
(8, 'Галерея выполненных работ', 'galereja-vypolnennyh-rabot', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(11, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(31, 6, 0),
(34, 6, 0),
(36, 6, 0),
(38, 1, 0),
(41, 1, 0),
(44, 1, 0),
(47, 1, 0),
(50, 1, 0),
(56, 1, 0),
(60, 1, 0),
(64, 7, 0),
(65, 7, 0),
(68, 7, 0),
(72, 2, 0),
(95, 8, 0),
(98, 8, 0),
(101, 8, 0),
(103, 2, 0),
(104, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 8),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"0b3e93f788524e2832821249929d8bb3b691952a9848c14bf8cc457790d78adc\";a:4:{s:10:\"expiration\";i:1533961193;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532751593;}s:64:\"d7a2e78cd1365d827533152dc4effbd9ae46d9c4c4f20a759aa6d048b951d145\";a:4:{s:10:\"expiration\";i:1534149710;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532940110;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1533477481'),
(24, 1, 'closedpostboxes_acf', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'meta-box-order_acf', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:43:\"acf_fields,acf_location,acf_options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_acf', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BOgqlNHAENAFWh8S9tneom9xCGVRT50', 'admin', 'giperilia@mail.ru', '', '2018-07-25 18:12:08', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
