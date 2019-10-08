-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2019 lúc 11:03 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nuochoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-04 05:46:00', '2019-10-04 05:46:00', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 11, 'ActionScheduler', '', '', '', '2019-10-04 06:55:17', '2019-10-04 06:55:17', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 11, 'ActionScheduler', '', '', '', '2019-10-04 06:56:20', '2019-10-04 06:56:20', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 11, 'ActionScheduler', '', '', '', '2019-10-04 06:56:20', '2019-10-04 06:56:20', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 12, 'ActionScheduler', '', '', '', '2019-10-04 06:56:20', '2019-10-04 06:56:20', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 12, 'ActionScheduler', '', '', '', '2019-10-05 06:49:12', '2019-10-05 06:49:12', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 12, 'ActionScheduler', '', '', '', '2019-10-05 06:49:12', '2019-10-05 06:49:12', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 13, 'ActionScheduler', '', '', '', '2019-10-05 06:49:12', '2019-10-05 06:49:12', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(9, 13, 'ActionScheduler', '', '', '', '2019-10-05 07:50:04', '2019-10-05 07:50:04', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(10, 13, 'ActionScheduler', '', '', '', '2019-10-05 07:50:04', '2019-10-05 07:50:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(11, 16, 'ActionScheduler', '', '', '', '2019-10-05 07:50:04', '2019-10-05 07:50:04', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(12, 16, 'ActionScheduler', '', '', '', '2019-10-05 09:10:01', '2019-10-05 09:10:01', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(13, 16, 'ActionScheduler', '', '', '', '2019-10-05 09:10:02', '2019-10-05 09:10:02', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(14, 17, 'ActionScheduler', '', '', '', '2019-10-05 09:10:02', '2019-10-05 09:10:02', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(15, 17, 'ActionScheduler', '', '', '', '2019-10-05 14:15:49', '2019-10-05 14:15:49', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(16, 17, 'ActionScheduler', '', '', '', '2019-10-05 14:15:49', '2019-10-05 14:15:49', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(17, 39, 'ActionScheduler', '', '', '', '2019-10-05 14:15:49', '2019-10-05 14:15:49', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(18, 39, 'ActionScheduler', '', '', '', '2019-10-05 15:16:40', '2019-10-05 15:16:40', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(19, 39, 'ActionScheduler', '', '', '', '2019-10-05 15:16:40', '2019-10-05 15:16:40', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(20, 60, 'ActionScheduler', '', '', '', '2019-10-05 15:16:40', '2019-10-05 15:16:40', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(21, 60, 'ActionScheduler', '', '', '', '2019-10-08 05:49:44', '2019-10-08 05:49:44', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(22, 60, 'ActionScheduler', '', '', '', '2019-10-08 05:49:45', '2019-10-08 05:49:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(23, 113, 'ActionScheduler', '', '', '', '2019-10-08 05:49:45', '2019-10-08 05:49:45', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(24, 113, 'ActionScheduler', '', '', '', '2019-10-08 07:26:34', '2019-10-08 07:26:34', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(25, 113, 'ActionScheduler', '', '', '', '2019-10-08 07:26:34', '2019-10-08 07:26:34', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(26, 115, 'ActionScheduler', '', '', '', '2019-10-08 07:26:34', '2019-10-08 07:26:34', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(27, 115, 'ActionScheduler', '', '', '', '2019-10-08 08:27:18', '2019-10-08 08:27:18', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(28, 115, 'ActionScheduler', '', '', '', '2019-10-08 08:27:19', '2019-10-08 08:27:19', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(29, 127, 'ActionScheduler', '', '', '', '2019-10-08 08:27:19', '2019-10-08 08:27:19', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/demo', 'yes'),
(2, 'home', 'http://localhost:82/demo', 'yes'),
(3, 'blogname', 'Nước Hoa', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nguyencongthuc10@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:151:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"danh-muc-san-pham/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"tu-khoa-san-pham/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:40:\"sản phẩm/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"sản phẩm/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"sản phẩm/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sản phẩm/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sản phẩm/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"sản phẩm/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"sản phẩm/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:33:\"sản phẩm/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:41:\"sản phẩm/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:48:\"sản phẩm/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:38:\"sản phẩm/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:44:\"sản phẩm/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"sản phẩm/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"sản phẩm/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:29:\"sản phẩm/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"sản phẩm/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"sản phẩm/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sản phẩm/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sản phẩm/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"sản phẩm/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=109&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:1;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:2;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:59:\"C:\\xampp\\htdocs\\demo/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'themecustom', 'yes'),
(41, 'stylesheet', 'themecustom', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '109', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:16:{i:1570525322;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1570526839;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1570527962;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570528320;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570528516;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570539120;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570556762;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570579200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570599960;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570599974;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570599977;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570603920;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570603930;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570604100;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572912000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570172067;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(125, '_site_transient_timeout_browser_40d2af28a4c309bbb824dc957af59b11', '1570772776', 'no'),
(126, '_site_transient_browser_40d2af28a4c309bbb824dc957af59b11', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"77.0.3865.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1570772777', 'no'),
(128, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'woocommerce_store_address', 'Đường 120', 'yes'),
(158, 'woocommerce_store_address_2', '', 'yes'),
(159, 'woocommerce_store_city', 'Hồ Chí Minh', 'yes'),
(160, 'woocommerce_default_country', 'VN:*', 'yes'),
(161, 'woocommerce_store_postcode', '', 'yes'),
(162, 'woocommerce_allowed_countries', 'all', 'yes'),
(163, 'woocommerce_all_except_countries', '', 'yes'),
(164, 'woocommerce_specific_allowed_countries', '', 'yes'),
(165, 'woocommerce_ship_to_countries', '', 'yes'),
(166, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(167, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(168, 'woocommerce_calc_taxes', 'no', 'yes'),
(169, 'woocommerce_enable_coupons', 'yes', 'yes'),
(170, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(171, 'woocommerce_currency', 'VND', 'yes'),
(172, 'woocommerce_currency_pos', 'left', 'yes'),
(173, 'woocommerce_price_thousand_sep', ',', 'yes'),
(174, 'woocommerce_price_decimal_sep', '.', 'yes'),
(175, 'woocommerce_price_num_decimals', '2', 'yes'),
(176, 'woocommerce_shop_page_id', '7', 'yes'),
(177, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(178, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(179, 'woocommerce_placeholder_image', '6', 'yes'),
(180, 'woocommerce_weight_unit', 'kg', 'yes'),
(181, 'woocommerce_dimension_unit', 'cm', 'yes'),
(182, 'woocommerce_enable_reviews', 'yes', 'yes'),
(183, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(184, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(185, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(186, 'woocommerce_review_rating_required', 'yes', 'no'),
(187, 'woocommerce_manage_stock', 'yes', 'yes'),
(188, 'woocommerce_hold_stock_minutes', '60', 'no'),
(189, 'woocommerce_notify_low_stock', 'yes', 'no'),
(190, 'woocommerce_notify_no_stock', 'yes', 'no'),
(191, 'woocommerce_stock_email_recipient', 'nguyencongthuc10@gmail.com', 'no'),
(192, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(193, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(194, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(195, 'woocommerce_stock_format', '', 'yes'),
(196, 'woocommerce_file_download_method', 'force', 'no'),
(197, 'woocommerce_downloads_require_login', 'no', 'no'),
(198, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(199, 'woocommerce_prices_include_tax', 'no', 'yes'),
(200, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(201, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(202, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(203, 'woocommerce_tax_classes', '', 'yes'),
(204, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(205, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(206, 'woocommerce_price_display_suffix', '', 'yes'),
(207, 'woocommerce_tax_total_display', 'itemized', 'no'),
(208, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(209, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(210, 'woocommerce_ship_to_destination', 'billing', 'no'),
(211, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(212, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(214, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(215, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(216, 'woocommerce_registration_generate_username', 'yes', 'no'),
(217, 'woocommerce_registration_generate_password', 'yes', 'no'),
(218, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(219, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(220, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(221, 'woocommerce_registration_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].', 'yes'),
(222, 'woocommerce_checkout_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].', 'yes'),
(223, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(224, 'woocommerce_trash_pending_orders', '', 'no'),
(225, 'woocommerce_trash_failed_orders', '', 'no'),
(226, 'woocommerce_trash_cancelled_orders', '', 'no'),
(227, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(228, 'woocommerce_email_from_name', 'nuochoa', 'no'),
(229, 'woocommerce_email_from_address', 'nguyencongthuc10@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(232, 'woocommerce_email_base_color', '#96588a', 'no'),
(233, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(234, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(235, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(236, 'woocommerce_cart_page_id', '8', 'no'),
(237, 'woocommerce_checkout_page_id', '9', 'no'),
(238, 'woocommerce_myaccount_page_id', '10', 'no'),
(239, 'woocommerce_terms_page_id', '', 'no'),
(240, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(241, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(242, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(243, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(244, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(245, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(246, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_api_enabled', 'no', 'yes'),
(256, 'woocommerce_allow_tracking', 'yes', 'no'),
(257, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(258, 'woocommerce_single_image_width', '600', 'yes'),
(259, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(260, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(261, 'woocommerce_demo_store', 'no', 'no'),
(262, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:12:\"sản phẩm\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(263, 'current_theme_supports_woocommerce', 'no', 'yes'),
(264, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(267, 'default_product_cat', '15', 'yes'),
(270, 'woocommerce_version', '3.7.0', 'yes'),
(271, 'woocommerce_db_version', '3.7.0', 'yes'),
(272, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:21:\"jetpack_install_error\";}', 'yes'),
(273, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(274, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(291, '_transient_timeout_external_ip_address_::1', '1570776725', 'no'),
(292, '_transient_external_ip_address_::1', '42.113.185.44', 'no'),
(296, 'woocommerce_obw_last_completed_step', 'activate', 'yes'),
(299, 'woocommerce_product_type', 'both', 'yes'),
(300, 'woocommerce_sell_in_person', '1', 'yes'),
(302, 'woocommerce_tracker_last_send', '1570171998', 'yes'),
(303, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(304, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(305, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(307, '_transient_shipping-transient-version', '1570172023', 'yes'),
(308, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(314, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(315, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack không thể cài đặt (Không thể sao chép tập tin.). <a href=\"http://localhost:82/demo/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Hãy cài đặt nó theo cách thủ công bằng cách nhấp vào đây.</a>', 'yes'),
(328, 'current_theme', 'Twenty Nineteen/themecustom', 'yes'),
(329, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570514002;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:34:\"storefront_header_background_color\";s:7:\"#5af41d\";s:16:\"background_color\";s:6:\"545454\";s:28:\"storefront_button_text_color\";s:7:\"#34c11b\";}', 'yes'),
(330, 'theme_switched', '', 'yes'),
(331, 'mailchimp_woocommerce_version', '2.2.4', 'no'),
(332, 'mailchimp-woocommerce', 'a:2:{s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"VND\";}', 'yes'),
(334, 'mailchimp-woocommerce-store_id', '5d96eca923276', 'yes'),
(335, 'storefront_nux_fresh_site', '0', 'yes'),
(336, 'woocommerce_catalog_rows', '4', 'yes'),
(337, 'woocommerce_catalog_columns', '3', 'yes'),
(338, 'woocommerce_maybe_regenerate_images_hash', 'd65c8194d86837a5c38335b07e33a934', 'yes'),
(343, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(344, 'mailchimp-woocommerce_cart_table_add_index_update', '1', 'yes'),
(350, 'wc_admin_version', '0.19.0', 'yes'),
(351, 'wc_admin_install_timestamp', '1570172116', 'yes'),
(352, 'wc_admin_last_orders_milestone', '0', 'yes'),
(354, '_transient_product_query-transient-version', '1570523348', 'yes'),
(383, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";}', 'yes'),
(441, 'theme_mods_test', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570519690;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(482, 'theme_mods_hestia', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:28:\"zerif_frontpage_was_imported\";s:9:\"not-zerif\";s:28:\"ti_about_recommended_plugins\";a:1:{s:19:\"themeisle-companion\";s:7:\"visible\";}s:18:\"custom_css_post_id\";i:-1;s:31:\"hestia_feature_thumbnail_buffer\";s:72:\"http://localhost:82/demo/wp-content/themes/hestia/assets/img/contact.jpg\";s:24:\"hestia_feature_thumbnail\";s:72:\"http://localhost:82/demo/wp-content/themes/hestia/assets/img/contact.jpg\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570288608;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"subscribe-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:0:{}s:14:\"header-sidebar\";a:0:{}s:17:\"sidebar-big-title\";a:0:{}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}}}}', 'yes'),
(483, 'woocommerce_thumbnail_cropping', 'custom', 'yes'),
(484, 'woocommerce_thumbnail_cropping_custom_width', '23', 'yes'),
(485, 'woocommerce_thumbnail_cropping_custom_height', '35', 'yes'),
(487, 'hestia_update_woocommerce_customizer_controls', '1', 'yes'),
(490, 'hestia_install', '1570267070', 'yes'),
(491, '_transient_timeout_hestia_all_languages', '1570871871', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(492, '_transient_hestia_all_languages', 'a:1:{s:12:\"translations\";a:48:{i:0;a:7:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:6:\"1.1.54\";s:7:\"updated\";s:19:\"2017-07-31 12:28:14\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/1.1.54/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}}i:1;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-10-04 22:51:30\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}}i:2;a:7:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-14 07:21:53\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}}i:3;a:7:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"2.4.8\";s:7:\"updated\";s:19:\"2019-01-30 11:53:32\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.4.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}}i:4;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:6:\"1.1.86\";s:7:\"updated\";s:19:\"2018-05-29 13:53:56\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/1.1.86/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}}i:5;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-09-19 12:16:06\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}}i:6;a:7:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-06 18:26:57\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:7;a:7:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-11 18:55:23\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:8;a:7:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-11 18:54:58\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:9;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-06 18:27:03\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:10;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-26 07:38:22\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}}i:11;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-14 11:23:48\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:12;a:7:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-26 00:59:36\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:13;a:7:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-24 23:01:38\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:14;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-12 20:44:53\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:15;a:7:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"2.1.0\";s:7:\"updated\";s:19:\"2018-11-08 06:00:22\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.1.0/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:16;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-01 16:07:22\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:17;a:7:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-12 19:32:14\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:18;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:6:\"1.1.37\";s:7:\"updated\";s:19:\"2017-06-19 20:12:58\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/1.1.37/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:19;a:7:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-04-15 15:28:52\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:20;a:7:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"2.1.0\";s:7:\"updated\";s:19:\"2018-11-12 20:33:41\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.1.0/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:21;a:7:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-12 19:31:31\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:22;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-25 06:57:17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}}i:23;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-24 14:13:37\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}}i:24;a:7:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-18 12:26:11\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}}i:25;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-25 06:21:46\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}}i:26;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-09-07 15:48:28\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}}i:27;a:7:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-22 12:42:27\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}}i:28;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:6:\"1.1.84\";s:7:\"updated\";s:19:\"2018-01-24 06:42:03\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/1.1.84/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}}i:29;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-09-02 18:39:22\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}}i:30;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-29 03:56:49\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}}i:31;a:7:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-12 08:51:04\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}}i:32;a:7:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"2.1.0\";s:7:\"updated\";s:19:\"2018-11-12 07:35:23\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.1.0/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}}i:33;a:7:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-05 12:17:12\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}}i:34;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-21 16:35:53\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:35;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-14 14:20:26\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:36;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-09-18 14:49:19\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}}i:37;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-29 15:04:31\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}}i:38;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-14 14:37:41\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}}i:39;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-04-09 15:42:09\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}}i:40;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-07-24 19:43:43\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}}i:41;a:7:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-01 04:47:12\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}}i:42;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-18 13:14:00\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}}i:43;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-03 06:29:00\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}}i:44;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-08-01 15:09:33\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}}i:45;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-09-17 20:56:14\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}}i:46;a:7:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"2.5.3\";s:7:\"updated\";s:19:\"2019-10-03 01:23:43\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hestia/2.5.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}}i:47;a:7:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:6:\"2.0.12\";s:7:\"updated\";s:19:\"2018-09-17 08:53:09\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/2.0.12/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}}}}', 'no'),
(493, 'hestia_had_elementor', 'no', 'yes'),
(494, 'hestia_time_activated', '1570288405', 'yes'),
(502, '_transient_timeout_hestia_253versions', '1570699072', 'no'),
(503, '_transient_hestia_253versions', 'a:95:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.6\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.1.0.6.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.8\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.1.0.8.zip\";}i:2;a:2:{s:7:\"version\";s:6:\"1.0.11\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.0.11.zip\";}i:3;a:2:{s:7:\"version\";s:6:\"1.0.12\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.0.12.zip\";}i:4;a:2:{s:7:\"version\";s:6:\"1.1.19\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.19.zip\";}i:5;a:2:{s:7:\"version\";s:6:\"1.1.20\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.20.zip\";}i:6;a:2:{s:7:\"version\";s:6:\"1.1.21\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.21.zip\";}i:7;a:2:{s:7:\"version\";s:6:\"1.1.22\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.22.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"1.1.23\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.23.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"1.1.24\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.24.zip\";}i:10;a:2:{s:7:\"version\";s:6:\"1.1.25\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.25.zip\";}i:11;a:2:{s:7:\"version\";s:6:\"1.1.28\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.28.zip\";}i:12;a:2:{s:7:\"version\";s:6:\"1.1.29\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.29.zip\";}i:13;a:2:{s:7:\"version\";s:6:\"1.1.30\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.30.zip\";}i:14;a:2:{s:7:\"version\";s:6:\"1.1.31\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.31.zip\";}i:15;a:2:{s:7:\"version\";s:6:\"1.1.32\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.32.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"1.1.33\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.33.zip\";}i:17;a:2:{s:7:\"version\";s:6:\"1.1.36\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.36.zip\";}i:18;a:2:{s:7:\"version\";s:6:\"1.1.37\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.37.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"1.1.38\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.38.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"1.1.39\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.39.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"1.1.40\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.40.zip\";}i:22;a:2:{s:7:\"version\";s:6:\"1.1.41\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.41.zip\";}i:23;a:2:{s:7:\"version\";s:6:\"1.1.42\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.42.zip\";}i:24;a:2:{s:7:\"version\";s:6:\"1.1.43\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.43.zip\";}i:25;a:2:{s:7:\"version\";s:6:\"1.1.44\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.44.zip\";}i:26;a:2:{s:7:\"version\";s:6:\"1.1.45\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.45.zip\";}i:27;a:2:{s:7:\"version\";s:6:\"1.1.46\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.46.zip\";}i:28;a:2:{s:7:\"version\";s:6:\"1.1.47\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.47.zip\";}i:29;a:2:{s:7:\"version\";s:6:\"1.1.48\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.48.zip\";}i:30;a:2:{s:7:\"version\";s:6:\"1.1.50\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.50.zip\";}i:31;a:2:{s:7:\"version\";s:6:\"1.1.51\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.51.zip\";}i:32;a:2:{s:7:\"version\";s:6:\"1.1.52\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.52.zip\";}i:33;a:2:{s:7:\"version\";s:6:\"1.1.53\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.53.zip\";}i:34;a:2:{s:7:\"version\";s:6:\"1.1.54\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.54.zip\";}i:35;a:2:{s:7:\"version\";s:6:\"1.1.55\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.55.zip\";}i:36;a:2:{s:7:\"version\";s:6:\"1.1.56\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.56.zip\";}i:37;a:2:{s:7:\"version\";s:6:\"1.1.57\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.57.zip\";}i:38;a:2:{s:7:\"version\";s:6:\"1.1.58\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.58.zip\";}i:39;a:2:{s:7:\"version\";s:6:\"1.1.59\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.59.zip\";}i:40;a:2:{s:7:\"version\";s:6:\"1.1.60\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.60.zip\";}i:41;a:2:{s:7:\"version\";s:6:\"1.1.61\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.61.zip\";}i:42;a:2:{s:7:\"version\";s:6:\"1.1.62\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.62.zip\";}i:43;a:2:{s:7:\"version\";s:6:\"1.1.63\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.63.zip\";}i:44;a:2:{s:7:\"version\";s:6:\"1.1.65\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.65.zip\";}i:45;a:2:{s:7:\"version\";s:6:\"1.1.66\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.66.zip\";}i:46;a:2:{s:7:\"version\";s:6:\"1.1.70\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.70.zip\";}i:47;a:2:{s:7:\"version\";s:6:\"1.1.71\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.71.zip\";}i:48;a:2:{s:7:\"version\";s:6:\"1.1.72\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.72.zip\";}i:49;a:2:{s:7:\"version\";s:6:\"1.1.73\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.73.zip\";}i:50;a:2:{s:7:\"version\";s:6:\"1.1.74\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.74.zip\";}i:51;a:2:{s:7:\"version\";s:6:\"1.1.76\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.76.zip\";}i:52;a:2:{s:7:\"version\";s:6:\"1.1.77\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.77.zip\";}i:53;a:2:{s:7:\"version\";s:6:\"1.1.79\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.79.zip\";}i:54;a:2:{s:7:\"version\";s:6:\"1.1.80\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.80.zip\";}i:55;a:2:{s:7:\"version\";s:6:\"1.1.81\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.81.zip\";}i:56;a:2:{s:7:\"version\";s:6:\"1.1.82\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.82.zip\";}i:57;a:2:{s:7:\"version\";s:6:\"1.1.83\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.83.zip\";}i:58;a:2:{s:7:\"version\";s:6:\"1.1.84\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.84.zip\";}i:59;a:2:{s:7:\"version\";s:6:\"1.1.85\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.85.zip\";}i:60;a:2:{s:7:\"version\";s:6:\"1.1.86\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.86.zip\";}i:61;a:2:{s:7:\"version\";s:5:\"2.0.3\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.3.zip\";}i:62;a:2:{s:7:\"version\";s:5:\"2.0.4\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.4.zip\";}i:63;a:2:{s:7:\"version\";s:5:\"2.0.5\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.5.zip\";}i:64;a:2:{s:7:\"version\";s:5:\"2.0.6\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.6.zip\";}i:65;a:2:{s:7:\"version\";s:5:\"2.0.7\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.7.zip\";}i:66;a:2:{s:7:\"version\";s:5:\"2.0.8\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.8.zip\";}i:67;a:2:{s:7:\"version\";s:5:\"2.0.9\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.0.9.zip\";}i:68;a:2:{s:7:\"version\";s:6:\"2.0.10\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.10.zip\";}i:69;a:2:{s:7:\"version\";s:6:\"2.0.11\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.11.zip\";}i:70;a:2:{s:7:\"version\";s:6:\"2.0.12\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.12.zip\";}i:71;a:2:{s:7:\"version\";s:6:\"2.0.13\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.13.zip\";}i:72;a:2:{s:7:\"version\";s:6:\"2.0.14\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.14.zip\";}i:73;a:2:{s:7:\"version\";s:6:\"2.0.15\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.15.zip\";}i:74;a:2:{s:7:\"version\";s:6:\"2.0.16\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.16.zip\";}i:75;a:2:{s:7:\"version\";s:6:\"2.0.17\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.17.zip\";}i:76;a:2:{s:7:\"version\";s:6:\"2.0.18\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.18.zip\";}i:77;a:2:{s:7:\"version\";s:6:\"2.0.19\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.2.0.19.zip\";}i:78;a:2:{s:7:\"version\";s:5:\"2.1.0\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.1.0.zip\";}i:79;a:2:{s:7:\"version\";s:5:\"2.1.1\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.1.1.zip\";}i:80;a:2:{s:7:\"version\";s:5:\"2.2.0\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.2.0.zip\";}i:81;a:2:{s:7:\"version\";s:5:\"2.2.1\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.2.1.zip\";}i:82;a:2:{s:7:\"version\";s:5:\"2.3.0\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.3.0.zip\";}i:83;a:2:{s:7:\"version\";s:5:\"2.4.0\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.0.zip\";}i:84;a:2:{s:7:\"version\";s:5:\"2.4.1\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.1.zip\";}i:85;a:2:{s:7:\"version\";s:5:\"2.4.2\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.2.zip\";}i:86;a:2:{s:7:\"version\";s:5:\"2.4.4\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.4.zip\";}i:87;a:2:{s:7:\"version\";s:5:\"2.4.5\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.5.zip\";}i:88;a:2:{s:7:\"version\";s:5:\"2.4.6\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.6.zip\";}i:89;a:2:{s:7:\"version\";s:5:\"2.4.7\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.7.zip\";}i:90;a:2:{s:7:\"version\";s:5:\"2.4.8\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.8.zip\";}i:91;a:2:{s:7:\"version\";s:5:\"2.4.9\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.4.9.zip\";}i:92;a:2:{s:7:\"version\";s:5:\"2.5.0\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.5.0.zip\";}i:93;a:2:{s:7:\"version\";s:5:\"2.5.1\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.5.1.zip\";}i:94;a:2:{s:7:\"version\";s:5:\"2.5.3\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.5.3.zip\";}}', 'no'),
(511, '_transient_product-transient-version', '1570514286', 'yes'),
(525, 'hestia_sync_needed', '', 'yes'),
(534, '_transient_timeout_wc_shipping_method_count_legacy', '1572859819', 'no'),
(535, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1570172023\";s:5:\"value\";i:0;}', 'no'),
(567, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(601, '_transient_timeout_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', '1573105824', 'no'),
(602, '_transient_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', 'a:2:{s:7:\"version\";s:10:\"1570513785\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:84;i:1;i:83;i:2;i:82;i:3;i:81;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(603, '_transient_timeout_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4', '1573105824', 'no'),
(604, '_transient_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4', 'a:2:{s:7:\"version\";s:10:\"1570513785\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:69;i:1;i:68;i:2;i:15;i:3;i:62;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(605, '_transient_timeout_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d', '1573105824', 'no'),
(606, '_transient_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d', 'a:2:{s:7:\"version\";s:10:\"1570513785\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:68;i:1;i:69;i:2;i:71;i:3;i:72;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(609, '_transient_timeout_wc_product_loop_e5369b77f07fe5444fb1aae0ef57c8d5', '1573105825', 'no'),
(610, '_transient_wc_product_loop_e5369b77f07fe5444fb1aae0ef57c8d5', 'a:2:{s:7:\"version\";s:10:\"1570513785\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(611, '_transient_timeout_wc_product_loop_b27d6511cd0b0974ef126df50f877a28', '1573105825', 'no'),
(612, '_transient_wc_product_loop_b27d6511cd0b0974ef126df50f877a28', 'a:2:{s:7:\"version\";s:10:\"1570513785\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:64;i:1;i:72;i:2;i:65;i:3;i:73;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(629, 'page_for_posts', '111', 'yes'),
(639, 'storefront_nux_guided_tour', '1', 'yes'),
(642, 'woocommerce_category_archive_display', 'both', 'yes'),
(677, 'new_admin_email', 'nguyencongthuc10@gmail.com', 'yes'),
(725, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570289249;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(753, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(755, 'storefront_nux_dismissed', '1', 'yes'),
(759, '_transient_timeout_wc_product_children_62', '1572881393', 'no'),
(760, '_transient_wc_product_children_62', 'a:2:{s:3:\"all\";a:3:{i:0;i:75;i:1;i:76;i:2;i:77;}s:7:\"visible\";a:3:{i:0;i:75;i:1;i:76;i:2;i:77;}}', 'no'),
(761, '_transient_timeout_wc_var_prices_62', '1572881393', 'no'),
(762, '_transient_wc_var_prices_62', '{\"version\":\"1570267429\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"75\":\"20.00\",\"76\":\"20.00\",\"77\":\"15.00\"},\"regular_price\":{\"75\":\"20.00\",\"76\":\"20.00\",\"77\":\"15.00\"},\"sale_price\":{\"75\":\"20.00\",\"76\":\"20.00\",\"77\":\"15.00\"}}}', 'no'),
(764, 'category_children', 'a:0:{}', 'yes'),
(765, 'product_cat_children', 'a:0:{}', 'yes'),
(773, '_transient_timeout_wc_product_children_63', '1572882065', 'no'),
(774, '_transient_wc_product_children_63', 'a:2:{s:3:\"all\";a:4:{i:0;i:85;i:1;i:78;i:2;i:79;i:3;i:80;}s:7:\"visible\";a:4:{i:0;i:85;i:1;i:78;i:2;i:79;i:3;i:80;}}', 'no'),
(775, '_transient_timeout_wc_var_prices_63', '1573106293', 'no'),
(776, '_transient_wc_var_prices_63', '{\"version\":\"1570514286\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"85\":\"45.00\",\"78\":\"42.00\",\"79\":\"45.00\",\"80\":\"45.00\"},\"regular_price\":{\"85\":\"45.00\",\"78\":\"45.00\",\"79\":\"45.00\",\"80\":\"45.00\"},\"sale_price\":{\"85\":\"45.00\",\"78\":\"42.00\",\"79\":\"45.00\",\"80\":\"45.00\"}}}', 'no'),
(788, '_transient_timeout__woocommerce_helper_updates', '1570556988', 'no'),
(789, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"358c40eaa335ac0d027f3e9faa3c726e\";s:7:\"updated\";i:1570513788;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(798, '_transient_timeout_wc_report_sales_by_date', '1570611646', 'no'),
(799, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"d765ea296ec44fb14c7953ac953e58cd\";a:0:{}s:32:\"3c92208c1370d917856b0af119039b0f\";a:0:{}s:32:\"91050414db28c35d49c32c1785d4ea43\";a:0:{}s:32:\"857d257a55f878c1e920a833a7168927\";N;s:32:\"fc76c61dc7c40d9ee70d352696a02aa4\";a:0:{}s:32:\"398cec29ab48e1c6aa8b468f599f7d70\";a:0:{}s:32:\"047837cba9b7979044eaf0c568ff0671\";a:0:{}s:32:\"9eefb5e22d4e8cbcd9685221d77be7ab\";a:0:{}s:32:\"7dfd818816fc4b1e384130a0d5b6fa4c\";a:0:{}s:32:\"dd535ae5b9172638cd3069460652d1a8\";a:0:{}s:32:\"9f339c5d61999fd7375065c699e25306\";a:0:{}s:32:\"7fe33daa032f9d44d7a5749c1285e0fa\";N;s:32:\"09d45d93c843e7b7b2c846177a1999c7\";a:0:{}s:32:\"4d63dc8dbedb6cf8746abe216f0a72c7\";a:0:{}s:32:\"bf91f103274174b6bc49e5dddceaac39\";a:0:{}s:32:\"c3fbb9ee60a067df5d1da6c351541542\";a:0:{}}', 'no'),
(800, '_transient_timeout_wc_admin_report', '1570611646', 'no'),
(801, '_transient_wc_admin_report', 'a:1:{s:32:\"a58d6ae1e2bbced71be1da1e721d1101\";a:0:{}}', 'no'),
(802, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1570564028', 'no'),
(803, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(804, '_transient_timeout_feed_b748b176461a07a256071902477d41d7', '1570557003', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(805, '_transient_feed_b748b176461a07a256071902477d41d7', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Blog | tiếng Việt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://vi.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 May 2019 01:51:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"vi-VN\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.3-beta2-46374\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress Translation Day 4 in Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://vi.wordpress.org/2019/05/13/wordpress-translation-day-4-in-nha-trang/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://vi.wordpress.org/2019/05/13/wordpress-translation-day-4-in-nha-trang/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 May 2019 01:50:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=816\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:349:\"Sáng ngày 11/05/2019, tại co-working space Văn Phòng Chia Sẻ – De Train Nha Trang đã diễn ra chương trình WordPress Translation Day 4 in Nha Trang (Ngày Hội Dịch Thuật WordPress Toàn Cầu Lần 4 tại Nha Trang) do Nha Trang WordPress tổ chức.  Chương trình đã nêu lên tầm quan trọng của việc [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Thien Nguyen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6902:\"\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://vi.wordpress.org/files/2019/05/6-1024x576.jpg\" alt=\"\" data-id=\"824\" data-link=\"https://vi.wordpress.org/2019/05/13/wordpress-translation-day-4-in-nha-trang/attachment/6/\" class=\"wp-image-824\" srcset=\"https://vi.wordpress.org/files/2019/05/6-1024x576.jpg 1024w, https://vi.wordpress.org/files/2019/05/6-300x169.jpg 300w, https://vi.wordpress.org/files/2019/05/6-768x432.jpg 768w, https://vi.wordpress.org/files/2019/05/6.jpg 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></li></ul>\n\n\n\n<p>Sáng ngày 11/05/2019, tại co-working space Văn Phòng Chia Sẻ – De Train Nha Trang đã diễn ra chương trình WordPress Translation Day 4 in Nha Trang (Ngày Hội Dịch Thuật WordPress Toàn Cầu Lần 4 tại Nha Trang) do Nha Trang WordPress tổ chức. </p>\n\n\n\n<span id=\"more-816\"></span>\n\n\n\n<p>Chương trình đã nêu lên tầm quan trọng của việc phát triển đội ngũ tình nguyện viên dịch thuật Lõi WordPress, Giao Diện và Plugins ra hơn 186 ngôn ngữ bản địa trên toàn cầu là một trong những yếu tố quan trọng dẫn đến sự phát triển và phổ biến của WordPress trong hơn 15 năm qua. </p>\n\n\n\n<p>Ngoài việc hướng dẫn mọi người tham gia đóng góp bản dịch Tiếng Việt trên WordPress.Org, các quy định khi tham gia dịch thuật WordPress, Ban tổ chức còn trình bày nhiều thủ thuật, tiện ích hỗ trợ cho việc dịch thuật trở nên dễ dàng và thuận tiện hơn. </p>\n\n\n\n<p>Ban tổ chức xin trân trọng cám ơn co-working space Văn Phòng Chia Sẻ – De Train Nha Trang đã hỗ trợ rất nhiều cho buổi meetup, cám ơn metabox.io đã tài trợ các phần quà hấp dẫn cho các thành viên đến tham dự meetup. </p>\n\n\n\n<p>Xin cám ơn và hẹn gặp lại tại chương trình meetup Tháng 6/2019 của Nha Trang WordPress.</p>\n\n\n\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/1-1024x768-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/1-1024x768-1024x768.jpg\" alt=\"\" data-id=\"819\" data-link=\"https://vi.wordpress.org/?attachment_id=819\" class=\"wp-image-819\" srcset=\"https://vi.wordpress.org/files/2019/05/1-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/05/1-1024x768-300x225.jpg 300w, https://vi.wordpress.org/files/2019/05/1-1024x768-768x576.jpg 768w, https://vi.wordpress.org/files/2019/05/1-1024x768-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/2-1024x768-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/2-1024x768-1024x768.jpg\" alt=\"\" data-id=\"820\" data-link=\"https://vi.wordpress.org/?attachment_id=820\" class=\"wp-image-820\" srcset=\"https://vi.wordpress.org/files/2019/05/2-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/05/2-1024x768-300x225.jpg 300w, https://vi.wordpress.org/files/2019/05/2-1024x768-768x576.jpg 768w, https://vi.wordpress.org/files/2019/05/2-1024x768-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/3-768x1024-768x1024.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/3-768x1024-768x1024.jpg\" alt=\"\" data-id=\"821\" data-link=\"https://vi.wordpress.org/?attachment_id=821\" class=\"wp-image-821\" srcset=\"https://vi.wordpress.org/files/2019/05/3-768x1024.jpg 768w, https://vi.wordpress.org/files/2019/05/3-768x1024-225x300.jpg 225w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/4-1024x768-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/4-1024x768-1024x768.jpg\" alt=\"\" data-id=\"822\" data-link=\"https://vi.wordpress.org/?attachment_id=822\" class=\"wp-image-822\" srcset=\"https://vi.wordpress.org/files/2019/05/4-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/05/4-1024x768-300x225.jpg 300w, https://vi.wordpress.org/files/2019/05/4-1024x768-768x576.jpg 768w, https://vi.wordpress.org/files/2019/05/4-1024x768-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/5-1024x768-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/5-1024x768-1024x768.jpg\" alt=\"\" data-id=\"823\" data-link=\"https://vi.wordpress.org/?attachment_id=823\" class=\"wp-image-823\" srcset=\"https://vi.wordpress.org/files/2019/05/5-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/05/5-1024x768-300x225.jpg 300w, https://vi.wordpress.org/files/2019/05/5-1024x768-768x576.jpg 768w, https://vi.wordpress.org/files/2019/05/5-1024x768-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/6-1024x576.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/6-1024x576.jpg\" alt=\"\" data-id=\"824\" data-link=\"https://vi.wordpress.org/?attachment_id=824\" class=\"wp-image-824\" srcset=\"https://vi.wordpress.org/files/2019/05/6-1024x576.jpg 1024w, https://vi.wordpress.org/files/2019/05/6-300x169.jpg 300w, https://vi.wordpress.org/files/2019/05/6-768x432.jpg 768w, https://vi.wordpress.org/files/2019/05/6.jpg 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/7-1024x576.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/7-1024x576.jpg\" alt=\"\" data-id=\"825\" data-link=\"https://vi.wordpress.org/?attachment_id=825\" class=\"wp-image-825\" srcset=\"https://vi.wordpress.org/files/2019/05/7-1024x576.jpg 1024w, https://vi.wordpress.org/files/2019/05/7-300x169.jpg 300w, https://vi.wordpress.org/files/2019/05/7-768x432.jpg 768w, https://vi.wordpress.org/files/2019/05/7.jpg 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/05/9-1024x576.jpg\"><img src=\"https://vi.wordpress.org/files/2019/05/9-1024x576.jpg\" alt=\"\" data-id=\"826\" data-link=\"https://vi.wordpress.org/?attachment_id=826\" class=\"wp-image-826\" srcset=\"https://vi.wordpress.org/files/2019/05/9-1024x576.jpg 1024w, https://vi.wordpress.org/files/2019/05/9-300x169.jpg 300w, https://vi.wordpress.org/files/2019/05/9-768x432.jpg 768w, https://vi.wordpress.org/files/2019/05/9.jpg 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li></ul>\n\n\n\n<p style=\"text-align:right\">Nguồn <a href=\"https://nhatrangwordpress.org/meetup/wordpress-translation-day-4-in-nha-trang.html\">WordPress Nha Trang</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://vi.wordpress.org/2019/05/13/wordpress-translation-day-4-in-nha-trang/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Sài Gòn WordPress Meetup #27: WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://vi.wordpress.org/2019/04/18/sai-gon-wordpress-meetup-27-woocommerce/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://vi.wordpress.org/2019/04/18/sai-gon-wordpress-meetup-27-woocommerce/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 18 Apr 2019 04:43:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:26:\"Sài Gòn WordPress Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=773\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:155:\"Vào lúc 18:30 ngày 17/04 vừa qua, Saigon WordPress Meetup lần thứ 27 đã được diễn ra với các chủ đề liên quan đến WooCommerce.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Thien Nguyen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:17236:\"\n<figure class=\"wp-block-image\"><a href=\"https://vi.wordpress.org/files/2019/04/20190417_202200.jpg\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://vi.wordpress.org/files/2019/04/20190417_202200-1024x768.jpg\" alt=\"\" class=\"wp-image-805\" srcset=\"https://vi.wordpress.org/files/2019/04/20190417_202200-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/20190417_202200-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/20190417_202200-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/20190417_202200-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>Vào lúc 18:30 ngày 17/04 vừa qua, Saigon WordPress Meetup lần thứ 27 đã được diễn ra với các chủ đề liên quan đến WooCommerce.</p>\n\n\n\n<span id=\"more-773\"></span>\n\n\n\n<p>Xem lại sự kiện trên Meetup.com</p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\"><div class=\"wp-block-embed__wrapper\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>Saigon WordPress Meetup #27</h3>          <p style=\"margin:5px 0;font-size:16px\">Wednesday, Apr 17, 2019,  6:30 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Officience Vietnam</span><br /><span style=\"font-size:12px;\">16A Lê Hồng Phong, Phường 12, Quận 10 Thanh Pho Ho Chi Minh, VN</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">80 WordPress Lovers Went</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/e/f/2/thumb_286917074.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/d/6/d/thumb_287192109.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/4/9/3/thumb_286958035.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/1/e/c/thumb_287249164.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/4/8/4/thumb_270534404.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/e/8/thumb_285543560.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/3/4/f/a/thumb_286873562.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/0/1/0/thumb_275824112.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/5/4/thumb_286922644.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/4/6/e/5/thumb_280458149.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">(English is below) Thứ tư ngày 17/04, chúng ta sẽ gặp gỡ trong buổi Saigon WordPress meetup với các chủ đề sau: 1&#xfe0f;&#x20e3; Với sự trở lại của anh Jamie Madden, là Lead developer của plugin WC Vendors (https://www.wcvendors.com/). Anh sẽ chia sẻ về đề tài: WooCommerce và các cổng thanh toán online ở Việt Nam Các bạn có thể tìm hiểu thêm về Jamie qua link s&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/Saigon-WordPress/events/260335342/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</div></figure>\n\n\n\n<h3>Chủ đề 1: WooCommerce và các cổng thanh toán tại Việt Nam</h3>\n\n\n\n<p>Chủ đề được chia sẻ bởi Jamie, là tác giả của plugin WC Vendors và cũng là Co-organizer của meetup. Trong chủ đề này, Jamie đã chia sẻ và giải đáp thắc mắc liên quan đến việc sử dụng các cổng thanh toán tại thị trường Việt Nam, những điểm mạnh, yếu của từng cổng thanh toán.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3565-1024x768.jpg\" alt=\"\" class=\"wp-image-784\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3565-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3565-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3565-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3565-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /><figcaption>Jamie đang chia sẻ về WooCommerce và các cổng thanh toán tại Việt Nam</figcaption></figure>\n\n\n\n<h3>Chủ đề 2: WooCommerce và Google Shopping</h3>\n\n\n\n<p>Chủ dề được chia sẻ bởi anh Mười Huỳnh. Chủ đề của anh liên quan đến việc bán hàng trên Google Shopping và cách tích hợp giữa 2 nền tảng WooCommerce và Google Shopping.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3572-1024x768.jpg\" alt=\"\" class=\"wp-image-785\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3572-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3572-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3572-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3572-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /><figcaption>Anh Mười Huỳnh đang chia sẻ về Google Shopping và WooCommerce</figcaption></figure>\n\n\n\n<h3>Địa điểm</h3>\n\n\n\n<p>Officience Vietnam : 16A Lê Hồng Phong, Phường 12, Quận 10</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2018/09/highres_466899254.png\" alt=\"\" class=\"wp-image-684\" srcset=\"https://vi.wordpress.org/files/2018/09/highres_466899254.png 1098w, https://vi.wordpress.org/files/2018/09/highres_466899254-300x211.png 300w, https://vi.wordpress.org/files/2018/09/highres_466899254-768x539.png 768w, https://vi.wordpress.org/files/2018/09/highres_466899254-1024x719.png 1024w\" sizes=\"(max-width: 1098px) 100vw, 1098px\" /></figure>\n\n\n\n<h3>Tìm speaker</h3>\n\n\n\n<p>Một trong những khó khăn của tụi mình đó là tìm kiếm người để chia sẻ cho meetup, vì có người chia sẻ thì mới có thể tổ chức meetup được. Vì vậy mong các bạn cùng đóng góp bằng cách đăng ký chủ đề mà bạn muốn nói ở phần comment, hoặc gửi email về địa chỉ: nguyenvanduocit@gmail.com</p>\n\n\n\n<h3>Tài trợ</h3>\n\n\n\n<p>Xin cảm ơn tới:</p>\n\n\n\n<ul><li><strong><a href=\"https://officience.com/en?utm_source=wordpress_saigon&amp;ref=worddpress_saigon\">Officience Vietnam</a></strong> đã luôn đồng hành và hỗ trợ địa điểm cho meetup.</li><li><strong><a href=\"https://weglot.com/?utm_source=wordpress_saigon&amp;ref=worddpress_saigon\">Weglot</a></strong> đã hỗ trợ kinh phí cho thức ăn.</li></ul>\n\n\n\n<h3>Một vài hình ảnh liên quan</h3>\n\n\n\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3577-1024x1024.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3577-1024x1024.jpg\" alt=\"\" data-id=\"788\" data-link=\"https://vi.wordpress.org/?attachment_id=788\" class=\"wp-image-788\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3577-1024x1024.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3577-150x150.jpg 150w, https://vi.wordpress.org/files/2019/04/IMG_3577-300x300.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3577-768x768.jpg 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3564-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3564-1024x768.jpg\" alt=\"\" data-id=\"789\" data-link=\"https://vi.wordpress.org/?attachment_id=789\" class=\"wp-image-789\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3564-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3564-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3564-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3564-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3565-1-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3565-1-1024x768.jpg\" alt=\"\" data-id=\"790\" data-link=\"https://vi.wordpress.org/?attachment_id=790\" class=\"wp-image-790\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3565-1-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3565-1-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3565-1-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3565-1-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3566-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3566-1024x768.jpg\" alt=\"\" data-id=\"791\" data-link=\"https://vi.wordpress.org/?attachment_id=791\" class=\"wp-image-791\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3566-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3566-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3566-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3566-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3567-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3567-1024x768.jpg\" alt=\"\" data-id=\"792\" data-link=\"https://vi.wordpress.org/?attachment_id=792\" class=\"wp-image-792\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3567-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3567-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3567-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3567-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3568-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3568-1024x768.jpg\" alt=\"\" data-id=\"793\" data-link=\"https://vi.wordpress.org/?attachment_id=793\" class=\"wp-image-793\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3568-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3568-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3568-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3568-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3569-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3569-1024x768.jpg\" alt=\"\" data-id=\"794\" data-link=\"https://vi.wordpress.org/?attachment_id=794\" class=\"wp-image-794\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3569-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3569-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3569-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3569-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3570-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3570-1024x768.jpg\" alt=\"\" data-id=\"795\" data-link=\"https://vi.wordpress.org/?attachment_id=795\" class=\"wp-image-795\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3570-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3570-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3570-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3570-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3571-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3571-1024x768.jpg\" alt=\"\" data-id=\"796\" data-link=\"https://vi.wordpress.org/?attachment_id=796\" class=\"wp-image-796\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3571-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3571-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3571-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3571-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3572-1-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3572-1-1024x768.jpg\" alt=\"\" data-id=\"798\" data-link=\"https://vi.wordpress.org/?attachment_id=798\" class=\"wp-image-798\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3572-1-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3572-1-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3572-1-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3572-1-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3573-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3573-1024x768.jpg\" alt=\"\" data-id=\"799\" data-link=\"https://vi.wordpress.org/?attachment_id=799\" class=\"wp-image-799\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3573-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3573-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3573-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3573-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3574-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3574-1024x768.jpg\" alt=\"\" data-id=\"800\" data-link=\"https://vi.wordpress.org/?attachment_id=800\" class=\"wp-image-800\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3574-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3574-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3574-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3574-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3575-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3575-1024x768.jpg\" alt=\"\" data-id=\"801\" data-link=\"https://vi.wordpress.org/?attachment_id=801\" class=\"wp-image-801\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3575-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3575-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3575-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3575-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"https://vi.wordpress.org/files/2019/04/IMG_3576-1024x768.jpg\"><img src=\"https://vi.wordpress.org/files/2019/04/IMG_3576-1024x768.jpg\" alt=\"\" data-id=\"802\" data-link=\"https://vi.wordpress.org/?attachment_id=802\" class=\"wp-image-802\" srcset=\"https://vi.wordpress.org/files/2019/04/IMG_3576-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/IMG_3576-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/IMG_3576-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/IMG_3576-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure></li></ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://vi.wordpress.org/2019/04/18/sai-gon-wordpress-meetup-27-woocommerce/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Mời dịch tiếng Việt cho WordPress phiên bản 5.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://vi.wordpress.org/2019/04/12/moi-dich-tieng-viet-cho-wordpress-phien-ban-5-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://vi.wordpress.org/2019/04/12/moi-dich-tieng-viet-cho-wordpress-phien-ban-5-2/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Apr 2019 03:45:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Thông báo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"Dịch WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=769\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"Phiên bản WordPress 5.2 dự kiến ra mắt ngày 30/04/2019. Và bạn hoàn toàn có thể đóng góp để nó hỗ trợ tiếng Việt hoàn chỉnh từ ngay hôm nay. Hiện tại số lượng từ chưa dịch trong phiên bản WordPress 5.2 vẫn còn khá nhiều (hơn 100 từ ở bên ngoài frontend và hơn [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1448:\"\n<p>Phiên bản WordPress 5.2 dự kiến ra mắt ngày 30/04/2019. Và bạn hoàn toàn có thể đóng góp để nó hỗ trợ tiếng Việt hoàn chỉnh từ ngay hôm nay.</p>\n\n\n\n<span id=\"more-769\"></span>\n\n\n\n<p>Hiện tại số lượng từ chưa dịch trong phiên bản WordPress 5.2 vẫn còn khá nhiều (hơn 100 từ ở bên ngoài frontend và hơn 300 từ ở trong phần Quản trị).</p>\n\n\n\n<p>Bởi vậy, rất mong sự tham gia của các bạn tình nguyện viên giúp hoàn chỉnh bản dịch tiếng Việt.</p>\n\n\n\n<p>Hướng dẫn tham gia đóng góp cho WordPress:</p>\n\n\n\n<ul><li>Truy cập <a href=\"https://translate.wordpress.org/locale/vi/default/wp/dev/\">địa chỉ</a> chứa bản dịch WordPress tiếng Việt.</li><li>Trên góc trên bên phải, click vào nút Register để đăng ký tài khoản (nếu đã có tài khoản, bạn nhấp vào Login).</li><li>Sau khi đăng ký và xác nhận email, bạn sẽ có thể bắt đầu dịch.</li></ul>\n\n\n\n<p>Bạn có thể bắt đầu dịch bằng một trong hai liên kết sau, nhấp vào phần &#8220;Untranslated&#8221;:</p>\n\n\n\n<p><a href=\"https://translate.wordpress.org/projects/wp/dev/vi/default/\">5.2.x &#8211; Development</a><br><a href=\"https://translate.wordpress.org/projects/wp/dev/admin/vi/default/\">5.2.x &#8211; Administration</a></p>\n\n\n\n<p>Rất hi vọng nhận được đóng góp của các bạn.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://vi.wordpress.org/2019/04/12/moi-dich-tieng-viet-cho-wordpress-phien-ban-5-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Meetup tháng 03 tại Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://vi.wordpress.org/2019/04/01/meetup-thang-03-tai-nha-trang/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://vi.wordpress.org/2019/04/01/meetup-thang-03-tai-nha-trang/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Apr 2019 02:21:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=755\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:373:\"Sáng ngày 31/03/2019 cộng đồng Nha Trang WordPress (NTWP) đã tổ chức buổi meetup &#8220;Nha Trang WordPress Meetup Tháng 03/2019&#8221; Nha Trang WordPress Meetup Tháng 03/2019 là sự kiện đầu tiên của năm 2019 của cộng đồng NTWP, tạo tiền đề cho các sự kiện lớn hơn trong năm như WordPress Translation Day 4 in [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Dat Hoang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6314:\"\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2019/04/55731112_1303937263080971_3029205958166315008_o-1024x768.jpg\" alt=\"\" class=\"wp-image-762\" srcset=\"https://vi.wordpress.org/files/2019/04/55731112_1303937263080971_3029205958166315008_o-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/55731112_1303937263080971_3029205958166315008_o-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/55731112_1303937263080971_3029205958166315008_o-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/55731112_1303937263080971_3029205958166315008_o-440x330.jpg 440w, https://vi.wordpress.org/files/2019/04/55731112_1303937263080971_3029205958166315008_o.jpg 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n\n\n\n<p>Sáng ngày 31/03/2019 cộng đồng Nha Trang WordPress (NTWP) đã tổ chức buổi meetup &#8220;Nha Trang WordPress Meetup Tháng 03/2019&#8221;</p>\n\n\n\n<p>Nha Trang WordPress Meetup Tháng 03/2019 là sự kiện đầu tiên của năm 2019 của cộng đồng NTWP, tạo tiền đề cho các sự kiện lớn hơn trong năm như <a href=\"https://www.facebook.com/events/2219567564770565/\">WordPress Translation Day 4 in Nha Trang</a> vào tháng 5/2019.</p>\n\n\n\n<span id=\"more-755\"></span>\n\n\n\n<p>Chủ đề của buổi meetup tháng 3/2019 chủ yếu thảo luận xoay quanh chủ đề dọn dẹp hình ảnh thừa, ảnh không sử dụng trong WordPress và các cách tối ưu, nén ảnh hiệu quả với WordPress.</p>\n\n\n\n<p>Nha Trang WordPress xin gửi lời cám ơn chân thành đến nhà tài trợ <code>Bạch Kim - bkns.vn</code> đã hỗ trợ cộng đồng Nha Trang WordPress mã giảm giá hosting WordPress chất lượng cao hoàn toàn miễn phí trong 03 tháng.</p>\n\n\n\n<p>Ban tổ chức cũng gửi lời cảm ơn sâu sắc đến toàn thể các anh chị đã dành thời gian tham dự buổi meetup sáng nay. Xin hẹn gặp lại mọi người vào sự kiện Nha Trang WordPress Meetup tháng 4/2019.</p>\n\n\n\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://vi.wordpress.org/files/2019/04/55686694_1303937549747609_9117521704556429312_o-1024x768.jpg\" alt=\"\" data-id=\"756\" data-link=\"https://vi.wordpress.org/?attachment_id=756\" class=\"wp-image-756\" srcset=\"https://vi.wordpress.org/files/2019/04/55686694_1303937549747609_9117521704556429312_o-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/55686694_1303937549747609_9117521704556429312_o-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/55686694_1303937549747609_9117521704556429312_o-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/55686694_1303937549747609_9117521704556429312_o-440x330.jpg 440w, https://vi.wordpress.org/files/2019/04/55686694_1303937549747609_9117521704556429312_o.jpg 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://vi.wordpress.org/files/2019/04/56161590_1303937393080958_2786779698829459456_o-1024x768.jpg\" alt=\"\" data-id=\"757\" data-link=\"https://vi.wordpress.org/?attachment_id=757\" class=\"wp-image-757\" srcset=\"https://vi.wordpress.org/files/2019/04/56161590_1303937393080958_2786779698829459456_o-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/56161590_1303937393080958_2786779698829459456_o-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/56161590_1303937393080958_2786779698829459456_o-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/56161590_1303937393080958_2786779698829459456_o-440x330.jpg 440w, https://vi.wordpress.org/files/2019/04/56161590_1303937393080958_2786779698829459456_o.jpg 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://vi.wordpress.org/files/2019/04/55916059_1303937443080953_5097690558999035904_o-1024x768.jpg\" alt=\"\" data-id=\"758\" data-link=\"https://vi.wordpress.org/?attachment_id=758\" class=\"wp-image-758\" srcset=\"https://vi.wordpress.org/files/2019/04/55916059_1303937443080953_5097690558999035904_o-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/55916059_1303937443080953_5097690558999035904_o-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/55916059_1303937443080953_5097690558999035904_o-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/55916059_1303937443080953_5097690558999035904_o-440x330.jpg 440w, https://vi.wordpress.org/files/2019/04/55916059_1303937443080953_5097690558999035904_o.jpg 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://vi.wordpress.org/files/2019/04/55674567_1303937313080966_7989586249503473664_o-1024x768.jpg\" alt=\"\" data-id=\"759\" data-link=\"https://vi.wordpress.org/?attachment_id=759\" class=\"wp-image-759\" srcset=\"https://vi.wordpress.org/files/2019/04/55674567_1303937313080966_7989586249503473664_o-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/55674567_1303937313080966_7989586249503473664_o-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/55674567_1303937313080966_7989586249503473664_o-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/55674567_1303937313080966_7989586249503473664_o-440x330.jpg 440w, https://vi.wordpress.org/files/2019/04/55674567_1303937313080966_7989586249503473664_o.jpg 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://vi.wordpress.org/files/2019/04/55692788_1303937219747642_4978768828742762496_o-1024x768.jpg\" alt=\"\" data-id=\"760\" data-link=\"https://vi.wordpress.org/?attachment_id=760\" class=\"wp-image-760\" srcset=\"https://vi.wordpress.org/files/2019/04/55692788_1303937219747642_4978768828742762496_o-1024x768.jpg 1024w, https://vi.wordpress.org/files/2019/04/55692788_1303937219747642_4978768828742762496_o-300x225.jpg 300w, https://vi.wordpress.org/files/2019/04/55692788_1303937219747642_4978768828742762496_o-768x576.jpg 768w, https://vi.wordpress.org/files/2019/04/55692788_1303937219747642_4978768828742762496_o-440x330.jpg 440w, https://vi.wordpress.org/files/2019/04/55692788_1303937219747642_4978768828742762496_o.jpg 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></li></ul>\n\n\n\n<p>Bình Minh &#8211; Nha Trang WordPress</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://vi.wordpress.org/2019/04/01/meetup-thang-03-tai-nha-trang/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"WordPress Meetup Hà Nội tháng 12/2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://vi.wordpress.org/2018/12/21/wordpress-meetup-ha-noi-thang-12-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://vi.wordpress.org/2018/12/21/wordpress-meetup-ha-noi-thang-12-2018/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Dec 2018 04:08:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:22:\"Hanoi WordPress Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=739\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:348:\"Đây sẽ là meetup cuối cùng của năm 2018. Meetup sẽ dành thời gian để chia sẻ về Gutenberg (hay Block Editor), trở thành editor mặc định từ WordPress 5.0.&#160; Địa điểm Văn phòng Solis LabTầng 3, Toà nhà Anh Minh, 36 phố Hoàng Cầu&#8211; Vui lòng gửi xe ở phía sau toà nhà. Thời [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1510:\"\n<p>Đây sẽ là meetup cuối cùng của năm 2018. Meetup sẽ dành thời gian để chia sẻ về Gutenberg (hay Block Editor), trở thành editor mặc định từ WordPress 5.0.&nbsp;</p>\n\n\n\n<span id=\"more-739\"></span>\n\n\n\n<h3>Địa điểm</h3>\n\n\n\n<p>Văn phòng Solis Lab<br>Tầng 3, Toà nhà Anh Minh, 36 phố Hoàng Cầu<br>&#8211; Vui lòng gửi xe ở phía sau toà nhà.</p>\n\n\n\n<h3>Thời gian</h3>\n\n\n\n<p><strong>Từ 18.30 đến 20.00<br>Thứ tư, 26/12/2018</strong></p>\n\n\n\n<h3>Chương trình dự kiến</h3>\n\n\n\n<p>18.30 &#8211; 19.00: Ứng dựng Gutenberg trên sản phẩm thực tế &#8211; trình bày bởi <a href=\"https://www.facebook.com/vunamhung\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"Vũ Nam Hưng (opens in a new tab)\">Vũ Nam Hưng</a> (Insight Studio)</p>\n\n\n\n<p>19.00 &#8211; 19.30 Thực nghiệm chuyển đổi website sử dụng Page Builder sang Gutenberg &#8211; trình bày bởi&nbsp;<a target=\"_blank\" href=\"https://www.facebook.com/khoiprodotcom\" rel=\"noreferrer noopener\">Nguyễn Minh Khôi</a>&nbsp;(Solis Lab)&nbsp;</p>\n\n\n\n<p>19.30 &#8211; 20.00 Chia sẻ các vấn đề khác liên quan tới WordPress.&nbsp;</p>\n\n\n\n<p>**Bạn nào có topic muốn chia sẻ thì comment ở dưới nhé.**</p>\n\n\n\n<p>Cảm ơn Solis Lab tiếp tục hỗ trợ địa điểm cho meetup lần này <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://vi.wordpress.org/2018/12/21/wordpress-meetup-ha-noi-thang-12-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Phiên bản WordPress 5.0.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://vi.wordpress.org/2018/12/20/phien-ban-wordpress-5-0-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://vi.wordpress.org/2018/12/20/phien-ban-wordpress-5-0-2/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Dec 2018 02:42:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=735\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"Phiên bản nâng cấp WordPress này cung cấp bản vá cho 73 lỗi. Mục tiêu chính của các bản vá ngay sau khi bản 5.0 ra đời là tối ưu hóa trải nghiệm và tốc độ cho các block trong trình soạn thảo mới Gutenberg đạt tới 330% với hơn 200 block. Thống kê nhanh [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:979:\"\n<figure class=\"wp-block-image\"><img src=\"https://img.shields.io/badge/wpvi-5.0.2-blue.svg\" alt=\"\" /></figure>\n\n\n\n<p>Phiên bản nâng cấp WordPress này cung cấp bản vá cho 73 lỗi. Mục tiêu chính của các bản vá ngay sau khi bản 5.0 ra đời là tối ưu hóa trải nghiệm và tốc độ cho các block trong trình soạn thảo mới Gutenberg đạt tới 330% với hơn 200 block.</p>\n\n\n\n<span id=\"more-735\"></span>\n\n\n\n<h2>Thống kê nhanh về bản patch WordPress 5.0.2</h2>\n\n\n\n<ul><li>Khắc phục 45 lỗi với Block, trong đó có 14 vấn đề về hiệu suất và 31 vấn đề là bug fix.</li><li>17 lỗi liên quan tới Block khác cũng đã được sửa.</li><li>Một số vấn đề đa ngôn ngữ khi tải script cũng đã khắc phục</li></ul>\n\n\n\n<p>Bạn có thể tải về tại trang <a href=\"https://vi.wordpress.org/download/\">Downloads</a> hoặc nâng cấp trong Trang quản trị của website.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://vi.wordpress.org/2018/12/20/phien-ban-wordpress-5-0-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"WordPress 5.0 “Bebo”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://vi.wordpress.org/2018/12/07/wordpress-5-0-bebo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://vi.wordpress.org/2018/12/07/wordpress-5-0-bebo/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 07 Dec 2018 09:40:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Bản nâng cấp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=727\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"Gutenberg đã chính thức phát hành cùng phiên bản WordPress 5.0 vào ngày 06/12/2018. Sau đây là những điểm đáng lưu ý của phiên bản có cải tiến đáng kể này. Xây dựng nội dung đa dạng hơn với &#8220;Block&#8221; Gutenberg cung cấp trải nghiệm về &#8220;block&#8221; (khối) rõ ràng hơn về mặt bố cục. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3694:\"\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2018/12/wp-gutenberg.jpg\" alt=\"\" class=\"wp-image-731\" srcset=\"https://vi.wordpress.org/files/2018/12/wp-gutenberg.jpg 768w, https://vi.wordpress.org/files/2018/12/wp-gutenberg-300x150.jpg 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></figure>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://img.shields.io/badge/wpvi-5.0-blue.svg\" alt=\"\" /></figure>\n\n\n\n<p>Gutenberg đã chính thức phát hành cùng phiên bản WordPress 5.0 vào ngày 06/12/2018. Sau đây là những điểm đáng lưu ý của phiên bản có cải tiến đáng kể này.</p>\n\n\n\n<span id=\"more-727\"></span>\n\n\n\n<h2>Xây dựng nội dung đa dạng hơn với &#8220;Block&#8221;</h2>\n\n\n\n<p>Gutenberg cung cấp trải nghiệm về &#8220;block&#8221; (khối) rõ ràng hơn về mặt bố cục. Thay vì một nội dung tràn cứng, nay bạn đã có thể chia cột, thêm media, thêm các tuỳ biến nội dung mới cho bài viết phong phú hơn, bao gồm cả &#8220;thơ&#8221;. Mỗi loại nội dung bản thân sẽ là một &#8220;block&#8221;.</p>\n\n\n\n<h2>Danh sách các khối đã hỗ trợ</h2>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2018/12/wordpress-gutenberg-blocks.png\" alt=\"\" class=\"wp-image-730\" srcset=\"https://vi.wordpress.org/files/2018/12/wordpress-gutenberg-blocks.png 702w, https://vi.wordpress.org/files/2018/12/wordpress-gutenberg-blocks-300x288.png 300w\" sizes=\"(max-width: 702px) 100vw, 702px\" /></figure>\n\n\n\n<p>Ngoài những block cung cấp sẵn, tính năng &#8220;Block tái sử dụng&#8221; cũng đã có mặt, cho phép bạn tạo các khối tuỳ biến riêng của mình và tái sử dụng nó tại các trang khác dễ dàng.</p>\n\n\n\n<h2>Giao diện mới Twenty Nineteen</h2>\n\n\n\n<p>Giao diện do nhóm Core phát triển nhằm phát huy tất cả sức mạnh của Gutenberg. Trông dễ nhìn, bố cục tối giản nhưng không kém phần hiện đại.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2018/12/twenty-nineteen.jpg\" alt=\"\" class=\"wp-image-729\" srcset=\"https://vi.wordpress.org/files/2018/12/twenty-nineteen.jpg 768w, https://vi.wordpress.org/files/2018/12/twenty-nineteen-300x200.jpg 300w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></figure>\n\n\n\n<p>Nếu bạn quan tâm và muốn tham gia dịch giao diện này, hãy làm <a rel=\"noreferrer noopener\" aria-label=\"Nếu bạn quan tâm và muốn tham gia dịch giao diện này, hãy làm tại đây nhé.   (opens in a new tab)\" href=\"https://translate.wordpress.org/locale/vi/default/wp-themes/twentynineteen\" target=\"_blank\">tại đây</a> nhé.  </p>\n\n\n\n<h2>Bạn chưa sẵn sàng sử dụng Gutenberg?</h2>\n\n\n\n<p>Hãy tải <a href=\"https://vi.wordpress.org/plugins/classic-editor/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"Hãy tải plugin Classic Editor về và cài vào, Gutenberg sẽ không còn hoạt động trên website của bạn nữa nhé.\n (opens in a new tab)\">plugin Classic Editor</a> về và cài vào, Gutenberg sẽ không còn hoạt động trên website của bạn nữa nhé.<br></p>\n\n\n\n<h2>Các tài liệu tham khảo dành cho Gutenberg<br></h2>\n\n\n\n<p>Dành cho lập trình viên: <a rel=\"noreferrer noopener\" aria-label=\"Dành cho lập trình viên: Gutenberg Handbook\n (opens in a new tab)\" href=\"https://wordpress.org/gutenberg/handbook/\" target=\"_blank\">Gutenberg Handbook</a></p>\n\n\n\n<p><em>Nguồn: </em><a rel=\"noreferrer noopener\" aria-label=\"Nguồn: WPHub (opens in a new tab)\" href=\"https://wphub.vn/wordpress50/\" target=\"_blank\"><em>WPHub</em></a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://vi.wordpress.org/2018/12/07/wordpress-5-0-bebo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Meetup tháng 10/2018 tại Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://vi.wordpress.org/2018/10/15/wordpress-meetup-thang-10-2018-tai-nha-trang/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://vi.wordpress.org/2018/10/15/wordpress-meetup-thang-10-2018-tai-nha-trang/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Oct 2018 04:04:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=719\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:373:\"✨ Thời gian: 08h30 sáng ngày 21/10/2018✨ Địa điểm: Hội trường Thành Đoàn Thành Phố Nha Trang18A Hoàng Hoa Thám, Lộc Thọ, Thành phố Nha Trang, Khánh Hòa 📢 CHỦ ĐỀ DỰ KIẾN: 1. Xây Dựng Website Bán Hàng Trực Tuyến Với WordPress và WoocommerceTrình bày: Mr. Bảo Lộc &#8211; Tripaway 2. Việt hóa giao [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Thien Nguyen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2928:\"\n<figure class=\"wp-block-image\"><a href=\"https://vi.wordpress.org/files/2018/10/43412346_1963234673719625_1942733799561363456_o.jpg\"><img src=\"https://vi.wordpress.org/files/2018/10/43412346_1963234673719625_1942733799561363456_o.jpg\" alt=\"\" class=\"wp-image-721\" srcset=\"https://vi.wordpress.org/files/2018/10/43412346_1963234673719625_1942733799561363456_o.jpg 2048w, https://vi.wordpress.org/files/2018/10/43412346_1963234673719625_1942733799561363456_o-300x165.jpg 300w, https://vi.wordpress.org/files/2018/10/43412346_1963234673719625_1942733799561363456_o-768x423.jpg 768w, https://vi.wordpress.org/files/2018/10/43412346_1963234673719625_1942733799561363456_o-1024x564.jpg 1024w\" sizes=\"(max-width: 2048px) 100vw, 2048px\" /></a></figure>\n\n\n\n<p></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Thời gian: 08h30 sáng ngày 21/10/2018<br><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Địa điểm: Hội trường Thành Đoàn Thành Phố Nha Trang<br>18A Hoàng Hoa Thám, Lộc Thọ, Thành phố Nha Trang, Khánh Hòa</p>\n\n\n\n<span id=\"more-719\"></span>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f4e2.png\" alt=\"📢\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> CHỦ ĐỀ DỰ KIẾN:</p>\n\n\n\n<p>1. Xây Dựng Website Bán Hàng Trực Tuyến Với WordPress và Woocommerce<br>Trình bày: Mr. Bảo Lộc &#8211; Tripaway</p>\n\n\n\n<p>2. Việt hóa giao diện, plugin và cách bảo tồn khi nâng cấp<br>Trình bày:  Mr. Lê Quang Huy</p>\n\n\n\n<p>3. Sao Lưu Và Khôi Phục Website WordPress Khi Gặp Sự Cố<br>Trình bày:  Mr. Minh Nguyễn &#8211; Minh Duy Solutions</p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f4e2.png\" alt=\"📢\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> ĐĂNG KÝ THAM DỰ MEETUP: <a target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fgoo.gl%2Fforms%2FDCWVInHFgtWg2GPg2&amp;h=AT03S0GCxKcCgkuUcIGKadENEiAAdprfxa60dHxbOK9qNvIcgXB9OdglkWSHJAmqFsLovy7meJPVbwDUjHc6dVLq9ixH3rhNQHr_hlrWoIT1fNM4F29oy9senLJIrvrsFEEi\" rel=\"noreferrer noopener\">https://goo.gl/forms/DCWVInHFgtWg2GPg2</a></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f4e2.png\" alt=\"📢\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> FAQ<br>&#8211;\n Nha Trang WordPress Meetup là hoạt động offline hàng tháng nhằm phát \ntriển cộng đồng yêu thích và sử dụng WordPress tại Nha Trang<br>&#8211; Nha Trang WordPress Meetup là chương trình hoàn toàn miễn phí, không thu phí vào cổng đối với người tham gia.<br>&#8211; Nha Trang WordPress Meetup lấy chi phí tổ chức từ nhà tài trợ hoặc quyên góp từ thành viên tham dự.\n\n</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://vi.wordpress.org/2018/10/15/wordpress-meetup-thang-10-2018-tai-nha-trang/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Meetup tháng 09/2018 tại Nha Trang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://vi.wordpress.org/2018/09/07/wordpress-meetup-thang-09-2018-tai-nha-trang/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://vi.wordpress.org/2018/09/07/wordpress-meetup-thang-09-2018-tai-nha-trang/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 07 Sep 2018 07:25:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=692\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:353:\"Ngày 23 28 tháng 09 năm 2018 Cộng đồng Nha Trang WordPress sẽ tổ chức một buổi meetup để toàn thể các fan yêu thích WordPress tại Nha Trang có thể giao lưu trao đổi kinh nghiệm sử dụng WordPress. Thời gian: 08h30 sáng ngày 28/09/2018 Địa điểm: Công Ty CP Giáo Dục Việt Nam &#8211; CN [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7239:\"\n<p>Ngày <del>23</del> 28 tháng 09 năm 2018 Cộng đồng Nha Trang WordPress sẽ tổ chức một buổi meetup để toàn thể các fan yêu thích WordPress tại Nha Trang có thể giao lưu trao đổi kinh nghiệm sử dụng WordPress.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2018/09/nha-trang.png\" alt=\"\" class=\"wp-image-715\" srcset=\"https://vi.wordpress.org/files/2018/09/nha-trang.png 2048w, https://vi.wordpress.org/files/2018/09/nha-trang-300x184.png 300w, https://vi.wordpress.org/files/2018/09/nha-trang-768x470.png 768w, https://vi.wordpress.org/files/2018/09/nha-trang-1024x627.png 1024w\" sizes=\"(max-width: 2048px) 100vw, 2048px\" /></figure>\n\n\n\n<span id=\"more-692\"></span>\n\n\n\n<ul><li><strong>Thời gian:</strong> 08h30 sáng ngày 28/09/2018</li><li><strong>Địa điểm:</strong> Công Ty CP Giáo Dục Việt Nam &#8211; CN Nha Trang, 33 Đường B1, KĐT Vĩnh Điềm Trung, Nha Trang.</li></ul>\n\n\n\n<ul><li><strong><del>Thời gian:</del></strong><del> 08h30 sáng ngày 23/09/2018</del></li><li><del><strong>Địa điểm:</strong> EVi cafe &amp; co-working space &#8211; 48 Lý Thánh Tôn, Tp,Nha Trang</del></li></ul>\n\n\n\n<p>Với\n mong muốn chương trình mang tính kết nối cộng đồng hơn, BTC rất mong \ncác bạn có thể dành thời gian đăng ký làm diễn giả để chia sẻ với mọi \nngười những kinh nghiệm, thủ thuật trong quá trình sử dụng WordPress của\n mình đến với mọi người. Các bạn có thể chia sẻ bất cứ chủ để gì, miễn \nlà liên quan đến WordPress đều được.</p>\n\n\n\n<h3><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f4e2.png\" alt=\"📢\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> CHỦ ĐỀ:</h3>\n\n\n\n<ol><li>Progressive Web App và ứng dụng vào WordPress<br />\nTrình bày: Mr.Minh &#8211; Minh Duy Solutions</li><li>Xây Dựng Ứng Dụng Bán Hàng Trực Tuyến Trên Android Với WordPress, Woocommerce và Ionic Framework<br />\nTrình bày: Mr. Bảo Lộc &#8211; Tripaway</li><li>Một Số Giải Pháp Dựng Landing Page Nhanh Với WordPress – Minh Nguyễn &#8211; Minh Duy Solutions</li></ol>\n\n\n\n<p>Để đăng ký làm tham gia meetup, vui lòng đăng ký qua link sau:<br /><a target=\"_blank\" href=\"https://goo.gl/forms/3GUYDUspni1kVjRQ2\" rel=\"noreferrer noopener\">https://goo.gl/forms/3GUYDUspni1kVjRQ2</a></p>\n\n\n\n<p>Ngoài ra, bạn có thể theo dõi thông tin về sự kiện qua: </p>\n\n\n\n<p>Meetup.com: </p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\"><div class=\"wp-block-embed__wrapper\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>Nha Trang WordPress Meetup Tháng 9/2018</h3>          <p style=\"margin:5px 0;font-size:16px\">Friday, Sep 28, 2018,  8:30 AM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Trung Tâm Đào Tạo Nghề &#8211; Trường Cao Đẳng Văn Lang</span><br /><span style=\"font-size:12px;\">Số 33 đường B1 Nha Trang, ks</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">4 Thành viên Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/2/0/b/7/thumb_280868375.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/8/b/2/thumb_280950898.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/c/e/f/thumb_278847887.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/f/b/c/thumb_227920892.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Xin chào toàn thể các bạn yêu mến WordPress tại Nha Trang! Ngày 28 tháng 09 năm 2018 Cộng đồng Nha Trang WordPress sẽ tổ chức một buổi meetup để toàn thể các fan yêu thích WordPress tại Nha Trang có thể giao lưu trao đổi kinh nghiệm sử dụng WordPress. <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Thời gian: 08h30 sáng ngày 28/09/2018 <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Địa điểm: Công Ty CP Giáo Dục Việt Nam &#8211; CN Nha Trang Số&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/Nha-Trang-WordPress/events/253995703/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</div><figcaption>Theo dõi sự kiện qua Meetup.com</figcaption></figure>\n\n\n\n<p>Hoặc qua Facebook Event: <a href=\"https://www.facebook.com/events/247276932596305/\">https://www.facebook.com/events/247276932596305/</a></p>\n\n\n\n<p>Xin trân trọng cảm ơn!</p>\n\n\n\n<h4>Câu hỏi thường gặp</h4>\n\n\n\n<p>&#8211; Nha Trang WordPress Meetup là hoạt động offline hàng tháng nhằm phát triển cộng đồng yêu thích và sử dụng WordPress tại Nha Trang<br />&#8211; Nha Trang WordPress Meetup là chương trình hoàn toàn miễn phí, không thu phí vào cổng đối với người tham gia.<br />&#8211; Nha Trang WordPress Meetup lấy chi phí tổ chức từ nhà tài trợ hoặc quyên góp từ thành viên tham dự.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://vi.wordpress.org/2018/09/07/wordpress-meetup-thang-09-2018-tai-nha-trang/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Meetup tháng 09/2018 tại Hà Nội\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://vi.wordpress.org/2018/09/07/wordpress-meetup-thang-09-2018-tai-ha-noi/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://vi.wordpress.org/2018/09/07/wordpress-meetup-thang-09-2018-tai-ha-noi/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 07 Sep 2018 04:45:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:22:\"Hanoi WordPress Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=688\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:333:\"Mùa thu tại Hà Nội thật đẹp và ấm áp. Và đó cũng là thời điểm chúng tôi cho rằng những người yêu mến #WordPress tại Hà Nội nên dành thời gian gặp gỡ, trao đổi và chia sẻ cho nhau biết những trải nghiệm mới nhất của mình. Chúng tôi hi vọng bạn có [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5840:\"\n<figure class=\"wp-block-image\"><img src=\"https://vi.wordpress.org/files/2018/09/20_motorboat.jpg\" alt=\"\" class=\"wp-image-690\" srcset=\"https://vi.wordpress.org/files/2018/09/20_motorboat.jpg 1200w, https://vi.wordpress.org/files/2018/09/20_motorboat-300x75.jpg 300w, https://vi.wordpress.org/files/2018/09/20_motorboat-768x192.jpg 768w, https://vi.wordpress.org/files/2018/09/20_motorboat-1024x256.jpg 1024w\" sizes=\"(max-width: 1200px) 100vw, 1200px\" /><figcaption>(Ảnh: Google Forms)</figcaption></figure>\n\n\n\n<p>Mùa thu tại Hà Nội thật đẹp và ấm áp. Và đó cũng là thời điểm chúng tôi cho rằng những người yêu mến #WordPress tại Hà Nội nên dành thời gian gặp gỡ, trao đổi và chia sẻ cho nhau biết những trải nghiệm mới nhất của mình.</p>\n\n\n\n<span id=\"more-688\"></span>\n\n\n\n<p>Chúng tôi hi vọng bạn có thể sắp xếp thời gian tham dự một buổi Meetup do những người phụ trách cộng đồng WordPress tổ chức trong tháng 09/2018 này.</p>\n\n\n\n<ul><li>Thời gian: 14:00 đến 17:00 ngày 22/09/2018</li><li>Địa điểm: Văn phòng SOLIS LAB, Tầng 3 toà nhà Anh Minh, số 36 Hoàng Cầu, Đống Đa, Hà Nội<br /></li><li>Các chủ đề sẽ nhắc đến: Gutenberg, Taxonomies &amp; Custom Post Types, ứng dụng WordPress trông mô hình website bất động sản,&#8230;</li></ul>\n\n\n\n<p>Do quy mô sự kiện nhỏ với số lượng người tối đa là 30, chúng tôi hi vọng biết bạn là ai bằng việc đề nghị những ai tham gia đăng ký trong form nhập sau đây:</p>\n\n\n\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://docs.google.com/forms/d/e/1FAIpQLSeFMSi1lcLZBHVRXOI8rTf0228V6AeMR7CtxzgIPJjKTw0sug/viewform?usp=sf_link\">Đăng ký tham dự Meetup</a></div>\n\n\n\n<p><em>*Chúng tôi sẽ gửi các thông báo về thời gian, địa điểm nếu có thay đổi qua email. Các bạn sẽ nhận được email xác nhận tham gia sự kiện.</em></p>\n\n\n\n<p>Ngoài ra, bạn có thể theo dõi thông tin về sự kiện qua:</p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>WordPress Meetup Hà Nội tháng 09/2018</h3>          <p style=\"margin:5px 0;font-size:16px\">Saturday, Sep 22, 2018,  2:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\"> SOLIS LAB Office</span><br /><span style=\"font-size:12px;\">Tầng 3 tòa nhà Anh Minh, Số 36 Hoàng Cầu &#8211; Đống Đa Hà Nội, al</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">3 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/1/3/4/thumb_178117172.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/c/2/2/thumb_231487202.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/4/b/6/7/thumb_264799303.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">ĐĂNG KÍ THAM GIA: https://docs.google.com/forms/d/e/1FAIpQLSeFMSi1lcLZBHVRXOI8rTf0228V6AeMR7CtxzgIPJjKTw0sug/viewform?usp=sf_link Facebook:  https://www.facebook.com/events/1990292664354869/ THỜI GIAN:[masked] ngày 22/9/2018 ĐỊA ĐIỂM: SOLIS LAB Office &#8211; Tầng 3 tòa nhà Anh Minh &#8211; số 36 Hoàng Cầu &#8211; Đống Đa &#8211; Hà Nội SUBJECT: WordPress và các ứng d&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/hanoi-wordpress/events/254469443/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n<figcaption>Theo dõi qua Meetup.com</figcaption></figure>\n\n\n\n<p>Hoặc qua trang <a href=\"https://www.facebook.com/events/1990292664354869/\" target=\"_blank\" rel=\"noopener noreferrer\">Event sự kiện tại đây</a> trên Facebook.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://vi.wordpress.org/2018/09/07/wordpress-meetup-thang-09-2018-tai-ha-noi/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://vi.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 08 Oct 2019 05:51:13 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 10 May 2019 09:04:08 GMT\";s:4:\"link\";s:61:\"<https://vi.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(806, '_transient_timeout_feed_mod_b748b176461a07a256071902477d41d7', '1570557003', 'no'),
(807, '_transient_feed_mod_b748b176461a07a256071902477d41d7', '1570513803', 'no'),
(808, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1570557005', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(809, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: GNU Project Maintainers Move to Oust Richard Stallman from Leadership\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94714\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/gnu-project-maintainers-move-to-oust-richard-stallman-from-leadership\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5486:\"<p>GNU Project maintainers are working to oust Richard Stallman from his position as head of the organization. In a joint <a href=\"https://guix.gnu.org/blog/2019/joint-statement-on-the-gnu-project/\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> published yesterday morning, a collection of 22 GNU maintainers and developers thanked Stallman for his work and declared that he can no longer represent the project:</p>\n<blockquote><p>We, the undersigned GNU maintainers and developers, owe a debt of gratitude to Richard Stallman for his decades of important work in the free software movement. Stallman tirelessly emphasized the importance of computer user freedom and laid the foundation for his vision to become a reality by starting the development of the GNU operating system. For that we are truly grateful.</p>\n<p>Yet, we must also acknowledge that Stallman’s behavior over the years has undermined a core value of the GNU project: the empowerment of all computer users. GNU is not fulfilling its mission when the behavior of its leader alienates a large part of those we want to reach out to.</p>\n<p>We believe that Richard Stallman cannot represent all of GNU.</p></blockquote>\n<p><a href=\"https://www.stallman.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Stallman&#8217;s personal website</a> continues to prominently display his intentions to remain in the leadership role. He added the header to his site, following the publication of remarks he made regarding a 17-year old victim of sex trafficker Jeffrey Epstein, which precipitated his <a href=\"https://wptavern.com/gpl-author-richard-stallman-resigns-from-free-software-foundation\" rel=\"noopener noreferrer\" target=\"_blank\">resignation from both MIT and the Free Software Foundation</a>:</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/Screen-Shot-2019-10-07-at-9.44.17-PM.png?ssl=1\"><img /></a></p>\n<p>The Stallman saga has continued to grow stranger in the aftermath of his resignations, as many were concerned that he would be homeless after his website featured a notice that he was &#8220;<a href=\"https://web.archive.org/web/20190929052858/https://stallman.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Seeking Housing</a>,&#8221; accompanied by a <a href=\"https://web.archive.org/web/20190929045948/https://stallman.org/seeking-housing.html\" rel=\"noopener noreferrer\" target=\"_blank\">link</a> leading to his specific requirements for a temporary residence. His personal site was also reportedly <a href=\"http://techrights.org/2019/09/29/fsf-defaced-rms/\" rel=\"noopener noreferrer\" target=\"_blank\">vandalized</a> nine days ago with a message that he was stepping down from the GNU.</p>\n<p>The defacement with the false GNU resignation message was reverted shortly thereafter on September 30, and replaced with the header saying he continues to be &#8220;Chief GNUisance of the GNU Project&#8221; with no intention of stopping soon. Stallman has not yet publicly acknowledged the statement from the GNU maintainers. He has also not yet responded to our request for comment.</p>\n<p>Yesterday the Free Software Foundation (FSF) published a <a href=\"https://www.fsf.org/news/fsf-and-gnu\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> indicating it was re-evaluating its working relationship with the GNU project, which has provided some of its technical infrastructure, fiscal sponsorship, and copyright assignment:</p>\n<blockquote><p>GNU decision-making has largely been in the hands of GNU leadership. Since RMS resigned as president of the FSF, but not as head of GNU (&#8220;Chief GNUisance&#8221;), the FSF is now working with GNU leadership on a shared understanding of the relationship for the future. As part of that, we invite comments from free software community members.</p></blockquote>\n<p>Stallman responded the next day, indicating he wanted to work with FSF on restructuring the relationship between the two organizations:</p>\n<blockquote><p>I recently resigned as president of the FSF, but the FSF continues to provide several forms of crucial support for the GNU Project.  As head of the GNU Project, I will be working with the FSF on how to structure<br />\nthe GNU Project&#8217;s relationship with the FSF in the future.</p></blockquote>\n<p>The FSF maintains some critical responsibilities in that it currently <a href=\"https://en.wikipedia.org/wiki/Free_Software_Foundation#History\" rel=\"noopener noreferrer\" target=\"_blank\">holds the copyrights to enforce the GPL</a>. Stallman has recently called on people to <a href=\"http://techrights.org/2019/10/01/what-stallman-wants/\" rel=\"noopener noreferrer\" target=\"_blank\">continue supporting the FSF&#8217;s work</a>, despite his resignation from the organization.</p>\n<p>The small contingency of GNU project maintainers who penned the <a href=\"https://guix.gnu.org/blog/2019/joint-statement-on-the-gnu-project/\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> published yesterday seem to be on the same page with FSF in its rejection of Stallman&#8217;s leadership. Their message concludes with their intention to overhaul the leadership of the free software movement to be more inclusive of the people who have been alienated by Stallman&#8217;s behavior over the years:</p>\n<p>&#8220;We think it is now time for GNU maintainers to collectively decide about the organization of the project. The GNU Project we want to build is one that everyone can trust to defend their freedom.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Oct 2019 04:33:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Google Chrome Announces Rollout Plan for Blocking Mixed Content Beginning January 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94672\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wptavern.com/google-chrome-announces-rollout-plan-for-blocking-mixed-content-beginning-january-2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3405:\"<p>The Google Security Team has <a href=\"https://security.googleblog.com/2019/10/no-more-mixed-messages-about-https_3.html\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> a timeline for when Chrome will begin blocking <a href=\"https://developers.google.com/web/fundamentals/security/prevent-mixed-content/what-is-mixed-content\" rel=\"noopener noreferrer\" target=\"_blank\">mixed content</a> by default in order to ensure that HTTPS browsing is more secure. Mixed content refers to HTTPS pages that load resources, such as images, videos, stylesheets, and scripts, over HTTP.</p>\n<p>The gradual rollout will begin with Chrome 79, which is scheduled for release in December 2019. The browser already blocks mixed scripts and iframes, but this release will add a new setting (that can be toggled on or off) for users to unblock it on a per-site basis.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/site-settings-unblock-mixed-content.png?ssl=1\"><img /></a></p>\n<p>The next phase of the rollout will progress with Chrome 80, due in January 2020, where mixed audio and video resources will get auto-upgraded to HTTPS. If they fail to load over HTTPS, Chrome will automatically block them. Mixed images will still load but Chrome will display a “Not Secure” warning in the omnibox next to the URL.</p>\n<p>The last phase of the rollout is planned for February 2020. Along with the release of Chrome 81, mixed content images will bet auto-upgraded to HTTPS and Chrome will block them if they fail to load.</p>\n<p>The Google Security Team reports that Chrome users now spend more than 90% of their browsing time on HTTPS on both desktop and mobile. The plan to begin blocking mixed content is targeted at addressing insecure holes in SSL implementations of sites that have already made the switch to HTTPS.</p>\n<p>WordPress site owners have plenty of time to ensure all their resources load over HTTPS. The official plugin directory has <a href=\"https://wordpress.org/plugins/search/mixed+content/\" rel=\"noopener noreferrer\" target=\"_blank\">several popular plugins</a> that can assist with fixing problems with mixed content. <a href=\"https://wordpress.org/plugins/really-simple-ssl/\" rel=\"noopener noreferrer\" target=\"_blank\">Really Simple SSL</a>, a plugin that is active on more than 3 million sites, has a built-in mixed content scan that shows users what they need to do if they aren&#8217;t seeing the green lock in the omnibar yet. It also includes a &#8220;mixed content fixer&#8221; for the back-end.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/mixed-content-scan-really-simple-ssl.png?ssl=1\"><img /></a></p>\n<p>Other popular plugins, such as <a href=\"https://wordpress.org/plugins/http-https-remover/\" rel=\"noopener noreferrer\" target=\"_blank\">SSL Mixed Content Fix</a> (20k active installs) and <a href=\"https://wordpress.org/plugins/ssl-insecure-content-fixer/\" rel=\"noopener noreferrer\" target=\"_blank\">SSL Insecure Content Fixer</a> (300k active installs) are focused specifically on fixing these issues and may assist in making other installed plugins compatible with HTTPS. They include tools that will diagnose insecure content and automatically perform basic fixes. The SSL Insecure Content Fixer plugin is also compatible with WordPress multisite and includes a network settings page to set defaults for the entire network.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Oct 2019 19:09:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: U.S. Supreme Court Denies Domino’s Appeal to Determine Whether Websites Must Be Accessible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94674\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"https://wptavern.com/u-s-supreme-court-denies-dominos-appeal-to-determine-whether-websites-must-be-accessible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6872:\"<p>In what is seen as a win for accessibility advocates, the U.S. Supreme Court denied Domino&#8217;s petition to appeal a lower-court decision on whether the pizza chain&#8217;s website and mobile app must be accessible to those with disabilities. The earlier U.S. 9th Circuit court <a href=\"http://cdn.ca9.uscourts.gov/datastore/opinions/2019/01/15/17-55504.pdf\">ruled that websites fall under</a> Title III of the American with Disabilities Act (ADA).</p>\n\n\n\n<p>The original case was brought forth by Guillermo Robles, a blind man, who claimed the Domino&#8217;s website and app did not allow him to place an order in 2016.  Robles, like many other people with disabilities, relies on screen-reader software to use the web.  Despite using such software, he was not able to make an order.</p>\n\n\n\n<p>The primary issue of the case was whether the ADA applied to websites or apps in the same way that they applied to brick-and-mortar locations.  Title III specifically points out public places of accommodation but not websites.</p>\n\n\n\n<p>The specific <a href=\"https://www.ada.gov/regs2010/titleIII_2010/titleIII_2010_regulations.htm\">section of the ADA</a> related to the case reads as follows:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Section 36.201(a) contains the general rule that prohibits discrimination on the basis of disability in the full and equal enjoyment of goods, services, facilities, privileges, advantages, and accommodations of any place of public accommodation.</p><p>Full and equal enjoyment means the right to participate and to have an equal opportunity to obtain the same results as others to the extent possible with such accommodations as may be required by the Act and these regulations. It does not mean that an individual with a disability must achieve an identical result or level of achievement as persons without a disability.</p></blockquote>\n\n\n\n<p>The 9th Circuit decided the ADA also applied to businesses on the internet.</p>\n\n\n\n<p>There were three key issues in the case: whether the ADA applied to the website and app, whether Domino&#8217;s had fair notice to comply, and whether the court or the Department of Justice (DOJ) should decide the case.</p>\n\n\n\n<p>The DOJ is the body that regulates the ADA. Since it was signed into law in 1990, the DOJ has not created specific guidelines for how businesses can ensure their websites are within the law.</p>\n\n\n\n<p>One argument is that it would have been cheaper and easier for Domino&#8217;s to follow accessibility standards such as the Web Content Accessibility Guidelines (WCAG).  Such arguments don&#8217;t address the need for meaningful regulations from a governing body.  The WCAG are not legal guidelines in the U.S. However, the 9th Circuit ruled that the lack of guidelines does not remove Domino&#8217;s responsibility.</p>\n\n\n\n<p>Circuit Judge John B. Owens wrote in the <a href=\"https://www.supremecourt.gov/DocketPDF/18/18-1539/102950/20190613153344483_DominosPetitionAppendix.pdf\">9th Circuit decision</a>, &#8220;While we understand why Domino&#8217;s wants DOJ to issue specific guidelines for website and app accessibility, the Constitution only requires that Domino&#8217;s receive fair notice of its legal duties, not a blueprint for compliance with its statutory obligations.&#8221;</p>\n\n\n\n<p>The lack of such regulations is why this case was important from Domino&#8217;s standpoint.  While they lost the case, it may further push the need for more specific guidelines for businesses, both large and small, to follow.</p>\n\n\n\n<p>The lack of specific regulations could also be seen as <em>a feature rather than a bug</em>, to use a developer phrase.  Government-specific rules are often slow to keep up with the changing nature of the web.  Guidelines that apply one day may need to change soon thereafter.  It also leaves businesses the ability to make their websites accessible via a method of their choice rather than limiting what they can do to potentially bureaucratic rules that are out of touch with the modern web.</p>\n\n\n\n<p>At the same time, it could leave smaller business owners without large legal and website development budgets wondering if they could be looking at lawsuits in the future.  Courts were flooded with <a href=\"https://www.3playmedia.com/2019/06/12/2018sweb-accessibility-lawsuits/\">2,285 accessibility lawsuits in 2018</a>, which was nearly triple the 814 cases in 2017.</p>\n\n\n\n<h2>What Does This Mean for Website owners in the U.S.?</h2>\n\n\n\n<p>In terms of the case, the Supreme Court didn&#8217;t make a ruling.  They denied Domino&#8217;s petition and left the decision of the 9th Circuit in place, which covers much of the western U.S.  In the coming years, more cases will make their way through the courts.  More than likely, case law will continue becoming stronger in favor of making websites compliant with the ADA.</p>\n\n\n\n<p>If you run an online business, it&#8217;s past time to make sure your website is accessible.  It could be years before the current law is amended or new ones are written on the legislative level.  The winds of change will likely not favor those with inaccessible websites as more court decisions come down.</p>\n\n\n\n<p>In a nutshell, businesses with websites, apps, or other online presences need to make sure all people have access to their goods or services.  While there are no specific guidelines in the U.S., <a href=\"https://www.w3.org/WAI/standards-guidelines/wcag/\">WCAG</a> is the largely agreed-upon standards internationally.</p>\n\n\n\n<p>If you&#8217;re a small business owner using WordPress, you should start with a WordPress <a href=\"https://wordpress.org/themes/tags/accessibility-ready/\">theme labeled as accessibility-ready</a>.  It is worth noting that &#8220;accessibility-ready&#8221; does not mean that your website will automatically become accessible.  It simply means that the WordPress theme meets a minimum number of accessibility guidelines.  Custom content on your website should also follow the same guidelines.</p>\n\n\n\n<p>Accessibility is not a set-it-and-forget-it type of thing.  It&#8217;s something that business owners need to continually evaluate and make sure that all their customers, regardless of how that person accesses the internet, can enjoy the same services equally.</p>\n\n\n\n<p>The official theme review team is working through a long-term plan to <a href=\"https://wptavern.com/wordpress-theme-review-team-initiates-new-long-term-plan-to-make-all-wordpress-org-themes-accessible\">make all themes accessible</a> at WordPress.org.  Many theme businesses outside of WordPress.org also comply with those same guidelines.  If purchasing a theme, you should check with the business beforehand.</p>\n\n\n\n<p>As always, if you&#8217;re unsure whether your website meets legal guidelines, you&#8217;ll need to consult a lawyer who specializes in website accessibility.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Oct 2019 18:02:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WordPress.org blog: People of WordPress: Alice Orru\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7288\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/news/2019/10/people-of-wordpress-alice-orru/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8390:\"<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Meet Alice Orru, from Sardinia, Italy.</strong></h2>\n\n\n\n<p>Alice Orru was born in Sardinia, an island in the middle of the Mediterranean Sea. As a child, she dreamt of becoming a flight attendant, traveling the world, and speaking many foreign languages.</p>\n\n\n\n<p>Unable to meet the height requirements of her chosen profession, Orru ended up choosing a different path in life, following the Italian mantra: “You have to study something that will guarantee a stable and secure job for life.”</p>\n\n\n\n<p>The unemployment rate in Sardinia is very high, a challenge shared throughout the surrounding islands. In addition to that, Alice wasn’t that keen on having the same job all her life, as her parents had.</p>\n\n\n\n<p>When Orru was 22 she moved to Siena, Tuscany, to finish her studies. That is when she created her first personal blog. The website was built on an Italian platform named Tiscali, which she later migrated to WordPress.com.</p>\n\n\n\n<p>After 2 years in Tuscany Orru moved to Strasbourg, France. She studied French and worked several jobs while living there. Her first serious job was in Milan &#8211; working 40 hours/week in the marketing department of a large, international company. She found herself surrounded by ambitious colleagues and a boss who constantly requested extra —unpaid— working hours per day.</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/10/IMG_2672.jpg?fit=632%2C422&ssl=1\" alt=\"Alice Orru\" class=\"wp-image-7291\" />Alice Orru\n\n\n\n<h2>Choices, choices, choices&#8230;</h2>\n\n\n\n<p>Alice gave up blogging because she wasn’t feeling inspired enough to write. She questioned whether she really wanted to do that job forever; working 10 hours per day under the neon lights of an office. It forced her to set aside her dreams for the time being, and for a while, she mainly lived for the weekends.</p>\n\n\n\n<p>Alice decided to leave the job and moved to Barcelona, Spain, all by herself, in 2012.</p>\n\n\n\n<p>After a few months of intense Spanish learning at the university, she found a job in an international clinic as a “Patient Coordinator.” Orru assisted international patients coming to Barcelona for their treatments. She acted as their translator, interpreter and administrative consultant.&nbsp;</p>\n\n\n\n<p>Patients came from Italy, France, England, Morocco, Senegal, and several other countries. Alice was so inspired by some of their stories, that she started to write again: She dusted off her WordPress blog and filled it with stories about her new life in Barcelona and some of the women she met at the clinic. “I was feeling stronger and more independent than ever,” Orru expressed.</p>\n\n\n\n<h2>Technical issues led to unexpected opportunities</h2>\n\n\n\n<p>In the summer of 2015, Alice was writing on her blog and got stuck with a technical problem. While she was searching through the WordPress.com documentation, she saw a pop-up in the bottom right corner of her screen. It was a staff member of Automattic, checking if she needed help. They chatted for a few minutes and the problem was solved. Alice left the chat with one question, though: how did that person on chat find a support job with WordPress?</p>\n\n\n\n<p>Alice found the official WordPress job page: <a href=\"http://jobs.wordpress.net/\"><strong>jobs.wordpress.net</strong></a> and noticed a job offer that caught her attention: WP Media, a French startup, was looking for a polyglot and remote customer service teammate for one of their plugins, WP Rocket. She read their requirements: fluency in English, French and possibly other languages, excellent experience with WordPress, and some coding skills.</p>\n\n\n\n<p>She knew she didn’t meet all the requirements, but could speak 4 languages, and she had a WordPress blog. She didn’t know anything about PHP, though. Orru had been a WordPress.com user for years and knew she was ready to learn more.</p>\n\n\n\n<p>Orru wrote a cover letter and sent her CV. A Skype interview was conducted and several days later she received the news that she had gotten the job!&nbsp;</p>\n\n\n\n<h2><strong>A steep learning curve</strong></h2>\n\n\n\n<p>The early days in her new job were intense. Alice felt inexperienced but was supported by her teammates. She started studying and reading everything about WordPress for beginners. Initially, she answered easy tickets from customers. All the while her teammates were sending useful material to read, setting up video-calls for 1 to 1 training, and encouraging her the entire time.</p>\n\n\n\n<p>Soon, Orru was replying to customers whose first language was either Spanish or Italian in their native language. This was much appreciated and resulted in several happy comments. Until that moment the plugin’s support had been offered only in English and French.</p>\n\n\n\n<h2><strong>Finding her way in the WordPress community</strong></h2>\n\n\n\n<p>At WordCamp Paris 2016, one of Alice’s teammates introduced her to how the WordPress community collaborated and kept in contact through Slack.</p>\n\n\n\n<p>“You speak multiple languages, why don’t you try to contribute to the polyglots team?” he asked.</p>\n\n\n\n<p>Alice knew very little about contributing to WordPress. She had only been working for WP Media for 6 months and didn’t feel ready to dive into a new challenge and start also contributing to WordPress.</p>\n\n\n\n<p>Yet, curiosity led her to join both the local Italian and the global WordPress Community on Slack. For the first few months, she mainly observed what was happening the channels. Then, she attended WordCamp Milan and met some members of the Italian Polyglots team.</p>\n\n\n\n<p>It was love at first string! Laura, one of the <a href=\"https://make.wordpress.org/polyglots/teams/?locale=it_IT\"><strong>General Translation Editors</strong></a> (GTE) for Italy, taught her how to start contributing and translating, following the polyglots guidelines. She also told her about the Italian community’s big efforts to work together, consistently, to boost and grow WordPress related events in Italy.</p>\n\n\n\n<p>With her teammates’ encouragement, Orru applied to WordCamps as a speaker and gave her first talk in December 2016 at WordCamp Barcelona. After that, she both spoke at WordCamp Torino on April 2017 and at WordCamp Europe in 2017.</p>\n\n\n\n<img src=\"https://i2.wp.com/wordpress.org/news/files/2019/10/aliceorru-wordcamp-europe.jpg?fit=632%2C356&ssl=1\" alt=\"\" class=\"wp-image-7292\" />Alice Orru speaking at WordCamp Europe, in Paris, in 2017\n\n\n\n<h2><strong>Dreams evolve, all the time!</strong></h2>\n\n\n\n<p>Orru knows that her experiences are not just due to luck. She used her previous skills and passions and adapted them to a new career and life path.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>“We all have some skills; and if we don’t know which they are exactly, we should take some time to make a list of the things we’re really good at. With that in mind, just try. Apply. Get involved. Don’t get stuck in the feeling of &#8216;I can’t do it because I don’t know enough&#8217;. So that&#8217;s what I did. Without even realizing it, I started putting into reality the dream of the little girl who was born on an island and wanted to travel and speak different languages.WordPress made this possible.  I’m now part of a big community, and I am proud of it.&#8221;</p><cite>Alice Orru</cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=109%2C82&ssl=1\" alt=\"\" class=\"wp-image-7025\" width=\"109\" height=\"82\" /></div>\n\n\n\n<p><em>This post is based on an article originally published on HeroPress.com, a community initiative created by <a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 05 Oct 2019 04:24:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: WooSesh 2019 Scheduled for October 9 and 10: Registration Now Open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94416\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/woosesh-2019-scheduled-for-october-9-and-10-registration-now-open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2715:\"<p><a href=\"https://woosesh.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WooSesh</a> is happening next week on October 9 and 10, and registration is now open. This is the second edition of the virtual WooCommerce event hosted by <a href=\"https://wpsessions.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WPSessions</a>. In addition to presentations focused entirely on e-commerce, the event will include a &#8220;Hallway Track&#8221; that offers opportunities for attendees to connect with each other, along with virtual swag donated by various WordPress companies.</p>\n<p>Day 1 will cover a wide range of topics for WooCommerce professionals with a focus on store builders, including sessions on designing with blocks, sales tax, optimizing the checkout experience, and store emails. The first day will also feature a two-hour &#8220;State of the Woo&#8221; keynote address from the WooCommerce team. They plan to discuss case studies, lessons learned, and priorities for the year ahead.</p>\n<p>Day 2 will focus on more technical topics for WooCommerce developers, such as &#8220;Custom Tables and the Checkout Bottleneck,&#8221; solving store UX problems, and productizing development work.</p>\n<p>The event is being organized by Brian Richards and Patrick Rauland. For the past two years it has been the official successor to the previously held in-person WooConf events. Given how successful WooSesh has been in connecting the WooCommerce community, it&#8217;s easy to see why WooConf has not yet been reinstated.</p>\n<p>&#8220;One thing I can say, having helped three WooConfs and both WooSesh&#8217;s, is that a virtual event is a fraction of the cost,&#8221; Rauland said. &#8220;And we had twice as many people show up live for WooSesh compared to an in person event.&#8221;</p>\n<p>In 2018, WooSesh had 2,800 registrants and more than 1,400 who participated live during the event. Rauland reported that 900 people watched the keynote address. After the conclusion, 94% of respondents to an attendee survey said they would like to attend again the next year.</p>\n<p>Last year attendees could watch all sessions for free as long as they attended at least one presentation during the live event. This year sessions will be free during the event to encourage maximum engagement, and the recordings will be available on WPSessions.com for a fee after its conclusion.</p>\n<p>Tickets are free, thanks to sponsors that include WooCommerce, Jilt, and Avalara. Attendees can <a href=\"https://woosesh.com\" rel=\"noopener noreferrer\" target=\"_blank\">register</a> on the website and <a href=\"https://woosesh.com/#schedule\" rel=\"noopener noreferrer\" target=\"_blank\">preview the schedule</a> in their own timezones.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Oct 2019 19:10:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: WordPress.org Bumps PHP Maximum for Plugin Directory to Version 7.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94637\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/wordpress-org-bumps-php-maximum-for-plugin-directory-to-version-7-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4315:\"<p>The WordPress.org SVN system received a version bump to 7.2 on October 3.  This change means that plugin authors can now use newer PHP syntax in plugins they submit to the official plugin directory.  In the future, the version maximum will match what&#8217;s running on WordPress.org.  </p>\n\n\n\n<p>This should be good news for any plugin developers who are using newer PHP syntax.  Previously, authors were able to submit code using newer PHP functions if they had a compatibility check in the same file.  However, newer syntax wasn&#8217;t allowed.</p>\n\n\n\n<p>&#8220;The issue was that the Linter (being stuck on 7.0) prevented anyone from checking in code via SVN that used 7.1+ standards,&#8221; said Mika Epstein from the plugin review team.  &#8220;So things like the Spaceship operator would fail on commit and you&#8217;d be told the syntax was invalid. This was holding back certain plugins from committing code into the directory.&#8221;</p>\n\n\n\n<p>Epstein first opened a <a href=\"https://meta.trac.wordpress.org/ticket/3791\">ticket to address the issue</a> 13 months ago but said she&#8217;d been quietly asking for a fix for a while longer.</p>\n\n\n\n<p>The max PHP version isn&#8217;t listed anywhere in the <a href=\"https://developer.wordpress.org/plugins/wordpress-org/\">plugin guidelines</a>.  Technically, it&#8217;s an SVN limitation on WordPress.org and not something the plugin team chose.  However, for plugin authors, they may not have known about the issue until their plugin was rejected by the system.  They would then message the plugin team about the problem.  &#8220;I may end up putting something in the docs, but it&#8217;s a somewhat uncommon occurrence,&#8221; said Epstein.</p>\n\n\n\n<p>This has been an issue for some plugin authors since PHP 7.1 was released, which was December 1, 2016.  &#8220;It was a once a year issue, then twice, and then it inched up to every couple months,&#8221; said Epstein.  &#8220;As of September, at least once a month someone would hit this and complain to plugins.&#8221;</p>\n\n\n\n<p>One potential problem with blocking newer PHP code is with plugins that rely on third-party libraries, which may only have security patches in more recent versions.  However, Epstein said that she was not aware of any security issues that resulted from the version limitation.</p>\n\n\n\n<p>Andrey &#8220;Rarst&#8221; Savchenko pointed out in the ticket that &#8220;7.2 was released almost two years ago.&#8221;  While he says it&#8217;s an improvement over the previous 7.0 limitation, version 7.2 should not be a hard ceiling for plugins in the repository.</p>\n\n\n\n<p>PHP 7.3 was released on December 16, 2018, and PHP 7.4 <a href=\"https://wptavern.com/first-look-at-php-7-4-for-wordpress-developers\">will be released</a> on November 28, 2019.</p>\n\n\n\n<p>&#8220;Given PHP&#8217;s poor adoption curves,&#8221; responded Dion Hulse, &#8220;all that this means is that you can&#8217;t release a plugin through WordPress.org that only works on 15% of WordPress sites.  &#8220;You can even use newer functions in PHP if including compat code, just not newer syntax.&#8221;</p>\n\n\n\n<p>Plugin author Josh Pollock <a href=\"https://twitter.com/Josh412/status/1100487567236059136\">called awareness to the issue</a> on Twitter in February.  &#8220;Hours later, I&#8217;m downgrading a dependency, because it requires another dependency, which requires PHP 7.1.&#8221;</p>\n\n\n\n<p>&#8220;I think we got lucky and there were no bugs,&#8221; Pollock said of downgrading to an earlier version of the dependency.  &#8220;I don&#8217;t think I&#8217;ve used SVN since. I&#8217;m really fortunate that&#8217;s not a part of my life anymore.&#8221;</p>\n\n\n\n<p>&#8220;I agree with Rarst,&#8221; said Pollock.  &#8220;We should be allowing for PHP 7 and making it easier for plugins not to support sites on out of date versions of PHP.&#8221;  This echoes the sentiment of other developers who are pushing for WordPress to adopt newer standards or at least allow them to do so in their own plugins in the official directory.</p>\n\n\n\n<p>For the majority of plugin authors, this should be a non-issue as long as the SVN system remains updated to match the version of PHP used on WordPress.og.</p>\n\n\n\n<p>PHP 7.2 will lose active support on November 30, 2019, and security support on November 30, 2020.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Oct 2019 16:41:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:134:\"WPTavern: Matt Mullenweg and David Heinemeier Hansson Discuss WordPress Market Share, Monopolies, and Power in Open Source Communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94234\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:143:\"https://wptavern.com/matt-mullenweg-and-david-heinemeier-hansson-discuss-wordpress-market-share-monopolies-and-power-in-open-source-communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:18041:\"<p>In what began as a heated conversation on Twitter, Automattic CEO Matt Mullenweg and Ruby on Rails creator and Basecamp co-founder David Heinemeier Hansson took to the airwaves to debate opposing viewpoints on market share, monopolies, and power in open source communities. Hansson reacted to a statement Mullenweg made in an interview after <a href=\"https://wptavern.com/automattic-raises-300m-in-series-d-investment-round-valuation-jumps-to-3-billion\" rel=\"noopener noreferrer\" target=\"_blank\">Salesforce Ventures invested $300 million in Automattic</a> last month.</p>\n<p>“I think there’s potential to get to a similar market share as Android, which I believe now has 85% of all handsets,&#8221; Mullenweg told <a href=\"https://techcrunch.com/2019/09/19/automattic-ceo-matt-mullenweg-about-raising-300-million-and-the-open-web/\" rel=\"noopener noreferrer\" target=\"_blank\">TechCrunch</a>. &#8220;When you think about it, open source has a virtuous cycle of adoption, people building on the platform and more adoption.&#8221;</p>\n<p>Hansson reacted on Twitter, sparking a conversation that received 116 comments.</p>\n<p>&#8220;&#8216;We want every website, whether it’s e-commerce or anything to be powered by WordPress&#8217; is a nasty, monopolistic goal,&#8221; he said. &#8220;Listening to Matt muse about 85% marketshare dreams is a real downer. But $300m is a down payment on monopoly dreams.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">“We want every website, whether it’s e-commerce or anything to be powered by WordPress” is a nasty, monopolistic goal. Listening to Matt muse about 85% marketshare dreams is a real downer. But $300m is a down payment on monopoly dreams. <a href=\"https://t.co/hf4HShISug\">https://t.co/hf4HShISug</a></p>\n<p>&mdash; DHH (@dhh) <a href=\"https://twitter.com/dhh/status/1174695189090308096?ref_src=twsrc%5Etfw\">September 19, 2019</a></p></blockquote>\n<p></p>\n<p>In an episode titled &#8220;<a href=\"https://rework.fm/open-source-and-power-with-matt-mullenweg/\" rel=\"noopener noreferrer\" target=\"_blank\">Open Source and Power</a>,&#8221; Mullwenweg joined Hansson on the Rework podcast for a more in-depth discussion that dives deeper into Mullenweg&#8217;s remarks on WordPress&#8217; potential market share.</p>\n<p>Hansson contends that he would like to see a very large, rich ecosystem of providers of tools and services on the web and expressed concern about WordPress growing many times faster than any of its competitors.</p>\n<p>Mullenweg countered that unique domains are not the only measure of a monopoly. He also referenced Shopify as having a thriving business with a small percentage of the e-commerce platform market share.</p>\n<p>&#8220;Even though open source can become a bit of a standard, it doesn&#8217;t prevent others from starting on it,&#8221; Mullenweg said. &#8220;The truth is if I had an evil hat on &#8211; let&#8217;s say I started doing evil monopoly stuff, people could easily fork the software &#8211; and they would. There&#8217;s a checks and balances there.&#8221;</p>\n<p>This is a <a href=\"https://wptavern.com/wordpress-governance-project-looks-for-new-leadership\" rel=\"noopener noreferrer\" target=\"_blank\">classic power dynamic in BDFL-led open source projects</a> where the potential for a fork checks the project leader&#8217;s actions.</p>\n<p>Hansson challenges Mullenweg&#8217;s assertion that a fork would be a threat to the project, arguing that this power is illusionary when a project has become as dominant as WordPress:</p>\n<blockquote><p>Technically someone could fork Ruby on Rails tomorrow. What is the likelihood that fork is going to succeed? Once you have this juggernaut of network effects, WordPress is growing so much faster than anyone else, the gravitational pull is huge. Should someone fork it, introducing incompatibilities, what is the likelihood that is going to be a serious contender? From me, my assessment is extremely low, just the same as if someone was to fork Ruby on Rails today and call it Snoopy on Pails. The odds of that being anything other than a curiosity for two days on Hacker News is extremely low.</p></blockquote>\n<p>The notion of Snoopy on Pails injected a bit of humor into the debate that remained high intensity for the hour-long discussion, but it also illustrated Hansson&#8217;s point regarding the absurdity of any kind of WordPress fork becoming a real threat to the project&#8217;s momentum.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">it was a privilege to have <a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> come on <a href=\"https://twitter.com/reworkpodcast?ref_src=twsrc%5Etfw\">@reworkpodcast</a> and debate <a href=\"https://twitter.com/dhh?ref_src=twsrc%5Etfw\">@dhh</a> on tech monopolies and power dynamics in open source: <a href=\"https://t.co/Aewq4QTwFe\">https://t.co/Aewq4QTwFe</a>. Also thanks to <a href=\"https://twitter.com/AdamStddrd?ref_src=twsrc%5Etfw\">@AdamStddrd</a> for making this graphic that will make sense if you listen to the episode <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f603.png\" alt=\"😃\" class=\"wp-smiley\" /> <a href=\"https://t.co/4cqZpX2uJk\">pic.twitter.com/4cqZpX2uJk</a></p>\n<p>&mdash; Wailin Wong (@VelocityWong) <a href=\"https://twitter.com/VelocityWong/status/1179025482416820224?ref_src=twsrc%5Etfw\">October 1, 2019</a></p></blockquote>\n<p></p>\n<p>&#8220;Open source can provide a veil over true power and who has that power, and I would argue that WordPress being in the position that it is, a third of all sites, is tremendous power,&#8221; Hansson said. &#8220;Even if that power is somewhat distributed, it&#8217;s still very much so located mostly with the company backing that engine and that you built a commercial business on top of it that even uses the name, goes even further to say there&#8217;s a lot of power here.</p>\n<p>&#8220;Why would venture capitalists invest half a billion dollars into WordPress if they didn&#8217;t see Automattic as a company as having a lot of power over WordPress? The whole reason someone is able to raise that kind of money is off the back of someone who can pitch: &#8216;We have over a third of all websites on the internet and we think we can get to 85%.&#8217; That&#8217;s a very compelling venture story.&#8221;</p>\n<p>Mullenweg counters that if a Rails fork couldn&#8217;t attract a lot of users, that speaks to the Hansson&#8217;s stewardship of the project. He said that a typical WordPress release has 400-500 contributors with an estimated 10% from Automattic.</p>\n<p>&#8220;If 200 of those went someplace else because I did something really brain dead, that would be a pretty serious competitor, and there are some examples of that in open source history,&#8221; Mullenweg said. He contended that forks with enough weight behind them can become very interesting. On this point the two project leaders remained at odds.</p>\n<h3>How Open Source Market Dominance Impacts Diversity of Tools and Services on the Web</h3>\n<p>One of Hansson&#8217;s chief concerns with WordPress reaching 85% market share is what he described as the &#8220;death of diversity.&#8221; He perceives this pursuit of increased adoption as growing open source in monopolistic ways.</p>\n<p>&#8220;We&#8217;re living through an era right now where a small handful of big tech companies are exerting a completely undue amount of power over the internet, over discourse, over all sorts of things, and that&#8217;s something we should try to recoil from and at least learn from, not aspire to building more of,&#8221; Hansson said. &#8220;That&#8217;s what got this going &#8211; why isn&#8217;t WordPress in a great place only being a third of all the sites of the internet. Why does it need to get to 85%? Why does its growth need to be that explosive and that wild?&#8221;</p>\n<p>This is a question many in the WordPress community have asked in the past. Does the mission of democratizing publishing necessitate such a zealous drive towards market dominance?</p>\n<p>&#8220;I don&#8217;t want to see this concentration of power in one engine, no matter how good it is,&#8221; Hansson said.</p>\n<p>It is at this juncture that Mullenweg revealed more of his vision for WordPress becoming the &#8220;operating system of the web,&#8221; an idea he has floated several times over the past few years.</p>\n<p>&#8220;You have referred to WordPress a lot of times as blogging,&#8221; Mullenweg said. &#8220;I think of it more like a platform. If you look at how a lot of people are building on it, they use WordPress to bootstrap something that doesn&#8217;t look like WordPress at all. It might not even have a website. It might be powering just an API. It might be a headless or decoupled installation. It could be a store.&#8221;</p>\n<p>He likened the idea to Apache and nginx having a dominant market share (<a href=\"https://www.datanyze.com/market-share/web-and-application-servers/apache-http-server-market-share\" rel=\"noopener noreferrer\" target=\"_blank\">55%</a> and <a href=\"https://www.datanyze.com/market-share/web-and-application-servers/nginx-market-share\">23%</a> respectively) in the server space.</p>\n<p>&#8220;That doesn&#8217;t prevent the different types of websites that are built on it,&#8221; Mullenweg said. &#8220;If nginx got to 80 or 85%, that wouldn&#8217;t prevent the diversity or what people could put on their websites. WordPress could get to 85% and it wouldn&#8217;t mean that there&#8217;s any sort of monoculture or lack of diversity. If anything, it would allow people to focus more on what&#8217;s different and not recreating the WYSIWYG, the user system, the login, all that stuff we have all built a million times and you just don&#8217;t need to anymore, if something like WordPress solves your needs.&#8221;</p>\n<p>Hansson asked what it would look like if 85% of the web ran on WordPress, a question that the community behind the project hasn&#8217;t deeply examined yet. He encouraged listeners to consider what they want the internet to look like in the future:</p>\n<blockquote><p>What is the future I&#8217;d like to live in? What does a healthy, open, free internet look like? To me it looks like an internet with tons of different providers, tons of different tools, and what we collaborate around is protocols, not consolidation of software market share, that gives individuals and companies or even projects outsized power to dictate the matters of the internet.</p></blockquote>\n<p>Matt clarified that his comments on an 85% market share are not a goal, but rather a &#8220;trailing indicator&#8221; in the quest to create the best possible experience for developers and users. A growing market share is a signal of adoption in that sense, not a goal in itself.</p>\n<h3>WordPress Community Reactions to the Debate</h3>\n<p>After the initial exchange on Twitter, the broader tech community seemed delighted to hear Mullenweg and Hansson square off in a civil debate on topics that affect so many people working on the web. The conversation touched on a lot of the friction points in the WordPress ecosystem with Automattic being one of the most powerful companies driving WordPress&#8217; market share. Many listeners were grateful for answers to questions they have had for years.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Not sure <a href=\"https://twitter.com/dhh?ref_src=twsrc%5Etfw\">@dhh</a> realizes it, but he spoke for hundreds if not thousands of WordPress community members that have had similar questions for <a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> spanning the last few years. Most aren’t afforded the same opportunity or carry the same clout to have it.  <a href=\"https://t.co/z7wSIGJKAZ\">https://t.co/z7wSIGJKAZ</a></p>\n<p>&mdash; Matt Medeiros (@mattmedeiros) <a href=\"https://twitter.com/mattmedeiros/status/1179201126878629888?ref_src=twsrc%5Etfw\">October 2, 2019</a></p></blockquote>\n<p></p>\n<p>However, the idea of WordPress as web infrastructure and the level of market dominance (85%) discussed in the podcast are controversial and even off-putting for some who are deeply invested in the platform.</p>\n<p>&#8220;Matt appears to think of WordPress as infrastructure for the web, in the same way that Google and Facebook think of themselves as infrastructure for the web,&#8221; Morten Rand-Hendriksen said.</p>\n<p>&#8220;In the conversation about the dangers of market control, monopolization, and monoculture, Matt says, &#8216;We are not a grain, we are the soil.&#8217; The only way to interpret that from my position is &#8216;WordPress is not a thing on the web. It is the web,&#8217; i.e. infrastructure. A future where WP is web infrastructure is something I think very few people actually want, open source or not.&#8221;</p>\n<p>On the podcast, Mullenweg argued that open source allows for competition in a way proprietary software does not, but Rand-Hendriksen said he sees this as a logical fallacy.</p>\n<p>&#8220;He talks at the same time about WP being infrastructure and powering 85% of the web AND about this being a reason for others to fight it with other solutions,&#8221; he said. &#8220;So monopolization leads to competition somehow. I don&#8217;t think WordPress is infrastructure, or that it should power 85% of the web, especially after hearing this conversation.</p>\n<p>&#8220;If we truly believe in this idea of open source as diversification and forking, WP should actively support other projects and try to not be the dominant force on the web. WP is not infrastructure, it is very much a grain that has become a monoculture.&#8221;</p>\n<p>Matt Medeiros, host of the <a href=\"http://youtube.com/themattreport\" rel=\"noopener noreferrer\" target=\"_blank\">Matt Report podcast</a> focused on WordPress business and entrepreneurs, said that while the conversation answered a lot of questions, it left him wanting more.</p>\n<p>&#8220;The cloud of uncertainty that hangs above a large portion of this community is directly formed from lack of clear communication in both <a href=\"http://WordPress.org\">WordPress.org</a> and how Automattic + Jetpack move in lockstep with the open source project,&#8221; Medeiros said. &#8220;As we see hundreds of millions of dollars invested, with billions of dollars of valuation going to a single company, surely the optics leave one wondering how all of this gets repaid to investors?&#8221;</p>\n<p>Automattic invariably comes under more public scrutiny regarding its investments due to having the WordPress project lead as its CEO. One interesting observation Mullenweg made during podcast is that Automattic is just one of many larger players that make up the the WordPress economy, which he has previously estimated at $10 billion/year.</p>\n<p>&#8220;Automattic makes probably 2-3% of the revenue in the WordPress world,&#8221; Mullenweg said. &#8220;There are companies like GoDaddy, which might not contribute very much back to core, but probably have 3 or 4 times the number of subscribers than us running WordPress. I think about that a lot. I want to grow the whole ecosystem, not just our slice of it.&#8221;</p>\n<p>Revenue is not always equal to influence, and a good portion of the end of the podcast tackled questions about power and leadership in open source.</p>\n<p>&#8220;David&#8217;s questions are spun from the threads that fear monopoly on the web, as much as we fear a singular rule of decision making in the open source project,&#8221; Medeiros said. &#8220;I think David did well at challenging Matt&#8217;s view on the desire of world domination and how undesirable it is to earn the title of Benevolent Dictator &#8212; but it left me wanting more. For example, in an attempt to throw a curveball, Matt pointed out, the investment is made in Automattic &#8212; not WordPress &#8212; a point so opaque it didn&#8217;t fool David, but didn&#8217;t have him pressing any deeper.</p>\n<p>&#8220;Had David viewed this conversation through the lens of our community, he would know that Automattic and WordPress.com enjoy the full benefit of leveraging the WordPress brand, a brand protected by a foundation that Matt himself founded, which may have guided the podcast episode into the ethics of it all.&#8221;</p>\n<p>While Mullenweg&#8217;s claim that &#8220;WordPress belongs to you as much as it belongs to anyone else&#8221; is true in the sense that the software is freely available to be used and modified by anyone, the full power of <a href=\"http://wpandlegalstuff.com/using-wordpress-trademarks-business-product-service/\" rel=\"noopener noreferrer\" target=\"_blank\">leveraging the WordPress brand</a> does not belong to everyone.</p>\n<p>&#8220;I don&#8217;t think Matt would have been willing to have this kind of conversation with me or most members from the the general community, so I&#8217;m glad someone of David&#8217;s clout was able to engage here,&#8221; Medeiros said. &#8220;I do sympathize with all that Matt is responsible for and it&#8217;s not a challenge I think I&#8217;d be up for, given the opportunity. I love this community and want to see people stay, contribute, and flourish &#8212; not walk away because they felt unheard. DHH isn&#8217;t the hero we asked for, but he&#8217;s the hero we need right now. Hopefully he continues to keep a watchful eye over where WordPress is heading.&#8221;</p>\n<p>If you only listen to one podcast this week, <a href=\"https://rework.fm/open-source-and-power-with-matt-mullenweg/\" rel=\"noopener noreferrer\" target=\"_blank\">Hansson&#8217;s conversation with Mullenweg</a> is an invigorating battle of opposing open source ideals held as a respectful exchange. In defending their positions, both reveal how their experiences of the early days of the web shaped their ideologies and approaches to open source project leadership and commercialization. Conversations like these are rare but long overdue, as the WordPress community considers its growing influence on the future of the web.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Oct 2019 18:59:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordPress Theme Review Team Brings Back Review Shindigs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94599\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/wordpress-theme-review-team-brings-back-review-shindigs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3730:\"<p>The WordPress theme review team (TRT) is kicking off a review weekend October 5 and will begin at 10:00 Coordinated Universal Time (UTC).  These events, called &#8220;review shindigs,&#8221; are marathon sessions where the team joins together to review themes and teach best practices.  The current plan is to hold the event on the first Saturday of every month.</p>\n\n\n\n<p>&#8220;The goal of the review weekend is to get together and do as many quality reviews as possible,&#8221; wrote Carolina Nymark, one of the team&#8217;s review representatives, in the <a href=\"https://make.wordpress.org/themes/2019/10/03/review-weekend\">event&#8217;s announcement</a>.  Events sometimes have different goals, depending on what the team needs to work on at the time.  </p>\n\n\n\n<p>Most of the event will happen over the team&#8217;s <a href=\"https://wordpress.slack.com/messages/themereview\">Slack channel</a>.  They will also hold a live presentation or Q&amp;A on Zoom at 13:00 UTC.  Anyone is welcome to attend (the Zoom link will be provided in Slack).  This will help teach those who are interested in how to perform reviews and check common issues.  Anyone attending is also able to submit topics for discussion in the comments on the announcement post.</p>\n\n\n\n<p>The TRT originally <a href=\"https://make.wordpress.org/themes/2019/09/24/meeting-notes-for-tuesday-24th-september-2019/\">announced plans</a> for the event after the last team meeting, but it was overshadowed by other news, such as the <a href=\"https://wptavern.com/theme-review-team-restructures-into-project-representatives\">team moving to a flat structure</a>.  &#8220;Not sure if anyone but myself will be there,&#8221; joked Nymark.  &#8220;It&#8217;s short notice.  Some of the team reps already had other plans.&#8221;</p>\n\n\n\n<p>Anyone from the WordPress community is allowed to participate in the event by simply commenting on a ticket without being assigned a review.  Nymark provided links on <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">how to become a reviewer</a> and the team&#8217;s <a href=\"https://make.wordpress.org/themes/handbook/get-involved/onboarding-for-new-reviewers/\">reviewer onboarding process</a> to get new reviewers started.</p>\n\n\n\n<p>Review shindigs can help new reviewers because it puts them in touch with more experienced reviewers at a time when they know someone will be online to answer questions.  They&#8217;re also a team-building exercise where people can join together and work toward a common goal.</p>\n\n\n\n<p>Currently, <a href=\"https://themes.trac.wordpress.org/\">214 tickets</a> are awaiting review. A successful event would significantly cut that number down.</p>\n\n\n\n<h2>Events From the Past</h2>\n\n\n\n<p>Theme review shindigs have seen varying levels of success over the years.  In the TRT&#8217;s earliest days, review gatherings were regular events and helped keep the ever-growing ticket queue under control.  Participation waned over time as leaders within the team switched to other projects or no longer had time to run the events.  Proposals to bring back them back have not gone far in the last couple of years.</p>\n\n\n\n<p>The last TRT shindig was a <a href=\"https://make.wordpress.org/themes/2016/12/05/december-shindig-recap/\">December 2016 event</a> that saw over 50 participants.  Reviewers worked on 108 tickets throughout the weekend.  The event also coincided with contributor day at WordCamp US, which helped bump up participation numbers.</p>\n\n\n\n<p>Jose Castaneda, Cristiano Zanca, Benjamin Lu, and Afzaal Ahmed held a live stream that covered how to load scripts and styles in themes in the previous review event.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Oct 2019 18:29:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Debating OSS with DHH\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50262\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ma.tt/2019/10/debating-oss-with-dhh/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:931:\"<p>The other week I ended up going back and forth in tweets with <a href=\"https://dhh.dk/\">David Heinemeier Hansson</a>, it wasn&#8217;t going anywhere but he graciously invited me to their podcast and we were able to expand the discussion in a way I found really refreshing and mind-opening.</p>\n\n\n\n<p>DHH and I have philosophies around work and open source that I believe overlap 95% or more, so that makes where we have differences all that more interesting to mine. Although we would see each other logged into the same server 15 years ago, we haven&#8217;t actually spoken directly until this podcast started, but the conversation flowed so naturally you&#8217;d think we have been talking since then.</p>\n\n\n\n<p>Check out the <a href=\"https://rework.fm/open-source-and-power-with-matt-mullenweg/\">episode on Open Source and Power on the Rework Podcast</a>, hopefully you enjoy listening as much as we enjoyed recording it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Oct 2019 00:04:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WPTavern: First Look at PHP 7.4 for WordPress Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94552\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/first-look-at-php-7-4-for-wordpress-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7152:\"<p>PHP 7.4 is slated for release on November 28, 2019.  WordPress 5.3 will also <a href=\"https://core.trac.wordpress.org/ticket/47783\">include several commits</a> that address deprecated features.</p>\n\n\n\n<p>It&#8217;s unlikely that most WordPress plugin and theme developers will be able to use the new PHP 7.4 features for a while except when working on setups where they have some measure of control over the environment.  Given WordPress&#8217; reluctance to bump the minimum PHP version to the latest supported versions, it could be years before it&#8217;s safe to use new features.  However, developers should make sure their plugins and themes are compatible with 7.4.  It&#8217;s also good practice to keep up with current features.</p>\n\n\n\n<p>WordPress 5.2 <a href=\"https://wordpress.org/news/2019/05/jaco/\">bumped the minimum requirement</a> to PHP 5.6 with a recommendation of PHP 7.3.  The following is the breakdown for current <a href=\"https://wordpress.org/about/stats/\">PHP usage stats</a> for WordPress installs:</p>\n\n\n\n<ul><li>PHP 7.3 &#8211; 9.6%</li><li>PHP 7.2 &#8211; 22.2%</li><li>PHP 7.1 &#8211; 13.5%</li><li>PHP 7.0 &#8211; 14.9%</li><li>PHP 5.6 &#8211; 25.7%</li></ul>\n\n\n\n<p>Currently, PHP 7.2 and 7.3 are the only versions receiving active support.  PHP will drop security support for version 7.1 on December 1.</p>\n\n\n\n<h2>New Features</h2>\n\n\n\n<p>PHP 7.4 includes a number of <a href=\"https://www.php.net/manual/en/migration74.php\">new features</a> that will make writing code easier.  The following is a small overview of some of the features that will likely be useful for WordPress plugin and theme authors.</p>\n\n\n\n<h3>Typed Properties</h3>\n\n\n\n<p>PHP first introduced type hinting in 5.0 and has continued improving the feature.  PHP 7.0 introduced return type declarations.  PHP 7.4 steps it up a notch and allows developers to declare types for class properties.  This lets developers make sure the type of data assigned to a specific property is always that data type.</p>\n\n\n\n<p>In the following example, the <code>$id</code> property can only be assigned an integer and the <code>$title</code> property a string.  Attempting to assign the wrong data type will result in a fatal error if strict types are declared.  Otherwise, PHP will coerce the value to the correct type.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\nclass Event {\n\n    public int $id;\n\n    public string $title;\n}\n</pre>\n\n\n<h3>Arrow Functions</h3>\n\n\n\n<p>Many developers have been clamoring for arrow functions similar to JavaScript. They are pretty sweet to use.  However, PHP&#8217;s arrow functions, also called &#8220;short closures,&#8221; are slightly different.  PHP 7.4 introduces the <code>fn</code> keyword (now a reserved keyword).  Short closures can only contain one expression and have no <code>return</code> keyword.  They&#8217;re not quite as powerful as their JavaScript cousins, but they do offer a quick solution for some scenarios.</p>\n\n\n\n<p>For example, the following code snippet shows two different ways to build an array of user emails from a collection of user objects.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n// Old way, but still acceptable.\n$value = array_map( function( $user ) {\n    return $user-&gt;user_email;\n}, $users );\n\n// New way.\n$value = array_map( fn( $user ) =&gt; $user-&gt;user_email, $users );\n</pre>\n\n\n<h3>Unpacking Inside of Arrays</h3>\n\n\n\n<p>Argument unpacking was <a href=\"https://www.php.net/manual/en/migration56.new-features.php\">introduced in PHP 5.6</a>, so this may still be unfamiliar territory for many developers in the WordPress space.  It&#8217;s been an invaluable feature in some of my projects.</p>\n\n\n\n<p>PHP 7.4 allows developers to unpack an array within an array.  This should be faster than <code>array_merge()</code> because the spread operator (<code>...</code>) is a language construct rather than a function.</p>\n\n\n\n<p>Consider the following example of injecting an array of two colors within a larger array of colors.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n$colors_a = [ \'green\', \'blue\' ];\n\n$colors_b = [ \'red\', ...$colors_a, \'yellow\', \'purple\' ];\n\n// [ \'red\', \'green\', \'blue\', \'yellow\', \'purple\' ];\n</pre>\n\n\n<h3>Null Coalescing Assignment Operator</h3>\n\n\n\n<p>The null coalescing assignment operator is a shorthand way of combining an <code>isset()</code> check with a ternary operator.</p>\n\n\n\n<p>The following example shows how to check the <code>$product[\'id\']</code> variable.  If it&#8217;s set, do nothing.  Else, assign it the value on the right.  You can see the evolution of the code between PHP versions.  It&#8217;s much simpler to write in 7.4.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n// Pre-PHP 7.0.\n$product[\'id\'] = isset( $product[\'id\'] ) ? $product[\'id\'] : 0;\n\n// PHP 7.0.\n$product[\'id\'] = $product[\'id\'] ?? 0;\n\n// PHP 7.4.\n$product[\'id\'] ??= 0;\n</pre>\n\n\n<h2>Deprecated Features</h2>\n\n\n\n<p>PHP 7.4 will deprecate several features.  Plugin and theme authors will want to <a href=\"https://www.php.net/manual/en/migration74.deprecated.php\">consult the complete list</a> to determine whether they should update any outdated code.  I cherry-picked a few items that I&#8217;ve seen in plugin and theme code over the last few years.  Most other deprecated features are unlikely in current code bases.</p>\n\n\n\n<h3>Nested Ternary Operators Without Parenthesis</h3>\n\n\n\n<p>Nested ternary operators are generally something you should avoid as a developer.  Seriously.  Just don&#8217;t write them.  They&#8217;re tough to follow and are prone to bugs due to human error.  However, if you&#8217;re going to throw caution to the wind and dismiss good advice, at least use parenthesis.  PHP 7.4 deprecated nested ternaries without them.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n// Not OK (deprecated).\n$value = $a ? $b : $c ? $d : $e;\n\n// OK.\n$value = ( $a ? $b : $c ) ? $d : $e;\n\n// OK.\n$value = $a ? $b : ( $c ? $d : $e );\n</pre>\n\n\n<h3>Using array_key_exists() on Objects</h3>\n\n\n\n<p>Developers should not use <code>array_key_exists()</code> on objects simply because objects are not arrays.  Instead, use the more appropriate <code>property_exists()</code> function or <code>isset()</code>.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n// Not OK (deprecated).\nif ( array_key_exists( $property, $object ) ) {}\n\n// OK.\nif ( property_exists( $object, $property ) ) {}\n\n// OK.\nif ( isset( $object-&gt;$property ) ) {}\n</pre>\n\n\n<h3>Array and String Offset Access With Curly Braces</h3>\n\n\n\n<p>Using curly braces for array and string offset access is a bit more of a rarity, but I&#8217;ve seen it in the wild a couple of times.  Make sure you&#8217;re using square brackets such as <code>[]</code> instead of curly brackets like <code>{}</code>.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n// Not OK (deprecated).\n$value = $a{ $key };\n\n// OK.\n$value = $a[ $key ];\n</pre>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 18:16:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: BuddyPress 5.0 Introduces BP REST API, Paving the Way for Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94453\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/buddypress-5-0-introduces-bp-rest-api-paving-the-way-for-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3919:\"<p><a href=\"https://buddypress.org/2019/09/buddypress-5-0-0-le-gusto/\" rel=\"noopener noreferrer\" target=\"_blank\">BuddyPress 5.0.0</a> “Le Gusto” was released this week with the long-awaited BP REST API, a new Invitations API, and BuddyPress info on the Site Health screen. The release was named for a favorite pizza restaurant in Fortaleza, Brazil, where BP REST API contributor and core committer <a href=\"https://profiles.wordpress.org/espellcaste/\" rel=\"noopener noreferrer\" target=\"_blank\">Renato Alves</a> resides.</p>\n<p>The new REST API is <a href=\"https://developer.buddypress.org/bp-rest-api/\" rel=\"noopener noreferrer\" target=\"_blank\">fully documented</a> and includes endpoints for members, groups, activities, private messages, screen notifications and extended profiles.</p>\n<p>The first feature powered by the new API is an improved interface for managing group members. It enables administrators to quickly search for specific members to promote, demote, ban, or remove.</p>\n<p><div class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->\n<a href=\"https://wptavern.com/wp-content/uploads/2019/06/5zJCxp2ARb.mp4\">https://wptavern.com/wp-content/uploads/2019/06/5zJCxp2ARb.mp4</a></div></p>\n<p>BuddyPress 5.0 also includes a new <a href=\"https://bpdevel.wordpress.com/2019/09/16/new-invitations-api-coming-in-buddypress-5-0/\" rel=\"noopener noreferrer\" target=\"_blank\">BP Invitations API</a> to help developers better manage group invites and membership requests.</p>\n<p>BuddyPress site administrators may notice <a href=\"https://wptavern.com/buddypress-5-0-to-display-debug-info-in-the-new-site-health-info-screen\" rel=\"noopener noreferrer\" target=\"_blank\">a new panel in the Site Health Info screen</a>, containing plugin-specific debug information that may be useful when seeking help in the forums.</p>\n<p>This release <a href=\"https://wptavern.com/buddypress-5-0-to-update-password-control-to-match-wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">updates the BP Nouveau template pack</a> to use the same password control as the one used in WordPress core. It provides a more consistent interface for users when setting their passwords on the registration page and on the user’s general settings page.</p>\n<h3>Blocks Are Coming to BuddyPress</h3>\n<p>The BP REST API offers a myriad of opportunities for developers to create new interactive features and front-end experiences, as well as improve performance by replacing AJAX calls. It also opens up the world of block creation. BP core contributors and community developers will have a much easier time creating blocks, since Gutenberg mainly uses REST.</p>\n<p>In anticipation of BP blocks, <a href=\"https://wptavern.com/buddypress-5-0-to-add-category-for-storing-buddypress-blocks\" rel=\"noopener noreferrer\" target=\"_blank\">5.0 includes a new panel in the block inserter</a> that allows developers to organize their custom blocks under a BuddyPress category.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/08/buddypress-blocks-panel.png?ssl=1\"><img /></a></p>\n<p>BuddyPress 6.0 <a href=\"https://buddypress.trac.wordpress.org/ticket/8048\" rel=\"noopener noreferrer\" target=\"_blank\">may include core blocks for specific components</a> and core blocks may ultimately replace the plugin&#8217;s existing widgets. Contributors are still discussing which blocks to begin building. They are looking to get community feedback on blocks that will be the most useful, particularly from BuddyPress theme developers. The team <a href=\"https://bpdevel.wordpress.com/2019/10/01/bp-dev-chat-agenda-october-2-2019/\" rel=\"noopener noreferrer\" target=\"_blank\">plans to discuss 6.0 release priorities</a> during the BP core dev chat on <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20191002T1900\" rel=\"noopener noreferrer\" target=\"_blank\">October 2, 2019, at 1900 UTC</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 11:06:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress.org blog: The Month in WordPress: September 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7280\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2019/10/the-month-in-wordpress-september-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7584:\"<p>September has been a particularly busy month in the WordPress community—a lot of important work has been done as everyone in the project works towards an upcoming major release. Read on to find out more about this and everything else that has been going on over the past month.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.2.3 Security and Maintenance Release</h2>\n\n\n\n<p>Early in September, <a href=\"https://wordpress.org/news/2019/09/wordpress-5-2-3-security-and-maintenance-release/\">version 5.2.3 of WordPress was released</a> as a security and maintenance release. Sixty-two individuals contributed to its 29 fixes and enhancements.</p>\n\n\n\n<p>The security issues fixed in this release owe thanks to numerous people who disclosed them responsibly. You can read more about the vulnerability reporting process <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">in the Core handbook</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordPress 5.3 Enters Beta</h2>\n\n\n\n<p>WhileWordPress 5.3 is slated for release on November 12, it has already entered the beta phase with <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-2/\">the second beta release being made available</a> at the end of September. As this is a major release, it will feature a number of new features and enhancements, including <a href=\"https://make.wordpress.org/core/2019/09/19/whats-new-in-gutenberg-18-september/\">significant improvements to the block editor</a>, <a href=\"https://make.wordpress.org/core/2019/09/25/whats-new-in-site-health-for-wordpress-5-3/\">updates to the Site Health component</a>, <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">new block APIs</a>, <a href=\"https://make.wordpress.org/core/2019/09/23/core-widgets-new-aria-current-attribute-in-wordpress-5-3/\">accessibility updates</a>, and <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\">much more</a>.</p>\n\n\n\n<p>You can test the 5.3 beta release by installing <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">the WordPress Beta Tester plugin</a> on any WordPress site, although as this is software that is currently in development, we don’t recommend installing it on a live site.</p>\n\n\n\n<p>Want to get involved in building this release? <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">Test the beta</a>, follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Date/Time Component Improvements</h2>\n\n\n\n<p>For over a year, contributors involved in <a href=\"https://make.wordpress.org/core/components/date-time/\">the Date/Time component</a> of WordPress Core have been working hard on the “wp_date” project. The goal of this project is to fix and streamline the way that Core handles times and dates throughout the platform.</p>\n\n\n\n<p>This ambitious project has seen incremental changes over the last few Core releases. The upcoming 5.3 release <a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">will include the final and most significant changes</a> to the component, bringing much-needed stability to time handling in WordPress Core.</p>\n\n\n\n<p>Want to get involved in the Date/Time component of WordPress Core? <a href=\"https://make.wordpress.org/core/components/date-time/\">Learn more about it</a>, follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core-datetime channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>New Theme Review Team Structure</h2>\n\n\n\n<p>After recent discussions around the goals of the Theme Review team, <a href=\"https://make.wordpress.org/themes/2019/09/24/new-theme-review-team-structure/\">some changes have been made</a> to the leadership structure of the team. The team leads are now ‘representatives’ of different areas of the work that they do. This flat structure allows for representatives to work in more loosely defined areas so they contribute to the team in more diverse ways, and helps the team to be more focused on setting and achieving their goals. The new structure is outlined <a href=\"https://make.wordpress.org/themes/handbook/about/members/\">in the team handbook</a>.</p>\n\n\n\n<p>Want to get involved in reviewing themes for WordPress? Follow <a href=\"https://make.wordpress.org/themes/\">the Theme Review team blog</a>, and join the #themereview channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>New Default Theme: Twenty Twenty</h2>\n\n\n\n<p>The upcoming 5.3 release will also include <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">a new default theme for WordPress</a>, <em>Twenty Twenty</em>. This theme will have a strong focus on readability and accessibility while being optimized for the block editor that first shipped with WordPress 5.0.</p>\n\n\n\n<p>Development of <em>Twenty Twenty</em> has been going quickly, with <a href=\"https://make.wordpress.org/core/2019/09/30/twenty-twenty-update/\">a recent update</a> showing more of the design and layouts that you can expect when the theme is released with WordPress 5.3 in November.</p>\n\n\n\n<p>Want to get involved in building <em>Twenty Twenty</em>? You can <a href=\"https://github.com/WordPress/twentytwenty\">contribute on GitHub</a>, follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>The Gutenberg project has continued to see regular updates with <a href=\"https://make.wordpress.org/core/2019/09/19/whats-new-in-gutenberg-18-september/\">the latest version</a> set to be included in WordPress 5.3.</li><li>Members of the Community Team <a href=\"https://make.wordpress.org/community/2019/09/13/call-for-participants-creating-a-welcoming-and-diverse-space-online-workshop-on-sun-oct-6/\">will run a workshop</a> to help event organizers create welcoming and diverse spaces for attendees.&nbsp;</li><li>There are some <a href=\"https://make.wordpress.org/updates/2019/09/20/wordpress-user-pro-survey-11-questions-and-a-script/\">proposed updates for the annual WordPress user survey</a> that need community feedback.</li><li><a href=\"https://make.wordpress.org/docs/2019/09/23/summary-for-helphub-meeting-23-september-2019/\">Work continues on the HelpHub project</a> where contributors are moving documentation to the updated support portal.</li><li>The Gutenberg team performed further usability tests in August, <a href=\"https://make.wordpress.org/test/2019/09/06/gutenberg-usability-testing-for-august-2019/\">with some interesting results</a>.</li><li><a href=\"https://buddypress.org/2019/09/buddypress-5-0-0-le-gusto/\">Version 5.0 of BuddyPress was released</a> near the end of this month, featuring a new REST API, improved group management, and other enhancements.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 08:05:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"HeroPress: 14 Years’ Detour\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2972\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://heropress.com/essays/14-years-detour/#utm_source=rss&utm_medium=rss&utm_campaign=14-years-detour\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:35176:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/10/100219-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I learned not only to keep face and move forward, but also to dare.\" /><p><a href=\"https://heropress.com/feed/#ru\">Это эссе также доступно на русском языке</a></p>\n<blockquote><p>Knowing what you want isn&#8217;t enough.</p></blockquote>\n<p>At the age of fifteen, I was told to hurry up with my professional education, if I don’t get a free place at university no one will pay for me. Last one was obvious and not because of money. I didn’t know how high or low my chances are even I had very good marks. I could have been just the biggest fish in the pond, but I wanted to leave people who treat me like expense item as soon as possible anyway. I made up my mind and it’s separated me from my classmates. I got secondary school certificate and left school instantly without goodbyes.</p>\n<p>My knowledge of opportunities was very narrow. I thought to be an ecologist or guide translator from German, based on what I was taught at school, or an advertiser, it was ads boom in Russia, ads were fascinating, and I collected flyers. At the same time, I was already good a computer user and did a lot of typing for one of the school&#8217;s principals, sometimes instead of classes, volunteered once and they couldn’t say “no”.</p>\n<p>No one bothered to give me advice, but I was sure my future was unimaginable without computers and came to a general decision to be a programmer. The range of technical schools was not wide, and names of specializations looked very abstruse. I messed up and spend four years studying transistor markings, soldering and drawing PCB layouts. Programming course turns out to be a bit of a joke, it was Pascal, we didn’t even try to do something useful with it. English course was another flaw in this education, the teacher was busy showing off and teasing girls. I&#8217;m not sure if he even knew the subject. He was fired after our collective petition. We got good marks just to forget about it. I left technical school with honors degree and improved typing skills.</p>\n<p>It was wild unfriendly market I faced. I didn’t know how to recognize a normal job offer from sinister one, so I bumped into several, like banging in people’s doors and pitch them in buying cheap stuff for very high price. It was harassing and I have no idea how long I would’ve looked for work without help.</p>\n<h3>The wrong approach can cause failure</h3>\n<p>I was lucky to have a father in an IT company. He proposed me like a substitute to typists when I was still a student and when I finished, helped me to get a job on updating a law system on client’s computers. Maybe I could get it by coming from the street, but I had to know where the entrance is. Half a year later I got a full-time job in the same service department and started to play volleyball with colleagues. It was great to meet people from other departments and on the field was no big difference between director and analyst, it’s fair play. I liked my place and my clients, but I was “friendly” told that without a university degree I will have no further promotions.</p>\n<p>At this time, I tried to study PHP by a book. It was very exciting at first, but a lot of functions without explanation how to build something useful with them didn’t make much sense and when I tried, I failed and backed off. It was hard to admit a fail even to myself and it was nagging me for a long time.</p>\n<p>I had to choose something I can handle; I’m interested in and can afford. It turned out to be advertising. I spent most of my and my husband’s holidays on sessions in the next 6 years. It was tricky for him to make me to leave a computer, once I was glued to it, so he bought me my first laptop. English was still hard for me, I got my high marks just memorizing all the words in a textbook and how they must sound. Again, I wanted something I cannot handle.</p>\n<blockquote><p>I started to hate my workplace long before I finished education with another honor degree no one was interested in.</p></blockquote>\n<p>I got a promotion quite soon despite apprehensions but then my chief was dismissed and with new one the things became very tense; I escaped to have a baby and spent a whole three years on child’s care holidays full of doubts. I tried to get off by studying, drawing and baking but the pram was pulling me back. I didn’t use to stay put, rely on my husband’s money and be separate from other people. I didn’t want to come back, but it looked like I have no better choice, I was convinced (overall, rightly) that not too many companies want in office position a woman with small baby and lots of sick leaves.</p>\n<p>After I returned at work it became clear that the situation in my department was unhealthier than ever, I lost my place and next boss treated all back-office girls like pieces of furniture. In a few months I had enough.</p>\n<h3>The flip side of the coin can become a black swan</h3>\n<p>I wanted to be a marketer. Knowing how tricky it is to sell intangibles, I wanted solid product to work with. Now I see that it isn&#8217;t a point at all.</p>\n<p>It turned out to be difficult to find a job outside IT, some HRs was kind enough to answer that with my experience I’ll better be in IT.</p>\n<p>Still I was very hopeful, studied hard and considered myself well, but once again I set a low bar to my employers. Companies I worked in wanted to get all publicity and sales rise through a cost of my salaries. I was careless once, the next time I asked specifically about budget before signing up and was assured, but still they meant my wages. It was a tough period of disappointments.</p>\n<p>When I was offered a part-time administrative job with “ok” to sick leaves, I took it gladly like a reprieve. It was far from home, and I was spending 2-3 hours a day on buses with Harry Potter audio books for company. In these traffic jams I started to feel English at last and loved it, it gave me a freedom no money can buy. And despite the long way I managed to play volleyball with my husband and his colleagues. Life was getting better.</p>\n<p>This job itself in addition to low payment had something valuable to me — a working website. After my boss had a row with its developer, I got it to maintain, did some reverse engineering and understood how it works. It wasn’t a most creative site, but it gave me a view. I started to write simple sites from scratch.</p>\n<blockquote><p>My first JavaScript calculator almost made me crazy, but I pursued.</p></blockquote>\n<p>From time to time I was asked for help from a friend or relative, usually to solve some urgent problems. So, I started to meet popular CMSs. One of the first I met with was WordPress. There was some issue in theme, which was changed and dropped by developer. I was digging a whole weekend deciphering how it works and found infinity loop to fix. Back then for me it was just a system…</p>\n<p>Two years later I found myself still clinging to my temporary job. I was tired of working for a hard nosed dictator, the last drop was his statement that I was not a programmer, because he hadn’t seen anything I made. I’ve already written some parts of website he asked for, so it was just unfair. I became angry and it was exactly what I needed, a big kick.</p>\n<p>I went out but still had no courage to pretend on a developer’s place and landed in some franchise company selling “box version” websites. It was another tough half of a year with a lot of work, low payment and plan failures, ending with pneumonia. I see now that I was making a disservice to customers, websites are not a microwave meal — quick, cheap and dummy. There was no life in them without a lot of work no one bargained to buy or do. Most of the sites I sold back then died when year expired but they never were truly alive and useful.</p>\n<h3>You need to pluck up your courage to become lucky</h3>\n<p>When I recovered, I search through developer’s job offers, but it was difficult to find something suitable worth trying to apply. I was reading job advertising and it looked, and still is, like mostly IT company are presented and they want geniuses who know a lot of technologies and frameworks at once. It was very distressing just to look.</p>\n<p>And then I became lucky again. I opened a private ads site and almost immediately found a job which was fitted me perfectly — they wanted someone with experience to write from scratch, understand another’s code and maintain it, ability to translate technical documentation and articles and make simple design of printing products. I made test task and there was no need in my resume or diplomas, I was taken. It’s turned out direct ad from one of sales departments in tech company and I passed by HR, who most likely wouldn&#8217;t even have considered me. Superior agreed to have me remotely most of the time, it solved sick leaves problem even if it was already much better than before. Addition to better salaries and calm work without over hours, I got very pleasant colleagues. We are friends ever since, despite back then no one guessed to invite me to play volleyball.</p>\n<p>It was 14 years after the original decision to be a programmer and it was only the beginning. I left this amazing place a couple years later when it held no more challenges for me.</p>\n<h3>Conscious decisions require wide knowledge</h3>\n<p>After I worked with a bunch of CMSs, I started to be able to compare them and understood not only that WordPress is the best one for developers and clients but also that I didn’t see right examples at all. The biggest flaw of WordPress — it’s so easy to make things work that there&#8217;s no need to bother and do things right and this becomes a problem later. I also saw bad cases on very different systems… and did them as well.</p>\n<p>I used to work relying on examples at hand, documentation and Google, but searching for a specific feature or a solution, I found myself again missing the whole picture. At this point Udemy courses came very handy and then I started to attend WordPress events, firstly online and then by foot, trains and airplanes and discovered a wide and very alive community. Now I know not only where to look but whom to ask and how to be not far from those who stays on top of things as much as possible. Most important is that I found allies who don’t think I’m going crazy, speaking with shining eyes about work, with whom I share a passion and fondness to WordPress. It’s what matters.</p>\n<p>Now, after 6 years of full time in development, I still feel myself like a newbie, it’s endless learning, frequent discoveries, mistakes and impassable wish to do better…</p>\n<h3>The way is the destination</h3>\n<p>I made a path very uneven, a lot of mess and banging, but for me it’s like a kaleidoscope where a little turn presents a new picture, new “a-ha” moment, new excitement after seemingly pointless efforts. When in doubt I remind myself about David Ogilvy who tried a lot of things before struck gold with advertising and it’s maybe why.</p>\n<p>Finally, I learned not only to keep face and move forward but also to dare.</p>\n<h3>Freedom is to make your own mind</h3>\n<p>I left my last workplace after we finished exhausted two years project on another CMS system which was a big reinventing of wheels and made up my mind to work only with WordPress from now on and dare to be my own boss.</p>\n<p>Now I’m officially an entrepreneur. This big boy’s stuff looks difficult. But I don’t want to be told, collaboration is a new black wherever I look.</p>\n<h2 id=\"ru\">Крюк длинной в 14 лет</h2>\n<blockquote><p>Не достаточно знать, что хочешь</p></blockquote>\n<p>В 15 лет мне было сказано, чтобы я поспешила с профессиональным образованием, если не поступлю бесплатно в институт, никто платить за меня не будет. Последнее было очевидно и не из-за денег. Несмотря на весьма хорошие оценки, я не могла оценить свои шансы, могло оказаться, что я просто большая рыба в маленьком пруду. Но в любом случае, я хотела как можно быстрей расстаться с людьми, видящими во мне одну большую статью расходов. Я приняла решение и это откололо меня от моих одноклассников. Ушла из школы я, не прощаясь, как только получила на руки сертификат об окончании 9 классов.</p>\n<p>Нужно было выбрать профессию, но потенциальные возможности были весьма туманны. Я могла стать экологом или немецкоязычным гид-переводчиком, на основе того, чему училась в школе, или рекламщиком, в России тогда начался рекламный бум, и она казалась очень захватывающей, я даже листовки собирала. В то же самое время я уже была хорошим пользователем компьютера и набирала документы для завуча старших классов, иногда вместо занятий — вызвалась один раз и потом уже не могла сказать «нет».</p>\n<p>Никто не пытался дать мне совет, но я была уверена, что будущее немыслимо без компьютеров и решила стать программистом. Выбор техникумов в пределах разумной досягаемости, был не очень большой, а названия специальностей выглядели очень мудрено. Я ошиблась и провела следующие 4 года изучая маркировку транзисторов, паяя и чертя печатные платы. Курс программирования обернулся дурной шуткой, это был Паскаль, и мы даже не пытались сделать с ним что-то полезное. Другим серьезным недостатком этого обучения стал английский язык, преподаватель выпендривался и задирал девушек, я так и не поняла знал ли он язык вообще. В конце концов он был уволен после нашей коллективной жалобы, а мы получили хорошие оценки, в качестве решения проблемы. Я выпустилась из техникума с красным дипломом и улучшенными навыками машинистки.</p>\n<p>Рынок труда был диким и неизведанным. Не зная, как распознать сомнительное предложение о работе, наткнулась на несколько таких, как ходить по домам и навязывать людям дешевые утюги за внушительную цену. Поиск работы оказался изматывающим, без посторонней помощи, я могла бы еще долго ходить по этим собеседованиям.</p>\n<h3>Неправильный подход может быть причиной неудачи</h3>\n<p>Мне повезло, отец работал в IT-компании. Он предложил меня в качестве подмены наборщикам, когда я еще училась, а когда закончила, помог получить работу по обновлению правовой системы на компьютерах у клиентов. Может быть меня взяли бы и, приди я с улицы, но для этого нужно было знать, куда идти. Через полгода я получила место в офисе в том же отделе обслуживания, а также начала играть с коллегами в волейбол. Это было здорово, знакомиться с людьми из других отделов, а еще на поле нет большой разницы между директором и аналитиком. Мне нравилось мое место и мои клиенты, но опять мне было «дружески» сказано, что без высшего образования, на большее я могу не рассчитывать.</p>\n<p>В это время я пыталась изучать PHP по книге. В начале все выглядело очень захватывающе, но функции без понимания как из них построить что-то целое не имели большого смысла, я пробовала, у меня не получалось, и в конце концов сдалась. Было сложно признаться, что я не смогла, даже самой себе и это неприятное чувство преследовало меня долгое время.</p>\n<p>Нужно было выбрать то, с чем я смогу справиться, что-то интересное и что будет мне по карману. Выбор пал на рекламу. В следующие 6 лет большая часть наших с мужем отпусков ушла на мои сессии. Ему было сложно выгнать меня из-за компьютера, я к нему приклеилась, поэтому он купил мне мой первый ноутбук. Английский по-прежнему давался мне очень трудно, и чтобы получить пять, пришлось переводить и запоминать вместе с транскрипцией все слова в учебном пособии. Снова я хотела то, что мне не давалось.</p>\n<blockquote><p>Я начала ненавидеть свое рабочее место задолго до того, как закончила университет с еще одним никому не нужным красным дипломом.</p></blockquote>\n<p>Я получила повышение достаточно скоро, несмотря на опасения, но затем руководство сменилось и работать с новым стало весьма напряженно. Я сбежала в декрет и провела следующие три года отпуска по уходу за ребенком полные сомнений. Учеба, рисование и приготовление пирогов отвлекали, но я оказалась не готова быть привязанной к коляске — ограниченной в передвижениях, оторванной от других людей, полагаться на деньги мужа. Возвращаться на работу я не хотела, но не видела лучшего выхода, была убеждена, и вполне резонно, что ни так много компаний готовы взять на офисную позицию женщину с маленьким ребенком и кучей больничных.</p>\n<p>После того, как я вернулась на работу, стало ясно, что ситуация стала еще хуже, чем была. Я потеряла свое место, а очередной новый руководитель относился во всем девушкам «поддержки» как к мебели. Несколько месяцев мне хватило.</p>\n<h3>Обратная сторона медали может быть золотой</h3>\n<p>Я хотела быть маркетологом. Зная, как непросто продавать что-то неосязаемое, решила работать с товаром, который можно пощупать. Сейчас думаю, разница была только в голове.</p>\n<p>Оказалось, сложно найти работу вне IT-сектора, некоторые менеджеры по персоналу снисходили для объяснений, что мне будет лучше в IT.</p>\n<p>И все-таки я была настроена оптимистично, я усердно училась и считала, что хорошо справляюсь, но опять, оказалось, что установила слишком низкую планку для работодателей. Компании, в которых я работала, хотели и публикации, и рост продаж исключительно за счет моей зарплаты. Ошибившись один раз, в следующий я специально уточнила вопрос с бюджетом, и меня заверили, что он есть. Оказалось, что это по-прежнему только зарплата. Это был период разочарований.</p>\n<p>Когда мне предложили административную работу на полставки с терпимым отношением к больничным, я с радостью ухватилась за возможность взять передышку. Работа была далеко от дома, и я проводила 2-3 часа в маршрутках каждый день в компании с аудиокнигами про Гарри Поттера. В этих дорожных пробках я наконец почувствовала английский язык и полюбила его, это дало мне свободу, которую невозможно купить за деньги. И, несмотря на долгую дорогу, я смогла играть после работы в волейбол с мужем и его коллегами. Жизнь налаживалась.</p>\n<p>Эта работа сама по себе, помимо низкой зарплаты, имела нечто ценное для меня – работающий сайт. После того, как мой начальник поссорился с разработчиком, я получила его на поддержку. Разобрав его на части, я поняла, как он работает. Это не был самый креативный сайт в мире, но он дал мне целостное представление, и я начала писать простые сайты с нуля.</p>\n<blockquote><p>Мой первый калькулятор на JavaScript практически свел меня с ума, но я продолжила.</p></blockquote>\n<p>Время от времени меня просили помочь родственники и друзья, обычно решить какую-то срочную проблему. Так я стала встречаться с популярными CMS. Одной из первых оказался WordPress. Там была проблема в теме, которую разработчик изменил и бросил. Я копала все выходные, но в конце концов нашла место, где код уходил в бесконечный цикл и исправила. Тогда для меня это была просто какая-то система…</p>\n<p>Два года спустя я все еще держалась за свою временную работу. Резкие манеры начальника перестали казаться забавными и последней каплей стало его категорическое заявление, что я не программист, потому что он не видел ничего, созданного мной. На тот момент я уже написала для сайта функционал, который он же просил, так что это было обидно. Я разозлилась и это стало толчком в нужном направлении.</p>\n<p>Я ушла, но все еще не пыталась получить работу разработчика, и в результате оказалась в одной из франшизных компаний, продающих сайты «из коробки». Это были сложные полгода с кучей работы, низкой зарплатой и провалами плана, закончившиеся воспалением легких. Сейчас, думаю, я оказывала клиентам медвежью услугу, сайт – не готовое блюдо для микроволновки, быстрое, дешевое и типовое. В этих сайтах нет жизни без вложения огромного труда, за которых никто не готов был платить. Большая часть сайтов умерли через год, но они и живыми то не были.</p>\n<h3>Нужно набраться смелости, чтобы повезло</h3>\n<p>Когда я поправилась, начала искать работу разработчика, но было сложно найти что-то подходящее даже просто чтобы решиться ответить на вакансию. В объявлениях были в основном представлены IT-компании, которым нужны гении, знающие огромное количество технологий и фреймворков. Только вид этих вакансий вгонял в депрессию.</p>\n<p>А потом мне снова повезло. Я открыла сайт частных объявлений и буквально сразу же нашла работу, которая мне подходила идеально — они хотели кого-то с опытом написания с нуля, умеющего разбираться и дописывать чужой код, переводить техническую документацию и статьи, а также делать простую полиграфию. Я сделала тестовое задание и была принята, ни дипломы, ни резюме уже не понадобились. Оказалось, это был объявление одного из отделов продаж в компании, занимающейся промышленным оборудованием, и я прошла в обход отделка кадров, который, уверена, даже не посмотрел бы на меня. Начальник согласился на мою работу удаленно, что решило проблему частых больничных, хотя ребенок рос, и их уже стало намного меньше. В дополнение к лучшей зарплате и спокойной работе без переработок и нервотрепки, мне достались замечательные коллеги. Мы дружим с тех пор, несмотря на то, что тогда никто не догадался позвать меня играть в волейбол.</p>\n<p>Это случилось через 14 лет после первоначального решения стать программистом и это был только начало. Я ушла через пару лет, когда ничего нового в работе уже не осталось.</p>\n<h3>Сознательные решения требуют широкий знаний</h3>\n<p>После того, как я поработала с разными CMS, смогла не только сравнить их между собой и понять, что WordPress лучшая из всех как для разработчиков, так и для клиентов, но также обнаружить, что вообще не видела хороших примеров разработки. Самая большая проблема WordPress — сделать так, чтобы работало, настолько легко, что мало кто не утруждает себя делать правильно, что позже оборачивается проблемами при доработке и поддержке. Впрочем, я видела плохие решения на разных CMS, да и сама их делала.</p>\n<p>Отталкиваясь от доступных примеров и документации и ища в поисковиках конкретные решения, я опять обнаружила, что не вижу всей картины. В этот момент курсы Udemy оказались очень кстати, а затем я начала посещать мероприятия WordPress, сначала онлайн, потом топая ни них ножками, оправляясь на поездах и самолетах, и обнаружила большое и весьма активное сообщество. Наконец-то я нашла не только тех, у кого можно спросить, но и как быть недалеко от тех, кто «в теме», насколько это вообще возможно. Самое важное – я нашла единомышленников, тех, кто не думает, что человек, говорящий с горящими глазами о работе, рехнулся, с кем у нас общая страсть и любовь к WordPress. Это то, что имеет значение.</p>\n<p>Сейчас, проработав 6 лет как разработчик, я все еще чувствую себя новичком, это бесконечное обучение, частые открытия, ошибки и непроходящее желание сделать лучше.</p>\n<h3>Смысл пути в самом пути</h3>\n<p>Мой путь очень извилистый, много метаний и набитых шишек, но для меня это как калейдоскоп, где каждый поворот показывает новую картинку, новое озарение, дает энергию двигаться дальше после казавшихся напрасными усилий. В периоды сомнений, я напоминаю себе о Дэвиде Огилви, который сменил множество специальностей, пока не добился успеха в рекламе.</p>\n<p>Я научилась не только сохранять лицо и идти вперед, но также набралась смелости.</p>\n<h3>Свобода — возможность принимать решения</h3>\n<p>Я ушла со своего последнего места работы, где мы закончили изматывающий двухлетний проект на другой CMS, ставший сам по себе большой ошибкой, и ни только приняла решение работать исключительно с WordPress, но и стать своим собственным начальником.</p>\n<p>Теперь я официально предприниматель. Все эти вещи «для больших мальчиков» выглядят достаточно сложными, но я больше не хочу слепо делать то, что мне скажут. В тренде коллаборации, куда ни глянь.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: 14 Years’ Detour\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=14%20Years%E2%80%99%20Detour&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2F14-years-detour%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: 14 Years’ Detour\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2F14-years-detour%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2F14-years-detour%2F&title=14+Years%E2%80%99+Detour\" rel=\"nofollow\" target=\"_blank\" title=\"Share: 14 Years’ Detour\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/14-years-detour/&media=https://heropress.com/wp-content/uploads/2019/10/100219-150x150.jpg&description=14 Years’ Detour\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: 14 Years’ Detour\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/14-years-detour/\" title=\"14 Years’ Detour\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/14-years-detour/\">14 Years’ Detour</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 05:00:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Olga Gleckler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Brian Gardner Steps Down From StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94449\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/brian-gardner-steps-down-from-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7190:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Brian Gardner <a href=\"https://studiopress.blog/not-goodbye/\">announced he was stepping down</a> from his role with StudioPress this past Friday.  Last year, <a href=\"https://wptavern.com/wp-engine-acquires-studiopress\">WP Engine acquired StudioPress</a>.  After staying on board for the remainder of his contract, Gardner stepped down from his role with the company.</p>\n\n\n\n<p>&#8220;The past 15 months have gone by quickly, and it sometimes feels like yesterday that we made the announcement,&#8221; Gardner said in his post. &#8220;In the same breath, it has also felt like forever.&#8221;</p>\n\n\n\n<p>For many in the WordPress community, Gardner needs no introduction.  He&#8217;s the founder of <a href=\"https://studiopress.com\">StudioPress</a> and co-created Genesis with Nathan Rice, one of the most popular WordPress themes today.  In many ways, he&#8217;s the father of the modern professional WordPress theme ecosystem, becoming one of the first theme authors to figure out that you could make a living by providing WordPress products.</p>\n\n\n\n<p>He&#8217;s unafraid of letting his personal geek flag fly in his online life. He <a href=\"https://twitter.com/bgardner/status/6776616143294464\">quotes Sarah McLachlan</a>, is a self-affirmed Starbucks addict, runs marathons, and loves family trips to Disney World.</p>\n\n\n\n<p>For many theme authors in the WordPress community, he&#8217;s an inspiration.  Even as a former business competitor, I&#8217;ve always admired his work.  More than that, I&#8217;ve admired how he runs his business.  He never needed to be flashy.  He never needed to create controversy for PR.  He, almost quietly, built up a successful company.  The splashes he made came from the products he and his company released.</p>\n\n\n\n<p>In 2007, Gardner released the Revolution WordPress theme to the public for sale. Some may argue that Revolution was the catalyst for the commercial WordPress themes ecosystem.  There were several theme business startups around the same time.  Revolution at least played a pivotal role in the market&#8217;s early growth.</p>\n\n\n\n<p>Gardner launched the Revolution business in 2008, but quickly <a href=\"https://www.studiopress.com/revolution-rebrands-as-studiopress/\">rebranded to StudioPress</a> in 2009 after some legal issues with the name. By late 2010, <a href=\"https://wptavern.com/studiopress-sold-to-copyblogger\">StudioPress merged with Copyblogger</a>.</p>\n\n\n\n<h2>Hindsight: The Biggest Regrets After 12 Years</h2>\n\n\n\n<p>When building a successful company, it&#8217;s easy to look back on things that could&#8217;ve been handled differently.  There are deals passed up, ideas that flopped, and products that didn&#8217;t scale.</p>\n\n\n\n<p>&#8220;My biggest regret was not starting with (or switching to) a recurring business model,&#8221; said Gardner.  &#8220;I think I left a lot of money on the table by not doing that, but once I merged StudioPress into Copyblogger Media, we decided to leave it as is and use the former as a doorway into our company&#8217;s ecosystem.&#8221;</p>\n\n\n\n<p>Many theme companies in the early days had lifetime sales.  It&#8217;s unlikely many could foretell how they&#8217;d need to scale for 10 or 20 years down the line.  The concept was relatively new in the WordPress space.  Gardner kept up with the model despite most theme shops moving to subscription-based sales, which typically scale better in the long term.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>From a personal standpoint, I think I could have done better. There were a few seasons (some short and others a bit longer) where I strayed away from my involvement at StudioPress. While I justified it by thinking that it was OK to pursue side projects and other things, I realize looking back that jeopardized the trust our customers had in the brand. I think I may have leaned too heavily on the fact that we had a team, but in the same breath, I think it was necessary for StudioPress to outgrow the label of &#8216;Brian Gardner themes.&#8217; This emphasis really helped with the transition after WP Engine acquired StudioPress.</p></blockquote>\n\n\n\n<h2>Building a Community Over Software</h2>\n\n\n\n<p>&#8220;Without a doubt, it&#8217;s the <a href=\"https://genesis.community/\">Genesis community</a>,&#8221; Gardner said when asked what he&#8217;s most proud of with his time at StudioPress. &#8220;When Nathan Rice and I set out to build Genesis (the framework), we were trying to solve a software problem and bring a better user experience for our customers.&#8221;</p>\n\n\n\n<p>Instead of building software, he learned what he was building was a community.  After creating a showcase page for people using the Genesis theme, he kept getting requests for people to build child themes.  This led to the creation of the <a href=\"https://www.studiopress.com/genesis-developers/\">Genesis Developers</a> page, which provided a way for people within the community to earn a living.</p>\n\n\n\n<p>&#8220;While community has always been important to me,&#8221; Gardner said, &#8220;I didn&#8217;t realize the ripple effect that creating a solid piece of software would have.&#8221;</p>\n\n\n\n<p>Gardner said the developers page created a way to pay it forward to the people who had helped him build a successful company.  The idea has remained a success, and there are many designers within the larger WordPress community who list custom Genesis design work in their credentials.</p>\n\n\n\n<p>&#8220;I have had the pleasure of being able to meet and spend time with members of the community—from talking about their success to future plans,&#8221; said Gardner.  &#8220;This past year at WordCamp US in Nashville, I was able to fully comprehend the level in which lives had been changed by what we had done—and those are the moments I could not be any prouder of what I built.&#8221;</p>\n\n\n\n<h2>What&#8217;s on the Horizon?</h2>\n\n\n\n<p>&#8220;Heh. The million-dollar question, right?&#8221; responded Gardner to whether he plans to continue building themes.  He doesn&#8217;t have any plans to create a new theme business, and any themes that he does build will be built for Genesis and made available from his website.</p>\n\n\n\n<p>&#8220;Over the past few years, I have developed a particular love for minimalist design, and I want to spend some of my time and creative energy there.&#8221;</p>\n\n\n\n<p>Gardner is currently available for hire as a website designer through <a href=\"https://authentik.com/\">Authentik</a>, a design and development studio that he founded.  Authentik specializes in branding and growth/audience building.  The team builds everything from landing pages to more complex multi-system environments.</p>\n\n\n\n<p>However, there may be more to come from Gardner in the future.  &#8220;I have created some personal space to pursue collaborations and consulting,&#8221; he said.  &#8220;I have a renewed focus on my blog and want to spend more time consuming content—reading books, listening to podcasts, and meeting up with folks locally. My heart to help fellow creators is as strong as ever, and I feel there are some really interesting opportunities to do that.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 01 Oct 2019 19:37:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Gatsby Days London Features Multiple WordPress Presentations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94405\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/gatsby-days-london-features-multiple-wordpress-presentations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9154:\"<p><a href=\"https://www.eventbrite.com/e/gatsby-days-london-2019-tickets-66228586485\" rel=\"noopener noreferrer\" target=\"_blank\">Gatsby Days London</a> kicked off yesterday with a lot of momentum after Gatsby Inc. announced <a href=\"https://wptavern.com/gatsby-raises-15m-plans-to-invest-more-heavily-in-wordpress-and-cms-integrations\" rel=\"noopener noreferrer\" target=\"_blank\">a $15M Series A funding round</a> last week. The one-day conference drew 200 attendees and was the third in a series of Gatsby Days that have been held in other cities. They are designed to give the community an opportunity to meet in person and hear more about the future of the project from its creators and contributors.</p>\n<p>Gatsby creator Kyle Mathews gave the keynote address and described what he sees as a shift from the LAMP-stack CMS era to &#8220;content mesh&#8221; architecture.</p>\n<p>&#8220;Monolithic CMSs were invented in 90s — they’re now migrating to become specialized modular services,&#8221; Mathews said. Gatsby provides the presentation layer for this new architecture and its plugin layer connects out to multiple content sources.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Old world vs new world explained by <a href=\"https://twitter.com/kylemathews?ref_src=twsrc%5Etfw\">@kylemathews</a> shown in his diagram when explaining <a href=\"https://twitter.com/gatsbyjs?ref_src=twsrc%5Etfw\">@gatsbyjs</a> <a href=\"https://twitter.com/hashtag/GatsbyDaysLondon?src=hash&ref_src=twsrc%5Etfw\">#GatsbyDaysLondon</a> <a href=\"https://t.co/9EIxS6Sc3X\">pic.twitter.com/9EIxS6Sc3X</a></p>\n<p>&mdash; Ilesh Mistry (@ileshmistry) <a href=\"https://twitter.com/ileshmistry/status/1178598732000108544?ref_src=twsrc%5Etfw\">September 30, 2019</a></p></blockquote>\n<p></p>\n<p>An informal survey of attendees showed that roughly a 1/3 were experienced at working with Gatsby and the majority of those in the audience were newer users or simply curious to learn more. Although Gatsby is currently geared primarily towards developers, Mathews described how the project is working towards enabling people in other roles who also work on websites.</p>\n<p>&#8220;We&#8217;re thinking really hard about how we can help everyone who works on a website, not just developers,&#8221; Mathews said. &#8220;Right now, Gatsby is essentially for developers, but our goal isn&#8217;t to help developers per se. Our goal is to help amazing websites be created.</p>\n<p>&#8220;This matters because the world runs on websites. More and more essential services that everyone relies on are websites and web apps, and we want to help with that. Developers are a key part of building websites but the actual process of building a web property is an incredible cross functional job for an organization to take on.&#8221; This process often includes designers, content editors, marketing professionals, and others.</p>\n<p>Gatsby, Inc.&#8217;s first cloud service, <a href=\"https://www.gatsbyjs.com/preview\" rel=\"noopener noreferrer\" target=\"_blank\">CMS Preview</a>, was inspired by this goal of assisting non-developers who work on websites. It shows content authors immediate feedback when they change content, which the team found to be a common requirement in most editorial workflows.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\"><a href=\"https://twitter.com/hashtag/GatsbyJS?src=hash&ref_src=twsrc%5Etfw\">#GatsbyJS</a> is great for <a href=\"https://twitter.com/hashtag/Drupal?src=hash&ref_src=twsrc%5Etfw\">#Drupal</a>. Our new <a href=\"https://twitter.com/hashtag/CMS?src=hash&ref_src=twsrc%5Etfw\">#CMS</a> Preview product makes preview lightning-fast! <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/26a1.png\" alt=\"⚡\" class=\"wp-smiley\" /></p>\n<p>Thanks to all at <a href=\"https://twitter.com/hashtag/GatsbyDaysLondon?src=hash&ref_src=twsrc%5Etfw\">#GatsbyDaysLondon</a> who came to see \"Live preview with <a href=\"https://twitter.com/gatsbyjs?ref_src=twsrc%5Etfw\">@GatsbyJS</a> and <a href=\"https://twitter.com/hashtag/decoupled?src=hash&ref_src=twsrc%5Etfw\">#decoupled</a> <a href=\"https://twitter.com/drupal?ref_src=twsrc%5Etfw\">@Drupal</a>\"!</p>\n<p>Slides: <a href=\"https://t.co/tJ3A0dWlGV\">https://t.co/tJ3A0dWlGV</a><a href=\"https://twitter.com/hashtag/PHP?src=hash&ref_src=twsrc%5Etfw\">#PHP</a> <a href=\"https://twitter.com/hashtag/JavaScript?src=hash&ref_src=twsrc%5Etfw\">#JavaScript</a> <a href=\"https://twitter.com/hashtag/ReactJS?src=hash&ref_src=twsrc%5Etfw\">#ReactJS</a> <a href=\"https://twitter.com/hashtag/GatsbyDrupalPreview?src=hash&ref_src=twsrc%5Etfw\">#GatsbyDrupalPreview</a> <a href=\"https://t.co/k4UwJCp18m\">pic.twitter.com/k4UwJCp18m</a></p>\n<p>&mdash; Preston So @ #GatsbyDaysLondon <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f1ec-1f1e7.png\" alt=\"🇬🇧\" class=\"wp-smiley\" /> (@prestonso) <a href=\"https://twitter.com/prestonso/status/1178617916637552641?ref_src=twsrc%5Etfw\">September 30, 2019</a></p></blockquote>\n<p></p>\n<p>Mathews also said that the project&#8217;s design system library, <a href=\"https://www.gatsbyjs.org/docs/theme-ui/\" rel=\"noopener noreferrer\" target=\"_blank\">Gatsby Theme UI</a>, is another aspect of site creation aimed at making it more friendly for designers.</p>\n<p>&#8220;The goal of this is that designers and other non-developers can build Gatsby sites without building any code,&#8221; he said.</p>\n<p>Mathews covered some technical updates to Gatsby core and how the company is growing its team. A recording of the live broadcast is <a href=\"https://youtu.be/kuyLCwAMCZo?t=941\" rel=\"noopener noreferrer\" target=\"_blank\">available on YouTube</a>.</p>\n<h3>WordPress Sessions at Gatsby Days London: How to Use WPGraphQL and ACF as a Content Source, and Building and Selling Gatsby + WordPress Sites</h3>\n<p>Gatsby Days London featured presentations on several WordPress-related topics. Alexandra Spalato spoke about <a href=\"https://slides.com/alexandraspalato/gatsby-with-wordpress-and-wpgraphql-2\" rel=\"noopener noreferrer\" target=\"_blank\">using WordPress as a source for Gatsby</a>, demonstrating how to use WPGraphQL and Advanced Custom Fields (ACF) in a WordPress installation that produces content for a Gatsby front-end.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">now on stage is <a href=\"https://twitter.com/alexadark?ref_src=twsrc%5Etfw\">@alexadark</a> showing us how to work with Gatsby &amp; WordPress!<a href=\"https://twitter.com/hashtag/GatsbyDayslondon?src=hash&ref_src=twsrc%5Etfw\">#GatsbyDayslondon</a> <a href=\"https://t.co/1xP2sPjPam\">pic.twitter.com/1xP2sPjPam</a></p>\n<p>&mdash; Horacio Herrera (@hhg2288) <a href=\"https://twitter.com/hhg2288/status/1178610525401423872?ref_src=twsrc%5Etfw\">September 30, 2019</a></p></blockquote>\n<p></p>\n<p>&#8220;The vibe at Gatsby days was fantastic, the beautiful Venue with round tables, the enthusiastic community where you can find people from WordPress, Drupal and others, all interested by Gatsby.&#8221; Spalato said.</p>\n<p>She found the event to provide a good balance between talks and networking, with unconference sessions devoted to WordPress, themes, Drupal, PWA, component libraries, migrating to Gatsby, and other topics.</p>\n<p>&#8220;For me it was fantastic to speak there, as Gatsby is the bridge between my two worlds &#8211; WordPress and JavaScript/React,&#8221; Spalato said. &#8220;It was my first real public talk and the feeling that people loved it and learned something is extremely rewarding, so I plan to do lot of more talks at WordCamps about Gatsby in the near future.&#8221;</p>\n<p>Horacio Herrera gave a presentation on building and selling Gatsby + WordPress sites. He shared the process he uses to sell Gatsby-powered projects to clients as high-performing websites. For a week leading up to his Gatsby pitch, Herrera uses <a href=\"https://speedcurve.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Speed Curve</a> to track a client&#8217;s website performance and then uses <a href=\"https://wpostats.com\" rel=\"noopener noreferrer\" target=\"_blank\">WPO stats</a> to demonstrate how performance improvements have helped competitors and industry leaders succeed.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\"><a href=\"https://twitter.com/hhg2288?ref_src=twsrc%5Etfw\">@hhg2288</a>  next up <a href=\"https://twitter.com/hashtag/GatsbyDaysLondon?src=hash&ref_src=twsrc%5Etfw\">#GatsbyDaysLondon</a> building and selling <a href=\"https://twitter.com/gatsbyjs?ref_src=twsrc%5Etfw\">@gatsbyjs</a> and <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> sites <a href=\"https://t.co/F2l4TsQ5ks\">pic.twitter.com/F2l4TsQ5ks</a></p>\n<p>&mdash; Ilesh Mistry (@ileshmistry) <a href=\"https://twitter.com/ileshmistry/status/1178681914074554369?ref_src=twsrc%5Etfw\">September 30, 2019</a></p></blockquote>\n<p></p>\n<p>The emerging Gatsby ecosystem is one to keep an eye on, as the project intensifies its focus on providing deeper integrations for popular CMS&#8217;s. How these related technologies intersect with WordPress will impact developers&#8217; expectations and choices for the architecture of their websites in the future.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 01 Oct 2019 17:41:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: Automattic Has Discontinued Active Development on Edit Flow Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94429\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/automattic-has-discontinued-active-development-on-edit-flow-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4251:\"<p><a href=\"https://wordpress.org/plugins/edit-flow/\" rel=\"noopener noreferrer\" target=\"_blank\">Edit Flow</a>, the modular editorial plugin that enables collaboration inside the WordPress admin, is no longer being actively developed. After no updates for nine months, Mark Warbinek, a frustrated user, contacted Automattic to ask if they have abandoned the plugin or still plan to update it. A support representative from Automattic <a href=\"https://wordpress.org/support/topic/edit-flow-plugin-is-closed-no-longer-supported/\" rel=\"noopener noreferrer\" target=\"_blank\">confirmed</a> the company will no longer be updating Edit Flow:</p>\n<blockquote><p>At this time there is no active development of the Edit Flow Plugin.</p>\n<p>That being the case – two things I can suggest are:</p>\n<p>Submitting the issue to the Github repository for the plugin. This is used to track future development of the plugin and will be a canonical place for bugs or issues to be recorded.<br />\n<a href=\"https://github.com/Automattic/Edit-Flow\">https://github.com/Automattic/Edit-Flow</a></p>\n<p>It is possible to ‘fork’ the plugin and make the changes needed – or use an alternative that has already been forked like PublishPress:<br />\nhttps://github.com/Automattic/Edit-Flow</p></blockquote>\n<p>Edit Flow is active on more than 10,000 WordPress sites and its sporadic development has caused users to question whether it was abandoned several times over the years. It is still listed among the <a href=\"https://wpvip.com/plugins/edit-flow/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.com VIP plugins</a>, but will likely only be maintained for that platform going forward. <a href=\"https://github.com/Automattic/Edit-Flow/pull/499\" rel=\"noopener noreferrer\" target=\"_blank\">A 10-month old PR</a> was merged on its GitHub repository as recently as 19 days ago, after the contributor began to question whether the project was abandoned.</p>\n<p>In 2016, <a href=\"https://wptavern.com/hey-automattic-whats-going-on-with-edit-flow\" rel=\"noopener noreferrer\" target=\"_blank\">Edit Flow went two years in between updates</a>, leaving frustrated users in the dark. After that incident, a representative from Automattic <a href=\"https://wptavern.com/hey-automattic-whats-going-on-with-edit-flow#comment-164215\" rel=\"noopener noreferrer\" target=\"_blank\">said</a> the company was working on an internal effort to improve the maintenance of their own plugins in order to avoid a situation like this happening again. The company currently has 88 plugins listed in the official directory.</p>\n<p><a href=\"https://wordpress.org/plugins/publishpress/\" rel=\"noopener noreferrer\" target=\"_blank\">PublishPress</a> is the only alternative editorial plugin with comparable features, including an editorial calendar, notifications, editorial comments, custom statuses, and a content overview. It also offers <a href=\"https://publishpress.com/knowledge-base/migrate/\" rel=\"noopener noreferrer\" target=\"_blank\">seamless migration of Edit Flow data to PublishPress</a>. A commercial version of the plugin includes additional features, such as a publishing checklist, reminders, permissions, a WooCommerce checklist, and more.</p>\n<p>&#8220;I think I can speak for those users of this plugin that we are not happy with the horrible handling of this plugin, how Automattic has ignored and abandoned it, leaving users to suffer in the continuing fails this out-of-date plugin is causing,&#8221; Mark Warbinek <a href=\"https://wordpress.org/support/topic/edit-flow-plugin-is-closed-no-longer-supported/\" rel=\"noopener noreferrer\" target=\"_blank\">said</a> in response to to the reply from Automattic&#8217;s support team.</p>\n<p>Unfortunately, this is always a risk when using free plugins from WordPress.org, especially ones without a direct business model supporting development. In many instances the plugin author&#8217;s first priority will be maintaining it for the paying customers. In this case that is WordPress.com VIP clients. Automattic has not posted an announcement on Edit Flow&#8217;s support forums, but an official communication would go a long way towards steering users in the right direction when they inevitably come looking for signs of life in the plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 01 Oct 2019 03:31:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress.org blog: WordPress 5.3 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7262\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2993:\"<p>WordPress 5.3 Beta 2 is now available!</p>\n\n\n\n<p><strong>This software is still in development,</strong> so we don’t recommend running it on a production site. Consider setting up a test site to play with the new version.</p>\n\n\n\n<p>You can test the WordPress 5.3 beta in two ways:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.3-beta2.zip\">download the beta here</a> (zip).</li></ul>\n\n\n\n<p>WordPress 5.3 is slated for release on <a href=\"https://make.wordpress.org/core/5-3/\">November 12, 2019</a>, and we need your help to get there. </p>\n\n\n\n<p>Thanks to the testing and feedback from everyone who tested <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\">beta 1</a>, over <a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=09%2F24%2F2019..&milestone=5.3&group=component&col=id&col=summary&col=owner&col=type&col=priority&col=component&col=version&order=priority\">45 tickets have been closed</a>&nbsp;since then. </p>\n\n\n\n<h2>Some highlights</h2>\n\n\n\n<ul><li>Work continues on the <strong>block editor</strong>.</li><li>Bugs fixed on<strong> Twenty Twenty</strong>.</li><li><strong>Accessibility</strong> bugs fixes and enhancements on the interface changes introduced with 5.3 beta 1:<ul><li>Iterate on the admin interface</li><li>Reduce potential backward compatibility issues</li><li>Improve consistency between admin screens and the block editor</li><li>Better text zoom management</li></ul></li><li>Support <code>rel=\"ugc\"</code> attribute value in comments (<a href=\"https://core.trac.wordpress.org/ticket/48022\">#48022</a>) &#8211; this particular ticket shows the WordPress project ability to integrate quick solutions to things that are changing unexpectedly – like Google new features.</li></ul>\n\n\n\n<h2>Developer notes</h2>\n\n\n\n<p>WordPress 5.3 has lots of refinements to polish the developer experience. To keep up, subscribe to the&nbsp;<a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>&nbsp;and pay special attention to the&nbsp;<a href=\"https://make.wordpress.org/core/tag/5-3+dev-notes/\">developers notes</a>&nbsp;for updates on those and other changes that could affect your products.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev/\">Help us translate WordPress into more than 100 languages</a>!</p>\n\n\n\n<p>If you think you’ve found a bug, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://core.trac.wordpress.org/newticket\">file one on WordPress Trac</a> where you can also find a list of <a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Sep 2019 21:43:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"BuddyPress: BuddyPress 5.0.0 “Le Gusto”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=308041\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://buddypress.org/2019/09/buddypress-5-0-0-le-gusto/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10760:\"<p>Here&#8217;s our latest major release featuring the <strong>BuddyPress REST API</strong> !!</p>\n\n\n\n<div class=\"wp-block-button aligncenter is-style-squared\"><a class=\"wp-block-button__link has-background\" href=\"https://downloads.wordpress.org/plugin/buddypress.5.0.0.zip\">Get BuddyPress 5.0.0</a></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p>We are very excited to announce the BuddyPress community the immediate availability of <strong>BuddyPress 5.0.0</strong> code-named &#8220;<strong>Le Gusto</strong>&#8220;. You can get it clicking on the above button, downloading it from our&nbsp;<a href=\"https://wordpress.org/plugins/buddypress/\">WordPress.org plugin repository</a> or checking it out from our <a href=\"https://buddypress.trac.wordpress.org/browser/branches/5.0\">subversion repository</a>.</p>\n\n\n\n<p><em>NB: if you&#8217;re upgrading from a previous version of BuddyPress, please make sure to back-up your WordPress database and files before proceeding.  </em></p>\n\n\n\n<p>You can view all the changes we made in 5.0.0 thanks to our <a href=\"https://codex.buddypress.org/releases/version-5-0-0/\">full release note</a>. Below are the key features we want to get your attention on.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div><span class=\"dashicons dashicons-rest-api\"></span></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>The BP REST API opens a new era for BuddyPress!</h2>\n\n\n\n<p>You can now enjoy&nbsp;REST&nbsp;API&nbsp;endpoints&nbsp;for&nbsp;members, groups, activities, private&nbsp;messages, screen notifications and extended profiles.</p>\n\n\n\n<p>BuddyPress endpoints provide machine-readable external access to your WordPress site with a clear, standards-driven interface, paving the way for new and innovative methods of interacting with your community through plugins, themes, apps, and beyond.</p>\n\n\n\n<p>The BP REST API opens great new opportunities to improve the way you play with the BuddyPress component features: we couldn&#8217;t resist to start building on top of it introducing&#8230; </p>\n\n\n\n<h3>A new interface for managing group members.</h3>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://buddypress.org/wp-content/uploads/1/2019/09/group-manage-members.png\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/group-manage-members.png\" alt=\"Screen Capture of the new Group Mange Members UI\" class=\"wp-image-308052\" /></a></div>\n\n\n\n<p>Group administrators will love our new interface for managing group membership. Whether you&#8217;re working as a group admin on the front-end Manage tab, or as the site admin on the Dashboard, the new REST API-based tools are faster, easier to use, and more consistent.</p>\n\n\n\n<h3>The BP REST API is fully documented</h3>\n\n\n\n<p>The development team worked hard on the features but also took the time to <a href=\"https://buddypress.org/2019/09/bp-devhub-1-0/\">write the documentation</a> about how to use it and how to extend it. BuddyPress developers, let&#8217;s start building great stuff for our end users: take a look at <a href=\"https://developer.buddypress.org/bp-rest-api/\">the BP REST API developer reference</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div><span class=\"dashicons dashicons-buddicons-groups\"></span></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Improved Group invites and membership requests</h2>\n\n\n\n<p>Thanks to the new BP Invitations API, Group invites and membership requests are now managed in a more consistent way. The BP Invitations API abstracts how these two actions are handled and allows developers to use them for any object on your site (e.g., Sites of a WordPress network).</p>\n\n\n\n<p>Read&nbsp;more&nbsp;about&nbsp;the&nbsp;<a href=\"https://bpdevel.wordpress.com/2019/09/16/new-invitations-api-coming-in-buddypress-5-0/\">BP&nbsp;Invitations&nbsp;API</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div><span class=\"dashicons dashicons-buddicons-forums\"></span></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Help our support volunteers help you.</h2>\n\n\n\n<p>Knowing your WordPress and BuddyPress configuration is very important when one of our beloved support volunteers tries to help you fix an issue. That&#8217;s why we added a BuddyPress section to the Site Health Info Administration screen.</p>\n\n\n\n<a href=\"https://buddypress.org/wp-content/uploads/1/2019/09/debug-buddypress.png\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/debug-buddypress.png\" alt=\"Screen capture of the BuddyPress section of the Site Health screen.\" class=\"wp-image-308058\" /></a>\n\n\n\n<p>The panel is displayed at the bottom of the screen. It includes the BuddyPress version, active components, active template pack, and a list of other component-specific settings information.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns has-2-columns\">\n<div class=\"wp-block-column\">\n<div><span class=\"dashicons dashicons-heart\"></span></div>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<div><span class=\"dashicons dashicons-wordpress-alt\"></span></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Improved integrations with WordPress</h2>\n\n\n\n<h3>BP Nouveau Template Pack</h3>\n\n\n\n<p>In BuddyPress 5.0.0, the BP Nouveau template pack looks better than ever with the Twenty Nineteen theme.</p>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://buddypress.org/wp-content/uploads/1/2019/09/edit-password.png\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/edit-password.png\" alt=\"\" class=\"wp-image-308069\" /></a></div>\n\n\n\n<p>Nouveau now uses the same password control as the one used in WordPress Core, for better consistency between BuddyPress and WordPress spaces.</p>\n\n\n\n<h3>BuddyPress Blocks now have their own category into the Block Editor.</h3>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://buddypress.org/wp-content/uploads/1/2019/09/bp-blocks.png\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/bp-blocks.png\" alt=\"\" class=\"wp-image-308070\" /></a></div>\n\n\n\n<p>Developers building tools for the Block Editor can now add their blocks to the BuddyPress category. This change provides a foundation for organizing custom BuddyPress blocks.</p>\n\n\n\n<p>Read more about this feature in this <a href=\"https://bpdevel.wordpress.com/2019/07/31/a-category-to-store-your-buddypress-blocks/\">development note</a>.</p>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://buddypress.org/2018/11/buddypress-4-0-0-pequod/#comment-44752\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/matt-comment.png\" alt=\"\" class=\"wp-image-308075\" /></a>Screen capture of the <a href=\"https://buddypress.org/2018/11/buddypress-4-0-0-pequod/#comment-44752\">comment</a> Matt made about BuddyPress 4.0.0</div>\n\n\n\n<p><em>PS: we know, just like Matt, you&#8217;re eager to enjoy high quality community blocks: now we have the BP REST API and this new Blocks category available in BuddyPress Core, get ready to be amazed for our next release. Fasten your seatbelts: BuddyPress blocks are arriving!</em></p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/pizza.png\" alt=\"\" class=\"wp-image-308073\" /></div>\n\n\n\n<h2>BuddyPress Le Gusto</h2>\n\n\n\n<p>5.0.0 is code-named <strong>&#8220;Le Gusto&#8221;</strong> after the <a href=\"https://goo.gl/maps/tpvew6YSivZ5KX218\">well known Pizza restaurant</a> in Fortaleza, Brazil. It’s the perfect place to meet with friends and start tasting new flavors like <a class=\"bp-suggestions-mention\" href=\"https://buddypress.org/members/espellcaste/\" rel=\"nofollow\">@espellcaste</a>’s favorite one: the &#8220;Pizza de Camarão&#8221;. </p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div><span class=\"dashicons dashicons-buddicons-buddypress-logo\"></span></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Muito Obrigado</h2>\n\n\n\n<p>As usual, this BuddyPress release is only possible thanks to the contributions of the community. Special thanks to the following folks who contributed code and testing to the release: <a href=\"https://github.com/baconbro\">baconbro</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone B Gorges (boonebgorges)</a>, <a href=\"https://profiles.wordpress.org/joncadams/\">boop (joncadams)</a>, <a href=\"https://profiles.wordpress.org/sbrajesh/\">Brajesh Singh (sbrajesh)</a>, <a href=\"https://profiles.wordpress.org/dcavins/\">David Cavins (dcavins)</a>, <a href=\"https://profiles.wordpress.org/ericlewis/\">Eric Lewis (ericlewis)</a>, <a href=\"https://profiles.wordpress.org/geminorum/\">geminorum</a>, <a href=\"https://profiles.wordpress.org/gingerbooch/\">gingerbooch</a>, <a href=\"https://profiles.wordpress.org/ivinco/\">Ivinco</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock (whyisjake)</a>, <a href=\"https://profiles.wordpress.org/JarretC/\">Jarret (JarretC)</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby (johnjamesjacoby)</a>, <a href=\"https://profiles.wordpress.org/klawton/\">klawton</a>, <a href=\"https://profiles.wordpress.org/kristianngve/\">Kristian Yngve (kristianngve)</a>, <a href=\"https://profiles.wordpress.org/maniou/\">Maniou</a>, <a href=\"https://profiles.wordpress.org/netweblogic/\">Marcus (netweblogic)</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet (imath)</a>, <a href=\"https://github.com/bhoot-biswas\">Mithun Biswas</a>, <a href=\"https://profiles.wordpress.org/modemlooper/\">modemlooper</a>, <a href=\"https://profiles.wordpress.org/DJPaul/\">Paul Gibbs (DJPaul)</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/razor90/\">razor90</a>, <a href=\"https://profiles.wordpress.org/espellcaste/\">Renato Alves (espellcaste)</a>, <a href=\"https://profiles.wordpress.org/slaFFik/\">Slava Abakumov (slaFFik)</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar (netweb)</a>, <a href=\"https://profiles.wordpress.org/truchot/\">truchot</a>, <a href=\"https://profiles.wordpress.org/venutius/\">Venutius</a>, <a href=\"https://profiles.wordpress.org/wegosi/\">wegosi</a>, and of course you for using BuddyPress <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f609.png\" alt=\"😉\" class=\"wp-smiley\" /></p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div><span class=\"dashicons dashicons-format-chat\"></span></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Feedbacks welcome!</h2>\n\n\n\n<p>Receiving your feedback and suggestions for future versions of BuddyPress genuinely motivates and encourages our contributors. Please share&nbsp;your&nbsp;feedback about this version of BuddyPress in the comments area of this post. And of course, if you&#8217;ve found a bug: please tell us about it into our <a href=\"https://buddypress.org/support/\">Support forums</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Sep 2019 21:30:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WPTavern: Preparing Themes For WordPress 5.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94401\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wptavern.com/preparing-themes-for-wordpress-5-3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5011:\"<p>Now that <a href=\"https://wptavern.com/wordpress-5-3-beta-1-ready-for-testing-includes-12-gutenberg-releases-and-new-twenty-nineteen-default-theme\">WordPress 5.3 Beta 1</a> is open for testing and with the official release slated for November 12, it&#8217;s time for theme authors to begin making sure their themes are ready for several changes.</p>\n\n\n\n<p>Most work will revolve around the block editor.  WordPress 5.3 will include versions 5.4 &#8211; 6.5 of the Gutenberg plugin, a total of 12 releases.  This makes for a lot of ground to cover.  The next release includes breaking changes.</p>\n\n\n\n<p>For themes without custom block styles, little should change.  However, theme authors who have been building custom block designs will likely have some work to do if they haven&#8217;t kept up with the changes in the Gutenberg plugin over the past several months.</p>\n\n\n\n<h2>Block Style Variations API Introduced</h2>\n\n\n\n<p>WordPress 5.3 introduces new <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">server-side block style functions</a>.  This means that theme authors who prefer PHP can now register custom block style variations without writing JavaScript code.</p>\n\n\n\n<p>The block styles feature allows theme authors to register custom styles for individual blocks.  Then, they must apply custom CSS to these styles in the editor and the front end.</p>\n\n\n\n<p>The new functions are basic one-to-one matches to their JavaScript counterparts.  Block styles still need to be registered on a per-block basis.  Support for registering single styles to multiple blocks at once hasn&#8217;t landed in core.</p>\n\n\n\n<h2>New Block HTML Creates Breaking Changes</h2>\n\n\n\n<p>Despite WordPress&#8217; commitment to backward compatibility over the years, the Gutenberg team hasn&#8217;t maintained that approach with blocks.  Block HTML output in the editor and the front end has changed for some blocks.  These changes will break custom theme styles in many cases.</p>\n\n\n\n<p>The following blocks have potential breaking changes for themes:</p>\n\n\n\n<ul><li><strong>Group:</strong> A new inner container element was added to the markup.</li><li><strong>Table:</strong> A wrapper element was added and the block class moved to the wrapper.</li><li><strong>Gallery:</strong> Like the table block, it received the same wrapper element treatment. Galleries also support a caption for the entire gallery block.</li></ul>\n\n\n\n<p>In my tests, the gallery block had the most obvious breaking changes. Depending on how it is styled, users could be looking at a single column of images instead of their selected number.  The core development blog has a <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">complete overview of the HTML changes</a> along with code examples for addressing issues.</p>\n\n\n\n<p>It&#8217;d be interesting to see if the Gutenberg team makes similar HTML changes with other blocks in the future. Such changes make it tough for theme authors to maintain support between versions of WordPress and versions of the Gutenberg plugin.  It also bloats CSS code when attempting to maintain compatibility.  Adding an extra element doesn&#8217;t typically break things.  However, moving an element&#8217;s class to another element is a dumpster fire waiting to happen.  If these types of changes continue to happen, it could turn some theme authors away from supporting the block editor at a time when core needs to be encouraging more authors to design around it.</p>\n\n\n\n<h2>New Block Classes Added</h2>\n\n\n\n<p>Several <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">new CSS classes</a> are making their way into 5.3.  For themes that remove core block styles on the front end, they need to add support for the classes to their theme&#8217;s stylesheet.</p>\n\n\n\n<p>WordPress is doing away with inline styles for left, right, and center text alignment. This is a welcome change because it moves CSS to its appropriate place, which is in a stylesheet.  Theme authors need to make sure they support these new classes for the following blocks.</p>\n\n\n\n<ul><li>Heading</li><li>Paragraph</li><li>Quote</li><li>Verse</li></ul>\n\n\n\n<p>The columns block no longer supports column-specific class names.  Version 5.3 supports custom column widths, which are handled with inline styles.  It&#8217;s unlikely this will break most themes, but it&#8217;s worth testing.</p>\n\n\n\n<p>The separator block now supports custom colors.  It is given both the text and background color class names on the front end.  This allows theme authors to utilize the styling method they prefer.  Ideally, a border color class would exist, but the block editor does not yet support selecting a custom border color.  </p>\n\n\n\n<p>Quick developer tip: if your theme uses a border color for the separator block, use <a href=\"https://css-tricks.com/currentcolor/\">currentColor</a> to handle custom colors.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Sep 2019 16:45:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WPTavern: Secure the News Project Finds 93% of Major Publishers Offer HTTPS Encryption by Default\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94365\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wptavern.com/secure-the-news-project-finds-93-of-major-publishers-offer-https-encryption-by-default\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4469:\"<p><a href=\"https://securethe.news\" rel=\"noopener noreferrer\" target=\"_blank\">Secure the News</a> is a project that was created by the <a href=\"https://freedom.press/\" rel=\"noopener noreferrer\" target=\"_blank\">Freedom of the Press Foundation</a> in 2016 to track HTTPS encryption across major news organizations&#8217; websites. It lists the publications and automatically scores them on a scale of 0-100, based on HTTPS implementation according to <a href=\"https://securethe.news/methodology-and-metrics/\" rel=\"noopener noreferrer\" target=\"_blank\">best practices</a>, as defined by General Services Administration (GSA) Pulse’s current criteria for modern and secure HTTPS deployment. The score is converted to an A-F letter grade.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/Screen-Shot-2019-09-27-at-4.29.56-PM.png?ssl=1\"><img /></a></p>\n<p>The primary benefits of news organizations adopting HTTPS include reader privacy and website security, but there are also other positive byproducts, such as protecting sources and preventing censorship. Secure the News provides some interesting data in its campaign to encourage more broad HTTPS adoption.</p>\n<p>In 2018, after one year of collecting data on HTTPS encryption at more than 130 major world news sites, the project found that HTTPS was available on 2/3 of the sites it monitors (89 of 131), up from 1/3 in 2016. Approximately <a href=\"https://securethe.news/blog/how-secure-are-news-sites-report-first-year-secure-news/\" rel=\"noopener noreferrer\" target=\"_blank\">60% of news organizations offered HTTPS encryption by default in 2018</a> and that number is up to 93% today.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2019/09/Screen-Shot-2019-09-27-at-5.40.27-PM.png?ssl=1\"><img /></a></p>\n<p>Most of the WordPress-powered major news sites, such as <a href=\"https://arstechnica.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Ars Technica</a>, <a href=\"https://time.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Time</a> and the <a href=\"https://nypost.com/\" rel=\"noopener noreferrer\" target=\"_blank\">New York Post</a>, get a B ranking, with the exception of <a href=\"https://techcrunch.com\" rel=\"noopener noreferrer\" target=\"_blank\">TechCrunch</a> and <a href=\"https://qz.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Quartz</a>, which both scored an A.</p>\n<p>The most recent addition to the project is the ability to <a href=\"https://securethe.news/blog/introducing-regional-leaderboards-secure-news/\" rel=\"noopener noreferrer\" target=\"_blank\">sort publications by region on the homepage</a>. Publications based in North America and Europe lead the world in having the most secure HTTPS implementations. Asia has a smaller percentage of major news sites with a score of A- or higher. Some smaller regions, such as the Middle East and North Africa, Oceana, and South America, list just a handful of news organizations but they all have a score of B or higher. Secure the News is just getting started with this feature and is accepting feedback on the project&#8217;s GitHub account.</p>\n<p>In addition to promoting HTTPS adoption, the team behind Secure the News is also considering broadening its coverage to measure other ways that news sites are delivering secure content, such as whether the site has an <a href=\"https://en.wikipedia.org/wiki/.onion\" rel=\"noopener noreferrer\" target=\"_blank\">onion service</a>, is <a href=\"https://www.torproject.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Tor project</a> friendly, or has a <a href=\"https://freedom.press/training/blog/first-time-they-reach-out-protect-sources-themselves/\" rel=\"noopener noreferrer\" target=\"_blank\">confidential tip line</a>. The project also has more news sites to add and a long list of improvements they want to make to the <a href=\"https://securethe.news/methodology-and-metrics/\" rel=\"noopener noreferrer\" target=\"_blank\">metrics used to rank sites</a>.</p>\n<p>The code for <a href=\"https://securethe.news/blog/secure-news-open-source/\" rel=\"noopener noreferrer\" target=\"_blank\">Secure the News is open source</a> (licensed under the GNU AGPL) and <a href=\"https://github.com/freedomofpress/securethenews\" rel=\"noopener noreferrer\" target=\"_blank\">available on GitHub</a> for anyone who wants to contribute or fork it for use with other site categories where browsing might be sensitive, such as libraries, adult sites, educational institutes, or medical facilities.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Sep 2019 23:58:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Rebirth of Creativity: Gutenberg and the Future of WordPress Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94231\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/rebirth-of-creativity-gutenberg-and-the-future-of-wordpress-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10060:\"<p>I began using WordPress in 2005.  I&#8217;d already been learning HTML and CSS for a couple of years.  I even had a home-brewed blog that pulled posts from plain text files at one point.  I knew enough JavaScript to do pop-up alerts and other annoying things that served no purpose and made for a poor user experience, even if they were fun for me.</p>\n\n\n\n<p>This was my second attempt at using WordPress.  This time it was after a botched go of making PHP Nuke behave how I wanted.  I had big dreams for my website but lacked the coding skills to make them happen.  WordPress was simple enough to hack for a novice like me at the time.  Sure, I broke my site more times than I could count, but I managed to put together my first real theme.</p>\n\n\n\n<p>I popped open Photoshop; grabbed a few images from <em>Angel</em>, my favorite TV show at the time; and began my work.  I&#8217;d recently watched <em>Soul Purpose</em>, an episode that explored whether the titular character was truly the hero mentioned in an ancient prophecy.  It was foretold that the vampire with a soul would shed his demon half and live as a human.  It explored themes of the character&#8217;s place in the world.  At 21 years old, it&#8217;s the sort of episode that resonated with a young man who was also looking for his place.  I thought it fitting to work that into my theme&#8217;s design and began hacking away at a header for my theme.</p>\n\n\n\n<div class=\"wp-block-image\"><img />Screenshot of my first WordPress theme header.</div>\n\n\n\n<p>At that time, there was this loosely-connected underground of themers and hobbyists who were building WordPress themes based on their favorite TV series, movies, comic books, and more.  That was my first real introduction to WordPress.  These people were not building themes for profit.  They were searching for their place in this small corner of the internet.  At most, some were looking for validation from like-minded people who might enjoy their art.  It was about creation for the sake of creation.  Anyone could be an artist with a simple lesson in CSS, an image manipulation program, and enough grit to pour their soul into the project for a few hours.</p>\n\n\n\n<p>If there were ever a time that WordPress themes died, it was when the hobbyists who built for pure passion were overshadowed by business interests.</p>\n\n\n\n<p>Don&#8217;t get me wrong; business interests played a crucial role in propelling WordPress to become the most dominant CMS in the world.  However, the balance has clearly shifted in favor of building WordPress themes for business and ecommerce rather than for the enthusiasts who just want to create.  Other platforms have better catered to these users and filled in the gaps left open by WordPress.  Tumblr became a safe-haven for popular culture fans.  DeviantArt a home for artists.  Wattpad for aspiring writers and fanfic lovers.</p>\n\n\n\n<p>Somewhere along the way, we lost the innocence and artistry of building WordPress themes for the pure fun of it.  WordPress grew up and WordPress themes along with it.</p>\n\n\n\n<h2>Today&#8217;s Themes Are Not Tomorrow&#8217;s</h2>\n\n\n\n<p>In his post, <a href=\"https://www.binarymoon.co.uk/2019/09/the-end-of-wordpress-themes-is-in-sight/\">The End of WordPress Themes is in Sight</a>, Ben Gillbanks said, &#8220;Themes as we know them will no longer be made.&#8221;  It is a bleak look at the future of WordPress theming.  He notes that he doesn&#8217;t believe that he&#8217;ll be able to make a living building WordPress themes in the next couple of years.</p>\n\n\n\n<p>His worries are warranted.  They have been shared by several theme authors over the past couple of years as the block editor (Gutenberg) was making its way into core WordPress.  The official theme review team has discussed the team&#8217;s future role surrounding the coming changes.</p>\n\n\n\n<p>Gillbanks&#8217; post comes on the heels of a post written by Matias Ventura on <a href=\"https://make.wordpress.org/core/2019/09/05/defining-content-block-areas/\">defining content block areas</a>.  Essentially, the idea is for WordPress to allow users to edit areas outside of the post content via the block editor.  Anything from the header, footer, sidebar, or otherwise would likely be fair game.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>In such a system, themes would be relegated to defining block areas, providing base styles, and designing block output.  In many ways, this is what WordPress themes <em>should</em> be.  Some might say that WordPress is putting themes back into their proper place of simply styling content.  With the behemoth themes with hundreds or thousands of features we&#8217;ve seen over the past few years, this could be a welcome change.  </p>\n\n\n\n<p>There&#8217;s huge potential for designers to step up and make their mark.  I, for one, wouldn&#8217;t mind seeing CSS artists unleashed in the WordPress theme ecosystem.</p>\n\n\n\n<p>Gillbanks went on to say:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>There are definite benefits to doing this from a user&#8217;s perspective – they will have full control of their site – but it&#8217;s going to result in some very boring website layouts.</p></blockquote>\n\n\n\n<p>This is the point where I&#8217;ll respectfully disagree.  Putting control in the hands of non-designers will be anything but boring.</p>\n\n\n\n<p><em>Do we all so easily forget the days of GeoCities?</em>  The websites built from it may have been horribly inaccessible.  They may have blared midi files as soon as you opened a webpage.  They may have even had a flashing, scrolling marquee zipping across the header.  Boring is not the word I&#8217;d use to describe them.</p>\n\n\n\n<p>As much as many of us want to put those days behind us (Come on, you had one of those sites at one point, right? Tell the truth.), there was something fascinating about it all.  Real people built these sites because they were fun.  The sites told you something about that person.  It was a deeply personal look into this stranger&#8217;s world.  Sometimes it was just a bunch of junk spewed onto the screen, but most sites were a reflection of the site owners at that point in time.</p>\n\n\n\n<p>It was ugly and beautiful all the same.</p>\n\n\n\n<p>Web developers and designers joke about those dark days of the web.  It&#8217;s easy to look back at sites from the &#8217;90s and cringe at the silliness (It makes you wonder what designers of 2050 will think about today&#8217;s designs, doesn&#8217;t it?).  I choose to look fondly upon those days.  It was a time before I became a &#8220;designer&#8221; with rules to follow.</p>\n\n\n\n<p>But, here&#8217;s the important point.  We are not the arbiters of the web.  It&#8217;s all about the user.  If someone wants a blinking Justin Bieber GIF in their site header, more power to them.  It&#8217;s the developer&#8217;s job to enable the user to do this in an easy-to-configure way.</p>\n\n\n\n<p><em>Wait?  So Geocities is your argument for full-site editing in WordPress?</em></p>\n\n\n\n<p>Understanding why WordPress should become a full-site editor means understanding the average user.  Developers are more apt to view things in a structured manner.  I spent over a decade honing my development skills.  Logic and order are old friends.  </p>\n\n\n\n<p>With end-users, things may seem a bit more chaotic.  A teenager might want to plaster a picture of her favorite band anywhere she wants on her site.  A soccer mom might want to show her kid slamming home the winning goal.  A poet may want to showcase one of his poems as a background image on his blog.  Humans are creative beings.  While our unique brand of artistry might not appeal to others, it&#8217;s still something we crave to share.</p>\n\n\n\n<p>It&#8217;s also important to understand that building WordPress themes is nowhere near as simple in 2019 as it was in 2005 when I started hacking away.  The code is much more complex.  It&#8217;s not quite as easy for a new user to piece together something fun as it once was.  Unless you have a theme or plugin that allows you to do this with simple drag-and-drop or similar tools, users have little control over their own sites.  And, that&#8217;s why the Gutenberg project is so revolutionary.  Its mission is to put the power back in the hands of the people.</p>\n\n\n\n<p>Theme authors need to evolve.  They will need to find a way to balance good design principles with the insane amount of freedom users will have.  There&#8217;s nothing stopping designers from making sure the Bieber screengrab looks more presentable.</p>\n\n\n\n<h2>Are WordPress Themes Dead?</h2>\n\n\n\n<p>No.  But, the theme landscape will certainly change and not for the first time.  We need not look at that as a bad thing.</p>\n\n\n\n<p>Those hobbyists who like to tinker with their site, they will once again have power that was so long ago lost to more advanced code.</p>\n\n\n\n<p>There will also be sub-communities within the WordPress landscape.  Some people will want something more akin to classic WordPress.  Others will want a simple blog handled with Markdown (side note: I&#8217;m one of those people, and Gutenberg actually handles pasting from Markdown well).  Plugins will be built to cater to every user&#8217;s needs.  Themes will exist for different types of users.  Client builds and enterprise solutions that look nothing like core WordPress aren&#8217;t going anywhere.</p>\n\n\n\n<p>There&#8217;s still a long road ahead.  Theme authors need to be more involved with the development of Gutenberg as these features make their way into the plugin and eventually into WordPress.  Otherwise, they&#8217;ll risk losing the opportunity to help shape the future theme landscape.</p>\n\n\n\n<p>Truth be told, I&#8217;m not sure what themes will look like in a few years.  I have a horrible track record with predictions.  However, I think it&#8217;s safe to say that there&#8217;ll be a place for designers.</p>\n\n\n\n<p>I&#8217;m excited because I feel like it will bring back the potential for users to have the control they once had and more.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Sep 2019 18:56:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: Rich Reviews Plugin Discontinued after Vulnerabilities Exploited in the Wild\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94302\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/rich-reviews-plugin-discontinued-after-vulnerabilities-exploited-in-the-wild\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3397:\"<p>After <a href=\"https://www.wordfence.com/blog/2019/09/rich-reviews-plugin-vulnerability-exploited-in-the-wild/\" rel=\"noopener noreferrer\" target=\"_blank\">tracking exploits of a zero day XSS vulnerability</a> in the <a href=\"https://wordpress.org/plugins/rich-reviews/\" rel=\"noopener noreferrer\" target=\"_blank\">Rich Reviews plugin</a> for WordPress, Wordfence is recommending that users remove it from their websites. The company estimates that there are 16,000 active installations vulnerable to unauthenticated plugin option updates:</p>\n<blockquote><p>Attackers are currently abusing this exploit chain to inject malvertising code into target websites. The malvertising code creates redirects and popup ads. Our team has been tracking this attack campaign since April of this year. </p></blockquote>\n<p>Rich Reviews was removed from the WordPress.org Plugin Directory on March 11, 2019, due to a security issue.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2019/09/Screen-Shot-2019-09-27-at-10.38.09-AM.png?ssl=1\"><img /></a></p>\n<p>One week ago, a Rich Reviews plugin user reported 3 out of 4 of her sites using the plugin were infected with redirect scripts and that removing the plugin fixed the issue. A digital marketing agency called Nuanced Media, the author of the plugin, <a href=\"https://wordpress.org/support/topic/plugin-not-supported-open-to-malware-uninstall-now/#post-11953681\" rel=\"noopener noreferrer\" target=\"_blank\">responded</a> to the post indicating that a new version would be released within two weeks:</p>\n<blockquote><p>We’ve been working on an overall rewrite of this plugin for a while now, but someone out there apparently wanted us to work faster on it, and decided to exploit our plugin to get some malware out there. We’re now going double-quick on it, and hope to have it back up (and newly cozy and secure) within the next two weeks.</p></blockquote>\n<p>Oddly, there seemed to be no rush to patch the issue that is currently being exploited. Yesterday, less than a week after assuring users that a new version is coming, the company behind the plugin announced that it is <a href=\"https://nuancedmedia.com/wordpress-rich-reviews-plugin/\" rel=\"noopener noreferrer\" target=\"_blank\">discontinuing active support and development on Rich Reviews</a>.</p>\n<p>Nuanced Media CEO Ryan Flannagan cited Google&#8217;s recent changes to its <a href=\"https://developers.google.com/search/docs/data-types/review-snippet#local-business-reviews\" rel=\"noopener noreferrer\" target=\"_blank\">business review guidelines</a> as the reason for discontinuing its development.</p>\n<p>&#8220;As part of this update, in the organic search results, Google has decided to remove all merchant review star ratings that businesses display on their own URL,&#8221; Flannagan said.</p>\n<p>&#8220;Based on this information, we have discontinued all active development and support on Rich  Reviews. We apologize for any inconvenience.&#8221;</p>\n<p>The announcement does not include any information about the vulnerability or the recent exploits. Users should assume that no patch is coming to the plugin, since it has been officially discontinued. It&#8217;s already not available to potential new users on WordPress.org, but those who have Rich Reviews active on their sites should deactivate it and remove the plugin as soon as possible to avoid getting hacked.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Sep 2019 18:25:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: Gatsby Raises $15M, Plans to Invest More Heavily in WordPress and CMS Integrations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94300\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/gatsby-raises-15m-plans-to-invest-more-heavily-in-wordpress-and-cms-integrations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5857:\"<p><a href=\"https://www.gatsbyjs.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Gatsby Inc</a>. CEO Kyle Mathews announced a <a href=\"https://www.gatsbyjs.org/blog/2019-09-26-announcing-gatsby-15m-series-a-funding-round/\" rel=\"noopener noreferrer\" target=\"_blank\">$15M Series A funding round</a> today, just one year after creating the company with GatsbyJS core contributors. The open source Gatsby project started in 2015 to provide a framework for developers to quickly build websites with React. As the project soared in popularity, Mathews formed a company to fund its ongoing development and further invest in the growing Gatsby ecosystem of products.</p>\n<p>This round of funding will enable Gatsby to grow its 35-person team while investing in open source and cloud services that complement the company&#8217;s products.</p>\n<p>&#8220;With Gatsby, we’re striving to create a business model that will drive many millions of dollars of investment in open-source tools and enable people to build the next generation of web experiences,&#8221; Mathews said.</p>\n<p>At the forefront of the company&#8217;s vision is the idea of &#8220;reinventing website development.&#8221; Gatsby has popularized the concept of a “<a href=\"https://www.gatsbyjs.org/blog/2018-10-04-journey-to-the-content-mesh/\" rel=\"noopener noreferrer\" target=\"_blank\">content mesh</a>,” a platform that provides the infrastructure layer for a decoupled website and reimagines the role of a CMS within this architecture.</p>\n<p>Gatsby&#8217;s goal of creating more integrations for CMS&#8217;s was a big part of Mathews&#8217; funding announcement. Instead of writing off LAMP stack architecture as slow and obsolete, Gatsby is creating bridges to the CMS&#8217;s that power a large portion of the web:</p>\n<blockquote><p>Instead of a monolithic CMS powering everything, Gatsby ties together specialized services with a modern development experience and optimized website delivery.</p>\n<p>This content mesh empowers developers while preserving content creators’ workflows. It gives developers access to great cloud services without the pain of manual integration.</p>\n<p>Web developers from dozens of web CMS communities like WordPress and Drupal are going “headless” and using Gatsby as the presentation layer for their CMS.</p>\n<p>We’re forming partnerships with these communities to create seamless integrations between their solutions and Gatsby.</p></blockquote>\n<p>Gatsby will be using some of its funding to invest more heavily in the WordPress ecosystem. The company hired <a href=\"https://wptavern.com/jason-bahl-joins-the-gatsby-team-to-work-on-wpgraphql-full-time\" rel=\"noopener noreferrer\" target=\"_blank\">hiring Jason Bahl</a>, creator of the GraphQL for WordPress project, in June, and plans to add more WordPress developers.</p>\n<p>&#8220;We recently hired someone else to work alongside Jason in developing WPGraphQL (announcement coming soon!) and are currently hiring for several roles on the team,&#8221; Mathews told the Tavern.</p>\n<p>WordPress powers <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\" rel=\"noopener noreferrer\" target=\"_blank\">34.6% of the top 10 million websites</a> and Matt Mullenweg has previously estimated its ecosystem to be a $10 billion industry. The CMS is <a href=\"https://joost.blog/cms-market-share-a-numbers-analysis/\" rel=\"noopener noreferrer\" target=\"_blank\">showing no signs of decline</a>, and is a market that Gatsby product developers are strategically targeting.</p>\n<p>WordPress adopted React as its JavaScript framework in 2017, and built its new Gutenberg editor on top of it. Although some early adopters began digging deeper into React and creating their own products with it, the majority of PHP developers have been slow to move in that direction. Gatsby provides a bridge for those who are just getting started.</p>\n<p>&#8220;We think that for many web developers, a Gatsby project may be the first time they are using React, GraphQL, webpack or even Node.js,&#8221; Mathews said. &#8220;And that’s not just the case for WordPress developers &#8211; the same can be true for professionals in the Drupal, Rails, or .NET ecosystems.</p>\n<p>&#8220;It’s our goal to make a framework that empowers developers to use these technologies easily, then dive deeper as they gain more experience. So, instead of taking days to configure webpack for the first time, you can use a Gatsby Theme that connects to WordPress as a data source, and automatically get a blazing fast site. Later, you can learn the innards of the system, and begin customizing Gatsby yourself.&#8221;</p>\n<p>While Gatsby as a framework enables developers to bypass a lot of the technical and tooling jargon that has made modern development so complex, it is still a framework geared almost exclusively towards developers. Mathews said the company&#8217;s vision will continue to focus on enabling developers, not on creating solutions to make Gatsby more accessible to the non-technical crowd.</p>\n<p>&#8220;We are focused on making Gatsby the best choice for WordPress developers who want a flexible and powerful presentation layer for their headless WordPress sites,&#8221; he said. &#8220;Non-technical team members or clients will still use WordPress to create and manage content, while the web developers on their team or at the agency they hired get to be productive using the best development tools available.&#8221;</p>\n<p>Gatsby plans to use the funding to invest $3 million per year in open source, including the core Gatsby project, official plugins, and more learning materials. The funding is also good news for the future of the <a href=\"https://www.wpgraphql.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WPGraphQL</a> project, which should see deeper integration with Gatsby in the near future.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Sep 2019 22:35:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Long-Needed Date/Time Improvements Land in Core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94295\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/long-needed-date-time-improvements-land-in-core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4026:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>After more than a year and several WordPress updates, an <a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">overhaul of the core Date/Time component</a> concluded.  WordPress 5.3 will ship with fixes for long-standing bugs and new API functions.</p>\n\n\n\n<p>Andrey &#8220;Rarst&#8221; Savchenko spearheaded this project and worked through most of the issues in his <a href=\"https://github.com/Rarst/wp-date\">WP Date</a> fork of WordPress.  Much of his work toward addressing the problems with this core component goes back further with the initialization of his <a href=\"https://github.com/Rarst/wpdatetime\">WPDateTime project</a>.</p>\n\n\n\n<p>Diving into the Date/Time component is no small feat.  Addressing one issue leads to another.  It&#8217;s a rabbit hole that few in the community have navigated.  Many developers were also unaware of the issues.  However, the bugs lingered for years, and users had no working solution for the problems they were facing.</p>\n\n\n\n<p>The most common errors were caused by core bugs or developer errors due to compatibility issues, described Savchenko.  This would cause user-facing issues such as post scheduling and other time-based operations.</p>\n\n\n\n<p>With the release of WordPress 5.3, all existing functions should behave more reliably.  Developers working on the component fixed several bugs and updated incorrect inline code documentation for many core functions. Along with the fixes, 5.3 will ship with new <a href=\"https://github.com/Rarst/wp-date/issues/4\">Date/Time API functions</a>.  The updated API includes unified time zone retrieval, localization, and PHP interoperability functions.</p>\n\n\n\n<p>Savchenko called it &#8220;the slow descent into madness&#8221; when asked of the catalyst for diving into the Date/Time component and its underlying issues.  &#8220;I started to notice serious bugs in the component from WordPress Stack Exchange questions about them, and the more I looked over years the more clear the dire state of it became to me.&#8221;</p>\n\n\n\n<p>One of the major problems is the way WordPress handles timestamps.  &#8220;I actually had to invent the &#8216;WordPress timestamp&#8217; term,&#8221; said Savchenko.  &#8220;There was no name for it in core development and inline documentation incorrectly called these Unix timestamps before.&#8221;  WordPress adds a time zone offset to the real Unix timestamp, which causes issues with upstream PHP and external systems.  </p>\n\n\n\n<p>WordPress timestamps couldn&#8217;t be removed from core without breaking backward compatibility.  Plugin and theme developers should avoid working with the WordPress timestamp and opt to use the <a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">recommended methods</a> outlined in Savchenko&#8217;s post.</p>\n\n\n\n<p>WordPress date functions were originally written in PHP 4, a version of PHP so long-dead that it&#8217;s almost not worth digging up the end-of-life date (it&#8217;s <a href=\"https://www.php.net/eol.php\">11 years</a>, by the way).  PHP 5.2 introduced the PHP <code>DateTime</code> and <code>DateTimeZone</code> classes and has continued receiving improvements over the years.  WordPress date functions were never updated to utilize newer standards.  The platform&#8217;s more recent bump to a minimum of PHP 5.6 also meant that the <code>DateTimeImmutable</code> class introduced in PHP 5.5 would be available.  The version bump helped land the new API functions in WordPress 5.3.</p>\n\n\n\n<p>Some bugs go as far back as 7 years, such as <a href=\"https://core.trac.wordpress.org/ticket/20973\">shorthand formats not working with the core date_i18n() function</a>, which was fixed in WordPress 5.1.  With any luck, core may also adopt such features as <a href=\"https://core.trac.wordpress.org/ticket/18146\">user-based timezones</a> in the future, which would better handle time differences on WordPress installs with users all over the world.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Sep 2019 16:33:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Gary: Talking with WP&amp;UP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"https://pento.net/?p=5120\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://pento.net/2019/09/26/talking-with-wpup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:348:\"<p>At WordCamp Europe this year, I had the opportunity to chat with the folks at WP&amp;UP, who are doing wonderful work providing mental health support in the WordPress community.</p>\n\n\n\n<p><a href=\"https://wpandup.org/podcast/getting-to-the-core-of-wordpress-021/\">Listen to the podcast</a>, and check out the services that WP&amp;UP provide!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Sep 2019 04:35:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Gary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"BuddyPress: BuddyPress 5.0.0 Release Candidate 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=308016\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://buddypress.org/2019/09/buddypress-5-0-0-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2087:\"<p>Hi!</p>\n\n\n\n<p><a href=\"https://downloads.wordpress.org/plugin/buddypress.5.0.0-RC2.zip\">The second release candidate for BuddyPress 5.0.0</a> is now available for an ultimate round of testing!</p>\n\n\n\n<p>Since the <a href=\"https://buddypress.org/2019/09/buddypress-5-0-0-release-candidate/\">first release candidate</a>, we&#8217;ve improved the way BP REST API Controllers are loaded inside BuddyPress component classes.</p>\n\n\n\n<p>This is an important milestone as we progress toward the BuddyPress 5.0.0 final release date. &#8220;Release Candidate&#8221; means that we think the new version is ready for release, but with more than 200,000 active installs, hundreds of BuddyPress plugins and Thousands of WordPress themes, it’s possible something was missed. BuddPress 5.0.0 is&nbsp;scheduled to be released&nbsp;on&nbsp;<strong>Monday, September 30</strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.0.0 yet, <strong>now is the time!</strong> </p>\n\n\n\n<div class=\"wp-block-button aligncenter is-style-squared\"><a class=\"wp-block-button__link has-background\" href=\"https://downloads.wordpress.org/plugin/buddypress.5.0.0-RC2.zip\">Download and test the 5.0.0-RC2</a></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p><em>PS: as usual you alternatively get a copy via our Subversion repository.</em></p>\n\n\n\n<p>A detailed changelog will be part of our official release note, but&nbsp;you can get a quick overview by reading the post about the&nbsp;<a href=\"https://buddypress.org/2019/08/buddypress-5-0-0-beta1/\">5.0.0 Beta1</a>&nbsp;release.</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://plugins.svn.wordpress.org/buddypress/assets/icon.svg\" alt=\"\" width=\"33\" height=\"33\" /></div>\n\n\n\n<p><strong>If you think you&#8217;ve found a bug</strong>, please let us know reporting it on&nbsp;<a href=\"https://buddypress.org/support\">the support forums</a>&nbsp;and/or&nbsp;on&nbsp;<a href=\"https://buddypress.trac.wordpress.org/\">our development tracker</a>.</p>\n\n\n\n<p>Thanks in advance for giving this second release candidate a test drive!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Sep 2019 02:31:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WPTavern: Hacktoberfest 2019 Registration is Now Open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94243\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/hacktoberfest-2019-registration-is-now-open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3413:\"<p><a href=\"https://hacktoberfest.digitalocean.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Hacktoberfest</a> has started back up again for its sixth year running, sponsored by <a href=\"http://digitalocean.com\" rel=\"noopener noreferrer\" target=\"_blank\">DigitalOcean</a> and <a href=\"https://dev.to/\" rel=\"noopener noreferrer\" target=\"_blank\">DEV</a>. The annual event brings together open source communities from all over the world for virtual and <a href=\"https://hacktoberfest.digitalocean.com/events\" rel=\"noopener noreferrer\" target=\"_blank\">local collaboration</a>. Organizers are expecting approximately 150,000 participants this year.</p>\n<p>The first 50,000 participants who make four pull requests to any GitHub-hosted repositories between October 1-31, will receive a commemorative Hacktoberfest T-shirt. Organizers have introduced a one-week review period for PRs this year in order to give maintainers the opportunity to flag any spammy PRs as invalid. The goal is to encourage participants to submit more thoughtful contributions.</p>\n<p>More than 21,000 issues on GitHub have already been <a href=\"https://github.com/search?q=label%3Ahacktoberfest+state%3Aopen&type=Issues\" rel=\"noopener noreferrer\" target=\"_blank\">labeled for Hacktoberfest</a>. Maintainers who want to have their projects included should identify issues best suited to new contributors and apply the &#8220;Hacktoberfest&#8221; label. Organizers also recommend creating a CONTRIBUTING.md file with contribution guidelines and adopting a code of conduct for the project.</p>\n<p>Adding WordPress to a search for Hacktoberfest issues displays <a href=\"https://github.com/search?utf8=%E2%9C%93&q=label%3Ahacktoberfest+state%3Aopen+wordpress&type=Issues&ref=advsearch&l=&l=\" rel=\"noopener noreferrer\" target=\"_blank\">120 issues</a> that are related in some way to themes, plugins, apps, and other products with WordPress-specific needs. The event is a good opportunity for maintainers to get more exposure for their projects and help new contributors gain confidence through a structured contribution process.</p>\n<p>This year Hacktoberfest&#8217;s organizers are also featuring <a href=\"https://github.com/topics/climate-change\" rel=\"noopener noreferrer\" target=\"_blank\">projects focused on combating climate change</a>. These include repos for open source technologies, such as an <a href=\"https://github.com/CodeForAfrica/ClimateChangeProjections\" rel=\"noopener noreferrer\" target=\"_blank\">embeddable map that shows climate change projections</a>, an <a href=\"https://github.com/juancoob/Vegginner\" rel=\"noopener noreferrer\" target=\"_blank\">app targeting consumption habits</a>, and <a href=\"https://github.com/sphericalpm/ghgdata\" rel=\"noopener noreferrer\" target=\"_blank\">greenhouse gas emissions data packaged for exploration and charting</a>, to name a few.</p>\n<p>Hacktoberfest is open to contributors at any level of experience. For those just getting started, DigitalOcean has created an <a href=\"https://www.digitalocean.com/community/tutorial_series/an-introduction-to-open-source\" rel=\"noopener noreferrer\" target=\"_blank\">Introduction to Open Source</a> series that covers the basics of git and how to create a pull request. DEV also has a <a href=\"https://dev.to/tvanblargan/crash-course-git-lingo-1enj\" rel=\"noopener noreferrer\" target=\"_blank\">Git crash course</a> available to get new contributors up to speed.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Sep 2019 22:39:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"WPTavern: Human Made Releases Publication Checklist Plugin Designed for the Block Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94238\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wptavern.com/human-made-releases-publication-checklist-plugin-designed-for-the-block-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2502:\"<p>Human Made has created a <a href=\"https://github.com/humanmade/publication-checklist/\" rel=\"noopener noreferrer\" target=\"_blank\">Publication Checklist</a> plugin built specifically for the block editor. It was developed as a headline feature of <a href=\"https://humanmade.com/2019/06/17/a-technical-introduction-to-altis-enterprise-augmented-wordpress-platform/\" rel=\"noopener noreferrer\" target=\"_blank\">Altis</a>, the company&#8217;s enterprise publishing platform based on WordPress, but is also available as a standalone plugin that developers can customize for their own particular use cases.</p>\n<p>Ryan McCue, Human Made&#8217;s Director of Engineering, shared screenshots of the plugin on <a href=\"https://twitter.com/rmccue/status/1173550662296190976\" rel=\"noopener noreferrer\" target=\"_blank\">Twitter</a> but noted that it may require more manual configuration when used outside of Altis. Developers familiar with React can extend the checklist to provide a more interactive experience for users completing the required publishing tasks.</p>\n<p>&#8220;Because this is built for the block editor, you can build the UI for your checks in React, allowing users to fix issues inline, or providing richer interaction; e.g. &#8216;jump to block failing this check,\'&#8221; McCue said.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/09/Screen-Shot-2019-09-25-at-10.43.20-AM.png?ssl=1\"><img /></a></p>\n<p>Status of the publishing tasks is also shown in its own column in the posts list table, a useful feature for giving editorial teams a better overall picture of posts in progress. (The plugin also provides a way to disable this view.)</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/publication-checklist-posts-list-table.jpeg?ssl=1\"><img /></a></p>\n<p>It&#8217;s important to note that the Publication Checklist plugin only provides a framework for the pre-publish checks, and does not include a settings interface for users to create their own checks. For this reason, the current version is more geared towards developers who are capable of registering checks using the provided function. The checks display a warning if incomplete but users are still allowed to publish. A more strict enforcement that blocks publishing can also be applied. For more information on customizing the plugin, check out the <a href=\"https://github.com/humanmade/publication-checklist/\" rel=\"noopener noreferrer\" target=\"_blank\">documentation</a> on GitHub.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Sep 2019 17:44:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Theme Review Team Restructures Into Project Representatives\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94224\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/theme-review-team-restructures-into-project-representatives\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5229:\"<p>The WordPress Theme Review Team (TRT) restructured its administrative duties and laid out its <a href=\"https://make.wordpress.org/themes/2019/09/24/new-theme-review-team-structure/\">new team organization</a> after yesterday&#8217;s semimonthly team meeting. This is not the first time the TRT has restructured to meet the growing demands of the official theme directory over the years.  The team is moving toward a flat structure that spreads its responsibilities to various project representatives.</p>\n\n\n\n<p>The original team consisted of a purely merit-based system where members worked their way up the ranks, becoming moderators and eventually admins.  Each level provided more access and responsibility.  In 2017, the team restructured to a <a href=\"https://make.wordpress.org/themes/2017/04/08/restructuring-the-theme-review-team/\">lead-based system</a> in which two team leads rotated every six months.  The time limit was put in place to prevent burnout.  Some leads ran the team beyond the six-month limit during this time, but it was not always easy to find replacements who wanted to take on the full responsibilities of managing everything.  There was also concern among some team members that the rotation schedule wasn&#8217;t strictly followed with some leads overstaying their allotted time.</p>\n\n\n\n<p>In meetings and discussions over the last several months, various members drafted proposals on changing the team structure.  The now-former team leads and a group of moderators created the new plan to split the team into specific projects, each with at least one representative.</p>\n\n\n\n<p>The following are the new sub-teams and representatives.</p>\n\n\n\n<ul><li>Theme review representatives: Sandilya Kafle and Carolina Nymark</li><li>Theme packages representative: Ari Stathopoulos</li><li>Automation representative: Denis Žoljom</li><li>Theme handbook representative: Ana Alfieri</li><li>Communications representative: William Patton</li></ul>\n\n\n\n<p>The five projects cover the team&#8217;s current duties and spread out the workload. &#8220;That&#8217;s kind of what this is about,&#8221; said William Patton.  &#8220;It&#8217;s making sure that no one single person handles all the things and that it&#8217;s shared between all.&#8221;</p>\n\n\n\n<p>The new structure doesn&#8217;t mean there&#8217;s no room for other projects.  If a team member has a particular itch they want to scratch, they&#8217;re open to spearhead that project.  All the power is no longer consolidated into a couple of people&#8217;s hands.</p>\n\n\n\n<p>&#8220;Sharing the load and spreading people&#8217;s specific skills between things they know and are investing time into makes sense at this point,&#8221; said Patton.</p>\n\n\n\n<p>The team will no longer rotate leads (or representatives in this case) every six months.  If someone needs to step down from their representative role or take a break, finding a new representative will be handled on a case-by-case basis.  &#8220;We all have our strengths and passions. The thing that we also need to work on is finding people who are willing to participate and eventually take over when we feel tired,&#8221; said Denis Žoljom.</p>\n\n\n\n<p>Žoljom has been leading the automation project for while by maintaining the Theme Review coding standards and Theme Sniffer plugin.  He&#8217;s currently looking to move the WPThemeReview ruleset to the official WordPress GitHub.  &#8220;This is necessary because we want to use it in Tide,&#8221; said Žoljom.  Tide is an automated tool for improving code quality in plugins and themes.</p>\n\n\n\n<p>&#8220;My personal goal would be to see if we can improve the review process &#8211; either by working on the GitHub review idea I had a few months ago, or by working on the automated tools that help the users,&#8221; said Žoljom.</p>\n\n\n\n<p>The theme review representatives will handle the traditional role of overseeing the reviewing responsibilities of the team.  Little will change in that regard since it&#8217;s the primary duty of the TRT.  They will continue moderating themes and handling guideline changes.  &#8220;However, they can consult with other reps to make the final decision and to make new changes,&#8221; said Sandilya Kafle.</p>\n\n\n\n<p>The WordPress docs team has now handed over responsibility of the <a href=\"https://developer.wordpress.org/themes/\">theme developer handbook</a> to the TRT.  &#8220;I think we should try to keep coherence between the two handbooks, so we avoid saying one thing in one and another in the other,&#8221; said Ana Alfieri about the differences between the developer and review handbooks.  At times, such difference have been points of contention between TRT members.  Having both handbooks in sync on best practices will help keep reviewers and theme authors on the same page.</p>\n\n\n\n<p>Ari Stathopoulos recently took over as the <a href=\"https://wptavern.com/behind-new-packages-project-lead-theme-review-team-launches-admin-notices-solution\">representative for theme packages</a> in the past month.  The packages project aims to build standardized drop-in modules for developers to use in their themes.  This specific project may also have various developers handling specific packages.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Sep 2019 17:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WPTavern: WordPress 5.3 to Introduce New Admin Email Verification Screen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94193\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wptavern.com/wordpress-5-3-to-introduce-new-admin-email-verification-screen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2769:\"<p>WordPress 5.3 is set to introduce an admin email verification screen that will be shown every six months after an admin has logged in. The feature was proposed seven months ago in a <a href=\"https://core.trac.wordpress.org/ticket/46349\" rel=\"noopener noreferrer\" target=\"_blank\">ticket</a> that contributor <a href=\"https://www.andreidraganescu.info/\" rel=\"noopener noreferrer\" target=\"_blank\">Andrei Draganescu</a> opened as part of the Site Health component improvements.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/admin-email-verification.png?ssl=1\"><img /></a></p>\n<p>Draganescu said the idea came from discussions in the #core-php channel regarding WSOD (White Screen of Death) recovery emails, which are sent when a site experiences a fatal error and the administrator may be locked out of their WordPress site. Participants in the discussion raised the issue of how common it is for admin email addresses to be outdated or set to a &#8220;catch all&#8221; address that is never checked. The email address may also be set automatically by the host during the process of a one-click installation.</p>\n<p>The &#8220;Why is this important?&#8221; link leads to a WordPress support article that describes the <a href=\"https://wordpress.org/support/article/settings-general-screen/#email-address\" rel=\"noopener noreferrer\" target=\"_blank\">various uses for the admin email address</a>, such as new user registration notifications, comment approval, and maintenance messages.</p>\n<p>Although it wasn&#8217;t the stated intention for the new admin email verification screen, the feature could become important for improving communication prior to automatic updates. Requiring admins to verify their email addresses after six months could ensure that more addresses are kept current, especially for admins who check their sites infrequently.</p>\n<p>When the WordPress security team <a href=\"https://wptavern.com/proposal-to-auto-update-old-versions-of-wordpress-to-4-7-sparks-heated-debate\" rel=\"noopener noreferrer\" target=\"_blank\">proposed auto-updating older versions of WordPress to 4.7</a>, one of the chief concerns is whether WordPress will be able to reach admins whose emails have been abandoned. This new admin email verification screen will not be be useful for older WordPress sites, but in the future, when auto-updating for major versions becomes the standard, it will help ensure more administrators are getting those notices to a working address.</p>\n<p>A new <code>admin_email_check_interval</code> filter is available for developers to customize the interval for redirecting the user to the admin email confirmation screen. Those who find it to be unnecessary or annoying can set a very large interval for the check.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Sep 2019 18:30:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Twenty Twenty Bundled in Core, Beta Features Overview\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94038\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/twenty-twenty-bundled-in-core-beta-features-overview\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5884:\"<div class=\"wp-block-image\"><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/09/twenty-editor.jpg?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a></div>\n\n\n\n<p>Twenty Twenty, the upcoming default WordPress theme, was committed to core and shipped with <a href=\"https://wptavern.com/wordpress-5-3-beta-1-ready-for-testing-includes-12-gutenberg-releases-and-new-twenty-nineteen-default-theme\">WordPress 5.3 Beta 1</a> yesterday.</p>\n\n\n\n<p>Like most core themes, Twenty Twenty is simple in function.  It comes packaged with a handful of custom features and options, but it remains true to the mission of being an easy-to-use default theme.</p>\n\n\n\n<p>The theme has personality.  Its headings are bold and opinionated.  Its pull quotes grab your attention.  It&#8217;s unafraid of making a splash with its design.   This is a blog theme that&#8217;s meant to showcase what the block editor is capable of doing.   It is a refreshing change of pace from the current slew of themes landing in the directory.</p>\n\n\n\n<p>Twenty Twenty is not ideal for every use case.  Some users will no doubt dislike the design choices.  Others will love everything about it.</p>\n\n\n\n<p><em>Note: Twenty Twenty is still in beta, so its features could change between now and the official release of WordPress 5.3.</em></p>\n\n\n\n<h2>Customizer Options</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Hue-only picker for the accent color in the customizer.</div>\n\n\n\n<p>The theme has a few custom options available within the customizer:</p>\n\n\n\n<ul><li>A retina logo option, which scales the logo image to half its size to make it sharper on hi-res screens.</li><li>An option for showing or hiding a search icon in the header.</li><li>A choice between showing the full post text or summary (excerpt) on archive pages.</li><li>A header and footer background color.</li><li>An accent color used for links and other elements.</li><li>Support for the core custom background feature.</li></ul>\n\n\n\n<p>The accent color option is an interesting choice.  Rather than providing the full breadth of all colors, the theme includes a hue-only color picker.  This feature allows users to select from a more limited set of colors within an accessible color range.</p>\n\n\n\n<p>There is also a ticket for removing core <a href=\"https://github.com/WordPress/twentytwenty/issues/480\">custom background image support</a> to help users avoid accessibility issues.</p>\n\n\n\n<h2>Custom Page Templates</h2>\n\n\n\n<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/09/twenty-cover.jpg?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a>Cover template options in the customizer.\n\n\n\n<p>Twenty Twenty has a fresh take on creating a cover page not seen in previous default themes.  The &#8220;Cover Template&#8221; works for both posts and pages.  When selecting it, the template displays the post featured image similar to the cover block in core.  The featured image spans the full width of the screen and extends behind the header and navigation area.  The post title and byline/meta are set over the image.</p>\n\n\n\n<p>The theme provides a few options for customizing the output of the cover area and allows the user to:</p>\n\n\n\n<ul><li>Set a fixed background for a parallax effect.</li><li>Add an overlay background color that sits over the featured image.</li><li>Change the color of the text on top of the image.</li><li>Choose a blend mode for the overlay background color.</li><li>Alter the overlay background color opacity.</li></ul>\n\n\n\n<p>Having a core theme explore this feature is a nice. Ideally, users would be able to create a featured cover area on a per-post basis and adjust the colors for the specific image on that post.  However, core has yet to bundle such a feature with the block editor.  There is an open Gutenberg ticket for <a href=\"https://github.com/WordPress/gutenberg/issues/16281\">expanding the editor outside of the post content</a> that may help theme authors address this common feature, but we&#8217;re likely several releases from seeing that become a reality.</p>\n\n\n\n<p>The theme also includes a wide (full width) template, which is a fairly common feature.  At the moment, this template doesn&#8217;t seem to do anything in particular when assigned to a page.  There&#8217;s an <a href=\"https://github.com/WordPress/twentytwenty/issues/185\">open GitHub ticket</a> that addresses what it should do at some point.  Considering that the theme has no left/right sidebar, it&#8217;d be interesting to see how this template functions.</p>\n\n\n\n<h2>Page Loading Speed</h2>\n\n\n\n<p>Page load is something to keep an eye on.  Twenty Twenty currently ships a 100 kb stylesheet on top of the block editor&#8217;s 40 kb CSS file (from the Gutenberg plugin).  This number doesn&#8217;t include the font and JavaScript files also loaded for the page.  This is a far cry from the behemoth 223 kb stylesheet included in Twenty Nineteen, but it&#8217;s still concerning because more development time means that more code will likely get added as tweaks are made and bugs are fixed.  </p>\n\n\n\n<p>To be fair, the block editor has many elements to style with no unified design framework for theme authors to take advantage of.  Keeping a Gutenberg-ready stylesheet under 100 kb that also styles each block is a feat of engineering few can master.</p>\n\n\n\n<h2>Follow Twenty Twenty Development</h2>\n\n\n\n<p>Theme development is currently happening on the <a href=\"https://github.com/WordPress/twentytwenty/\">Twenty Twenty GitHub repository</a>.  If you want to track its changes as the theme is imported into core, the changes are happening on the <a href=\"https://core.trac.wordpress.org/ticket/48110\">Import Twenty Twenty</a> Trac ticket.</p>\n\n\n\n<p>The theme still has work to be done before it&#8217;s ready for public release.  Now would be a great time to start testing it and reporting issues.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Sep 2019 17:29:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"BuddyPress: An online community learning hub to deepen studies during IRL meetings\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=307967\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://buddypress.org/2019/09/an-online-community-learning-hub-to-deepen-studies-during-irl-meetings/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6001:\"<div><em>This is a guest post by Tanner Moushey, Founder and Lead Engineer of <a href=\"https://study.church/about/\">StudyChurch</a>. He is a BP REST API early adopter and we thought his achievments implementing Headless BuddyPress was a great source of inspirations for the BuddyPress community. Many thanks to him for taking the time to share with us about this case study.</em></div>\n\n\n\n<p>Peer reviewed by <a class=\"bp-suggestions-mention\" href=\"https://buddypress.org/members/imath/\" rel=\"nofollow\">@imath</a></p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/StudyChurch-Organization-Dashboard.png\" alt=\"\" /></div>\n\n\n\n<p><a href=\"https://study.church/\">StudyChurch</a> is an ambitious startup seeking to make a mark in the church product marketplace. With a unique approach to online interaction, StudyChurch combines elements of engagement and learning in a way that is both simple and intuitive for the end user.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Background</h2>\n\n\n\n<p>I began working on StudyChurch as a side project in 2015. It started as a proof of concept and an excuse to dive deeply into BuddyPress. I wanted to leverage the group and activity components that BuddyPress provides and combine that with a custom study module that I created with a custom post type, BackboneJS, and the WordPress REST API. Answers to study questions were stored in WordPress Comments and synced to a custom BuddyPress activity type which was then used to create the discussion interface. Each question had an activity component under it to show off the other group answers and corresponding discussions.</p>\n\n\n\n<p>I finished the first draft of the project after several months and before too long I had groups signing up to use the system. I continued to make minor modifications over the next few years but kept running into complaints about speed and the user interface.</p>\n\n\n\n<p>When I was approached in 2018 by a publisher that wanted to use StudyChurch on a larger scale it sounded like a great opportunity to rebuild.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Implementing Headless BuddyPress </h2>\n\n\n\n<p>One of the big changes that I wanted to make in the rebuild was to switch to a JavaScript front end. I wanted something that was going to allow us to make numerous asynchronous data requests without using Ajax, which can be slow and difficult to maintain over a large project. I decided on VueJS and started building out the API to handle the data that was previously controlled by the BuddyPress templates. </p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h3>Building a custom API with the BuddyPress REST API </h3>\n\n\n\n<p>I’d done quite a bit of work extending the WordPress REST API on previous projects and was excited to discover the <strong>BuddyPress REST API</strong> that extended it. This took care of a lot of the structure and allowed me to focus my time on building out our custom modules and functionality. Anytime I ran into something that needed to be more flexible, I’d submit a patch to the BuddyPress REST API repository and would get a prompt resolution.</p>\n\n\n\n<p>Now that we are able to post and retrieve data through the API, the user interactive elements on the site are noticeably faster and the overall load on the server is much less. Not only that, but we are ready for a native app once we get to that point.</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/studychurch-case-study-image-1024x482.png\" alt=\"\" class=\"wp-image-307971\" /></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h3>Creating&nbsp;a VueJS front end </h3>\n\n\n\n<p>Building a completely JavaScript front end for BuddyPress was fun challenge. I underestimated how many different components I’d need to build out since I wasn’t able to rely on the BuddyPress default templates, but the end result was well worth the effort.With VueJS we were able to leverage a lot of prebuilt UI packages (like&nbsp;<a href=\"https://element.eleme.io/#/en-US\">Element</a>) to do a lot of the heavy lifting for us. Since we were no longer tied to the BuddyPress template engine, we were able to get creative with how we displayed information and handled user interactions. The end result was a clean, fast, and user friendly interface that was simple and straightforward to use.</p>\n\n\n\n<p>I made a few modifications to allow WordPress and BuddyPress recognize our front end app and use it for BuddyPress components. I solved this with a pretty simple hook into the template include filter and included our template instead of the default. A few custom rewrite rules handled any non-BuddyPress url structures I needed to support and I soon had a fully functional and detached front end.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Conclusion</h2>\n\n\n\n<p>StudyChurch is now a powerful, robust social network ready for scale. We are still working on improving the system and adding new features which are now easier and faster to implement with the new structure.</p>\n\n\n\n<p>We’ve received some great feedback from users who find the app fast and intuitive. We are hoping to build out a native app in the near future.</p>\n\n\n\n<p>I’m so thankful for the work done by all of the volunteers who’ve put so much time into WordPress, BuddyPress, and now the BuddyPress REST API. I think there are going to be many more projects like StudyChurch in the near future that will leverage these great tools to build amazing and helpful solutions.</p>\n\n\n\n<p>Feel free to reach out if you have any questions or comments on what we’ve done with StudyChurch. Also, you are welcome to browse our code base on <a href=\"https://github.com/studychurch/sc-dashboard\" target=\"_blank\" rel=\"noreferrer noopener\">GitHub</a>.</p>\n\n\n\n<p>You can read more about StudyChurch and other projects we work on at <a href=\"https://iwitnessdesign.com/\" target=\"_blank\" rel=\"noreferrer noopener\">iwitnessdesign.com</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Sep 2019 09:07:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"WPTavern: WordPress 5.3 Beta 1 Ready for Testing, Includes 12 Gutenberg Releases and New Twenty Twenty Default Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94165\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:128:\"https://wptavern.com/wordpress-5-3-beta-1-ready-for-testing-includes-12-gutenberg-releases-and-new-twenty-nineteen-default-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2577:\"<p>WordPress core contributors worked together today to package up <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\" rel=\"noopener noreferrer\" target=\"_blank\">5.3 Beta 1</a> for release on schedule. The Core slack channel was abuzz this afternoon as developers pushed through last-minute commits and fixed issues ahead of shipping the beta.</p>\n<p>Iterations on the block editor are a major part of of this release. WordPress 5.3 will include the last 12 Gutenberg plugin releases. If you have already been using the plugin, you may have forgotten how many features it has that still haven&#8217;t made it into core WordPress. This includes significant improvements to group, column, and gallery blocks, Accessibility Navigation mode, the new inserter help panel, &#8220;snackbar&#8221; notices, and the typewriter experience, to highlight a few big items that have been rolled into 5.3.</p>\n<p>The highly anticipated Twenty Twenty default theme is also available in the beta, which which we will explore in greater detail on WP Tavern this week. Its design is <a href=\"https://wptavern.com/first-look-at-twenty-twenty-new-wordpress-default-theme-based-on-chaplain\" rel=\"noopener noreferrer\" target=\"_blank\">based on the Chaplin theme from Anders Norén</a> and showcases what is possible with the block editor.</p>\n<p>Some of the UI changes introduced in Gutenberg are starting to make their way into other parts of the WordPress admin.</p>\n<p>&#8220;These improved styles fix many accessibility issues, improve color contrasts on form fields and buttons, add consistency between editor and admin interfaces, modernize the WordPress color scheme, add better zoom management, and more,&#8221; release coordinator Francesca Marano said in the 5.3 beta 1 announcement.</p>\n<p>A few other notable additions to 5.3 that need testing include the following:</p>\n<ul>\n<li>Support for resuming uploads on large file sizes</li>\n<li>Automatic image rotation during upload</li>\n<li>Improvements to Site Health checks</li>\n<li>Time/Date component fixes</li>\n<li>PHP 7.4 Compatibility and removal of deprecated functionality</li>\n</ul>\n<p>If you&#8217;re ready to take the beta for a test drive, the easiest way is to install the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress Beta Tester</a> plugin and select the “bleeding edge nightlies” option. The <a href=\"https://make.wordpress.org/core/5-3/\" rel=\"noopener noreferrer\" target=\"_blank\">official release</a> is targeted for November 12, 2019.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Sep 2019 02:56:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: Google Search Console Adds Breadcrumbs Report, Sends Out Warnings for Structured Data Errors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://wptavern.com/google-search-console-adds-breadcrumbs-report-sends-out-warnings-for-structured-data-errors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5150:\"<p>Google recently announced a new Breadcrumbs report available in the Search Console to inform site owners about markup issues. In 2015, Google <a href=\"https://webmasters.googleblog.com/2015/04/better-presentation-of-urls-in-search.html\" rel=\"noopener noreferrer\" target=\"_blank\">introduced support for schema.org structured data</a>, including the breadcrumbs URL structure, in order better present URLs in search results. The Search Console&#8217;s new report uses this data to help site owners fix any issues preventing their breadcrumbs from displaying as rich search results.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Great news, we have a new report on Search Console <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f4e2.png\" alt=\"📢\" class=\"wp-smiley\" /> As of today, if you have Breadcrumb <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f35e.png\" alt=\"🍞\" class=\"wp-smiley\" /> structured data in your site, you\'ll see a new report under Enhancements (see screenshot). Check if you have errors and get to work! <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f6e0.png\" alt=\"🛠\" class=\"wp-smiley\" /> <a href=\"https://t.co/b8I4vbJwb9\">pic.twitter.com/b8I4vbJwb9</a></p>\n<p>&mdash; Google Webmasters (@googlewmc) <a href=\"https://twitter.com/googlewmc/status/1174693878835875840?ref_src=twsrc%5Etfw\">September 19, 2019</a></p></blockquote>\n<p></p>\n<p>Over the weekend, the console started emailing out notices to those who have errors in the breadcrumb structured data on their sites. It includes how many URLs are affected, along with a link to the new report.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/Screen-Shot-2019-09-23-at-9.17.17-AM.png?ssl=1\"><img /></a></p>\n<p>One common error that users are seeing is a &#8220;Missing field &#8216;item,\'&#8221; which references one of the properties Google requires for displaying that content as a rich result. The &#8216;item&#8217; property is the URL to the webpage that represents the breadcrumb, as Google prefers the final crumb to be linked.</p>\n<p>WordPress site owners have started reporting breadcrumb issues in the support forums for various plugins and themes. <a href=\"https://wordpress.org/plugins/breadcrumb-navxt/\">Breadcrumb NavXT</a>, a plugin that is active on 800,000 sites, allows users to generate customizable breadcrumb trails. There are already half a dozen <a href=\"https://wordpress.org/support/plugin/breadcrumb-navxt/\" rel=\"noopener noreferrer\" target=\"_blank\">support threads</a> opened regarding Breadcrumb markup errors listed in the console. Recommendations for fixing this issue vary based on the specific property that is missing and the breadcrumb configuration the user has in place.</p>\n<p>Breadcrumb NavXT plugin author John Havlik has <a href=\"https://wordpress.org/support/topic/missing-field-id-in-breadcrumbs-on-google-search-console/page/2/#post-11958307\" rel=\"noopener noreferrer\" target=\"_blank\">advised</a> some users to remove the schema.org markup for unlinked breadcrumb templates in order to remove the error, although this may not offer the best presentation in search snippets. Others have suggested allowing the %link% tag in the unlinked breadcrumb template and Havlik <a href=\"https://github.com/mtekk/Breadcrumb-NavXT/issues/226\" rel=\"noopener noreferrer\" target=\"_blank\">added this to the 6.4.0 milestone for the plugin</a> over the weekend.</p>\n<p>The <a href=\"https://wordpress.org/plugins/wordpress-seo/\" rel=\"noopener noreferrer\" target=\"_blank\">Yoast SEO</a> plugin also has an option for adding breadcrumbs and multiple users are <a href=\"https://wordpress.org/support/topic/breadcrumbs-missing-field-id-error-in-google-search-sonsole/\" rel=\"noopener noreferrer\" target=\"_blank\">reporting</a> <a href=\"https://wordpress.org/support/topic/google-breadcrumbs-markup-issues/page/2/\" rel=\"noopener noreferrer\" target=\"_blank\">errors</a> in the Google Search Console. Solutions vary, depending on what types of pages are outputting the error, but the most common advice Yoast support team members are offering is to check to see if there is a theme or plugin that is adding conflicting breadcrumb markup.</p>\n<p>There is no easy prescribed fix that will apply to all situations. It depends on how a site owner has configured breadcrumbs through a plugin or if they are automatically generated by a theme.</p>\n<p>If you received a notice from Google Search Console, the first step is to determine whether it&#8217;s a theme or a plugin that is generating your breadcrumbs. Next, browse the support forums for the theme/plugin that provides the breadcrumbs and see if the author recommends a fix or is working on one.</p>\n<p>Although breadcrumbs do not currently have a direct affect on rankings, they are prominently displayed in search snippets and generally contribute to a positive user experience. For more information on solving specific errors, check out <a href=\"https://developers.google.com/search/docs/data-types/breadcrumb\" rel=\"noopener noreferrer\" target=\"_blank\">Google&#8217;s documentation on Breadcrumb structured data</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 18:57:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress.org blog: WordPress 5.3 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7114\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9089:\"<p>WordPress 5.3 Beta 1 is now available!</p>\n\n\n\n<p><strong>This software is still in development,</strong> so we don’t recommend running it on a production site. Consider setting up a test site to play with the new version.</p>\n\n\n\n<p>You can test the WordPress 5.3 beta in two ways:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.3-beta1.zip\">download the beta here</a> (zip).</li></ul>\n\n\n\n<p>WordPress 5.3 is slated for release on <a href=\"https://make.wordpress.org/core/5-3/\">November 12, 2019</a>, and we need your help to get there. Here are some of the big items to test, so we can find and resolve as many bugs as possible in the coming weeks.</p>\n\n\n\n<h2>Block Editor: features and improvements</h2>\n\n\n\n<p>Twelve releases of the Gutenberg plugin are going to be merged into 5.3 which means there’s a long list of exciting new features.&nbsp;</p>\n\n\n\n<p>Here are just a few of them:</p>\n\n\n\n<ul><li>Group block and grouping interactions</li><li>Columns block improvements (width support + patterns)</li><li>Table block improvements (text alignment support, header/footer support, colors)</li><li>Gallery block improvements (reordering inline, caption support)</li><li>Separator block improvements (color support)</li><li>Latest Posts block improvements (support excerpt, content)</li><li>List block improvements (indent/outdent shortcuts, start value and reverse order support)</li><li>Button block improvements (support target, border radius)</li><li>Animations and micro interactions (moving blocks, dropdowns, and a number of small animations to improve the UX)</li><li>Accessibility Navigation Mode which will allow you to navigate with the keyboard between blocks without going into their content.</li><li>Block Style Variations API</li></ul>\n\n\n\n<p>Plus a number of other improvements, amongst them:</p>\n\n\n\n<ul><li>Data Module API improvements (useSelect/useEffect)</li><li>Inserter Help Panel</li><li>Extensibility: DocumentSettingsPanel</li><li>Snackbar notices</li><li>Typewriter Experience</li><li>Fix a number of Accessibility report issues</li></ul>\n\n\n\n<p>If you want to see all the features for each release, here are direct links to the release posts: <a href=\"https://make.wordpress.org/core/2019/09/19/whats-new-in-gutenberg-18-september/\">6.5</a>, <a href=\"https://make.wordpress.org/core/2019/08/28/whats-new-in-gutenberg-28-august/\">6.4</a>, <a href=\"https://make.wordpress.org/core/2019/08/14/whats-new-in-gutenberg-14-august/\">6.3</a>, <a href=\"https://make.wordpress.org/core/2019/07/31/whats-new-in-gutenberg-31-july/\">6.2</a>, <a href=\"https://make.wordpress.org/core/2019/07/10/whats-new-in-gutenberg-10-july/\">6.1</a>, <a href=\"https://make.wordpress.org/core/2019/06/26/whats-new-in-gutenberg-26th-june/\">6.0</a>, <a href=\"https://make.wordpress.org/core/2019/06/12/whats-new-in-gutenberg-12th-june/\">5.9</a>, <a href=\"https://make.wordpress.org/core/2019/05/29/whats-new-in-gutenberg-29th-may/\">5.8</a>, <a href=\"https://make.wordpress.org/core/2019/05/15/whats-new-in-gutenberg-15th-may/\">5.7</a>, <a href=\"https://make.wordpress.org/core/2019/05/01/whats-new-in-gutenberg-1st-may/\">5.6</a>, <a href=\"https://make.wordpress.org/core/2019/04/17/whats-new-in-gutenberg-17th-april/\">5.5</a>, and <a href=\"https://make.wordpress.org/core/2019/04/03/whats-new-in-gutenberg-3rd-april/\">5.4</a>.</p>\n\n\n\n<h3>Continuous effort on performance</h3>\n\n\n\n<p>The team working on the block editor managed to shave off 1.5 seconds of loading time for a particularly sizeable post (~ 36,000 words, ~ 1,000 blocks) since WordPress 5.2.</p>\n\n\n\n<h2>A new default theme: welcome Twenty Twenty</h2>\n\n\n\n<p>WordPress 5.3 introduces <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">Twenty Twenty</a>, the latest default theme in our project history.&nbsp;</p>\n\n\n\n<p>This elegant new theme is based on the WordPress theme <a href=\"https://www.andersnoren.se/teman/chaplin-wordpress-theme/\">Chaplin</a> which was released on the WordPress.org theme directory earlier this summer.&nbsp;</p>\n\n\n\n<p>It includes full support for the block editor, empowering users to find the right design for their message.</p>\n\n\n\n<h2>Wait! There is more</h2>\n\n\n\n<p>5.3 is going to be a rich release with the inclusion of numerous enhancements to interactions and the interface.</p>\n\n\n\n<h2>Admin interface enhancements</h2>\n\n\n\n<p>Design and Accessibility teams worked together to port some parts of Gutenberg styles into the whole wp-admin interface. Both teams are going to iterate on these changes during the 5.3 beta cycle. These improved styles fix many accessibility issues, improve color contrasts on form fields and buttons, add consistency between editor and admin interfaces, modernize the WordPress color scheme, add better zoom management, and more.</p>\n\n\n\n<h3>Big Images are coming to WordPress</h3>\n\n\n\n<p>Uploading non-optimized, high-resolution pictures from your smartphone isn’t a problem anymore. WordPress now supports resuming uploads when they fail as well as larger default image sizes. That way pictures you add from the block editor look their best no matter how people get to your site.</p>\n\n\n\n<h3>Automatic image rotation during upload</h3>\n\n\n\n<p>Your images will be correctly rotated upon upload according to the EXIF orientation. This feature was first proposed nine years ago. Never give up on your dreams to see your fixes land in WordPress!</p>\n\n\n\n<h3>Site Health Checks</h3>\n\n\n\n<p>The improvements introduced in 5.3 make it easier to identify and understand areas that may need troubleshooting on your site from the Tools -&gt; Health Check screen.</p>\n\n\n\n<h3>Admin Email Verification</h3>\n\n\n\n<p>You’ll now be periodically asked to check that your admin email address is up to date when you log in as an administrator. This reduces the chance that you’ll get locked out of your site if you change your email address.</p>\n\n\n\n<h2>For Developers</h2>\n\n\n\n<h3>Time/Date component fixes</h3>\n\n\n\n<p>Developers can now work with <a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">dates and timezones</a> in a more reliable way. Date and time functionality has received a number of new API functions for unified timezone retrieval and PHP interoperability, as well as many bug fixes.</p>\n\n\n\n<h3>PHP 7.4 Compatibility</h3>\n\n\n\n<p>The WordPress core team is actively preparing to support PHP 7.4 when it is released later this year. WordPress 5.3 contains <a href=\"https://core.trac.wordpress.org/query?status=accepted&status=assigned&status=closed&status=new&status=reopened&status=reviewing&keywords=~php74&milestone=5.3&order=priority\">multiple changes</a> to remove deprecated functionality and ensure compatibility. Please test this beta release with PHP 7.4 to ensure all functionality continues to work as expected and does not raise any new warnings. </p>\n\n\n\n<h3>Other Changes for Developers</h3>\n\n\n\n<ul><li>Multisite<ul><li>Filter sites by status<ul><li><a href=\"https://core.trac.wordpress.org/ticket/37392\">https://core.trac.wordpress.org/ticket/37392</a>&nbsp;</li><li><a href=\"https://core.trac.wordpress.org/ticket/37684\">https://core.trac.wordpress.org/ticket/37684</a>&nbsp;</li></ul></li><li>Save database version in site meta<ul><li><a href=\"https://core.trac.wordpress.org/ticket/41685\">https://core.trac.wordpress.org/ticket/41685</a>&nbsp;</li></ul></li></ul></li><li>Code modernization and PHP 7.4 support<ul><li><a href=\"https://core.trac.wordpress.org/ticket/47678\">https://core.trac.wordpress.org/ticket/47678</a>&nbsp;</li><li><a href=\"https://core.trac.wordpress.org/ticket/47783\">https://core.trac.wordpress.org/ticket/47783</a></li></ul></li><li>Toggle password view<ul><li><a href=\"https://core.trac.wordpress.org/ticket/42888\">https://core.trac.wordpress.org/ticket/42888</a></li></ul></li></ul>\n\n\n\n<p>Keep your eyes on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> for more <a href=\"https://make.wordpress.org/core/tag/5-3+dev-notes/\">5.3 related developer notes</a> in the coming weeks detailing other changes that you should be aware of.</p>\n\n\n\n<h2>What’s next</h2>\n\n\n\n<p>There have been over 400 tickets fixed in WordPress 5.3 so far with numerous bug fixes and improvements to help smooth your WordPress experience.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev/\">Help us translate WordPress into more than 100 languages</a>!</p>\n\n\n\n<p>If you think you’ve found a bug, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://core.trac.wordpress.org/newticket\">file one on WordPress Trac</a> where you can also find a list of <a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 18:36:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"WPTavern: WPHelpful: A User Feedback Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94129\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wptavern.com/wphelpful-a-user-feedback-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7082:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p><a href=\"https://wordpress.org/plugins/wphelpful/\">WPHelpful</a> is a plugin created by Zack Gilbert and Paul Jarvis that allows users to rate the helpfulness of a post.  It can be a useful addition to sites that offer tutorials, lessons, documentation, or any content where user feedback is warranted. Version 1.0 is available for free in the official WordPress plugin directory, but it also has a <a href=\"https://wphelpful.com/\">pro version</a> that offers additional features.</p>\n\n\n\n<p>I enjoyed giving this plugin a test drive.  As a former business owner, I could see where this plugin would&#8217;ve helped me gather feedback from my customers on product documentation and better catered to their needs.</p>\n\n\n\n<p>WPHelpful has huge potential, but its version 1.0 is still a 1.0.  It&#8217;s far from being a polished product at this stage.  It needs time to mature as a good free plugin.  The current batch of pro features should have made the cut for the free version.</p>\n\n\n\n<p>The free plugin available in the plugin directory won&#8217;t get you far unless you just need a basic rating system.  It is limited to:</p>\n\n\n\n<ul><li>Showing the feedback form on posts and pages.</li><li>Changing the colors for the form button.</li><li>Adding custom CSS (a feature already available on all WP sites via the customizer).</li></ul>\n\n\n\n<p>All other features and settings are available in the pro version.  Unless your goal is to simply allow user ratings on posts or pages, you can&#8217;t do much with a free copy.  There are existing plugins with a more mature codebase for handling basic ratings.</p>\n\n\n\n<p>One of the most notable aspects of the free version is that it allows you to test the pro settings in a development environment. This provides an opportunity to decide if you want to shell out the money to go pro. I am now officially recommending that every other plugin developer do this when possible.</p>\n\n\n\n<h2>What the Plugin Gets Right</h2>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>The plugin is simple to use.  You can choose to automatically append the form to posts on the front end or opt to display the form with the <code>[wphelpful]</code> shortcode.</p>\n\n\n\n<p>If nothing else, users shouldn&#8217;t have any problems getting the plugin up and running.  I tested it against a variety of themes with solid results.</p>\n\n\n\n<p>A custom [Gutenberg] block would&#8217;ve kicked user-friendliness up a notch.  Plugin authors need to start thinking in terms of building a block first and a shortcode second.  I&#8217;m hoping this makes the feature list for version 2.0.</p>\n\n\n\n<h2>Post Types: Paywall for the Most Useful Feature</h2>\n\n\n\n<p>The most important feature for this plugin is the ability to select which post types the feedback form can be used on.  Unfortunately, this feature is behind a paywall, limiting user feedback to only posts and pages.  This is a foundational feature that would be nicer in the free version.</p>\n\n\n\n<p>The post type feature is also limited in the pro setting.  In 1.0, you cannot pick post types individually.  The drop-down field limits you to a single post type, all post types, or pages plus all custom types.  There&#8217;s no way to select two different custom post types.</p>\n\n\n\n<p>The plugin doesn&#8217;t use the proper post type label, so you may get some weird labels like &#8220;Wp Area Types&#8221; (from the Gutenberg plugin) or &#8220;Jt Documentation Types&#8221; (a custom post type on my test install).</p>\n\n\n\n<p>Non-public post types also show up in the list. So, post types that don&#8217;t have front-end output show up in the select form.</p>\n\n\n\n<p>These issues are easy fixes, and I&#8217;m hoping this review sheds light onto these problems so they might be corrected for users.</p>\n\n\n\n<h2>How the Plugin Could Offer Better Pro Features</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Screenshot of the current post feedback report.</div>\n\n\n\n<p>Plugin authors need to eat.  There&#8217;s always a delicate balance that developers must strike between offering a useful free plugin and making enough of a return on their investment to continue maintaining the code.</p>\n\n\n\n<p>Currently, most of the plugin&#8217;s pro features are basic items like custom colors and form labels.  These are things that would better serve users in the free version.</p>\n\n\n\n<p>A more useful pro feature would be a &#8220;Reports&#8221; screen in the admin that offered options such as:</p>\n\n\n\n<ul><li>Sorting posts by rating and total ratings.</li><li>Displaying a graph of user feedback by month, year, etc.</li><li>Other reports that provided an overall look at feedback.</li></ul>\n\n\n\n<p>The plugin also only allows logged-in users to provide feedback.  That&#8217;s certainly an easier way to go to avoid spammers and bots.  Due to the added complexity, a pro extension for enabling any site visitor to provide feedback would be worth exploring.</p>\n\n\n\n<h2>How Does the Code Stack Up?</h2>\n\n\n\n<p>I&#8217;m going to get a bit technical here. Feel free to skip ahead if programming is not your thing.</p>\n\n\n\n<p>What the plugin needs is time to mature.  Version 1.0 is not supposed to be the best a plugin can be.  It&#8217;s about shipping a minimum viable product, so I&#8217;m a bit forgiving.  If this were 2.0 or 3.0, I&#8217;d be unrelenting.</p>\n\n\n\n<p>There&#8217;s a lot to like about the architectural decisions.  Much of it is set up in a way that it should be relatively easy to maintain in the long term.  This is important because it means that correcting issues, such as those listed below, shouldn&#8217;t be tough to fix.</p>\n\n\n\n<p>There are code issues that need patches. The plugin currently:</p>\n\n\n\n<ul><li>Uses a PHP variable for textdomains (not all translation tools run in a PHP environment).</li><li>Hasn&#8217;t internationalized all of its user-facing text, so not everything can be translated.</li><li>Registers multiple options in the database instead of storing all options together, which creates unnecessary clutter.</li><li>Doesn&#8217;t clean up after itself and delete its options upon uninstall.</li></ul>\n\n\n\n<p>These are not insurmountable issues, and they don&#8217;t break anything to the point of making the plugin unusable.  They&#8217;re just issues that need to be addressed.</p>\n\n\n\n<h2>The Final Verdict</h2>\n\n\n\n<p>Version 1.0 of WPHelpful lacks the feature set to be a particularly great free plugin.  It could be useful in some limited cases.  However, you&#8217;ll probably want to opt for the pro version to get the features that would make this plugin worth using.</p>\n\n\n\n<p>WPHelpful has potential. I could see it growing an audience of 100K, 500K, or more users over time with more polishing.  It&#8217;s not there yet.  The plugin doesn&#8217;t have enough meat on its bones for me to recommend it yet, but I&#8217;m hopeful that future versions will offer a more robust experience.</p>\n\n\n\n<p>If you&#8217;re looking for an easy-to-use free plugin that works with just posts and pages, it could serve your needs.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 18:01:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: GitHub Adds Dependency Graphs, Security Alerts for PHP Repos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/github-adds-dependency-graphs-security-alerts-for-php-repos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4157:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>PHP developers everywhere can rejoice as GitHub adds the long-awaited <a href=\"https://github.blog/2019-09-18-dependency-graph-supports-php-repos-with-composer-dependencies/\">dependency graphs feature for PHP repositories</a> that use Composer.  The feature provides security alerts, shows dependency insights, and displays the dependents of a given repository.  If enabled, it can also automatically send security fixes to the repository via pull requests.</p>\n\n\n\n<p>GitHub initially added support for JavaScript and Ruby when <a href=\"https://github.blog/2017-11-16-introducing-security-alerts-on-github/\">rolling out dependency graphs in 2017</a>. They added <a href=\"https://github.blog/2019-07-02-yarn-support-for-security-alerts/\">support for Yarn lock files</a> in July of this year. This has been a boon to the JavaScript community as it alerts developers of vulnerabilities in code they&#8217;re using and shipping to users.</p>\n\n\n\n<p>&#8220;We&#8217;re also seeing PHP and Composer grow in popularity&#8211;PHP is the fourth most popular language on GitHub and Composer is the fourth most starred PHP project,&#8221; wrote Justin Hutchings, Senior Product Manager at GitHub.  The company has taken notice of the trends.  JavaScript is a hot topic in many developer circles today, but PHP frameworks such as Laravel and Symfony continue growing in popularity and dominate among <a href=\"https://github.com/topics/php\">popular PHP repositories</a>.</p>\n\n\n\n<p>Composer is the <em>de facto</em> standard for PHP dependency management.  Core WordPress first <a href=\"https://core.trac.wordpress.org/ticket/43558\">added Composer support</a> for development environments in version 5.1.  While it&#8217;s not a part of the release package, this was some small victory after a <a href=\"https://core.trac.wordpress.org/ticket/23912\">years-long discussion</a> of adding a basic <code>composer.json</code> file to core.  Core hasn&#8217;t fully embraced Composer or any type of PHP dependency management, but plugin and theme authors are using it more than a few short years ago.  The new alerts and automatic pull requests will offer one more avenue for catching security issues with plugins and themes.</p>\n\n\n\n<p>GitHub seems to be rolling this feature out in waves.  After checking some repositories with dependency graphs enabled, some still do not have their PHP dependencies listed.  It may take some time, but developers should start seeing dependencies appear that are listed in their <code>composer.json</code> or <code>composer.lock</code> files.</p>\n\n\n\n<p>Public repositories should begin seeing automatic security alerts when an issue is found.  GitHub will start notifying repository owners of these alerts via web notifications or email, depending on what the account holder has set as their preference.  Developers with private repos or who have disabled dependency graphs will need to enable them to take advantage of the new feature.</p>\n\n\n\n<p>Security alerts on old repositories could become an annoyance.  GitHub recommends archiving those repos.  &#8220;Archived repositories send a signal to the rest of the community that they aren&#8217;t maintained and don&#8217;t receive security alerts,&#8221; explained Hutchings.</p>\n\n\n\n<p>Developers who have opted into GitHub&#8217;s <a href=\"https://help.github.com/en/articles/configuring-automated-security-fixes\">automatic security fixes beta</a> feature can now enjoy automatic pull requests (PRs) from GitHub when vulnerabilities are found.  GitHub creates a PR with the minimum possible secure version.  The developer can then merge the PR at their discretion.</p>\n\n\n\n<p>Dependency graphs also make for a much nicer experience when browsing a repository&#8217;s dependencies.  Previously, developers would need to dive into a project&#8217;s <code>composer.json</code> or view them from Packagist, the official package directory for Composer.  Developers can now click on a link to view a dependent repository.</p>\n\n\n\n<p>Rolling this feature out for PHP repos is a welcome addition and should help more projects keep their code secure.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Sep 2019 17:45:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"BuddyPress: A new place to learn how to build on top of BuddyPress!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=307844\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://buddypress.org/2019/09/bp-devhub-1-0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4575:\"<p>Hi!</p>\n\n\n\n<p>We’re very excited to officially announce the launch of a new development resources site on the BuddyPress.org network.</p>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://developer.buddypress.org/\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/bpdevhub-landing-page-1024x652.png\" alt=\"\" class=\"wp-image-307848\" /></a></div>\n\n\n\n<p>Today we are inaugurating <strong><a href=\"https://developer.buddypress.org/\">developer.buddypress.org</a></strong> with a complete <a href=\"https://developer.buddypress.org/bp-rest-api/\">handbook documenting the BP REST API</a>. This API will be introduced into our next major version which is scheduled on September 30, 2019. We thought you’d be interested to have a tool to help you discover the BuddyPress REST endpoints and their parameters to start playing with them (You’ll need <a href=\"https://buddypress.org/2019/09/buddypress-5-0-0-release-candidate/\">BuddyPress 5.0.0-RC1</a> to have even more fun with it!).</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 id=\"rest-api-handbook\">Using the BP REST API Handbook</h2>\n\n\n\n<p>The main part of the handbook is the «&nbsp;Developer Endpoint Reference&nbsp;». We grouped these endpoints according to the component they belongs to.</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/bpdevhub-02-911x1024.png\" alt=\"\" class=\"wp-image-307845\" /><a rel=\"noreferrer noopener\" href=\"https://buddypress.org/wp-content/uploads/1/2019/09/bpdevhub-02.png\" target=\"_blank\">View the full screenshot in a new tab.</a></div>\n\n\n\n<p>Each page of the reference is firstly introducing the component and describing the data schema of items contained into the REST responses. Then for each verb (or method), you&#8217;ll find the available arguments, their definition and an example of use with the <code><a href=\"https://bpdevel.wordpress.com/2019/09/12/let-us-start-using-the-bp-rest-api/\">bp.apiRequest()</a></code> JavaScript function. Below is a screenshot of the method to get a specific Activity.</p>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://developer.buddypress.org/bp-rest-api/reference/activity/#retrieve-a-specific-activity\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/bpdevhub-verb-example.png\" alt=\"\" class=\"wp-image-307851\" /></a></div>\n\n\n\n<h2>The future of this development resources hub</h2>\n\n\n\n<p>You can have a good idea of what’s coming next into this developer oriented site looking at its current landing page. We will first work on building the full <a href=\"https://buddypress.trac.wordpress.org/ticket/6812\">PHP Code Reference for BuddyPress</a>: functions, classes and hooks.<br /></p>\n\n\n\n<p>Then, we haven’t planned anything yet <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/263a.png\" alt=\"☺\" class=\"wp-smiley\" /> and we’re very opened to ideas and of course contributions about the «&nbsp;how&nbsp;» step and the «&nbsp;do&nbsp;» one.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>About the editing workflow</h2>\n\n\n\n<p>Unlike the BuddyPress Codex, it’s not possible for everyone to directly edit the content of the BP REST API Handbook or the future PHP Code Reference.</p>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://buddypress.trac.wordpress.org/newticket\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/09/new-ticket.png\" alt=\"\" class=\"wp-image-307857\" /></a></div>\n\n\n\n<p>But you can always report issues or suggest improvements using our <a href=\"https://buddypress.trac.wordpress.org\">Bug Tracker</a> making sure to select the «&nbsp;<strong>BuddyPress.org sites</strong>&nbsp;» option of the components dropdown of your ticket.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2>Props</h2>\n\n\n\n<p>The first version of the development resources hub was built thanks to the involvement of these contributors:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone B Gorges (boonebgorges)</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby (johnjamesjacoby)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet (imath)</a>,  <a href=\"https://profiles.wordpress.org/tw2113/\">Michael Beckwith (tw2113)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/espellcaste/\">Renato Alves (espellcaste)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar (netweb)</a>.</p>\n\n\n\n<p>Many thanks to them <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f609.png\" alt=\"😉\" class=\"wp-smiley\" /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Sep 2019 14:47:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"Post Status: Salesforce Ventures invests $300 million in Automattic, at a $3 billion valuation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=68901\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://poststatus.com/salesforce-ventures-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6125:\"<p>Salesforce Ventures is the investment arm of Salesforce. Prior to this investment in <a href=\"https://automattic.com/\">Automattic</a>, Salesforce Ventures had <a href=\"https://www.salesforce.com/company/ventures/funds/\">announced</a> $875 million raised across 11 fund initiatives — but none that amounts to $300 million. Previosuly, each fund has been between $50 to $125 million spread across several <a href=\"https://www.crunchbase.com/organization/salesforce-ventures/investments/investments_list\">investments</a>.</p>\n\n\n\n<p>I believe <a href=\"https://www.salesforce.com/company/ventures/\">Salesforce Ventures</a> called up funds specifically for this strategic investment in Automattic, which would likely put their total dollars invested (or committed to existing funds) well beyond $1 billion, and the $300 million into Automattic would be their largest investment to date, to my knowledge.</p>\n\n\n\n<p>Salesforce Ventures states on their website that they are exclusively seeking investments in &#8220;enterprise cloud&#8221; companies. In Automattic Founder and CEO Matt Mullenweg&#8217;s <a href=\"https://ma.tt/2019/09/series-d/\">announcement</a> about the funding, he specifically noted how Salesforce CEO Marc Benioff, &#8220;helped open my eyes to the incredible traction WordPress <a href=\"https://wpvip.com/\">and WP VIP</a> has seen in the enterprise market, and how much potential there still is there.&#8221; I am curious to see how Automattic changes their approach to VIP in particular, in light of this.</p>\n\n\n\n<p>$300 million is a lot of money. Salesforce is joining Insight Venture Partners, Tiger Global, and True Ventures as primary outside investors in Automattic. </p>\n\n\n\n<p>Given that Salesforce was the lead and only investor here, they now own a significant stake in Automattic — and it will be interesting to see what kind of confluence that enables between the two companies. Automattic CEO Matt Mullenweg tells me, &#8220;Automattic has been a long-time customer of Salesforce’s products, and we think there are lots of opportunities for closer integration.&#8221;</p>\n\n\n\n<p>Since Automattic recently acquired Tumblr and brought on a few hundred new employees from it, it&#8217;s natural to think the new fundraising is related. I asked Matt about that, and he said it was unrelated in terms of financial justification, but they did, &#8220;disclose the Tumblr transaction to Salesforce during [their] discussions.&#8221;</p>\n\n\n\n<p>Automattic hasn&#8217;t raised money since 2014, and it seems like this round is similar to prior ones, wherein the money helps spur their growth plans along but that they are operationally profitable — or close to it. Matt <a href=\"https://techcrunch.com/2019/09/19/automattic-raises-300-million-at-3-billion-valuation-from-salesforce-ventures/\">told Techcrunch</a>, &#8220;The roadmap is the same. I just think we might be able to do it in five years instead of ten.&#8221;</p>\n\n\n\n<p>Matt called the investment proof of Salesforce&#8217;s own &#8220;tremendous vote of confidence for Automattic and for the open web.&#8221; Salesforce does have some history of supporting <a href=\"https://opensource.salesforce.com/\">open source projects</a>, although that shouldn&#8217;t be equated to an investment in Automattic as a company; it is a vote of confidence for companies that rely on open-source platforms as a part of their line of business.</p>\n\n\n\n<p>Automattic is the single most significant contributor to WordPress and related open-source projects. It also relies on open-source software for its product development — particularly Jetpack and WooCommerce — and features like Gutenberg as the core experience for writing and site-building. How that blend of open source software and business development plays out, in the long run, is certainly of high interest to the open-source community.</p>\n\n\n\n<p>I have long discussed on various platforms how I think there are a handful of companies that are big enough to acquire Automattic someday. I still think Automattic is more likely to go public at some point, but if they are acquired, Salesforce is definitely one of those few with the resources to make it happen, and perhaps the operational congruence as well.</p>\n\n\n\n<p>Reaching a $3 billion valuation is an amazing feat that Automattic has achieved. Matt has said before that he believes each of their primary lines of business — WordPress.com, WooCommerce, and Jetpack — can be multi-billion dollar opportunities. I agree with him, particularly for WooCommerce. I think there&#8217;s a good chance WooCommerce will end up several times more valuable than all their other lines of business combined. <span class=\"pullquote alignleft\">I would love to see these new funds be funnelled into the incredible opportunity in the eCommerce landscape; one only needs to look at what Shopify has done to see what&#8217;s possible, and just how successful it can be.</span> </p>\n\n\n\n<p>I asked Matt why he was attracted to an investment from Salesforce&#8217;s VC arm, rather than an investment-only style firm. He said, &#8220;I love Salesforce’s philosophy, how they cultivate such a fantastic community, how they support progressive policies in San Francisco and the other cities they operate in, how they’ve been founder-led, their scale, their leadership, and their longevity in defining an entirely new class of software and being the most significant player in it.&#8221;</p>\n\n\n\n<p>I love the point about Salesforce defining a class of software — and I have realized recently just how huge their developer community is — so I really appreciate this comment from Matt. Making commercial and SaaS software is a well-established business now. Automattic is in a unique position as the most powerful player in an <em>open</em> ecosystem proud of its independence. This provides many unique opportunities for Automattic the business and unique challenges for Automattic the WordPress community member.</p>\n\n\n\n<p><em>Image credit: <a href=\"https://ma.tt/2019/09/series-d/\">Matt Mullenweg</a>, whose blog I brazenly stole it from.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 23:05:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: WordPress Community Contributors to Host Free Online Diversity Workshop Ahead of WordCamp US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=93735\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wptavern.com/wordpress-community-contributors-to-host-free-online-diversity-workshop-ahead-of-wordcamp-us\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5663:\"<p>WordCamp US will <a href=\"https://2019.us.wordcamp.org/2019/08/08/wordcamp-us-debuts-community-track/\" rel=\"noopener noreferrer\" target=\"_blank\">debut a new Community Track</a> in November that will feature sessions and workshops on topics like meetups, WordCamps, diversity and inclusion, and kids/youth. Jill Binder, Allie Nimmons, Aurooba Ahmed, and David Wolfpaw will be hosting a workshop called &#8220;Creating a Welcoming and Diverse Space&#8221; at the event. In order to adequately prepare for presenting on this sensitive topic, the team will be <a href=\"https://make.wordpress.org/community/2019/09/13/call-for-participants-creating-a-welcoming-and-diverse-space-online-workshop-on-sun-oct-6/\" rel=\"noopener noreferrer\" target=\"_blank\">running the workshop in a live, interactive Zoom call on Sunday, October 6</a>.</p>\n<p>In light of the recent news about <a href=\"https://wptavern.com/php-central-europe-conference-canceled-due-to-lack-of-speaker-diversity\" rel=\"noopener noreferrer\" target=\"_blank\">a central European PHP conference getting canceled due to a lack of a diverse lineup</a>, the broader PHP community is becoming more conscious of the importance of recruiting speakers that better represent their communities.</p>\n<p>&#8220;The <a href=\"https://tiny.cc/wpdiversity\" rel=\"noopener noreferrer\" target=\"_blank\">Diverse Speaker Workshops</a> that I’m running in WordPress and am <a href=\"https://diversein.tech/\" rel=\"noopener noreferrer\" target=\"_blank\">bringing to other technologies</a> have been just as important for years as they are now,&#8221; training leader <a href=\"https://diversein.tech\" rel=\"noopener noreferrer\" target=\"_blank\">Jill Binder</a> said. &#8220;These workshops are an essential piece to the whole puzzle for creating diverse communities, attendance at events, public speakers, and ultimately, leaders and organizers.&#8221;</p>\n<p>Binder said there are many factors in society that work against having diversity in a tech event’s public speaker lineup, but one that her team is specifically tackling in these workshops is <a href=\"https://en.wikipedia.org/wiki/Impostor_syndrome\" rel=\"noopener noreferrer\" target=\"_blank\">imposter syndrome</a>.</p>\n<p>&#8220;Our workshops help folks bust through their impostor syndrome and develop a topic, title, pitch, bio, and outline, more confidence in public speaking, and the motivation to start speaking,&#8221; Binder said.</p>\n<p>&#8220;The new workshop that Allie, Aurooba, David, and I are creating for WordCamp US on &#8216;Creating a Welcoming and Diverse Space&#8217; is another important piece to the puzzle. We are going to be teaching mindset, community, environment, speakers, and allyship. It will be an interactive workshop where people will walk away with an action list they can start implementing in their communities (whether in person or online) right away.&#8221;</p>\n<p>Some organizers of tech events have claimed that for certain events it is impossible to create a diverse lineup of speakers due to the demographics of the community and lack of willing participants.</p>\n<p>Binder said that in her experience it is unlikely that more diverse people are unwilling to speak but rather that the event is not being created with more kinds of people in mind. She offered a few suggestions for organizers to consider in planning ahead for a welcoming and diverse space:</p>\n<ul>\n<li>Have the event at different times that work for people with families. For example, don’t hold them all at 9pm at night. Weekend afternoons may work. Ask those with children what works for them.</li>\n<li>Consider venues that are not centered around alcohol (like bars and pubs). This opens up the event to attendees who are under 21, recovering addicts, folks who belong to a religious group that prohibits alcohol, and many other people who don’t feel safe or welcome in an alcohol-focused environment.</li>\n<li>Choose venues that have accessible alternatives to stairs, such as elevators and ramps.</li>\n<li>Try to have more diversity in the organizing team.</li>\n<li>Bring in more diverse speakers. Don’t know how? Check out the Diverse Speaker Workshop – <a href=\"https://tiny.cc/wpdiversity\" rel=\"noopener noreferrer\" target=\"_blank\">in WordPress</a> and in <a href=\"https://diversein.tech/\" rel=\"noopener noreferrer\" target=\"_blank\">other techs communities.</a></li>\n</ul>\n<p>She also recommends organizers directly invite more people into their communities.</p>\n<p>&#8220;Ask people in your network to introduce you to diverse people they may know who work with WordPress or your technology,&#8221; Binder said. &#8220;You can even go out and find those communities in your area – online and in person – or ask people to make an introduction for you to those groups. Examples of groups: Ladies Learning Code, Black Girls Code. Form genuine, friendly relationships with community members so that they can help you reach the WordPress enthusiasts in their communities.&#8221;</p>\n<p>Binder said the team will go into more detail on these topics during the workshop. Anyone who would like to learn more is welcome to attend the online public rehearsal for the workshop on October 6, at 3pm-5pm ET. This is a unique opportunity for those who cannot attend WordCamp US to join in on one of the interactive workshops. <a href=\"https://make.wordpress.org/community/2019/09/13/call-for-participants-creating-a-welcoming-and-diverse-space-online-workshop-on-sun-oct-6/\" rel=\"noopener noreferrer\" target=\"_blank\">Comment on the Community team&#8217;s post</a> with contact information and workshop leaders will send the zoom link and more information.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 22:14:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WPTavern: Bayleaf: A Food and Recipe Blog Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94041\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wptavern.com/bayleaf-a-food-and-recipe-blog-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5971:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>With the WordPress theme directory dominated by business-oriented themes, it&#8217;s sometimes tough to find themes that cater to more specific user groups. If you dig deep enough, you&#8217;ll find something outside the norm.  <a href=\"https://wordpress.org/themes/bayleaf/\">Bayleaf</a> is a blog theme specifically designed for sharing food and recipes.  </p>\n\n\n\n<p>The theme is designed and developed by <a href=\"https://vedathemes.com/\">Vedathemes</a>.  They currently have three themes in the theme directory, which follow the same clean design trend of Bayleaf.</p>\n\n\n\n<p>Food-related themes excite me.  In my off-time, I&#8217;m often browsing recipe blogs and looking for my next culinary experiment.  The problem with many such sites is their designs have too much noise instead of just showcasing the content visitors are looking for.  I was pleasantly surprised at the minimalist and open approach in the <a href=\"https://vedathemes.com/bayleaf-pro/\">Bayleaf demo</a>.</p>\n\n\n\n<p><em>Admittedly, I was drawn in by all the yummy food pics.</em></p>\n\n\n\n<p>The theme author has obviously taken a look at the food blogs and built a design that showcases what&#8217;s possible without adding complexity.  The related posts feature is also a nice extra for site visitors who&#8217;ll likely look for related recipes.</p>\n\n\n\n<p>Bayleaf combines the Poppins and Montserrat font families to create bold headers that are complimented by readable body copy.  The theme comes with options for displaying a sidebar on single posts or pages, but I&#8217;d recommend opting out.  The design works best without a sidebar, allowing more breathing room for sharing food images.</p>\n\n\n\n<p>The theme is slowly building an audience since its release in February.  It currently has 1,000+ installs and a five-star rating from six reviews in the theme directory.</p>\n\n\n\n<h2>Create a Unique Look with the Display Posts Widget</h2>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Bayleaf&#8217;s most prominent custom feature is its Display Posts widget.  By placing this widget in the Homepage Above Content or Homepage Below Content sidebar, users have a ton of variety with how their site looks.  No two homepages need look alike.</p>\n\n\n\n<p>The widget comes with six list, grid, and slider styles to choose from. It supports custom post types and taxonomies, so users can use it for content such as events, products, or anything else they want to showcase.</p>\n\n\n\n<p>My first thought when viewing the demo was, <em>Not another complicated slider with a hard-to-configure customizer experience.</em> While I&#8217;m not usually a fan of sliders, configuring this one was easy.  Plus, the grid and list styles offered alternative options.</p>\n\n\n\n<p>A lot of themes overdo features like this, offering a clunky experience within the customizer.  However, Bayleaf keeps it simple by packaging the feature as a widget with just enough variety to cover most use cases.</p>\n\n\n\n<p>My one complaint with the Display Posts widget is that it was hard to find at first.  At this point, it should be standard practice to prefix custom widgets with the theme name.  &#8220;Bayleaf: Display Posts&#8221; would&#8217;ve been far easier to pick from the widget lineup.</p>\n\n\n\n<h2>Handling Block Editor Support</h2>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>I tested Bayleaf against the latest public release of the Gutenberg plugin. The theme is not without a few problems, which is par for the course with most themes supporting the block editor.  The Gutenberg plugin&#8217;s development is fast-paced, and it&#8217;s tough for theme authors to keep up.  Something that works one week could break the next.</p>\n\n\n\n<p>The theme takes a minimalist approach with regards to the editor, allowing the default editor styles to handle much of the layout.  With the break-neck pace of change, this can sometimes be a better approach than attempting to manage every style.</p>\n\n\n\n<p>There are areas where Bayleaf could be more opinionated.  For example, the alignment and typography for the post title aren&#8217;t a one-to-one match between the editor and front end.  The content width is wider on the front end than the editor, which means the number of characters per line doesn&#8217;t match.  There are several minor items where the block editor overrules theme styles.</p>\n\n\n\n<p>The theme doesn&#8217;t offer a 100% WYSIWYG experience, but it&#8217;s close enough at this stage and doesn&#8217;t break anything.  Most issues are trivial and will simply take some adjustment time, assuming Gutenberg development settles a bit.</p>\n\n\n\n<h2>How Does the Code Stand Up?</h2>\n\n\n\n<p>Bayleaf isn&#8217;t pushing any boundaries, but it&#8217;s solid in comparison to the average theme.  It&#8217;s based on the Underscores starter, which serves as the <em>de facto</em> standard for many themes in the official directory.</p>\n\n\n\n<p>The theme doesn&#8217;t have a ton of custom code, so there are few places it could go wrong.</p>\n\n\n\n<p>Like all themes in the official directory, it undergoes a rigorous review process.  It&#8217;s <a href=\"https://themes.trac.wordpress.org/query?keywords=~theme-bayleaf\">Trac history</a> doesn&#8217;t show anything worrisome.  Vedathemes seems to have a good grasp of building themes that meet the official theme review standards.</p>\n\n\n\n<h2>The Final Verdict</h2>\n\n\n\n<p>You won&#8217;t find a boatload of options in Bayleaf.  What you will find is a clean design that gets out of the way but with enough features to have fun tinkering around on your blog for a couple of hours.  The Display Posts widget can get you pretty far with little work.</p>\n\n\n\n<p>If you&#8217;re looking for a change to your food or recipe blog, you can&#8217;t go wrong giving this theme a run. </p>\n\n\n\n<p>The theme could also be used for other types of sites.  There are no specific features that limit its use to only food blogging.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 18:49:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Automattic Raises $300M in Series D Investment Round, Valuation Jumps to $3 Billion\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94026\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/automattic-raises-300m-in-series-d-investment-round-valuation-jumps-to-3-billion\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6254:\"<p><a href=\"https://automattic.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Automattic</a> announced another round of funding today, a $300 million Series D investment from <a href=\"https://www.salesforce.com/company/ventures/\" rel=\"noopener noreferrer\" target=\"_blank\">Salesforce Ventures</a>, giving the company a $3 billion valuation post-funding. The last time Automattic raised money was $160 million in a Series C round in 2014. Since that time the company has grown to more than 950 employees and made strategic acquisitions, including <a href=\"https://wptavern.com/automattic-acquires-woocommerce\" rel=\"noopener noreferrer\" target=\"_blank\">WooCommerce</a> in 2015 and <a href=\"https://wptavern.com/automattic-acquires-tumblr-plans-to-rebuild-the-backend-powered-by-wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">Tumblr</a> (closing in 2019).</p>\n<p>CEO Matt Mulleneweg <a href=\"https://ma.tt/2019/09/series-d/\" rel=\"noopener noreferrer\" target=\"_blank\">said</a> the funds will enable the company to speed up and scale its product development, as well as continue the company&#8217;s continual contributions to WordPress:</p>\n<blockquote><p>For Automattic, the funding will allow us to accelerate our roadmap (perhaps by double) and scale up our existing products—including WordPress.com, WordPress VIP, WooCommerce, Jetpack, and (in a few days when it closes) Tumblr. It will also allow us to increase investing our time and energy into the future of the open source WordPress and Gutenberg.</p></blockquote>\n<p>In 2016, Mullenweg <a href=\"https://wptavern.com/woocommerce-powers-42-of-all-online-stores\" rel=\"noopener noreferrer\" target=\"_blank\">identified both Jetpack and WooCommerce as “multi-billion dollar opportunities”</a> that could each be larger than WordPress.com in the future. Jetpack has grown from 1+ million users in 2016 to more than 5 million today. The plugin&#8217;s product team has aggressively expanded its commercial plans and features and is one of the first to experiment with offering <a href=\"https://wptavern.com/jetpack-7-6-improves-amp-compatibility-adds-preview-and-upgrade-nudge-for-blocks-only-available-on-paid-plans\" rel=\"noopener noreferrer\" target=\"_blank\">previews and commercial upgrade nudges for blocks in WordPress&#8217; editor</a>.</p>\n<p>WooCommerce has also grown to more than 5 million active installs (from 1+ million in 2015 at the time of acquisition). The e-commerce platform has a more challenging market with formidable competitors like Shopify, which recently <a href=\"https://observer.com/2019/09/shopify-ebay-amazon-ecommerce-growth/\" rel=\"noopener noreferrer\" target=\"_blank\">overtook eBay as the second largest shopping site after Amazon</a>. Shopify <a href=\"https://investors.shopify.com/Investor-News-Details/2019/Shopify-Announces-Second-Quarter-2019-Financial-Results/default.aspx\" rel=\"noopener noreferrer\" target=\"_blank\">reported $362 million in revenue</a> during its last quarter with $153 million coming from subscriptions to the Shopify platform.</p>\n<p>I asked Mullenweg about how the funding might help Automattic make WooCommerce more user-friendly and competitive. Despite going up against the seemingly indomitable e-commerce powerhouses, Mullenweg sees WooCommerce&#8217;s platform an opportunity for growing independent stores on the web.</p>\n<p>&#8220;WooCommerce already represents the best way to marry content and commerce, and has a huge advantage being so tightly integrated from a user perspective with WordPress itself,&#8221; Mullenweg said. &#8220;However it also inherits some of the barriers WordPress has to adoption, particularly from new users. I think that Gutenberg will help a ton, as it&#8217;s better than any of the builders the eCommerce players have, and when that gets combined with the flexibility, control, and scalability you get from WP + WooCommerce it&#8217;s going to be huge. There&#8217;s a ton of work left to do, though, and we&#8217;re trying to grow that team as quickly as possible to keep up with the opportunity.&#8221;</p>\n<p>Mullenweg declined to share any information about Jetpack and WooCommerce&#8217;s revenue today but confirmed that they have not yet eclipsed WordPress.com.</p>\n<p>&#8220;What I can say is that WP.com is still our biggest business, and WooCommerce was our fastest growing last year,&#8221; he said.</p>\n<p>Automattic&#8217;s most recent round of funding will help the company better monetize these products that have grown in tandem with WordPress&#8217; market share, which W3Techs puts at <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\" rel=\"noopener noreferrer\" target=\"_blank\">34.5%</a> of the top 10 million websites. Independent stores sitting on top of this large chunk of the web represent a significant market that Automattic is currently dominating in the WordPress space.</p>\n<p>The Tumblr acquisition also affords another opportunity to introduce e-commerce solutions to more of Automattic&#8217;s customers. Mullenweg previously said the Tumblr app receives 20X more daily signups than the WordPress mobile app. The social network/blogging hybrid also has a significantly younger user base, based on <a href=\"https://weareflint.co.uk/main-findings-social-media-demographics-uk-usa-2018\" rel=\"noopener noreferrer\" target=\"_blank\">a 2018 study</a> that found 43 percent of internet users between the ages of 18 to 24 years old used Tumblr. It&#8217;s an untapped market for e-commerce, as Tumblr users who want to sell currently have to use a service like Shopify or Ecwid and generate a Tumblr-compatible widget.</p>\n<p>Mullenweg said the acquisition hasn&#8217;t closed yet but Automattic may explore e-commerce on Tumblr in 2020.</p>\n<p>&#8220;Once it closes there will be a few months of normal integration work and getting the teams working together, making sure we have harmonized policies on support, content moderation, anti-spam, ads, and all of those lower-level things,&#8221; he said. &#8220;Beyond that I’ve seen what you’re seeing — a lot of Tumblr users want access to more customization and e-Commerce. There are no specific plans yet but I imagine that’s something the team will consider for next year’s roadmap.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 16:15:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Matt: Automattic’s Series D\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50121\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://ma.tt/2019/09/series-d/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3727:\"<p>Today <a href=\"https://automattic.com/\">Automattic</a> announced it has closed a new $300 million Series D, with <a href=\"https://www.salesforce.com/company/ventures/\">Salesforce Ventures</a> taking the entire round. This puts us at a post-round valuation of $3 billion, three times what it was after our last fundraising round in 2014. It&#8217;s a tremendous vote of confidence for Automattic and for the open web.</p>\n\n\n\n<p>I met <a href=\"https://twitter.com/Benioff\">Marc Benioff</a> earlier this year, and it became obvious to both of us that <a href=\"https://salesforce.com/\">Salesforce</a> and Automattic shared a lot of principles and philosophies. Marc is a mindful leader and his sensibilities and sense of purpose feel well aligned with our own mission to make the web a better place. He also helped open my eyes to the incredible traction WordPress <a href=\"https://wpvip.com/\">and WP VIP</a> has seen in the enterprise market, and how much potential there still is there. I’ve also loved re-connecting with <a href=\"https://twitter.com/btaylor\">Bret Taylor</a> who is now Salesforce’s President and Chief Product Officer. Bret’s <a href=\"https://en.wikipedia.org/wiki/Bret_Taylor\">experience</a> across Google Maps, Friendfeed, Facebook, Quip, and now transforming Salesforce makes him one of the singular product thinkers out there and our discussion of Automattic’s portfolio of services have been very helpful already.</p>\n\n\n\n<p>For Automattic, the funding will allow us to accelerate our roadmap (perhaps by double) and scale up our existing products—including <a href=\"https://wordpress.com/\">WordPress.com</a>, <a href=\"https://wpvip.com/\">WordPress VIP</a>, <a href=\"https://woocommerce.com/\">WooCommerce</a>, <a href=\"https://jetpack.com/\">Jetpack</a>, and (in a few days when it closes) <a href=\"https://www.tumblr.com/\">Tumblr</a>. It will also allow us to increase investing our time and energy into the future of the open source <a href=\"https://wordpress.org/\">WordPress</a> and <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>.</p>\n\n\n\n<p>The Salesforce funding is also a vote of confidence for the future of work. Automattic has grown to more than 950 employees working from 71 countries, with no central office for several years now. <a href=\"https://distributed.blog/\">Distributed work</a> is going to reshape how we spread opportunity more equitably around the world. There continue to be new heights shown of what can be achieved in a distributed fashion, with <a href=\"https://about.gitlab.com/2019/09/17/gitlab-series-e-funding/\">Gitlab announcing a round at $2.75B earlier this week</a>.</p>\n\n\n\n<p>Next year Automattic celebrates 15 years as a company! The timing is fortuitous as we&#8217;ve all just returned from <a href=\"https://ma.tt/2018/10/the-importance-of-meeting-in-person/\">Automattic&#8217;s annual Grand Meetup</a>, where more than 800 of us got together in person to share our experiences, explore new ideas, and have some fun. I am giddy to work alongside these wonderful people for another 15 years and beyond.</p>\n\n\n\n<p>If you&#8217;re curious my previous posts on our fundraising, here&#8217;s our <a href=\"https://ma.tt/2006/04/a-little-funding/\">2006 Series A</a>, <a href=\"https://ma.tt/2008/01/act-two/\">2008 Series B</a>, <a href=\"https://ma.tt/2013/05/automattic-secondary/\">2013 secondary</a>, and <a href=\"https://ma.tt/2014/05/new-funding-for-automattic/\">2014 Series C</a>. As before, happy to answer questions in the comments here. <a href=\"https://techcrunch.com/2019/09/19/automattic-raises-300-million-at-3-billion-valuation-from-salesforce-ventures/\">I also did an exclusive interview with Romain Dillet on (WP-powered) Techcrunch</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 13:01:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"WPTavern: Gutenberg 6.5 Adds Experimental Block Directory Search to Inserter and New Social Links Block\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"https://wptavern.com/gutenberg-6-5-adds-experimental-block-directory-search-to-inserter-and-new-social-links-block\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3773:\"<p>Gutenberg 6.5 was released today with a rough prototype that adds one-click search and installation of blocks from the block directory to the inserter. Selected blocks are automatically installed as a plugin in the background and inserted into the editor with one click.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/block-directory-experiment.gif?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://github.com/WordPress/gutenberg/pull/17431\" rel=\"noopener noreferrer\" target=\"_blank\">pull request</a> for the experiment indicates that it&#8217;s still very much a work in progress. It extends the inserter to fetch a list of suggestBlocks similar to reusableBlocks, and the list is currently served from a mock API.</p>\n<p>The prototype is can be turned on under the <strong>Gutenberg > Experiments</strong> menu, a relatively new Settings page that was <a href=\"https://github.com/WordPress/gutenberg/pull/16626\" rel=\"noopener noreferrer\" target=\"_blank\">added in Gutenberg 6.3</a>. This menu also allows testers to enable the experimental Navigation Menu Block, Widgets Screen, and Legacy Widget Block.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/Screen-Shot-2019-09-18-at-8.46.59-PM.png?ssl=1\"><img /></a></p>\n<p>Block Navigation has also been added to the experimental Navigation Block in this release. This addition is considered a first start that is expected to evolve over time.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2019/09/block-navigator.png?ssl=1\"><img /></a></p>\n<p>&#8220;Regardless of how the UI evolves for this block, I think there will always be a need for representing the menu structure as a child block tree with all menu hierarchies mapped out consistently and not hidden (dropdowns, etc),&#8221; Gutenberg engineer Matias Ventura <a href=\"https://github.com/WordPress/gutenberg/issues/16812\" rel=\"noopener noreferrer\" target=\"_blank\">said</a>.</p>\n<p>&#8220;Luckily, we already have a view that handles that representation in the &#8216;block navigator.&#8217; That means if the navigation menu block is represented through child blocks, we&#8217;ll get this view for free.&#8221;</p>\n<p>In the future, Gutenberg engineers may allow for drag-and-drop reordering of items in the navigator and may explore rendering the view inline or in a modal launched from the navigation menu block.</p>\n<h3>Gutenberg 6.5 Adds New Social Links Block</h3>\n<p>Gutenberg 6.5 also adds a new social links block under the widgets panel. It allows users to place social links anywhere within the content by clicking on the icons and pasting in their social URLs. The gif below demonstrates how the block works, although the grey placeholder icons have since been removed in favor of opacity changes to indicate unconfigured blocks.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/09/social-links-block.gif?ssl=1\"><img /></a></p>\n<p>This release introduces a handful of other notable updates, including support for <a href=\"https://github.com/WordPress/gutenberg/pull/17253\" rel=\"noopener noreferrer\" target=\"_blank\">border radius changes in the button block</a>, support for <a href=\"https://github.com/WordPress/gutenberg/pull/17101\" rel=\"noopener noreferrer\" target=\"_blank\">adding captions to images in the Gallery block</a>, and the addition of <a href=\"https://github.com/WordPress/gutenberg/pull/16490\" rel=\"noopener noreferrer\" target=\"_blank\">local autosaves</a>.</p>\n<p>The 6.5 release post has not yet been published but the plugin update is available in the admin and a full list of enhancements and bug fixes can be found in the <a href=\"https://wordpress.org/plugins/gutenberg/#developers\" rel=\"noopener noreferrer\" target=\"_blank\">changelog</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Sep 2019 03:41:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"WPTavern: EditorsKit Adds Nofollow Options for Links, Fixes Bug with Gutenberg Metaboxes Overlapping in Chrome\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=93971\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://wptavern.com/editorskit-adds-nofollow-options-for-links-fixes-bug-with-gutenberg-metaboxes-overlapping-in-chrome\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3528:\"<p><a href=\"https://wordpress.org/plugins/block-options/\" rel=\"noopener noreferrer\" target=\"_blank\">EditorsKit</a> is becoming somewhat of a &#8220;hotfix&#8221; plugin for Gutenberg, especially with the additions to the 1.14 release this week. Developer Jeffrey Carandang added new link formats for nofollow rel attribute options, along with a fix for an annoying bug in Chrome that causes Gutenberg metaboxes to overlap. He has been closely monitoring feedback on both Gutenberg and EditorsKit, introducing features for which users have an immediate need.</p>\n<p>Google recently announced <a href=\"https://wptavern.com/google-announces-new-ways-to-identify-nofollow-links-progress-on-related-gutenberg-ticket-is-currently-stalled\" rel=\"noopener noreferrer\" target=\"_blank\">new ways to identify nofollow links</a> with two additional rel attribute options for specifying links as sponsored and/or user-generated content. The Gutenberg core team has expressed hesitation on a <a href=\"https://github.com/WordPress/gutenberg/pull/16609#issuecomment-527921959\">PR that would add nofollow link options</a>, invoking WordPress&#8217; <a href=\"https://wordpress.org/about/philosophy/\" rel=\"noopener noreferrer\" target=\"_blank\">80/20 rule</a>.</p>\n<p>Since the related PR doesn&#8217;t seem to be a priority, with no movement for two weeks, Carandang decided to add the nofollow and sponsored rel attribute options to EditorsKit, so users can start following Google&#8217;s recommendations without having to switch to HTML mode. He also managed to make it work with the version of Gutenberg included in core.</p>\n<p><a href=\"https://cloudup.com/cqP3APNEF3j\"><img src=\"https://i1.wp.com/cldup.com/kLcfVSl1UW.gif?resize=627%2C495&ssl=1\" alt=\"Nofollow link options\" width=\"627\" height=\"495\" /></a></p>\n<p>Chrome users may have noticed that <a href=\"https://github.com/WordPress/gutenberg/issues/17406\" rel=\"noopener noreferrer\" target=\"_blank\">the block editor has a nasty bug with metaboxes overlapping</a>, obscuring the main content area. This problem was introduced in the recent Chrome 77 update and is present on WordPress 5.2.3 and older versions.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/09/metabox-overlapping.png?ssl=1\"><img /></a></p>\n<p>Chrome developers are aware of the issue and a fix will be in the next release. Version 78 is expected October 22. Since it is a bug with Chrome, the Gutenberg team has opted not to release a fix/workaround for this problem. In the meantime, they recommend updating to WordPress 5.3 if it is released before the Chrome bug is fixed. This isn&#8217;t likely, as 5.3 is scheduled for mid-November.</p>\n<p>The Gutenberg team also recommend using a different browser or installing the Gutenberg plugin to fix the issue. Andrea Fercia noted on the ticket that the plugin is still listed among WordPress&#8217; beta plugins and may not be advisable to use in production on some sites. Users with a technical background can implement one of several CSS solutions in the ticket, but this is a frustrating bug for users who don&#8217;t know how to apply code fixes.</p>\n<p>Carandang added a fix for this bug to the most recent version of EditorsKit. So far his strategy of being responsive to users&#8217; requests seems to have been successful, as his Gutenberg utility plugin now has more than 1,000 active installs. He said he is happy to add hot fixes for EditorsKit users and will remove them once the fixes have been added to Chrome and/or the block editor.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Sep 2019 19:42:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Behind New Packages Project Lead, Theme Review Team Launches Admin Notices Solution\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=93936\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/behind-new-packages-project-lead-theme-review-team-launches-admin-notices-solution\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7754:\"<p>As part of the WordPress Theme Review Team&#8217;s plan to <a href=\"https://wptavern.com/wordpress-theme-review-team-seeks-to-curb-obtrusive-admin-notices-with-new-requirement-to-follow-core-design-patterns\">curb obtrusive admin notices</a>, the team pushed version 1.0 of its <a href=\"https://github.com/WPTRT/admin-notices\">Admin Notices</a> package to the public.  The new package provides a standard API for theme authors to display admin notices.</p>\n\n\n\n<p>Ari Stathopoulos took over as the packages project lead in late August.  Stathopoulos is the primary developer and creator of the highly-rated <a href=\"https://kirki.org/\">Kirki customizer framework</a>, which currently has 300,000+ active installs as a plugin.  However, the framework is also available as separate modules that theme authors can bundle within their themes.</p>\n\n\n\n<p>The Admin Notices package is the third package produced by the team and the first that Stathopoulos has spearheaded.</p>\n\n\n\n<p>Adding a basic admin notice in WordPress is relatively easy for most developers. However, handling features such as persistent dismissible actions is more complex.  The Admin Notices package handles this out of the box.</p>\n\n\n\n<p>Some options for the package include the ability to:</p>\n\n\n\n<ul><li>Set a title and message.</li><li>Select a type that adds in the appropriate UI class (info, success, warning, error).</li><li>Choose which admin screens the notice appears on.</li><li>Limit the message by user capability so that it doesn&#8217;t appear for all users.</li></ul>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/09/wptrt-admin-notices-002.png?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a></div>\n\n\n\n<p>The above screenshot shows an example of a basic admin notice output for the four available types.  The dismiss action is handled by JavaScript and works without reloading the page.  Once dismissed, users will no longer see the notice.</p>\n\n\n\n<p>&#8220;I think the hardest thing about it was deciding how restrictive we wanted it to be,&#8221; said Stathopoulos of the challenges building this package. The package restricts theme authors to paragraph, link, bold, and italic elements in version 1.0.  It doesn&#8217;t leave a lot of room for experimentation, but standardization is the goal.  The more elements allowed, the more likely the tool doesn&#8217;t solve the team&#8217;s problem of keeping admin notices unobtrusive.</p>\n\n\n\n<h2>User Notifications Are a Complex Problem</h2>\n\n\n\n<p>WordPress doesn&#8217;t provide a formal API for user notifications.  However, it does provide a standard set of CSS classes and a hook for attaching notices.  The Codex also has some examples of <a href=\"https://codex.wordpress.org/Plugin_API/Action_Reference/admin_notices\">best practices</a>.  The lack of a formal API has left theme and plugin authors to their own devices.  Users have suffered because of wildly varying implementations and common issues such as <a href=\"https://wptavern.com/please-stop-abusing-wordpress-admin-notices\">non-dismissible advertisements</a>.</p>\n\n\n\n<p>Tim Hengeveld <a href=\"https://core.trac.wordpress.org/ticket/43484\">proposed a Notification Center API</a> on Trac in 2018.  The ticket has a healthy, ongoing discussion and some UI proposals.  The proposal is still marked as &#8220;Awaiting Review,&#8221; and it&#8217;s unlikely that it&#8217;ll ship anytime sooner than WordPress 5.4 or later.</p>\n\n\n\n<p>Currently, many plugins and themes also use admin notices for user onboarding, which is a separate problem in need of a solution.  There&#8217;s a 4-year-old ticket that discusses <a href=\"https://core.trac.wordpress.org/ticket/34116\">WordPress new-user onboarding</a>, but there&#8217;s not much movement to solve this problem for plugins and themes.</p>\n\n\n\n<p>While the TRT&#8217;s package doesn&#8217;t tackle all issues associated with user notifications, it does help limit some of the short-term damage.</p>\n\n\n\n<h2>More Packages in the Works</h2>\n\n\n\n<p>More packages are currently being built and others are in the planning stages.</p>\n\n\n\n<p>The goal of the overall project is to provide theme authors with drop-in modules they can bundle with their themes.  The packages are all written in PHP 5.6+ in hopes to push theme authors toward more modern coding practices (relatively speaking, since PHP 7.4 will be released this year).  It will also help streamline the review process if more theme authors adopt the packages rather than building everything in-house.</p>\n\n\n\n<p>&#8220;If we build packages for the most-requested things, we&#8217;ll hopefully empower people to build quality themes easier,&#8221; explained Stathopoulos.  &#8220;I think of packages as building blocks for themes.&#8221;</p>\n\n\n\n<p>Stathopoulos is working on a customizer control for selecting a color with alpha transparency, which could be released as early as next week.  It will provide theme users with more control over how their colors appear for themes that implement it.</p>\n\n\n\n<p>&#8220;After we build the basics I want to focus on packages that would enhance a11y and privacy in themes &#8211; two areas where themes are falling short,&#8221; he said.  &#8220;It would help a lot of people, and that is ultimately our goal.&#8221;</p>\n\n\n\n<p>Theme authors have grown accustomed to installing JavaScript and CSS packages via NPM over the past few years.  However, their use of Composer as a PHP dependency manager has lagged.  In some part, this could be due to WordPress&#8217; previous reluctance to bump its minimum version of PHP.  Many packages available on Packagist, the main Composer repository, do not work with older versions of PHP.  WordPress&#8217; recent jump to PHP 5.6+ and plans to move to 7+ in the future may push more theme authors to consider PHP dependency management.</p>\n\n\n\n<p>The TRT has a <a href=\"https://packagist.org/packages/wptrt/\">Packagist account</a> and has made all of its packages installable via Composer.</p>\n\n\n\n<h2>No Requirement to Use Packages Yet</h2>\n\n\n\n<p>There are no current plans for the TRT to start requiring the use of these packages for specific features, but a few team members have proposed doing so.</p>\n\n\n\n<p>&#8220;There are valid reasons to enforce the use of these packages, but it can&#8217;t happen overnight,&#8221; said Stathopoulos. &#8220;We want themes in the repository to have some standards, it can not be the wild west. Code quality has to improve. These packages are a way to make life easier for people, and ultimately save time for everyone.&#8221;</p>\n\n\n\n<p>Stathopoulos is open to theme authors building custom implementations if they can improve upon what the team has built, but he prefers that authors &#8220;discuss their ideas in the package repository and submit a pull-request so that the whole community can benefit.&#8221;</p>\n\n\n\n<p>Getting theme authors involved is one area where the team has struggled.  Contributing to the packages could benefit the entire community.  &#8220;Most people don&#8217;t even know about them since they are not listed anywhere,&#8221; said Stathopoulos.  &#8220;Theme Authors currently have to look for them, and in order to look for them someone needs to tell them they exist (which doesn&#8217;t happen).&#8221;  One of the next steps would be getting the packages listed in the TRT&#8217;s documentation.</p>\n\n\n\n<p>Working together on common theme features could provide a bridge between theme authors and reviewers, allowing them to solve issues together.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Note: The author of this article was involved with the initial theme packages proposal and a developer on its initial package releases.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Sep 2019 18:06:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"HeroPress: Life Stacks Up –  From A Small Town Boy To A Geek Entrepreneur\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2963\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:192:\"https://heropress.com/essays/life-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur/#utm_source=rss&utm_medium=rss&utm_campaign=life-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10001:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/09/091719-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: For me, WordPress means freedom, self expression, and adaptability.\" /><p>A six year old is in deep thought. His gaze stuck on an intricate structure made with wooden sticks – a large rectangular box in the centre, a tall stick, some knitting threads running up and down. All this is arranged in a shelf in a common terrace wall of two middle class Indian homes.</p>\n<p>The boy is holding what seems like a paper cup telephone – two paper cups with a thread running between. Soon, he smiles and throws one paper cup over the wall to the other side. His counterpart on the other side picks up his side of the &#8220;telephone&#8221; and they start talking.</p>\n<p>&#8220;I made a TV using the sticks. I&#8217;m now going to set up a power line&#8230;&#8221;</p>\n<p>&#8220;Awesome, I&#8217;ll be there after my homework!&#8221;</p>\n<p>Aha! Now it makes sense. The kids are pretend-playing, and this one in particular is into science and model making. He has made an elaborate television model with limited resources.</p>\n<p>Fast forward six years, and the boy is writing programs on a school computer. Couple years later he’s making model rockets and planes.</p>\n<p>Fast forward another six years, and the boy is sitting with Bill Gates, being one of the eight national winners in a competition.</p>\n<p>He goes on to launch India&#8217;s first electronic magazine, a web solutions business, local language versions of Linux and OpenOffice, a content management system, few books and a string of businesses that have made millions of dollars.</p>\n<p>And he fondly remembers meeting Matt Mullenweg and Chris Lema at WordCamp San Francisco in 2014. His web agency business had gone bust around 2011, and his WordPress plugins business was picking up. Those meetings strengthened his conviction for WordPress and he doubled down on his plugins. Today his team takes care of 200,000+ active users across two dozen of their plugins – both free and premium.</p>\n<p>That small town boy is me.</p>\n<h3>Who I Am</h3>\n<p>My name is Nirav Mehta. I live in Mumbai, and I&#8217;m super passionate content, commerce and contribution. I run three businesses – two in WordPress (<a href=\"https://www.storeapps.org/\">StoreApps.org</a> – where we solve problems for growing WooCommerce stores,<a href=\"http://icegram.com/\"> Icegram.com</a> – where creators find tools to inspire, engage and convert their audiences), and one SaaS business (<a href=\"https://www.putler.com/\">Putler</a> – meaningful analytics for e-commerce).</p>\n<p>I have done some or other form of writing for over two decades. I&#8217;ve done open source for my whole life and used Drupal and Joomla earlier. As a matter of fact, I created a content management system using PHP back in 2000. But I liked the simplicity and community of WordPress. So when I wanted to start two blogs in 2006, I jumped on to WordPress.</p>\n<blockquote><p>And it was amazing. WordPress simplified a whole lot of things, allowed customization and had extensive plugin ecosystem.</p></blockquote>\n<p>I continued blogging and tinkering with WordPress. WordPress kept growing, and when I was looking for &#8220;the next big thing&#8221; around 2011, I figured I can bet on e-commerce with WordPress.</p>\n<p>There was no WooCommerce back then, and we built an extension to WPeC – an e-commerce plugin that was popular at that time. Smart Manager – the plugin we built – allowed managing products, orders and customers using an easy spreadsheet like interface. It quickly became popular. When WooCommerce came along, we ported our WPeC plugins to WooCommerce, and also became an official third-party developers with our Smart Coupons plugin. StoreApps – our WooCommerce plugins business continues to be our top business today.</p>\n<p>WordPress has changed my life. For me, WordPress means freedom, self expression and adaptability.</p>\n<h3>Where I Came From</h3>\n<p>I&#8217;m from a small town, I am not an engineer, I didn&#8217;t do an MBA. I don&#8217;t have a godfather. But I&#8217;ve always wanted to contribute to a larger community, I&#8217;m a stickler for elegant solutions that solve practical problems and I&#8217;m ready to delay gratification. I believe grit and humility are essential. I&#8217;m a curious lifetime learner. I&#8217;ve realized that money is important, it&#8217;s a great resource. But I&#8217;ve also learnt that the joy of seeing someone benefit from your work far surpasses anything else.</p>\n<p>WordPress fits perfectly here. It gives me a platform to reach out to the whole world. It&#8217;s built on community and greater good. There are lots of opportunities and entry barriers are low.</p>\n<h3>What WordPress Has Given Me</h3>\n<p>WordPress allowed me to exercise my creative skills and easily build solutions on top of the core platform. I am not a great marketer, and WordPress and WooCommerce enabled me to build strong businesses by tapping into their distribution prowess. WordPress was easy to learn, so when we found people with the right mindset, they became productive soon.</p>\n<p>Icegram – our onsite and email marketing plugins business – is a clear example of the power of WordPress. Icegram Engage shows popups, header-footer bars and many other types of visitor engagement and call to action messages. Maintaining such a solution on a large scale would require huge server costs and sys-op efforts. We could avoid all that because we could keep most of the functionality in WordPress. It also provided a cleaner and much better user experience than typical SaaS solutions. When I wrote the initial code for it, I wanted to keep the frontend logic in JavaScript – and of course, WordPress allowed doing that. Eventually, it was also easy to migrate to a hybrid model – where complex functions are performed on our servers and rest remains in WordPress.</p>\n<blockquote><p>WordPress has given me great friends. I&#8217;ve met so many talented people online and at WordCamps! Me and my WordPress friends have done amazing adventures together! And the circle keeps expanding. You will find amazing people in WordPress!</p></blockquote>\n<p>When you look at my life, and if important events were plotted as a chart, you won&#8217;t see a straight curve. It&#8217;s a bundle of long lull-times with gyrating ups and downs in between. I studied behavior patterns, data modelling and visualization for Putler – our multi-system analytics solution for online businesses. I also get to see numbers from many other businesses. I wanted to analyze how businesses work. What causes success.</p>\n<p>And one big, common takeaway &#8211; in both business and life &#8211; is that results are non-linear. There is no single cause to any result.</p>\n<h3>Back To You</h3>\n<p>It all starts simple. What you do today, is shaped by something you did earlier, and will shape something else you&#8217;ll do in the future.</p>\n<p>Every little act of courage, every little getting out of your comfort zone, every new thing you learn, every setback, every little success&#8230; It all keeps building who you are.</p>\n<p>You see, life stacks up!</p>\n<p>Do not despair, do not lose faith. Series of actions produce a result, and you have the ability to act.</p>\n<p>So stay on!</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Life Stacks Up &#8211;  From A Small Town Boy To A Geek Entrepreneur\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Life%20Stacks%20Up%20%2D%20%20From%20A%20Small%20Town%20Boy%20To%20A%20Geek%20Entrepreneur&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Flife-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Life Stacks Up &#8211;  From A Small Town Boy To A Geek Entrepreneur\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Flife-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Flife-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur%2F&title=Life+Stacks+Up+%26%238211%3B++From+A+Small+Town+Boy+To+A+Geek+Entrepreneur\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Life Stacks Up &#8211;  From A Small Town Boy To A Geek Entrepreneur\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/life-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur/&media=https://heropress.com/wp-content/uploads/2019/09/091719-min-150x150.jpg&description=Life Stacks Up -  From A Small Town Boy To A Geek Entrepreneur\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Life Stacks Up &#8211;  From A Small Town Boy To A Geek Entrepreneur\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/life-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur/\" title=\"Life Stacks Up &#8211;  From A Small Town Boy To A Geek Entrepreneur\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/life-stacks-up-from-a-small-town-boy-to-a-geek-entrepreneur/\">Life Stacks Up &#8211;  From A Small Town Boy To A Geek Entrepreneur</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Sep 2019 03:00:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Nirav Mehta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: GPL Author Richard Stallman Resigns from Free Software Foundation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=93898\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/gpl-author-richard-stallman-resigns-from-free-software-foundation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8749:\"<p><a href=\"https://stallman.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Richard Stallman</a>, free software movement activist and originator of the &#8220;copyleft&#8221; concept, has <a href=\"https://www.fsf.org/news/richard-m-stallman-resigns\" rel=\"noopener noreferrer\" target=\"_blank\">resigned from his position as director of the board and president of the Free Software Foundation (FSF)</a>, which he established in 1985. This resignation comes on the heels of his resignation from MIT’s Computer Science and Artificial Intelligence Lab (CSAIL) after remarks he made regarding a 17-year old victim of sex trafficker Jeffrey Epstein, characterizing her as seeming “entirely willing.”</p>\n<p>Stallman <a href=\"https://www.stallman.org/archives/2019-jul-oct.html#14_September_2019_(Statements_about_Epstein)\" rel=\"noopener noreferrer\" target=\"_blank\">blamed media coverage</a> for misinterpreting his comments as a defense of Epstein two days before announcing his <a href=\"https://www.stallman.org/archives/2019-jul-oct.html#16_September_2019_(Resignation)\" rel=\"noopener noreferrer\" target=\"_blank\">resignation from MIT</a> on his personal blog:</p>\n<blockquote><p>To the MIT community, I am resigning effective immediately from my position in CSAIL at MIT. I am doing this due to pressure on MIT and me over a series of misunderstandings and mischaracterizations.</p></blockquote>\n<p>The remarks in question were sent on a department-wide CSAIL mailing list in response to an MIT student email calling for a protest against Jeffrey Epstein’s donation to the school. Selam Jie Gano, the MIT graduate who exposed Stallman&#8217;s comments in a <a href=\"https://medium.com/@selamie/remove-richard-stallman-fec6ec210794\" rel=\"noopener noreferrer\" target=\"_blank\">post</a> on Medium, also leaked the full thread to <a href=\"https://www.vice.com/en_us/article/9ke3ke/famed-computer-scientist-richard-stallman-described-epstein-victims-as-entirely-willing\" rel=\"noopener noreferrer\" target=\"_blank\">Vice</a>.</p>\n<p>In the email thread, which was also circulated to undergraduate students, Stallman became pedantic about the definition of assault and the use of the term &#8216;rape&#8217; after a student pointed out the laws of the location and the victim&#8217;s age:</p>\n<blockquote><p>I think it is morally absurd to define “rape” in a way that depends on minor details such as which country it was in or whether the victim was 18 years old or 17.</p></blockquote>\n<p>These comments caused media organizations to dig up old posts from Stallman&#8217;s blog where he <a href=\"https://stallman.org/archives/2012-jul-oct.html#15_September_2012_(Censorship_of_child_pornography)\" rel=\"noopener noreferrer\" target=\"_blank\">demands an end to the censorship of &#8220;child pornography&#8221;</a> and <a href=\"https://stallman.org/archives/2006-may-aug.html?fbclid=IwAR09M66FT8o8cYpAZCkW07KCWwNtXWJgvAz02H5K6_iwrGyWIhY24OuJ5Js#05%20June%202006%20(Dutch%20paedophiles%20form%20political%20party)\" rel=\"noopener noreferrer\" target=\"_blank\">says</a> he is &#8220;skeptical of the claim that voluntarily pedophilia harms children.&#8221;</p>\n<p>Why Stallman felt it necessary to lend his controversial views to public comments on rape, assault, and child sex trafficking on a public mailing list is a mystery, but he has a long history of being outspoken when it comes to politics and civil liberties.</p>\n<p>This particular incident seemed to be the straw that broke the camel&#8217;s back, unleashing a flood of outrage from the the free software and broader tech communities who demanded Stallman&#8217;s removal from the FSF. Critics cited two decades of behaviors and statements that many have found to be disturbing and offensive. The Geek Feminism Wiki maintains a <a href=\"https://geekfeminism.wikia.org/wiki/Richard_Stallman\" rel=\"noopener noreferrer\" target=\"_blank\">catalog</a> that includes some of these references.</p>\n<p>&#8220;The free software community looks the other way while they build their empires on licenses that sustain Stallman&#8217;s power,&#8221; Software engineer  and founder of RailsBridge Sarah Mei <a href=\"https://twitter.com/sarahmei/status/1172283772428906496\" rel=\"noopener noreferrer\" target=\"_blank\">said</a> in a Tweetstorm calling on the FSF to remove Stallman from his positions of influence.</p>\n<p>&#8220;Your refusal to part ways with him &#8211; despite well-known incidents that have pushed women and others out of free software for decades &#8211; might have been ok 10 years ago. Maybe even two years ago. It&#8217;s not ok now.&#8221;</p>\n<p>The Software Freedom Conservancy also issued a <a href=\"https://sfconservancy.org/news/2019/sep/16/rms-does-not-speak-for-us/\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> calling for Stallman&#8217;s removal, titled &#8220;Richard Stallman Does Not and Cannot Speak for the Free Software Movement:&#8221;</p>\n<blockquote><p>When considered with other reprehensible comments he has published over the years, these incidents form a pattern of behavior that is incompatible with the goals of the free software movement. We call for Stallman to step down from positions of leadership in our movement.</p>\n<p>We reject any association with an individual whose words and actions subvert these goals. We look forward to seeing the FSF&#8217;s action in this matter and want to underscore that allowing Stallman to continue to hold a leadership position would be an unacceptable compromise. Most importantly, we cannot support anyone, directly or indirectly, who condones the endangerment of vulnerable people by rationalizing any part of predator behavior.</p></blockquote>\n<p>In a <a href=\"https://twitter.com/sarahmei/status/817378684638068736\" rel=\"noopener noreferrer\" target=\"_blank\">2017 Twitter thread</a>, Mei shared some context on her perspective of how Stallman&#8217;s influence has had a ripple effect of damage throughout the free software and open source communities:</p>\n<blockquote><p>In the 90s, Richard Stallman&#8217;s attitude towards women alienated me (and many others) from any interest in or support for &#8220;free software.&#8221; Viewing software through the Richard Stallman/GNU/&#8221;free as in freedom&#8221; lens would have run our industry into the ground. But it was the only alternative to proprietary software for ~20 years. So lots of folks worked on it despite finding Stallman problematic. This was the period when women largely declined to be part of computing, despite having pretty reasonable representation through the 80s.</p>\n<p>In the early 2000s, &#8220;open source&#8221; was a breath of fresh air. All of the usefulness! None of the built-in arrogance, privilege, or misogyny! But just because it wasn&#8217;t built in doesn&#8217;t mean it disappeared. As folks converted, the behaviors normalized by Stallman and others followed. Our drive now for diversity/inclusion wasn&#8217;t even conceivable until we discarded GNU, Stallman, and &#8220;free software&#8221; in favor of &#8220;open source.&#8221; It&#8217;s not an accident that the communities who still, today, embrace that outdated philosophy are the least diverse and the most hostile.</p></blockquote>\n<p>Stallman is the author of the GPL, which he wrote with the help of lawyers. For the most part, the free software community is able to objectively separate the license from the man who conceived it. The FSF&#8217;s sister organization in Europe <a href=\"https://fsfe.org/news/2019/news-20190917-01.html\" rel=\"noopener noreferrer\" target=\"_blank\">welcomed Stallman&#8217;s resignation</a>, echoing the sentiments of many who value his contributions but are unwilling to support his public representation of the organization:</p>\n<blockquote><p>On 16 September, one of our independent sister organizations, the US-based Free Software Foundation (FSF), announced the resignation of Richard M. Stallman as its president. While we recognize Stallman&#8217;s role in founding the Free Software movement, we welcome the decision.</p></blockquote>\n<p>The FSF has the opportunity to redefine itself after the resignation of its founder and supporters are hopeful that the free software movement can find a better way forward without Stallman&#8217;s influence.</p>\n<p>&#8220;I believe in Free Software and have published most of my work open source under LGPL/GPL/AGPL (notably including Cydia, Cycript, WinterBoard, ldid, and now my work on Orchid),&#8221; software engineer Jay Freeman <a href=\"https://twitter.com/saurik/status/1173810527853670402\" rel=\"noopener noreferrer\" target=\"_blank\">said</a>. &#8220;I&#8217;m glad to see Richard Stallman leave, and hope this starts a new era for the Free Software Foundation.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Sep 2019 23:58:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Yoast to Reward Contributors with the Yoast Care Fund\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=93862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/yoast-to-reward-contributors-with-the-yoast-care-fund\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4284:\"<p>Yoast, a company primarily known for its popular Yoast SEO plugin, announced a new program earlier this month called <a href=\"https://yoast.com/yoast-care/\">Yoast Care</a>.  The project aims to reward volunteers in the WordPress community.  &#8220;Care&#8221; stands for &#8220;Community Appreciation REwards.&#8221;</p>\n\n\n\n<p>Thousands of people contribute to WordPress.  Some choose to contribute code.  Others answer dozens of support questions every day in the forums.  Many spend their free time actively running or helping with the various <a href=\"https://make.wordpress.org\">Make WordPress</a> teams.  Many people do it because they love WordPress or have found a home within the community, but not all of them get paid for their work toward the open-source platform.</p>\n\n\n\n<p>Contributing untold hours is often a thankless job.  The many millions of WordPress users will never know about the time and effort these volunteers pour into the project.  They are in the trenches doing the work that keeps WordPress running.  They don&#8217;t wear capes, but they are the unsung heroes of the community.</p>\n\n\n\n<p>&#8220;We visit a lot of WordCamps and know a lot of people. We notice that some people have a hard time making a living from just their WordPress-work,&#8221; said Marieke van de Rakt, CEO of Yoast. &#8220;We wanted to do something for these people. We can&#8217;t hire them all.&#8221;</p>\n\n\n\n<p>Yoast Care will grant $500 to around 50 volunteers each year.  The company has already set aside $25,000 for the first year and has an open application process for nominating contributors.</p>\n\n\n\n<p>&#8220;We&#8217;re aiming for people that do not get paid for their work on WordPress,&#8221; said van de Rakt, founder of Yoast Academy and CEO of Yoast. &#8220;It has to be a person that is active in a Make WordPress team.&#8221;</p>\n\n\n\n<p>Some within the community have noted that Yoast is a for-profit company and that such programs are more about PR.  At the heart of the discussion is whether the fund will obscure the longstanding issue of how to properly fund contributors to open-source projects ($500 only goes so far).  Others have pointed out that the program is a step in the right direction and could push other companies to follow suit.</p>\n\n\n\n<p>The fund could help those who need it most.  It may help a volunteer replace their worn-out laptop, cover a freelancer during a low-income month, or boost someone in need of cash flow for their new WordPress project.</p>\n\n\n\n<p>The application process is open for anyone to fill out, but applicants can&#8217;t throw their own names into the hat.  The form for applying also asks for up to 3 references to confirm the nominee&#8217;s work. The team has already received many applications.</p>\n\n\n\n<p>Taco Verdonscho is leading the Yoast Care project for the company&#8217;s community team.  Such a program is no small task to run, and the rewards will be spread out through the year.  </p>\n\n\n\n<p>&#8220;It is a lot of work,&#8221; said van de Rakt.  &#8220;They&#8217;ve really thought it through (what the demands are), so I think it&#8217;s rather easy to decide whether or not the application can be rewarded. But, still after that, we need to do an interview and make it happen financially. So there are a lot of people involved.&#8221;</p>\n\n\n\n<p>Outside of a cash reward, Yoast will feature winners in a blog post that highlights his or her contributions to WordPress.</p>\n\n\n\n<p>Yoast is not new to community outreach and funding those in need.  Last year, the team <a href=\"https://wptavern.com/yoast-launches-fund-to-increase-speaker-diversity-at-tech-conferences\">launched the Yoast Diversity Fund</a>.  The program was created to help minorities and other underrepresented groups afford to speak at conferences.  It covers travel, accommodations, childcare, and other costs.  The Diversity Fund is still <a href=\"https://yoast.com/yoast-diversity-fund/apply/\">accepting applications</a>.</p>\n\n\n\n<p>Most within the inner WordPress community know at least one or two people who deserve some appreciation for all the work they do.  If you know someone who fits this description, you can nominate them via the <a href=\"https://yoast.com/community/yoast-care-fund/\">Yoast Care application page</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Sep 2019 17:51:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"BuddyPress: BuddyPress 5.0.0 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=307797\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://buddypress.org/2019/09/buddypress-5-0-0-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2517:\"<p>Hello!</p>\n\n\n\n<p>The first release candidate for BuddyPress 5.0.0 is now available for a last round of testing!</p>\n\n\n\n<p>This is an important milestone as we progress toward the BuddyPress 5.0.0 final release date. &#8220;Release Candidate&#8221; means that we think the new version is ready for release, but with more than 200,000 active installs, hundreds of BuddyPress plugins and Thousands of WordPress themes, it’s possible something was missed. BuddPress 5.0.0 is&nbsp;scheduled to be released&nbsp;on&nbsp;<strong>Monday, September 30</strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.0.0 yet, <strong>now is the time!</strong> </p>\n\n\n\n<div class=\"wp-block-button aligncenter is-style-squared\"><a class=\"wp-block-button__link has-background\" href=\"https://downloads.wordpress.org/plugin/buddypress.5.0.0-RC1.zip\">Download and test the 5.0.0-RC1</a></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p><em>PS: as usual you alternatively get a copy via our Subversion repository.</em></p>\n\n\n\n<p>A detailed changelog will be part of our official release note, but&nbsp;you can get a quick overview by reading the post about the&nbsp;<a href=\"https://buddypress.org/2019/08/buddypress-5-0-0-beta1/\">5.0.0 Beta1</a>&nbsp;release.</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://plugins.svn.wordpress.org/buddypress/assets/icon.svg\" alt=\"\" width=\"33\" height=\"33\" /></div>\n\n\n\n<h2>Plugin and Theme Developers </h2>\n\n\n\n<p>Please test your plugins and themes against BuddyPress 5.0.0. If you find compatibility problems, please be sure to post to this specific <a href=\"https://buddypress.org/support/topic/buddypress-5-0-0-release-candidate/\">support topic</a> so we can figure those out before the final release.</p>\n\n\n\n<h2>Polyglots, we need you!</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp-plugins/buddypress/\">Help us translate BuddyPress into many languages!</a>&nbsp;This release also marks the&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#string-freeze\">string freeze</a>&nbsp;point of the 5.0.0 release schedule.</p>\n\n\n\n<p><strong>If you think you&#8217;ve found a bug</strong>, please let us know reporting it on&nbsp;<a href=\"https://buddypress.org/support\">the support forums</a>&nbsp;and/or&nbsp;on&nbsp;<a href=\"https://buddypress.trac.wordpress.org/\">our development tracker</a>.</p>\n\n\n\n<p>Thanks in advance for giving the release candidate a test drive!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Sep 2019 23:15:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 08 Oct 2019 05:51:14 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Tue, 08 Oct 2019 05:45:09 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(810, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1570557005', 'no'),
(811, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1570513805', 'no'),
(812, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1570557005', 'no'),
(813, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://vi.wordpress.org/2019/05/13/wordpress-translation-day-4-in-nha-trang/\'>WordPress Translation Day 4 in Nha Trang</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/gnu-project-maintainers-move-to-oust-richard-stallman-from-leadership\'>WPTavern: GNU Project Maintainers Move to Oust Richard Stallman from Leadership</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/google-chrome-announces-rollout-plan-for-blocking-mixed-content-beginning-january-2020\'>WPTavern: Google Chrome Announces Rollout Plan for Blocking Mixed Content Beginning January 2020</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/u-s-supreme-court-denies-dominos-appeal-to-determine-whether-websites-must-be-accessible\'>WPTavern: U.S. Supreme Court Denies Domino’s Appeal to Determine Whether Websites Must Be Accessible</a></li></ul></div>', 'no'),
(816, 'theme_mods_twentysixteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:17;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570520407;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(821, 'theme_mods_customify', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:22:\"header_builder_version\";s:2:\"v2\";s:28:\"hide_header_builder_switcher\";s:3:\"yes\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570514521;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:8:\"footer-5\";a:0:{}s:8:\"footer-6\";a:0:{}s:14:\"shop-sidebar-1\";a:0:{}s:14:\"shop-sidebar-2\";a:0:{}}}}', 'yes'),
(826, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.3.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1570514005;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(831, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570514005;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.19.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(836, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570525252;s:7:\"checked\";a:8:{s:9:\"customify\";s:5:\"0.3.3\";s:6:\"hestia\";s:5:\"2.5.3\";s:10:\"storefront\";s:5:\"2.5.3\";s:4:\"test\";s:3:\"2.2\";s:11:\"themecustom\";s:3:\"1.4\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(875, '_transient_timeout_wc_tracks_blog_details', '1570600549', 'no'),
(876, '_transient_wc_tracks_blog_details', 'a:4:{s:3:\"url\";s:24:\"http://localhost:82/demo\";s:9:\"blog_lang\";s:2:\"vi\";s:7:\"blog_id\";N;s:14:\"products_count\";s:2:\"18\";}', 'no'),
(880, '_transient_timeout_wc_term_counts', '1573106297', 'no'),
(881, '_transient_wc_term_counts', 'a:8:{i:26;s:1:\"4\";i:15;s:1:\"0\";i:28;s:1:\"5\";i:31;s:1:\"1\";i:32;s:1:\"1\";i:30;s:1:\"2\";i:25;s:1:\"5\";i:33;s:1:\"1\";}', 'no'),
(882, '_transient_timeout_wc_related_114', '1570600693', 'no'),
(883, '_transient_wc_related_114', 'a:1:{s:51:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=114\";a:3:{i:0;s:2:\"15\";i:1;s:2:\"63\";i:2;s:2:\"64\";}}', 'no'),
(886, '_transient_timeout_wc_low_stock_count', '1573106515', 'no'),
(887, '_transient_wc_low_stock_count', '0', 'no'),
(888, '_transient_timeout_wc_outofstock_count', '1573106515', 'no'),
(889, '_transient_wc_outofstock_count', '0', 'no'),
(970, 'theme_mods_themecustom', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:17;}}', 'yes'),
(1041, '_transient_timeout_wc_admin_unsnooze_admin_notes_checked', '1570526842', 'no'),
(1042, '_transient_wc_admin_unsnooze_admin_notes_checked', 'yes', 'no'),
(1045, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(1046, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:12:\"post-trashed\";s:1:\"1\";s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(1050, '_site_transient_timeout_theme_roots', '1570527052', 'no'),
(1051, '_site_transient_theme_roots', 'a:10:{s:6:\"NhomC1\";s:7:\"/themes\";s:9:\"customify\";s:7:\"/themes\";s:6:\"hestia\";s:7:\"/themes\";s:17:\"space-science/css\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:4:\"test\";s:7:\"/themes\";s:11:\"themecustom\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1052, '_transient_timeout__woocommerce_helper_subscriptions', '1570526152', 'no'),
(1053, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x457.png\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 11, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570172117;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(8, 12, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570175780;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(9, 13, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570261752;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(12, 16, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570265404;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(13, 17, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570270202;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(14, 18, '_edit_last', '1'),
(15, 18, '_edit_lock', '1570267276:1'),
(16, 18, 'total_sales', '0'),
(17, 18, '_tax_status', 'taxable'),
(18, 18, '_tax_class', ''),
(19, 18, '_manage_stock', 'no'),
(20, 18, '_backorders', 'no'),
(21, 18, '_sold_individually', 'no'),
(22, 18, '_virtual', 'no'),
(23, 18, '_downloadable', 'no'),
(24, 18, '_download_limit', '-1'),
(25, 18, '_download_expiry', '-1'),
(26, 18, '_stock', NULL),
(27, 18, '_stock_status', 'instock'),
(28, 18, '_wc_average_rating', '0'),
(29, 18, '_wc_review_count', '0'),
(30, 18, '_product_version', '3.7.0'),
(31, 19, '_edit_last', '1'),
(32, 19, 'total_sales', '0'),
(33, 19, '_tax_status', 'taxable'),
(34, 19, '_tax_class', ''),
(35, 19, '_manage_stock', 'no'),
(36, 19, '_backorders', 'no'),
(37, 19, '_sold_individually', 'no'),
(38, 19, '_virtual', 'no'),
(39, 19, '_downloadable', 'no'),
(40, 19, '_download_limit', '-1'),
(41, 19, '_download_expiry', '-1'),
(42, 19, '_stock', NULL),
(43, 19, '_stock_status', 'instock'),
(44, 19, '_wc_average_rating', '0'),
(45, 19, '_wc_review_count', '0'),
(46, 19, '_product_version', '3.7.0'),
(47, 19, '_edit_lock', '1570267299:1'),
(48, 22, '_edit_lock', '1570267376:1'),
(49, 23, '_edit_lock', '1570267400:1'),
(50, 24, '_edit_lock', '1570267488:1'),
(51, 24, '_edit_last', '1'),
(52, 27, '_edit_lock', '1570267666:1'),
(53, 27, '_edit_last', '1'),
(54, 29, '_edit_lock', '1570267681:1'),
(55, 29, '_edit_last', '1'),
(56, 24, '_wp_trash_meta_status', 'draft'),
(57, 24, '_wp_trash_meta_time', '1570267750'),
(58, 24, '_wp_desired_post_slug', ''),
(59, 18, '_wp_trash_meta_status', 'draft'),
(60, 18, '_wp_trash_meta_time', '1570268221'),
(61, 18, '_wp_desired_post_slug', ''),
(62, 19, '_wp_trash_meta_status', 'draft'),
(63, 19, '_wp_trash_meta_time', '1570268227'),
(64, 19, '_wp_desired_post_slug', ''),
(65, 29, '_wp_trash_meta_status', 'publish'),
(66, 29, '_wp_trash_meta_time', '1570268271'),
(67, 29, '_wp_desired_post_slug', 'gioi-thieu'),
(68, 27, '_wp_trash_meta_status', 'publish'),
(69, 27, '_wp_trash_meta_time', '1570268275'),
(70, 27, '_wp_desired_post_slug', 'trang-chu'),
(71, 31, '_edit_lock', '1570285878:1'),
(72, 31, '_edit_last', '1'),
(73, 33, '_edit_lock', '1570268459:1'),
(74, 33, '_edit_last', '1'),
(75, 35, '_edit_lock', '1570268484:1'),
(76, 35, '_edit_last', '1'),
(77, 37, '_edit_lock', '1570268537:1'),
(78, 37, '_edit_last', '1'),
(79, 39, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570288549;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(89, 41, '_edit_lock', '1570285664:1'),
(90, 41, '_wp_page_template', ''),
(91, 43, '_edit_lock', '1570285627:1'),
(92, 44, '_edit_lock', '1570285763:1'),
(93, 41, '_wp_trash_meta_status', 'publish'),
(94, 41, '_wp_trash_meta_time', '1570285939'),
(95, 41, '_wp_desired_post_slug', 'trang-chu'),
(96, 37, '_wp_trash_meta_status', 'publish'),
(97, 37, '_wp_trash_meta_time', '1570285944'),
(98, 37, '_wp_desired_post_slug', 'cua-hang'),
(99, 31, '_wp_page_template', 'template-homepage.php'),
(100, 46, '_edit_lock', '1570285898:1'),
(101, 47, '_edit_lock', '1570285926:1'),
(102, 47, '_wp_page_template', 'template-homepage.php'),
(103, 49, '_edit_lock', '1570285947:1'),
(104, 1, '_wp_trash_meta_status', 'publish'),
(105, 1, '_wp_trash_meta_time', '1570286260'),
(106, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(107, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(108, 35, '_wp_trash_meta_status', 'publish'),
(109, 35, '_wp_trash_meta_time', '1570286388'),
(110, 35, '_wp_desired_post_slug', 'san-pham'),
(111, 47, '_wp_trash_meta_status', 'publish'),
(112, 47, '_wp_trash_meta_time', '1570286392'),
(113, 47, '_wp_desired_post_slug', 'trang-chu-2'),
(114, 44, '_wp_trash_meta_status', 'publish'),
(115, 44, '_wp_trash_meta_time', '1570286414'),
(116, 44, '_wp_desired_post_slug', 'tin-tuc'),
(117, 2, '_wp_trash_meta_status', 'publish'),
(118, 2, '_wp_trash_meta_time', '1570286419'),
(119, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(120, 53, '_edit_lock', '1570286362:1'),
(121, 55, '_edit_lock', '1570286738:1'),
(122, 55, '_wp_trash_meta_status', 'publish'),
(123, 55, '_wp_trash_meta_time', '1570286752'),
(124, 56, '_wp_trash_meta_status', 'publish'),
(125, 56, '_wp_trash_meta_time', '1570286792'),
(127, 57, '_customize_changeset_uuid', '35a20fa9-a6fa-4943-b0ad-4a43a74fd25b'),
(128, 58, '_edit_lock', '1570286846:1'),
(129, 58, '_wp_trash_meta_status', 'publish'),
(130, 58, '_wp_trash_meta_time', '1570286847'),
(131, 60, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570292200;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(132, 57, '_edit_lock', '1570288528:1'),
(133, 57, '_wp_page_template', 'template-homepage.php'),
(136, 62, '_sku', 'woo-vneck-tee'),
(137, 62, '_sale_price_dates_from', ''),
(138, 62, '_sale_price_dates_to', ''),
(139, 62, 'total_sales', '0'),
(140, 62, '_tax_status', 'taxable'),
(141, 62, '_tax_class', ''),
(142, 62, '_manage_stock', 'no'),
(143, 62, '_backorders', 'no'),
(144, 62, '_low_stock_amount', ''),
(145, 62, '_sold_individually', 'no'),
(146, 62, '_weight', ''),
(147, 62, '_length', ''),
(148, 62, '_width', ''),
(149, 62, '_height', ''),
(150, 62, '_upsell_ids', 'a:0:{}'),
(151, 62, '_crosssell_ids', 'a:0:{}'),
(152, 62, '_purchase_note', ''),
(153, 62, '_default_attributes', 'a:0:{}'),
(154, 62, '_virtual', 'no'),
(155, 62, '_downloadable', 'no'),
(156, 62, '_product_image_gallery', '32,33'),
(157, 62, '_download_limit', '0'),
(158, 62, '_download_expiry', '0'),
(159, 62, '_stock', ''),
(160, 62, '_stock_status', 'instock'),
(161, 62, '_wc_average_rating', '0'),
(162, 62, '_wc_rating_count', 'a:0:{}'),
(163, 62, '_wc_review_count', '0'),
(164, 62, '_downloadable_files', 'a:0:{}'),
(165, 62, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(166, 62, '_product_version', '3.5.3'),
(167, 62, '_thumbnail_id', '87'),
(168, 62, '_price', '15'),
(169, 62, '_price', '20'),
(170, 62, '_regular_price', ''),
(171, 62, '_sale_price', ''),
(172, 63, '_sku', 'woo-hoodie'),
(173, 63, '_sale_price_dates_from', ''),
(174, 63, '_sale_price_dates_to', ''),
(175, 63, 'total_sales', '0'),
(176, 63, '_tax_status', 'taxable'),
(177, 63, '_tax_class', ''),
(178, 63, '_manage_stock', 'no'),
(179, 63, '_backorders', 'no'),
(180, 63, '_low_stock_amount', ''),
(181, 63, '_sold_individually', 'no'),
(182, 63, '_weight', ''),
(183, 63, '_length', ''),
(184, 63, '_width', ''),
(185, 63, '_height', ''),
(186, 63, '_upsell_ids', 'a:0:{}'),
(187, 63, '_crosssell_ids', 'a:0:{}'),
(188, 63, '_purchase_note', ''),
(189, 63, '_default_attributes', 'a:0:{}'),
(190, 63, '_virtual', 'no'),
(191, 63, '_downloadable', 'no'),
(192, 63, '_product_image_gallery', '35,36,37'),
(193, 63, '_download_limit', '0'),
(194, 63, '_download_expiry', '0'),
(195, 63, '_stock', ''),
(196, 63, '_stock_status', 'instock'),
(197, 63, '_wc_average_rating', '0'),
(198, 63, '_wc_rating_count', 'a:0:{}'),
(199, 63, '_wc_review_count', '0'),
(200, 63, '_downloadable_files', 'a:0:{}'),
(201, 63, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(202, 63, '_product_version', '3.5.3'),
(203, 63, '_thumbnail_id', '90'),
(204, 63, '_price', '42'),
(205, 63, '_price', '45'),
(206, 63, '_regular_price', ''),
(207, 63, '_sale_price', ''),
(208, 64, '_sku', 'woo-hoodie-with-logo'),
(209, 64, '_regular_price', '45'),
(210, 64, '_sale_price', ''),
(211, 64, '_sale_price_dates_from', ''),
(212, 64, '_sale_price_dates_to', ''),
(213, 64, 'total_sales', '0'),
(214, 64, '_tax_status', 'taxable'),
(215, 64, '_tax_class', ''),
(216, 64, '_manage_stock', 'no'),
(217, 64, '_backorders', 'no'),
(218, 64, '_low_stock_amount', ''),
(219, 64, '_sold_individually', 'no'),
(220, 64, '_weight', ''),
(221, 64, '_length', ''),
(222, 64, '_width', ''),
(223, 64, '_height', ''),
(224, 64, '_upsell_ids', 'a:0:{}'),
(225, 64, '_crosssell_ids', 'a:0:{}'),
(226, 64, '_purchase_note', ''),
(227, 64, '_default_attributes', 'a:0:{}'),
(228, 64, '_virtual', 'no'),
(229, 64, '_downloadable', 'no'),
(230, 64, '_product_image_gallery', ''),
(231, 64, '_download_limit', '0'),
(232, 64, '_download_expiry', '0'),
(233, 64, '_stock', ''),
(234, 64, '_stock_status', 'instock'),
(235, 64, '_wc_average_rating', '0'),
(236, 64, '_wc_rating_count', 'a:0:{}'),
(237, 64, '_wc_review_count', '0'),
(238, 64, '_downloadable_files', 'a:0:{}'),
(239, 64, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(240, 64, '_product_version', '3.5.3'),
(241, 64, '_price', '45'),
(242, 64, '_thumbnail_id', '93'),
(243, 65, '_sku', 'woo-tshirt'),
(244, 65, '_regular_price', '18'),
(245, 65, '_sale_price', ''),
(246, 65, '_sale_price_dates_from', ''),
(247, 65, '_sale_price_dates_to', ''),
(248, 65, 'total_sales', '0'),
(249, 65, '_tax_status', 'taxable'),
(250, 65, '_tax_class', ''),
(251, 65, '_manage_stock', 'no'),
(252, 65, '_backorders', 'no'),
(253, 65, '_low_stock_amount', ''),
(254, 65, '_sold_individually', 'no'),
(255, 65, '_weight', ''),
(256, 65, '_length', ''),
(257, 65, '_width', ''),
(258, 65, '_height', ''),
(259, 65, '_upsell_ids', 'a:0:{}'),
(260, 65, '_crosssell_ids', 'a:0:{}'),
(261, 65, '_purchase_note', ''),
(262, 65, '_default_attributes', 'a:0:{}'),
(263, 65, '_virtual', 'no'),
(264, 65, '_downloadable', 'no'),
(265, 65, '_product_image_gallery', ''),
(266, 65, '_download_limit', '0'),
(267, 65, '_download_expiry', '0'),
(268, 65, '_stock', ''),
(269, 65, '_stock_status', 'instock'),
(270, 65, '_wc_average_rating', '0'),
(271, 65, '_wc_rating_count', 'a:0:{}'),
(272, 65, '_wc_review_count', '0'),
(273, 65, '_downloadable_files', 'a:0:{}'),
(274, 65, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(275, 65, '_product_version', '3.5.3'),
(276, 65, '_price', '18'),
(277, 65, '_thumbnail_id', '94'),
(278, 66, '_sku', 'woo-beanie'),
(279, 66, '_regular_price', '20'),
(280, 66, '_sale_price', '18'),
(281, 66, '_sale_price_dates_from', ''),
(282, 66, '_sale_price_dates_to', ''),
(283, 66, 'total_sales', '0'),
(284, 66, '_tax_status', 'taxable'),
(285, 66, '_tax_class', ''),
(286, 66, '_manage_stock', 'no'),
(287, 66, '_backorders', 'no'),
(288, 66, '_low_stock_amount', ''),
(289, 66, '_sold_individually', 'no'),
(290, 66, '_weight', ''),
(291, 66, '_length', ''),
(292, 66, '_width', ''),
(293, 66, '_height', ''),
(294, 66, '_upsell_ids', 'a:0:{}'),
(295, 66, '_crosssell_ids', 'a:0:{}'),
(296, 66, '_purchase_note', ''),
(297, 66, '_default_attributes', 'a:0:{}'),
(298, 66, '_virtual', 'no'),
(299, 66, '_downloadable', 'no'),
(300, 66, '_product_image_gallery', ''),
(301, 66, '_download_limit', '0'),
(302, 66, '_download_expiry', '0'),
(303, 66, '_stock', ''),
(304, 66, '_stock_status', 'instock'),
(305, 66, '_wc_average_rating', '0'),
(306, 66, '_wc_rating_count', 'a:0:{}'),
(307, 66, '_wc_review_count', '0'),
(308, 66, '_downloadable_files', 'a:0:{}'),
(309, 66, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(310, 66, '_product_version', '3.5.3'),
(311, 66, '_price', '18'),
(312, 66, '_thumbnail_id', '95'),
(313, 67, '_sku', 'woo-belt'),
(314, 67, '_regular_price', '65'),
(315, 67, '_sale_price', '55'),
(316, 67, '_sale_price_dates_from', ''),
(317, 67, '_sale_price_dates_to', ''),
(318, 67, 'total_sales', '0'),
(319, 67, '_tax_status', 'taxable'),
(320, 67, '_tax_class', ''),
(321, 67, '_manage_stock', 'no'),
(322, 67, '_backorders', 'no'),
(323, 67, '_low_stock_amount', ''),
(324, 67, '_sold_individually', 'no'),
(325, 67, '_weight', ''),
(326, 67, '_length', ''),
(327, 67, '_width', ''),
(328, 67, '_height', ''),
(329, 67, '_upsell_ids', 'a:0:{}'),
(330, 67, '_crosssell_ids', 'a:0:{}'),
(331, 67, '_purchase_note', ''),
(332, 67, '_default_attributes', 'a:0:{}'),
(333, 67, '_virtual', 'no'),
(334, 67, '_downloadable', 'no'),
(335, 67, '_product_image_gallery', ''),
(336, 67, '_download_limit', '0'),
(337, 67, '_download_expiry', '0'),
(338, 67, '_stock', ''),
(339, 67, '_stock_status', 'instock'),
(340, 67, '_wc_average_rating', '0'),
(341, 67, '_wc_rating_count', 'a:0:{}'),
(342, 67, '_wc_review_count', '0'),
(343, 67, '_downloadable_files', 'a:0:{}'),
(344, 67, '_product_attributes', 'a:0:{}'),
(345, 67, '_product_version', '3.5.3'),
(346, 67, '_price', '55'),
(347, 67, '_thumbnail_id', '96'),
(348, 68, '_sku', 'woo-cap'),
(349, 68, '_regular_price', '18'),
(350, 68, '_sale_price', '16'),
(351, 68, '_sale_price_dates_from', ''),
(352, 68, '_sale_price_dates_to', ''),
(353, 68, 'total_sales', '0'),
(354, 68, '_tax_status', 'taxable'),
(355, 68, '_tax_class', ''),
(356, 68, '_manage_stock', 'no'),
(357, 68, '_backorders', 'no'),
(358, 68, '_low_stock_amount', ''),
(359, 68, '_sold_individually', 'no'),
(360, 68, '_weight', ''),
(361, 68, '_length', ''),
(362, 68, '_width', ''),
(363, 68, '_height', ''),
(364, 68, '_upsell_ids', 'a:0:{}'),
(365, 68, '_crosssell_ids', 'a:0:{}'),
(366, 68, '_purchase_note', ''),
(367, 68, '_default_attributes', 'a:0:{}'),
(368, 68, '_virtual', 'no'),
(369, 68, '_downloadable', 'no'),
(370, 68, '_product_image_gallery', ''),
(371, 68, '_download_limit', '0'),
(372, 68, '_download_expiry', '0'),
(373, 68, '_stock', ''),
(374, 68, '_stock_status', 'instock'),
(375, 68, '_wc_average_rating', '0'),
(376, 68, '_wc_rating_count', 'a:0:{}'),
(377, 68, '_wc_review_count', '0'),
(378, 68, '_downloadable_files', 'a:0:{}'),
(379, 68, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(380, 68, '_product_version', '3.5.3'),
(381, 68, '_price', '16'),
(382, 68, '_thumbnail_id', '97'),
(383, 69, '_sku', 'woo-sunglasses'),
(384, 69, '_regular_price', '90'),
(385, 69, '_sale_price', ''),
(386, 69, '_sale_price_dates_from', ''),
(387, 69, '_sale_price_dates_to', ''),
(388, 69, 'total_sales', '0'),
(389, 69, '_tax_status', 'taxable'),
(390, 69, '_tax_class', ''),
(391, 69, '_manage_stock', 'no'),
(392, 69, '_backorders', 'no'),
(393, 69, '_low_stock_amount', ''),
(394, 69, '_sold_individually', 'no'),
(395, 69, '_weight', ''),
(396, 69, '_length', ''),
(397, 69, '_width', ''),
(398, 69, '_height', ''),
(399, 69, '_upsell_ids', 'a:0:{}'),
(400, 69, '_crosssell_ids', 'a:0:{}'),
(401, 69, '_purchase_note', ''),
(402, 69, '_default_attributes', 'a:0:{}'),
(403, 69, '_virtual', 'no'),
(404, 69, '_downloadable', 'no'),
(405, 69, '_product_image_gallery', ''),
(406, 69, '_download_limit', '0'),
(407, 69, '_download_expiry', '0'),
(408, 69, '_stock', ''),
(409, 69, '_stock_status', 'instock'),
(410, 69, '_wc_average_rating', '0'),
(411, 69, '_wc_rating_count', 'a:0:{}'),
(412, 69, '_wc_review_count', '0'),
(413, 69, '_downloadable_files', 'a:0:{}'),
(414, 69, '_product_attributes', 'a:0:{}'),
(415, 69, '_product_version', '3.5.3'),
(416, 69, '_price', '90'),
(417, 69, '_thumbnail_id', '98'),
(418, 70, '_sku', 'woo-hoodie-with-pocket'),
(419, 70, '_regular_price', '45'),
(420, 70, '_sale_price', '35'),
(421, 70, '_sale_price_dates_from', ''),
(422, 70, '_sale_price_dates_to', ''),
(423, 70, 'total_sales', '0'),
(424, 70, '_tax_status', 'taxable'),
(425, 70, '_tax_class', ''),
(426, 70, '_manage_stock', 'no'),
(427, 70, '_backorders', 'no'),
(428, 70, '_low_stock_amount', ''),
(429, 70, '_sold_individually', 'no'),
(430, 70, '_weight', ''),
(431, 70, '_length', ''),
(432, 70, '_width', ''),
(433, 70, '_height', ''),
(434, 70, '_upsell_ids', 'a:0:{}'),
(435, 70, '_crosssell_ids', 'a:0:{}'),
(436, 70, '_purchase_note', ''),
(437, 70, '_default_attributes', 'a:0:{}'),
(438, 70, '_virtual', 'no'),
(439, 70, '_downloadable', 'no'),
(440, 70, '_product_image_gallery', ''),
(441, 70, '_download_limit', '0'),
(442, 70, '_download_expiry', '0'),
(443, 70, '_stock', ''),
(444, 70, '_stock_status', 'instock'),
(445, 70, '_wc_average_rating', '0'),
(446, 70, '_wc_rating_count', 'a:0:{}'),
(447, 70, '_wc_review_count', '0'),
(448, 70, '_downloadable_files', 'a:0:{}'),
(449, 70, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(450, 70, '_product_version', '3.5.3'),
(451, 70, '_price', '35'),
(452, 70, '_thumbnail_id', '99'),
(453, 15, '_sku', 'woo-hoodie-with-zipper'),
(454, 15, '_regular_price', '45'),
(455, 15, '_sale_price', ''),
(456, 15, '_sale_price_dates_from', ''),
(457, 15, '_sale_price_dates_to', ''),
(458, 15, 'total_sales', '0'),
(459, 15, '_tax_status', 'taxable'),
(460, 15, '_tax_class', ''),
(461, 15, '_manage_stock', 'no'),
(462, 15, '_backorders', 'no'),
(463, 15, '_low_stock_amount', ''),
(464, 15, '_sold_individually', 'no'),
(465, 15, '_weight', ''),
(466, 15, '_length', ''),
(467, 15, '_width', ''),
(468, 15, '_height', ''),
(469, 15, '_upsell_ids', 'a:0:{}'),
(470, 15, '_crosssell_ids', 'a:0:{}'),
(471, 15, '_purchase_note', ''),
(472, 15, '_default_attributes', 'a:0:{}'),
(473, 15, '_virtual', 'no'),
(474, 15, '_downloadable', 'no'),
(475, 15, '_product_image_gallery', ''),
(476, 15, '_download_limit', '0'),
(477, 15, '_download_expiry', '0'),
(478, 15, '_stock', ''),
(479, 15, '_stock_status', 'instock'),
(480, 15, '_wc_average_rating', '0'),
(481, 15, '_wc_rating_count', 'a:0:{}'),
(482, 15, '_wc_review_count', '0'),
(483, 15, '_downloadable_files', 'a:0:{}'),
(484, 15, '_product_attributes', 'a:0:{}'),
(485, 15, '_product_version', '3.5.3'),
(486, 15, '_price', '45'),
(487, 15, '_thumbnail_id', '100'),
(488, 71, '_sku', 'woo-long-sleeve-tee'),
(489, 71, '_regular_price', '25'),
(490, 71, '_sale_price', ''),
(491, 71, '_sale_price_dates_from', ''),
(492, 71, '_sale_price_dates_to', ''),
(493, 71, 'total_sales', '0'),
(494, 71, '_tax_status', 'taxable'),
(495, 71, '_tax_class', ''),
(496, 71, '_manage_stock', 'no'),
(497, 71, '_backorders', 'no'),
(498, 71, '_low_stock_amount', ''),
(499, 71, '_sold_individually', 'no'),
(500, 71, '_weight', ''),
(501, 71, '_length', ''),
(502, 71, '_width', ''),
(503, 71, '_height', ''),
(504, 71, '_upsell_ids', 'a:0:{}'),
(505, 71, '_crosssell_ids', 'a:0:{}'),
(506, 71, '_purchase_note', ''),
(507, 71, '_default_attributes', 'a:0:{}'),
(508, 71, '_virtual', 'no'),
(509, 71, '_downloadable', 'no'),
(510, 71, '_product_image_gallery', ''),
(511, 71, '_download_limit', '0'),
(512, 71, '_download_expiry', '0'),
(513, 71, '_stock', ''),
(514, 71, '_stock_status', 'instock'),
(515, 71, '_wc_average_rating', '0'),
(516, 71, '_wc_rating_count', 'a:0:{}'),
(517, 71, '_wc_review_count', '0'),
(518, 71, '_downloadable_files', 'a:0:{}'),
(519, 71, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(520, 71, '_product_version', '3.5.3'),
(521, 71, '_price', '25'),
(522, 71, '_thumbnail_id', '101'),
(523, 72, '_sku', 'woo-polo'),
(524, 72, '_regular_price', '20'),
(525, 72, '_sale_price', ''),
(526, 72, '_sale_price_dates_from', ''),
(527, 72, '_sale_price_dates_to', ''),
(528, 72, 'total_sales', '0'),
(529, 72, '_tax_status', 'taxable'),
(530, 72, '_tax_class', ''),
(531, 72, '_manage_stock', 'no'),
(532, 72, '_backorders', 'no'),
(533, 72, '_low_stock_amount', ''),
(534, 72, '_sold_individually', 'no'),
(535, 72, '_weight', ''),
(536, 72, '_length', ''),
(537, 72, '_width', ''),
(538, 72, '_height', ''),
(539, 72, '_upsell_ids', 'a:0:{}'),
(540, 72, '_crosssell_ids', 'a:0:{}'),
(541, 72, '_purchase_note', ''),
(542, 72, '_default_attributes', 'a:0:{}'),
(543, 72, '_virtual', 'no'),
(544, 72, '_downloadable', 'no'),
(545, 72, '_product_image_gallery', ''),
(546, 72, '_download_limit', '0'),
(547, 72, '_download_expiry', '0'),
(548, 72, '_stock', ''),
(549, 72, '_stock_status', 'instock'),
(550, 72, '_wc_average_rating', '0'),
(551, 72, '_wc_rating_count', 'a:0:{}'),
(552, 72, '_wc_review_count', '0'),
(553, 72, '_downloadable_files', 'a:0:{}'),
(554, 72, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(555, 72, '_product_version', '3.5.3'),
(556, 72, '_price', '20'),
(557, 72, '_thumbnail_id', '102'),
(558, 73, '_sku', 'woo-album'),
(559, 73, '_regular_price', '15'),
(560, 73, '_sale_price', ''),
(561, 73, '_sale_price_dates_from', ''),
(562, 73, '_sale_price_dates_to', ''),
(563, 73, 'total_sales', '0'),
(564, 73, '_tax_status', 'taxable'),
(565, 73, '_tax_class', ''),
(566, 73, '_manage_stock', 'no'),
(567, 73, '_backorders', 'no'),
(568, 73, '_low_stock_amount', ''),
(569, 73, '_sold_individually', 'no'),
(570, 73, '_weight', ''),
(571, 73, '_length', ''),
(572, 73, '_width', ''),
(573, 73, '_height', ''),
(574, 73, '_upsell_ids', 'a:0:{}'),
(575, 73, '_crosssell_ids', 'a:0:{}'),
(576, 73, '_purchase_note', ''),
(577, 73, '_default_attributes', 'a:0:{}'),
(578, 73, '_virtual', 'yes'),
(579, 73, '_downloadable', 'yes'),
(580, 73, '_product_image_gallery', ''),
(581, 73, '_download_limit', '1'),
(582, 73, '_download_expiry', '1'),
(583, 73, '_stock', ''),
(584, 73, '_stock_status', 'instock'),
(585, 73, '_wc_average_rating', '0'),
(586, 73, '_wc_rating_count', 'a:0:{}'),
(587, 73, '_wc_review_count', '0'),
(588, 73, '_downloadable_files', 'a:2:{s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";a:3:{s:2:\"id\";s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";a:3:{s:2:\"id\";s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(589, 73, '_product_attributes', 'a:0:{}'),
(590, 73, '_product_version', '3.5.3'),
(591, 73, '_price', '15'),
(592, 73, '_thumbnail_id', '103'),
(593, 74, '_sku', 'woo-single'),
(594, 74, '_regular_price', '3'),
(595, 74, '_sale_price', '2'),
(596, 74, '_sale_price_dates_from', ''),
(597, 74, '_sale_price_dates_to', ''),
(598, 74, 'total_sales', '0'),
(599, 74, '_tax_status', 'taxable'),
(600, 74, '_tax_class', ''),
(601, 74, '_manage_stock', 'no'),
(602, 74, '_backorders', 'no'),
(603, 74, '_low_stock_amount', ''),
(604, 74, '_sold_individually', 'no'),
(605, 74, '_weight', ''),
(606, 74, '_length', ''),
(607, 74, '_width', ''),
(608, 74, '_height', ''),
(609, 74, '_upsell_ids', 'a:0:{}'),
(610, 74, '_crosssell_ids', 'a:0:{}'),
(611, 74, '_purchase_note', ''),
(612, 74, '_default_attributes', 'a:0:{}'),
(613, 74, '_virtual', 'yes'),
(614, 74, '_downloadable', 'yes'),
(615, 74, '_product_image_gallery', ''),
(616, 74, '_download_limit', '1'),
(617, 74, '_download_expiry', '1'),
(618, 74, '_stock', ''),
(619, 74, '_stock_status', 'instock'),
(620, 74, '_wc_average_rating', '0'),
(621, 74, '_wc_rating_count', 'a:0:{}'),
(622, 74, '_wc_review_count', '0'),
(623, 74, '_downloadable_files', 'a:1:{s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";a:3:{s:2:\"id\";s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(624, 74, '_product_attributes', 'a:0:{}'),
(625, 74, '_product_version', '3.5.3'),
(626, 74, '_price', '2'),
(627, 74, '_thumbnail_id', '104'),
(628, 75, '_sku', 'woo-vneck-tee-red'),
(629, 75, '_regular_price', '20'),
(630, 75, '_sale_price', ''),
(631, 75, '_sale_price_dates_from', ''),
(632, 75, '_sale_price_dates_to', ''),
(633, 75, 'total_sales', '0'),
(634, 75, '_tax_status', 'taxable'),
(635, 75, '_tax_class', ''),
(636, 75, '_manage_stock', 'no'),
(637, 75, '_backorders', 'no'),
(638, 75, '_low_stock_amount', ''),
(639, 75, '_sold_individually', 'no'),
(640, 75, '_weight', ''),
(641, 75, '_length', ''),
(642, 75, '_width', ''),
(643, 75, '_height', ''),
(644, 75, '_upsell_ids', 'a:0:{}'),
(645, 75, '_crosssell_ids', 'a:0:{}'),
(646, 75, '_purchase_note', ''),
(647, 75, '_default_attributes', 'a:0:{}'),
(648, 75, '_virtual', 'no'),
(649, 75, '_downloadable', 'no'),
(650, 75, '_product_image_gallery', ''),
(651, 75, '_download_limit', '0'),
(652, 75, '_download_expiry', '0'),
(653, 75, '_stock', ''),
(654, 75, '_stock_status', 'instock'),
(655, 75, '_wc_average_rating', '0'),
(656, 75, '_wc_rating_count', 'a:0:{}'),
(657, 75, '_wc_review_count', '0'),
(658, 75, '_downloadable_files', 'a:0:{}'),
(659, 75, '_product_attributes', 'a:0:{}'),
(660, 75, '_product_version', '3.5.3'),
(661, 75, '_price', '20'),
(662, 75, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(663, 75, '_thumbnail_id', '87'),
(664, 75, 'attribute_pa_color', 'red'),
(665, 75, 'attribute_pa_size', ''),
(666, 76, '_sku', 'woo-vneck-tee-green'),
(667, 76, '_regular_price', '20'),
(668, 76, '_sale_price', ''),
(669, 76, '_sale_price_dates_from', ''),
(670, 76, '_sale_price_dates_to', ''),
(671, 76, 'total_sales', '0'),
(672, 76, '_tax_status', 'taxable'),
(673, 76, '_tax_class', ''),
(674, 76, '_manage_stock', 'no'),
(675, 76, '_backorders', 'no'),
(676, 76, '_low_stock_amount', ''),
(677, 76, '_sold_individually', 'no'),
(678, 76, '_weight', ''),
(679, 76, '_length', ''),
(680, 76, '_width', ''),
(681, 76, '_height', ''),
(682, 76, '_upsell_ids', 'a:0:{}'),
(683, 76, '_crosssell_ids', 'a:0:{}'),
(684, 76, '_purchase_note', ''),
(685, 76, '_default_attributes', 'a:0:{}'),
(686, 76, '_virtual', 'no'),
(687, 76, '_downloadable', 'no'),
(688, 76, '_product_image_gallery', ''),
(689, 76, '_download_limit', '0'),
(690, 76, '_download_expiry', '0'),
(691, 76, '_stock', ''),
(692, 76, '_stock_status', 'instock'),
(693, 76, '_wc_average_rating', '0'),
(694, 76, '_wc_rating_count', 'a:0:{}'),
(695, 76, '_wc_review_count', '0'),
(696, 76, '_downloadable_files', 'a:0:{}'),
(697, 76, '_product_attributes', 'a:0:{}'),
(698, 76, '_product_version', '3.5.3'),
(699, 76, '_price', '20'),
(700, 76, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(701, 76, '_thumbnail_id', '88'),
(702, 76, 'attribute_pa_color', 'green'),
(703, 76, 'attribute_pa_size', ''),
(704, 77, '_sku', 'woo-vneck-tee-blue'),
(705, 77, '_regular_price', '15'),
(706, 77, '_sale_price', ''),
(707, 77, '_sale_price_dates_from', ''),
(708, 77, '_sale_price_dates_to', ''),
(709, 77, 'total_sales', '0'),
(710, 77, '_tax_status', 'taxable'),
(711, 77, '_tax_class', ''),
(712, 77, '_manage_stock', 'no'),
(713, 77, '_backorders', 'no'),
(714, 77, '_low_stock_amount', ''),
(715, 77, '_sold_individually', 'no'),
(716, 77, '_weight', ''),
(717, 77, '_length', ''),
(718, 77, '_width', ''),
(719, 77, '_height', ''),
(720, 77, '_upsell_ids', 'a:0:{}'),
(721, 77, '_crosssell_ids', 'a:0:{}'),
(722, 77, '_purchase_note', ''),
(723, 77, '_default_attributes', 'a:0:{}'),
(724, 77, '_virtual', 'no'),
(725, 77, '_downloadable', 'no'),
(726, 77, '_product_image_gallery', ''),
(727, 77, '_download_limit', '0'),
(728, 77, '_download_expiry', '0'),
(729, 77, '_stock', ''),
(730, 77, '_stock_status', 'instock'),
(731, 77, '_wc_average_rating', '0'),
(732, 77, '_wc_rating_count', 'a:0:{}'),
(733, 77, '_wc_review_count', '0'),
(734, 77, '_downloadable_files', 'a:0:{}'),
(735, 77, '_product_attributes', 'a:0:{}'),
(736, 77, '_product_version', '3.5.3'),
(737, 77, '_price', '15'),
(738, 77, '_wpcom_is_markdown', ''),
(739, 77, '_wp_old_slug', 'import-placeholder-for-78'),
(740, 77, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(741, 77, '_thumbnail_id', '89'),
(742, 77, 'attribute_pa_color', 'blue'),
(743, 77, 'attribute_pa_size', ''),
(744, 78, '_sku', 'woo-hoodie-red'),
(745, 78, '_regular_price', '45'),
(746, 78, '_sale_price', '42'),
(747, 78, '_sale_price_dates_from', ''),
(748, 78, '_sale_price_dates_to', ''),
(749, 78, 'total_sales', '0'),
(750, 78, '_tax_status', 'taxable'),
(751, 78, '_tax_class', ''),
(752, 78, '_manage_stock', 'no'),
(753, 78, '_backorders', 'no'),
(754, 78, '_low_stock_amount', ''),
(755, 78, '_sold_individually', 'no'),
(756, 78, '_weight', ''),
(757, 78, '_length', ''),
(758, 78, '_width', ''),
(759, 78, '_height', ''),
(760, 78, '_upsell_ids', 'a:0:{}'),
(761, 78, '_crosssell_ids', 'a:0:{}'),
(762, 78, '_purchase_note', ''),
(763, 78, '_default_attributes', 'a:0:{}'),
(764, 78, '_virtual', 'no'),
(765, 78, '_downloadable', 'no'),
(766, 78, '_product_image_gallery', ''),
(767, 78, '_download_limit', '0'),
(768, 78, '_download_expiry', '0'),
(769, 78, '_stock', ''),
(770, 78, '_stock_status', 'instock'),
(771, 78, '_wc_average_rating', '0'),
(772, 78, '_wc_rating_count', 'a:0:{}'),
(773, 78, '_wc_review_count', '0'),
(774, 78, '_downloadable_files', 'a:0:{}'),
(775, 78, '_product_attributes', 'a:0:{}'),
(776, 78, '_product_version', '3.5.3'),
(777, 78, '_price', '42'),
(778, 78, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(779, 78, '_thumbnail_id', '90'),
(780, 78, 'attribute_pa_color', 'red'),
(781, 78, 'attribute_logo', 'No'),
(782, 79, '_sku', 'woo-hoodie-green'),
(783, 79, '_regular_price', '45'),
(784, 79, '_sale_price', ''),
(785, 79, '_sale_price_dates_from', ''),
(786, 79, '_sale_price_dates_to', ''),
(787, 79, 'total_sales', '0'),
(788, 79, '_tax_status', 'taxable'),
(789, 79, '_tax_class', ''),
(790, 79, '_manage_stock', 'no'),
(791, 79, '_backorders', 'no'),
(792, 79, '_low_stock_amount', ''),
(793, 79, '_sold_individually', 'no'),
(794, 79, '_weight', ''),
(795, 79, '_length', ''),
(796, 79, '_width', ''),
(797, 79, '_height', ''),
(798, 79, '_upsell_ids', 'a:0:{}'),
(799, 79, '_crosssell_ids', 'a:0:{}'),
(800, 79, '_purchase_note', ''),
(801, 79, '_default_attributes', 'a:0:{}'),
(802, 79, '_virtual', 'no'),
(803, 79, '_downloadable', 'no'),
(804, 79, '_product_image_gallery', ''),
(805, 79, '_download_limit', '0'),
(806, 79, '_download_expiry', '0'),
(807, 79, '_stock', ''),
(808, 79, '_stock_status', 'instock'),
(809, 79, '_wc_average_rating', '0'),
(810, 79, '_wc_rating_count', 'a:0:{}'),
(811, 79, '_wc_review_count', '0'),
(812, 79, '_downloadable_files', 'a:0:{}'),
(813, 79, '_product_attributes', 'a:0:{}'),
(814, 79, '_product_version', '3.5.3'),
(815, 79, '_price', '45'),
(816, 79, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(817, 79, '_thumbnail_id', '92'),
(818, 79, 'attribute_pa_color', 'green'),
(819, 79, 'attribute_logo', 'No'),
(820, 80, '_sku', 'woo-hoodie-blue'),
(821, 80, '_regular_price', '45'),
(822, 80, '_sale_price', ''),
(823, 80, '_sale_price_dates_from', ''),
(824, 80, '_sale_price_dates_to', ''),
(825, 80, 'total_sales', '0'),
(826, 80, '_tax_status', 'taxable'),
(827, 80, '_tax_class', ''),
(828, 80, '_manage_stock', 'no'),
(829, 80, '_backorders', 'no'),
(830, 80, '_low_stock_amount', ''),
(831, 80, '_sold_individually', 'no'),
(832, 80, '_weight', ''),
(833, 80, '_length', ''),
(834, 80, '_width', ''),
(835, 80, '_height', ''),
(836, 80, '_upsell_ids', 'a:0:{}'),
(837, 80, '_crosssell_ids', 'a:0:{}'),
(838, 80, '_purchase_note', ''),
(839, 80, '_default_attributes', 'a:0:{}'),
(840, 80, '_virtual', 'no'),
(841, 80, '_downloadable', 'no'),
(842, 80, '_product_image_gallery', ''),
(843, 80, '_download_limit', '0'),
(844, 80, '_download_expiry', '0'),
(845, 80, '_stock', ''),
(846, 80, '_stock_status', 'instock'),
(847, 80, '_wc_average_rating', '0'),
(848, 80, '_wc_rating_count', 'a:0:{}'),
(849, 80, '_wc_review_count', '0'),
(850, 80, '_downloadable_files', 'a:0:{}'),
(851, 80, '_product_attributes', 'a:0:{}'),
(852, 80, '_product_version', '3.5.3'),
(853, 80, '_price', '45'),
(854, 80, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(855, 80, '_thumbnail_id', '91'),
(856, 80, 'attribute_pa_color', 'blue'),
(857, 80, 'attribute_logo', 'No'),
(858, 81, '_sku', 'Woo-tshirt-logo'),
(859, 81, '_regular_price', '18'),
(860, 81, '_sale_price', ''),
(861, 81, '_sale_price_dates_from', ''),
(862, 81, '_sale_price_dates_to', ''),
(863, 81, 'total_sales', '0'),
(864, 81, '_tax_status', 'taxable'),
(865, 81, '_tax_class', ''),
(866, 81, '_manage_stock', 'no'),
(867, 81, '_backorders', 'no'),
(868, 81, '_low_stock_amount', ''),
(869, 81, '_sold_individually', 'no'),
(870, 81, '_weight', ''),
(871, 81, '_length', ''),
(872, 81, '_width', ''),
(873, 81, '_height', ''),
(874, 81, '_upsell_ids', 'a:0:{}'),
(875, 81, '_crosssell_ids', 'a:0:{}'),
(876, 81, '_purchase_note', ''),
(877, 81, '_default_attributes', 'a:0:{}'),
(878, 81, '_virtual', 'no'),
(879, 81, '_downloadable', 'no'),
(880, 81, '_product_image_gallery', ''),
(881, 81, '_download_limit', '0'),
(882, 81, '_download_expiry', '0'),
(883, 81, '_stock', ''),
(884, 81, '_stock_status', 'instock'),
(885, 81, '_wc_average_rating', '0'),
(886, 81, '_wc_rating_count', 'a:0:{}'),
(887, 81, '_wc_review_count', '0'),
(888, 81, '_downloadable_files', 'a:0:{}'),
(889, 81, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(890, 81, '_product_version', '3.5.3'),
(891, 81, '_price', '18'),
(892, 81, '_thumbnail_id', '105'),
(893, 82, '_sku', 'Woo-beanie-logo'),
(894, 82, '_regular_price', '20'),
(895, 82, '_sale_price', '18'),
(896, 82, '_sale_price_dates_from', ''),
(897, 82, '_sale_price_dates_to', ''),
(898, 82, 'total_sales', '0'),
(899, 82, '_tax_status', 'taxable'),
(900, 82, '_tax_class', ''),
(901, 82, '_manage_stock', 'no'),
(902, 82, '_backorders', 'no'),
(903, 82, '_low_stock_amount', ''),
(904, 82, '_sold_individually', 'no'),
(905, 82, '_weight', ''),
(906, 82, '_length', ''),
(907, 82, '_width', ''),
(908, 82, '_height', ''),
(909, 82, '_upsell_ids', 'a:0:{}'),
(910, 82, '_crosssell_ids', 'a:0:{}'),
(911, 82, '_purchase_note', ''),
(912, 82, '_default_attributes', 'a:0:{}'),
(913, 82, '_virtual', 'no'),
(914, 82, '_downloadable', 'no'),
(915, 82, '_product_image_gallery', ''),
(916, 82, '_download_limit', '0'),
(917, 82, '_download_expiry', '0'),
(918, 82, '_stock', ''),
(919, 82, '_stock_status', 'instock'),
(920, 82, '_wc_average_rating', '0'),
(921, 82, '_wc_rating_count', 'a:0:{}'),
(922, 82, '_wc_review_count', '0'),
(923, 82, '_downloadable_files', 'a:0:{}'),
(924, 82, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(925, 82, '_product_version', '3.5.3'),
(926, 82, '_price', '18'),
(927, 82, '_thumbnail_id', '106'),
(928, 83, '_sku', 'logo-collection'),
(929, 83, '_sale_price_dates_from', ''),
(930, 83, '_sale_price_dates_to', ''),
(931, 83, 'total_sales', '0'),
(932, 83, '_tax_status', 'taxable'),
(933, 83, '_tax_class', ''),
(934, 83, '_manage_stock', 'no'),
(935, 83, '_backorders', 'no'),
(936, 83, '_low_stock_amount', ''),
(937, 83, '_sold_individually', 'no'),
(938, 83, '_weight', ''),
(939, 83, '_length', ''),
(940, 83, '_width', ''),
(941, 83, '_height', ''),
(942, 83, '_upsell_ids', 'a:0:{}'),
(943, 83, '_crosssell_ids', 'a:0:{}'),
(944, 83, '_purchase_note', ''),
(945, 83, '_default_attributes', 'a:0:{}'),
(946, 83, '_virtual', 'no'),
(947, 83, '_downloadable', 'no'),
(948, 83, '_product_image_gallery', '50,49,37'),
(949, 83, '_download_limit', '0'),
(950, 83, '_download_expiry', '0'),
(951, 83, '_stock', ''),
(952, 83, '_stock_status', 'instock'),
(953, 83, '_wc_average_rating', '0'),
(954, 83, '_wc_rating_count', 'a:0:{}'),
(955, 83, '_wc_review_count', '0'),
(956, 83, '_downloadable_files', 'a:0:{}'),
(957, 83, '_product_attributes', 'a:0:{}'),
(958, 83, '_product_version', '3.5.3'),
(959, 83, '_children', 'a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}'),
(960, 83, '_thumbnail_id', '107'),
(961, 83, '_price', '18'),
(962, 83, '_price', '45'),
(963, 84, '_sku', 'wp-pennant'),
(964, 84, '_regular_price', '11.05'),
(965, 84, '_sale_price', ''),
(966, 84, '_sale_price_dates_from', ''),
(967, 84, '_sale_price_dates_to', ''),
(968, 84, 'total_sales', '0'),
(969, 84, '_tax_status', 'taxable'),
(970, 84, '_tax_class', ''),
(971, 84, '_manage_stock', 'no'),
(972, 84, '_backorders', 'no'),
(973, 84, '_low_stock_amount', ''),
(974, 84, '_sold_individually', 'no'),
(975, 84, '_weight', ''),
(976, 84, '_length', ''),
(977, 84, '_width', ''),
(978, 84, '_height', ''),
(979, 84, '_upsell_ids', 'a:0:{}'),
(980, 84, '_crosssell_ids', 'a:0:{}'),
(981, 84, '_purchase_note', ''),
(982, 84, '_default_attributes', 'a:0:{}'),
(983, 84, '_virtual', 'no'),
(984, 84, '_downloadable', 'no'),
(985, 84, '_product_image_gallery', ''),
(986, 84, '_download_limit', '0'),
(987, 84, '_download_expiry', '0'),
(988, 84, '_stock', ''),
(989, 84, '_stock_status', 'instock'),
(990, 84, '_wc_average_rating', '0'),
(991, 84, '_wc_rating_count', 'a:0:{}'),
(992, 84, '_wc_review_count', '0'),
(993, 84, '_downloadable_files', 'a:0:{}'),
(994, 84, '_product_attributes', 'a:0:{}'),
(995, 84, '_product_version', '3.5.3'),
(996, 84, '_price', '11.05'),
(997, 84, '_thumbnail_id', '108'),
(998, 84, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(999, 84, '_button_text', 'Buy on the WordPress swag store!'),
(1000, 85, '_sku', 'woo-hoodie-blue-logo'),
(1001, 85, '_regular_price', '45'),
(1002, 85, '_sale_price', ''),
(1003, 85, '_sale_price_dates_from', ''),
(1004, 85, '_sale_price_dates_to', ''),
(1005, 85, 'total_sales', '0'),
(1006, 85, '_tax_status', 'taxable'),
(1007, 85, '_tax_class', ''),
(1008, 85, '_manage_stock', 'no'),
(1009, 85, '_backorders', 'no'),
(1010, 85, '_low_stock_amount', ''),
(1011, 85, '_sold_individually', 'no'),
(1012, 85, '_weight', ''),
(1013, 85, '_length', ''),
(1014, 85, '_width', ''),
(1015, 85, '_height', ''),
(1016, 85, '_upsell_ids', 'a:0:{}'),
(1017, 85, '_crosssell_ids', 'a:0:{}'),
(1018, 85, '_purchase_note', ''),
(1019, 85, '_default_attributes', 'a:0:{}'),
(1020, 85, '_virtual', 'no'),
(1021, 85, '_downloadable', 'no'),
(1022, 85, '_product_image_gallery', ''),
(1023, 85, '_download_limit', '0'),
(1024, 85, '_download_expiry', '0'),
(1025, 85, '_stock', ''),
(1026, 85, '_stock_status', 'instock'),
(1027, 85, '_wc_average_rating', '0'),
(1028, 85, '_wc_rating_count', 'a:0:{}'),
(1029, 85, '_wc_review_count', '0'),
(1030, 85, '_downloadable_files', 'a:0:{}'),
(1031, 85, '_product_attributes', 'a:0:{}'),
(1032, 85, '_product_version', '3.5.3'),
(1033, 85, '_price', '45'),
(1034, 85, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1035, 85, '_thumbnail_id', '93'),
(1036, 85, 'attribute_pa_color', 'blue'),
(1037, 85, 'attribute_logo', 'Yes'),
(1040, 62, '_sku', 'woo-vneck-tee'),
(1041, 62, '_sale_price_dates_from', ''),
(1042, 62, '_sale_price_dates_to', ''),
(1043, 62, 'total_sales', '0'),
(1044, 62, '_tax_status', 'taxable'),
(1045, 62, '_tax_class', ''),
(1046, 62, '_manage_stock', 'no'),
(1047, 62, '_backorders', 'no'),
(1048, 62, '_low_stock_amount', ''),
(1049, 62, '_sold_individually', 'no'),
(1050, 62, '_weight', ''),
(1051, 62, '_length', ''),
(1052, 62, '_width', ''),
(1053, 62, '_height', ''),
(1054, 62, '_upsell_ids', 'a:0:{}'),
(1055, 62, '_crosssell_ids', 'a:0:{}'),
(1056, 62, '_purchase_note', ''),
(1057, 62, '_default_attributes', 'a:0:{}'),
(1058, 62, '_virtual', 'no'),
(1059, 62, '_downloadable', 'no'),
(1060, 62, '_product_image_gallery', '32,33'),
(1061, 62, '_download_limit', '0'),
(1062, 62, '_download_expiry', '0'),
(1063, 62, '_stock', ''),
(1064, 62, '_stock_status', 'instock'),
(1065, 62, '_wc_average_rating', '0'),
(1066, 62, '_wc_rating_count', 'a:0:{}'),
(1067, 62, '_wc_review_count', '0'),
(1068, 62, '_downloadable_files', 'a:0:{}'),
(1069, 62, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1070, 62, '_product_version', '3.5.3'),
(1071, 62, '_thumbnail_id', '87'),
(1072, 62, '_price', '15'),
(1073, 62, '_price', '20'),
(1074, 62, '_regular_price', ''),
(1075, 62, '_sale_price', ''),
(1076, 63, '_sku', 'woo-hoodie'),
(1077, 63, '_sale_price_dates_from', ''),
(1078, 63, '_sale_price_dates_to', ''),
(1079, 63, 'total_sales', '0'),
(1080, 63, '_tax_status', 'taxable'),
(1081, 63, '_tax_class', ''),
(1082, 63, '_manage_stock', 'no'),
(1083, 63, '_backorders', 'no'),
(1084, 63, '_low_stock_amount', ''),
(1085, 63, '_sold_individually', 'no'),
(1086, 63, '_weight', ''),
(1087, 63, '_length', ''),
(1088, 63, '_width', ''),
(1089, 63, '_height', ''),
(1090, 63, '_upsell_ids', 'a:0:{}'),
(1091, 63, '_crosssell_ids', 'a:0:{}'),
(1092, 63, '_purchase_note', ''),
(1093, 63, '_default_attributes', 'a:0:{}'),
(1094, 63, '_virtual', 'no'),
(1095, 63, '_downloadable', 'no'),
(1096, 63, '_product_image_gallery', '35,36,37'),
(1097, 63, '_download_limit', '0'),
(1098, 63, '_download_expiry', '0'),
(1099, 63, '_stock', ''),
(1100, 63, '_stock_status', 'instock'),
(1101, 63, '_wc_average_rating', '0'),
(1102, 63, '_wc_rating_count', 'a:0:{}'),
(1103, 63, '_wc_review_count', '0'),
(1104, 63, '_downloadable_files', 'a:0:{}'),
(1105, 63, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1106, 63, '_product_version', '3.5.3'),
(1107, 63, '_thumbnail_id', '90'),
(1108, 63, '_price', '42'),
(1109, 63, '_price', '45'),
(1110, 63, '_regular_price', ''),
(1111, 63, '_sale_price', ''),
(1112, 64, '_sku', 'woo-hoodie-with-logo'),
(1113, 64, '_regular_price', '45'),
(1114, 64, '_sale_price', ''),
(1115, 64, '_sale_price_dates_from', ''),
(1116, 64, '_sale_price_dates_to', ''),
(1117, 64, 'total_sales', '0'),
(1118, 64, '_tax_status', 'taxable'),
(1119, 64, '_tax_class', ''),
(1120, 64, '_manage_stock', 'no'),
(1121, 64, '_backorders', 'no'),
(1122, 64, '_low_stock_amount', ''),
(1123, 64, '_sold_individually', 'no'),
(1124, 64, '_weight', ''),
(1125, 64, '_length', ''),
(1126, 64, '_width', ''),
(1127, 64, '_height', ''),
(1128, 64, '_upsell_ids', 'a:0:{}'),
(1129, 64, '_crosssell_ids', 'a:0:{}'),
(1130, 64, '_purchase_note', ''),
(1131, 64, '_default_attributes', 'a:0:{}'),
(1132, 64, '_virtual', 'no'),
(1133, 64, '_downloadable', 'no'),
(1134, 64, '_product_image_gallery', ''),
(1135, 64, '_download_limit', '0'),
(1136, 64, '_download_expiry', '0'),
(1137, 64, '_stock', ''),
(1138, 64, '_stock_status', 'instock'),
(1139, 64, '_wc_average_rating', '0'),
(1140, 64, '_wc_rating_count', 'a:0:{}'),
(1141, 64, '_wc_review_count', '0'),
(1142, 64, '_downloadable_files', 'a:0:{}'),
(1143, 64, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1144, 64, '_product_version', '3.5.3'),
(1145, 64, '_price', '45'),
(1146, 64, '_thumbnail_id', '93'),
(1147, 65, '_sku', 'woo-tshirt'),
(1148, 65, '_regular_price', '18'),
(1149, 65, '_sale_price', ''),
(1150, 65, '_sale_price_dates_from', ''),
(1151, 65, '_sale_price_dates_to', ''),
(1152, 65, 'total_sales', '0'),
(1153, 65, '_tax_status', 'taxable'),
(1154, 65, '_tax_class', ''),
(1155, 65, '_manage_stock', 'no'),
(1156, 65, '_backorders', 'no'),
(1157, 65, '_low_stock_amount', ''),
(1158, 65, '_sold_individually', 'no'),
(1159, 65, '_weight', ''),
(1160, 65, '_length', ''),
(1161, 65, '_width', ''),
(1162, 65, '_height', ''),
(1163, 65, '_upsell_ids', 'a:0:{}'),
(1164, 65, '_crosssell_ids', 'a:0:{}'),
(1165, 65, '_purchase_note', ''),
(1166, 65, '_default_attributes', 'a:0:{}'),
(1167, 65, '_virtual', 'no'),
(1168, 65, '_downloadable', 'no');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1169, 65, '_product_image_gallery', ''),
(1170, 65, '_download_limit', '0'),
(1171, 65, '_download_expiry', '0'),
(1172, 65, '_stock', ''),
(1173, 65, '_stock_status', 'instock'),
(1174, 65, '_wc_average_rating', '0'),
(1175, 65, '_wc_rating_count', 'a:0:{}'),
(1176, 65, '_wc_review_count', '0'),
(1177, 65, '_downloadable_files', 'a:0:{}'),
(1178, 65, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1179, 65, '_product_version', '3.5.3'),
(1180, 65, '_price', '18'),
(1181, 65, '_thumbnail_id', '94'),
(1182, 66, '_sku', 'woo-beanie'),
(1183, 66, '_regular_price', '20'),
(1184, 66, '_sale_price', '18'),
(1185, 66, '_sale_price_dates_from', ''),
(1186, 66, '_sale_price_dates_to', ''),
(1187, 66, 'total_sales', '0'),
(1188, 66, '_tax_status', 'taxable'),
(1189, 66, '_tax_class', ''),
(1190, 66, '_manage_stock', 'no'),
(1191, 66, '_backorders', 'no'),
(1192, 66, '_low_stock_amount', ''),
(1193, 66, '_sold_individually', 'no'),
(1194, 66, '_weight', ''),
(1195, 66, '_length', ''),
(1196, 66, '_width', ''),
(1197, 66, '_height', ''),
(1198, 66, '_upsell_ids', 'a:0:{}'),
(1199, 66, '_crosssell_ids', 'a:0:{}'),
(1200, 66, '_purchase_note', ''),
(1201, 66, '_default_attributes', 'a:0:{}'),
(1202, 66, '_virtual', 'no'),
(1203, 66, '_downloadable', 'no'),
(1204, 66, '_product_image_gallery', ''),
(1205, 66, '_download_limit', '0'),
(1206, 66, '_download_expiry', '0'),
(1207, 66, '_stock', ''),
(1208, 66, '_stock_status', 'instock'),
(1209, 66, '_wc_average_rating', '0'),
(1210, 66, '_wc_rating_count', 'a:0:{}'),
(1211, 66, '_wc_review_count', '0'),
(1212, 66, '_downloadable_files', 'a:0:{}'),
(1213, 66, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1214, 66, '_product_version', '3.5.3'),
(1215, 66, '_price', '18'),
(1216, 66, '_thumbnail_id', '95'),
(1217, 67, '_sku', 'woo-belt'),
(1218, 67, '_regular_price', '65'),
(1219, 67, '_sale_price', '55'),
(1220, 67, '_sale_price_dates_from', ''),
(1221, 67, '_sale_price_dates_to', ''),
(1222, 67, 'total_sales', '0'),
(1223, 67, '_tax_status', 'taxable'),
(1224, 67, '_tax_class', ''),
(1225, 67, '_manage_stock', 'no'),
(1226, 67, '_backorders', 'no'),
(1227, 67, '_low_stock_amount', ''),
(1228, 67, '_sold_individually', 'no'),
(1229, 67, '_weight', ''),
(1230, 67, '_length', ''),
(1231, 67, '_width', ''),
(1232, 67, '_height', ''),
(1233, 67, '_upsell_ids', 'a:0:{}'),
(1234, 67, '_crosssell_ids', 'a:0:{}'),
(1235, 67, '_purchase_note', ''),
(1236, 67, '_default_attributes', 'a:0:{}'),
(1237, 67, '_virtual', 'no'),
(1238, 67, '_downloadable', 'no'),
(1239, 67, '_product_image_gallery', ''),
(1240, 67, '_download_limit', '0'),
(1241, 67, '_download_expiry', '0'),
(1242, 67, '_stock', ''),
(1243, 67, '_stock_status', 'instock'),
(1244, 67, '_wc_average_rating', '0'),
(1245, 67, '_wc_rating_count', 'a:0:{}'),
(1246, 67, '_wc_review_count', '0'),
(1247, 67, '_downloadable_files', 'a:0:{}'),
(1248, 67, '_product_attributes', 'a:0:{}'),
(1249, 67, '_product_version', '3.5.3'),
(1250, 67, '_price', '55'),
(1251, 67, '_thumbnail_id', '96'),
(1252, 68, '_sku', 'woo-cap'),
(1253, 68, '_regular_price', '18'),
(1254, 68, '_sale_price', '16'),
(1255, 68, '_sale_price_dates_from', ''),
(1256, 68, '_sale_price_dates_to', ''),
(1257, 68, 'total_sales', '0'),
(1258, 68, '_tax_status', 'taxable'),
(1259, 68, '_tax_class', ''),
(1260, 68, '_manage_stock', 'no'),
(1261, 68, '_backorders', 'no'),
(1262, 68, '_low_stock_amount', ''),
(1263, 68, '_sold_individually', 'no'),
(1264, 68, '_weight', ''),
(1265, 68, '_length', ''),
(1266, 68, '_width', ''),
(1267, 68, '_height', ''),
(1268, 68, '_upsell_ids', 'a:0:{}'),
(1269, 68, '_crosssell_ids', 'a:0:{}'),
(1270, 68, '_purchase_note', ''),
(1271, 68, '_default_attributes', 'a:0:{}'),
(1272, 68, '_virtual', 'no'),
(1273, 68, '_downloadable', 'no'),
(1274, 68, '_product_image_gallery', ''),
(1275, 68, '_download_limit', '0'),
(1276, 68, '_download_expiry', '0'),
(1277, 68, '_stock', ''),
(1278, 68, '_stock_status', 'instock'),
(1279, 68, '_wc_average_rating', '0'),
(1280, 68, '_wc_rating_count', 'a:0:{}'),
(1281, 68, '_wc_review_count', '0'),
(1282, 68, '_downloadable_files', 'a:0:{}'),
(1283, 68, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1284, 68, '_product_version', '3.5.3'),
(1285, 68, '_price', '16'),
(1286, 68, '_thumbnail_id', '97'),
(1287, 69, '_sku', 'woo-sunglasses'),
(1288, 69, '_regular_price', '90'),
(1289, 69, '_sale_price', ''),
(1290, 69, '_sale_price_dates_from', ''),
(1291, 69, '_sale_price_dates_to', ''),
(1292, 69, 'total_sales', '0'),
(1293, 69, '_tax_status', 'taxable'),
(1294, 69, '_tax_class', ''),
(1295, 69, '_manage_stock', 'no'),
(1296, 69, '_backorders', 'no'),
(1297, 69, '_low_stock_amount', ''),
(1298, 69, '_sold_individually', 'no'),
(1299, 69, '_weight', ''),
(1300, 69, '_length', ''),
(1301, 69, '_width', ''),
(1302, 69, '_height', ''),
(1303, 69, '_upsell_ids', 'a:0:{}'),
(1304, 69, '_crosssell_ids', 'a:0:{}'),
(1305, 69, '_purchase_note', ''),
(1306, 69, '_default_attributes', 'a:0:{}'),
(1307, 69, '_virtual', 'no'),
(1308, 69, '_downloadable', 'no'),
(1309, 69, '_product_image_gallery', ''),
(1310, 69, '_download_limit', '0'),
(1311, 69, '_download_expiry', '0'),
(1312, 69, '_stock', ''),
(1313, 69, '_stock_status', 'instock'),
(1314, 69, '_wc_average_rating', '0'),
(1315, 69, '_wc_rating_count', 'a:0:{}'),
(1316, 69, '_wc_review_count', '0'),
(1317, 69, '_downloadable_files', 'a:0:{}'),
(1318, 69, '_product_attributes', 'a:0:{}'),
(1319, 69, '_product_version', '3.5.3'),
(1320, 69, '_price', '90'),
(1321, 69, '_thumbnail_id', '98'),
(1322, 70, '_sku', 'woo-hoodie-with-pocket'),
(1323, 70, '_regular_price', '45'),
(1324, 70, '_sale_price', '35'),
(1325, 70, '_sale_price_dates_from', ''),
(1326, 70, '_sale_price_dates_to', ''),
(1327, 70, 'total_sales', '0'),
(1328, 70, '_tax_status', 'taxable'),
(1329, 70, '_tax_class', ''),
(1330, 70, '_manage_stock', 'no'),
(1331, 70, '_backorders', 'no'),
(1332, 70, '_low_stock_amount', ''),
(1333, 70, '_sold_individually', 'no'),
(1334, 70, '_weight', ''),
(1335, 70, '_length', ''),
(1336, 70, '_width', ''),
(1337, 70, '_height', ''),
(1338, 70, '_upsell_ids', 'a:0:{}'),
(1339, 70, '_crosssell_ids', 'a:0:{}'),
(1340, 70, '_purchase_note', ''),
(1341, 70, '_default_attributes', 'a:0:{}'),
(1342, 70, '_virtual', 'no'),
(1343, 70, '_downloadable', 'no'),
(1344, 70, '_product_image_gallery', ''),
(1345, 70, '_download_limit', '0'),
(1346, 70, '_download_expiry', '0'),
(1347, 70, '_stock', ''),
(1348, 70, '_stock_status', 'instock'),
(1349, 70, '_wc_average_rating', '0'),
(1350, 70, '_wc_rating_count', 'a:0:{}'),
(1351, 70, '_wc_review_count', '0'),
(1352, 70, '_downloadable_files', 'a:0:{}'),
(1353, 70, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1354, 70, '_product_version', '3.5.3'),
(1355, 70, '_price', '35'),
(1356, 70, '_thumbnail_id', '99'),
(1357, 15, '_sku', 'woo-hoodie-with-zipper'),
(1358, 15, '_regular_price', '45'),
(1359, 15, '_sale_price', ''),
(1360, 15, '_sale_price_dates_from', ''),
(1361, 15, '_sale_price_dates_to', ''),
(1362, 15, 'total_sales', '0'),
(1363, 15, '_tax_status', 'taxable'),
(1364, 15, '_tax_class', ''),
(1365, 15, '_manage_stock', 'no'),
(1366, 15, '_backorders', 'no'),
(1367, 15, '_low_stock_amount', ''),
(1368, 15, '_sold_individually', 'no'),
(1369, 15, '_weight', ''),
(1370, 15, '_length', ''),
(1371, 15, '_width', ''),
(1372, 15, '_height', ''),
(1373, 15, '_upsell_ids', 'a:0:{}'),
(1374, 15, '_crosssell_ids', 'a:0:{}'),
(1375, 15, '_purchase_note', ''),
(1376, 15, '_default_attributes', 'a:0:{}'),
(1377, 15, '_virtual', 'no'),
(1378, 15, '_downloadable', 'no'),
(1379, 15, '_product_image_gallery', ''),
(1380, 15, '_download_limit', '0'),
(1381, 15, '_download_expiry', '0'),
(1382, 15, '_stock', ''),
(1383, 15, '_stock_status', 'instock'),
(1384, 15, '_wc_average_rating', '0'),
(1385, 15, '_wc_rating_count', 'a:0:{}'),
(1386, 15, '_wc_review_count', '0'),
(1387, 15, '_downloadable_files', 'a:0:{}'),
(1388, 15, '_product_attributes', 'a:0:{}'),
(1389, 15, '_product_version', '3.5.3'),
(1390, 15, '_price', '45'),
(1391, 15, '_thumbnail_id', '100'),
(1392, 71, '_sku', 'woo-long-sleeve-tee'),
(1393, 71, '_regular_price', '25'),
(1394, 71, '_sale_price', ''),
(1395, 71, '_sale_price_dates_from', ''),
(1396, 71, '_sale_price_dates_to', ''),
(1397, 71, 'total_sales', '0'),
(1398, 71, '_tax_status', 'taxable'),
(1399, 71, '_tax_class', ''),
(1400, 71, '_manage_stock', 'no'),
(1401, 71, '_backorders', 'no'),
(1402, 71, '_low_stock_amount', ''),
(1403, 71, '_sold_individually', 'no'),
(1404, 71, '_weight', ''),
(1405, 71, '_length', ''),
(1406, 71, '_width', ''),
(1407, 71, '_height', ''),
(1408, 71, '_upsell_ids', 'a:0:{}'),
(1409, 71, '_crosssell_ids', 'a:0:{}'),
(1410, 71, '_purchase_note', ''),
(1411, 71, '_default_attributes', 'a:0:{}'),
(1412, 71, '_virtual', 'no'),
(1413, 71, '_downloadable', 'no'),
(1414, 71, '_product_image_gallery', ''),
(1415, 71, '_download_limit', '0'),
(1416, 71, '_download_expiry', '0'),
(1417, 71, '_stock', ''),
(1418, 71, '_stock_status', 'instock'),
(1419, 71, '_wc_average_rating', '0'),
(1420, 71, '_wc_rating_count', 'a:0:{}'),
(1421, 71, '_wc_review_count', '0'),
(1422, 71, '_downloadable_files', 'a:0:{}'),
(1423, 71, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1424, 71, '_product_version', '3.5.3'),
(1425, 71, '_price', '25'),
(1426, 71, '_thumbnail_id', '101'),
(1427, 72, '_sku', 'woo-polo'),
(1428, 72, '_regular_price', '20'),
(1429, 72, '_sale_price', ''),
(1430, 72, '_sale_price_dates_from', ''),
(1431, 72, '_sale_price_dates_to', ''),
(1432, 72, 'total_sales', '0'),
(1433, 72, '_tax_status', 'taxable'),
(1434, 72, '_tax_class', ''),
(1435, 72, '_manage_stock', 'no'),
(1436, 72, '_backorders', 'no'),
(1437, 72, '_low_stock_amount', ''),
(1438, 72, '_sold_individually', 'no'),
(1439, 72, '_weight', ''),
(1440, 72, '_length', ''),
(1441, 72, '_width', ''),
(1442, 72, '_height', ''),
(1443, 72, '_upsell_ids', 'a:0:{}'),
(1444, 72, '_crosssell_ids', 'a:0:{}'),
(1445, 72, '_purchase_note', ''),
(1446, 72, '_default_attributes', 'a:0:{}'),
(1447, 72, '_virtual', 'no'),
(1448, 72, '_downloadable', 'no'),
(1449, 72, '_product_image_gallery', ''),
(1450, 72, '_download_limit', '0'),
(1451, 72, '_download_expiry', '0'),
(1452, 72, '_stock', ''),
(1453, 72, '_stock_status', 'instock'),
(1454, 72, '_wc_average_rating', '0'),
(1455, 72, '_wc_rating_count', 'a:0:{}'),
(1456, 72, '_wc_review_count', '0'),
(1457, 72, '_downloadable_files', 'a:0:{}'),
(1458, 72, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1459, 72, '_product_version', '3.5.3'),
(1460, 72, '_price', '20'),
(1461, 72, '_thumbnail_id', '102'),
(1462, 73, '_sku', 'woo-album'),
(1463, 73, '_regular_price', '15'),
(1464, 73, '_sale_price', ''),
(1465, 73, '_sale_price_dates_from', ''),
(1466, 73, '_sale_price_dates_to', ''),
(1467, 73, 'total_sales', '0'),
(1468, 73, '_tax_status', 'taxable'),
(1469, 73, '_tax_class', ''),
(1470, 73, '_manage_stock', 'no'),
(1471, 73, '_backorders', 'no'),
(1472, 73, '_low_stock_amount', ''),
(1473, 73, '_sold_individually', 'no'),
(1474, 73, '_weight', ''),
(1475, 73, '_length', ''),
(1476, 73, '_width', ''),
(1477, 73, '_height', ''),
(1478, 73, '_upsell_ids', 'a:0:{}'),
(1479, 73, '_crosssell_ids', 'a:0:{}'),
(1480, 73, '_purchase_note', ''),
(1481, 73, '_default_attributes', 'a:0:{}'),
(1482, 73, '_virtual', 'yes'),
(1483, 73, '_downloadable', 'yes'),
(1484, 73, '_product_image_gallery', ''),
(1485, 73, '_download_limit', '1'),
(1486, 73, '_download_expiry', '1'),
(1487, 73, '_stock', ''),
(1488, 73, '_stock_status', 'instock'),
(1489, 73, '_wc_average_rating', '0'),
(1490, 73, '_wc_rating_count', 'a:0:{}'),
(1491, 73, '_wc_review_count', '0'),
(1492, 73, '_downloadable_files', 'a:2:{s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";a:3:{s:2:\"id\";s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";a:3:{s:2:\"id\";s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(1493, 73, '_product_attributes', 'a:0:{}'),
(1494, 73, '_product_version', '3.5.3'),
(1495, 73, '_price', '15'),
(1496, 73, '_thumbnail_id', '103'),
(1497, 74, '_sku', 'woo-single'),
(1498, 74, '_regular_price', '3'),
(1499, 74, '_sale_price', '2'),
(1500, 74, '_sale_price_dates_from', ''),
(1501, 74, '_sale_price_dates_to', ''),
(1502, 74, 'total_sales', '0'),
(1503, 74, '_tax_status', 'taxable'),
(1504, 74, '_tax_class', ''),
(1505, 74, '_manage_stock', 'no'),
(1506, 74, '_backorders', 'no'),
(1507, 74, '_low_stock_amount', ''),
(1508, 74, '_sold_individually', 'no'),
(1509, 74, '_weight', ''),
(1510, 74, '_length', ''),
(1511, 74, '_width', ''),
(1512, 74, '_height', ''),
(1513, 74, '_upsell_ids', 'a:0:{}'),
(1514, 74, '_crosssell_ids', 'a:0:{}'),
(1515, 74, '_purchase_note', ''),
(1516, 74, '_default_attributes', 'a:0:{}'),
(1517, 74, '_virtual', 'yes'),
(1518, 74, '_downloadable', 'yes'),
(1519, 74, '_product_image_gallery', ''),
(1520, 74, '_download_limit', '1'),
(1521, 74, '_download_expiry', '1'),
(1522, 74, '_stock', ''),
(1523, 74, '_stock_status', 'instock'),
(1524, 74, '_wc_average_rating', '0'),
(1525, 74, '_wc_rating_count', 'a:0:{}'),
(1526, 74, '_wc_review_count', '0'),
(1527, 74, '_downloadable_files', 'a:1:{s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";a:3:{s:2:\"id\";s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(1528, 74, '_product_attributes', 'a:0:{}'),
(1529, 74, '_product_version', '3.5.3'),
(1530, 74, '_price', '2'),
(1531, 74, '_thumbnail_id', '104'),
(1532, 75, '_sku', 'woo-vneck-tee-red'),
(1533, 75, '_regular_price', '20'),
(1534, 75, '_sale_price', ''),
(1535, 75, '_sale_price_dates_from', ''),
(1536, 75, '_sale_price_dates_to', ''),
(1537, 75, 'total_sales', '0'),
(1538, 75, '_tax_status', 'taxable'),
(1539, 75, '_tax_class', ''),
(1540, 75, '_manage_stock', 'no'),
(1541, 75, '_backorders', 'no'),
(1542, 75, '_low_stock_amount', ''),
(1543, 75, '_sold_individually', 'no'),
(1544, 75, '_weight', ''),
(1545, 75, '_length', ''),
(1546, 75, '_width', ''),
(1547, 75, '_height', ''),
(1548, 75, '_upsell_ids', 'a:0:{}'),
(1549, 75, '_crosssell_ids', 'a:0:{}'),
(1550, 75, '_purchase_note', ''),
(1551, 75, '_default_attributes', 'a:0:{}'),
(1552, 75, '_virtual', 'no'),
(1553, 75, '_downloadable', 'no'),
(1554, 75, '_product_image_gallery', ''),
(1555, 75, '_download_limit', '0'),
(1556, 75, '_download_expiry', '0'),
(1557, 75, '_stock', ''),
(1558, 75, '_stock_status', 'instock'),
(1559, 75, '_wc_average_rating', '0'),
(1560, 75, '_wc_rating_count', 'a:0:{}'),
(1561, 75, '_wc_review_count', '0'),
(1562, 75, '_downloadable_files', 'a:0:{}'),
(1563, 75, '_product_attributes', 'a:0:{}'),
(1564, 75, '_product_version', '3.5.3'),
(1565, 75, '_price', '20'),
(1566, 75, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1567, 75, '_thumbnail_id', '87'),
(1568, 75, 'attribute_pa_color', 'red'),
(1569, 75, 'attribute_pa_size', ''),
(1570, 76, '_sku', 'woo-vneck-tee-green'),
(1571, 76, '_regular_price', '20'),
(1572, 76, '_sale_price', ''),
(1573, 76, '_sale_price_dates_from', ''),
(1574, 76, '_sale_price_dates_to', ''),
(1575, 76, 'total_sales', '0'),
(1576, 76, '_tax_status', 'taxable'),
(1577, 76, '_tax_class', ''),
(1578, 76, '_manage_stock', 'no'),
(1579, 76, '_backorders', 'no'),
(1580, 76, '_low_stock_amount', ''),
(1581, 76, '_sold_individually', 'no'),
(1582, 76, '_weight', ''),
(1583, 76, '_length', ''),
(1584, 76, '_width', ''),
(1585, 76, '_height', ''),
(1586, 76, '_upsell_ids', 'a:0:{}'),
(1587, 76, '_crosssell_ids', 'a:0:{}'),
(1588, 76, '_purchase_note', ''),
(1589, 76, '_default_attributes', 'a:0:{}'),
(1590, 76, '_virtual', 'no'),
(1591, 76, '_downloadable', 'no'),
(1592, 76, '_product_image_gallery', ''),
(1593, 76, '_download_limit', '0'),
(1594, 76, '_download_expiry', '0'),
(1595, 76, '_stock', ''),
(1596, 76, '_stock_status', 'instock'),
(1597, 76, '_wc_average_rating', '0'),
(1598, 76, '_wc_rating_count', 'a:0:{}'),
(1599, 76, '_wc_review_count', '0'),
(1600, 76, '_downloadable_files', 'a:0:{}'),
(1601, 76, '_product_attributes', 'a:0:{}'),
(1602, 76, '_product_version', '3.5.3'),
(1603, 76, '_price', '20'),
(1604, 76, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1605, 76, '_thumbnail_id', '88'),
(1606, 76, 'attribute_pa_color', 'green'),
(1607, 76, 'attribute_pa_size', ''),
(1608, 77, '_sku', 'woo-vneck-tee-blue'),
(1609, 77, '_regular_price', '15'),
(1610, 77, '_sale_price', ''),
(1611, 77, '_sale_price_dates_from', ''),
(1612, 77, '_sale_price_dates_to', ''),
(1613, 77, 'total_sales', '0'),
(1614, 77, '_tax_status', 'taxable'),
(1615, 77, '_tax_class', ''),
(1616, 77, '_manage_stock', 'no'),
(1617, 77, '_backorders', 'no'),
(1618, 77, '_low_stock_amount', ''),
(1619, 77, '_sold_individually', 'no'),
(1620, 77, '_weight', ''),
(1621, 77, '_length', ''),
(1622, 77, '_width', ''),
(1623, 77, '_height', ''),
(1624, 77, '_upsell_ids', 'a:0:{}'),
(1625, 77, '_crosssell_ids', 'a:0:{}'),
(1626, 77, '_purchase_note', ''),
(1627, 77, '_default_attributes', 'a:0:{}'),
(1628, 77, '_virtual', 'no'),
(1629, 77, '_downloadable', 'no'),
(1630, 77, '_product_image_gallery', ''),
(1631, 77, '_download_limit', '0'),
(1632, 77, '_download_expiry', '0'),
(1633, 77, '_stock', ''),
(1634, 77, '_stock_status', 'instock'),
(1635, 77, '_wc_average_rating', '0'),
(1636, 77, '_wc_rating_count', 'a:0:{}'),
(1637, 77, '_wc_review_count', '0'),
(1638, 77, '_downloadable_files', 'a:0:{}'),
(1639, 77, '_product_attributes', 'a:0:{}'),
(1640, 77, '_product_version', '3.5.3'),
(1641, 77, '_price', '15'),
(1642, 77, '_wpcom_is_markdown', ''),
(1643, 77, '_wp_old_slug', 'import-placeholder-for-78'),
(1644, 77, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1645, 77, '_thumbnail_id', '89'),
(1646, 77, 'attribute_pa_color', 'blue'),
(1647, 77, 'attribute_pa_size', ''),
(1648, 78, '_sku', 'woo-hoodie-red'),
(1649, 78, '_regular_price', '45'),
(1650, 78, '_sale_price', '42'),
(1651, 78, '_sale_price_dates_from', ''),
(1652, 78, '_sale_price_dates_to', ''),
(1653, 78, 'total_sales', '0'),
(1654, 78, '_tax_status', 'taxable'),
(1655, 78, '_tax_class', ''),
(1656, 78, '_manage_stock', 'no'),
(1657, 78, '_backorders', 'no'),
(1658, 78, '_low_stock_amount', ''),
(1659, 78, '_sold_individually', 'no'),
(1660, 78, '_weight', ''),
(1661, 78, '_length', ''),
(1662, 78, '_width', ''),
(1663, 78, '_height', ''),
(1664, 78, '_upsell_ids', 'a:0:{}'),
(1665, 78, '_crosssell_ids', 'a:0:{}'),
(1666, 78, '_purchase_note', ''),
(1667, 78, '_default_attributes', 'a:0:{}'),
(1668, 78, '_virtual', 'no'),
(1669, 78, '_downloadable', 'no'),
(1670, 78, '_product_image_gallery', ''),
(1671, 78, '_download_limit', '0'),
(1672, 78, '_download_expiry', '0'),
(1673, 78, '_stock', ''),
(1674, 78, '_stock_status', 'instock'),
(1675, 78, '_wc_average_rating', '0'),
(1676, 78, '_wc_rating_count', 'a:0:{}'),
(1677, 78, '_wc_review_count', '0'),
(1678, 78, '_downloadable_files', 'a:0:{}'),
(1679, 78, '_product_attributes', 'a:0:{}'),
(1680, 78, '_product_version', '3.5.3'),
(1681, 78, '_price', '42'),
(1682, 78, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1683, 78, '_thumbnail_id', '90'),
(1684, 78, 'attribute_pa_color', 'red'),
(1685, 78, 'attribute_logo', 'No'),
(1686, 79, '_sku', 'woo-hoodie-green'),
(1687, 79, '_regular_price', '45'),
(1688, 79, '_sale_price', ''),
(1689, 79, '_sale_price_dates_from', ''),
(1690, 79, '_sale_price_dates_to', ''),
(1691, 79, 'total_sales', '0'),
(1692, 79, '_tax_status', 'taxable'),
(1693, 79, '_tax_class', ''),
(1694, 79, '_manage_stock', 'no'),
(1695, 79, '_backorders', 'no'),
(1696, 79, '_low_stock_amount', ''),
(1697, 79, '_sold_individually', 'no'),
(1698, 79, '_weight', ''),
(1699, 79, '_length', ''),
(1700, 79, '_width', ''),
(1701, 79, '_height', ''),
(1702, 79, '_upsell_ids', 'a:0:{}'),
(1703, 79, '_crosssell_ids', 'a:0:{}'),
(1704, 79, '_purchase_note', ''),
(1705, 79, '_default_attributes', 'a:0:{}'),
(1706, 79, '_virtual', 'no'),
(1707, 79, '_downloadable', 'no'),
(1708, 79, '_product_image_gallery', ''),
(1709, 79, '_download_limit', '0'),
(1710, 79, '_download_expiry', '0'),
(1711, 79, '_stock', ''),
(1712, 79, '_stock_status', 'instock'),
(1713, 79, '_wc_average_rating', '0'),
(1714, 79, '_wc_rating_count', 'a:0:{}'),
(1715, 79, '_wc_review_count', '0'),
(1716, 79, '_downloadable_files', 'a:0:{}'),
(1717, 79, '_product_attributes', 'a:0:{}'),
(1718, 79, '_product_version', '3.5.3'),
(1719, 79, '_price', '45'),
(1720, 79, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1721, 79, '_thumbnail_id', '92'),
(1722, 79, 'attribute_pa_color', 'green'),
(1723, 79, 'attribute_logo', 'No'),
(1724, 80, '_sku', 'woo-hoodie-blue'),
(1725, 80, '_regular_price', '45'),
(1726, 80, '_sale_price', ''),
(1727, 80, '_sale_price_dates_from', ''),
(1728, 80, '_sale_price_dates_to', ''),
(1729, 80, 'total_sales', '0'),
(1730, 80, '_tax_status', 'taxable'),
(1731, 80, '_tax_class', ''),
(1732, 80, '_manage_stock', 'no'),
(1733, 80, '_backorders', 'no'),
(1734, 80, '_low_stock_amount', ''),
(1735, 80, '_sold_individually', 'no'),
(1736, 80, '_weight', ''),
(1737, 80, '_length', ''),
(1738, 80, '_width', ''),
(1739, 80, '_height', ''),
(1740, 80, '_upsell_ids', 'a:0:{}'),
(1741, 80, '_crosssell_ids', 'a:0:{}'),
(1742, 80, '_purchase_note', ''),
(1743, 80, '_default_attributes', 'a:0:{}'),
(1744, 80, '_virtual', 'no'),
(1745, 80, '_downloadable', 'no'),
(1746, 80, '_product_image_gallery', ''),
(1747, 80, '_download_limit', '0'),
(1748, 80, '_download_expiry', '0'),
(1749, 80, '_stock', ''),
(1750, 80, '_stock_status', 'instock'),
(1751, 80, '_wc_average_rating', '0'),
(1752, 80, '_wc_rating_count', 'a:0:{}'),
(1753, 80, '_wc_review_count', '0'),
(1754, 80, '_downloadable_files', 'a:0:{}'),
(1755, 80, '_product_attributes', 'a:0:{}'),
(1756, 80, '_product_version', '3.5.3'),
(1757, 80, '_price', '45'),
(1758, 80, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1759, 80, '_thumbnail_id', '91'),
(1760, 80, 'attribute_pa_color', 'blue'),
(1761, 80, 'attribute_logo', 'No'),
(1762, 81, '_sku', 'Woo-tshirt-logo'),
(1763, 81, '_regular_price', '18'),
(1764, 81, '_sale_price', ''),
(1765, 81, '_sale_price_dates_from', ''),
(1766, 81, '_sale_price_dates_to', ''),
(1767, 81, 'total_sales', '0'),
(1768, 81, '_tax_status', 'taxable'),
(1769, 81, '_tax_class', ''),
(1770, 81, '_manage_stock', 'no'),
(1771, 81, '_backorders', 'no'),
(1772, 81, '_low_stock_amount', ''),
(1773, 81, '_sold_individually', 'no'),
(1774, 81, '_weight', ''),
(1775, 81, '_length', ''),
(1776, 81, '_width', ''),
(1777, 81, '_height', ''),
(1778, 81, '_upsell_ids', 'a:0:{}'),
(1779, 81, '_crosssell_ids', 'a:0:{}'),
(1780, 81, '_purchase_note', ''),
(1781, 81, '_default_attributes', 'a:0:{}'),
(1782, 81, '_virtual', 'no'),
(1783, 81, '_downloadable', 'no'),
(1784, 81, '_product_image_gallery', ''),
(1785, 81, '_download_limit', '0'),
(1786, 81, '_download_expiry', '0'),
(1787, 81, '_stock', ''),
(1788, 81, '_stock_status', 'instock'),
(1789, 81, '_wc_average_rating', '0'),
(1790, 81, '_wc_rating_count', 'a:0:{}'),
(1791, 81, '_wc_review_count', '0'),
(1792, 81, '_downloadable_files', 'a:0:{}'),
(1793, 81, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1794, 81, '_product_version', '3.5.3'),
(1795, 81, '_price', '18'),
(1796, 81, '_thumbnail_id', '105'),
(1797, 82, '_sku', 'Woo-beanie-logo'),
(1798, 82, '_regular_price', '20'),
(1799, 82, '_sale_price', '18'),
(1800, 82, '_sale_price_dates_from', ''),
(1801, 82, '_sale_price_dates_to', ''),
(1802, 82, 'total_sales', '0'),
(1803, 82, '_tax_status', 'taxable'),
(1804, 82, '_tax_class', ''),
(1805, 82, '_manage_stock', 'no'),
(1806, 82, '_backorders', 'no'),
(1807, 82, '_low_stock_amount', ''),
(1808, 82, '_sold_individually', 'no'),
(1809, 82, '_weight', ''),
(1810, 82, '_length', ''),
(1811, 82, '_width', ''),
(1812, 82, '_height', ''),
(1813, 82, '_upsell_ids', 'a:0:{}'),
(1814, 82, '_crosssell_ids', 'a:0:{}'),
(1815, 82, '_purchase_note', ''),
(1816, 82, '_default_attributes', 'a:0:{}'),
(1817, 82, '_virtual', 'no'),
(1818, 82, '_downloadable', 'no'),
(1819, 82, '_product_image_gallery', ''),
(1820, 82, '_download_limit', '0'),
(1821, 82, '_download_expiry', '0'),
(1822, 82, '_stock', ''),
(1823, 82, '_stock_status', 'instock'),
(1824, 82, '_wc_average_rating', '0'),
(1825, 82, '_wc_rating_count', 'a:0:{}'),
(1826, 82, '_wc_review_count', '0'),
(1827, 82, '_downloadable_files', 'a:0:{}'),
(1828, 82, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1829, 82, '_product_version', '3.5.3'),
(1830, 82, '_price', '18'),
(1831, 82, '_thumbnail_id', '106'),
(1832, 83, '_sku', 'logo-collection'),
(1833, 83, '_sale_price_dates_from', ''),
(1834, 83, '_sale_price_dates_to', ''),
(1835, 83, 'total_sales', '0'),
(1836, 83, '_tax_status', 'taxable'),
(1837, 83, '_tax_class', ''),
(1838, 83, '_manage_stock', 'no'),
(1839, 83, '_backorders', 'no'),
(1840, 83, '_low_stock_amount', ''),
(1841, 83, '_sold_individually', 'no'),
(1842, 83, '_weight', ''),
(1843, 83, '_length', ''),
(1844, 83, '_width', ''),
(1845, 83, '_height', ''),
(1846, 83, '_upsell_ids', 'a:0:{}'),
(1847, 83, '_crosssell_ids', 'a:0:{}'),
(1848, 83, '_purchase_note', ''),
(1849, 83, '_default_attributes', 'a:0:{}'),
(1850, 83, '_virtual', 'no'),
(1851, 83, '_downloadable', 'no'),
(1852, 83, '_product_image_gallery', '50,49,37'),
(1853, 83, '_download_limit', '0'),
(1854, 83, '_download_expiry', '0'),
(1855, 83, '_stock', ''),
(1856, 83, '_stock_status', 'instock'),
(1857, 83, '_wc_average_rating', '0'),
(1858, 83, '_wc_rating_count', 'a:0:{}'),
(1859, 83, '_wc_review_count', '0'),
(1860, 83, '_downloadable_files', 'a:0:{}'),
(1861, 83, '_product_attributes', 'a:0:{}'),
(1862, 83, '_product_version', '3.5.3'),
(1863, 83, '_children', 'a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}'),
(1864, 83, '_thumbnail_id', '107'),
(1865, 83, '_price', '18'),
(1866, 83, '_price', '45'),
(1867, 84, '_sku', 'wp-pennant'),
(1868, 84, '_regular_price', '11.05'),
(1869, 84, '_sale_price', ''),
(1870, 84, '_sale_price_dates_from', ''),
(1871, 84, '_sale_price_dates_to', ''),
(1872, 84, 'total_sales', '0'),
(1873, 84, '_tax_status', 'taxable'),
(1874, 84, '_tax_class', ''),
(1875, 84, '_manage_stock', 'no'),
(1876, 84, '_backorders', 'no'),
(1877, 84, '_low_stock_amount', ''),
(1878, 84, '_sold_individually', 'no'),
(1879, 84, '_weight', ''),
(1880, 84, '_length', ''),
(1881, 84, '_width', ''),
(1882, 84, '_height', ''),
(1883, 84, '_upsell_ids', 'a:0:{}'),
(1884, 84, '_crosssell_ids', 'a:0:{}'),
(1885, 84, '_purchase_note', ''),
(1886, 84, '_default_attributes', 'a:0:{}'),
(1887, 84, '_virtual', 'no'),
(1888, 84, '_downloadable', 'no'),
(1889, 84, '_product_image_gallery', ''),
(1890, 84, '_download_limit', '0'),
(1891, 84, '_download_expiry', '0'),
(1892, 84, '_stock', ''),
(1893, 84, '_stock_status', 'instock'),
(1894, 84, '_wc_average_rating', '0'),
(1895, 84, '_wc_rating_count', 'a:0:{}'),
(1896, 84, '_wc_review_count', '0'),
(1897, 84, '_downloadable_files', 'a:0:{}'),
(1898, 84, '_product_attributes', 'a:0:{}'),
(1899, 84, '_product_version', '3.5.3'),
(1900, 84, '_price', '11.05'),
(1901, 84, '_thumbnail_id', '108'),
(1902, 84, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(1903, 84, '_button_text', 'Buy on the WordPress swag store!'),
(1904, 85, '_sku', 'woo-hoodie-blue-logo'),
(1905, 85, '_regular_price', '45'),
(1906, 85, '_sale_price', ''),
(1907, 85, '_sale_price_dates_from', ''),
(1908, 85, '_sale_price_dates_to', ''),
(1909, 85, 'total_sales', '0'),
(1910, 85, '_tax_status', 'taxable'),
(1911, 85, '_tax_class', ''),
(1912, 85, '_manage_stock', 'no'),
(1913, 85, '_backorders', 'no'),
(1914, 85, '_low_stock_amount', ''),
(1915, 85, '_sold_individually', 'no'),
(1916, 85, '_weight', ''),
(1917, 85, '_length', ''),
(1918, 85, '_width', ''),
(1919, 85, '_height', ''),
(1920, 85, '_upsell_ids', 'a:0:{}'),
(1921, 85, '_crosssell_ids', 'a:0:{}'),
(1922, 85, '_purchase_note', ''),
(1923, 85, '_default_attributes', 'a:0:{}'),
(1924, 85, '_virtual', 'no'),
(1925, 85, '_downloadable', 'no'),
(1926, 85, '_product_image_gallery', ''),
(1927, 85, '_download_limit', '0'),
(1928, 85, '_download_expiry', '0'),
(1929, 85, '_stock', ''),
(1930, 85, '_stock_status', 'instock'),
(1931, 85, '_wc_average_rating', '0'),
(1932, 85, '_wc_rating_count', 'a:0:{}'),
(1933, 85, '_wc_review_count', '0'),
(1934, 85, '_downloadable_files', 'a:0:{}'),
(1935, 85, '_product_attributes', 'a:0:{}'),
(1936, 85, '_product_version', '3.5.3'),
(1937, 85, '_price', '45'),
(1938, 85, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1939, 85, '_thumbnail_id', '93'),
(1940, 85, 'attribute_pa_color', 'blue'),
(1941, 85, 'attribute_logo', 'Yes'),
(1942, 87, '_wp_attached_file', '2019/01/vneck-tee-2.jpg'),
(1943, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/01/vneck-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1944, 87, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(1945, 88, '_wp_attached_file', '2019/01/vnech-tee-green-1.jpg'),
(1946, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2019/01/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1947, 88, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(1948, 89, '_wp_attached_file', '2019/01/vnech-tee-blue-1.jpg'),
(1949, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2019/01/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1950, 89, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(1951, 90, '_wp_attached_file', '2019/01/hoodie-2.jpg'),
(1952, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/hoodie-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1953, 90, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(1954, 91, '_wp_attached_file', '2019/01/hoodie-blue-1.jpg'),
(1955, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2019/01/hoodie-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1956, 91, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(1957, 92, '_wp_attached_file', '2019/01/hoodie-green-1.jpg'),
(1958, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2019/01/hoodie-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1959, 92, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(1960, 93, '_wp_attached_file', '2019/01/hoodie-with-logo-2.jpg'),
(1961, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2019/01/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1962, 93, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(1963, 94, '_wp_attached_file', '2019/01/tshirt-2.jpg'),
(1964, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/tshirt-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1965, 94, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(1966, 95, '_wp_attached_file', '2019/01/beanie-2.jpg'),
(1967, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/beanie-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1968, 95, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(1969, 96, '_wp_attached_file', '2019/01/belt-2.jpg'),
(1970, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2019/01/belt-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"belt-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1971, 96, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(1972, 97, '_wp_attached_file', '2019/01/cap-2.jpg'),
(1973, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2019/01/cap-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"cap-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1974, 97, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(1975, 98, '_wp_attached_file', '2019/01/sunglasses-2.jpg'),
(1976, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2019/01/sunglasses-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1977, 98, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(1978, 99, '_wp_attached_file', '2019/01/hoodie-with-pocket-2.jpg'),
(1979, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2019/01/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1980, 99, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(1981, 100, '_wp_attached_file', '2019/01/hoodie-with-zipper-2.jpg'),
(1982, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2019/01/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1983, 100, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(1984, 101, '_wp_attached_file', '2019/01/long-sleeve-tee-2.jpg'),
(1985, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2019/01/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1986, 101, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(1987, 102, '_wp_attached_file', '2019/01/polo-2.jpg'),
(1988, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2019/01/polo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"polo-2-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1989, 102, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(1990, 103, '_wp_attached_file', '2019/01/album-1.jpg'),
(1991, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2019/01/album-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"album-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1992, 103, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(1993, 104, '_wp_attached_file', '2019/01/single-1.jpg'),
(1994, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2019/01/single-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"single-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1995, 104, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(1996, 105, '_wp_attached_file', '2019/01/t-shirt-with-logo-1.jpg'),
(1997, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2019/01/t-shirt-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1998, 105, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(1999, 106, '_wp_attached_file', '2019/01/beanie-with-logo-1.jpg'),
(2000, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2019/01/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2001, 106, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(2002, 107, '_wp_attached_file', '2019/01/logo-1.jpg'),
(2003, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2019/01/logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"logo-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2004, 107, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(2005, 108, '_wp_attached_file', '2019/01/pennant-1.jpg'),
(2006, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2019/01/pennant-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2007, 108, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(2008, 109, '_edit_lock', '1570289843:1'),
(2009, 109, '_wp_page_template', 'template-homepage.php'),
(2010, 111, '_edit_lock', '1570289859:1'),
(2011, 113, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570517385;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(2012, 114, '_edit_last', '1'),
(2013, 114, '_edit_lock', '1570514371:1'),
(2014, 114, '_sku', '001'),
(2015, 114, '_regular_price', '10000'),
(2016, 114, 'total_sales', '0'),
(2017, 114, '_tax_status', 'taxable'),
(2018, 114, '_tax_class', ''),
(2019, 114, '_manage_stock', 'no'),
(2020, 114, '_backorders', 'no'),
(2021, 114, '_sold_individually', 'yes'),
(2022, 114, '_weight', '0.2'),
(2023, 114, '_length', '10'),
(2024, 114, '_width', '20'),
(2025, 114, '_height', '30'),
(2026, 114, '_virtual', 'no'),
(2027, 114, '_downloadable', 'no'),
(2028, 114, '_download_limit', '-1'),
(2029, 114, '_download_expiry', '-1'),
(2030, 114, '_stock', NULL),
(2031, 114, '_stock_status', 'instock'),
(2032, 114, '_wc_average_rating', '0'),
(2033, 114, '_wc_review_count', '0'),
(2034, 114, '_product_version', '3.7.0'),
(2035, 114, '_price', '10000'),
(2036, 114, '_customify_content_layout', 'full-width'),
(2037, 114, '_customify_sidebar', ''),
(2038, 114, '_customify_disable_header', ''),
(2039, 114, '_customify_disable_page_title', ''),
(2040, 114, '_customify_disable_footer_main', ''),
(2041, 114, '_customify_disable_footer_bottom', ''),
(2042, 114, '_customify_page_header_display', 'default'),
(2043, 115, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570523194;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(2044, 116, '_menu_item_type', 'post_type'),
(2045, 116, '_menu_item_menu_item_parent', '117'),
(2046, 116, '_menu_item_object_id', '109'),
(2047, 116, '_menu_item_object', 'page'),
(2048, 116, '_menu_item_target', ''),
(2049, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2050, 116, '_menu_item_xfn', ''),
(2051, 116, '_menu_item_url', ''),
(2053, 117, '_menu_item_type', 'post_type'),
(2054, 117, '_menu_item_menu_item_parent', '119'),
(2055, 117, '_menu_item_object_id', '53'),
(2056, 117, '_menu_item_object', 'page'),
(2057, 117, '_menu_item_target', ''),
(2058, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2059, 117, '_menu_item_xfn', ''),
(2060, 117, '_menu_item_url', ''),
(2071, 119, '_menu_item_type', 'post_type'),
(2072, 119, '_menu_item_menu_item_parent', '0'),
(2073, 119, '_menu_item_object_id', '109'),
(2074, 119, '_menu_item_object', 'page'),
(2075, 119, '_menu_item_target', ''),
(2076, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2077, 119, '_menu_item_xfn', ''),
(2078, 119, '_menu_item_url', ''),
(2080, 120, '_menu_item_type', 'post_type'),
(2081, 120, '_menu_item_menu_item_parent', '0'),
(2082, 120, '_menu_item_object_id', '57'),
(2083, 120, '_menu_item_object', 'page'),
(2084, 120, '_menu_item_target', ''),
(2085, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2086, 120, '_menu_item_xfn', ''),
(2087, 120, '_menu_item_url', ''),
(2089, 121, '_menu_item_type', 'post_type'),
(2090, 121, '_menu_item_menu_item_parent', '0'),
(2091, 121, '_menu_item_object_id', '53'),
(2092, 121, '_menu_item_object', 'page'),
(2093, 121, '_menu_item_target', ''),
(2094, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2095, 121, '_menu_item_xfn', ''),
(2096, 121, '_menu_item_url', ''),
(2098, 122, '_menu_item_type', 'post_type'),
(2099, 122, '_menu_item_menu_item_parent', '0'),
(2100, 122, '_menu_item_object_id', '33'),
(2101, 122, '_menu_item_object', 'page'),
(2102, 122, '_menu_item_target', ''),
(2103, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2104, 122, '_menu_item_xfn', ''),
(2105, 122, '_menu_item_url', ''),
(2107, 123, '_menu_item_type', 'post_type'),
(2108, 123, '_menu_item_menu_item_parent', '0'),
(2109, 123, '_menu_item_object_id', '109'),
(2110, 123, '_menu_item_object', 'page'),
(2111, 123, '_menu_item_target', ''),
(2112, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2113, 123, '_menu_item_xfn', ''),
(2114, 123, '_menu_item_url', ''),
(2116, 124, '_menu_item_type', 'post_type'),
(2117, 124, '_menu_item_menu_item_parent', '0'),
(2118, 124, '_menu_item_object_id', '53'),
(2119, 124, '_menu_item_object', 'page'),
(2120, 124, '_menu_item_target', ''),
(2121, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2122, 124, '_menu_item_xfn', ''),
(2123, 124, '_menu_item_url', ''),
(2125, 125, '_menu_item_type', 'post_type'),
(2126, 125, '_menu_item_menu_item_parent', '0'),
(2127, 125, '_menu_item_object_id', '49'),
(2128, 125, '_menu_item_object', 'page'),
(2129, 125, '_menu_item_target', ''),
(2130, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2131, 125, '_menu_item_xfn', ''),
(2132, 125, '_menu_item_url', ''),
(2134, 126, '_menu_item_type', 'post_type'),
(2135, 126, '_menu_item_menu_item_parent', '0'),
(2136, 126, '_menu_item_object_id', '33'),
(2137, 126, '_menu_item_object', 'page'),
(2138, 126, '_menu_item_target', ''),
(2139, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2140, 126, '_menu_item_xfn', ''),
(2141, 126, '_menu_item_url', ''),
(2143, 127, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570526839;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(2144, 128, '_menu_item_type', 'post_type'),
(2145, 128, '_menu_item_menu_item_parent', '0'),
(2146, 128, '_menu_item_object_id', '109'),
(2147, 128, '_menu_item_object', 'page'),
(2148, 128, '_menu_item_target', ''),
(2149, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2150, 128, '_menu_item_xfn', ''),
(2151, 128, '_menu_item_url', ''),
(2153, 129, '_menu_item_type', 'post_type'),
(2154, 129, '_menu_item_menu_item_parent', '0'),
(2155, 129, '_menu_item_object_id', '57'),
(2156, 129, '_menu_item_object', 'page'),
(2157, 129, '_menu_item_target', ''),
(2158, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2159, 129, '_menu_item_xfn', ''),
(2160, 129, '_menu_item_url', ''),
(2162, 130, '_menu_item_type', 'post_type'),
(2163, 130, '_menu_item_menu_item_parent', '0'),
(2164, 130, '_menu_item_object_id', '53'),
(2165, 130, '_menu_item_object', 'page'),
(2166, 130, '_menu_item_target', ''),
(2167, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2168, 130, '_menu_item_xfn', ''),
(2169, 130, '_menu_item_url', ''),
(2171, 131, '_menu_item_type', 'post_type'),
(2172, 131, '_menu_item_menu_item_parent', '0'),
(2173, 131, '_menu_item_object_id', '49'),
(2174, 131, '_menu_item_object', 'page'),
(2175, 131, '_menu_item_target', ''),
(2176, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2177, 131, '_menu_item_xfn', ''),
(2178, 131, '_menu_item_url', ''),
(2180, 132, '_menu_item_type', 'post_type'),
(2181, 132, '_menu_item_menu_item_parent', '0'),
(2182, 132, '_menu_item_object_id', '33'),
(2183, 132, '_menu_item_object', 'page'),
(2184, 132, '_menu_item_target', ''),
(2185, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2186, 132, '_menu_item_xfn', ''),
(2187, 132, '_menu_item_url', ''),
(2189, 133, '_menu_item_type', 'post_type'),
(2190, 133, '_menu_item_menu_item_parent', '0'),
(2191, 133, '_menu_item_object_id', '10'),
(2192, 133, '_menu_item_object', 'page'),
(2193, 133, '_menu_item_target', ''),
(2194, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2195, 133, '_menu_item_xfn', ''),
(2196, 133, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-04 05:46:00', '2019-10-04 05:46:00', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2019-10-05 14:37:40', '2019-10-05 14:37:40', '', 0, 'http://localhost:82/demo/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-04 05:46:00', '2019-10-04 05:46:00', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost:82/demo/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2019-10-05 14:40:19', '2019-10-05 14:40:19', '', 0, 'http://localhost:82/demo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-04 05:46:00', '2019-10-04 05:46:00', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost:82/demo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2019-10-04 05:46:00', '2019-10-04 05:46:00', '', 0, 'http://localhost:82/demo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-04 05:46:17', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-04 05:46:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?p=4', 0, 'post', '', 0),
(6, 1, '2019-10-04 06:52:00', '2019-10-04 06:52:00', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-10-04 06:52:00', '2019-10-04 06:52:00', '', 0, 'http://localhost:82/demo/wp-content/uploads/2019/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-10-04 06:53:17', '2019-10-04 06:53:17', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'mua', '', '', '2019-10-04 06:53:17', '2019-10-04 06:53:17', '', 0, 'http://localhost:82/demo/mua/', 0, 'page', '', 0),
(8, 1, '2019-10-04 06:53:17', '2019-10-04 06:53:17', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2019-10-04 06:53:17', '2019-10-04 06:53:17', '', 0, 'http://localhost:82/demo/gio-hang/', 0, 'page', '', 0),
(9, 1, '2019-10-04 06:53:17', '2019-10-04 06:53:17', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2019-10-04 06:53:17', '2019-10-04 06:53:17', '', 0, 'http://localhost:82/demo/thanh-toan/', 0, 'page', '', 0),
(10, 1, '2019-10-04 06:53:17', '2019-10-04 06:53:17', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2019-10-04 06:53:17', '2019-10-04 06:53:17', '', 0, 'http://localhost:82/demo/tai-khoan/', 0, 'page', '', 0),
(11, 0, '2019-10-04 06:55:17', '2019-10-04 06:55:17', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96ed141ec508.63791638-dC3PKOy20l1aOQawj0OqC981uBCVEB4i', '', '', '2019-10-04 06:56:20', '2019-10-04 06:56:20', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=11', 0, 'scheduled-action', '', 3),
(12, 0, '2019-10-04 07:56:20', '2019-10-04 07:56:20', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d983ce8494cb4.96700726-o0ev3JygbLuigZjz4gtleIQVlbf92GYk', '', '', '2019-10-05 06:49:12', '2019-10-05 06:49:12', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=12', 0, 'scheduled-action', '', 3),
(13, 0, '2019-10-05 07:49:12', '2019-10-05 07:49:12', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d984b2c332808.97994024-ZEM0qtYlsME7698zUy4TnL5NoNHSB5bN', '', '', '2019-10-05 07:50:04', '2019-10-05 07:50:04', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=13', 0, 'scheduled-action', '', 3),
(14, 1, '2019-10-05 06:49:56', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-05 06:49:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?post_type=product&p=14', 0, 'product', '', 0),
(15, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-zipper/', 0, 'product', '', 0),
(16, 0, '2019-10-05 08:50:04', '2019-10-05 08:50:04', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d985dea20db53.20497013-W04AKywRcFt5AuGFH8aq5dzxrH3lTFfO', '', '', '2019-10-05 09:10:02', '2019-10-05 09:10:02', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=16', 0, 'scheduled-action', '', 3),
(17, 0, '2019-10-05 10:10:02', '2019-10-05 10:10:02', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98a595d81736.42193328-pvruXP8JWR26LrBQtqEKrqra0CT2eiss', '', '', '2019-10-05 14:15:49', '2019-10-05 14:15:49', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=17', 0, 'scheduled-action', '', 3),
(18, 1, '2019-10-05 09:37:01', '2019-10-05 09:37:01', '', 'Trang chủ', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2019-10-05 09:37:01', '2019-10-05 09:37:01', '', 0, 'http://localhost:82/demo/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2019-10-05 09:37:07', '2019-10-05 09:37:07', '', 'Giới thiệu', '', 'trash', 'open', 'closed', '', '__trashed-2', '', '', '2019-10-05 09:37:07', '2019-10-05 09:37:07', '', 0, 'http://localhost:82/demo/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2019-10-05 09:24:40', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-05 09:24:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?post_type=product&p=20', 0, 'product', '', 0),
(21, 1, '2019-10-05 09:24:52', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-05 09:24:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?post_type=product&p=21', 0, 'product', '', 0),
(22, 1, '2019-10-05 09:25:13', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-05 09:25:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-10-05 09:25:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-05 09:25:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-10-05 09:29:10', '2019-10-05 09:29:10', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-10-05 09:29:10', '2019-10-05 09:29:10', '', 0, 'http://localhost:82/demo/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-10-05 09:26:55', '2019-10-05 09:26:55', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-10-05 09:26:55', '2019-10-05 09:26:55', '', 24, 'http://localhost:82/demo/2019/10/05/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-10-05 09:27:24', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-05 09:27:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?post_type=product&p=26', 0, 'product', '', 0),
(27, 1, '2019-10-05 09:27:44', '2019-10-05 09:27:44', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', 'trang-chu__trashed', '', '', '2019-10-05 09:37:55', '2019-10-05 09:37:55', '', 0, 'http://localhost:82/demo/?page_id=27', 0, 'page', '', 0),
(28, 1, '2019-10-05 09:27:44', '2019-10-05 09:27:44', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-10-05 09:27:44', '2019-10-05 09:27:44', '', 27, 'http://localhost:82/demo/2019/10/05/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-10-05 09:27:59', '2019-10-05 09:27:59', '', 'Giới thiệu', '', 'trash', 'closed', 'closed', '', 'gioi-thieu__trashed', '', '', '2019-10-05 09:37:51', '2019-10-05 09:37:51', '', 0, 'http://localhost:82/demo/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-10-05 09:27:59', '2019-10-05 09:27:59', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-05 09:27:59', '2019-10-05 09:27:59', '', 29, 'http://localhost:82/demo/2019/10/05/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-10-05 09:40:38', '2019-10-05 09:40:38', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-10-05 14:33:35', '2019-10-05 14:33:35', '', 0, 'http://localhost:82/demo/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-10-05 09:40:38', '2019-10-05 09:40:38', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-10-05 09:40:38', '2019-10-05 09:40:38', '', 31, 'http://localhost:82/demo/2019/10/05/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-10-05 09:40:57', '2019-10-05 09:40:57', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2019-10-05 09:40:58', '2019-10-05 09:40:58', '', 0, 'http://localhost:82/demo/?page_id=33', 0, 'page', '', 0),
(34, 1, '2019-10-05 09:40:57', '2019-10-05 09:40:57', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-10-05 09:40:57', '2019-10-05 09:40:57', '', 33, 'http://localhost:82/demo/2019/10/05/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-10-05 09:41:22', '2019-10-05 09:41:22', '', 'Sản phẩm', '', 'trash', 'closed', 'closed', '', 'san-pham__trashed', '', '', '2019-10-05 14:39:48', '2019-10-05 14:39:48', '', 0, 'http://localhost:82/demo/?page_id=35', 0, 'page', '', 0),
(36, 1, '2019-10-05 09:41:22', '2019-10-05 09:41:22', '', 'Sản phẩm', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-10-05 09:41:22', '2019-10-05 09:41:22', '', 35, 'http://localhost:82/demo/2019/10/05/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-10-05 09:42:15', '2019-10-05 09:42:15', '', 'Cửa hàng', '', 'trash', 'closed', 'closed', '', 'cua-hang__trashed', '', '', '2019-10-05 14:32:24', '2019-10-05 14:32:24', '', 0, 'http://localhost:82/demo/?page_id=37', 0, 'page', '', 0),
(38, 1, '2019-10-05 09:42:15', '2019-10-05 09:42:15', '', 'Cửa hàng', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-10-05 09:42:15', '2019-10-05 09:42:15', '', 37, 'http://localhost:82/demo/2019/10/05/37-revision-v1/', 0, 'revision', '', 0),
(39, 0, '2019-10-05 15:15:49', '2019-10-05 15:15:49', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98b3d82aa067.11410333-bx3jZWXh5XFAwSZHj3MPm61NyTETsO55', '', '', '2019-10-05 15:16:40', '2019-10-05 15:16:40', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=39', 0, 'scheduled-action', '', 3),
(41, 1, '2019-10-05 14:28:54', '2019-10-05 14:28:54', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', 'trang-chu__trashed', '', '', '2019-10-05 14:32:19', '2019-10-05 14:32:19', '', 31, 'http://localhost:82/demo/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-10-05 14:28:54', '2019-10-05 14:28:54', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-10-05 14:28:54', '2019-10-05 14:28:54', '', 41, 'http://localhost:82/demo/2019/10/05/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-10-05 14:29:25', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-05 14:29:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-10-05 14:31:45', '2019-10-05 14:31:45', '', 'Tin tức', '', 'trash', 'closed', 'closed', '', 'tin-tuc__trashed', '', '', '2019-10-05 14:40:14', '2019-10-05 14:40:14', '', 0, 'http://localhost:82/demo/?page_id=44', 0, 'page', '', 0),
(45, 1, '2019-10-05 14:31:45', '2019-10-05 14:31:45', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-10-05 14:31:45', '2019-10-05 14:31:45', '', 44, 'http://localhost:82/demo/2019/10/05/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-10-05 14:33:55', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-05 14:33:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/demo/?page_id=46', 0, 'page', '', 0),
(47, 1, '2019-10-05 14:34:28', '2019-10-05 14:34:28', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', 'trang-chu-2__trashed', '', '', '2019-10-05 14:39:52', '2019-10-05 14:39:52', '', 0, 'http://localhost:82/demo/?page_id=47', 0, 'page', '', 0),
(48, 1, '2019-10-05 14:34:28', '2019-10-05 14:34:28', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-10-05 14:34:28', '2019-10-05 14:34:28', '', 47, 'http://localhost:82/demo/2019/10/05/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-10-05 14:34:44', '2019-10-05 14:34:44', '', 'Tin tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc-2', '', '', '2019-10-05 14:34:44', '2019-10-05 14:34:44', '', 0, 'http://localhost:82/demo/?page_id=49', 0, 'page', '', 0),
(50, 1, '2019-10-05 14:34:44', '2019-10-05 14:34:44', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-10-05 14:34:44', '2019-10-05 14:34:44', '', 49, 'http://localhost:82/demo/2019/10/05/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-10-05 14:37:40', '2019-10-05 14:37:40', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-05 14:37:40', '2019-10-05 14:37:40', '', 1, 'http://localhost:82/demo/2019/10/05/1-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-10-05 14:40:19', '2019-10-05 14:40:19', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost:82/demo/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-10-05 14:40:19', '2019-10-05 14:40:19', '', 2, 'http://localhost:82/demo/2019/10/05/2-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-10-05 14:41:35', '2019-10-05 14:41:35', '', 'Tin tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2019-10-05 14:41:35', '2019-10-05 14:41:35', '', 0, 'http://localhost:82/demo/?page_id=53', 0, 'page', '', 0),
(54, 1, '2019-10-05 14:41:35', '2019-10-05 14:41:35', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-10-05 14:41:35', '2019-10-05 14:41:35', '', 53, 'http://localhost:82/demo/2019/10/05/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-10-05 14:45:52', '2019-10-05 14:45:52', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:44:38\"\n    },\n    \"page_on_front\": {\n        \"value\": \"31\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:44:38\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"33\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:44:38\"\n    },\n    \"storefront::storefront_header_background_color\": {\n        \"value\": \"#5af41d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:44:38\"\n    },\n    \"woocommerce_category_archive_display\": {\n        \"value\": \"both\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:45:38\"\n    },\n    \"storefront::background_color\": {\n        \"value\": \"#545454\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:45:38\"\n    },\n    \"storefront::storefront_button_text_color\": {\n        \"value\": \"#34c11b\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:45:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ce0267e4-a703-47c6-9536-2e2d9129dff4', '', '', '2019-10-05 14:45:52', '2019-10-05 14:45:52', '', 0, 'http://localhost:82/demo/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2019-10-05 14:46:32', '2019-10-05 14:46:32', '{\n    \"nav_menu[-1262714796650645500]\": {\n        \"value\": {\n            \"name\": \"Tin T\\u1ee9c\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:46:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f04fe91-857a-4192-bffd-54ba991f17d0', '', '', '2019-10-05 14:46:32', '2019-10-05 14:46:32', '', 0, 'http://localhost:82/demo/2019/10/05/5f04fe91-857a-4192-bffd-54ba991f17d0/', 0, 'customize_changeset', '', 0),
(57, 1, '2019-10-05 14:47:27', '2019-10-05 14:47:27', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-05 15:17:50', '2019-10-05 15:17:50', '', 0, 'http://localhost:82/demo/?page_id=57', 0, 'page', '', 0),
(58, 1, '2019-10-05 14:47:27', '2019-10-05 14:47:27', '{\n    \"page_on_front\": {\n        \"value\": \"57\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:47:26\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"49\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:47:26\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            57\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 14:47:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35a20fa9-a6fa-4943-b0ad-4a43a74fd25b', '', '', '2019-10-05 14:47:27', '2019-10-05 14:47:27', '', 0, 'http://localhost:82/demo/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2019-10-05 14:47:27', '2019-10-05 14:47:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-10-05 14:47:27', '2019-10-05 14:47:27', '', 57, 'http://localhost:82/demo/2019/10/05/57-revision-v1/', 0, 'revision', '', 0),
(60, 0, '2019-10-05 16:16:40', '2019-10-05 16:16:40', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9c23796f1275.08827941-UtgOLWLGF9e84defCdOvaSt8tzVftBqj', '', '', '2019-10-08 05:49:45', '2019-10-08 05:49:45', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=60', 0, 'scheduled-action', '', 3),
(62, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt/', 0, 'product', '', 0),
(63, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie/', 0, 'product', '', 0),
(64, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-logo/', 0, 'product', '', 0),
(65, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/t-shirt/', 0, 'product', '', 0),
(66, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/beanie/', 0, 'product', '', 0),
(67, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/belt/', 0, 'product', '', 0),
(68, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/cap/', 0, 'product', '', 0),
(69, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/sunglasses/', 0, 'product', '', 0),
(70, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-pocket/', 0, 'product', '', 0),
(71, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/long-sleeve-tee/', 0, 'product', '', 0),
(72, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'polo', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/polo/', 0, 'product', '', 0),
(73, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/album/', 0, 'product', '', 0),
(74, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'single', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/single/', 0, 'product', '', 0),
(75, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Red', 'color: Red', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-red', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 62, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-red/', 0, 'product_variation', '', 0),
(76, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Green', 'color: Green', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-green', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 62, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-green/', 0, 'product_variation', '', 0),
(77, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Blue', 'color: Blue', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-blue', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 62, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-blue/', 0, 'product_variation', '', 0),
(78, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'Hoodie - Red, No', 'color: Red, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-red-no', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 63, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-red-no', 1, 'product_variation', '', 0),
(79, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'Hoodie - Green, No', 'color: Green, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-green-no', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 63, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-green-no/', 2, 'product_variation', '', 0),
(80, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 'Hoodie - Blue, No', 'color: Blue, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-blue-no', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 63, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-blue-no', 3, 'product_variation', '', 0),
(81, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-with-logo', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/t-shirt-with-logo/', 0, 'product', '', 0),
(82, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/beanie-with-logo/', 0, 'product', '', 0),
(83, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'publish', 'open', 'closed', '', 'logo-collection', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/logo-collection/', 0, 'product', '', 0),
(84, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'publish', 'open', 'closed', '', 'wordpress-pennant', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/wordpress-pennant/', 0, 'product', '', 0),
(85, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 'Hoodie - Blue, Yes', 'color: Blue, Logo: Yes', 'publish', 'closed', 'closed', '', 'hoodie-blue-yes', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 63, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-blue-yes/', 0, 'product_variation', '', 0),
(87, 1, '2019-01-16 13:01:56', '2019-01-16 13:01:56', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2019-01-16 13:01:56', '2019-01-16 13:01:56', '', 62, 'http://localhost:82/demo/wp-content/uploads/2019/01/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-01-16 13:01:57', '2019-01-16 13:01:57', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2019-01-16 13:01:57', '2019-01-16 13:01:57', '', 62, 'http://localhost:82/demo/wp-content/uploads/2019/01/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 62, 'http://localhost:82/demo/wp-content/uploads/2019/01/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 63, 'http://localhost:82/demo/wp-content/uploads/2019/01/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-01-16 13:01:59', '2019-01-16 13:01:59', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2019-01-16 13:01:59', '2019-01-16 13:01:59', '', 63, 'http://localhost:82/demo/wp-content/uploads/2019/01/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 63, 'http://localhost:82/demo/wp-content/uploads/2019/01/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 63, 'http://localhost:82/demo/wp-content/uploads/2019/01/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 65, 'http://localhost:82/demo/wp-content/uploads/2019/01/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 66, 'http://localhost:82/demo/wp-content/uploads/2019/01/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 67, 'http://localhost:82/demo/wp-content/uploads/2019/01/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 68, 'http://localhost:82/demo/wp-content/uploads/2019/01/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 69, 'http://localhost:82/demo/wp-content/uploads/2019/01/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 70, 'http://localhost:82/demo/wp-content/uploads/2019/01/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 15, 'http://localhost:82/demo/wp-content/uploads/2019/01/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 71, 'http://localhost:82/demo/wp-content/uploads/2019/01/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 72, 'http://localhost:82/demo/wp-content/uploads/2019/01/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 73, 'http://localhost:82/demo/wp-content/uploads/2019/01/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 74, 'http://localhost:82/demo/wp-content/uploads/2019/01/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 81, 'http://localhost:82/demo/wp-content/uploads/2019/01/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 82, 'http://localhost:82/demo/wp-content/uploads/2019/01/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 83, 'http://localhost:82/demo/wp-content/uploads/2019/01/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 84, 'http://localhost:82/demo/wp-content/uploads/2019/01/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-10-05 15:39:45', '2019-10-05 15:39:45', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu-2', '', '', '2019-10-05 15:39:45', '2019-10-05 15:39:45', '', 0, 'http://localhost:82/demo/?page_id=109', 0, 'page', '', 0),
(110, 1, '2019-10-05 15:39:45', '2019-10-05 15:39:45', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2019-10-05 15:39:45', '2019-10-05 15:39:45', '', 109, 'http://localhost:82/demo/2019/10/05/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-10-05 15:39:57', '2019-10-05 15:39:57', '', 'haha', '', 'publish', 'closed', 'closed', '', 'haha', '', '', '2019-10-05 15:39:57', '2019-10-05 15:39:57', '', 0, 'http://localhost:82/demo/?page_id=111', 0, 'page', '', 0),
(112, 1, '2019-10-05 15:39:57', '2019-10-05 15:39:57', '', 'haha', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2019-10-05 15:39:57', '2019-10-05 15:39:57', '', 111, 'http://localhost:82/demo/2019/10/05/111-revision-v1/', 0, 'revision', '', 0),
(113, 0, '2019-10-08 06:49:45', '2019-10-08 06:49:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9c3a2a7734e2.43142500-ynIyCU92dAp3grbLA0xRr9cPUc6zxoWM', '', '', '2019-10-08 07:26:34', '2019-10-08 07:26:34', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=113', 0, 'scheduled-action', '', 3),
(114, 1, '2019-10-08 05:58:05', '2019-10-08 05:58:05', 'moto\r\n\r\n&nbsp;', 'Hieeu', 'gssdssf', 'publish', 'open', 'closed', '', 'hieeu', '', '', '2019-10-08 05:58:06', '2019-10-08 05:58:06', '', 0, 'http://localhost:82/demo/?post_type=product&#038;p=114', 0, 'product', '', 0),
(115, 0, '2019-10-08 08:26:34', '2019-10-08 08:26:34', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9c4867030bc7.58845149-Pre1hloNzvNI5nvwS2PgOl8VNLw5TpUZ', '', '', '2019-10-08 08:27:19', '2019-10-08 08:27:19', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&#038;p=115', 0, 'scheduled-action', '', 3),
(116, 1, '2019-10-08 07:28:25', '2019-10-08 07:28:25', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=116', 3, 'nav_menu_item', '', 0),
(117, 1, '2019-10-08 07:28:25', '2019-10-08 07:28:25', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=117', 2, 'nav_menu_item', '', 0),
(119, 1, '2019-10-08 07:33:43', '2019-10-08 07:33:43', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2019-10-08 07:33:43', '2019-10-08 07:33:43', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=120', 4, 'nav_menu_item', '', 0),
(121, 1, '2019-10-08 07:33:43', '2019-10-08 07:33:43', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=121', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2019-10-08 07:33:43', '2019-10-08 07:33:43', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=122', 6, 'nav_menu_item', '', 0),
(123, 1, '2019-10-08 07:47:25', '2019-10-08 07:47:25', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=123', 7, 'nav_menu_item', '', 0),
(124, 1, '2019-10-08 07:47:25', '2019-10-08 07:47:25', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=124', 8, 'nav_menu_item', '', 0),
(125, 1, '2019-10-08 07:47:25', '2019-10-08 07:47:25', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=125', 9, 'nav_menu_item', '', 0),
(126, 1, '2019-10-08 07:47:25', '2019-10-08 07:47:25', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2019-10-08 08:29:07', '2019-10-08 08:29:07', '', 0, 'http://localhost:82/demo/?p=126', 10, 'nav_menu_item', '', 0),
(127, 0, '2019-10-08 09:27:19', '2019-10-08 09:27:19', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2019-10-08 09:27:19', '2019-10-08 09:27:19', '', 0, 'http://localhost:82/demo/?post_type=scheduled-action&p=127', 0, 'scheduled-action', '', 1),
(128, 1, '2019-10-08 08:29:08', '2019-10-08 08:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-10-08 08:29:08', '2019-10-08 08:29:08', '', 0, 'http://localhost:82/demo/?p=128', 11, 'nav_menu_item', '', 0),
(129, 1, '2019-10-08 08:29:08', '2019-10-08 08:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-10-08 08:29:08', '2019-10-08 08:29:08', '', 0, 'http://localhost:82/demo/?p=129', 12, 'nav_menu_item', '', 0),
(130, 1, '2019-10-08 08:29:08', '2019-10-08 08:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-10-08 08:29:08', '2019-10-08 08:29:08', '', 0, 'http://localhost:82/demo/?p=130', 13, 'nav_menu_item', '', 0),
(131, 1, '2019-10-08 08:29:08', '2019-10-08 08:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-10-08 08:29:08', '2019-10-08 08:29:08', '', 0, 'http://localhost:82/demo/?p=131', 14, 'nav_menu_item', '', 0),
(132, 1, '2019-10-08 08:29:08', '2019-10-08 08:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-10-08 08:29:08', '2019-10-08 08:29:08', '', 0, 'http://localhost:82/demo/?p=132', 15, 'nav_menu_item', '', 0),
(133, 1, '2019-10-08 08:29:08', '2019-10-08 08:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2019-10-08 08:29:08', '2019-10-08 08:29:08', '', 0, 'http://localhost:82/demo/?p=133', 16, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 25, 'order', '0'),
(3, 26, 'order', '0'),
(4, 28, 'order', '0'),
(5, 30, 'order', '0'),
(6, 31, 'order', '0'),
(7, 32, 'order', '0'),
(8, 25, 'product_count_product_cat', '5'),
(9, 26, 'product_count_product_cat', '4'),
(10, 28, 'product_count_product_cat', '5'),
(11, 30, 'product_count_product_cat', '2'),
(12, 31, 'product_count_product_cat', '1'),
(13, 32, 'product_count_product_cat', '1'),
(14, 33, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Chưa phân loại', 'chua-phan-loai', 0),
(16, 'wc-admin-notes', 'wc-admin-notes', 0),
(17, 'Sản phẩm', 'san-pham', 0),
(18, 'Tin Tức', 'tin-tuc', 0),
(19, 'Blue', 'blue', 0),
(20, 'Green', 'green', 0),
(21, 'Large', 'large', 0),
(22, 'Medium', 'medium', 0),
(23, 'Red', 'red', 0),
(24, 'Small', 'small', 0),
(25, 'Tshirts', 'tshirts', 0),
(26, 'Hoodies', 'hoodies', 0),
(27, 'Gray', 'gray', 0),
(28, 'Accessories', 'accessories', 0),
(29, 'Yellow', 'yellow', 0),
(30, 'Music', 'music', 0),
(31, 'Clothing', 'clothing', 0),
(32, 'Decor', 'decor', 0),
(33, '100', '100', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 16, 0),
(12, 16, 0),
(13, 16, 0),
(15, 2, 0),
(15, 8, 0),
(15, 26, 0),
(16, 16, 0),
(17, 16, 0),
(18, 2, 0),
(18, 15, 0),
(19, 2, 0),
(19, 15, 0),
(39, 16, 0),
(60, 16, 0),
(62, 4, 0),
(62, 8, 0),
(62, 19, 0),
(62, 20, 0),
(62, 21, 0),
(62, 22, 0),
(62, 23, 0),
(62, 24, 0),
(62, 25, 0),
(63, 4, 0),
(63, 19, 0),
(63, 20, 0),
(63, 23, 0),
(63, 26, 0),
(64, 2, 0),
(64, 19, 0),
(64, 26, 0),
(65, 2, 0),
(65, 25, 0),
(65, 27, 0),
(66, 2, 0),
(66, 23, 0),
(66, 28, 0),
(67, 2, 0),
(67, 28, 0),
(68, 2, 0),
(68, 8, 0),
(68, 28, 0),
(68, 29, 0),
(69, 2, 0),
(69, 8, 0),
(69, 28, 0),
(70, 2, 0),
(70, 6, 0),
(70, 7, 0),
(70, 8, 0),
(70, 26, 0),
(70, 27, 0),
(71, 2, 0),
(71, 20, 0),
(71, 25, 0),
(72, 2, 0),
(72, 19, 0),
(72, 25, 0),
(73, 2, 0),
(73, 30, 0),
(74, 2, 0),
(74, 30, 0),
(81, 2, 0),
(81, 25, 0),
(81, 27, 0),
(82, 2, 0),
(82, 23, 0),
(82, 28, 0),
(83, 3, 0),
(83, 31, 0),
(84, 5, 0),
(84, 32, 0),
(113, 16, 0),
(114, 2, 0),
(114, 26, 0),
(114, 33, 0),
(115, 16, 0),
(116, 17, 0),
(117, 17, 0),
(119, 17, 0),
(120, 17, 0),
(121, 17, 0),
(122, 17, 0),
(123, 17, 0),
(124, 17, 0),
(125, 17, 0),
(126, 17, 0),
(127, 16, 0),
(128, 17, 0),
(129, 17, 0),
(130, 17, 0),
(131, 17, 0),
(132, 17, 0),
(133, 17, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 15),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 1),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 5),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'action-group', '', 0, 9),
(17, 17, 'nav_menu', '', 0, 16),
(18, 18, 'nav_menu', '', 0, 0),
(19, 19, 'pa_color', '', 0, 4),
(20, 20, 'pa_color', '', 0, 3),
(21, 21, 'pa_size', '', 0, 1),
(22, 22, 'pa_size', '', 0, 1),
(23, 23, 'pa_color', '', 0, 4),
(24, 24, 'pa_size', '', 0, 1),
(25, 25, 'product_cat', '', 0, 5),
(26, 26, 'product_cat', '', 0, 5),
(27, 27, 'pa_color', '', 0, 3),
(28, 28, 'product_cat', '', 0, 5),
(29, 29, 'pa_color', '', 0, 1),
(30, 30, 'product_cat', '', 0, 2),
(31, 31, 'product_cat', '', 0, 1),
(32, 32, 'product_cat', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'congthuc'),
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
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"48537418e57a03e2f9bc782abe3d0b6b6e3f8c2f44f3125bd3f48668b1b47bdb\";a:4:{s:10:\"expiration\";i:1570686594;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570513794;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:OrPgACiirxOfqfu+3k4GXDz5'),
(19, 1, 'wc_last_active', '1570492800'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(24, 1, 'wp_user-settings', 'mfold=o'),
(25, 1, 'wp_user-settings-time', '1570288348'),
(26, 1, '_order_count', '0'),
(28, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";a:6:{s:3:\"key\";s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";s:10:\"product_id\";i:114;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}'),
(29, 1, 'nav_menu_recently_edited', '17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'congthuc', '$P$BlCHMSLtX9ie/Ws2TR2XW80msGEKAB/', 'congthuc', 'nguyencongthuc10@gmail.com', '', '2019-10-04 05:46:00', '', 0, 'congthuc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-10-04 06:55:16', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-10-04 06:55:18', NULL, 0),
(3, 'wc-admin-store-notice-giving-feedback', 'info', 'en_US', 'Review your experience', 'If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-10-08 05:49:53', NULL, 0),
(4, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2019-10-08 05:49:53', NULL, 0),
(5, 'wc-admin-facebook-extension', 'info', 'en_US', 'Market on Facebook', 'Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.', 'thumbs-up', '{}', 'actioned', 'woocommerce-admin', '2019-10-08 05:49:53', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(3, 3, 'share-feedback', 'Review', 'https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post', 'actioned', 0),
(4, 4, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0),
(5, 5, 'learn-more', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 0),
(6, 5, 'install-now', 'Install now', '', 'actioned', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `gross_total` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(18, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(19, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(114, '001', 0, 0, '10000.00', '10000.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'color', 'select', 'menu_order', 0),
(2, 'size', 'size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '1', 'a:9:{s:22:\"mailchimp_landing_site\";s:121:\"http://localhost:82/demo/demo/wp-admin/admin-ajax.php?action=dashboard-widgets&widget=dashboard_primary&pagenow=dashboard\";s:4:\"cart\";s:417:\"a:1:{s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";a:11:{s:3:\"key\";s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";s:10:\"product_id\";i:114;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:10000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:10000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:414:\"a:15:{s:8:\"subtotal\";s:8:\"10000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:8:\"10000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"10000.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:714:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"nguyencongthuc10@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1570687097);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Việt Nam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1055;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2198;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
