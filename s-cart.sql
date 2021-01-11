-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-01-11 08:44:40
-- 服务器版本： 10.4.16-MariaDB
-- PHP 版本： 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `s-cart`
--

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_00_00_step1_create_tables_admin', 1),
(2, '2020_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- 表的结构 `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SCart Personal Access Client', 'cECDFKZuMZRVJomwpnjIB2Bbgd9BF3lrygqqIYWm', 'http://localhost', 1, 0, 0, '2020-11-19 03:09:48', '2020-11-19 03:09:48'),
(2, NULL, 'SCart Password Grant Client', 'gkMsPv5vIbcWAO7c9NlyyTh84fSYjc9YXyoL19Ot', 'http://localhost', 0, 1, 0, '2020-11-19 03:09:48', '2020-11-19 03:09:48');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-19 03:09:48', '2020-11-19 03:09:48');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 'lang::Shipping Standard'),
(3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 'lang::env.ADMIN_LOG'),
(4, 'global', 'env_global', 'ADMIN_LOG_EXP', '', 0, 0, 'lang::env.ADMIN_LOG_EXP'),
(5, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 'lang::config.LOG_SLACK_WEBHOOK_URL'),
(6, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, 0, 'lang::config.GOOGLE_CHAT_WEBHOOK_URL'),
(7, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, 0, 'lang::config.CHATWORK_CHAT_WEBHOOK_URL'),
(8, 'global', 'api_config', 'api_connection_required', '0', 0, 1, 'lang::api_connection.api_connection_required'),
(9, 'global', 'cache', 'cache_status', '0', 0, 0, 'lang::cache.config_manager.cache_status'),
(10, 'global', 'cache', 'cache_time', '600', 0, 0, 'lang::cache.config_manager.cache_time'),
(11, 'global', 'cache', 'cache_category', '0', 0, 3, 'lang::cache.config_manager.cache_category'),
(12, 'global', 'cache', 'cache_product', '0', 0, 4, 'lang::cache.config_manager.cache_product'),
(13, 'global', 'cache', 'cache_news', '0', 0, 5, 'lang::cache.config_manager.cache_news'),
(14, 'global', 'cache', 'cache_category_cms', '0', 0, 6, 'lang::cache.config_manager.cache_category_cms'),
(15, 'global', 'cache', 'cache_content_cms', '0', 0, 7, 'lang::cache.config_manager.cache_content_cms'),
(16, 'global', 'cache', 'cache_page', '0', 0, 8, 'lang::cache.config_manager.cache_page'),
(17, 'global', 'cache', 'cache_country', '0', 0, 10, 'lang::cache.config_manager.cache_country'),
(18, '', 'product_config_attribute', 'product_brand', '0', 1, 0, 'lang::product.config_manager.brand'),
(19, '', 'product_config_attribute_required', 'product_brand_required', '0', 1, 0, ''),
(20, '', 'product_config_attribute', 'product_supplier', '0', 1, 0, 'lang::product.config_manager.supplier'),
(21, '', 'product_config_attribute_required', 'product_supplier_required', '0', 1, 0, ''),
(22, '', 'product_config_attribute', 'product_price', '1', 1, 0, 'lang::product.config_manager.price'),
(23, '', 'product_config_attribute_required', 'product_price_required', '1', 1, 0, ''),
(24, '', 'product_config_attribute', 'product_cost', '0', 1, 0, 'lang::product.config_manager.cost'),
(25, '', 'product_config_attribute_required', 'product_cost_required', '0', 1, 0, ''),
(26, '', 'product_config_attribute', 'product_promotion', '0', 1, 0, 'lang::product.config_manager.promotion'),
(27, '', 'product_config_attribute_required', 'product_promotion_required', '0', 1, 0, ''),
(28, '', 'product_config_attribute', 'product_stock', '1', 1, 0, 'lang::product.config_manager.stock'),
(29, '', 'product_config_attribute_required', 'product_stock_required', '0', 1, 0, ''),
(30, '', 'product_config_attribute', 'product_kind', '0', 1, 0, 'lang::product.config_manager.kind'),
(31, '', 'product_config_attribute', 'product_property', '0', 1, 0, 'lang::product.config_manager.property'),
(32, '', 'product_config_attribute_required', 'product_property_required', '0', 1, 0, ''),
(33, '', 'product_config_attribute', 'product_attribute', '0', 1, 0, 'lang::product.config_manager.attribute'),
(34, '', 'product_config_attribute_required', 'product_attribute_required', '0', 1, 0, ''),
(35, '', 'product_config_attribute', 'product_available', '0', 1, 0, 'lang::product.config_manager.available'),
(36, '', 'product_config_attribute_required', 'product_available_required', '0', 1, 0, ''),
(37, '', 'product_config_attribute', 'product_weight', '0', 1, 0, 'lang::product.config_manager.weight'),
(38, '', 'product_config_attribute_required', 'product_weight_required', '0', 1, 0, ''),
(39, '', 'product_config_attribute', 'product_length', '0', 1, 0, 'lang::product.config_manager.length'),
(40, '', 'product_config_attribute_required', 'product_length_required', '0', 1, 0, ''),
(41, '', 'product_config', 'product_display_out_of_stock', '1', 1, 19, 'lang::admin.product_display_out_of_stock'),
(42, '', 'product_config', 'show_date_available', '1', 1, 21, 'lang::admin.show_date_available'),
(43, '', 'product_config', 'product_tax', '1', 1, 0, 'lang::product.config_manager.tax'),
(44, '', 'customer_config_attribute', 'customer_lastname', '0', 1, 0, 'lang::customer.config_manager.lastname'),
(45, '', 'customer_config_attribute_required', 'customer_lastname_required', '0', 1, 0, ''),
(46, '', 'customer_config_attribute', 'customer_address1', '1', 1, 0, 'lang::customer.config_manager.address1'),
(47, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 1, 0, ''),
(48, '', 'customer_config_attribute', 'customer_address2', '0', 1, 0, 'lang::customer.config_manager.address2'),
(49, '', 'customer_config_attribute_required', 'customer_address2_required', '0', 1, 0, ''),
(50, '', 'customer_config_attribute', 'customer_company', '0', 1, 0, 'lang::customer.config_manager.company'),
(51, '', 'customer_config_attribute_required', 'customer_company_required', '0', 1, 0, ''),
(52, '', 'customer_config_attribute', 'customer_postcode', '0', 1, 0, 'lang::customer.config_manager.postcode'),
(53, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 1, 0, ''),
(54, '', 'customer_config_attribute', 'customer_country', '0', 1, 0, 'lang::customer.config_manager.country'),
(55, '', 'customer_config_attribute_required', 'customer_country_required', '0', 1, 0, ''),
(56, '', 'customer_config_attribute', 'customer_group', '0', 1, 0, 'lang::customer.config_manager.group'),
(57, '', 'customer_config_attribute_required', 'customer_group_required', '0', 1, 0, ''),
(58, '', 'customer_config_attribute', 'customer_birthday', '0', 1, 0, 'lang::customer.config_manager.birthday'),
(59, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 1, 0, ''),
(60, '', 'customer_config_attribute', 'customer_sex', '0', 1, 0, 'lang::customer.config_manager.sex'),
(61, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 1, 0, ''),
(62, '', 'customer_config_attribute', 'customer_phone', '1', 1, 1, 'lang::customer.config_manager.phone'),
(63, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 1, 1, ''),
(64, '', 'customer_config_attribute', 'customer_name_kana', '0', 1, 1, 'lang::customer.config_manager.name_kana'),
(65, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 1, 1, ''),
(66, '', 'admin_config', 'ADMIN_NAME', 'Second Hand Bookstore System', 1, 0, 'lang::env.ADMIN_NAME'),
(67, '', 'admin_config', 'ADMIN_TITLE', 'Second Hand Bookstore  Admin', 1, 0, 'lang::env.ADMIN_TITLE'),
(68, '', 'admin_config', 'ADMIN_LOGO', 'Second Hand Bookstore  Admin', 1, 0, 'lang::env.ADMIN_LOGO'),
(69, '', 'admin_config', 'ADMIN_FOOTER_OFF', '0', 1, 0, 'lang::env.ADMIN_FOOTER_OFF'),
(70, '', 'display_config', 'product_top', '8', 1, 0, 'lang::admin.product_top'),
(71, '', 'display_config', 'product_list', '12', 1, 0, 'lang::admin.list_product'),
(72, '', 'display_config', 'product_relation', '4', 1, 0, 'lang::admin.relation_product'),
(73, '', 'display_config', 'product_viewed', '4', 1, 0, 'lang::admin.viewed_product'),
(74, '', 'display_config', 'item_list', '12', 1, 0, 'lang::admin.item_list'),
(75, '', 'display_config', 'item_top', '8', 1, 0, 'lang::admin.item_top'),
(76, '', 'order_config', 'shop_allow_guest', '1', 1, 11, 'lang::order.admin.shop_allow_guest'),
(77, '', 'order_config', 'product_preorder', '1', 1, 18, 'lang::order.admin.product_preorder'),
(78, '', 'order_config', 'product_buy_out_of_stock', '1', 1, 20, 'lang::order.admin.product_buy_out_of_stock'),
(79, '', 'order_config', 'shipping_off', '0', 1, 20, 'lang::order.admin.shipping_off'),
(80, '', 'order_config', 'payment_off', '1', 1, 20, 'lang::order.admin.payment_off'),
(81, '', 'email_action', 'email_action_mode', '1', 1, 0, 'lang::email.email_action.email_action_mode'),
(82, '', 'email_action', 'email_action_queue', '0', 1, 1, 'lang::email.email_action.email_action_queue'),
(83, '', 'email_action', 'order_success_to_admin', '0', 1, 1, 'lang::email.email_action.order_success_to_admin'),
(84, '', 'email_action', 'order_success_to_customer', '0', 1, 2, 'lang::email.email_action.order_success_to_cutomer'),
(85, '', 'email_action', 'welcome_customer', '0', 1, 4, 'lang::email.email_action.welcome_customer'),
(86, '', 'email_action', 'contact_to_admin', '1', 1, 6, 'lang::email.email_action.contact_to_admin'),
(87, '', 'smtp_config', 'smtp_host', 'americanting98@gmail.com', 1, 1, 'lang::email.smtp_host'),
(88, '', 'smtp_config', 'smtp_user', 'tin bin', 1, 2, 'lang::email.smtp_user'),
(89, '', 'smtp_config', 'smtp_password', 'tkb842862555', 1, 3, 'lang::email.smtp_password'),
(90, '', 'smtp_config', 'smtp_security', 'SSL', 1, 4, 'lang::email.smtp_security'),
(91, '', 'smtp_config', 'smtp_port', '465', 1, 5, 'lang::email.smtp_port'),
(92, '', 'url_config', 'SUFFIX_URL', '.html', 1, 0, 'lang::url.SUFFIX_URL'),
(93, '', 'url_config', 'PREFIX_SHOP', 'shop', 1, 0, 'lang::env.PREFIX_SHOP'),
(94, '', 'url_config', 'PREFIX_BRAND', 'brand', 1, 0, 'lang::env.PREFIX_BRAND'),
(95, '', 'url_config', 'PREFIX_CATEGORY', 'category', 1, 0, 'lang::env.PREFIX_CATEGORY'),
(96, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 1, 0, 'lang::env.PREFIX_SUB_CATEGORY'),
(97, '', 'url_config', 'PREFIX_PRODUCT', 'product', 1, 0, 'lang::env.PREFIX_PRODUCT'),
(98, '', 'url_config', 'PREFIX_SEARCH', 'search', 1, 0, 'lang::env.PREFIX_SEARCH'),
(99, '', 'url_config', 'PREFIX_CONTACT', 'contact', 1, 0, 'lang::env.PREFIX_CONTACT'),
(100, '', 'url_config', 'PREFIX_NEWS', 'news', 1, 0, 'lang::env.PREFIX_NEWS'),
(101, '', 'url_config', 'PREFIX_MEMBER', 'customer', 1, 0, 'lang::env.PREFIX_MEMBER'),
(102, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 1, 0, 'lang::env.PREFIX_MEMBER_ORDER_LIST'),
(103, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 1, 0, 'lang::env.PREFIX_MEMBER_CHANGE_PWD'),
(104, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 1, 0, 'lang::env.PREFIX_MEMBER_CHANGE_INFO'),
(105, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 1, 0, 'lang::env.PREFIX_CMS_CATEGORY'),
(106, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 1, 0, 'lang::env.PREFIX_CMS_ENTRY'),
(107, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 1, 0, 'lang::env.PREFIX_CART_WISHLIST'),
(108, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 1, 0, 'lang::env.PREFIX_CART_COMPARE'),
(109, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 1, 0, 'lang::env.PREFIX_CART_DEFAULT'),
(110, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 1, 0, 'lang::env.PREFIX_CART_CHECKOUT'),
(111, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 1, 0, 'lang::env.PREFIX_ORDER_SUCCESS'),
(112, '', 'captcha_config', 'captcha_mode', '0', 1, 20, 'lang::captcha.captcha_mode'),
(113, '', 'captcha_config', 'captcha_page', '[\"register\"]', 1, 10, 'lang::captcha.captcha_page'),
(114, '', 'captcha_config', 'captcha_method', NULL, 1, 0, 'lang::captcha.captcha_method');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:11:15', '2020-11-19 03:11:15'),
(2, 1, 'sc_admin/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:11:21', '2020-11-19 03:11:21'),
(3, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:11:21', '2020-11-19 03:11:21'),
(4, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:13:36', '2020-11-19 03:13:36'),
(5, 1, 'sc_admin/role/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:13:43', '2020-11-19 03:13:43'),
(6, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:14:03', '2020-11-19 03:14:03'),
(7, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:14:14', '2020-11-19 03:14:14'),
(8, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:14:23', '2020-11-19 03:14:23'),
(9, 1, 'sc_admin/role/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":null,\"permission\":[\"7\",\"5\"],\"_token\":\"czUv6371WMScArePLZplycsYKKFhpDeLcY74TKKv\"}', '2020-11-19 03:14:55', '2020-11-19 03:14:55'),
(10, 1, 'sc_admin/role/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:14:55', '2020-11-19 03:14:55'),
(11, 1, 'sc_admin/role/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":\"seller\",\"permission\":[\"7\",\"5\"],\"_token\":\"czUv6371WMScArePLZplycsYKKFhpDeLcY74TKKv\"}', '2020-11-19 03:15:03', '2020-11-19 03:15:03'),
(12, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:15:03', '2020-11-19 03:15:03'),
(13, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:15:11', '2020-11-19 03:15:11'),
(14, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aa\",\"username\":\"aa\",\"email\":\"aa\",\"avatar\":null,\"password\":\"aa\",\"password_confirmation\":\"aa\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"czUv6371WMScArePLZplycsYKKFhpDeLcY74TKKv\"}', '2020-11-19 03:15:24', '2020-11-19 03:15:24'),
(15, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:15:25', '2020-11-19 03:15:25'),
(16, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa\",\"avatar\":null,\"password\":\"aaaaaa\",\"password_confirmation\":\"aaaaaa\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"czUv6371WMScArePLZplycsYKKFhpDeLcY74TKKv\"}', '2020-11-19 03:15:39', '2020-11-19 03:15:39'),
(17, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:15:40', '2020-11-19 03:15:40'),
(18, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":\"aaaaaa\",\"password_confirmation\":\"aaaaaa\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"czUv6371WMScArePLZplycsYKKFhpDeLcY74TKKv\"}', '2020-11-19 03:15:48', '2020-11-19 03:15:48'),
(19, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:15:49', '2020-11-19 03:15:49'),
(20, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:15:58', '2020-11-19 03:15:58'),
(21, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:16:09', '2020-11-19 03:16:09'),
(22, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:16:13', '2020-11-19 03:16:13'),
(23, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:16:19', '2020-11-19 03:16:19'),
(24, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:16:34', '2020-11-19 03:16:34'),
(25, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:16:37', '2020-11-19 03:16:37'),
(26, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:17:28', '2020-11-19 03:17:28'),
(27, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:17:32', '2020-11-19 03:17:32'),
(28, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:17:34', '2020-11-19 03:17:34'),
(29, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:18:01', '2020-11-19 03:18:01'),
(30, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:20:16', '2020-11-19 03:20:16'),
(31, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:21:55', '2020-11-19 03:21:55'),
(32, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:22:04', '2020-11-19 03:22:04'),
(33, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:22:14', '2020-11-19 03:22:14'),
(34, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:22:29', '2020-11-19 03:22:29'),
(35, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:22:48', '2020-11-19 03:22:48'),
(36, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:22:54', '2020-11-19 03:22:54'),
(37, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"yOT7s7k8LUOFGdZ9rr4LYjEWdJAxChDxBIvJnXtQ\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 03:22:57', '2020-11-19 03:22:57'),
(38, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"yOT7s7k8LUOFGdZ9rr4LYjEWdJAxChDxBIvJnXtQ\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-19 03:23:00', '2020-11-19 03:23:00'),
(39, 1, 'sc_admin/config/webhook', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:23:13', '2020-11-19 03:23:13'),
(40, 1, 'sc_admin/log', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:29:52', '2020-11-19 03:29:52'),
(41, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:30:12', '2020-11-19 03:30:12'),
(42, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:30:34', '2020-11-19 03:30:34'),
(43, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:30:37', '2020-11-19 03:30:37'),
(44, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:30:39', '2020-11-19 03:30:39'),
(45, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:30:40', '2020-11-19 03:30:40'),
(46, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:54:42', '2020-11-19 03:54:42'),
(47, 1, 'sc_admin/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:55:03', '2020-11-19 03:55:03'),
(48, 1, 'sc_admin/shipping_status/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:55:07', '2020-11-19 03:55:07'),
(49, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:55:13', '2020-11-19 03:55:13'),
(50, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:55:19', '2020-11-19 03:55:19'),
(51, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:55:27', '2020-11-19 03:55:27'),
(52, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:56:14', '2020-11-19 03:56:14'),
(53, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:56:25', '2020-11-19 03:56:25'),
(54, 1, 'sc_admin/plugin/cms', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:56:35', '2020-11-19 03:56:35'),
(55, 1, 'sc_admin/plugin/other', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:56:40', '2020-11-19 03:56:40'),
(56, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 03:57:49', '2020-11-19 03:57:49'),
(57, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:22:30', '2020-11-19 04:22:30'),
(58, 1, 'sc_admin/tax', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:22:45', '2020-11-19 04:22:45'),
(59, 1, 'sc_admin/tax/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 04:22:51', '2020-11-19 04:22:51'),
(60, 1, 'sc_admin/tax', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:22:51', '2020-11-19 04:22:51'),
(61, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:11', '2020-11-19 04:36:11'),
(62, 1, 'sc_admin/payment_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:16', '2020-11-19 04:36:16'),
(63, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:32', '2020-11-19 04:36:32'),
(64, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:38', '2020-11-19 04:36:38'),
(65, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:40', '2020-11-19 04:36:40'),
(66, 1, 'sc_admin/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:46', '2020-11-19 04:36:46'),
(67, 1, 'sc_admin/currency/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:36:54', '2020-11-19 04:36:54'),
(68, 1, 'sc_admin/currency/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 04:37:00', '2020-11-19 04:37:00'),
(69, 1, 'sc_admin/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:37:00', '2020-11-19 04:37:00'),
(70, 1, 'sc_admin/currency/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:37:03', '2020-11-19 04:37:03'),
(71, 1, 'sc_admin/currency/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"RM\",\"code\":\"USD\",\"symbol\":\"RM\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 04:37:24', '2020-11-19 04:37:24'),
(72, 1, 'sc_admin/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:37:25', '2020-11-19 04:37:25'),
(73, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:37:30', '2020-11-19 04:37:30'),
(74, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:37:34', '2020-11-19 04:37:34'),
(75, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:37:50', '2020-11-19 04:37:50'),
(76, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:38:54', '2020-11-19 04:38:54'),
(77, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:38:59', '2020-11-19 04:38:59'),
(78, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:39:13', '2020-11-19 04:39:13'),
(79, 1, 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:39:16', '2020-11-19 04:39:16'),
(80, 1, 'sc_admin/language/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"code\":\"vi\",\"icon\":\"\\/data\\/language\\/flag_vn.png\",\"sort\":\"1\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 04:39:20', '2020-11-19 04:39:20'),
(81, 1, 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:39:20', '2020-11-19 04:39:20'),
(82, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:39:26', '2020-11-19 04:39:26'),
(83, 1, 'sc_admin/category/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:39:31', '2020-11-19 04:39:31'),
(84, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:40:51', '2020-11-19 04:40:51'),
(85, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:41:09', '2020-11-19 04:41:09'),
(86, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"id\":\"59\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 04:41:56', '2020-11-19 04:41:56'),
(87, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"id\":\"59\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 04:41:59', '2020-11-19 04:41:59'),
(88, 1, 'sc_admin/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 04:42:20', '2020-11-19 04:42:20'),
(89, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:10:39', '2020-11-19 05:10:39'),
(90, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:10:49', '2020-11-19 05:10:49'),
(91, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:10:50', '2020-11-19 05:10:50'),
(92, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:10:52', '2020-11-19 05:10:52'),
(93, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:10:52', '2020-11-19 05:10:52'),
(94, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:10:54', '2020-11-19 05:10:54'),
(95, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:10:55', '2020-11-19 05:10:55'),
(96, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:10:56', '2020-11-19 05:10:56'),
(97, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:10:57', '2020-11-19 05:10:57'),
(98, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:10:58', '2020-11-19 05:10:58'),
(99, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:10:58', '2020-11-19 05:10:58'),
(100, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:11:00', '2020-11-19 05:11:00'),
(101, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:11:00', '2020-11-19 05:11:00'),
(102, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:11:01', '2020-11-19 05:11:01'),
(103, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:11:02', '2020-11-19 05:11:02'),
(104, 1, 'sc_admin/brand/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"45tLthRArD3bmjDwPwzVB0zJcNELjYSHAz5yQ3hu\"}', '2020-11-19 05:11:04', '2020-11-19 05:11:04'),
(105, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:11:04', '2020-11-19 05:11:04'),
(106, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:49:29', '2020-11-19 05:49:29'),
(107, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:50:13', '2020-11-19 05:50:13'),
(108, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:50:18', '2020-11-19 05:50:18'),
(109, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:50:36', '2020-11-19 05:50:36'),
(110, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:50:50', '2020-11-19 05:50:50'),
(111, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:51:20', '2020-11-19 05:51:20'),
(112, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:51:25', '2020-11-19 05:51:25'),
(113, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:51:44', '2020-11-19 05:51:44'),
(114, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:51:52', '2020-11-19 05:51:52'),
(115, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"order_status\":\"1\"}', '2020-11-19 05:52:34', '2020-11-19 05:52:34'),
(116, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"order_status\":\"1\"}', '2020-11-19 05:59:22', '2020-11-19 05:59:22'),
(117, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"order_status\":\"1\"}', '2020-11-19 05:59:35', '2020-11-19 05:59:35'),
(118, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:59:45', '2020-11-19 05:59:45'),
(119, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 05:59:51', '2020-11-19 05:59:51'),
(120, 1, 'sc_admin/theme/dark', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:00:12', '2020-11-19 06:00:12'),
(121, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:00:12', '2020-11-19 06:00:12'),
(122, 1, 'sc_admin/theme/lightblue', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:00:14', '2020-11-19 06:00:14'),
(123, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:00:15', '2020-11-19 06:00:15'),
(124, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"keyword\":null}', '2020-11-19 06:00:19', '2020-11-19 06:00:19'),
(125, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:01:35', '2020-11-19 06:01:35'),
(126, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:01:37', '2020-11-19 06:01:37'),
(127, 1, 'sc_admin/page/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:01:46', '2020-11-19 06:01:46'),
(128, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:01:54', '2020-11-19 06:01:54'),
(129, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:01:56', '2020-11-19 06:01:56'),
(130, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:25:28', '2020-11-19 06:25:28'),
(131, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:25:35', '2020-11-19 06:25:35'),
(132, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"CcuRSSvsXmVdzFIKoWBfcRbP64i65QGyHWyXVFTF\",\"name\":\"customer_address2\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 06:25:48', '2020-11-19 06:25:48'),
(133, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"CcuRSSvsXmVdzFIKoWBfcRbP64i65QGyHWyXVFTF\",\"name\":\"customer_address2_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 06:25:50', '2020-11-19 06:25:50'),
(134, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"CcuRSSvsXmVdzFIKoWBfcRbP64i65QGyHWyXVFTF\",\"name\":\"customer_country\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 06:26:01', '2020-11-19 06:26:01'),
(135, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"CcuRSSvsXmVdzFIKoWBfcRbP64i65QGyHWyXVFTF\",\"name\":\"customer_country_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 06:26:02', '2020-11-19 06:26:02'),
(136, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"CcuRSSvsXmVdzFIKoWBfcRbP64i65QGyHWyXVFTF\",\"name\":\"customer_lastname\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 06:27:05', '2020-11-19 06:27:05'),
(137, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"CcuRSSvsXmVdzFIKoWBfcRbP64i65QGyHWyXVFTF\",\"name\":\"customer_lastname_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 06:27:06', '2020-11-19 06:27:06'),
(138, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:29:20', '2020-11-19 06:29:20'),
(139, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 06:29:34', '2020-11-19 06:29:34'),
(140, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:43:47', '2020-11-19 07:43:47'),
(141, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:57:48', '2020-11-19 07:57:48'),
(142, 1, 'sc_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:57:57', '2020-11-19 07:57:57'),
(143, 1, 'sc_admin/store_css', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:58:15', '2020-11-19 07:58:15'),
(144, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:58:30', '2020-11-19 07:58:30'),
(145, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:58:38', '2020-11-19 07:58:38'),
(146, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:58:43', '2020-11-19 07:58:43'),
(147, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:58:48', '2020-11-19 07:58:48'),
(148, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"captcha_mode\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-19 07:59:01', '2020-11-19 07:59:01'),
(149, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"captcha_page\",\"value\":[\"register\"],\"pk\":\"captcha_page\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 07:59:04', '2020-11-19 07:59:04'),
(150, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 07:59:31', '2020-11-19 07:59:31'),
(151, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"captcha_method\",\"value\":null,\"pk\":\"captcha_method\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 07:59:38', '2020-11-19 07:59:38'),
(152, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"captcha_mode\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 08:00:01', '2020-11-19 08:00:01'),
(153, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:00:05', '2020-11-19 08:00:05'),
(154, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:00:28', '2020-11-19 08:00:28'),
(155, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:00:33', '2020-11-19 08:00:33'),
(156, 1, 'sc_admin/language/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:00:36', '2020-11-19 08:00:36'),
(157, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:00:37', '2020-11-19 08:00:37'),
(158, 1, 'sc_admin/language/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:00:54', '2020-11-19 08:00:54'),
(159, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:00:54', '2020-11-19 08:00:54'),
(160, 1, 'sc_admin/language/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"rtl\":\"on\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:00:58', '2020-11-19 08:00:58'),
(161, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:00:58', '2020-11-19 08:00:58'),
(162, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:03:00', '2020-11-19 08:03:00'),
(163, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<p>We started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:04:58', '2020-11-19 08:04:58'),
(164, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:04:59', '2020-11-19 08:04:59'),
(165, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:07:01', '2020-11-19 08:07:01'),
(166, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:07:06', '2020-11-19 08:07:06'),
(167, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:07:42', '2020-11-19 08:07:42'),
(168, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:09:01', '2020-11-19 08:09:01'),
(169, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"logo\"}', '2020-11-19 08:09:05', '2020-11-19 08:09:05'),
(170, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1605776948730\"}', '2020-11-19 08:09:09', '2020-11-19 08:09:09'),
(171, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1605776948731\"}', '2020-11-19 08:09:09', '2020-11-19 08:09:09'),
(172, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605776948732\"}', '2020-11-19 08:09:09', '2020-11-19 08:09:09'),
(173, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:09:23', '2020-11-19 08:09:23'),
(174, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1605776948733\"}', '2020-11-19 08:09:24', '2020-11-19 08:09:24'),
(175, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605776948734\"}', '2020-11-19 08:09:24', '2020-11-19 08:09:24'),
(176, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/Capture.PNG\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 08:09:29', '2020-11-19 08:09:29'),
(177, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:09:36', '2020-11-19 08:09:36'),
(178, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:09:41', '2020-11-19 08:09:41'),
(179, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"page\"}', '2020-11-19 08:10:05', '2020-11-19 08:10:05'),
(180, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1605777005654\"}', '2020-11-19 08:10:06', '2020-11-19 08:10:06'),
(181, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1605777005655\"}', '2020-11-19 08:10:06', '2020-11-19 08:10:06'),
(182, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605777005656\"}', '2020-11-19 08:10:06', '2020-11-19 08:10:06'),
(183, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:10:12', '2020-11-19 08:10:12'),
(184, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"_\":\"1605777005657\"}', '2020-11-19 08:10:13', '2020-11-19 08:10:13'),
(185, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605777005658\"}', '2020-11-19 08:10:13', '2020-11-19 08:10:13'),
(186, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<p>We started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.<\\/p>\"}},\"image\":\"\\/data\\/page\\/124493.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:10:19', '2020-11-19 08:10:19'),
(187, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:10:20', '2020-11-19 08:10:20'),
(188, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:11:56', '2020-11-19 08:11:56'),
(189, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<p><img src=\\\"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/page\\/124493.jpg\\\" \\/><br \\/>\\r\\nWe started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.<\\/p>\"}},\"image\":\"\\/data\\/page\\/124493.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:12:12', '2020-11-19 08:12:12'),
(190, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:12:12', '2020-11-19 08:12:12'),
(191, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:12:43', '2020-11-19 08:12:43');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(192, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<div class=\\\"col-12 col-sm-12 col-md-6\\\">\\r\\nhttp:\\/\\/localhost\\/s-cart\\/public\\/data\\/page\\/124493.jpg\\r\\n<\\/div>\\r\\n<div class=\\\"col-12 col-sm-12 col-md-6\\\">\\r\\n<p>We started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.<\\/p>\\r\\n<\\/div>\"}},\"image\":\"\\/data\\/page\\/124493.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:14:38', '2020-11-19 08:14:38'),
(193, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:14:39', '2020-11-19 08:14:39'),
(194, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:14:56', '2020-11-19 08:14:56'),
(195, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<div class=\\\"col-12 col-sm-12 col-md-6\\\"><img src=\\\"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/page\\/124493.jpg\\\" \\/><\\/div>\\r\\n\\r\\n<div class=\\\"col-12 col-sm-12 col-md-6\\\">\\r\\n<p>We started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.<\\/p>\\r\\n<\\/div>\"}},\"image\":\"\\/data\\/page\\/124493.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:15:14', '2020-11-19 08:15:14'),
(196, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:15:15', '2020-11-19 08:15:15'),
(197, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:15:45', '2020-11-19 08:15:45'),
(198, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-sm-12 col-md-6\\\"><img src=\\\"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/page\\/124493.jpg\\\" \\/><\\/div>\\r\\n\\r\\n<div class=\\\"col-12 col-sm-12 col-md-6\\\">\\r\\n<p>We started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.<\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<\\/div>\"}},\"image\":\"\\/data\\/page\\/124493.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:16:02', '2020-11-19 08:16:02'),
(199, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:16:02', '2020-11-19 08:16:02'),
(200, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:17:20', '2020-11-19 08:17:20'),
(201, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"logo\"}', '2020-11-19 08:17:22', '2020-11-19 08:17:22'),
(202, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1605777443169\"}', '2020-11-19 08:17:23', '2020-11-19 08:17:23'),
(203, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1605777443170\"}', '2020-11-19 08:17:23', '2020-11-19 08:17:23'),
(204, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605777443171\"}', '2020-11-19 08:17:24', '2020-11-19 08:17:24'),
(205, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"logo\"}', '2020-11-19 08:17:30', '2020-11-19 08:17:30'),
(206, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1605777450699\"}', '2020-11-19 08:17:31', '2020-11-19 08:17:31'),
(207, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1605777450700\"}', '2020-11-19 08:17:31', '2020-11-19 08:17:31'),
(208, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605777450701\"}', '2020-11-19 08:17:31', '2020-11-19 08:17:31'),
(209, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\"}', '2020-11-19 08:17:41', '2020-11-19 08:17:41'),
(210, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1605777450702\"}', '2020-11-19 08:17:42', '2020-11-19 08:17:42'),
(211, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1605777450703\"}', '2020-11-19 08:17:42', '2020-11-19 08:17:42'),
(212, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/Capture-removebg-preview.png\",\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 08:17:47', '2020-11-19 08:17:47'),
(213, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:18:06', '2020-11-19 08:18:06'),
(214, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:20:04', '2020-11-19 08:20:04'),
(215, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:28:11', '2020-11-19 08:28:11'),
(216, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:30:25', '2020-11-19 08:30:25'),
(217, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:31:02', '2020-11-19 08:31:02'),
(218, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:31:09', '2020-11-19 08:31:09'),
(219, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:31:15', '2020-11-19 08:31:15'),
(220, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:32:12', '2020-11-19 08:32:12'),
(221, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:33:56', '2020-11-19 08:33:56'),
(222, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"ADMIN_NAME\",\"value\":\"Second Hand Bookstore System\",\"pk\":null,\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 08:34:25', '2020-11-19 08:34:25'),
(223, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"ADMIN_TITLE\",\"value\":\"Second Hand Bookstore  Admin\",\"pk\":null,\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 08:34:31', '2020-11-19 08:34:31'),
(224, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"ADMIN_FOOTER_OFF\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-19 08:34:37', '2020-11-19 08:34:37'),
(225, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"ADMIN_FOOTER_OFF\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 08:34:48', '2020-11-19 08:34:48'),
(226, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"ADMIN_LOGO\",\"value\":\"Second Hand Bookstore  Admin\",\"pk\":null,\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"storeId\":\"1\"}', '2020-11-19 08:34:54', '2020-11-19 08:34:54'),
(227, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:34:56', '2020-11-19 08:34:56'),
(228, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"ADMIN_FOOTER_OFF\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-19 08:35:00', '2020-11-19 08:35:00'),
(229, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"ADMIN_FOOTER_OFF\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 08:35:09', '2020-11-19 08:35:09'),
(230, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:35:48', '2020-11-19 08:35:48'),
(231, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:35:51', '2020-11-19 08:35:51'),
(232, 1, 'sc_admin/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:35:57', '2020-11-19 08:35:57'),
(233, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:37:02', '2020-11-19 08:37:02'),
(234, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:38:04', '2020-11-19 08:38:04'),
(235, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:44:08', '2020-11-19 08:44:08'),
(236, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-19 08:44:16', '2020-11-19 08:44:16'),
(237, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"WYbIyG4GtXjFubKTekPjuueimwBJZFZe6b6fjl0G\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-19 08:44:21', '2020-11-19 08:44:21'),
(238, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:44:33', '2020-11-19 08:44:33'),
(239, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:45:13', '2020-11-19 08:45:13'),
(240, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 08:45:15', '2020-11-19 08:45:15'),
(241, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 09:43:51', '2020-11-19 09:43:51'),
(242, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 09:50:17', '2020-11-19 09:50:17'),
(243, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 09:50:33', '2020-11-19 09:50:33'),
(244, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 13:50:23', '2020-11-19 13:50:23'),
(245, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 13:51:18', '2020-11-19 13:51:18'),
(246, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 13:51:21', '2020-11-19 13:51:21'),
(247, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 13:51:30', '2020-11-19 13:51:30'),
(248, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 13:51:36', '2020-11-19 13:51:36'),
(249, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 14:01:13', '2020-11-19 14:01:13'),
(250, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 14:06:54', '2020-11-19 14:06:54'),
(251, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 15:06:01', '2020-11-19 15:06:01'),
(252, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 15:06:27', '2020-11-19 15:06:27'),
(253, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 15:24:26', '2020-11-19 15:24:26'),
(254, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-19 15:26:07', '2020-11-19 15:26:07'),
(255, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:02:12', '2020-11-20 05:02:12'),
(256, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:01', '2020-11-20 05:04:01'),
(257, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:02', '2020-11-20 05:04:02'),
(258, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:03', '2020-11-20 05:04:03'),
(259, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:04', '2020-11-20 05:04:04'),
(260, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:05', '2020-11-20 05:04:05'),
(261, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:06', '2020-11-20 05:04:06'),
(262, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:07', '2020-11-20 05:04:07'),
(263, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:07', '2020-11-20 05:04:07'),
(264, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:55', '2020-11-20 05:04:55'),
(265, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:58', '2020-11-20 05:04:58'),
(266, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:04:59', '2020-11-20 05:04:59'),
(267, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:05:00', '2020-11-20 05:05:00'),
(268, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:05:00', '2020-11-20 05:05:00'),
(269, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:05:15', '2020-11-20 05:05:15'),
(270, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:06:00', '2020-11-20 05:06:00'),
(271, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:06:00', '2020-11-20 05:06:00'),
(272, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:06:49', '2020-11-20 05:06:49'),
(273, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:07:05', '2020-11-20 05:07:05'),
(274, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:08:09', '2020-11-20 05:08:09'),
(275, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:08:19', '2020-11-20 05:08:19'),
(276, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:10:05', '2020-11-20 05:10:05'),
(277, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:10:05', '2020-11-20 05:10:05'),
(278, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:11:05', '2020-11-20 05:11:05'),
(279, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:17:37', '2020-11-20 05:17:37'),
(280, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:18:09', '2020-11-20 05:18:09'),
(281, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:18:14', '2020-11-20 05:18:14'),
(282, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:24:22', '2020-11-20 05:24:22'),
(283, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:24:41', '2020-11-20 05:24:41'),
(284, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:28:31', '2020-11-20 05:28:31'),
(285, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 05:38:52', '2020-11-20 05:38:52'),
(286, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:20:29', '2020-11-20 07:20:29'),
(287, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:20:31', '2020-11-20 07:20:31'),
(288, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:20:39', '2020-11-20 07:20:39'),
(289, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:20:53', '2020-11-20 07:20:53'),
(290, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_supplier\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:00', '2020-11-20 07:21:00'),
(291, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_brand\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:01', '2020-11-20 07:21:01'),
(292, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_promotion\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:07', '2020-11-20 07:21:07'),
(293, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_kind\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:13', '2020-11-20 07:21:13'),
(294, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_property\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:18', '2020-11-20 07:21:18'),
(295, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_attribute\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:24', '2020-11-20 07:21:24'),
(296, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_available\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:21:25', '2020-11-20 07:21:25'),
(297, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:22:28', '2020-11-20 07:22:28'),
(298, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:22:51', '2020-11-20 07:22:51'),
(299, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:22:55', '2020-11-20 07:22:55'),
(300, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"q3UqhUB6hUTtd9VL9CPjxnC7GSPblRzGLvubvs2G\",\"name\":\"product_cost\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 07:23:00', '2020-11-20 07:23:00'),
(301, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:23:21', '2020-11-20 07:23:21'),
(302, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:27:28', '2020-11-20 07:27:28'),
(303, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 07:54:06', '2020-11-20 07:54:06'),
(304, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 08:31:25', '2020-11-20 08:31:25'),
(305, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 08:36:10', '2020-11-20 08:36:10'),
(306, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:08:28', '2020-11-20 09:08:28'),
(307, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:08:37', '2020-11-20 09:08:37'),
(308, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:08:44', '2020-11-20 09:08:44'),
(309, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:08:51', '2020-11-20 09:08:51'),
(310, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:08:58', '2020-11-20 09:08:58'),
(311, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:52:46', '2020-11-20 09:52:46'),
(312, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:53:18', '2020-11-20 09:53:18'),
(313, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:59:01', '2020-11-20 09:59:01'),
(314, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:59:18', '2020-11-20 09:59:18'),
(315, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 09:59:23', '2020-11-20 09:59:23'),
(316, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:00:16', '2020-11-20 10:00:16'),
(317, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:00:21', '2020-11-20 10:00:21'),
(318, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:00:22', '2020-11-20 10:00:22'),
(319, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:00:23', '2020-11-20 10:00:23'),
(320, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:00:28', '2020-11-20 10:00:28'),
(321, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:00:56', '2020-11-20 10:00:56'),
(322, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:01:21', '2020-11-20 10:01:21'),
(323, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:01:31', '2020-11-20 10:01:31'),
(324, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:01:40', '2020-11-20 10:01:40'),
(325, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:04:08', '2020-11-20 10:04:08'),
(326, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:15:12', '2020-11-20 10:15:12'),
(327, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:15:59', '2020-11-20 10:15:59'),
(328, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:16:04', '2020-11-20 10:16:04'),
(329, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:16:12', '2020-11-20 10:16:12'),
(330, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:16:15', '2020-11-20 10:16:15'),
(331, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:16:20', '2020-11-20 10:16:20'),
(332, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:16:24', '2020-11-20 10:16:24'),
(333, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:18:13', '2020-11-20 10:18:13'),
(334, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:24:24', '2020-11-20 10:24:24'),
(335, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:25:31', '2020-11-20 10:25:31'),
(336, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:25:39', '2020-11-20 10:25:39'),
(337, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:27:47', '2020-11-20 10:27:47'),
(338, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:27:51', '2020-11-20 10:27:51'),
(339, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:30:00', '2020-11-20 10:30:00'),
(340, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:30:10', '2020-11-20 10:30:10'),
(341, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:31:00', '2020-11-20 10:31:00'),
(342, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:31:04', '2020-11-20 10:31:04'),
(343, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:31:06', '2020-11-20 10:31:06'),
(344, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"test\",\"keyword\":\"tekd\",\"description\":\"sckoxkc\",\"content\":null}},\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"xzD3KnMBuofptg3CeUhIEw96dNGrkJkin4cIq2MA\"}', '2020-11-20 10:41:44', '2020-11-20 10:41:44'),
(345, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:41:44', '2020-11-20 10:41:44'),
(346, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"test\",\"keyword\":\"tekd\",\"description\":\"sckoxkc\",\"content\":\"asdsd\"}},\"category\":[\"1\"],\"image\":null,\"sku\":\"wdsd\",\"alias\":\"test\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"xzD3KnMBuofptg3CeUhIEw96dNGrkJkin4cIq2MA\"}', '2020-11-20 10:41:56', '2020-11-20 10:41:56'),
(347, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:41:57', '2020-11-20 10:41:57'),
(348, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:42:20', '2020-11-20 10:42:20'),
(349, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:49:43', '2020-11-20 10:49:43'),
(350, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"dfasd\",\"keyword\":\"tekd\",\"description\":\"wqddasd\",\"content\":null}},\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"xzD3KnMBuofptg3CeUhIEw96dNGrkJkin4cIq2MA\"}', '2020-11-20 10:49:59', '2020-11-20 10:49:59'),
(351, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:49:59', '2020-11-20 10:49:59'),
(352, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"dfasd\",\"keyword\":\"tekd\",\"description\":\"wqddasd\",\"content\":\"asdsafwqe\"}},\"image\":null,\"sku\":\"asdadqw\",\"alias\":\"dfasd\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"xzD3KnMBuofptg3CeUhIEw96dNGrkJkin4cIq2MA\"}', '2020-11-20 10:50:09', '2020-11-20 10:50:09'),
(353, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:50:10', '2020-11-20 10:50:10'),
(354, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"dfasd\",\"keyword\":\"tekd\",\"description\":\"wqddasd\",\"content\":\"asdsafwqe\"}},\"category\":[\"3\"],\"image\":null,\"sku\":\"asdadqw\",\"alias\":\"dfasd\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"xzD3KnMBuofptg3CeUhIEw96dNGrkJkin4cIq2MA\"}', '2020-11-20 10:50:19', '2020-11-20 10:50:19'),
(355, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:50:19', '2020-11-20 10:50:19'),
(356, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:54:27', '2020-11-20 10:54:27'),
(357, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 10:59:04', '2020-11-20 10:59:04'),
(358, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:01:15', '2020-11-20 11:01:15'),
(359, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:04:09', '2020-11-20 11:04:09'),
(360, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:06:53', '2020-11-20 11:06:53'),
(361, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"asdsa\",\"keyword\":\"dsad\",\"description\":\"wdasd\",\"content\":\"asdsadw\"}},\"owner\":\"admin\",\"category\":[\"3\"],\"image\":null,\"sku\":\"sadasd\",\"alias\":\"sadsa\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"xzD3KnMBuofptg3CeUhIEw96dNGrkJkin4cIq2MA\"}', '2020-11-20 11:07:08', '2020-11-20 11:07:08'),
(362, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:07:08', '2020-11-20 11:07:08'),
(363, 1, 'sc_admin/product/edit/20', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:07:43', '2020-11-20 11:07:43'),
(364, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:07:51', '2020-11-20 11:07:51'),
(365, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 11:07:57', '2020-11-20 11:07:57'),
(366, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:31:15', '2020-11-20 12:31:15'),
(367, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:31:53', '2020-11-20 12:31:53'),
(368, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:31:54', '2020-11-20 12:31:54'),
(369, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:06', '2020-11-20 12:33:06'),
(370, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:15', '2020-11-20 12:33:15'),
(371, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:20', '2020-11-20 12:33:20'),
(372, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:24', '2020-11-20 12:33:24'),
(373, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:26', '2020-11-20 12:33:26'),
(374, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:30', '2020-11-20 12:33:30'),
(375, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:33:35', '2020-11-20 12:33:35'),
(376, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:35:05', '2020-11-20 12:35:05'),
(377, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:35:51', '2020-11-20 12:35:51'),
(378, 1, 'sc_admin/order/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:35:52', '2020-11-20 12:35:52'),
(379, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:36:08', '2020-11-20 12:36:08'),
(380, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:40:25', '2020-11-20 12:40:25');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(381, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:41:12', '2020-11-20 12:41:12'),
(382, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:42:46', '2020-11-20 12:42:46'),
(383, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:42:59', '2020-11-20 12:42:59'),
(384, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:43:08', '2020-11-20 12:43:08'),
(385, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:43:12', '2020-11-20 12:43:12'),
(386, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:43:15', '2020-11-20 12:43:15'),
(387, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 12:45:16', '2020-11-20 12:45:16'),
(388, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 13:50:30', '2020-11-20 13:50:30'),
(389, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 13:51:46', '2020-11-20 13:51:46'),
(390, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 13:58:26', '2020-11-20 13:58:26'),
(391, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 14:01:29', '2020-11-20 14:01:29'),
(392, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 14:01:52', '2020-11-20 14:01:52'),
(393, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 14:01:58', '2020-11-20 14:01:58'),
(394, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 14:02:11', '2020-11-20 14:02:11'),
(395, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 15:52:35', '2020-11-20 15:52:35'),
(396, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"eLZLwrukhbeLD2n3YJcybWWjQcayPykwsp7pUJeB\",\"name\":\"product_brand\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-20 15:52:39', '2020-11-20 15:52:39'),
(397, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"eLZLwrukhbeLD2n3YJcybWWjQcayPykwsp7pUJeB\",\"name\":\"product_brand\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 15:52:41', '2020-11-20 15:52:41'),
(398, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"eLZLwrukhbeLD2n3YJcybWWjQcayPykwsp7pUJeB\",\"name\":\"product_supplier\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-20 15:52:59', '2020-11-20 15:52:59'),
(399, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"eLZLwrukhbeLD2n3YJcybWWjQcayPykwsp7pUJeB\",\"name\":\"product_price\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 15:53:56', '2020-11-20 15:53:56'),
(400, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"eLZLwrukhbeLD2n3YJcybWWjQcayPykwsp7pUJeB\",\"name\":\"product_price\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-20 15:53:58', '2020-11-20 15:53:58'),
(401, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"eLZLwrukhbeLD2n3YJcybWWjQcayPykwsp7pUJeB\",\"name\":\"product_supplier\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-20 15:53:59', '2020-11-20 15:53:59'),
(402, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:10:28', '2020-11-20 16:10:28'),
(403, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:31:10', '2020-11-20 16:31:10'),
(404, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:34:46', '2020-11-20 16:34:46'),
(405, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:36:17', '2020-11-20 16:36:17'),
(406, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:36:56', '2020-11-20 16:36:56'),
(407, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:46:47', '2020-11-20 16:46:47'),
(408, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:47:48', '2020-11-20 16:47:48'),
(409, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:49:24', '2020-11-20 16:49:24'),
(410, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:49:34', '2020-11-20 16:49:34'),
(411, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:49:39', '2020-11-20 16:49:39'),
(412, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:49:43', '2020-11-20 16:49:43'),
(413, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:50:11', '2020-11-20 16:50:11'),
(414, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:50:16', '2020-11-20 16:50:16'),
(415, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:50:21', '2020-11-20 16:50:21'),
(416, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-20 16:50:26', '2020-11-20 16:50:26'),
(417, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:21:33', '2020-11-21 01:21:33'),
(418, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:21:42', '2020-11-21 01:21:42'),
(419, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:21:56', '2020-11-21 01:21:56'),
(420, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:21:59', '2020-11-21 01:21:59'),
(421, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:22:04', '2020-11-21 01:22:04'),
(422, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:22:06', '2020-11-21 01:22:06'),
(423, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:42:07', '2020-11-21 01:42:07'),
(424, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"YVK0z3VevOQYI7fNtK5qhb9WuBCeDdnB5WUlknDY\",\"name\":\"product_supplier\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-21 01:42:27', '2020-11-21 01:42:27'),
(425, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:45:31', '2020-11-21 01:45:31'),
(426, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:45:55', '2020-11-21 01:45:55'),
(427, 1, 'sc_admin/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:18', '2020-11-21 01:59:18'),
(428, 1, 'sc_admin/supplier/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:25', '2020-11-21 01:59:25'),
(429, 1, 'sc_admin/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:33', '2020-11-21 01:59:33'),
(430, 1, 'sc_admin/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:39', '2020-11-21 01:59:39'),
(431, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:49', '2020-11-21 01:59:49'),
(432, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:52', '2020-11-21 01:59:52'),
(433, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 01:59:56', '2020-11-21 01:59:56'),
(434, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_brand\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-21 02:00:01', '2020-11-21 02:00:01'),
(435, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_brand_required\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-21 02:00:27', '2020-11-21 02:00:27'),
(436, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_supplier_required\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-11-21 02:00:27', '2020-11-21 02:00:27'),
(437, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_supplier\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-21 02:00:42', '2020-11-21 02:00:42'),
(438, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_brand\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-21 02:00:42', '2020-11-21 02:00:42'),
(439, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_supplier_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-21 02:00:43', '2020-11-21 02:00:43'),
(440, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"PHmj7NRGpptiBw8h9N6ljxHmRQR42f0cVs5U2B3y\",\"name\":\"product_brand_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-21 02:00:44', '2020-11-21 02:00:44'),
(441, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:06:29', '2020-11-21 02:06:29'),
(442, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:06:35', '2020-11-21 02:06:35'),
(443, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:06:38', '2020-11-21 02:06:38'),
(444, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:07:29', '2020-11-21 02:07:29'),
(445, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:07:50', '2020-11-21 02:07:50'),
(446, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:07:56', '2020-11-21 02:07:56'),
(447, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:08:00', '2020-11-21 02:08:00'),
(448, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:08:25', '2020-11-21 02:08:25'),
(449, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:09:10', '2020-11-21 02:09:10'),
(450, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:09:14', '2020-11-21 02:09:14'),
(451, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 02:09:22', '2020-11-21 02:09:22'),
(452, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:29:03', '2020-11-21 04:29:03'),
(453, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:29:07', '2020-11-21 04:29:07'),
(454, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:29:11', '2020-11-21 04:29:11'),
(455, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:31:53', '2020-11-21 04:31:53'),
(456, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:31:59', '2020-11-21 04:31:59'),
(457, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:33:25', '2020-11-21 04:33:25'),
(458, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:35:47', '2020-11-21 04:35:47'),
(459, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:39:37', '2020-11-21 04:39:37'),
(460, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:39:53', '2020-11-21 04:39:53'),
(461, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:39:59', '2020-11-21 04:39:59'),
(462, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:40:02', '2020-11-21 04:40:02'),
(463, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:40:09', '2020-11-21 04:40:09'),
(464, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:40:16', '2020-11-21 04:40:16'),
(465, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:40:25', '2020-11-21 04:40:25'),
(466, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:40:28', '2020-11-21 04:40:28'),
(467, 1, 'sc_admin/role/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":\"seller\",\"permission\":[\"1\",\"3\",\"7\",\"5\",\"8\"],\"administrators\":[\"2\"],\"_token\":\"HQoUuqhTGHyQHbmxz81ymsUZOlUtsy7Xxs8myw3x\"}', '2020-11-21 04:40:56', '2020-11-21 04:40:56'),
(468, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:40:56', '2020-11-21 04:40:56'),
(469, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:41:00', '2020-11-21 04:41:00'),
(470, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:41:05', '2020-11-21 04:41:05'),
(471, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:41:31', '2020-11-21 04:41:31'),
(472, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:41:39', '2020-11-21 04:41:39'),
(473, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:41:49', '2020-11-21 04:41:49'),
(474, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:41:55', '2020-11-21 04:41:55'),
(475, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:42:40', '2020-11-21 04:42:40'),
(476, 1, 'sc_admin/role/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":\"seller\",\"permission\":[\"1\",\"3\",\"13\",\"7\",\"5\",\"8\"],\"administrators\":[\"2\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 04:42:41', '2020-11-21 04:42:41'),
(477, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:42:42', '2020-11-21 04:42:42'),
(478, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:42:45', '2020-11-21 04:42:45'),
(479, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:46:13', '2020-11-21 04:46:13'),
(480, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:46:15', '2020-11-21 04:46:15'),
(481, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"3\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 04:46:22', '2020-11-21 04:46:22'),
(482, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:46:22', '2020-11-21 04:46:22'),
(483, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"3\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 04:46:28', '2020-11-21 04:46:28'),
(484, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:46:28', '2020-11-21 04:46:28'),
(485, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:47:07', '2020-11-21 04:47:07'),
(486, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"3\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 04:47:16', '2020-11-21 04:47:16'),
(487, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:47:17', '2020-11-21 04:47:17'),
(488, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:47:25', '2020-11-21 04:47:25'),
(489, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:48:23', '2020-11-21 04:48:23'),
(490, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 04:49:47', '2020-11-21 04:49:47'),
(491, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:49:47', '2020-11-21 04:49:47'),
(492, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:56:00', '2020-11-21 04:56:00'),
(493, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:56:41', '2020-11-21 04:56:41'),
(494, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 04:57:11', '2020-11-21 04:57:11'),
(495, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:01:11', '2020-11-21 05:01:11'),
(496, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:01:26', '2020-11-21 05:01:26'),
(497, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:01:52', '2020-11-21 05:01:52'),
(498, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:01:57', '2020-11-21 05:01:57'),
(499, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:02:18', '2020-11-21 05:02:18'),
(500, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:02:28', '2020-11-21 05:02:28'),
(501, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:02:43', '2020-11-21 05:02:43'),
(502, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:04:14', '2020-11-21 05:04:14'),
(503, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:05:13', '2020-11-21 05:05:13'),
(504, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"permission\":[\"13\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:05:38', '2020-11-21 05:05:38'),
(505, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:05:38', '2020-11-21 05:05:38'),
(506, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:05:41', '2020-11-21 05:05:41'),
(507, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:06:02', '2020-11-21 05:06:02'),
(508, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:07:38', '2020-11-21 05:07:38'),
(509, 1, 'sc_admin/permission/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:08:12', '2020-11-21 05:08:12'),
(510, 1, 'sc_admin/permission/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"Role manager\",\"slug\":\"rolemanager\",\"http_uri\":[\"ANY::sc_admin\\/role\\/*\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:08:49', '2020-11-21 05:08:49'),
(511, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:08:49', '2020-11-21 05:08:49'),
(512, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:08:55', '2020-11-21 05:08:55'),
(513, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:08:58', '2020-11-21 05:08:58'),
(514, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"permission\":[\"14\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:09:05', '2020-11-21 05:09:05'),
(515, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:09:05', '2020-11-21 05:09:05'),
(516, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:09:08', '2020-11-21 05:09:08'),
(517, 2, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:09:23', '2020-11-21 05:09:23'),
(518, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:09:37', '2020-11-21 05:09:37'),
(519, 1, 'sc_admin/permission/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:09:40', '2020-11-21 05:09:40'),
(520, 1, 'sc_admin/permission/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"Manage Profile\",\"slug\":\"profilemanager\",\"http_uri\":[\"ANY::sc_admin\\/user\\/*\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:10:16', '2020-11-21 05:10:16'),
(521, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:17', '2020-11-21 05:10:17'),
(522, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:22', '2020-11-21 05:10:22'),
(523, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:26', '2020-11-21 05:10:26'),
(524, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:30', '2020-11-21 05:10:30'),
(525, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:32', '2020-11-21 05:10:32'),
(526, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"permission\":[\"15\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:10:42', '2020-11-21 05:10:42'),
(527, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:43', '2020-11-21 05:10:43'),
(528, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:47', '2020-11-21 05:10:47'),
(529, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:49', '2020-11-21 05:10:49'),
(530, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:52', '2020-11-21 05:10:52'),
(531, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:10:57', '2020-11-21 05:10:57'),
(532, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:11:00', '2020-11-21 05:11:00'),
(533, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:11:03', '2020-11-21 05:11:03'),
(534, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:11:16', '2020-11-21 05:11:16'),
(535, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:13:35', '2020-11-21 05:13:35'),
(536, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:13:39', '2020-11-21 05:13:39'),
(537, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:13:39', '2020-11-21 05:13:39'),
(538, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:13:49', '2020-11-21 05:13:49'),
(539, 1, 'sc_admin/permission/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:13:52', '2020-11-21 05:13:52'),
(540, 1, 'sc_admin/permission/edit/15', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"User Manager\",\"slug\":\"profilemanager\",\"http_uri\":[\"ANY::sc_admin\\/user\\/*\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:14:06', '2020-11-21 05:14:06'),
(541, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:14:06', '2020-11-21 05:14:06'),
(542, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:15:34', '2020-11-21 05:15:34'),
(543, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:15:54', '2020-11-21 05:15:54'),
(544, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:16:16', '2020-11-21 05:16:16'),
(545, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:16:19', '2020-11-21 05:16:19'),
(546, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"permission\":[\"15\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:16:33', '2020-11-21 05:16:33'),
(547, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:16:34', '2020-11-21 05:16:34'),
(548, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:16:40', '2020-11-21 05:16:40'),
(549, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:16:49', '2020-11-21 05:16:49'),
(550, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:16:52', '2020-11-21 05:16:52'),
(551, 1, 'sc_admin/role/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":\"seller\",\"permission\":[\"7\",\"5\"],\"administrators\":[\"2\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:17:02', '2020-11-21 05:17:02'),
(552, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:03', '2020-11-21 05:17:03'),
(553, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:06', '2020-11-21 05:17:06'),
(554, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:22', '2020-11-21 05:17:22'),
(555, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:28', '2020-11-21 05:17:28'),
(556, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 05:17:33', '2020-11-21 05:17:33'),
(557, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:34', '2020-11-21 05:17:34'),
(558, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:47', '2020-11-21 05:17:47'),
(559, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:50', '2020-11-21 05:17:50'),
(560, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:17:58', '2020-11-21 05:17:58'),
(561, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:00', '2020-11-21 05:18:00'),
(562, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:18:07', '2020-11-21 05:18:07'),
(563, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:07', '2020-11-21 05:18:07'),
(564, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:14', '2020-11-21 05:18:14'),
(565, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:18', '2020-11-21 05:18:18'),
(566, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:20', '2020-11-21 05:18:20'),
(567, 1, 'sc_admin/role/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":\"seller\",\"permission\":[\"7\",\"5\",\"15\"],\"administrators\":[\"2\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:18:26', '2020-11-21 05:18:26'),
(568, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:26', '2020-11-21 05:18:26'),
(569, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:30', '2020-11-21 05:18:30'),
(570, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:34', '2020-11-21 05:18:34'),
(571, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:36', '2020-11-21 05:18:36'),
(572, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:38', '2020-11-21 05:18:38'),
(573, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 05:18:43', '2020-11-21 05:18:43'),
(574, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:43', '2020-11-21 05:18:43'),
(575, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:49', '2020-11-21 05:18:49'),
(576, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:18:59', '2020-11-21 05:18:59'),
(577, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:19:03', '2020-11-21 05:19:03'),
(578, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:19:05', '2020-11-21 05:19:05'),
(579, 1, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 05:19:33', '2020-11-21 05:19:33'),
(580, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:19:33', '2020-11-21 05:19:33'),
(581, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:19:38', '2020-11-21 05:19:38'),
(582, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:19:42', '2020-11-21 05:19:42'),
(583, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:20:18', '2020-11-21 05:20:18'),
(584, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 05:20:35', '2020-11-21 05:20:35'),
(585, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:20:35', '2020-11-21 05:20:35');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(586, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:20:37', '2020-11-21 05:20:37'),
(587, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 05:20:39', '2020-11-21 05:20:39'),
(588, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:20:40', '2020-11-21 05:20:40'),
(589, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:32:56', '2020-11-21 05:32:56'),
(590, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:33:00', '2020-11-21 05:33:00'),
(591, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:33:03', '2020-11-21 05:33:03'),
(592, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:34:15', '2020-11-21 05:34:15'),
(593, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:34:17', '2020-11-21 05:34:17'),
(594, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:36:07', '2020-11-21 05:36:07'),
(595, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:36:10', '2020-11-21 05:36:10'),
(596, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:36:20', '2020-11-21 05:36:20'),
(597, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:36:21', '2020-11-21 05:36:21'),
(598, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 05:36:27', '2020-11-21 05:36:27'),
(599, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 05:36:27', '2020-11-21 05:36:27'),
(600, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:13:11', '2020-11-21 06:13:11'),
(601, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:26:25', '2020-11-21 06:26:25'),
(602, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:26:33', '2020-11-21 06:26:33'),
(603, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:26:47', '2020-11-21 06:26:47'),
(604, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:27:33', '2020-11-21 06:27:33'),
(605, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:30:23', '2020-11-21 06:30:23'),
(606, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:30:29', '2020-11-21 06:30:29'),
(607, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:30:38', '2020-11-21 06:30:38'),
(608, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:37:43', '2020-11-21 06:37:43'),
(609, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:37:47', '2020-11-21 06:37:47'),
(610, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:37:51', '2020-11-21 06:37:51'),
(611, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:17', '2020-11-21 06:38:17'),
(612, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:20', '2020-11-21 06:38:20'),
(613, 1, 'sc_admin/permission/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:24', '2020-11-21 06:38:24'),
(614, 1, 'sc_admin/permission/edit/15', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"User Manager\",\"slug\":\"profilemanager\",\"http_uri\":[\"GET::sc_admin\\/user\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 06:38:37', '2020-11-21 06:38:37'),
(615, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:37', '2020-11-21 06:38:37'),
(616, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:41', '2020-11-21 06:38:41'),
(617, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:44', '2020-11-21 06:38:44'),
(618, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:47', '2020-11-21 06:38:47'),
(619, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:49', '2020-11-21 06:38:49'),
(620, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:51', '2020-11-21 06:38:51'),
(621, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:54', '2020-11-21 06:38:54'),
(622, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:56', '2020-11-21 06:38:56'),
(623, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:38:58', '2020-11-21 06:38:58'),
(624, 1, 'sc_admin/permission/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:39:04', '2020-11-21 06:39:04'),
(625, 1, 'sc_admin/permission/edit/15', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"User Manager\",\"slug\":\"profilemanager\",\"http_uri\":[\"GET::sc_admin\\/user\",\"GET::sc_admin\\/user\\/edit\\/{id}\",\"POST::sc_admin\\/user\\/edit\\/{id}\"],\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 06:39:37', '2020-11-21 06:39:37'),
(626, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:39:37', '2020-11-21 06:39:37'),
(627, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:39:41', '2020-11-21 06:39:41'),
(628, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:40:03', '2020-11-21 06:40:03'),
(629, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:40:05', '2020-11-21 06:40:05'),
(630, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:40:07', '2020-11-21 06:40:07'),
(631, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:40:10', '2020-11-21 06:40:10'),
(632, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:40:11', '2020-11-21 06:40:11'),
(633, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:40:25', '2020-11-21 06:40:25'),
(634, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:40:43', '2020-11-21 06:40:43'),
(635, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:42:59', '2020-11-21 06:42:59'),
(636, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:43:02', '2020-11-21 06:43:02'),
(637, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:43:02', '2020-11-21 06:43:02'),
(638, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:43:05', '2020-11-21 06:43:05'),
(639, 2, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:43:12', '2020-11-21 06:43:12'),
(640, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:43:23', '2020-11-21 06:43:23'),
(641, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:43:27', '2020-11-21 06:43:27'),
(642, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:44:41', '2020-11-21 06:44:41'),
(643, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:44:59', '2020-11-21 06:44:59'),
(644, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:45:01', '2020-11-21 06:45:01'),
(645, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"ownera\",\"keyword\":\"ownera\",\"description\":\"ownera\",\"content\":\"ownera\"}},\"owner\":\"aaa\",\"category\":[\"3\"],\"image\":null,\"sku\":\"ownera\",\"alias\":\"ownera\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:45:22', '2020-11-21 06:45:22'),
(646, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:45:23', '2020-11-21 06:45:23'),
(647, 2, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:46:33', '2020-11-21 06:46:33'),
(648, 2, 'sc_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 17\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"89\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:46:37', '2020-11-21 06:46:37'),
(649, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:46:38', '2020-11-21 06:46:38'),
(650, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 06:46:43', '2020-11-21 06:46:43'),
(651, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 06:46:46', '2020-11-21 06:46:46'),
(652, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:46:49', '2020-11-21 06:46:49'),
(653, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:48:14', '2020-11-21 06:48:14'),
(654, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:48:16', '2020-11-21 06:48:16'),
(655, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"21\",\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 06:48:35', '2020-11-21 06:48:35'),
(656, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 06:48:36', '2020-11-21 06:48:36'),
(657, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:48:45', '2020-11-21 06:48:45'),
(658, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:49:07', '2020-11-21 06:49:07'),
(659, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"20\",\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 06:51:17', '2020-11-21 06:51:17'),
(660, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 06:51:18', '2020-11-21 06:51:18'),
(661, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:51:23', '2020-11-21 06:51:23'),
(662, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:51:26', '2020-11-21 06:51:26'),
(663, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:51:47', '2020-11-21 06:51:47'),
(664, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:51:56', '2020-11-21 06:51:56'),
(665, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"sadacsad\",\"keyword\":\"sadcxz\",\"description\":\"asdascsa\",\"content\":\"sadq\"}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"asdcxz\",\"alias\":\"asdcc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:52:13', '2020-11-21 06:52:13'),
(666, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:52:14', '2020-11-21 06:52:14'),
(667, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:52:27', '2020-11-21 06:52:27'),
(668, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:55:55', '2020-11-21 06:55:55'),
(669, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:56:15', '2020-11-21 06:56:15'),
(670, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:57:28', '2020-11-21 06:57:28'),
(671, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:57:31', '2020-11-21 06:57:31'),
(672, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:57:35', '2020-11-21 06:57:35'),
(673, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:57:44', '2020-11-21 06:57:44'),
(674, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"dscf\",\"keyword\":\"ascsxc\",\"description\":\"asdqwd\",\"content\":null}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"asdacxz\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:57:54', '2020-11-21 06:57:54'),
(675, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:57:55', '2020-11-21 06:57:55'),
(676, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"dscf\",\"keyword\":\"ascsxc\",\"description\":\"asdqwd\",\"content\":\"xzcas\"}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"asdacxz\",\"alias\":\"dscf\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 06:57:59', '2020-11-21 06:57:59'),
(677, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 06:58:00', '2020-11-21 06:58:00'),
(678, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:02:41', '2020-11-21 07:02:41'),
(679, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"sdc\",\"keyword\":\"cef\",\"description\":\"cxc\",\"content\":null}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"dscxzczxc\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:02:54', '2020-11-21 07:02:54'),
(680, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:02:54', '2020-11-21 07:02:54'),
(681, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"sdc\",\"keyword\":\"cef\",\"description\":\"cxc\",\"content\":\"dscsdc\"}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"dscxzczxc\",\"alias\":\"sdc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:02:58', '2020-11-21 07:02:58'),
(682, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:02:59', '2020-11-21 07:02:59'),
(683, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:03:02', '2020-11-21 07:03:02'),
(684, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"cvzxc\",\"keyword\":\"zxxzc\",\"description\":\"zxcz\",\"content\":\"sacaq\"}},\"owner\":\"aaa\",\"category\":[\"3\"],\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:03:11', '2020-11-21 07:03:11'),
(685, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:03:12', '2020-11-21 07:03:12'),
(686, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"cvzxc\",\"keyword\":\"zxxzc\",\"description\":\"zxcz\",\"content\":\"sacaq\"}},\"owner\":\"aaa\",\"category\":[\"3\"],\"image\":null,\"sku\":\"sadascxz\",\"alias\":\"cvzxc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:03:16', '2020-11-21 07:03:16'),
(687, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:03:17', '2020-11-21 07:03:17'),
(688, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"19\",\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 07:03:37', '2020-11-21 07:03:37'),
(689, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 07:03:38', '2020-11-21 07:03:38'),
(690, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"25\",\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 07:03:41', '2020-11-21 07:03:41'),
(691, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 07:03:42', '2020-11-21 07:03:42'),
(692, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"24\",\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 07:03:44', '2020-11-21 07:03:44'),
(693, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 07:03:45', '2020-11-21 07:03:45'),
(694, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:03:48', '2020-11-21 07:03:48'),
(695, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:04:03', '2020-11-21 07:04:03'),
(696, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:14', '2020-11-21 07:06:14'),
(697, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:16', '2020-11-21 07:06:16'),
(698, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:18', '2020-11-21 07:06:18'),
(699, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"sdcxzc\",\"keyword\":\"adssad\",\"description\":\"awdwsd\",\"content\":null}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"sadcaxc\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:06:26', '2020-11-21 07:06:26'),
(700, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:27', '2020-11-21 07:06:27'),
(701, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"sdcxzc\",\"keyword\":\"adssad\",\"description\":\"awdwsd\",\"content\":\"ascasc\"}},\"owner\":\"aaa\",\"category\":[\"5\"],\"image\":null,\"sku\":\"sadcaxc\",\"alias\":\"sdcxzc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:06:31', '2020-11-21 07:06:31'),
(702, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:31', '2020-11-21 07:06:31'),
(703, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:41', '2020-11-21 07:06:41'),
(704, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"18\",\"_token\":\"kv5yAmSFcM057cc7LZ3Oq4RQxyHksU412k5STXVk\"}', '2020-11-21 07:06:48', '2020-11-21 07:06:48'),
(705, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 07:06:48', '2020-11-21 07:06:48'),
(706, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:06:51', '2020-11-21 07:06:51'),
(707, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:07:37', '2020-11-21 07:07:37'),
(708, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:07:44', '2020-11-21 07:07:44'),
(709, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:07:45', '2020-11-21 07:07:45'),
(710, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"asdc\",\"keyword\":\"acscas\",\"description\":\"wqdqwd\",\"content\":null}},\"owner\":\"aaa\",\"category\":[\"7\"],\"image\":null,\"sku\":\"sacxc\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:07:56', '2020-11-21 07:07:56'),
(711, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:07:56', '2020-11-21 07:07:56'),
(712, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"asdc\",\"keyword\":\"acscas\",\"description\":\"wqdqwd\",\"content\":\"saca\"}},\"owner\":\"aaa\",\"category\":[\"7\"],\"image\":null,\"sku\":\"sacxc\",\"alias\":\"asdc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:08:01', '2020-11-21 07:08:01'),
(713, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:01', '2020-11-21 07:08:01'),
(714, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:04', '2020-11-21 07:08:04'),
(715, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"wadq\",\"keyword\":\"asdac\",\"description\":\"qsdasc\",\"content\":\"asdcaxc\"}},\"owner\":\"aaa\",\"category\":[\"6\"],\"image\":null,\"sku\":\"scacqw\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:08:13', '2020-11-21 07:08:13'),
(716, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:13', '2020-11-21 07:08:13'),
(717, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:27', '2020-11-21 07:08:27'),
(718, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:29', '2020-11-21 07:08:29'),
(719, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"ascasc\",\"keyword\":\"asdqwd\",\"description\":\"sacascxa\",\"content\":null}},\"owner\":\"aaa\",\"category\":[\"3\"],\"image\":null,\"sku\":\"ascxzc\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:08:41', '2020-11-21 07:08:41'),
(720, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:42', '2020-11-21 07:08:42'),
(721, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"ascasc\",\"keyword\":\"asdqwd\",\"description\":\"sacascxa\",\"content\":\"sadcasc\"}},\"owner\":\"aaa\",\"category\":[\"3\"],\"image\":null,\"sku\":\"ascxzc\",\"alias\":\"ascasc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"oYBNlJE10nRoKTBImdYrmEavFfZwlrAxSclsJbK6\"}', '2020-11-21 07:08:45', '2020-11-21 07:08:45'),
(722, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:08:45', '2020-11-21 07:08:45'),
(723, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:09:37', '2020-11-21 07:09:37'),
(724, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:09:41', '2020-11-21 07:09:41'),
(725, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:09:46', '2020-11-21 07:09:46'),
(726, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:10:06', '2020-11-21 07:10:06'),
(727, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:10:19', '2020-11-21 07:10:19'),
(728, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:13:02', '2020-11-21 07:13:02'),
(729, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:13:05', '2020-11-21 07:13:05'),
(730, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:13:10', '2020-11-21 07:13:10'),
(731, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-21 07:13:13', '2020-11-21 07:13:13'),
(732, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:30:03', '2020-11-22 04:30:03'),
(733, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:30:08', '2020-11-22 04:30:08'),
(734, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:30:12', '2020-11-22 04:30:12'),
(735, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:30:35', '2020-11-22 04:30:35'),
(736, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:32:43', '2020-11-22 04:32:43'),
(737, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:33:45', '2020-11-22 04:33:45'),
(738, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:34:08', '2020-11-22 04:34:08'),
(739, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:35:35', '2020-11-22 04:35:35'),
(740, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:36:49', '2020-11-22 04:36:49'),
(741, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:37:01', '2020-11-22 04:37:01'),
(742, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:37:16', '2020-11-22 04:37:16'),
(743, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:37:20', '2020-11-22 04:37:20'),
(744, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:37:30', '2020-11-22 04:37:30'),
(745, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:38:36', '2020-11-22 04:38:36'),
(746, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:38:40', '2020-11-22 04:38:40'),
(747, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:41:33', '2020-11-22 04:41:33'),
(748, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:41:56', '2020-11-22 04:41:56'),
(749, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:42:15', '2020-11-22 04:42:15'),
(750, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:58:40', '2020-11-22 04:58:40'),
(751, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:59:07', '2020-11-22 04:59:07'),
(752, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 04:59:10', '2020-11-22 04:59:10'),
(753, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:02:40', '2020-11-22 05:02:40'),
(754, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:12:07', '2020-11-22 05:12:07'),
(755, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:12:34', '2020-11-22 05:12:34'),
(756, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:16:37', '2020-11-22 05:16:37'),
(757, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:16:40', '2020-11-22 05:16:40'),
(758, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:16:44', '2020-11-22 05:16:44'),
(759, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:16:55', '2020-11-22 05:16:55'),
(760, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:17:04', '2020-11-22 05:17:04'),
(761, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:17:27', '2020-11-22 05:17:27'),
(762, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:17:30', '2020-11-22 05:17:30'),
(763, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:17:37', '2020-11-22 05:17:37'),
(764, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:39:29', '2020-11-22 05:39:29'),
(765, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:40:49', '2020-11-22 05:40:49'),
(766, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 05:40:54', '2020-11-22 05:40:54'),
(767, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:08:07', '2020-11-22 06:08:07');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(768, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:15:57', '2020-11-22 06:15:57'),
(769, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:16:12', '2020-11-22 06:16:12'),
(770, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:16:19', '2020-11-22 06:16:19'),
(771, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:16:27', '2020-11-22 06:16:27'),
(772, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:17:02', '2020-11-22 06:17:02'),
(773, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:18:42', '2020-11-22 06:18:42'),
(774, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:18:58', '2020-11-22 06:18:58'),
(775, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:19:20', '2020-11-22 06:19:20'),
(776, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:19:30', '2020-11-22 06:19:30'),
(777, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:21:40', '2020-11-22 06:21:40'),
(778, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:21:47', '2020-11-22 06:21:47'),
(779, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:21:53', '2020-11-22 06:21:53'),
(780, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:21:59', '2020-11-22 06:21:59'),
(781, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:22:11', '2020-11-22 06:22:11'),
(782, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:22:26', '2020-11-22 06:22:26'),
(783, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:22:38', '2020-11-22 06:22:38'),
(784, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:23:06', '2020-11-22 06:23:06'),
(785, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:24:31', '2020-11-22 06:24:31'),
(786, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:24:41', '2020-11-22 06:24:41'),
(787, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:24:45', '2020-11-22 06:24:45'),
(788, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:25:06', '2020-11-22 06:25:06'),
(789, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:25:12', '2020-11-22 06:25:12'),
(790, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:25:23', '2020-11-22 06:25:23'),
(791, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:25:38', '2020-11-22 06:25:38'),
(792, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:25:50', '2020-11-22 06:25:50'),
(793, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:25:58', '2020-11-22 06:25:58'),
(794, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:26:10', '2020-11-22 06:26:10'),
(795, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:27:08', '2020-11-22 06:27:08'),
(796, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:27:18', '2020-11-22 06:27:18'),
(797, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:33:42', '2020-11-22 06:33:42'),
(798, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:33:47', '2020-11-22 06:33:47'),
(799, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:36:18', '2020-11-22 06:36:18'),
(800, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:36:46', '2020-11-22 06:36:46'),
(801, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:37:06', '2020-11-22 06:37:06'),
(802, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:37:23', '2020-11-22 06:37:23'),
(803, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:39:47', '2020-11-22 06:39:47'),
(804, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:43:49', '2020-11-22 06:43:49'),
(805, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:45:52', '2020-11-22 06:45:52'),
(806, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:45:57', '2020-11-22 06:45:57'),
(807, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:46:02', '2020-11-22 06:46:02'),
(808, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:46:19', '2020-11-22 06:46:19'),
(809, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:47:31', '2020-11-22 06:47:31'),
(810, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:48:32', '2020-11-22 06:48:32'),
(811, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:50:21', '2020-11-22 06:50:21'),
(812, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:51:21', '2020-11-22 06:51:21'),
(813, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:52:57', '2020-11-22 06:52:57'),
(814, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:53:29', '2020-11-22 06:53:29'),
(815, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:53:43', '2020-11-22 06:53:43'),
(816, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:54:27', '2020-11-22 06:54:27'),
(817, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:56:29', '2020-11-22 06:56:29'),
(818, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:57:03', '2020-11-22 06:57:03'),
(819, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:57:32', '2020-11-22 06:57:32'),
(820, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:57:47', '2020-11-22 06:57:47'),
(821, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:58:01', '2020-11-22 06:58:01'),
(822, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:58:57', '2020-11-22 06:58:57'),
(823, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:59:09', '2020-11-22 06:59:09'),
(824, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 06:59:14', '2020-11-22 06:59:14'),
(825, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:08:16', '2020-11-22 07:08:16'),
(826, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:08:20', '2020-11-22 07:08:20'),
(827, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:09:38', '2020-11-22 07:09:38'),
(828, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:10:16', '2020-11-22 07:10:16'),
(829, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:10:34', '2020-11-22 07:10:34'),
(830, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:13', '2020-11-22 07:11:13'),
(831, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:19', '2020-11-22 07:11:19'),
(832, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:21', '2020-11-22 07:11:21'),
(833, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:30', '2020-11-22 07:11:30'),
(834, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:32', '2020-11-22 07:11:32'),
(835, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:34', '2020-11-22 07:11:34'),
(836, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:11:39', '2020-11-22 07:11:39'),
(837, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:12:23', '2020-11-22 07:12:23'),
(838, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:12:27', '2020-11-22 07:12:27'),
(839, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:13:10', '2020-11-22 07:13:10'),
(840, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:14:07', '2020-11-22 07:14:07'),
(841, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:14:42', '2020-11-22 07:14:42'),
(842, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:15:08', '2020-11-22 07:15:08'),
(843, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:15:31', '2020-11-22 07:15:31'),
(844, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:16:25', '2020-11-22 07:16:25'),
(845, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:16:32', '2020-11-22 07:16:32'),
(846, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:16:40', '2020-11-22 07:16:40'),
(847, 1, 'sc_admin/order/detail/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:16:42', '2020-11-22 07:16:42'),
(848, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:16:58', '2020-11-22 07:16:58'),
(849, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:17:01', '2020-11-22 07:17:01'),
(850, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:24:34', '2020-11-22 07:24:34'),
(851, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:24:36', '2020-11-22 07:24:36'),
(852, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:32:31', '2020-11-22 07:32:31'),
(853, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:32:38', '2020-11-22 07:32:38'),
(854, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:32:41', '2020-11-22 07:32:41'),
(855, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:32:50', '2020-11-22 07:32:50'),
(856, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:34:33', '2020-11-22 07:34:33'),
(857, 1, 'sc_admin/order/detail/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-22 07:34:38', '2020-11-22 07:34:38'),
(858, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 04:51:12', '2020-11-23 04:51:12'),
(859, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 04:51:15', '2020-11-23 04:51:15'),
(860, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 04:51:18', '2020-11-23 04:51:18'),
(861, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"phone\":\"214213123\",\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"npuJNGl5YROSkOyXNBK2LPGnTUcmPQ7pkQdzZgVH\"}', '2020-11-23 04:51:31', '2020-11-23 04:51:31'),
(862, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 04:51:32', '2020-11-23 04:51:32'),
(863, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:10:54', '2020-11-23 05:10:54'),
(864, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:11:15', '2020-11-23 05:11:15'),
(865, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:11:21', '2020-11-23 05:11:21'),
(866, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:11:25', '2020-11-23 05:11:25'),
(867, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:11:32', '2020-11-23 05:11:32'),
(868, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"product\"}', '2020-11-23 05:13:38', '2020-11-23 05:13:38'),
(869, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112026914\"}', '2020-11-23 05:13:47', '2020-11-23 05:13:47'),
(870, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112026913\"}', '2020-11-23 05:13:47', '2020-11-23 05:13:47'),
(871, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606112026915\"}', '2020-11-23 05:13:48', '2020-11-23 05:13:48'),
(872, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"product\"}', '2020-11-23 05:14:03', '2020-11-23 05:14:03'),
(873, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112043651\"}', '2020-11-23 05:14:04', '2020-11-23 05:14:04'),
(874, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112043652\"}', '2020-11-23 05:14:04', '2020-11-23 05:14:04'),
(875, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606112043653\"}', '2020-11-23 05:14:04', '2020-11-23 05:14:04'),
(876, 1, 'sc_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 17\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"89\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yaBr3ASX9pbLJihi6McFYu9DUDXjeHxEyZ65lws2\"}', '2020-11-23 05:14:27', '2020-11-23 05:14:27'),
(877, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:14:27', '2020-11-23 05:14:27'),
(878, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:14:49', '2020-11-23 05:14:49'),
(879, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"product\",\"CKEditor\":\"en__content\",\"CKEditorFuncNum\":\"1\",\"langCode\":\"zh-cn\"}', '2020-11-23 05:15:08', '2020-11-23 05:15:08'),
(880, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112108482\"}', '2020-11-23 05:15:09', '2020-11-23 05:15:09'),
(881, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112108481\"}', '2020-11-23 05:15:09', '2020-11-23 05:15:09'),
(882, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606112108483\"}', '2020-11-23 05:15:09', '2020-11-23 05:15:09'),
(883, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"product\",\"CKEditor\":\"en__content\",\"CKEditorFuncNum\":\"1\",\"langCode\":\"zh-cn\"}', '2020-11-23 05:15:23', '2020-11-23 05:15:23'),
(884, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112124035\"}', '2020-11-23 05:15:24', '2020-11-23 05:15:24'),
(885, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606112124036\"}', '2020-11-23 05:15:24', '2020-11-23 05:15:24'),
(886, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606112124037\"}', '2020-11-23 05:15:25', '2020-11-23 05:15:25'),
(887, 1, 'sc_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 17\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" \\/><img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" \\/><\\/p>\\r\\n<img src=\\\"http:\\/\\/localhost\\/s-cart\\/public\\/templates\\/s-cart-light\\/images\\/ie8-panel\\/warning_bar_0000_us.jpg\\\" height=\\\"42\\\" width=\\\"820\\\" alt=\\\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\\\">\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"89\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yaBr3ASX9pbLJihi6McFYu9DUDXjeHxEyZ65lws2\"}', '2020-11-23 05:16:53', '2020-11-23 05:16:53'),
(888, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:16:53', '2020-11-23 05:16:53'),
(889, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:29:59', '2020-11-23 05:29:59'),
(890, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:30:01', '2020-11-23 05:30:01'),
(891, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:52:54', '2020-11-23 05:52:54'),
(892, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:53:03', '2020-11-23 05:53:03'),
(893, 1, 'sc_admin/product/edit/29', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:53:28', '2020-11-23 05:53:28'),
(894, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 05:59:31', '2020-11-23 05:59:31'),
(895, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:00:04', '2020-11-23 06:00:04'),
(896, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:05:46', '2020-11-23 06:05:46'),
(897, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:05:51', '2020-11-23 06:05:51'),
(898, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:09:22', '2020-11-23 06:09:22'),
(899, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:09:25', '2020-11-23 06:09:25'),
(900, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:09:31', '2020-11-23 06:09:31'),
(901, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:11:37', '2020-11-23 06:11:37'),
(902, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:12:34', '2020-11-23 06:12:34'),
(903, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:12:41', '2020-11-23 06:12:41'),
(904, 1, 'sc_admin/product/edit/29', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:12:46', '2020-11-23 06:12:46'),
(905, 1, 'sc_admin/product/edit/29', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"ascascdf\",\"keyword\":\"asdqwda\",\"description\":\"sacascxa\",\"content\":\"sadcasc\"}},\"category\":[\"3\"],\"image\":null,\"sku\":\"ascxzc\",\"alias\":\"ascasc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yaBr3ASX9pbLJihi6McFYu9DUDXjeHxEyZ65lws2\"}', '2020-11-23 06:12:54', '2020-11-23 06:12:54'),
(906, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:12:55', '2020-11-23 06:12:55'),
(907, 1, 'sc_admin/product/edit/29', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:12:59', '2020-11-23 06:12:59'),
(908, 1, 'sc_admin/product/edit/29', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"ascascdfz\",\"keyword\":\"asdqwda\",\"description\":\"sacascxa\",\"content\":\"sadcasc\"}},\"category\":[\"3\"],\"image\":null,\"sku\":\"ascxzc\",\"alias\":\"ascasc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yaBr3ASX9pbLJihi6McFYu9DUDXjeHxEyZ65lws2\"}', '2020-11-23 06:13:03', '2020-11-23 06:13:03'),
(909, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:04', '2020-11-23 06:13:04'),
(910, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:20', '2020-11-23 06:13:20'),
(911, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:25', '2020-11-23 06:13:25'),
(912, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:28', '2020-11-23 06:13:28'),
(913, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:39', '2020-11-23 06:13:39'),
(914, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:42', '2020-11-23 06:13:42'),
(915, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa123\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"phone\":\"214213123\",\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"6ymGT3iZ7FsycyBcPnfyjCTNpuyEW7wPyyHYPdvT\"}', '2020-11-23 06:13:51', '2020-11-23 06:13:51'),
(916, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:51', '2020-11-23 06:13:51'),
(917, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:55', '2020-11-23 06:13:55'),
(918, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:13:59', '2020-11-23 06:13:59'),
(919, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:01', '2020-11-23 06:14:01'),
(920, 2, 'sc_admin/user/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"aaa\",\"username\":\"aaa\",\"email\":\"aaa@gmail.com\",\"avatar\":null,\"phone\":\"214213123\",\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"6ymGT3iZ7FsycyBcPnfyjCTNpuyEW7wPyyHYPdvT\"}', '2020-11-23 06:14:07', '2020-11-23 06:14:07'),
(921, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:07', '2020-11-23 06:14:07'),
(922, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:10', '2020-11-23 06:14:10'),
(923, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:17', '2020-11-23 06:14:17'),
(924, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:26', '2020-11-23 06:14:26'),
(925, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:34', '2020-11-23 06:14:34'),
(926, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:14:41', '2020-11-23 06:14:41'),
(927, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:15:09', '2020-11-23 06:15:09'),
(928, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:15:59', '2020-11-23 06:15:59'),
(929, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:16:01', '2020-11-23 06:16:01'),
(930, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"sdasc\",\"keyword\":\"ascsac\",\"description\":\"asdqawd\",\"content\":\"cascxzc\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"5\"],\"image\":null,\"sku\":\"cacwq\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bOYVnDIDWrJ2RAPTxpOFWOSNCqXdAB8O9R9UJUpj\"}', '2020-11-23 06:16:15', '2020-11-23 06:16:15'),
(931, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:16:16', '2020-11-23 06:16:16'),
(932, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:17:03', '2020-11-23 06:17:03'),
(933, 1, 'sc_admin/product/edit/30', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:17:06', '2020-11-23 06:17:06'),
(934, 1, 'sc_admin/product/edit/30', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"sdasczz\",\"keyword\":\"ascsac\",\"description\":\"asdqawd\",\"content\":\"cascxzc\"}},\"category\":[\"5\"],\"image\":null,\"sku\":\"cacwq\",\"alias\":\"sdasc\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bOYVnDIDWrJ2RAPTxpOFWOSNCqXdAB8O9R9UJUpj\"}', '2020-11-23 06:17:59', '2020-11-23 06:17:59'),
(935, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:17:59', '2020-11-23 06:17:59'),
(936, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:20:14', '2020-11-23 06:20:14'),
(937, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:20:18', '2020-11-23 06:20:18'),
(938, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:21:10', '2020-11-23 06:21:10'),
(939, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:21:17', '2020-11-23 06:21:17'),
(940, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:21:25', '2020-11-23 06:21:25'),
(941, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:21:28', '2020-11-23 06:21:28'),
(942, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:23:14', '2020-11-23 06:23:14'),
(943, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:23:33', '2020-11-23 06:23:33'),
(944, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:23:41', '2020-11-23 06:23:41'),
(945, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:24:15', '2020-11-23 06:24:15'),
(946, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:24:18', '2020-11-23 06:24:18'),
(947, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:26:18', '2020-11-23 06:26:18'),
(948, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:26:26', '2020-11-23 06:26:26'),
(949, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:26:32', '2020-11-23 06:26:32'),
(950, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:26:36', '2020-11-23 06:26:36'),
(951, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:26:39', '2020-11-23 06:26:39'),
(952, 2, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"scxzca\",\"keyword\":\"qwdwq\",\"description\":\"csacxzc\",\"content\":\"asdsad\"}},\"owner\":\"aaa\",\"user_id\":\"2\",\"category\":[\"3\"],\"image\":null,\"sku\":\"wqdscxz\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"OPJtty0lzcNfyHUnog7u8udKQsRspsAs6ci9vKBQ\"}', '2020-11-23 06:26:50', '2020-11-23 06:26:50'),
(953, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 06:26:50', '2020-11-23 06:26:50'),
(954, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:07:34', '2020-11-23 07:07:34'),
(955, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:09:54', '2020-11-23 07:09:54'),
(956, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:10:06', '2020-11-23 07:10:06'),
(957, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:10:14', '2020-11-23 07:10:14'),
(958, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:10:19', '2020-11-23 07:10:19'),
(959, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"default\",\"username\":\"default\",\"email\":\"default@gmail.com\",\"avatar\":null,\"phone\":\"123213213123\",\"password\":\"default\",\"password_confirmation\":\"default\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"SaEKHTWjWR54eGyq2gk54wMSALlTvPttFpRLZVbG\"}', '2020-11-23 07:10:49', '2020-11-23 07:10:49'),
(960, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:10:49', '2020-11-23 07:10:49'),
(961, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:14:10', '2020-11-23 07:14:10'),
(962, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:14:15', '2020-11-23 07:14:15');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(963, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"dfasd\",\"keyword\":\"tekd\",\"description\":\"qwe\",\"content\":\"qwe\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"3\"],\"image\":null,\"sku\":\"qwe\",\"alias\":\"qwe\",\"price\":\"123\",\"tax_id\":\"0\",\"stock\":\"123\",\"weight_class\":\"lb\",\"weight\":\"-10\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"SaEKHTWjWR54eGyq2gk54wMSALlTvPttFpRLZVbG\"}', '2020-11-23 07:14:44', '2020-11-23 07:14:44'),
(964, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:14:45', '2020-11-23 07:14:45'),
(965, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-23 07:53:00', '2020-11-23 07:53:00'),
(966, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:15:49', '2020-11-24 10:15:49'),
(967, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:18:18', '2020-11-24 10:18:18'),
(968, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:28:46', '2020-11-24 10:28:46'),
(969, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"phone\",\"value\":\"0161139246\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:29:22', '2020-11-24 10:29:22'),
(970, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"Support: 091029384\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:30:02', '2020-11-24 10:30:02'),
(971, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"address\",\"value\":\"Jonker Street Night Market, Jalan Hang Jebat, 75200 Malacca\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:32:09', '2020-11-24 10:32:09'),
(972, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"timezone\",\"value\":\"Asia\\/Kuala_Lumpur\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:32:31', '2020-11-24 10:32:31'),
(973, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"Second hand Bookstore: A plat form to trade books.\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:33:18', '2020-11-24 10:33:18'),
(974, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"Second hand Bookstore: A plat form to trade second hand books.\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:33:35', '2020-11-24 10:33:35'),
(975, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"Second hand Bookstore\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:34:14', '2020-11-24 10:34:14'),
(976, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"A platform to trade second hand books.\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:34:23', '2020-11-24 10:34:23'),
(977, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:35:58', '2020-11-24 10:35:58'),
(978, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:36:20', '2020-11-24 10:36:20'),
(979, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:38:19', '2020-11-24 10:38:19'),
(980, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:38:25', '2020-11-24 10:38:25'),
(981, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"Second hand Bookstore: A platform to trade second hand books.\",\"pk\":null,\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\",\"storeId\":\"1\"}', '2020-11-24 10:38:32', '2020-11-24 10:38:32'),
(982, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:52:38', '2020-11-24 10:52:38'),
(983, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:52:43', '2020-11-24 10:52:43'),
(984, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 10:52:48', '2020-11-24 10:52:48'),
(985, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218768891\"}', '2020-11-24 10:52:49', '2020-11-24 10:52:49'),
(986, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218768892\"}', '2020-11-24 10:52:49', '2020-11-24 10:52:49'),
(987, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218768893\"}', '2020-11-24 10:52:49', '2020-11-24 10:52:49'),
(988, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:53:03', '2020-11-24 10:53:03'),
(989, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"logo\"}', '2020-11-24 10:53:05', '2020-11-24 10:53:05'),
(990, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1606218785333\"}', '2020-11-24 10:53:05', '2020-11-24 10:53:05'),
(991, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1606218785334\"}', '2020-11-24 10:53:05', '2020-11-24 10:53:05'),
(992, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218785335\"}', '2020-11-24 10:53:06', '2020-11-24 10:53:06'),
(993, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:54:01', '2020-11-24 10:54:01'),
(994, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:54:06', '2020-11-24 10:54:06'),
(995, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:54:29', '2020-11-24 10:54:29'),
(996, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:54:36', '2020-11-24 10:54:36'),
(997, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:54:38', '2020-11-24 10:54:38'),
(998, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 10:54:40', '2020-11-24 10:54:40'),
(999, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218881031\"}', '2020-11-24 10:54:41', '2020-11-24 10:54:41'),
(1000, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218881032\"}', '2020-11-24 10:54:41', '2020-11-24 10:54:41'),
(1001, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218881033\"}', '2020-11-24 10:54:41', '2020-11-24 10:54:41'),
(1002, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 10:54:47', '2020-11-24 10:54:47'),
(1003, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1606218881034\"}', '2020-11-24 10:54:48', '2020-11-24 10:54:48'),
(1004, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218881035\"}', '2020-11-24 10:54:48', '2020-11-24 10:54:48'),
(1005, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 10:55:24', '2020-11-24 10:55:24'),
(1006, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218924805\"}', '2020-11-24 10:55:25', '2020-11-24 10:55:25'),
(1007, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218924806\"}', '2020-11-24 10:55:25', '2020-11-24 10:55:25'),
(1008, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218924807\"}', '2020-11-24 10:55:26', '2020-11-24 10:55:26'),
(1009, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 10:55:46', '2020-11-24 10:55:46'),
(1010, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218947035\"}', '2020-11-24 10:55:47', '2020-11-24 10:55:47'),
(1011, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606218947034\"}', '2020-11-24 10:55:47', '2020-11-24 10:55:47'),
(1012, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218947036\"}', '2020-11-24 10:55:48', '2020-11-24 10:55:48'),
(1013, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 10:55:55', '2020-11-24 10:55:55'),
(1014, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1606218947037\"}', '2020-11-24 10:55:56', '2020-11-24 10:55:56'),
(1015, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606218947038\"}', '2020-11-24 10:55:56', '2020-11-24 10:55:56'),
(1016, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:57:25', '2020-11-24 10:57:25'),
(1017, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 10:57:29', '2020-11-24 10:57:29'),
(1018, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219050102\"}', '2020-11-24 10:57:30', '2020-11-24 10:57:30'),
(1019, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219050103\"}', '2020-11-24 10:57:30', '2020-11-24 10:57:30'),
(1020, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606219050104\"}', '2020-11-24 10:57:30', '2020-11-24 10:57:30'),
(1021, 1, 'sc_admin/user/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"Administrator\",\"username\":\"admin\",\"email\":\"zetanalpha@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/user.png\",\"phone\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 10:58:03', '2020-11-24 10:58:03'),
(1022, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:58:04', '2020-11-24 10:58:04'),
(1023, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:58:12', '2020-11-24 10:58:12'),
(1024, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:59:33', '2020-11-24 10:59:33'),
(1025, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 10:59:50', '2020-11-24 10:59:50'),
(1026, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:00:08', '2020-11-24 11:00:08'),
(1027, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:00:41', '2020-11-24 11:00:41'),
(1028, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:02:07', '2020-11-24 11:02:07'),
(1029, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:02:24', '2020-11-24 11:02:24'),
(1030, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:03:38', '2020-11-24 11:03:38'),
(1031, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:03:41', '2020-11-24 11:03:41'),
(1032, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:03:44', '2020-11-24 11:03:44'),
(1033, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:03:53', '2020-11-24 11:03:53'),
(1034, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:04:05', '2020-11-24 11:04:05'),
(1035, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:04:33', '2020-11-24 11:04:33'),
(1036, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 11:04:47', '2020-11-24 11:04:47'),
(1037, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219487799\"}', '2020-11-24 11:04:48', '2020-11-24 11:04:48'),
(1038, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219487800\"}', '2020-11-24 11:04:48', '2020-11-24 11:04:48'),
(1039, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606219487801\"}', '2020-11-24 11:04:49', '2020-11-24 11:04:49'),
(1040, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:05:59', '2020-11-24 11:05:59'),
(1041, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606219487802\"}', '2020-11-24 11:06:21', '2020-11-24 11:06:21'),
(1042, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:07:18', '2020-11-24 11:07:18'),
(1043, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1606219487803\"}', '2020-11-24 11:07:18', '2020-11-24 11:07:18'),
(1044, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606219487804\"}', '2020-11-24 11:07:19', '2020-11-24 11:07:19'),
(1045, 1, 'sc_admin/user/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"Administrator\",\"username\":\"admin\",\"email\":\"zetanalpha@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/user.png\",\"phone\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:07:42', '2020-11-24 11:07:42'),
(1046, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:07:43', '2020-11-24 11:07:43'),
(1047, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:08:05', '2020-11-24 11:08:05'),
(1048, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:08:20', '2020-11-24 11:08:20'),
(1049, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 11:08:24', '2020-11-24 11:08:24'),
(1050, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219704365\"}', '2020-11-24 11:08:24', '2020-11-24 11:08:24'),
(1051, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219704366\"}', '2020-11-24 11:08:24', '2020-11-24 11:08:24'),
(1052, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606219704367\"}', '2020-11-24 11:08:25', '2020-11-24 11:08:25'),
(1053, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:08:51', '2020-11-24 11:08:51'),
(1054, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 11:12:07', '2020-11-24 11:12:07'),
(1055, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219927366\"}', '2020-11-24 11:12:08', '2020-11-24 11:12:08'),
(1056, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606219927365\"}', '2020-11-24 11:12:08', '2020-11-24 11:12:08'),
(1057, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606219927367\"}', '2020-11-24 11:12:08', '2020-11-24 11:12:08'),
(1058, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:13:23', '2020-11-24 11:13:23'),
(1059, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:13:37', '2020-11-24 11:13:37'),
(1060, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-24 11:14:30', '2020-11-24 11:14:30'),
(1061, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606220071085\"}', '2020-11-24 11:14:31', '2020-11-24 11:14:31'),
(1062, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606220071086\"}', '2020-11-24 11:14:31', '2020-11-24 11:14:31'),
(1063, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606220071087\"}', '2020-11-24 11:14:32', '2020-11-24 11:14:32'),
(1064, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:14:40', '2020-11-24 11:14:40'),
(1065, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:23:46', '2020-11-24 11:23:46'),
(1066, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:23:48', '2020-11-24 11:23:48'),
(1067, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:26:11', '2020-11-24 11:26:11'),
(1068, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:29:02', '2020-11-24 11:29:02'),
(1069, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:30:22', '2020-11-24 11:30:22'),
(1070, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:30:39', '2020-11-24 11:30:39'),
(1071, 1, 'sc_admin/cache_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:34:08', '2020-11-24 11:34:08'),
(1072, 1, 'sc_admin/cache_config/clear_cache', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"action\":\"cache_all\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:34:18', '2020-11-24 11:34:18'),
(1073, 1, 'sc_admin/cache_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:34:21', '2020-11-24 11:34:21'),
(1074, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:34:25', '2020-11-24 11:34:25'),
(1075, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:40:56', '2020-11-24 11:40:56'),
(1076, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:41:54', '2020-11-24 11:41:54'),
(1077, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:43:12', '2020-11-24 11:43:12'),
(1078, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"category\"}', '2020-11-24 11:47:48', '2020-11-24 11:47:48'),
(1079, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1606222068452\"}', '2020-11-24 11:47:49', '2020-11-24 11:47:49'),
(1080, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1606222068453\"}', '2020-11-24 11:47:49', '2020-11-24 11:47:49'),
(1081, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606222068454\"}', '2020-11-24 11:47:49', '2020-11-24 11:47:49'),
(1082, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:48:08', '2020-11-24 11:48:08'),
(1083, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1606222068455\"}', '2020-11-24 11:48:09', '2020-11-24 11:48:09'),
(1084, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606222068456\"}', '2020-11-24 11:48:09', '2020-11-24 11:48:09'),
(1085, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"book\",\"keyword\":\"book\",\"description\":\"Root book category\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/0530_WVlibraries.jpg\",\"sort\":\"0\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:49:00', '2020-11-24 11:49:00'),
(1086, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:49:00', '2020-11-24 11:49:00'),
(1087, 1, 'sc_admin/category/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:49:05', '2020-11-24 11:49:05'),
(1088, 1, 'sc_admin/category/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:49:11', '2020-11-24 11:49:11'),
(1089, 1, 'sc_admin/category/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"book\",\"keyword\":\"book\",\"description\":\"Root book category\"}},\"parent\":\"0\",\"alias\":\"book\",\"image\":\"\\/data\\/category\\/0530_WVlibraries.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:49:16', '2020-11-24 11:49:16'),
(1090, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:49:16', '2020-11-24 11:49:16'),
(1091, 1, 'sc_admin/category/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:50:04', '2020-11-24 11:50:04'),
(1092, 1, 'sc_admin/category/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Books\",\"keyword\":\"book\",\"description\":\"Root book category\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/0530_WVlibraries.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:50:26', '2020-11-24 11:50:26'),
(1093, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:50:26', '2020-11-24 11:50:26'),
(1094, 1, 'sc_admin/category/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:50:39', '2020-11-24 11:50:39'),
(1095, 1, 'sc_admin/category/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Books\",\"keyword\":\"book\",\"description\":\"Root book category\"}},\"parent\":\"0\",\"alias\":\"books\",\"image\":\"\\/data\\/category\\/0530_WVlibraries.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"Uht4Y1E8ZjKKB9wO6YBaEKER8ZpdkGXcCeiToywX\"}', '2020-11-24 11:50:44', '2020-11-24 11:50:44'),
(1096, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:50:45', '2020-11-24 11:50:45'),
(1097, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:50:50', '2020-11-24 11:50:50'),
(1098, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:50:58', '2020-11-24 11:50:58'),
(1099, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-24 11:58:40', '2020-11-24 11:58:40'),
(1100, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:29:39', '2020-11-25 03:29:39'),
(1101, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 03:29:47', '2020-11-25 03:29:47'),
(1102, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606278587488\"}', '2020-11-25 03:29:48', '2020-11-25 03:29:48'),
(1103, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606278587487\"}', '2020-11-25 03:29:48', '2020-11-25 03:29:48'),
(1104, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278587489\"}', '2020-11-25 03:29:48', '2020-11-25 03:29:48'),
(1105, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:29:59', '2020-11-25 03:29:59'),
(1106, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:29:59', '2020-11-25 03:29:59'),
(1107, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:29:59', '2020-11-25 03:29:59'),
(1108, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:29:59', '2020-11-25 03:29:59'),
(1109, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278587490\"}', '2020-11-25 03:29:59', '2020-11-25 03:29:59'),
(1110, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278587493\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1111, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278587492\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1112, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278587491\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1113, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278587494\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1114, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278587495\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1115, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278587496\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1116, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278587497\"}', '2020-11-25 03:30:00', '2020-11-25 03:30:00'),
(1117, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 03:30:24', '2020-11-25 03:30:24'),
(1118, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606278624991\"}', '2020-11-25 03:30:25', '2020-11-25 03:30:25'),
(1119, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606278624990\"}', '2020-11-25 03:30:25', '2020-11-25 03:30:25'),
(1120, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278624992\"}', '2020-11-25 03:30:26', '2020-11-25 03:30:26'),
(1121, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1122, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1123, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1124, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1125, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278624994\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1126, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278624993\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1127, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278624996\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1128, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606278624995\"}', '2020-11-25 03:31:46', '2020-11-25 03:31:46'),
(1129, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278624997\"}', '2020-11-25 03:31:47', '2020-11-25 03:31:47'),
(1130, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278624998\"}', '2020-11-25 03:31:47', '2020-11-25 03:31:47'),
(1131, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278624999\"}', '2020-11-25 03:31:47', '2020-11-25 03:31:47'),
(1132, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278625000\"}', '2020-11-25 03:31:47', '2020-11-25 03:31:47'),
(1133, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:32:08', '2020-11-25 03:32:08'),
(1134, 1, 'sc_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:32:12', '2020-11-25 03:32:12'),
(1135, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:32:25', '2020-11-25 03:32:25'),
(1136, 1, 'sc_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:32:43', '2020-11-25 03:32:43'),
(1137, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:32:50', '2020-11-25 03:32:50'),
(1138, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:32:58', '2020-11-25 03:32:58'),
(1139, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:33:01', '2020-11-25 03:33:01'),
(1140, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:33:17', '2020-11-25 03:33:17');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1141, 1, 'sc_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:33:49', '2020-11-25 03:33:49'),
(1142, 1, 'sc_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"dfxzczxcewf dsacsvsxcxz\",\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:33:54', '2020-11-25 03:33:54'),
(1143, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:33:54', '2020-11-25 03:33:54'),
(1144, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:35:14', '2020-11-25 03:35:14'),
(1145, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 03:35:16', '2020-11-25 03:35:16'),
(1146, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606278916345\"}', '2020-11-25 03:35:16', '2020-11-25 03:35:16'),
(1147, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606278916346\"}', '2020-11-25 03:35:16', '2020-11-25 03:35:16'),
(1148, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606278916347\"}', '2020-11-25 03:35:17', '2020-11-25 03:35:17'),
(1149, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban1.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:35:30', '2020-11-25 03:35:30'),
(1150, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:35:30', '2020-11-25 03:35:30'),
(1151, 1, 'sc_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:35:49', '2020-11-25 03:35:49'),
(1152, 1, 'sc_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600.jpg\",\"url\":null,\"target\":\"_self\",\"html\":\"wefsdfsad\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:35:53', '2020-11-25 03:35:53'),
(1153, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:35:53', '2020-11-25 03:35:53'),
(1154, 1, 'sc_admin/banner/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:36:13', '2020-11-25 03:36:13'),
(1155, 1, 'sc_admin/banner/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban1.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:36:23', '2020-11-25 03:36:23'),
(1156, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:36:24', '2020-11-25 03:36:24'),
(1157, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:37:29', '2020-11-25 03:37:29'),
(1158, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:37:30', '2020-11-25 03:37:30'),
(1159, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:37:32', '2020-11-25 03:37:32'),
(1160, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:37:32', '2020-11-25 03:37:32'),
(1161, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:37:36', '2020-11-25 03:37:36'),
(1162, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:37:36', '2020-11-25 03:37:36'),
(1163, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:37:39', '2020-11-25 03:37:39'),
(1164, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:37:40', '2020-11-25 03:37:40'),
(1165, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:37:42', '2020-11-25 03:37:42'),
(1166, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 03:37:46', '2020-11-25 03:37:46'),
(1167, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606279066339\"}', '2020-11-25 03:37:46', '2020-11-25 03:37:46'),
(1168, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606279066340\"}', '2020-11-25 03:37:46', '2020-11-25 03:37:46'),
(1169, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606279066341\"}', '2020-11-25 03:37:47', '2020-11-25 03:37:47'),
(1170, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban2 (1).jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:37:57', '2020-11-25 03:37:57'),
(1171, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:37:57', '2020-11-25 03:37:57'),
(1172, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:38:00', '2020-11-25 03:38:00'),
(1173, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 03:38:02', '2020-11-25 03:38:02'),
(1174, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606279082943\"}', '2020-11-25 03:38:03', '2020-11-25 03:38:03'),
(1175, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606279082944\"}', '2020-11-25 03:38:03', '2020-11-25 03:38:03'),
(1176, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606279082945\"}', '2020-11-25 03:38:03', '2020-11-25 03:38:03'),
(1177, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban3.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:38:15', '2020-11-25 03:38:15'),
(1178, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:38:16', '2020-11-25 03:38:16'),
(1179, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:38:18', '2020-11-25 03:38:18'),
(1180, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 03:38:20', '2020-11-25 03:38:20'),
(1181, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606279100507\"}', '2020-11-25 03:38:21', '2020-11-25 03:38:21'),
(1182, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606279100506\"}', '2020-11-25 03:38:21', '2020-11-25 03:38:21'),
(1183, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606279100508\"}', '2020-11-25 03:38:21', '2020-11-25 03:38:21'),
(1184, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban4.png\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:38:30', '2020-11-25 03:38:30'),
(1185, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:38:30', '2020-11-25 03:38:30'),
(1186, 1, 'sc_admin/banner/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:38:44', '2020-11-25 03:38:44'),
(1187, 1, 'sc_admin/banner/edit/8', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban4.png\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:38:49', '2020-11-25 03:38:49'),
(1188, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:38:49', '2020-11-25 03:38:49'),
(1189, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:41:55', '2020-11-25 03:41:55'),
(1190, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:41:55', '2020-11-25 03:41:55'),
(1191, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:41:57', '2020-11-25 03:41:57'),
(1192, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:42:01', '2020-11-25 03:42:01'),
(1193, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:48:29', '2020-11-25 03:48:29'),
(1194, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"2,1\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:48:34', '2020-11-25 03:48:34'),
(1195, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:48:35', '2020-11-25 03:48:35'),
(1196, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:48:38', '2020-11-25 03:48:38'),
(1197, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"32,31,30,29,28,27,26,23,22,17,16,15,14,13,12,11,10,9,8,7\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:48:44', '2020-11-25 03:48:44'),
(1198, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:48:44', '2020-11-25 03:48:44'),
(1199, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"32,31,30,29,28,27,26,23,22,17,16,15,14,13,12,11,10,9,8,7\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:49:11', '2020-11-25 03:49:11'),
(1200, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:49:11', '2020-11-25 03:49:11'),
(1201, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"17\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:49:23', '2020-11-25 03:49:23'),
(1202, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:49:24', '2020-11-25 03:49:24'),
(1203, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:49:27', '2020-11-25 03:49:27'),
(1204, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:49:30', '2020-11-25 03:49:30'),
(1205, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:49:30', '2020-11-25 03:49:30'),
(1206, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:49:33', '2020-11-25 03:49:33'),
(1207, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:49:33', '2020-11-25 03:49:33'),
(1208, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:49:38', '2020-11-25 03:49:38'),
(1209, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"product\"}', '2020-11-25 03:49:57', '2020-11-25 03:49:57'),
(1210, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606279797457\"}', '2020-11-25 03:49:58', '2020-11-25 03:49:58'),
(1211, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606279797458\"}', '2020-11-25 03:49:58', '2020-11-25 03:49:58'),
(1212, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606279797459\"}', '2020-11-25 03:49:58', '2020-11-25 03:49:58'),
(1213, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:50:08', '2020-11-25 03:50:08'),
(1214, 1, 'sc_admin/product/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:50:14', '2020-11-25 03:50:14'),
(1215, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:50:15', '2020-11-25 03:50:15'),
(1216, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:50:19', '2020-11-25 03:50:19'),
(1217, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:50:25', '2020-11-25 03:50:25'),
(1218, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:50:26', '2020-11-25 03:50:26'),
(1219, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:50:30', '2020-11-25 03:50:30'),
(1220, 1, 'sc_admin/product/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"6\",\"10\",\"13\"],\"image\":\"\\/data\\/product\\/product-1.png\",\"sub_image\":[\"\\/data\\/product\\/product-2.png\",\"\\/data\\/product\\/product-11.png\"],\"sku\":\"ABCZZ\",\"alias\":\"demo-alias-name-product-1\",\"price\":\"15000\",\"tax_id\":\"0\",\"stock\":\"99\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:50:47', '2020-11-25 03:50:47'),
(1221, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:50:48', '2020-11-25 03:50:48'),
(1222, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:50:53', '2020-11-25 03:50:53'),
(1223, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:53:00', '2020-11-25 03:53:00'),
(1224, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:53:38', '2020-11-25 03:53:38'),
(1225, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:53:41', '2020-11-25 03:53:41'),
(1226, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:53:52', '2020-11-25 03:53:52'),
(1227, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:53:56', '2020-11-25 03:53:56'),
(1228, 1, 'sc_admin/product/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:54:00', '2020-11-25 03:54:00'),
(1229, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\"}', '2020-11-25 03:54:40', '2020-11-25 03:54:40'),
(1230, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"5,4,3,2\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:54:45', '2020-11-25 03:54:45'),
(1231, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:54:46', '2020-11-25 03:54:46'),
(1232, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:54:50', '2020-11-25 03:54:50'),
(1233, 1, 'sc_admin/product/edit/32', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:54:56', '2020-11-25 03:54:56'),
(1234, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"1\"}', '2020-11-25 03:54:59', '2020-11-25 03:54:59'),
(1235, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:55:08', '2020-11-25 03:55:08'),
(1236, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:55:11', '2020-11-25 03:55:11'),
(1237, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"5,4,3,2\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:55:15', '2020-11-25 03:55:15'),
(1238, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:55:16', '2020-11-25 03:55:16'),
(1239, 1, 'sc_admin/product/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:55:19', '2020-11-25 03:55:19'),
(1240, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\"}', '2020-11-25 03:55:34', '2020-11-25 03:55:34'),
(1241, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"5,4,3\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:55:40', '2020-11-25 03:55:40'),
(1242, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:55:41', '2020-11-25 03:55:41'),
(1243, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":null,\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:55:46', '2020-11-25 03:55:46'),
(1244, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:55:47', '2020-11-25 03:55:47'),
(1245, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:55:59', '2020-11-25 03:55:59'),
(1246, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:57:16', '2020-11-25 03:57:16'),
(1247, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:57:24', '2020-11-25 03:57:24'),
(1248, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"32,31,30,29,28,27,26,23,22,16,15,14,13,12,11,10,9,8,7,6\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:57:27', '2020-11-25 03:57:27'),
(1249, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:57:28', '2020-11-25 03:57:28'),
(1250, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:57:49', '2020-11-25 03:57:49'),
(1251, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"32,31,30,29,28,27,26,23,22,16,15,14,13,12,11,10,9,8,7\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:57:53', '2020-11-25 03:57:53'),
(1252, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:57:54', '2020-11-25 03:57:54'),
(1253, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:57:56', '2020-11-25 03:57:56'),
(1254, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:58:10', '2020-11-25 03:58:10'),
(1255, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:58:12', '2020-11-25 03:58:12'),
(1256, 1, 'sc_admin/category/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:58:16', '2020-11-25 03:58:16'),
(1257, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:58:18', '2020-11-25 03:58:18'),
(1258, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"14,13,12,11,10,9,8,7,6,5,4,3,2,1\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 03:58:23', '2020-11-25 03:58:23'),
(1259, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 03:58:24', '2020-11-25 03:58:24'),
(1260, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 03:58:26', '2020-11-25 03:58:26'),
(1261, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"category\"}', '2020-11-25 03:59:20', '2020-11-25 03:59:20'),
(1262, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1606280360717\"}', '2020-11-25 03:59:21', '2020-11-25 03:59:21'),
(1263, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1606280360718\"}', '2020-11-25 03:59:21', '2020-11-25 03:59:21'),
(1264, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606280360719\"}', '2020-11-25 03:59:21', '2020-11-25 03:59:21'),
(1265, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Business & Investing\",\"keyword\":\"Business Investing\",\"description\":\"Business & Investing\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:00:03', '2020-11-25 04:00:03'),
(1266, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:00:03', '2020-11-25 04:00:03'),
(1267, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:00:20', '2020-11-25 04:00:20'),
(1268, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:00:30', '2020-11-25 04:00:30'),
(1269, 1, 'sc_admin/category/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:00:35', '2020-11-25 04:00:35'),
(1270, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:01:01', '2020-11-25 04:01:01'),
(1271, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:01:03', '2020-11-25 04:01:03'),
(1272, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Computers & Technology\",\"keyword\":\"Computers & Technology\",\"description\":\"Computers & Technology\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:01:23', '2020-11-25 04:01:23'),
(1273, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:01:23', '2020-11-25 04:01:23'),
(1274, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"16\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:01:41', '2020-11-25 04:01:41'),
(1275, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 04:01:41', '2020-11-25 04:01:41'),
(1276, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"ids\":\"15\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:01:43', '2020-11-25 04:01:43'),
(1277, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 04:01:44', '2020-11-25 04:01:44'),
(1278, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:01:45', '2020-11-25 04:01:45'),
(1279, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Business\",\"keyword\":\"Business\",\"description\":\"Business\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:01:55', '2020-11-25 04:01:55'),
(1280, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:01:55', '2020-11-25 04:01:55'),
(1281, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:02:38', '2020-11-25 04:02:38'),
(1282, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":null,\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:15:22', '2020-11-25 04:15:22'),
(1283, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:15:22', '2020-11-25 04:15:22'),
(1284, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Investing\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:15:36', '2020-11-25 04:15:36'),
(1285, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:15:36', '2020-11-25 04:15:36'),
(1286, 1, 'sc_admin/category/edit/18', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:15:39', '2020-11-25 04:15:39'),
(1287, 1, 'sc_admin/category/edit/18', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Investing\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"investing\",\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:15:44', '2020-11-25 04:15:44'),
(1288, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:15:44', '2020-11-25 04:15:44'),
(1289, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:16:04', '2020-11-25 04:16:04'),
(1290, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Computers\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:16:14', '2020-11-25 04:16:14'),
(1291, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:16:14', '2020-11-25 04:16:14'),
(1292, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:16:16', '2020-11-25 04:16:16'),
(1293, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Technology\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:16:22', '2020-11-25 04:16:22'),
(1294, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:16:22', '2020-11-25 04:16:22'),
(1295, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:16:43', '2020-11-25 04:16:43'),
(1296, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Health\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:17:05', '2020-11-25 04:17:05'),
(1297, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:17:05', '2020-11-25 04:17:05'),
(1298, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:17:42', '2020-11-25 04:17:42'),
(1299, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Fitness\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:17:49', '2020-11-25 04:17:49'),
(1300, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:17:49', '2020-11-25 04:17:49'),
(1301, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:17:52', '2020-11-25 04:17:52'),
(1302, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Dieting\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:17:54', '2020-11-25 04:17:54'),
(1303, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:17:54', '2020-11-25 04:17:54'),
(1304, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:17:59', '2020-11-25 04:17:59'),
(1305, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"history\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:18:31', '2020-11-25 04:18:31'),
(1306, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:18:31', '2020-11-25 04:18:31'),
(1307, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:18:41', '2020-11-25 04:18:41'),
(1308, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Medical\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:18:49', '2020-11-25 04:18:49'),
(1309, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:18:49', '2020-11-25 04:18:49'),
(1310, 1, 'sc_admin/category/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:03', '2020-11-25 04:19:03'),
(1311, 1, 'sc_admin/category/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"History\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"history\",\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:19:07', '2020-11-25 04:19:07'),
(1312, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:07', '2020-11-25 04:19:07'),
(1313, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:22', '2020-11-25 04:19:22');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1314, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Science\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:19:26', '2020-11-25 04:19:26'),
(1315, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:26', '2020-11-25 04:19:26'),
(1316, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:27', '2020-11-25 04:19:27'),
(1317, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Fantasy\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:19:31', '2020-11-25 04:19:31'),
(1318, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:32', '2020-11-25 04:19:32'),
(1319, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:40', '2020-11-25 04:19:40'),
(1320, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Math\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:19:50', '2020-11-25 04:19:50'),
(1321, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:50', '2020-11-25 04:19:50'),
(1322, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:52', '2020-11-25 04:19:52'),
(1323, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Sports\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:19:55', '2020-11-25 04:19:55'),
(1324, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:55', '2020-11-25 04:19:55'),
(1325, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:19:57', '2020-11-25 04:19:57'),
(1326, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Outdoors\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:20:01', '2020-11-25 04:20:01'),
(1327, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:02', '2020-11-25 04:20:02'),
(1328, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:05', '2020-11-25 04:20:05'),
(1329, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:05', '2020-11-25 04:20:05'),
(1330, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Professional\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:20:09', '2020-11-25 04:20:09'),
(1331, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:09', '2020-11-25 04:20:09'),
(1332, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:10', '2020-11-25 04:20:10'),
(1333, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Technical\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:20:14', '2020-11-25 04:20:14'),
(1334, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:15', '2020-11-25 04:20:15'),
(1335, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:16', '2020-11-25 04:20:16'),
(1336, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:20:22', '2020-11-25 04:20:22'),
(1337, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:20:22', '2020-11-25 04:20:22'),
(1338, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:21:35', '2020-11-25 04:21:35'),
(1339, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:21:48', '2020-11-25 04:21:48'),
(1340, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:28:40', '2020-11-25 04:28:40'),
(1341, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:28:54', '2020-11-25 04:28:54'),
(1342, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:29:04', '2020-11-25 04:29:04'),
(1343, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:29:09', '2020-11-25 04:29:09'),
(1344, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\",\"name\":\"product_weight\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-25 04:29:17', '2020-11-25 04:29:17'),
(1345, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\",\"name\":\"product_length\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-11-25 04:29:18', '2020-11-25 04:29:18'),
(1346, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:29:34', '2020-11-25 04:29:34'),
(1347, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:29:36', '2020-11-25 04:29:36'),
(1348, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Holly Smith\'S Money Saving Book\",\"keyword\":\"Holly Smith\'S Money Saving Book\",\"description\":null,\"content\":\"\'THE WOMAN WHO\'LL MAKE YOU RICHER! SHE\'S WRITTEN A BOOK GUARANTEED TO SAVE YOU A FORTUNE\' MAIL ON SUNDAY\\r\\n\\r\\nHow much can you save with this book?\\r\\n\\r\\nTrusted bargain-hunter and mum, Holly Smith, cuts thousands of pounds off her shopping and bills every year. She founded the Facebook group Extreme Couponing and Bargains UK (one of the largest Facebook groups in the world) and is on TikTok, Youtube and Instagram helping as many people as possible to save money too.\\r\\n\\r\\nThis book contains all her best hacks and tips to save money and make money - simple, life-changing ideas for everyone.\\r\\n\\r\\nHolly has included her favourite hacks from the Extreme Couponing and Bargains UK community too, who inspired her to write this book. And has asked all her money-saving expert friends to contribute tips too.\\r\\n\\r\\nAll the costly moments of everyday life are included, from supermarket shops to kids parties - even special occasions like weddings and Christmas.\\r\\n\\r\\nDiscover lots of fun ways to get saving, find the bargains and make your money go further.\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"17\",\"18\"],\"image\":null,\"sku\":\"A\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:31:06', '2020-11-25 04:31:06'),
(1349, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:31:06', '2020-11-25 04:31:06'),
(1350, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:31:49', '2020-11-25 04:31:49'),
(1351, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Beginner\'S Step-By-Step Coding Course\",\"keyword\":\"Beginner\'S Step-By-Step Coding Course\",\"description\":\"Learning to code has never been easier than with this innovative visual guide to computer programming for beginners.\\r\\n\\r\\nCoding skills are in high demand and the need for programmers is still growing. However, taking the first steps in learning more about this complex subject may seem daunting and many of us feel left behind by the coding revolution. By using a graphic method to break code into small chunks, this book brings essential skills within reach.Terms such as algorithm, variable, string, function, and loop are all explained. The book also looks at the main coding languages that are out there, outlining the main applications of each language.\\r\\n\\r\\nIndividual chapters explore different languages, with practical programming projects to show you how programming works. You\'ll learn to think like a programmer by breaking a problem down into parts, before turning those parts into lines of code. Short, easy-to-follow steps then show you, piece by piece, how to build a complete program. There are challenges for you to tackle to build your confidence before moving on.\\r\\n\\r\\nWritten by a team of expert coders and coding teachers, the Beginner\'s Step-by-Step Coding Course is the ideal way to get to grips with coding.\",\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":\"AA\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:32:13', '2020-11-25 04:32:13'),
(1352, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:32:13', '2020-11-25 04:32:13'),
(1353, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Beginner\'S Step-By-Step Coding Course\",\"keyword\":\"Beginner\'S Step-By-Step Coding Course\",\"description\":null,\"content\":\"Learning to code has never been easier than with this innovative visual guide to computer programming for beginners.\\r\\n\\r\\nCoding skills are in high demand and the need for programmers is still growing. However, taking the first steps in learning more about this complex subject may seem daunting and many of us feel left behind by the coding revolution. By using a graphic method to break code into small chunks, this book brings essential skills within reach.Terms such as algorithm, variable, string, function, and loop are all explained. The book also looks at the main coding languages that are out there, outlining the main applications of each language.\\r\\n\\r\\nIndividual chapters explore different languages, with practical programming projects to show you how programming works. You\'ll learn to think like a programmer by breaking a problem down into parts, before turning those parts into lines of code. Short, easy-to-follow steps then show you, piece by piece, how to build a complete program. There are challenges for you to tackle to build your confidence before moving on.\\r\\n\\r\\nWritten by a team of expert coders and coding teachers, the Beginner\'s Step-by-Step Coding Course is the ideal way to get to grips with coding.\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":\"AA\",\"alias\":\"beginners-step-by-step-coding-course\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:32:22', '2020-11-25 04:32:22'),
(1354, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:32:23', '2020-11-25 04:32:23'),
(1355, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Beginner\'S Step-By-Step Coding Course\",\"keyword\":\"Beginner\'S Step-By-Step Coding Course\",\"description\":null,\"content\":\"Learning to code has never been easier than with this innovative visual guide to computer programming for beginners.\\r\\n\\r\\nCoding skills are in high demand and the need for programmers is still growing. However, taking the first steps in learning more about this complex subject may seem daunting and many of us feel left behind by the coding revolution. By using a graphic method to break code into small chunks, this book brings essential skills within reach.Terms such as algorithm, variable, string, function, and loop are all explained. The book also looks at the main coding languages that are out there, outlining the main applications of each language.\\r\\n\\r\\nIndividual chapters explore different languages, with practical programming projects to show you how programming works. You\'ll learn to think like a programmer by breaking a problem down into parts, before turning those parts into lines of code. Short, easy-to-follow steps then show you, piece by piece, how to build a complete program. There are challenges for you to tackle to build your confidence before moving on.\\r\\n\\r\\nWritten by a team of expert coders and coding teachers, the Beginner\'s Step-by-Step Coding Course is the ideal way to get to grips with coding.\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\",\"20\"],\"image\":null,\"sku\":\"AA\",\"alias\":\"beginners-step-by-step-coding-course\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:32:45', '2020-11-25 04:32:45'),
(1356, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:32:45', '2020-11-25 04:32:45'),
(1357, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:33:04', '2020-11-25 04:33:04'),
(1358, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Breaking Up With Sugar\",\"keyword\":\"Breaking Up With Sugar\",\"description\":null,\"content\":\"A 66-day plan for going sugar-free from an eating disorder specialist and therapist who broke free of her own sugar addiction.\\r\\n\\r\\nOur relationship with food can be complicated: for many, food soothes painful emotions, it nurtures, it numbs, it provides a \'high\'. Breaking Up With Sugar offers a plan for the complete transformation of many people\'s destructive relationship with food. For these people, sugar is often the culprit: it produces physical, neurological and endocrine changes that render the individual powerless over their compulsion to eat.\\r\\n\\r\\nMolly Carmel struggled with her own eating disorder for over 20 years and finding no solutions in available treatments, she created The Beacon, where she helps clients recover from similar addictions. Her step-by-step instructions are designed to take the guesswork out of sugar-free eating and help people start a new, healthier relationship with food. With 8 vows to return to and rely on, and guidance on how to divorce dieting forever, Breaking Up With Sugar offers an individualised, sustainable and realistic plan for eating and thriving for life.\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"21\",\"22\",\"23\"],\"image\":null,\"sku\":\"H\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:33:35', '2020-11-25 04:33:35'),
(1359, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:33:35', '2020-11-25 04:33:35'),
(1360, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:33:38', '2020-11-25 04:33:38'),
(1361, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"keyword\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"description\":null,\"content\":\"Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\\r\\n\\r\\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\\r\\n\\r\\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\\r\\n\\r\\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\\r\\n\\r\\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"24\"],\"image\":null,\"sku\":\"FKSZ\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:34:33', '2020-11-25 04:34:33'),
(1362, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:34:33', '2020-11-25 04:34:33'),
(1363, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:34:38', '2020-11-25 04:34:38'),
(1364, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:34:44', '2020-11-25 04:34:44'),
(1365, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Immunity: The Science Of Staying Well\",\"keyword\":\"Immunity: The Science Of Staying Well\",\"description\":null,\"content\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"25\"],\"image\":null,\"sku\":\"MED\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"tWeSZiQWH4j3A0YG4eX8ZFKJ9FQHulXYW93rlpjj\"}', '2020-11-25 04:35:12', '2020-11-25 04:35:12'),
(1366, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:35:13', '2020-11-25 04:35:13'),
(1367, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:35:19', '2020-11-25 04:35:19'),
(1368, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:36:31', '2020-11-25 04:36:31'),
(1369, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:36:39', '2020-11-25 04:36:39'),
(1370, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:37:00', '2020-11-25 04:37:00'),
(1371, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:37:03', '2020-11-25 04:37:03'),
(1372, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:37:06', '2020-11-25 04:37:06'),
(1373, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"avatar\"}', '2020-11-25 04:39:01', '2020-11-25 04:39:01'),
(1374, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606282741785\"}', '2020-11-25 04:39:02', '2020-11-25 04:39:02'),
(1375, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1606282741786\"}', '2020-11-25 04:39:02', '2020-11-25 04:39:02'),
(1376, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606282741787\"}', '2020-11-25 04:39:02', '2020-11-25 04:39:02'),
(1377, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"o7XqfYgt8YMXipKF3RFXHKXwnhR5In2ozg21Vefd\"}', '2020-11-25 04:39:09', '2020-11-25 04:39:09'),
(1378, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1606282741788\"}', '2020-11-25 04:39:09', '2020-11-25 04:39:09'),
(1379, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606282741789\"}', '2020-11-25 04:39:09', '2020-11-25 04:39:09'),
(1380, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"Loreal Ipman\",\"username\":\"Qaz\",\"email\":\"ducky@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/8a6cd3e4b34debfdc7088326d1652276.jpg\",\"phone\":\"0192837483\",\"password\":\"aaaaaa\",\"password_confirmation\":\"aaaaaa\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"o7XqfYgt8YMXipKF3RFXHKXwnhR5In2ozg21Vefd\"}', '2020-11-25 04:40:12', '2020-11-25 04:40:12'),
(1381, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:40:13', '2020-11-25 04:40:13'),
(1382, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:40:21', '2020-11-25 04:40:21'),
(1383, 4, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:40:33', '2020-11-25 04:40:33'),
(1384, 4, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:40:47', '2020-11-25 04:40:47'),
(1385, 4, 'sc_admin/user/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:40:51', '2020-11-25 04:40:51'),
(1386, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:40:58', '2020-11-25 04:40:58'),
(1387, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:41:00', '2020-11-25 04:41:00'),
(1388, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:41:02', '2020-11-25 04:41:02'),
(1389, 4, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:41:04', '2020-11-25 04:41:04'),
(1390, 4, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Passages\",\"keyword\":\"Passages\",\"description\":null,\"content\":\"This fourteenth anthology of short stories set in the beloved Valdemar universe features tales by debut and established authors and a brand-new story from Lackey herself. The Heralds of Valdemar are the kingdom\'s ancient order of protectors. They are drawn from all across the land, from all walks of life, and at all ages--and all are Gifted with abilities beyond those of normal men and women. They are Mindspeakers, FarSeers, Empaths, ForeSeers, Firestarters, FarSpeakers, and more. These inborn talents--combined with training as emissaries, spies, judges, diplomats, scouts, counselors, warriors, and more--make them indispensable to their monarch and realm. Sought and Chosen by mysterious horse-like Companions, they are bonded for life to these telepathic, enigmatic creatures. The Heralds of Valdemar and their Companions ride circuit throughout the kingdom, protecting the peace and, when necessary, defending their land and monarch.\"}},\"owner\":\"qaz\",\"user_id\":\"4\",\"category\":[\"26\",\"27\"],\"image\":null,\"sku\":\"PASS\",\"alias\":null,\"price\":\"50\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:41:58', '2020-11-25 04:41:58'),
(1391, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:41:58', '2020-11-25 04:41:58'),
(1392, 4, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:42:02', '2020-11-25 04:42:02'),
(1393, 4, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Foundations: Illustr Mathematics\",\"keyword\":\"Foundations: Illustr Mathematics\",\"description\":null,\"content\":\"In order to understand the universe you must know the language in which it is written. And that language is mathematics - Galileo (1564-1642)\\r\\n\\r\\nFor hundreds of thousands of years, we have sought order in the apparent chaos of the universe. Mathematics has been our most valuable tool in that search, uncovering the patterns and rules that govern our world and beyond. This illustrated guide traces humankind\'s greatest achievements in mathematics, plotting a journey from innumerate cave-dwellers, through the towering intellects of the last 4,000 years, to where we stand today.\\r\\n\\r\\nIncluding a giant timeline wallchart, Foundations is a brilliant hardback reference book which charts the development of this intriguing and expansive discipline, from early history to modern day.\"}},\"owner\":\"qaz\",\"user_id\":\"4\",\"category\":[\"26\",\"28\"],\"image\":null,\"sku\":\"anne\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:42:47', '2020-11-25 04:42:47'),
(1394, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:42:47', '2020-11-25 04:42:47'),
(1395, 4, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:42:52', '2020-11-25 04:42:52'),
(1396, 4, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Back On Your Bike\",\"keyword\":\"Back On Your Bike\",\"description\":null,\"content\":\"Many of us have recently dusted off an old bike and got back in the saddle for the first time in years. This is great news; we will be enjoying the health, financial, and emotional benefits for decades. But if you\'ve not ridden a bike since childhood, it\'s a challenging prospect. This book is a confidence builder for the nervous new or re-newed cyclist. In three clear stages the book covers the benefits of cycling, looking after your bike thereby avoiding trips to the bike workshop, and above all, the real-world advice you need to become a confident cycling commuter and road user. Engagingly written by cycling expert and author Alan Anderson, all this comes in a small, readable format, with attractive illustrations by David Sparshott.\"}},\"owner\":\"qaz\",\"user_id\":\"4\",\"category\":[\"29\",\"30\"],\"image\":null,\"sku\":\"ouz\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:43:22', '2020-11-25 04:43:22'),
(1397, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:43:22', '2020-11-25 04:43:22'),
(1398, 4, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:43:27', '2020-11-25 04:43:27'),
(1399, 4, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Shape Of Things To Come\",\"keyword\":\"Shape Of Things To Come\",\"description\":null,\"content\":\"In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\\r\\n\\r\\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\\r\\n\\r\\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\\r\\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\\r\\n\\r\\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\\r\\n\\r\\n\'Intriguing and informed\' THE TIMES\"}},\"owner\":\"qaz\",\"user_id\":\"4\",\"category\":[\"31\",\"32\"],\"image\":null,\"sku\":\"vat\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:44:06', '2020-11-25 04:44:06'),
(1400, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:44:07', '2020-11-25 04:44:07'),
(1401, 4, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:44:10', '2020-11-25 04:44:10'),
(1402, 4, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":null,\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"owner\":\"qaz\",\"user_id\":\"4\",\"category\":[\"33\"],\"image\":null,\"sku\":\"trav\",\"alias\":null,\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:44:41', '2020-11-25 04:44:41'),
(1403, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:44:42', '2020-11-25 04:44:42'),
(1404, 4, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:47:41', '2020-11-25 04:47:41'),
(1405, 4, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:49:34', '2020-11-25 04:49:34'),
(1406, 4, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:49:37', '2020-11-25 04:49:37'),
(1407, 4, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:49:47', '2020-11-25 04:49:47'),
(1408, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:50:05', '2020-11-25 04:50:05'),
(1409, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:50:12', '2020-11-25 04:50:12'),
(1410, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:50:14', '2020-11-25 04:50:14'),
(1411, 1, 'sc_admin/role/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"name\":\"seller\",\"slug\":\"seller\",\"permission\":[\"7\",\"5\",\"8\",\"15\"],\"administrators\":[\"2\",\"4\"],\"_token\":\"PkPz0dPTEKqWX6zAj14IM87pP62AbEDlb5i2YrZh\"}', '2020-11-25 04:50:28', '2020-11-25 04:50:28'),
(1412, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:50:29', '2020-11-25 04:50:29'),
(1413, 4, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:50:32', '2020-11-25 04:50:32'),
(1414, 4, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"product\"}', '2020-11-25 04:50:34', '2020-11-25 04:50:34'),
(1415, 4, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606283434780\"}', '2020-11-25 04:50:35', '2020-11-25 04:50:35'),
(1416, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1606283434779\"}', '2020-11-25 04:50:35', '2020-11-25 04:50:35'),
(1417, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434781\"}', '2020-11-25 04:50:35', '2020-11-25 04:50:35'),
(1418, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1419, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1420, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1421, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1422, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1423, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1424, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434782\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1425, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434783\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1426, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1427, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434784\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1428, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1429, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434785\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1430, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434786\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1431, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1432, 4, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1433, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434788\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1434, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434787\"}', '2020-11-25 04:51:07', '2020-11-25 04:51:07'),
(1435, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434790\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1436, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434789\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1437, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434791\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1438, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434793\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1439, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434792\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1440, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434794\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1441, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434795\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1442, 4, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1606283434796\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1443, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434797\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1444, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434799\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1445, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434798\"}', '2020-11-25 04:51:08', '2020-11-25 04:51:08'),
(1446, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434800\"}', '2020-11-25 04:51:09', '2020-11-25 04:51:09'),
(1447, 4, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606283434801\"}', '2020-11-25 04:51:09', '2020-11-25 04:51:09'),
(1448, 4, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":null,\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/1.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"DFdBiUWhyX4xRIk2JkiD47zAiKC6QqiWX3Ybp5p0\"}', '2020-11-25 04:51:19', '2020-11-25 04:51:19'),
(1449, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:51:19', '2020-11-25 04:51:19'),
(1450, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:53:06', '2020-11-25 04:53:06'),
(1451, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:53:50', '2020-11-25 04:53:50'),
(1452, 4, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:53:57', '2020-11-25 04:53:57'),
(1453, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:54:01', '2020-11-25 04:54:01'),
(1454, 4, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:54:03', '2020-11-25 04:54:03'),
(1455, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 04:55:19', '2020-11-25 04:55:19'),
(1456, 4, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 07:15:36', '2020-11-25 07:15:36'),
(1457, 4, 'sc_admin/user/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 07:16:26', '2020-11-25 07:16:26'),
(1458, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 07:16:30', '2020-11-25 07:16:30'),
(1459, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 07:16:33', '2020-11-25 07:16:33'),
(1460, 4, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 07:16:35', '2020-11-25 07:16:35'),
(1461, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:01:57', '2020-11-25 09:01:57'),
(1462, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:02:04', '2020-11-25 09:02:04'),
(1463, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:02:12', '2020-11-25 09:02:12'),
(1464, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:02:17', '2020-11-25 09:02:17'),
(1465, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:02:19', '2020-11-25 09:02:19'),
(1466, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:02:21', '2020-11-25 09:02:21'),
(1467, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 09:02:37', '2020-11-25 09:02:37'),
(1468, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298561332\"}', '2020-11-25 09:02:41', '2020-11-25 09:02:41'),
(1469, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298561331\"}', '2020-11-25 09:02:41', '2020-11-25 09:02:41'),
(1470, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606298561333\"}', '2020-11-25 09:02:42', '2020-11-25 09:02:42'),
(1471, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-3.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:03:01', '2020-11-25 09:03:01'),
(1472, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:03:02', '2020-11-25 09:03:02'),
(1473, 1, 'sc_admin/banner/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:03:04', '2020-11-25 09:03:04'),
(1474, 1, 'sc_admin/banner/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-3.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:03:08', '2020-11-25 09:03:08'),
(1475, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:03:08', '2020-11-25 09:03:08'),
(1476, 1, 'sc_admin/banner/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:03:22', '2020-11-25 09:03:22'),
(1477, 1, 'sc_admin/banner/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-3.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:03:26', '2020-11-25 09:03:26'),
(1478, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:03:26', '2020-11-25 09:03:26'),
(1479, 1, 'sc_admin/banner/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:08:40', '2020-11-25 09:08:40'),
(1480, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 09:08:43', '2020-11-25 09:08:43'),
(1481, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298923391\"}', '2020-11-25 09:08:43', '2020-11-25 09:08:43'),
(1482, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298923392\"}', '2020-11-25 09:08:43', '2020-11-25 09:08:43'),
(1483, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606298923393\"}', '2020-11-25 09:08:44', '2020-11-25 09:08:44'),
(1484, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:08:51', '2020-11-25 09:08:51'),
(1485, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606298923394\"}', '2020-11-25 09:08:51', '2020-11-25 09:08:51'),
(1486, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606298923395\"}', '2020-11-25 09:08:52', '2020-11-25 09:08:52'),
(1487, 1, 'sc_admin/banner/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Breadcrumb.jpeg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:09:04', '2020-11-25 09:09:04'),
(1488, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:09:04', '2020-11-25 09:09:04'),
(1489, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:09:07', '2020-11-25 09:09:07'),
(1490, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 09:09:38', '2020-11-25 09:09:38'),
(1491, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298979152\"}', '2020-11-25 09:09:39', '2020-11-25 09:09:39'),
(1492, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298979151\"}', '2020-11-25 09:09:39', '2020-11-25 09:09:39'),
(1493, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606298979153\"}', '2020-11-25 09:09:40', '2020-11-25 09:09:40'),
(1494, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:09:50', '2020-11-25 09:09:50'),
(1495, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1606298979154\"}', '2020-11-25 09:09:51', '2020-11-25 09:09:51'),
(1496, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606298979155\"}', '2020-11-25 09:09:52', '2020-11-25 09:09:52'),
(1497, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"type\":\"banner\"}', '2020-11-25 09:09:56', '2020-11-25 09:09:56'),
(1498, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298996616\"}', '2020-11-25 09:09:57', '2020-11-25 09:09:57'),
(1499, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1606298996617\"}', '2020-11-25 09:09:57', '2020-11-25 09:09:57'),
(1500, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1606298996618\"}', '2020-11-25 09:09:57', '2020-11-25 09:09:57'),
(1501, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban store.jpg\",\"url\":null,\"target\":null,\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:10:04', '2020-11-25 09:10:04'),
(1502, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:10:05', '2020-11-25 09:10:05'),
(1503, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:10:09', '2020-11-25 09:10:09'),
(1504, 1, 'sc_admin/banner/edit/10', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/ban store.jpg\",\"url\":null,\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"ywBqeLWJDHfOnPwu4kjfL2IYgthZu34PluLLKUwt\"}', '2020-11-25 09:10:17', '2020-11-25 09:10:17'),
(1505, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 09:10:17', '2020-11-25 09:10:17'),
(1506, 4, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 10:15:44', '2020-11-25 10:15:44'),
(1507, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 10:16:02', '2020-11-25 10:16:02'),
(1508, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 10:16:12', '2020-11-25 10:16:12'),
(1509, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 10:16:15', '2020-11-25 10:16:15'),
(1510, 4, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 10:36:17', '2020-11-25 10:36:17'),
(1511, 4, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 10:36:20', '2020-11-25 10:36:20'),
(1512, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:36:44', '2020-11-25 11:36:44'),
(1513, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:37:06', '2020-11-25 11:37:06'),
(1514, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:37:07', '2020-11-25 11:37:07'),
(1515, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:37:42', '2020-11-25 11:37:42'),
(1516, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:37:51', '2020-11-25 11:37:51'),
(1517, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:37:55', '2020-11-25 11:37:55'),
(1518, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:37:57', '2020-11-25 11:37:57'),
(1519, 4, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:38:03', '2020-11-25 11:38:03'),
(1520, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:38:07', '2020-11-25 11:38:07'),
(1521, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:38:10', '2020-11-25 11:38:10'),
(1522, 4, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:38:14', '2020-11-25 11:38:14'),
(1523, 4, 'sc_admin/user/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:38:35', '2020-11-25 11:38:35'),
(1524, 4, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:39:32', '2020-11-25 11:39:32'),
(1525, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:42:21', '2020-11-25 11:42:21'),
(1526, 4, 'sc_admin/order/detail/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:44:13', '2020-11-25 11:44:13'),
(1527, 4, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:44:21', '2020-11-25 11:44:21'),
(1528, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:44:23', '2020-11-25 11:44:23'),
(1529, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:45:49', '2020-11-25 11:45:49'),
(1530, 4, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:46:12', '2020-11-25 11:46:12'),
(1531, 4, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:46:52', '2020-11-25 11:46:52'),
(1532, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:47:05', '2020-11-25 11:47:05'),
(1533, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:47:11', '2020-11-25 11:47:11'),
(1534, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:49:05', '2020-11-25 11:49:05'),
(1535, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:49:07', '2020-11-25 11:49:07'),
(1536, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:50:12', '2020-11-25 11:50:12'),
(1537, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:51:16', '2020-11-25 11:51:16'),
(1538, 1, 'sc_admin/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:51:25', '2020-11-25 11:51:25'),
(1539, 1, 'sc_admin/payment_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-25 11:51:34', '2020-11-25 11:51:34'),
(1540, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-11-30 05:51:57', '2020-11-30 05:51:57'),
(1541, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-08 13:33:04', '2020-12-08 13:33:04'),
(1542, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-08 13:33:24', '2020-12-08 13:33:24'),
(1543, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-08 13:33:38', '2020-12-08 13:33:38'),
(1544, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-08 13:33:45', '2020-12-08 13:33:45'),
(1545, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-08 13:34:38', '2020-12-08 13:34:38'),
(1546, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-08 13:34:45', '2020-12-08 13:34:45'),
(1547, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:22:43', '2020-12-09 07:22:43'),
(1548, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:22:51', '2020-12-09 07:22:51'),
(1549, 1, 'sc_admin/user/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:22:55', '2020-12-09 07:22:55'),
(1550, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:25:18', '2020-12-09 07:25:18'),
(1551, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:26:35', '2020-12-09 07:26:35'),
(1552, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:26:36', '2020-12-09 07:26:36'),
(1553, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:26:37', '2020-12-09 07:26:37'),
(1554, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:26:38', '2020-12-09 07:26:38'),
(1555, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:27:24', '2020-12-09 07:27:24'),
(1556, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:27:39', '2020-12-09 07:27:39'),
(1557, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:30:32', '2020-12-09 07:30:32'),
(1558, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:30:44', '2020-12-09 07:30:44'),
(1559, 1, 'sc_admin/user/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:30:47', '2020-12-09 07:30:47'),
(1560, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:49:51', '2020-12-09 07:49:51'),
(1561, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '[]', '2020-12-09 07:50:06', '2020-12-09 07:50:06'),
(1562, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 05:53:52', '2020-12-11 05:53:52'),
(1563, 1, 'sc_admin/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 05:54:11', '2020-12-11 05:54:11'),
(1564, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 05:54:20', '2020-12-11 05:54:20'),
(1565, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"0Nspq08GeUUGAoUfSF9Y0powzr4EDs2WoYxkdLpm\",\"name\":\"email_action_mode\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-11 06:00:59', '2020-12-11 06:00:59'),
(1566, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"smtp_host\",\"value\":\"americanting98@gmail.com\",\"pk\":\"smtp_host\",\"_token\":\"0Nspq08GeUUGAoUfSF9Y0powzr4EDs2WoYxkdLpm\",\"storeId\":\"1\"}', '2020-12-11 06:01:58', '2020-12-11 06:01:58'),
(1567, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"smtp_user\",\"value\":\"tin bin\",\"pk\":\"smtp_user\",\"_token\":\"0Nspq08GeUUGAoUfSF9Y0powzr4EDs2WoYxkdLpm\",\"storeId\":\"1\"}', '2020-12-11 06:02:10', '2020-12-11 06:02:10'),
(1568, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"smtp_password\",\"value\":\"tkb842862555\",\"pk\":\"smtp_password\",\"_token\":\"0Nspq08GeUUGAoUfSF9Y0powzr4EDs2WoYxkdLpm\",\"storeId\":\"1\"}', '2020-12-11 06:02:21', '2020-12-11 06:02:21'),
(1569, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"smtp_security\",\"value\":\"SSL\",\"pk\":null,\"_token\":\"0Nspq08GeUUGAoUfSF9Y0powzr4EDs2WoYxkdLpm\",\"storeId\":\"1\"}', '2020-12-11 06:02:40', '2020-12-11 06:02:40'),
(1570, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"smtp_port\",\"value\":\"465\",\"pk\":\"smtp_port\",\"_token\":\"0Nspq08GeUUGAoUfSF9Y0powzr4EDs2WoYxkdLpm\",\"storeId\":\"1\"}', '2020-12-11 06:02:49', '2020-12-11 06:02:49'),
(1571, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:03:07', '2020-12-11 06:03:07'),
(1572, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:07:47', '2020-12-11 06:07:47'),
(1573, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:07:50', '2020-12-11 06:07:50'),
(1574, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:08:20', '2020-12-11 06:08:20'),
(1575, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:08:25', '2020-12-11 06:08:25'),
(1576, 1, 'sc_admin/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:08:40', '2020-12-11 06:08:40'),
(1577, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:08:54', '2020-12-11 06:08:54'),
(1578, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:09:00', '2020-12-11 06:09:00'),
(1579, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:09:14', '2020-12-11 06:09:14'),
(1580, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:09:16', '2020-12-11 06:09:16'),
(1581, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:11:43', '2020-12-11 06:11:43'),
(1582, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:11:53', '2020-12-11 06:11:53'),
(1583, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:11:55', '2020-12-11 06:11:55'),
(1584, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:11:58', '2020-12-11 06:11:58'),
(1585, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:12:03', '2020-12-11 06:12:03'),
(1586, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:12:07', '2020-12-11 06:12:07'),
(1587, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:12:21', '2020-12-11 06:12:21'),
(1588, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:12:41', '2020-12-11 06:12:41'),
(1589, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:12:44', '2020-12-11 06:12:44'),
(1590, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:13:34', '2020-12-11 06:13:34'),
(1591, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:13:42', '2020-12-11 06:13:42'),
(1592, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:14:01', '2020-12-11 06:14:01'),
(1593, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:14:13', '2020-12-11 06:14:13'),
(1594, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:15:20', '2020-12-11 06:15:20'),
(1595, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:15:22', '2020-12-11 06:15:22'),
(1596, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:15:22', '2020-12-11 06:15:22'),
(1597, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:15:24', '2020-12-11 06:15:24'),
(1598, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:15:32', '2020-12-11 06:15:32'),
(1599, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:15:55', '2020-12-11 06:15:55'),
(1600, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:17:04', '2020-12-11 06:17:04'),
(1601, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:17:11', '2020-12-11 06:17:11'),
(1602, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:17:51', '2020-12-11 06:17:51'),
(1603, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:17:54', '2020-12-11 06:17:54'),
(1604, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:17:56', '2020-12-11 06:17:56'),
(1605, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:22:11', '2020-12-11 06:22:11'),
(1606, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:22:16', '2020-12-11 06:22:16'),
(1607, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:23:18', '2020-12-11 06:23:18'),
(1608, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:23:20', '2020-12-11 06:23:20'),
(1609, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:24:32', '2020-12-11 06:24:32'),
(1610, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:24:33', '2020-12-11 06:24:33'),
(1611, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:24:38', '2020-12-11 06:24:38'),
(1612, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:24:57', '2020-12-11 06:24:57'),
(1613, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:25:09', '2020-12-11 06:25:09'),
(1614, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:26:06', '2020-12-11 06:26:06'),
(1615, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:26:33', '2020-12-11 06:26:33'),
(1616, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:03', '2020-12-11 06:27:03'),
(1617, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:10', '2020-12-11 06:27:10'),
(1618, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:11', '2020-12-11 06:27:11'),
(1619, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:15', '2020-12-11 06:27:15'),
(1620, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:23', '2020-12-11 06:27:23'),
(1621, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:29', '2020-12-11 06:27:29'),
(1622, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:35', '2020-12-11 06:27:35'),
(1623, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:45', '2020-12-11 06:27:45'),
(1624, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:27:49', '2020-12-11 06:27:49'),
(1625, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:28:07', '2020-12-11 06:28:07'),
(1626, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:28:10', '2020-12-11 06:28:10'),
(1627, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:28:17', '2020-12-11 06:28:17'),
(1628, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:28:30', '2020-12-11 06:28:30'),
(1629, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"33\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"IYV4CA3zlRb7ZMKzehsmsjtxhMtjRIZ7VlZmMZ3e\"}', '2020-12-11 06:28:40', '2020-12-11 06:28:40'),
(1630, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:28:41', '2020-12-11 06:28:41'),
(1631, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:28:55', '2020-12-11 06:28:55'),
(1632, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:29:45', '2020-12-11 06:29:45'),
(1633, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:06', '2020-12-11 06:30:06'),
(1634, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:13', '2020-12-11 06:30:13'),
(1635, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:16', '2020-12-11 06:30:16');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1636, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:20', '2020-12-11 06:30:20'),
(1637, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:23', '2020-12-11 06:30:23'),
(1638, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:56', '2020-12-11 06:30:56'),
(1639, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:30:58', '2020-12-11 06:30:58'),
(1640, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:31:07', '2020-12-11 06:31:07'),
(1641, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:31:09', '2020-12-11 06:31:09'),
(1642, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"IYV4CA3zlRb7ZMKzehsmsjtxhMtjRIZ7VlZmMZ3e\"}', '2020-12-11 06:31:16', '2020-12-11 06:31:16'),
(1643, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:31:16', '2020-12-11 06:31:16'),
(1644, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:31:30', '2020-12-11 06:31:30'),
(1645, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:32:09', '2020-12-11 06:32:09'),
(1646, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:33:21', '2020-12-11 06:33:21'),
(1647, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:37:21', '2020-12-11 06:37:21'),
(1648, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:37:24', '2020-12-11 06:37:24'),
(1649, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:37:55', '2020-12-11 06:37:55'),
(1650, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:37:58', '2020-12-11 06:37:58'),
(1651, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:37:58', '2020-12-11 06:37:58'),
(1652, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:37:58', '2020-12-11 06:37:58'),
(1653, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:38:01', '2020-12-11 06:38:01'),
(1654, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:38:03', '2020-12-11 06:38:03'),
(1655, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:38:37', '2020-12-11 06:38:37'),
(1656, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:38:40', '2020-12-11 06:38:40'),
(1657, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:42:40', '2020-12-11 06:42:40'),
(1658, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:43:33', '2020-12-11 06:43:33'),
(1659, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:43:37', '2020-12-11 06:43:37'),
(1660, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:43:45', '2020-12-11 06:43:45'),
(1661, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:44:15', '2020-12-11 06:44:15'),
(1662, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:11', '2020-12-11 06:45:11'),
(1663, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:18', '2020-12-11 06:45:18'),
(1664, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:22', '2020-12-11 06:45:22'),
(1665, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:25', '2020-12-11 06:45:25'),
(1666, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:27', '2020-12-11 06:45:27'),
(1667, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:30', '2020-12-11 06:45:30'),
(1668, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:35', '2020-12-11 06:45:35'),
(1669, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:48', '2020-12-11 06:45:48'),
(1670, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:45:58', '2020-12-11 06:45:58'),
(1671, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:00', '2020-12-11 06:46:00'),
(1672, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:04', '2020-12-11 06:46:04'),
(1673, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:12', '2020-12-11 06:46:12'),
(1674, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:16', '2020-12-11 06:46:16'),
(1675, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:19', '2020-12-11 06:46:19'),
(1676, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:28', '2020-12-11 06:46:28'),
(1677, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:46:39', '2020-12-11 06:46:39'),
(1678, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:01', '2020-12-11 06:47:01'),
(1679, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:06', '2020-12-11 06:47:06'),
(1680, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:13', '2020-12-11 06:47:13'),
(1681, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:37', '2020-12-11 06:47:37'),
(1682, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:44', '2020-12-11 06:47:44'),
(1683, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:47', '2020-12-11 06:47:47'),
(1684, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"52\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 06:47:59', '2020-12-11 06:47:59'),
(1685, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:47:59', '2020-12-11 06:47:59'),
(1686, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:48:06', '2020-12-11 06:48:06'),
(1687, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:48:21', '2020-12-11 06:48:21'),
(1688, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"21\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 06:48:28', '2020-12-11 06:48:28'),
(1689, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:48:28', '2020-12-11 06:48:28'),
(1690, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:48:38', '2020-12-11 06:48:38'),
(1691, 1, 'sc_admin/menu/edit/26', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:48:46', '2020-12-11 06:48:46'),
(1692, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:48:59', '2020-12-11 06:48:59'),
(1693, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:54:09', '2020-12-11 06:54:09'),
(1694, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:54:14', '2020-12-11 06:54:14'),
(1695, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:57:47', '2020-12-11 06:57:47'),
(1696, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:57:59', '2020-12-11 06:57:59'),
(1697, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:58:04', '2020-12-11 06:58:04'),
(1698, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 06:58:09', '2020-12-11 06:58:09'),
(1699, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:04:12', '2020-12-11 07:04:12'),
(1700, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:05:12', '2020-12-11 07:05:12'),
(1701, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:06:44', '2020-12-11 07:06:44'),
(1702, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:07:10', '2020-12-11 07:07:10'),
(1703, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:07:22', '2020-12-11 07:07:22'),
(1704, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:08:19', '2020-12-11 07:08:19'),
(1705, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:08:23', '2020-12-11 07:08:23'),
(1706, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:08:27', '2020-12-11 07:08:27'),
(1707, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:11:49', '2020-12-11 07:11:49'),
(1708, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:13:48', '2020-12-11 07:13:48'),
(1709, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:14:12', '2020-12-11 07:14:12'),
(1710, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:14:15', '2020-12-11 07:14:15'),
(1711, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-12-11 07:14:20', '2020-12-11 07:14:20'),
(1712, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-11 07:14:23', '2020-12-11 07:14:23'),
(1713, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:14:33', '2020-12-11 07:14:33'),
(1714, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:15:46', '2020-12-11 07:15:46'),
(1715, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:16:11', '2020-12-11 07:16:11'),
(1716, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-12-11 07:16:13', '2020-12-11 07:16:13'),
(1717, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:16:18', '2020-12-11 07:16:18'),
(1718, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:16:21', '2020-12-11 07:16:21'),
(1719, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:16:38', '2020-12-11 07:16:38'),
(1720, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-11 07:17:00', '2020-12-11 07:17:00'),
(1721, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:17:02', '2020-12-11 07:17:02'),
(1722, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:17:13', '2020-12-11 07:17:13'),
(1723, 1, 'sc_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:17:27', '2020-12-11 07:17:27'),
(1724, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:17:31', '2020-12-11 07:17:31'),
(1725, 1, 'sc_admin/store_css', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:17:34', '2020-12-11 07:17:34'),
(1726, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:17:49', '2020-12-11 07:17:49'),
(1727, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"67\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:17:55', '2020-12-11 07:17:55'),
(1728, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"22\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:18:06', '2020-12-11 07:18:06'),
(1729, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:18:07', '2020-12-11 07:18:07'),
(1730, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"44\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:18:15', '2020-12-11 07:18:15'),
(1731, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:18:16', '2020-12-11 07:18:16'),
(1732, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"67\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:18:43', '2020-12-11 07:18:43'),
(1733, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"23\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:18:46', '2020-12-11 07:18:46'),
(1734, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:18:46', '2020-12-11 07:18:46'),
(1735, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:18:52', '2020-12-11 07:18:52'),
(1736, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:19:10', '2020-12-11 07:19:10'),
(1737, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:19:19', '2020-12-11 07:19:19'),
(1738, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"4\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:19:31', '2020-12-11 07:19:31'),
(1739, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"24\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:19:37', '2020-12-11 07:19:37'),
(1740, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:19:38', '2020-12-11 07:19:38'),
(1741, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:19:44', '2020-12-11 07:19:44'),
(1742, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:19:52', '2020-12-11 07:19:52'),
(1743, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:19:59', '2020-12-11 07:19:59'),
(1744, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:20:57', '2020-12-11 07:20:57'),
(1745, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:21:15', '2020-12-11 07:21:15'),
(1746, 1, 'sc_admin/plugin/cms', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:21:54', '2020-12-11 07:21:54'),
(1747, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"39\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:22:11', '2020-12-11 07:22:11'),
(1748, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:22:11', '2020-12-11 07:22:11'),
(1749, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:22:52', '2020-12-11 07:22:52'),
(1750, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\",\"name\":\"payment_off\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-11 07:22:55', '2020-12-11 07:22:55'),
(1751, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:23:00', '2020-12-11 07:23:00'),
(1752, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:23:43', '2020-12-11 07:23:43'),
(1753, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"40\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:23:50', '2020-12-11 07:23:50'),
(1754, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:23:50', '2020-12-11 07:23:50'),
(1755, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"41\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:23:56', '2020-12-11 07:23:56'),
(1756, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:23:56', '2020-12-11 07:23:56'),
(1757, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"43\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:03', '2020-12-11 07:24:03'),
(1758, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:03', '2020-12-11 07:24:03'),
(1759, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"42\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:08', '2020-12-11 07:24:08'),
(1760, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:09', '2020-12-11 07:24:09'),
(1761, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"35\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:14', '2020-12-11 07:24:14'),
(1762, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:15', '2020-12-11 07:24:15'),
(1763, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"67\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:19', '2020-12-11 07:24:19'),
(1764, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:19', '2020-12-11 07:24:19'),
(1765, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"29\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:28', '2020-12-11 07:24:28'),
(1766, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:29', '2020-12-11 07:24:29'),
(1767, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"4\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:37', '2020-12-11 07:24:37'),
(1768, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:37', '2020-12-11 07:24:37'),
(1769, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"8\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:24:41', '2020-12-11 07:24:41'),
(1770, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:42', '2020-12-11 07:24:42'),
(1771, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:54', '2020-12-11 07:24:54'),
(1772, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:24:57', '2020-12-11 07:24:57'),
(1773, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:25:01', '2020-12-11 07:25:01'),
(1774, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:25:04', '2020-12-11 07:25:04'),
(1775, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:25:06', '2020-12-11 07:25:06'),
(1776, 1, 'sc_admin/customer/update-address/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:25:10', '2020-12-11 07:25:10'),
(1777, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:26:30', '2020-12-11 07:26:30'),
(1778, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:26:53', '2020-12-11 07:26:53'),
(1779, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:27:08', '2020-12-11 07:27:08'),
(1780, 1, 'sc_admin/user/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:27:20', '2020-12-11 07:27:20'),
(1781, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:27:46', '2020-12-11 07:27:46'),
(1782, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:27:54', '2020-12-11 07:27:54'),
(1783, 1, 'sc_admin/backup', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:02', '2020-12-11 07:28:02'),
(1784, 1, 'sc_admin/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:08', '2020-12-11 07:28:08'),
(1785, 1, 'sc_admin/log', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:12', '2020-12-11 07:28:12'),
(1786, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:15', '2020-12-11 07:28:15'),
(1787, 1, 'sc_admin/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:21', '2020-12-11 07:28:21'),
(1788, 1, 'sc_admin/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:24', '2020-12-11 07:28:24'),
(1789, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:32', '2020-12-11 07:28:32'),
(1790, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:48', '2020-12-11 07:28:48'),
(1791, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"34\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:28:54', '2020-12-11 07:28:54'),
(1792, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:28:54', '2020-12-11 07:28:54'),
(1793, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"58\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:00', '2020-12-11 07:29:00'),
(1794, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:01', '2020-12-11 07:29:01'),
(1795, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"5\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:07', '2020-12-11 07:29:07'),
(1796, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:07', '2020-12-11 07:29:07'),
(1797, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"11\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:19', '2020-12-11 07:29:19'),
(1798, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:20', '2020-12-11 07:29:20'),
(1799, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"13\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:25', '2020-12-11 07:29:25'),
(1800, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:26', '2020-12-11 07:29:26'),
(1801, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"27\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:30', '2020-12-11 07:29:30'),
(1802, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"14\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:33', '2020-12-11 07:29:33'),
(1803, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:34', '2020-12-11 07:29:34'),
(1804, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"17\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:39', '2020-12-11 07:29:39'),
(1805, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:40', '2020-12-11 07:29:40'),
(1806, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"18\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:44', '2020-12-11 07:29:44'),
(1807, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:45', '2020-12-11 07:29:45'),
(1808, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"627\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:49', '2020-12-11 07:29:49'),
(1809, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:49', '2020-12-11 07:29:49'),
(1810, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"63\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:53', '2020-12-11 07:29:53'),
(1811, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:54', '2020-12-11 07:29:54'),
(1812, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"19\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:29:58', '2020-12-11 07:29:58'),
(1813, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:29:59', '2020-12-11 07:29:59'),
(1814, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"61\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:04', '2020-12-11 07:30:04'),
(1815, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:04', '2020-12-11 07:30:04'),
(1816, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"27\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:08', '2020-12-11 07:30:08'),
(1817, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:08', '2020-12-11 07:30:08'),
(1818, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"50\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:13', '2020-12-11 07:30:13'),
(1819, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:14', '2020-12-11 07:30:14'),
(1820, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"36\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:18', '2020-12-11 07:30:18'),
(1821, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:19', '2020-12-11 07:30:19'),
(1822, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"28\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:23', '2020-12-11 07:30:23'),
(1823, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:23', '2020-12-11 07:30:23'),
(1824, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"31\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:29', '2020-12-11 07:30:29'),
(1825, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:30', '2020-12-11 07:30:30'),
(1826, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"32\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:35', '2020-12-11 07:30:35'),
(1827, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:35', '2020-12-11 07:30:35'),
(1828, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"30\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:39', '2020-12-11 07:30:39'),
(1829, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:39', '2020-12-11 07:30:39'),
(1830, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"66\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:45', '2020-12-11 07:30:45'),
(1831, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:45', '2020-12-11 07:30:45'),
(1832, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"59\",\"_token\":\"vy6VclfGerugTenta3GBHeHLblIGhL16sFNY9AYD\"}', '2020-12-11 07:30:48', '2020-12-11 07:30:48'),
(1833, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:48', '2020-12-11 07:30:48'),
(1834, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:51', '2020-12-11 07:30:51'),
(1835, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:30:59', '2020-12-11 07:30:59'),
(1836, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:31:09', '2020-12-11 07:31:09'),
(1837, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:31:14', '2020-12-11 07:31:14'),
(1838, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:31:27', '2020-12-11 07:31:27'),
(1839, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:31:58', '2020-12-11 07:31:58'),
(1840, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:31:59', '2020-12-11 07:31:59'),
(1841, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:32:08', '2020-12-11 07:32:08'),
(1842, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:32:12', '2020-12-11 07:32:12'),
(1843, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:32:18', '2020-12-11 07:32:18'),
(1844, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:32:21', '2020-12-11 07:32:21'),
(1845, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:32:58', '2020-12-11 07:32:58'),
(1846, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:33:25', '2020-12-11 07:33:25'),
(1847, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:33:28', '2020-12-11 07:33:28'),
(1848, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:33:42', '2020-12-11 07:33:42'),
(1849, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:33:44', '2020-12-11 07:33:44');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1850, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:33:54', '2020-12-11 07:33:54'),
(1851, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:33:56', '2020-12-11 07:33:56'),
(1852, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:34:23', '2020-12-11 07:34:23'),
(1853, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:35:22', '2020-12-11 07:35:22'),
(1854, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:35:25', '2020-12-11 07:35:25'),
(1855, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:35:30', '2020-12-11 07:35:30'),
(1856, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:35:41', '2020-12-11 07:35:41'),
(1857, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:37:21', '2020-12-11 07:37:21'),
(1858, 1, 'sc_admin/plugin/cms', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:37:24', '2020-12-11 07:37:24'),
(1859, 1, 'sc_admin/store_css', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:37:26', '2020-12-11 07:37:26'),
(1860, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:43:57', '2020-12-11 07:43:57'),
(1861, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:44:02', '2020-12-11 07:44:02'),
(1862, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:44:05', '2020-12-11 07:44:05'),
(1863, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:44:08', '2020-12-11 07:44:08'),
(1864, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:44:11', '2020-12-11 07:44:11'),
(1865, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:44:14', '2020-12-11 07:44:14'),
(1866, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:44:42', '2020-12-11 07:44:42'),
(1867, 1, 'sc_admin/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:48:54', '2020-12-11 07:48:54'),
(1868, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:48:55', '2020-12-11 07:48:55'),
(1869, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:51:33', '2020-12-11 07:51:33'),
(1870, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:56:33', '2020-12-11 07:56:33'),
(1871, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:57:15', '2020-12-11 07:57:15'),
(1872, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-11 07:57:54', '2020-12-11 07:57:54'),
(1873, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:27:30', '2020-12-14 07:27:30'),
(1874, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:27:44', '2020-12-14 07:27:44'),
(1875, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:28:17', '2020-12-14 07:28:17'),
(1876, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:28:34', '2020-12-14 07:28:34'),
(1877, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:28:39', '2020-12-14 07:28:39'),
(1878, 1, 'sc_admin/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:28:47', '2020-12-14 07:28:47'),
(1879, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:28:48', '2020-12-14 07:28:48'),
(1880, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:29:01', '2020-12-14 07:29:01'),
(1881, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:29:37', '2020-12-14 07:29:37'),
(1882, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:30:16', '2020-12-14 07:30:16'),
(1883, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:30:49', '2020-12-14 07:30:49'),
(1884, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:30:55', '2020-12-14 07:30:55'),
(1885, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:31:17', '2020-12-14 07:31:17'),
(1886, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:31:21', '2020-12-14 07:31:21'),
(1887, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:31:27', '2020-12-14 07:31:27'),
(1888, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:31:35', '2020-12-14 07:31:35'),
(1889, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:32:20', '2020-12-14 07:32:20'),
(1890, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:32:30', '2020-12-14 07:32:30'),
(1891, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:33:55', '2020-12-14 07:33:55'),
(1892, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:34:00', '2020-12-14 07:34:00'),
(1893, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:34:16', '2020-12-14 07:34:16'),
(1894, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:34:59', '2020-12-14 07:34:59'),
(1895, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:35:13', '2020-12-14 07:35:13'),
(1896, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:35:16', '2020-12-14 07:35:16'),
(1897, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:35:26', '2020-12-14 07:35:26'),
(1898, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:36:07', '2020-12-14 07:36:07'),
(1899, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:36:18', '2020-12-14 07:36:18'),
(1900, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 06:49:42', '2020-12-14 06:49:42'),
(1901, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 06:58:11', '2020-12-14 06:58:11'),
(1902, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:58:24', '2020-12-14 07:58:24'),
(1903, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:58:35', '2020-12-14 07:58:35'),
(1904, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:58:56', '2020-12-14 07:58:56'),
(1905, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:59:11', '2020-12-14 07:59:11'),
(1906, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:59:25', '2020-12-14 07:59:25'),
(1907, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:59:29', '2020-12-14 07:59:29'),
(1908, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 07:59:31', '2020-12-14 07:59:31'),
(1909, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:09:48', '2020-12-14 08:09:48'),
(1910, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:09:55', '2020-12-14 08:09:55'),
(1911, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:09:59', '2020-12-14 08:09:59'),
(1912, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:12:48', '2020-12-14 08:12:48'),
(1913, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:12:52', '2020-12-14 08:12:52'),
(1914, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:12:55', '2020-12-14 08:12:55'),
(1915, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:12:58', '2020-12-14 08:12:58'),
(1916, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:13:05', '2020-12-14 08:13:05'),
(1917, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:13:07', '2020-12-14 08:13:07'),
(1918, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:14:02', '2020-12-14 08:14:02'),
(1919, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:15:05', '2020-12-14 08:15:05'),
(1920, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:15:31', '2020-12-14 08:15:31'),
(1921, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:15:47', '2020-12-14 08:15:47'),
(1922, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:16:38', '2020-12-14 08:16:38'),
(1923, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:17:01', '2020-12-14 08:17:01'),
(1924, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:17:52', '2020-12-14 08:17:52'),
(1925, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 08:19:24', '2020-12-14 08:19:24'),
(1926, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:41:19', '2020-12-14 11:41:19'),
(1927, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:42:35', '2020-12-14 11:42:35'),
(1928, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:43:05', '2020-12-14 11:43:05'),
(1929, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:43:07', '2020-12-14 11:43:07'),
(1930, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:43:57', '2020-12-14 11:43:57'),
(1931, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:44:56', '2020-12-14 11:44:56'),
(1932, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:44:59', '2020-12-14 11:44:59'),
(1933, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:46:23', '2020-12-14 11:46:23'),
(1934, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:46:54', '2020-12-14 11:46:54'),
(1935, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:47:11', '2020-12-14 11:47:11'),
(1936, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:47:59', '2020-12-14 11:47:59'),
(1937, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:48:02', '2020-12-14 11:48:02'),
(1938, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:48:45', '2020-12-14 11:48:45'),
(1939, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:49:14', '2020-12-14 11:49:14'),
(1940, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:50:23', '2020-12-14 11:50:23'),
(1941, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:51:42', '2020-12-14 11:51:42'),
(1942, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:52:40', '2020-12-14 11:52:40'),
(1943, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:52:50', '2020-12-14 11:52:50'),
(1944, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:53:06', '2020-12-14 11:53:06'),
(1945, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:53:36', '2020-12-14 11:53:36'),
(1946, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:53:43', '2020-12-14 11:53:43'),
(1947, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:56:57', '2020-12-14 11:56:57'),
(1948, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:57:12', '2020-12-14 11:57:12'),
(1949, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:58:00', '2020-12-14 11:58:00'),
(1950, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 11:58:04', '2020-12-14 11:58:04'),
(1951, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:00:14', '2020-12-14 12:00:14'),
(1952, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:00:24', '2020-12-14 12:00:24'),
(1953, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:00:49', '2020-12-14 12:00:49'),
(1954, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:01:01', '2020-12-14 12:01:01'),
(1955, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:01:10', '2020-12-14 12:01:10'),
(1956, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:01:44', '2020-12-14 12:01:44'),
(1957, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:02:48', '2020-12-14 12:02:48'),
(1958, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:03:04', '2020-12-14 12:03:04'),
(1959, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:03:46', '2020-12-14 12:03:46'),
(1960, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:03:53', '2020-12-14 12:03:53'),
(1961, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:04:56', '2020-12-14 12:04:56'),
(1962, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:05:08', '2020-12-14 12:05:08'),
(1963, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:05:19', '2020-12-14 12:05:19'),
(1964, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:07:11', '2020-12-14 12:07:11'),
(1965, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:07:19', '2020-12-14 12:07:19'),
(1966, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:07:54', '2020-12-14 12:07:54'),
(1967, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:08:02', '2020-12-14 12:08:02'),
(1968, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:08:25', '2020-12-14 12:08:25'),
(1969, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:09:33', '2020-12-14 12:09:33'),
(1970, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:09:41', '2020-12-14 12:09:41'),
(1971, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:10:04', '2020-12-14 12:10:04'),
(1972, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:10:19', '2020-12-14 12:10:19'),
(1973, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:10:27', '2020-12-14 12:10:27'),
(1974, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:10:41', '2020-12-14 12:10:41'),
(1975, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:10:48', '2020-12-14 12:10:48'),
(1976, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:10:59', '2020-12-14 12:10:59'),
(1977, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:11:26', '2020-12-14 12:11:26'),
(1978, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:11:54', '2020-12-14 12:11:54'),
(1979, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:12:17', '2020-12-14 12:12:17'),
(1980, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:12:30', '2020-12-14 12:12:30'),
(1981, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:12:31', '2020-12-14 12:12:31'),
(1982, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:12:41', '2020-12-14 12:12:41'),
(1983, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:13:37', '2020-12-14 12:13:37'),
(1984, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:14:06', '2020-12-14 12:14:06'),
(1985, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:14:09', '2020-12-14 12:14:09'),
(1986, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:10', '2020-12-14 12:15:10'),
(1987, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:34', '2020-12-14 12:15:34'),
(1988, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:36', '2020-12-14 12:15:36'),
(1989, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:40', '2020-12-14 12:15:40'),
(1990, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:47', '2020-12-14 12:15:47'),
(1991, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:49', '2020-12-14 12:15:49'),
(1992, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:15:54', '2020-12-14 12:15:54'),
(1993, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:16:16', '2020-12-14 12:16:16'),
(1994, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:16:51', '2020-12-14 12:16:51'),
(1995, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:16:56', '2020-12-14 12:16:56'),
(1996, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:17:03', '2020-12-14 12:17:03'),
(1997, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:23:21', '2020-12-14 12:23:21'),
(1998, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:24:17', '2020-12-14 12:24:17'),
(1999, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:27:50', '2020-12-14 12:27:50'),
(2000, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:45:43', '2020-12-14 12:45:43'),
(2001, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:45:44', '2020-12-14 12:45:44'),
(2002, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"phone\",\"value\":\"016112344\",\"pk\":null,\"_token\":\"ZIa57Bpm3L1yj0k5sh3H3jvNPN5MK2K4gpQ6iXqz\",\"storeId\":\"1\"}', '2020-12-14 12:47:52', '2020-12-14 12:47:52'),
(2003, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:48:16', '2020-12-14 12:48:16'),
(2004, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:48:18', '2020-12-14 12:48:18'),
(2005, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"18\"],\"image\":null,\"sku\":\"qwe\",\"alias\":\"qwe\",\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"12\",\"status\":\"on\",\"_token\":\"ZIa57Bpm3L1yj0k5sh3H3jvNPN5MK2K4gpQ6iXqz\"}', '2020-12-14 12:48:53', '2020-12-14 12:48:53'),
(2006, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:48:53', '2020-12-14 12:48:53'),
(2007, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":null,\"description\":null,\"content\":\"qwe\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"18\"],\"image\":null,\"sku\":\"qwe\",\"alias\":\"qwe\",\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"12\",\"status\":\"on\",\"_token\":\"ZIa57Bpm3L1yj0k5sh3H3jvNPN5MK2K4gpQ6iXqz\"}', '2020-12-14 12:48:59', '2020-12-14 12:48:59'),
(2008, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:49:00', '2020-12-14 12:49:00'),
(2009, 1, 'sc_admin/product/edit/43', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:49:05', '2020-12-14 12:49:05'),
(2010, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:49:16', '2020-12-14 12:49:16'),
(2011, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:49:57', '2020-12-14 12:49:57'),
(2012, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 12:55:09', '2020-12-14 12:55:09'),
(2013, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"43\",\"_token\":\"ZIa57Bpm3L1yj0k5sh3H3jvNPN5MK2K4gpQ6iXqz\"}', '2020-12-14 12:55:12', '2020-12-14 12:55:12'),
(2014, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-14 12:55:13', '2020-12-14 12:55:13'),
(2015, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-14 13:48:44', '2020-12-14 13:48:44'),
(2016, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 06:38:21', '2020-12-18 06:38:21'),
(2017, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 06:38:36', '2020-12-18 06:38:36'),
(2018, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 06:51:59', '2020-12-18 06:51:59'),
(2019, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 06:52:12', '2020-12-18 06:52:12'),
(2020, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 08:09:47', '2020-12-18 08:09:47'),
(2021, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 09:44:45', '2020-12-18 09:44:45'),
(2022, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"keyword\":\"contact us\"}', '2020-12-18 09:46:23', '2020-12-18 09:46:23'),
(2023, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 09:46:26', '2020-12-18 09:46:26'),
(2024, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"keyword\":\"5\"}', '2020-12-18 09:46:29', '2020-12-18 09:46:29'),
(2025, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 09:58:08', '2020-12-18 09:58:08'),
(2026, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 09:58:50', '2020-12-18 09:58:50'),
(2027, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 09:58:56', '2020-12-18 09:58:56'),
(2028, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:26:38', '2020-12-18 10:26:38'),
(2029, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:27:45', '2020-12-18 10:27:45'),
(2030, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:27:54', '2020-12-18 10:27:54'),
(2031, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:28:05', '2020-12-18 10:28:05'),
(2032, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:28:08', '2020-12-18 10:28:08'),
(2033, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:28:10', '2020-12-18 10:28:10'),
(2034, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:28:13', '2020-12-18 10:28:13'),
(2035, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:28:23', '2020-12-18 10:28:23'),
(2036, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:28:38', '2020-12-18 10:28:38'),
(2037, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:29:56', '2020-12-18 10:29:56'),
(2038, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:30:01', '2020-12-18 10:30:01'),
(2039, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:30:03', '2020-12-18 10:30:03'),
(2040, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:30:06', '2020-12-18 10:30:06'),
(2041, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:06', '2020-12-18 10:32:06'),
(2042, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:13', '2020-12-18 10:32:13'),
(2043, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:16', '2020-12-18 10:32:16'),
(2044, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:18', '2020-12-18 10:32:18'),
(2045, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:20', '2020-12-18 10:32:20'),
(2046, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:41', '2020-12-18 10:32:41'),
(2047, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:46', '2020-12-18 10:32:46'),
(2048, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:50', '2020-12-18 10:32:50'),
(2049, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:51', '2020-12-18 10:32:51'),
(2050, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:52', '2020-12-18 10:32:52'),
(2051, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:54', '2020-12-18 10:32:54'),
(2052, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:57', '2020-12-18 10:32:57'),
(2053, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:32:58', '2020-12-18 10:32:58'),
(2054, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:03', '2020-12-18 10:33:03'),
(2055, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:04', '2020-12-18 10:33:04'),
(2056, 1, 'sc_admin/order/detail/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:08', '2020-12-18 10:33:08'),
(2057, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:14', '2020-12-18 10:33:14'),
(2058, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:17', '2020-12-18 10:33:17'),
(2059, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:37', '2020-12-18 10:33:37'),
(2060, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:41', '2020-12-18 10:33:41'),
(2061, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:33:43', '2020-12-18 10:33:43'),
(2062, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:34:06', '2020-12-18 10:34:06'),
(2063, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:34:10', '2020-12-18 10:34:10'),
(2064, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:34:11', '2020-12-18 10:34:11'),
(2065, 1, 'sc_admin/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:34:12', '2020-12-18 10:34:12'),
(2066, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:34:12', '2020-12-18 10:34:12'),
(2067, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:39:59', '2020-12-18 10:39:59'),
(2068, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:40:00', '2020-12-18 10:40:00'),
(2069, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:14', '2020-12-18 10:49:14'),
(2070, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:17', '2020-12-18 10:49:17'),
(2071, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:21', '2020-12-18 10:49:21'),
(2072, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:32', '2020-12-18 10:49:32'),
(2073, 1, 'sc_admin/theme/dark', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:38', '2020-12-18 10:49:38'),
(2074, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:38', '2020-12-18 10:49:38'),
(2075, 1, 'sc_admin/theme/lightblue', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:41', '2020-12-18 10:49:41'),
(2076, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:49:41', '2020-12-18 10:49:41'),
(2077, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:50:26', '2020-12-18 10:50:26'),
(2078, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:53:01', '2020-12-18 10:53:01');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(2079, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 10:53:04', '2020-12-18 10:53:04'),
(2080, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:09:16', '2020-12-18 11:09:16'),
(2081, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:09:20', '2020-12-18 11:09:20'),
(2082, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:09:47', '2020-12-18 11:09:47'),
(2083, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:09:59', '2020-12-18 11:09:59'),
(2084, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:12:47', '2020-12-18 11:12:47'),
(2085, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:12:49', '2020-12-18 11:12:49'),
(2086, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:23:11', '2020-12-18 11:23:11'),
(2087, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:23:31', '2020-12-18 11:23:31'),
(2088, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:23:34', '2020-12-18 11:23:34'),
(2089, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:23:53', '2020-12-18 11:23:53'),
(2090, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:32:07', '2020-12-18 11:32:07'),
(2091, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:32:10', '2020-12-18 11:32:10'),
(2092, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:32:15', '2020-12-18 11:32:15'),
(2093, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:32:19', '2020-12-18 11:32:19'),
(2094, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:32:27', '2020-12-18 11:32:27'),
(2095, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:32:59', '2020-12-18 11:32:59'),
(2096, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:33:14', '2020-12-18 11:33:14'),
(2097, 1, 'sc_admin/order/detail/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:33:22', '2020-12-18 11:33:22'),
(2098, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:33:27', '2020-12-18 11:33:27'),
(2099, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:33:29', '2020-12-18 11:33:29'),
(2100, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"IaeJiYELyKDdKlEVoxjaGxahbwR8AeUBRMIjMy1R\"}', '2020-12-18 11:36:36', '2020-12-18 11:36:36'),
(2101, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-18 11:36:37', '2020-12-18 11:36:37'),
(2102, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:36:40', '2020-12-18 11:36:40'),
(2103, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:38:54', '2020-12-18 11:38:54'),
(2104, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:42:30', '2020-12-18 11:42:30'),
(2105, 1, 'sc_admin/order/export_detail', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"order_id\":\"4\",\"type\":\"invoice\"}', '2020-12-18 11:42:42', '2020-12-18 11:42:42'),
(2106, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:42:48', '2020-12-18 11:42:48'),
(2107, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:42:51', '2020-12-18 11:42:51'),
(2108, 1, 'sc_admin/order/export_detail', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"order_id\":\"4\",\"type\":\"invoice\"}', '2020-12-18 11:42:52', '2020-12-18 11:42:52'),
(2109, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:43:52', '2020-12-18 11:43:52'),
(2110, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:44:19', '2020-12-18 11:44:19'),
(2111, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:44:37', '2020-12-18 11:44:37'),
(2112, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:44:50', '2020-12-18 11:44:50'),
(2113, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 11:51:15', '2020-12-18 11:51:15'),
(2114, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"IaeJiYELyKDdKlEVoxjaGxahbwR8AeUBRMIjMy1R\"}', '2020-12-18 12:04:03', '2020-12-18 12:04:03'),
(2115, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-18 12:04:04', '2020-12-18 12:04:04'),
(2116, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:06:59', '2020-12-18 12:06:59'),
(2117, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:07:08', '2020-12-18 12:07:08'),
(2118, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:07:38', '2020-12-18 12:07:38'),
(2119, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:07:42', '2020-12-18 12:07:42'),
(2120, 1, 'sc_admin/customer/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"qwer123\",\"phone\":\"0111111111\",\"email\":\"zetanalpha@gmail.com\",\"address1\":\"56, JALAN RAWA 3,\",\"password\":null,\"status\":\"on\",\"_token\":\"IaeJiYELyKDdKlEVoxjaGxahbwR8AeUBRMIjMy1R\"}', '2020-12-18 12:07:45', '2020-12-18 12:07:45'),
(2121, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:07:47', '2020-12-18 12:07:47'),
(2122, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:07:51', '2020-12-18 12:07:51'),
(2123, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:07:52', '2020-12-18 12:07:52'),
(2124, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:08:00', '2020-12-18 12:08:00'),
(2125, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:09:09', '2020-12-18 12:09:09'),
(2126, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:09:36', '2020-12-18 12:09:36'),
(2127, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:10:01', '2020-12-18 12:10:01'),
(2128, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:10:19', '2020-12-18 12:10:19'),
(2129, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:10:56', '2020-12-18 12:10:56'),
(2130, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:11:07', '2020-12-18 12:11:07'),
(2131, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:11:39', '2020-12-18 12:11:39'),
(2132, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:12:00', '2020-12-18 12:12:00'),
(2133, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:12:31', '2020-12-18 12:12:31'),
(2134, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:12:42', '2020-12-18 12:12:42'),
(2135, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:12:54', '2020-12-18 12:12:54'),
(2136, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:31:31', '2020-12-18 12:31:31'),
(2137, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:32:04', '2020-12-18 12:32:04'),
(2138, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:47:08', '2020-12-18 12:47:08'),
(2139, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:49:17', '2020-12-18 12:49:17'),
(2140, 1, 'sc_admin/order/detail/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:49:19', '2020-12-18 12:49:19'),
(2141, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:50:19', '2020-12-18 12:50:19'),
(2142, 1, 'sc_admin/order/detail/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:50:37', '2020-12-18 12:50:37'),
(2143, 1, 'sc_admin/order/detail/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:52:23', '2020-12-18 12:52:23'),
(2144, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:52:23', '2020-12-18 12:52:23'),
(2145, 1, 'sc_admin/order/detail/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:52:51', '2020-12-18 12:52:51'),
(2146, 1, 'sc_admin/order/detail/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 12:58:39', '2020-12-18 12:58:39'),
(2147, 1, 'sc_admin/order/detail/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:03:53', '2020-12-18 13:03:53'),
(2148, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:10:59', '2020-12-18 13:10:59'),
(2149, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:10:59', '2020-12-18 13:10:59'),
(2150, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:11:05', '2020-12-18 13:11:05'),
(2151, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:11:37', '2020-12-18 13:11:37'),
(2152, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:11:44', '2020-12-18 13:11:44'),
(2153, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:12:15', '2020-12-18 13:12:15'),
(2154, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:12:26', '2020-12-18 13:12:26'),
(2155, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:13:24', '2020-12-18 13:13:24'),
(2156, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:14:10', '2020-12-18 13:14:10'),
(2157, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:14:11', '2020-12-18 13:14:11'),
(2158, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:14:21', '2020-12-18 13:14:21'),
(2159, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:57:25', '2020-12-18 13:57:25'),
(2160, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:59:17', '2020-12-18 13:59:17'),
(2161, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 13:59:45', '2020-12-18 13:59:45'),
(2162, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:02:13', '2020-12-18 14:02:13'),
(2163, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:02:19', '2020-12-18 14:02:19'),
(2164, 1, 'sc_admin/order/detail/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:02:21', '2020-12-18 14:02:21'),
(2165, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:02:23', '2020-12-18 14:02:23'),
(2166, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:02:24', '2020-12-18 14:02:24'),
(2167, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:04:09', '2020-12-18 14:04:09'),
(2168, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:04:19', '2020-12-18 14:04:19'),
(2169, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:04:23', '2020-12-18 14:04:23'),
(2170, 1, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":\"qweqwe\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"stock\":\"-2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:05:30', '2020-12-18 14:05:30'),
(2171, 1, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":\"qweqwe\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"stock\":\"-2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:05:35', '2020-12-18 14:05:35'),
(2172, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:05:37', '2020-12-18 14:05:37'),
(2173, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:05:42', '2020-12-18 14:05:42'),
(2174, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"asdsd\",\"keyword\":null,\"description\":\"asddddd\",\"content\":\"asdddd\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\"],\"image\":null,\"sku\":\"123\",\"alias\":\"123\",\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"12\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:06:18', '2020-12-18 14:06:18'),
(2175, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:06:20', '2020-12-18 14:06:20'),
(2176, 1, 'sc_admin/product/edit/44', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:06:23', '2020-12-18 14:06:23'),
(2177, 1, 'sc_admin/product/edit/44', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:06:29', '2020-12-18 14:06:29'),
(2178, 1, 'sc_admin/product/edit/44', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:06:35', '2020-12-18 14:06:35'),
(2179, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:06:43', '2020-12-18 14:06:43'),
(2180, 1, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"stock\":\"-2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:06:56', '2020-12-18 14:06:56'),
(2181, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:05', '2020-12-18 14:07:05'),
(2182, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:09', '2020-12-18 14:07:09'),
(2183, 1, 'sc_admin/product/edit/41', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Shape Of Things To Come\",\"keyword\":\"Shape Of Things To Come\",\"description\":\"123\",\"content\":\"In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\\r\\n\\r\\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\\r\\n\\r\\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\\r\\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\\r\\n\\r\\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\\r\\n\\r\\n\'Intriguing and informed\' THE TIMES\"}},\"category\":[\"31\",\"32\"],\"image\":\"\\/data\\/product\\/9.jpg\",\"sku\":\"vat\",\"alias\":\"shape-of-things-to-come\",\"price\":\"10\",\"stock\":\"-1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:07:13', '2020-12-18 14:07:13'),
(2184, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:26', '2020-12-18 14:07:26'),
(2185, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:27', '2020-12-18 14:07:27'),
(2186, 1, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"-2\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:07:37', '2020-12-18 14:07:37'),
(2187, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:49', '2020-12-18 14:07:49'),
(2188, 1, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"-2\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:07:54', '2020-12-18 14:07:54'),
(2189, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:55', '2020-12-18 14:07:55'),
(2190, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:07:58', '2020-12-18 14:07:58'),
(2191, 1, 'sc_admin/product/edit/44', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:08:12', '2020-12-18 14:08:12'),
(2192, 1, 'sc_admin/product/edit/44', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"asdsd\",\"keyword\":null,\"description\":\"asddddd123213\",\"content\":\"asdddd\"}},\"category\":[\"19\"],\"image\":null,\"sku\":\"123\",\"alias\":\"123\",\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"12\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:08:15', '2020-12-18 14:08:15'),
(2193, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:08:15', '2020-12-18 14:08:15'),
(2194, 1, 'sc_admin/product/edit/44', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:08:17', '2020-12-18 14:08:17'),
(2195, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:08:25', '2020-12-18 14:08:25'),
(2196, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:09:20', '2020-12-18 14:09:20'),
(2197, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:09:34', '2020-12-18 14:09:34'),
(2198, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:09:47', '2020-12-18 14:09:47'),
(2199, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:09:52', '2020-12-18 14:09:52'),
(2200, 1, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"trav\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"20\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:09:58', '2020-12-18 14:09:58'),
(2201, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:10:02', '2020-12-18 14:10:02'),
(2202, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:10:05', '2020-12-18 14:10:05'),
(2203, 1, 'sc_admin/product/edit/41', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Shape Of Things To Come\",\"keyword\":\"Shape Of Things To Come\",\"description\":null,\"content\":\"In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\\r\\n\\r\\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\\r\\n\\r\\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\\r\\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\\r\\n\\r\\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\\r\\n\\r\\n\'Intriguing and informed\' THE TIMES\"}},\"category\":[\"31\",\"32\"],\"image\":\"\\/data\\/product\\/9.jpg\",\"sku\":\"vat\",\"alias\":\"shape-of-things-to-come\",\"price\":\"10\",\"tax_id\":\"0\",\"stock\":\"12\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:10:09', '2020-12-18 14:10:09'),
(2204, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:10:18', '2020-12-18 14:10:18'),
(2205, 1, 'sc_admin/product/edit/44', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:10:56', '2020-12-18 14:10:56'),
(2206, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:11:09', '2020-12-18 14:11:09'),
(2207, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:12:01', '2020-12-18 14:12:01'),
(2208, 1, 'sc_admin/product/edit/41', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Shape Of Things To Come\",\"keyword\":\"Shape Of Things To Come\",\"description\":null,\"content\":\"In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\\r\\n\\r\\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\\r\\n\\r\\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\\r\\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\\r\\n\\r\\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\\r\\n\\r\\n\'Intriguing and informed\' THE TIMES\"}},\"category\":[\"31\",\"32\"],\"image\":\"\\/data\\/product\\/9.jpg\",\"sku\":\"vat\",\"alias\":\"shape-of-things-to-come\",\"price\":\"10\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"status\":\"on\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:12:10', '2020-12-18 14:12:10'),
(2209, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:12:19', '2020-12-18 14:12:19'),
(2210, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:12:22', '2020-12-18 14:12:22'),
(2211, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\",\"name\":\"captcha_mode\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-18 14:12:46', '2020-12-18 14:12:46'),
(2212, 1, 'sc_admin/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\",\"name\":\"captcha_mode\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-12-18 14:12:51', '2020-12-18 14:12:51'),
(2213, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:12:54', '2020-12-18 14:12:54'),
(2214, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:12:55', '2020-12-18 14:12:55'),
(2215, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"44\",\"_token\":\"yOsFxskDTOAjIvEax8fZgQNGq39cX9WU0tTi3HKV\"}', '2020-12-18 14:12:59', '2020-12-18 14:12:59'),
(2216, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-18 14:12:59', '2020-12-18 14:12:59'),
(2217, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:40:45', '2020-12-18 14:40:45'),
(2218, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:41:26', '2020-12-18 14:41:26'),
(2219, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:41:28', '2020-12-18 14:41:28'),
(2220, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:41:30', '2020-12-18 14:41:30'),
(2221, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:41:48', '2020-12-18 14:41:48'),
(2222, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:42:12', '2020-12-18 14:42:12'),
(2223, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:10', '2020-12-18 14:44:10'),
(2224, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:13', '2020-12-18 14:44:13'),
(2225, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:21', '2020-12-18 14:44:21'),
(2226, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:24', '2020-12-18 14:44:24'),
(2227, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:25', '2020-12-18 14:44:25'),
(2228, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:34', '2020-12-18 14:44:34'),
(2229, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:41', '2020-12-18 14:44:41'),
(2230, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:52', '2020-12-18 14:44:52'),
(2231, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:44:55', '2020-12-18 14:44:55'),
(2232, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:45:30', '2020-12-18 14:45:30'),
(2233, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:45:33', '2020-12-18 14:45:33'),
(2234, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:45:40', '2020-12-18 14:45:40'),
(2235, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:45:43', '2020-12-18 14:45:43'),
(2236, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:45:54', '2020-12-18 14:45:54'),
(2237, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:45:57', '2020-12-18 14:45:57'),
(2238, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:46:09', '2020-12-18 14:46:09'),
(2239, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:46:19', '2020-12-18 14:46:19'),
(2240, 1, 'sc_admin/permission/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:46:24', '2020-12-18 14:46:24'),
(2241, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:46:29', '2020-12-18 14:46:29'),
(2242, 1, 'sc_admin/role/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:46:39', '2020-12-18 14:46:39');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(2243, 1, 'sc_admin/role/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:47:03', '2020-12-18 14:47:03'),
(2244, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:47:08', '2020-12-18 14:47:08'),
(2245, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:47:10', '2020-12-18 14:47:10'),
(2246, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:47:42', '2020-12-18 14:47:42'),
(2247, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:47:51', '2020-12-18 14:47:51'),
(2248, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:47:58', '2020-12-18 14:47:58'),
(2249, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:48:02', '2020-12-18 14:48:02'),
(2250, 2, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:48:09', '2020-12-18 14:48:09'),
(2251, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:48:57', '2020-12-18 14:48:57'),
(2252, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:49:02', '2020-12-18 14:49:02'),
(2253, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:49:11', '2020-12-18 14:49:11'),
(2254, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:49:56', '2020-12-18 14:49:56'),
(2255, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:50:02', '2020-12-18 14:50:02'),
(2256, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:50:06', '2020-12-18 14:50:06'),
(2257, 1, 'sc_admin/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"38\",\"_token\":\"ArbJhowE78aJBdHR88GIjTZoRAEYT5FcZCWj2mQf\"}', '2020-12-18 14:50:13', '2020-12-18 14:50:13'),
(2258, 1, 'sc_admin/menu/edit/38', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:50:39', '2020-12-18 14:50:39'),
(2259, 1, 'sc_admin/menu/edit/38', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:50:46', '2020-12-18 14:50:46'),
(2260, 1, 'sc_admin/menu/edit/38', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:50:52', '2020-12-18 14:50:52'),
(2261, 1, 'sc_admin/menu/edit/46', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:50:58', '2020-12-18 14:50:58'),
(2262, 1, 'sc_admin/menu/edit/38', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:03', '2020-12-18 14:51:03'),
(2263, 1, 'sc_admin/menu/edit/46', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:13', '2020-12-18 14:51:13'),
(2264, 1, 'sc_admin/menu/edit/46', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"parent_id\":\"9\",\"title\":\"lang::admin.menu_titles.users\",\"icon\":\"fas fa-users\",\"uri\":\"admin::user\",\"sort\":\"0\",\"_token\":\"ArbJhowE78aJBdHR88GIjTZoRAEYT5FcZCWj2mQf\"}', '2020-12-18 14:51:20', '2020-12-18 14:51:20'),
(2265, 1, 'sc_admin/menu/edit/46', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:21', '2020-12-18 14:51:21'),
(2266, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:30', '2020-12-18 14:51:30'),
(2267, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:38', '2020-12-18 14:51:38'),
(2268, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:46', '2020-12-18 14:51:46'),
(2269, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:51:52', '2020-12-18 14:51:52'),
(2270, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:52:35', '2020-12-18 14:52:35'),
(2271, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:52:38', '2020-12-18 14:52:38'),
(2272, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:52:45', '2020-12-18 14:52:45'),
(2273, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:53:43', '2020-12-18 14:53:43'),
(2274, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:53:46', '2020-12-18 14:53:46'),
(2275, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:53:48', '2020-12-18 14:53:48'),
(2276, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:53:55', '2020-12-18 14:53:55'),
(2277, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:53:57', '2020-12-18 14:53:57'),
(2278, 1, 'sc_admin/banner/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:54:18', '2020-12-18 14:54:18'),
(2279, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:54:29', '2020-12-18 14:54:29'),
(2280, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:54:35', '2020-12-18 14:54:35'),
(2281, 1, 'sc_admin/menu/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:54:48', '2020-12-18 14:54:48'),
(2282, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:09', '2020-12-18 14:55:09'),
(2283, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:13', '2020-12-18 14:55:13'),
(2284, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:14', '2020-12-18 14:55:14'),
(2285, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:23', '2020-12-18 14:55:23'),
(2286, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:27', '2020-12-18 14:55:27'),
(2287, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:28', '2020-12-18 14:55:28'),
(2288, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:39', '2020-12-18 14:55:39'),
(2289, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:53', '2020-12-18 14:55:53'),
(2290, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:55:54', '2020-12-18 14:55:54'),
(2291, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:56:05', '2020-12-18 14:56:05'),
(2292, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:56:16', '2020-12-18 14:56:16'),
(2293, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:56:37', '2020-12-18 14:56:37'),
(2294, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:57:11', '2020-12-18 14:57:11'),
(2295, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:57:30', '2020-12-18 14:57:30'),
(2296, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:57:41', '2020-12-18 14:57:41'),
(2297, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:58:02', '2020-12-18 14:58:02'),
(2298, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:59:20', '2020-12-18 14:59:20'),
(2299, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:59:21', '2020-12-18 14:59:21'),
(2300, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 14:59:35', '2020-12-18 14:59:35'),
(2301, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '[]', '2020-12-18 15:00:49', '2020-12-18 15:00:49'),
(2302, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 15:10:03', '2020-12-18 15:10:03'),
(2303, 1, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 15:10:14', '2020-12-18 15:10:14'),
(2304, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 15:10:16', '2020-12-18 15:10:16'),
(2305, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-18 15:10:38', '2020-12-18 15:10:38'),
(2306, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 04:38:20', '2020-12-19 04:38:20'),
(2307, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '[]', '2020-12-19 04:46:10', '2020-12-19 04:46:10'),
(2308, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '[]', '2020-12-19 04:46:42', '2020-12-19 04:46:42'),
(2309, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '[]', '2020-12-19 04:47:11', '2020-12-19 04:47:11'),
(2310, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 04:47:19', '2020-12-19 04:47:19'),
(2311, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 04:47:22', '2020-12-19 04:47:22'),
(2312, 1, 'sc_admin/product/edit/37', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Immunity: The Science Of Staying Well\",\"keyword\":\"Immunity: The Science Of Staying Well\",\"description\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\",\"content\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/5.jpg\",\"sku\":\"MED\",\"alias\":\"immunity-the-science-of-staying-well\",\"price\":null,\"tax_id\":\"0\",\"stock\":null,\"minimum\":\"0\",\"sort\":null,\"status\":\"on\",\"_token\":\"k6VcQSxoNnCPkLqwXQNAjDJ5nkxiefNfVbf2Nbdh\"}', '2020-12-19 04:57:37', '2020-12-19 04:57:37'),
(2313, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 04:57:38', '2020-12-19 04:57:38'),
(2314, 1, 'sc_admin/product/edit/37', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Immunity: The Science Of Staying Well\",\"keyword\":\"Immunity: The Science Of Staying Well\",\"description\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\",\"content\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/5.jpg\",\"sku\":null,\"alias\":\"immunity-the-science-of-staying-well\",\"price\":null,\"tax_id\":\"0\",\"stock\":\"-3\",\"minimum\":\"0\",\"sort\":null,\"status\":\"on\",\"_token\":\"k6VcQSxoNnCPkLqwXQNAjDJ5nkxiefNfVbf2Nbdh\"}', '2020-12-19 04:58:19', '2020-12-19 04:58:19'),
(2315, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 04:58:20', '2020-12-19 04:58:20'),
(2316, 1, 'sc_admin/theme/dark', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:37', '2020-12-19 05:11:37'),
(2317, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:37', '2020-12-19 05:11:37'),
(2318, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:41', '2020-12-19 05:11:41'),
(2319, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:43', '2020-12-19 05:11:43'),
(2320, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:47', '2020-12-19 05:11:47'),
(2321, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:55', '2020-12-19 05:11:55'),
(2322, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:11:58', '2020-12-19 05:11:58'),
(2323, 1, 'sc_admin/product/edit/37', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Immunity: The Science Of Staying Well\",\"keyword\":\"Immunity: The Science Of Staying Well\",\"description\":null,\"content\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/5.jpg\",\"sku\":\"MED\",\"alias\":\"immunity-the-science-of-staying-well\",\"price\":\"32\",\"tax_id\":\"0\",\"stock\":\"-1\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 05:25:53', '2020-12-19 05:25:53'),
(2324, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:25:55', '2020-12-19 05:25:55'),
(2325, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:26:08', '2020-12-19 05:26:08'),
(2326, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":\"123\",\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\"],\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"12\",\"sort\":\"12\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 05:26:25', '2020-12-19 05:26:25'),
(2327, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:26:25', '2020-12-19 05:26:25'),
(2328, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":\"123\",\"description\":null,\"content\":\"1223123\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\"],\"image\":null,\"sku\":\"sd\",\"alias\":\"qwe\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"12\",\"sort\":\"12\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 05:26:31', '2020-12-19 05:26:31'),
(2329, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:26:31', '2020-12-19 05:26:31'),
(2330, 1, 'sc_admin/product/edit/45', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:26:34', '2020-12-19 05:26:34'),
(2331, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:56:09', '2020-12-19 05:56:09'),
(2332, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 05:59:54', '2020-12-19 05:59:54'),
(2333, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":\"qwe\",\"description\":\"sdasdasdasd\",\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\"],\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 06:01:38', '2020-12-19 06:01:38'),
(2334, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:01:38', '2020-12-19 06:01:38'),
(2335, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:05:50', '2020-12-19 06:05:50'),
(2336, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:24:43', '2020-12-19 06:24:43'),
(2337, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:32:57', '2020-12-19 06:32:57'),
(2338, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:33:02', '2020-12-19 06:33:02'),
(2339, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:38:52', '2020-12-19 06:38:52'),
(2340, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 06:38:56', '2020-12-19 06:38:56'),
(2341, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:06:19', '2020-12-19 07:06:19'),
(2342, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:18:25', '2020-12-19 07:18:25'),
(2343, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 07:56:30', '2020-12-19 07:56:30'),
(2344, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:56:30', '2020-12-19 07:56:30'),
(2345, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:56:46', '2020-12-19 07:56:46'),
(2346, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 07:56:49', '2020-12-19 07:56:49'),
(2347, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:56:49', '2020-12-19 07:56:49'),
(2348, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:56:57', '2020-12-19 07:56:57'),
(2349, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 07:57:00', '2020-12-19 07:57:00'),
(2350, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:00', '2020-12-19 07:57:00'),
(2351, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:06', '2020-12-19 07:57:06'),
(2352, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 07:57:09', '2020-12-19 07:57:09'),
(2353, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:09', '2020-12-19 07:57:09'),
(2354, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:11', '2020-12-19 07:57:11'),
(2355, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 07:57:13', '2020-12-19 07:57:13'),
(2356, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:13', '2020-12-19 07:57:13'),
(2357, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:19', '2020-12-19 07:57:19'),
(2358, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 07:57:28', '2020-12-19 07:57:28'),
(2359, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 07:57:28', '2020-12-19 07:57:28'),
(2360, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:13:46', '2020-12-19 08:13:46'),
(2361, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:24:18', '2020-12-19 08:24:18'),
(2362, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:24:23', '2020-12-19 08:24:23'),
(2363, 1, 'sc_admin/customer/update-address/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:24:32', '2020-12-19 08:24:32'),
(2364, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:24:44', '2020-12-19 08:24:44'),
(2365, 1, 'sc_admin/customer/delete-address', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"id\":\"6\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 08:24:47', '2020-12-19 08:24:47'),
(2366, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:24:47', '2020-12-19 08:24:47'),
(2367, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:25:48', '2020-12-19 08:25:48'),
(2368, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:25:53', '2020-12-19 08:25:53'),
(2369, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:25:56', '2020-12-19 08:25:56'),
(2370, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:49:29', '2020-12-19 08:49:29'),
(2371, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 08:50:23', '2020-12-19 08:50:23'),
(2372, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:01:25', '2020-12-19 10:01:25'),
(2373, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:01:54', '2020-12-19 10:01:54'),
(2374, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"asd\",\"phone\":null,\"email\":null,\"address1\":\"56, JALAN RAWA 3,\",\"password\":null,\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:08:17', '2020-12-19 10:08:17'),
(2375, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:08:18', '2020-12-19 10:08:18'),
(2376, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"asd\",\"phone\":\"0137777777\",\"email\":null,\"address1\":\"56, JALAN RAWA 3,\",\"password\":null,\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:08:24', '2020-12-19 10:08:24'),
(2377, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:08:24', '2020-12-19 10:08:24'),
(2378, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:08:27', '2020-12-19 10:08:27'),
(2379, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:08:35', '2020-12-19 10:08:35'),
(2380, 1, 'sc_admin/customer/update-address/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:08:44', '2020-12-19 10:08:44'),
(2381, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:09:11', '2020-12-19 10:09:11'),
(2382, 1, 'sc_admin/customer/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:09:13', '2020-12-19 10:09:13'),
(2383, 1, 'sc_admin/customer/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:09:19', '2020-12-19 10:09:19'),
(2384, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:09:24', '2020-12-19 10:09:24'),
(2385, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"asd\",\"phone\":\"sadasd\",\"email\":\"asdsad@gmail.com\",\"address1\":\"56, JALAN RAWA 3,\",\"password\":null,\"status\":\"on\",\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:10:05', '2020-12-19 10:10:05'),
(2386, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:10:06', '2020-12-19 10:10:06'),
(2387, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:12:44', '2020-12-19 10:12:44'),
(2388, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:12:45', '2020-12-19 10:12:45'),
(2389, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":null,\"email\":null,\"address1\":null,\"password\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:18:29', '2020-12-19 10:18:29'),
(2390, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:18:30', '2020-12-19 10:18:30'),
(2391, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":null,\"email\":null,\"address1\":\"qwe@g\",\"password\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:19:43', '2020-12-19 10:19:43'),
(2392, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:19:44', '2020-12-19 10:19:44'),
(2393, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":\"sadasd\",\"email\":null,\"address1\":\"qwe@g\",\"password\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:20:15', '2020-12-19 10:20:15'),
(2394, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":\"sadasd\",\"email\":null,\"address1\":\"qwe@g\",\"password\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:20:16', '2020-12-19 10:20:16'),
(2395, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:20:16', '2020-12-19 10:20:16'),
(2396, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"123213\",\"phone\":\"sadasd\",\"email\":null,\"address1\":\"qwe@g\",\"password\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:20:21', '2020-12-19 10:20:21'),
(2397, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:20:21', '2020-12-19 10:20:21'),
(2398, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"123213\",\"phone\":\"sadasd\",\"email\":\"123213\",\"address1\":\"qwe@g\",\"password\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\"}', '2020-12-19 10:20:25', '2020-12-19 10:20:25'),
(2399, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 10:20:26', '2020-12-19 10:20:26'),
(2400, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:06:01', '2020-12-19 11:06:01'),
(2401, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:47:58', '2020-12-19 11:47:58'),
(2402, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:48:06', '2020-12-19 11:48:06'),
(2403, 1, 'sc_admin/menu/edit/65', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:48:13', '2020-12-19 11:48:13'),
(2404, 1, 'sc_admin/menu/edit/26', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:48:30', '2020-12-19 11:48:30'),
(2405, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:48:39', '2020-12-19 11:48:39'),
(2406, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"keyword__en\",\"value\":\"Second hand Bookstore: A platform to trade second hand books.\",\"pk\":null,\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\",\"storeId\":\"1\"}', '2020-12-19 11:48:59', '2020-12-19 11:48:59'),
(2407, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:49:53', '2020-12-19 11:49:53'),
(2408, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:49:57', '2020-12-19 11:49:57'),
(2409, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-12-19 11:49:59', '2020-12-19 11:49:59'),
(2410, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"4FYKvoi5Bm7k9icow3rvYQzkf9xYkcQGFZ1IUUDw\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-19 11:50:06', '2020-12-19 11:50:06'),
(2411, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:50:25', '2020-12-19 11:50:25'),
(2412, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:50:31', '2020-12-19 11:50:31'),
(2413, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:50:37', '2020-12-19 11:50:37'),
(2414, 2, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:50:40', '2020-12-19 11:50:40'),
(2415, 2, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:50:43', '2020-12-19 11:50:43'),
(2416, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:50:55', '2020-12-19 11:50:55'),
(2417, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:51:04', '2020-12-19 11:51:04'),
(2418, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:51:20', '2020-12-19 11:51:20'),
(2419, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 11:51:26', '2020-12-19 11:51:26'),
(2420, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"time_active\",\"value\":\"123123\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:16:17', '2020-12-19 12:16:17'),
(2421, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"time_active\",\"value\":\"24 hours\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:16:37', '2020-12-19 12:16:37'),
(2422, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"time_active\",\"value\":\"operating hours\\uff1a24 hours\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:17:39', '2020-12-19 12:17:39'),
(2423, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 12:29:27', '2020-12-19 12:29:27'),
(2424, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 12:29:36', '2020-12-19 12:29:36'),
(2425, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"time_active\",\"value\":\"operation hours \\uff1a24 hours\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:30:50', '2020-12-19 12:30:50');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(2426, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"ad\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:35:28', '2020-12-19 12:35:28'),
(2427, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"A platform to trade second hand books.\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:35:43', '2020-12-19 12:35:43'),
(2428, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"091029384\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 12:37:50', '2020-12-19 12:37:50'),
(2429, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 12:37:52', '2020-12-19 12:37:52'),
(2430, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"email\",\"value\":\"1scbookstore@gmail.com\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 13:10:50', '2020-12-19 13:10:50'),
(2431, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"email\",\"value\":\"scbookstore@gmail.com\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 13:10:55', '2020-12-19 13:10:55'),
(2432, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"email\",\"value\":\"scbookstore\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 13:11:32', '2020-12-19 13:11:32'),
(2433, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"email\",\"value\":\"scbookstore@gmail.com\",\"pk\":null,\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"storeId\":\"1\"}', '2020-12-19 13:11:43', '2020-12-19 13:11:43'),
(2434, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"logo\"}', '2020-12-19 13:15:59', '2020-12-19 13:15:59'),
(2435, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-12-19 13:16:32', '2020-12-19 13:16:32'),
(2436, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-19 13:16:35', '2020-12-19 13:16:35'),
(2437, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:16:41', '2020-12-19 13:16:41'),
(2438, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:17:12', '2020-12-19 13:17:12'),
(2439, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:17:13', '2020-12-19 13:17:13'),
(2440, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:17:14', '2020-12-19 13:17:14'),
(2441, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:17:56', '2020-12-19 13:17:56'),
(2442, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:17:59', '2020-12-19 13:17:59'),
(2443, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:18:04', '2020-12-19 13:18:04'),
(2444, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:18:09', '2020-12-19 13:18:09'),
(2445, 1, 'sc_admin/menu/update_sort', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"menu\":\"[{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":12}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":16}]}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":33},{\\\"id\\\":10}]},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":3,\\\"children\\\":[{\\\"id\\\":20}]},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":54}]}]},{\\\"id\\\":65,\\\"children\\\":[{\\\"id\\\":26},{\\\"id\\\":60}]},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":46},{\\\"id\\\":38,\\\"children\\\":[{\\\"id\\\":47},{\\\"id\\\":48},{\\\"id\\\":57},{\\\"id\\\":49}]}]}]\"}', '2020-12-19 13:18:38', '2020-12-19 13:18:38'),
(2446, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:18:38', '2020-12-19 13:18:38'),
(2447, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:18:45', '2020-12-19 13:18:45'),
(2448, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"0\"}', '2020-12-19 13:19:42', '2020-12-19 13:19:42'),
(2449, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\",\"name\":\"active\",\"storeId\":\"1\",\"value\":\"1\"}', '2020-12-19 13:19:45', '2020-12-19 13:19:45'),
(2450, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:19:54', '2020-12-19 13:19:54'),
(2451, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:20:01', '2020-12-19 13:20:01'),
(2452, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:20:03', '2020-12-19 13:20:03'),
(2453, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:20:05', '2020-12-19 13:20:05'),
(2454, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:20:13', '2020-12-19 13:20:13'),
(2455, 1, 'sc_admin/user/edit/0', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:20:26', '2020-12-19 13:20:26'),
(2456, 1, 'sc_admin/user/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"0\",\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 13:20:30', '2020-12-19 13:20:30'),
(2457, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 13:20:31', '2020-12-19 13:20:31'),
(2458, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:20:37', '2020-12-19 13:20:37'),
(2459, 1, 'sc_admin/user/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 13:20:44', '2020-12-19 13:20:44'),
(2460, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 13:20:44', '2020-12-19 13:20:44'),
(2461, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:54:25', '2020-12-19 13:54:25'),
(2462, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:54:44', '2020-12-19 13:54:44'),
(2463, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:54:51', '2020-12-19 13:54:51'),
(2464, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:54:52', '2020-12-19 13:54:52'),
(2465, 1, 'sc_admin/user/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"Administrator\",\"username\":\"admin\",\"email\":\"zetanalpha@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/user.png\",\"phone\":\"091029384\",\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 13:54:56', '2020-12-19 13:54:56'),
(2466, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:54:57', '2020-12-19 13:54:57'),
(2467, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:00', '2020-12-19 13:55:00'),
(2468, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:10', '2020-12-19 13:55:10'),
(2469, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:12', '2020-12-19 13:55:12'),
(2470, 1, 'sc_admin/user/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"Administrator\",\"username\":\"admin\",\"email\":\"zetanalpha@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/user.png\",\"phone\":\"016112344\",\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 13:55:17', '2020-12-19 13:55:17'),
(2471, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:18', '2020-12-19 13:55:18'),
(2472, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:21', '2020-12-19 13:55:21'),
(2473, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:29', '2020-12-19 13:55:29'),
(2474, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:32', '2020-12-19 13:55:32'),
(2475, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:39', '2020-12-19 13:55:39'),
(2476, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:43', '2020-12-19 13:55:43'),
(2477, 1, 'sc_admin/user/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:46', '2020-12-19 13:55:46'),
(2478, 1, 'sc_admin/user/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"Administrator\",\"username\":\"admin\",\"email\":\"scbookstore@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/user.png\",\"phone\":\"016112344\",\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 13:55:53', '2020-12-19 13:55:53'),
(2479, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:55:53', '2020-12-19 13:55:53'),
(2480, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:56:04', '2020-12-19 13:56:04'),
(2481, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:56:40', '2020-12-19 13:56:40'),
(2482, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"bbb\",\"username\":\"bbb\",\"email\":\"123@gmail.cm\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":\"bbbbbb\",\"password_confirmation\":\"bbbbbb\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 13:57:01', '2020-12-19 13:57:01'),
(2483, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 13:57:02', '2020-12-19 13:57:02'),
(2484, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:00:23', '2020-12-19 14:00:23'),
(2485, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:00:43', '2020-12-19 14:00:43'),
(2486, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:00:48', '2020-12-19 14:00:48'),
(2487, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:00:52', '2020-12-19 14:00:52'),
(2488, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:00:56', '2020-12-19 14:00:56'),
(2489, 1, 'sc_admin/order/detail/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:00:58', '2020-12-19 14:00:58'),
(2490, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:01:05', '2020-12-19 14:01:05'),
(2491, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:03:44', '2020-12-19 14:03:44'),
(2492, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:06:43', '2020-12-19 14:06:43'),
(2493, 1, 'sc_admin/customer/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:06:47', '2020-12-19 14:06:47'),
(2494, 1, 'sc_admin/customer/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"qwer123\",\"phone\":\"0111111111\",\"email\":\"zetanalpha@gmail.com\",\"address1\":\"56, JALAN RAWA 3,12\",\"password\":null,\"status\":\"on\",\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 14:06:52', '2020-12-19 14:06:52'),
(2495, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:06:53', '2020-12-19 14:06:53'),
(2496, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:08:57', '2020-12-19 14:08:57'),
(2497, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"keyword\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2020-12-19 14:09:02', '2020-12-19 14:09:02'),
(2498, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"keyword\":\"admin\"}', '2020-12-19 14:09:05', '2020-12-19 14:09:05'),
(2499, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:09:08', '2020-12-19 14:09:08'),
(2500, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"keyword\":\"administrator\",\"_pjax\":\"#pjax-container\"}', '2020-12-19 14:09:13', '2020-12-19 14:09:13'),
(2501, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:10:08', '2020-12-19 14:10:08'),
(2502, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:17:32', '2020-12-19 14:17:32'),
(2503, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"zzzz\",\"username\":\"zzzz\",\"email\":\"123@gmail.cm\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":\"zzzzzz\",\"password_confirmation\":\"zzzzzz\",\"roles\":[\"1\"],\"store\":[\"0\"],\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 14:17:51', '2020-12-19 14:17:51'),
(2504, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:17:51', '2020-12-19 14:17:51'),
(2505, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"zzzz\",\"username\":\"zzzz\",\"email\":\"12233@gmail.cm\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":\"zzzzzz\",\"password_confirmation\":\"zzzzzz\",\"roles\":[\"1\"],\"store\":[\"0\"],\"_token\":\"L1CUcMPocgkstGRNN5VqK4WlxKridUNqi8NKdYxI\"}', '2020-12-19 14:17:56', '2020-12-19 14:17:56'),
(2506, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:17:56', '2020-12-19 14:17:56'),
(2507, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:18:05', '2020-12-19 14:18:05'),
(2508, 6, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:18:17', '2020-12-19 14:18:17'),
(2509, 6, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:18:24', '2020-12-19 14:18:24'),
(2510, 6, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:18:48', '2020-12-19 14:18:48'),
(2511, 6, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:18:57', '2020-12-19 14:18:57'),
(2512, 6, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:19:09', '2020-12-19 14:19:09'),
(2513, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:21:37', '2020-12-19 14:21:37'),
(2514, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:21:41', '2020-12-19 14:21:41'),
(2515, 1, 'sc_admin/user/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"jrnXRxZzqD634sJIoHYR7tkzsdlYpb6hvizHJmrr\"}', '2020-12-19 14:21:43', '2020-12-19 14:21:43'),
(2516, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 14:21:44', '2020-12-19 14:21:44'),
(2517, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 14:22:27', '2020-12-19 14:22:27'),
(2518, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:22:31', '2020-12-19 14:22:31'),
(2519, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:22:35', '2020-12-19 14:22:35'),
(2520, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:35:08', '2020-12-19 14:35:08'),
(2521, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:35:11', '2020-12-19 14:35:11'),
(2522, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"zzz\",\"username\":\"zzz\",\"email\":\"pororo.tang@gmail.com\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":\"zzzzzz\",\"password_confirmation\":\"zzzzzz\",\"roles\":[\"1\"],\"store\":[\"0\"],\"_token\":\"jrnXRxZzqD634sJIoHYR7tkzsdlYpb6hvizHJmrr\"}', '2020-12-19 14:44:57', '2020-12-19 14:44:57'),
(2523, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:44:58', '2020-12-19 14:44:58'),
(2524, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:45:17', '2020-12-19 14:45:17'),
(2525, 7, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:45:40', '2020-12-19 14:45:40'),
(2526, 7, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:45:49', '2020-12-19 14:45:49'),
(2527, 7, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:45:50', '2020-12-19 14:45:50'),
(2528, 7, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"123123\",\"username\":\"123\",\"email\":\"1223233@gmail.cm\",\"avatar\":null,\"phone\":\"0123123123123\",\"password\":\"111111\",\"password_confirmation\":\"111111\",\"store\":[\"0\"],\"_token\":\"p0uJj3XBkAt07cybVkUp2nbG2lza7MJxyOrvP0ya\"}', '2020-12-19 14:48:02', '2020-12-19 14:48:02'),
(2529, 7, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:48:02', '2020-12-19 14:48:02'),
(2530, 7, 'sc_admin/user/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:48:13', '2020-12-19 14:48:13'),
(2531, 7, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:48:18', '2020-12-19 14:48:18'),
(2532, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:48:22', '2020-12-19 14:48:22'),
(2533, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:48:25', '2020-12-19 14:48:25'),
(2534, 1, 'sc_admin/user/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:59:31', '2020-12-19 14:59:31'),
(2535, 1, 'sc_admin/user/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"zzz\",\"username\":\"zzz\",\"email\":\"pororo.tang@gmail.com\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":null,\"password_confirmation\":null,\"roles\":[\"1\"],\"permission\":[\"15\"],\"store\":[\"0\"],\"_token\":\"vRUKoEoEneMg1Srm7DVswl2Jkia1Lu6jRCRWa4YT\"}', '2020-12-19 14:59:41', '2020-12-19 14:59:41'),
(2536, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:59:42', '2020-12-19 14:59:42'),
(2537, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 14:59:58', '2020-12-19 14:59:58'),
(2538, 7, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:00:04', '2020-12-19 15:00:04'),
(2539, 7, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:00:08', '2020-12-19 15:00:08'),
(2540, 7, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:00:16', '2020-12-19 15:00:16'),
(2541, 7, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:00:20', '2020-12-19 15:00:20'),
(2542, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:13', '2020-12-19 15:01:13'),
(2543, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:18', '2020-12-19 15:01:18'),
(2544, 1, 'sc_admin/user/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:22', '2020-12-19 15:01:22'),
(2545, 1, 'sc_admin/user/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:33', '2020-12-19 15:01:33'),
(2546, 1, 'sc_admin/user/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"zzz\",\"username\":\"zzz\",\"email\":\"pororo.tang@gmail.com\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":null,\"password_confirmation\":null,\"roles\":[\"1\"],\"permission\":[\"14\"],\"store\":[\"0\"],\"_token\":\"tLhk1fxOtK66jmMk5YF0m0JtRCdUSbXkYJDtwCP4\"}', '2020-12-19 15:01:43', '2020-12-19 15:01:43'),
(2547, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:44', '2020-12-19 15:01:44'),
(2548, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:50', '2020-12-19 15:01:50'),
(2549, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:01:55', '2020-12-19 15:01:55'),
(2550, 7, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:09', '2020-12-19 15:02:09'),
(2551, 7, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:18', '2020-12-19 15:02:18'),
(2552, 7, 'sc_admin/user/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:19', '2020-12-19 15:02:19'),
(2553, 7, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:24', '2020-12-19 15:02:24'),
(2554, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:29', '2020-12-19 15:02:29'),
(2555, 1, 'sc_admin/permission', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:36', '2020-12-19 15:02:36'),
(2556, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:40', '2020-12-19 15:02:40'),
(2557, 1, 'sc_admin/role/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:02:46', '2020-12-19 15:02:46'),
(2558, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:17:04', '2020-12-19 15:17:04'),
(2559, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:47:44', '2020-12-19 15:47:44'),
(2560, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:47:44', '2020-12-19 15:47:44'),
(2561, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"PMXekfGq9jsb0MgNMxlNCvKT67mUZ86UjMvfVPho\"}', '2020-12-19 15:47:48', '2020-12-19 15:47:48'),
(2562, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:47:49', '2020-12-19 15:47:49'),
(2563, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":\"zzzz\",\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"PMXekfGq9jsb0MgNMxlNCvKT67mUZ86UjMvfVPho\"}', '2020-12-19 15:47:54', '2020-12-19 15:47:54'),
(2564, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:47:54', '2020-12-19 15:47:54'),
(2565, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":\"0182273799\",\"avatar\":null,\"phone\":null,\"password\":\"zzzz\",\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"PMXekfGq9jsb0MgNMxlNCvKT67mUZ86UjMvfVPho\"}', '2020-12-19 15:52:30', '2020-12-19 15:52:30'),
(2566, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 15:52:30', '2020-12-19 15:52:30'),
(2567, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 16:21:29', '2020-12-19 16:21:29'),
(2568, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 16:24:15', '2020-12-19 16:24:15'),
(2569, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 16:27:09', '2020-12-19 16:27:09'),
(2570, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 16:27:16', '2020-12-19 16:27:16'),
(2571, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 16:27:32', '2020-12-19 16:27:32'),
(2572, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-19 16:27:34', '2020-12-19 16:27:34'),
(2573, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:00:56', '2020-12-20 05:00:56'),
(2574, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:25:06', '2020-12-20 05:25:06'),
(2575, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:25:29', '2020-12-20 05:25:29'),
(2576, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:01', '2020-12-20 05:38:01'),
(2577, 2, 'sc_admin/order/detail/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:13', '2020-12-20 05:38:13'),
(2578, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:27', '2020-12-20 05:38:27'),
(2579, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:32', '2020-12-20 05:38:32'),
(2580, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:35', '2020-12-20 05:38:35'),
(2581, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:38', '2020-12-20 05:38:38'),
(2582, 2, 'sc_admin/order/detail/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:39', '2020-12-20 05:38:39'),
(2583, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:45', '2020-12-20 05:38:45'),
(2584, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:38:55', '2020-12-20 05:38:55'),
(2585, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:39:23', '2020-12-20 05:39:23'),
(2586, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:39:28', '2020-12-20 05:39:28'),
(2587, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:40:35', '2020-12-20 05:40:35'),
(2588, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:41:08', '2020-12-20 05:41:08'),
(2589, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:41:12', '2020-12-20 05:41:12'),
(2590, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:41:20', '2020-12-20 05:41:20'),
(2591, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:41:23', '2020-12-20 05:41:23'),
(2592, 1, 'sc_admin/user/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"HVKicH5pdc8PsMVpbBpBRnG7Mvg0IZp9utOhc8oM\"}', '2020-12-20 05:41:29', '2020-12-20 05:41:29'),
(2593, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 05:41:30', '2020-12-20 05:41:30'),
(2594, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:41:32', '2020-12-20 05:41:32'),
(2595, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:41:47', '2020-12-20 05:41:47'),
(2596, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:42:55', '2020-12-20 05:42:55'),
(2597, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:42:58', '2020-12-20 05:42:58'),
(2598, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:09', '2020-12-20 05:43:09'),
(2599, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:17', '2020-12-20 05:43:17'),
(2600, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:23', '2020-12-20 05:43:23'),
(2601, 2, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:28', '2020-12-20 05:43:28'),
(2602, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:32', '2020-12-20 05:43:32'),
(2603, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:36', '2020-12-20 05:43:36'),
(2604, 1, 'sc_admin/user/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:44', '2020-12-20 05:43:44'),
(2605, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:43:48', '2020-12-20 05:43:48'),
(2606, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"avatar\"}', '2020-12-20 05:43:57', '2020-12-20 05:43:57'),
(2607, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"avatar\"}', '2020-12-20 05:45:19', '2020-12-20 05:45:19'),
(2608, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1608443119817\"}', '2020-12-20 05:45:20', '2020-12-20 05:45:20'),
(2609, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1608443119816\"}', '2020-12-20 05:45:20', '2020-12-20 05:45:20'),
(2610, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608443119818\"}', '2020-12-20 05:45:21', '2020-12-20 05:45:21'),
(2611, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"gTCobb6ieh1sEvWz0hporClNlG1514v5u99eYvxX\"}', '2020-12-20 05:46:01', '2020-12-20 05:46:01'),
(2612, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1608443119819\"}', '2020-12-20 05:46:01', '2020-12-20 05:46:01'),
(2613, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608443119820\"}', '2020-12-20 05:46:01', '2020-12-20 05:46:01'),
(2614, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:47:01', '2020-12-20 05:47:01'),
(2615, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"avatar\"}', '2020-12-20 05:48:02', '2020-12-20 05:48:02'),
(2616, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1608443282259\"}', '2020-12-20 05:48:02', '2020-12-20 05:48:02'),
(2617, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1608443282260\"}', '2020-12-20 05:48:02', '2020-12-20 05:48:02'),
(2618, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608443282261\"}', '2020-12-20 05:48:02', '2020-12-20 05:48:02'),
(2619, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"Classics Bookstore\",\"username\":\"Classics Bookstore\",\"email\":\"Classicsbookstore@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/Capture.PNG\",\"phone\":\"0133243123\",\"password\":\"123123\",\"password_confirmation\":\"123123\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"gTCobb6ieh1sEvWz0hporClNlG1514v5u99eYvxX\"}', '2020-12-20 05:48:19', '2020-12-20 05:48:19'),
(2620, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:48:20', '2020-12-20 05:48:20'),
(2621, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"Classics Bookstore\",\"username\":\"Classics_Bookstore\",\"email\":\"Classicsbookstore@gmail.com\",\"avatar\":\"\\/data\\/avatar\\/Capture.PNG\",\"phone\":\"0133243123\",\"password\":\"123123\",\"password_confirmation\":\"123123\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"gTCobb6ieh1sEvWz0hporClNlG1514v5u99eYvxX\"}', '2020-12-20 05:48:28', '2020-12-20 05:48:28');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(2622, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:48:28', '2020-12-20 05:48:28'),
(2623, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:48:47', '2020-12-20 05:48:47'),
(2624, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:48:50', '2020-12-20 05:48:50'),
(2625, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:48:57', '2020-12-20 05:48:57'),
(2626, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"45\",\"_token\":\"lPvARp12yrlVtGd2RBiqQsbZ5WeluwD7cSJK0yD7\"}', '2020-12-20 05:49:16', '2020-12-20 05:49:16'),
(2627, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 05:49:17', '2020-12-20 05:49:17'),
(2628, 1, 'sc_admin/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:49:27', '2020-12-20 05:49:27'),
(2629, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:49:28', '2020-12-20 05:49:28'),
(2630, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:49:28', '2020-12-20 05:49:28'),
(2631, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:49:37', '2020-12-20 05:49:37'),
(2632, 9, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:49:56', '2020-12-20 05:49:56'),
(2633, 9, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:49:58', '2020-12-20 05:49:58'),
(2634, 9, 'sc_admin/user/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:50:02', '2020-12-20 05:50:02'),
(2635, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:50:11', '2020-12-20 05:50:11'),
(2636, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:50:14', '2020-12-20 05:50:14'),
(2637, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:50:18', '2020-12-20 05:50:18'),
(2638, 9, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:50:28', '2020-12-20 05:50:28'),
(2639, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 05:56:32', '2020-12-20 05:56:32'),
(2640, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608443792387\"}', '2020-12-20 05:56:32', '2020-12-20 05:56:32'),
(2641, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608443792388\"}', '2020-12-20 05:56:32', '2020-12-20 05:56:32'),
(2642, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608443792389\"}', '2020-12-20 05:56:32', '2020-12-20 05:56:32'),
(2643, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 05:56:38', '2020-12-20 05:56:38'),
(2644, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608443798178\"}', '2020-12-20 05:56:38', '2020-12-20 05:56:38'),
(2645, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608443798179\"}', '2020-12-20 05:56:38', '2020-12-20 05:56:38'),
(2646, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608443798180\"}', '2020-12-20 05:56:39', '2020-12-20 05:56:39'),
(2647, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":null,\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"Wit\\/Eve\\/Rea\\/Sum\",\"alias\":null,\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"13\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 05:57:15', '2020-12-20 05:57:15'),
(2648, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:57:15', '2020-12-20 05:57:15'),
(2649, 9, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"Wit\\/Wit\\/Wit\\/Wit\",\"alias\":null,\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"-2\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 05:57:44', '2020-12-20 05:57:44'),
(2650, 9, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:57:45', '2020-12-20 05:57:45'),
(2651, 9, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"1\",\"keyword\":null,\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"Wit\\/Wit\\/Wit\\/Wit\",\"alias\":null,\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"-2\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 05:57:51', '2020-12-20 05:57:51'),
(2652, 9, 'sc_admin/product/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:57:52', '2020-12-20 05:57:52'),
(2653, 9, 'sc_admin/product/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"1\",\"keyword\":null,\"description\":\"123\",\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"1\",\"alias\":\"1\",\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"-2\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 05:57:56', '2020-12-20 05:57:56'),
(2654, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:57:57', '2020-12-20 05:57:57'),
(2655, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Without Ever Reaching The Summit\",\"keyword\":\"Without Ever Reaching The Summit\",\"description\":null,\"content\":\"An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\\r\\n\\r\\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\\r\\n\\r\\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"33\"],\"image\":\"\\/data\\/product\\/10.jpg\",\"sku\":\"Wit_Eve_Rea_Sum\",\"alias\":\"without-ever-reaching-the-summit\",\"price\":\"20\",\"tax_id\":\"0\",\"stock\":\"13\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 05:58:12', '2020-12-20 05:58:12'),
(2656, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:58:13', '2020-12-20 05:58:13'),
(2657, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:58:38', '2020-12-20 05:58:38'),
(2658, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"42\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 05:58:47', '2020-12-20 05:58:47'),
(2659, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 05:58:48', '2020-12-20 05:58:48'),
(2660, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:58:52', '2020-12-20 05:58:52'),
(2661, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 05:58:58', '2020-12-20 05:58:58'),
(2662, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 06:00:30', '2020-12-20 06:00:30'),
(2663, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444030915\"}', '2020-12-20 06:00:31', '2020-12-20 06:00:31'),
(2664, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444030916\"}', '2020-12-20 06:00:31', '2020-12-20 06:00:31'),
(2665, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608444030917\"}', '2020-12-20 06:00:31', '2020-12-20 06:00:31'),
(2666, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Shape Of Things To Come\",\"keyword\":\"Shape Of Things To Come\",\"description\":null,\"content\":\"In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\\r\\n\\r\\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\\r\\n\\r\\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\\r\\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\\r\\n\\r\\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\\r\\n\\r\\n\'Intriguing and informed\' THE TIMES\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"31\",\"32\"],\"image\":\"\\/data\\/product\\/9.jpg\",\"sku\":\"Sha_Thi_Com\",\"alias\":null,\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"8\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:01:42', '2020-12-20 06:01:42'),
(2667, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:01:42', '2020-12-20 06:01:42'),
(2668, 1, 'sc_admin/product/edit/41', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:01:50', '2020-12-20 06:01:50'),
(2669, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"41\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:01:57', '2020-12-20 06:01:57'),
(2670, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:01:58', '2020-12-20 06:01:58'),
(2671, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Shape Of Things To Come\",\"keyword\":\"Shape Of Things To Come\",\"description\":null,\"content\":\"In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\\r\\n\\r\\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\\r\\n\\r\\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\\r\\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\\r\\n\\r\\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\\r\\n\\r\\n\'Intriguing and informed\' THE TIMES\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"31\",\"32\"],\"image\":\"\\/data\\/product\\/9.jpg\",\"sku\":\"Sha_Thi_Com\",\"alias\":\"shape-of-things-to-come\",\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"8\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:02:03', '2020-12-20 06:02:03'),
(2672, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:02:04', '2020-12-20 06:02:04'),
(2673, 9, 'sc_admin/product/edit/47', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:02:10', '2020-12-20 06:02:10'),
(2674, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:02:15', '2020-12-20 06:02:15'),
(2675, 1, 'sc_admin/product/edit/40', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:02:20', '2020-12-20 06:02:20'),
(2676, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 06:02:47', '2020-12-20 06:02:47'),
(2677, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444167976\"}', '2020-12-20 06:02:48', '2020-12-20 06:02:48'),
(2678, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444167977\"}', '2020-12-20 06:02:48', '2020-12-20 06:02:48'),
(2679, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608444167978\"}', '2020-12-20 06:02:48', '2020-12-20 06:02:48'),
(2680, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"40\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:03:28', '2020-12-20 06:03:28'),
(2681, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:03:28', '2020-12-20 06:03:28'),
(2682, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Back On Your Bike\",\"keyword\":\"Back On Your Bike\",\"description\":null,\"content\":\"Many of us have recently dusted off an old bike and got back in the saddle for the first time in years. This is great news; we will be enjoying the health, financial, and emotional benefits for decades. But if you\'ve not ridden a bike since childhood, it\'s a challenging prospect. This book is a confidence builder for the nervous new or re-newed cyclist. In three clear stages the book covers the benefits of cycling, looking after your bike thereby avoiding trips to the bike workshop, and above all, the real-world advice you need to become a confident cycling commuter and road user. Engagingly written by cycling expert and author Alan Anderson, all this comes in a small, readable format, with attractive illustrations by David Sparshott.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"29\",\"30\"],\"image\":\"\\/data\\/product\\/8.jpg\",\"sku\":\"Bac_Your_Bik\",\"alias\":null,\"price\":\"25\",\"tax_id\":\"0\",\"stock\":\"8\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:03:33', '2020-12-20 06:03:33'),
(2683, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:03:34', '2020-12-20 06:03:34'),
(2684, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:03:39', '2020-12-20 06:03:39'),
(2685, 1, 'sc_admin/product/edit/39', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:03:51', '2020-12-20 06:03:51'),
(2686, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 06:04:27', '2020-12-20 06:04:27'),
(2687, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444267542\"}', '2020-12-20 06:04:27', '2020-12-20 06:04:27'),
(2688, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444267543\"}', '2020-12-20 06:04:27', '2020-12-20 06:04:27'),
(2689, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608444267544\"}', '2020-12-20 06:04:28', '2020-12-20 06:04:28'),
(2690, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"39\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:05:29', '2020-12-20 06:05:29'),
(2691, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:05:29', '2020-12-20 06:05:29'),
(2692, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Foundations: Illustr Mathematics\",\"keyword\":\"Foundations: Illustr Mathematics\",\"description\":null,\"content\":\"In order to understand the universe you must know the language in which it is written. And that language is mathematics - Galileo (1564-1642)\\r\\n\\r\\nFor hundreds of thousands of years, we have sought order in the apparent chaos of the universe. Mathematics has been our most valuable tool in that search, uncovering the patterns and rules that govern our world and beyond. This illustrated guide traces humankind\'s greatest achievements in mathematics, plotting a journey from innumerate cave-dwellers, through the towering intellects of the last 4,000 years, to where we stand today.\\r\\n\\r\\nIncluding a giant timeline wallchart, Foundations is a brilliant hardback reference book which charts the development of this intriguing and expansive discipline, from early history to modern day.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"26\",\"28\"],\"image\":\"\\/data\\/product\\/7.jpg\",\"sku\":\"Found_Math\",\"alias\":null,\"price\":\"16\",\"tax_id\":\"0\",\"stock\":\"16\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:05:31', '2020-12-20 06:05:31'),
(2693, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:05:32', '2020-12-20 06:05:32'),
(2694, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:05:35', '2020-12-20 06:05:35'),
(2695, 1, 'sc_admin/product/edit/38', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:05:43', '2020-12-20 06:05:43'),
(2696, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 06:06:16', '2020-12-20 06:06:16'),
(2697, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444376607\"}', '2020-12-20 06:06:17', '2020-12-20 06:06:17'),
(2698, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444376608\"}', '2020-12-20 06:06:17', '2020-12-20 06:06:17'),
(2699, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608444376609\"}', '2020-12-20 06:06:17', '2020-12-20 06:06:17'),
(2700, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"38\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:06:49', '2020-12-20 06:06:49'),
(2701, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:06:50', '2020-12-20 06:06:50'),
(2702, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Passages\",\"keyword\":\"Passages\",\"description\":null,\"content\":\"This fourteenth anthology of short stories set in the beloved Valdemar universe features tales by debut and established authors and a brand-new story from Lackey herself. The Heralds of Valdemar are the kingdom\'s ancient order of protectors. They are drawn from all across the land, from all walks of life, and at all ages--and all are Gifted with abilities beyond those of normal men and women. They are Mindspeakers, FarSeers, Empaths, ForeSeers, Firestarters, FarSpeakers, and more. These inborn talents--combined with training as emissaries, spies, judges, diplomats, scouts, counselors, warriors, and more--make them indispensable to their monarch and realm. Sought and Chosen by mysterious horse-like Companions, they are bonded for life to these telepathic, enigmatic creatures. The Heralds of Valdemar and their Companions ride circuit throughout the kingdom, protecting the peace and, when necessary, defending their land and monarch.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"26\",\"27\"],\"image\":\"\\/data\\/product\\/6.jpg\",\"sku\":\"Pass\",\"alias\":null,\"price\":\"42\",\"tax_id\":\"0\",\"stock\":\"5\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:06:53', '2020-12-20 06:06:53'),
(2703, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:06:53', '2020-12-20 06:06:53'),
(2704, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:06:59', '2020-12-20 06:06:59'),
(2705, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:07:08', '2020-12-20 06:07:08'),
(2706, 1, 'sc_admin/product/edit/35', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:07:16', '2020-12-20 06:07:16'),
(2707, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 06:07:47', '2020-12-20 06:07:47'),
(2708, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444467979\"}', '2020-12-20 06:07:48', '2020-12-20 06:07:48'),
(2709, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444467980\"}', '2020-12-20 06:07:48', '2020-12-20 06:07:48'),
(2710, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608444467981\"}', '2020-12-20 06:07:48', '2020-12-20 06:07:48'),
(2711, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"35\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:08:13', '2020-12-20 06:08:13'),
(2712, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:08:14', '2020-12-20 06:08:14'),
(2713, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Breaking Up With Sugar\",\"keyword\":\"Breaking Up With Sugar\",\"description\":null,\"content\":\"A 66-day plan for going sugar-free from an eating disorder specialist and therapist who broke free of her own sugar addiction.\\r\\n\\r\\nOur relationship with food can be complicated: for many, food soothes painful emotions, it nurtures, it numbs, it provides a \'high\'. Breaking Up With Sugar offers a plan for the complete transformation of many people\'s destructive relationship with food. For these people, sugar is often the culprit: it produces physical, neurological and endocrine changes that render the individual powerless over their compulsion to eat.\\r\\n\\r\\nMolly Carmel struggled with her own eating disorder for over 20 years and finding no solutions in available treatments, she created The Beacon, where she helps clients recover from similar addictions. Her step-by-step instructions are designed to take the guesswork out of sugar-free eating and help people start a new, healthier relationship with food. With 8 vows to return to and rely on, and guidance on how to divorce dieting forever, Breaking Up With Sugar offers an individualised, sustainable and realistic plan for eating and thriving for life.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"21\",\"22\",\"23\"],\"image\":\"\\/data\\/product\\/3.jpg\",\"sku\":\"Bre_Up_Sug\",\"alias\":null,\"price\":\"26\",\"tax_id\":\"0\",\"stock\":\"7\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:08:16', '2020-12-20 06:08:16'),
(2714, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:08:16', '2020-12-20 06:08:16'),
(2715, 1, 'sc_admin/product/edit/36', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:08:31', '2020-12-20 06:08:31'),
(2716, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:08:36', '2020-12-20 06:08:36'),
(2717, 9, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"type\":\"product\"}', '2020-12-20 06:08:53', '2020-12-20 06:08:53'),
(2718, 9, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444533781\"}', '2020-12-20 06:08:54', '2020-12-20 06:08:54'),
(2719, 9, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1608444533782\"}', '2020-12-20 06:08:54', '2020-12-20 06:08:54'),
(2720, 9, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1608444533783\"}', '2020-12-20 06:08:54', '2020-12-20 06:08:54'),
(2721, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"36\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:09:39', '2020-12-20 06:09:39'),
(2722, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:09:40', '2020-12-20 06:09:40'),
(2723, 9, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"keyword\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"description\":null,\"content\":\"Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\\r\\n\\r\\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\\r\\n\\r\\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\\r\\n\\r\\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\\r\\n\\r\\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.\"}},\"owner\":\"classics_bookstore\",\"user_id\":\"9\",\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/4.jpg\",\"sku\":\"Fur_Bat_Day_Land\",\"alias\":null,\"price\":\"28\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:09:42', '2020-12-20 06:09:42'),
(2724, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:09:42', '2020-12-20 06:09:42'),
(2725, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:09:51', '2020-12-20 06:09:51'),
(2726, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:10:01', '2020-12-20 06:10:01'),
(2727, 1, 'sc_admin/product/edit/37', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Immunity: The Science Of Staying Well\",\"keyword\":\"Immunity: The Science Of Staying Well\",\"description\":null,\"content\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/5.jpg\",\"sku\":\"Sci_Stay_Well\",\"alias\":\"immunity-the-science-of-staying-well\",\"price\":\"32\",\"tax_id\":\"0\",\"stock\":\"-1\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:10:15', '2020-12-20 06:10:15'),
(2728, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:10:16', '2020-12-20 06:10:16'),
(2729, 1, 'sc_admin/product/edit/34', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:10:19', '2020-12-20 06:10:19'),
(2730, 1, 'sc_admin/product/edit/34', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Beginner\'S Step-By-Step Coding Course\",\"keyword\":\"Beginner\'S Step-By-Step Coding Course\",\"description\":null,\"content\":\"Learning to code has never been easier than with this innovative visual guide to computer programming for beginners.\\r\\n\\r\\nCoding skills are in high demand and the need for programmers is still growing. However, taking the first steps in learning more about this complex subject may seem daunting and many of us feel left behind by the coding revolution. By using a graphic method to break code into small chunks, this book brings essential skills within reach.Terms such as algorithm, variable, string, function, and loop are all explained. The book also looks at the main coding languages that are out there, outlining the main applications of each language.\\r\\n\\r\\nIndividual chapters explore different languages, with practical programming projects to show you how programming works. You\'ll learn to think like a programmer by breaking a problem down into parts, before turning those parts into lines of code. Short, easy-to-follow steps then show you, piece by piece, how to build a complete program. There are challenges for you to tackle to build your confidence before moving on.\\r\\n\\r\\nWritten by a team of expert coders and coding teachers, the Beginner\'s Step-by-Step Coding Course is the ideal way to get to grips with coding.\"}},\"category\":[\"19\",\"20\"],\"image\":\"\\/data\\/product\\/2.jpg\",\"sku\":\"Beg_Code_Cour\",\"alias\":\"beginners-step-by-step-coding-course\",\"price\":\"32\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:10:32', '2020-12-20 06:10:32'),
(2731, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:10:32', '2020-12-20 06:10:32'),
(2732, 1, 'sc_admin/product/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:10:35', '2020-12-20 06:10:35'),
(2733, 1, 'sc_admin/product/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Holly Smith\'S Money Saving Book\",\"keyword\":\"Holly Smith\'S Money Saving Book\",\"description\":null,\"content\":\"\'THE WOMAN WHO\'LL MAKE YOU RICHER! SHE\'S WRITTEN A BOOK GUARANTEED TO SAVE YOU A FORTUNE\' MAIL ON SUNDAY\\r\\n\\r\\nHow much can you save with this book?\\r\\n\\r\\nTrusted bargain-hunter and mum, Holly Smith, cuts thousands of pounds off her shopping and bills every year. She founded the Facebook group Extreme Couponing and Bargains UK (one of the largest Facebook groups in the world) and is on TikTok, Youtube and Instagram helping as many people as possible to save money too.\\r\\n\\r\\nThis book contains all her best hacks and tips to save money and make money - simple, life-changing ideas for everyone.\\r\\n\\r\\nHolly has included her favourite hacks from the Extreme Couponing and Bargains UK community too, who inspired her to write this book. And has asked all her money-saving expert friends to contribute tips too.\\r\\n\\r\\nAll the costly moments of everyday life are included, from supermarket shops to kids parties - even special occasions like weddings and Christmas.\\r\\n\\r\\nDiscover lots of fun ways to get saving, find the bargains and make your money go further.\"}},\"category\":[\"17\",\"18\"],\"image\":\"\\/data\\/product\\/1.jpg\",\"sku\":\"Holly_Mon_Sav\",\"alias\":\"holly-smiths-money-saving-book\",\"price\":\"14\",\"tax_id\":\"0\",\"stock\":\"6\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:11:01', '2020-12-20 06:11:01'),
(2734, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:01', '2020-12-20 06:11:01'),
(2735, 1, 'sc_admin/product/edit/34', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:05', '2020-12-20 06:11:05');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(2736, 1, 'sc_admin/product/edit/34', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Beginner\'S Step-By-Step Coding Course\",\"keyword\":\"Beginner\'S Step-By-Step Coding Course\",\"description\":null,\"content\":\"Learning to code has never been easier than with this innovative visual guide to computer programming for beginners.\\r\\n\\r\\nCoding skills are in high demand and the need for programmers is still growing. However, taking the first steps in learning more about this complex subject may seem daunting and many of us feel left behind by the coding revolution. By using a graphic method to break code into small chunks, this book brings essential skills within reach.Terms such as algorithm, variable, string, function, and loop are all explained. The book also looks at the main coding languages that are out there, outlining the main applications of each language.\\r\\n\\r\\nIndividual chapters explore different languages, with practical programming projects to show you how programming works. You\'ll learn to think like a programmer by breaking a problem down into parts, before turning those parts into lines of code. Short, easy-to-follow steps then show you, piece by piece, how to build a complete program. There are challenges for you to tackle to build your confidence before moving on.\\r\\n\\r\\nWritten by a team of expert coders and coding teachers, the Beginner\'s Step-by-Step Coding Course is the ideal way to get to grips with coding.\"}},\"category\":[\"19\",\"20\"],\"image\":\"\\/data\\/product\\/2.jpg\",\"sku\":\"Beg_Code_Cour\",\"alias\":\"beginners-step-by-step-coding-course\",\"price\":\"32\",\"tax_id\":\"0\",\"stock\":\"7\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:11:10', '2020-12-20 06:11:10'),
(2737, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:10', '2020-12-20 06:11:10'),
(2738, 1, 'sc_admin/product/edit/37', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:13', '2020-12-20 06:11:13'),
(2739, 1, 'sc_admin/product/edit/37', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Immunity: The Science Of Staying Well\",\"keyword\":\"Immunity: The Science Of Staying Well\",\"description\":null,\"content\":\"Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.\"}},\"category\":[\"25\"],\"image\":\"\\/data\\/product\\/5.jpg\",\"sku\":\"Sci_Stay_Well\",\"alias\":\"immunity-the-science-of-staying-well\",\"price\":\"32\",\"tax_id\":\"0\",\"stock\":\"6\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"bsfkYARwmiiSQlKtsE5W8AzEfmO4p1llU59vYd87\"}', '2020-12-20 06:11:17', '2020-12-20 06:11:17'),
(2740, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:17', '2020-12-20 06:11:17'),
(2741, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:23', '2020-12-20 06:11:23'),
(2742, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:34', '2020-12-20 06:11:34'),
(2743, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:11:40', '2020-12-20 06:11:40'),
(2744, 9, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:11:44', '2020-12-20 06:11:44'),
(2745, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:11:44', '2020-12-20 06:11:44'),
(2746, 9, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:11:47', '2020-12-20 06:11:47'),
(2747, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:11:47', '2020-12-20 06:11:47'),
(2748, 9, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"P7eHEea90rx06yZB15iS1CPwYJQCNf15Fz6nQyjd\"}', '2020-12-20 06:11:51', '2020-12-20 06:11:51'),
(2749, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 06:11:51', '2020-12-20 06:11:51'),
(2750, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:12:02', '2020-12-20 06:12:02'),
(2751, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:12:03', '2020-12-20 06:12:03'),
(2752, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:12:05', '2020-12-20 06:12:05'),
(2753, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:12:05', '2020-12-20 06:12:05'),
(2754, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:13:28', '2020-12-20 06:13:28'),
(2755, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:13:36', '2020-12-20 06:13:36'),
(2756, 9, 'sc_admin/order/detail/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:13:40', '2020-12-20 06:13:40'),
(2757, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:13:56', '2020-12-20 06:13:56'),
(2758, 9, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:14:30', '2020-12-20 06:14:30'),
(2759, 9, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:14:45', '2020-12-20 06:14:45'),
(2760, 9, 'sc_admin/order/detail/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:23:08', '2020-12-20 06:23:08'),
(2761, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:29:05', '2020-12-20 06:29:05'),
(2762, 9, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:30:58', '2020-12-20 06:30:58'),
(2763, 9, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:31:06', '2020-12-20 06:31:06'),
(2764, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:31:09', '2020-12-20 06:31:09'),
(2765, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:31:15', '2020-12-20 06:31:15'),
(2766, 9, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:31:17', '2020-12-20 06:31:17'),
(2767, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:41:02', '2020-12-20 06:41:02'),
(2768, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 06:41:07', '2020-12-20 06:41:07'),
(2769, 1, 'sc_admin/product/edit/52', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:12:40', '2020-12-20 08:12:40'),
(2770, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:13:37', '2020-12-20 08:13:37'),
(2771, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:29:33', '2020-12-20 08:29:33'),
(2772, 9, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:29:45', '2020-12-20 08:29:45'),
(2773, 9, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:29:52', '2020-12-20 08:29:52'),
(2774, 9, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:29:55', '2020-12-20 08:29:55'),
(2775, 9, 'sc_admin/product/edit/52', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 08:49:18', '2020-12-20 08:49:18'),
(2776, 9, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 09:12:40', '2020-12-20 09:12:40'),
(2777, 9, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 09:12:58', '2020-12-20 09:12:58'),
(2778, 9, 'sc_admin/user/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 09:13:08', '2020-12-20 09:13:08'),
(2779, 9, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 09:14:33', '2020-12-20 09:14:33'),
(2780, 9, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 09:14:36', '2020-12-20 09:14:36'),
(2781, 9, 'sc_admin/deny', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 09:46:29', '2020-12-20 09:46:29'),
(2782, 9, 'sc_admin/user/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 10:00:46', '2020-12-20 10:00:46'),
(2783, 9, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 10:33:23', '2020-12-20 10:33:23'),
(2784, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 12:33:36', '2020-12-20 12:33:36'),
(2785, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 12:33:48', '2020-12-20 12:33:48'),
(2786, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 12:40:56', '2020-12-20 12:40:56'),
(2787, 1, 'sc_admin/order/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"9\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 13:02:24', '2020-12-20 13:02:24'),
(2788, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 13:02:25', '2020-12-20 13:02:25'),
(2789, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 13:03:45', '2020-12-20 13:03:45'),
(2790, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 13:05:21', '2020-12-20 13:05:21'),
(2791, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\"],\"image\":null,\"sku\":\"qwe\",\"alias\":null,\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 13:05:34', '2020-12-20 13:05:34'),
(2792, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 13:05:34', '2020-12-20 13:05:34'),
(2793, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":null,\"description\":null,\"content\":\"sdasd\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"19\"],\"image\":null,\"sku\":\"qwe\",\"alias\":\"qwe\",\"price\":\"12\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 13:05:39', '2020-12-20 13:05:39'),
(2794, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 13:05:40', '2020-12-20 13:05:40'),
(2795, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"53\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 13:05:43', '2020-12-20 13:05:43'),
(2796, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 13:05:43', '2020-12-20 13:05:43'),
(2797, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 13:06:36', '2020-12-20 13:06:36'),
(2798, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 13:21:28', '2020-12-20 13:21:28'),
(2799, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 13:21:29', '2020-12-20 13:21:29'),
(2800, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":null,\"minimum\":null,\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:22:47', '2020-12-20 14:22:47'),
(2801, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:22:49', '2020-12-20 14:22:49'),
(2802, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":null,\"minimum\":null,\"sort\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:22:58', '2020-12-20 14:22:58'),
(2803, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:22:59', '2020-12-20 14:22:59'),
(2804, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":null,\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:23:06', '2020-12-20 14:23:06'),
(2805, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:23:07', '2020-12-20 14:23:07'),
(2806, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:23:43', '2020-12-20 14:23:43'),
(2807, 1, 'sc_admin/product/edit/52', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:23:46', '2020-12-20 14:23:46'),
(2808, 1, 'sc_admin/product/edit/52', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"keyword\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"description\":null,\"content\":\"Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\\r\\n\\r\\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\\r\\n\\r\\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\\r\\n\\r\\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\\r\\n\\r\\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/4.jpg\",\"sku\":\"Fur_Bat_Day_Land\",\"alias\":\"the-fury-of-battle-a-d-day-landing-as-it-happened\",\"price\":\"28\",\"tax_id\":\"0\",\"stock\":\"11\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:23:55', '2020-12-20 14:23:55'),
(2809, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:23:57', '2020-12-20 14:23:57'),
(2810, 1, 'sc_admin/product/edit/52', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:24:57', '2020-12-20 14:24:57'),
(2811, 1, 'sc_admin/product/edit/52', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"keyword\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"description\":null,\"content\":\"Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\\r\\n\\r\\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\\r\\n\\r\\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\\r\\n\\r\\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\\r\\n\\r\\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/4.jpg\",\"sku\":\"Fur_Bat_Day_Land\",\"alias\":\"the-fury-of-battle-a-d-day-landing-as-it-happened\",\"price\":\"28\",\"tax_id\":\"0\",\"stock\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:25:08', '2020-12-20 14:25:08'),
(2812, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:25:10', '2020-12-20 14:25:10'),
(2813, 1, 'sc_admin/product/edit/52', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:25:13', '2020-12-20 14:25:13'),
(2814, 1, 'sc_admin/product/edit/52', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"keyword\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"description\":null,\"content\":\"Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\\r\\n\\r\\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\\r\\n\\r\\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\\r\\n\\r\\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\\r\\n\\r\\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/4.jpg\",\"sku\":\"Fur_Bat_Day_Land\",\"alias\":\"the-fury-of-battle-a-d-day-landing-as-it-happened\",\"price\":\"21\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:25:33', '2020-12-20 14:25:33'),
(2815, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:25:34', '2020-12-20 14:25:34'),
(2816, 1, 'sc_admin/product/edit/52', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:25:37', '2020-12-20 14:25:37'),
(2817, 1, 'sc_admin/product/edit/52', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"keyword\":\"The Fury Of Battle: A D-Day Landing As It Happened\",\"description\":null,\"content\":\"Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\\r\\n\\r\\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\\r\\n\\r\\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\\r\\n\\r\\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\\r\\n\\r\\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.\"}},\"category\":[\"24\"],\"image\":\"\\/data\\/product\\/4.jpg\",\"sku\":\"Fur_Bat_Day_Land\",\"alias\":\"the-fury-of-battle-a-d-day-landing-as-it-happened\",\"price\":\"21\",\"tax_id\":\"0\",\"stock\":\"12\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:25:47', '2020-12-20 14:25:47'),
(2818, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:25:49', '2020-12-20 14:25:49'),
(2819, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:26:13', '2020-12-20 14:26:13'),
(2820, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:26:54', '2020-12-20 14:26:54'),
(2821, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:26:55', '2020-12-20 14:26:55'),
(2822, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":null,\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:27:06', '2020-12-20 14:27:06'),
(2823, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:27:07', '2020-12-20 14:27:07'),
(2824, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"owner\":\"admin\",\"user_id\":\"1\",\"image\":null,\"sku\":null,\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:28:45', '2020-12-20 14:28:45'),
(2825, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:28:46', '2020-12-20 14:28:46'),
(2826, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"qwe\",\"keyword\":null,\"description\":null,\"content\":\"qwe\"}},\"owner\":\"admin\",\"user_id\":\"1\",\"category\":[\"18\"],\"image\":null,\"sku\":\"qwe\",\"alias\":null,\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:29:17', '2020-12-20 14:29:17'),
(2827, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:29:18', '2020-12-20 14:29:18'),
(2828, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:31:13', '2020-12-20 14:31:13'),
(2829, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:33:54', '2020-12-20 14:33:54'),
(2830, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"54\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:33:57', '2020-12-20 14:33:57'),
(2831, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 14:33:57', '2020-12-20 14:33:57'),
(2832, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:33:59', '2020-12-20 14:33:59'),
(2833, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:34:01', '2020-12-20 14:34:01'),
(2834, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":null,\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:34:18', '2020-12-20 14:34:18'),
(2835, 1, 'sc_admin/category/edit/33', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:34:18', '2020-12-20 14:34:18'),
(2836, 1, 'sc_admin/category/edit/33', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Travel\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"travel\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:36:01', '2020-12-20 14:36:01'),
(2837, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:36:01', '2020-12-20 14:36:01'),
(2838, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:39:25', '2020-12-20 14:39:25'),
(2839, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":null,\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:39:29', '2020-12-20 14:39:29'),
(2840, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:39:30', '2020-12-20 14:39:30'),
(2841, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"test\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:40:44', '2020-12-20 14:40:44'),
(2842, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:40:44', '2020-12-20 14:40:44'),
(2843, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"34\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:40:50', '2020-12-20 14:40:50'),
(2844, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 14:40:51', '2020-12-20 14:40:51'),
(2845, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:43:14', '2020-12-20 14:43:14'),
(2846, 1, 'sc_admin/customer/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:45:04', '2020-12-20 14:45:04'),
(2847, 1, 'sc_admin/customer/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"dqwdq\",\"phone\":\"0111111111\",\"email\":null,\"address1\":\"dddasdq\",\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:45:08', '2020-12-20 14:45:08'),
(2848, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:45:08', '2020-12-20 14:45:08'),
(2849, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:45:12', '2020-12-20 14:45:12'),
(2850, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"asd\",\"phone\":\"0137777777\",\"email\":\"asdsad@gmail.com\",\"address1\":null,\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:45:16', '2020-12-20 14:45:16'),
(2851, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:45:16', '2020-12-20 14:45:16'),
(2852, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":null,\"email\":null,\"address1\":null,\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:45:50', '2020-12-20 14:45:50'),
(2853, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:45:51', '2020-12-20 14:45:51'),
(2854, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":\"dfdfdf\",\"email\":null,\"address1\":null,\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:45:56', '2020-12-20 14:45:56'),
(2855, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:45:56', '2020-12-20 14:45:56'),
(2856, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":\"test\",\"email\":\"123\",\"address1\":\"123\",\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:46:12', '2020-12-20 14:46:12'),
(2857, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:46:12', '2020-12-20 14:46:12'),
(2858, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"ADASD\",\"phone\":\"12313\",\"email\":\"123@gmail.cm\",\"address1\":\"aS\",\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:47:31', '2020-12-20 14:47:31'),
(2859, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:47:32', '2020-12-20 14:47:32'),
(2860, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"ADASD\",\"phone\":\"012313\",\"email\":\"123@gmail.cm\",\"address1\":\"aS\",\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:47:37', '2020-12-20 14:47:37'),
(2861, 1, 'sc_admin/customer/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:47:38', '2020-12-20 14:47:38'),
(2862, 1, 'sc_admin/customer/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"ADASD\",\"phone\":\"0123133434\",\"email\":\"123@gmail.cm\",\"address1\":\"aS\",\"password\":null,\"status\":\"on\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:47:45', '2020-12-20 14:47:45'),
(2863, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:47:45', '2020-12-20 14:47:45'),
(2864, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:49:30', '2020-12-20 14:49:30'),
(2865, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":null,\"email\":null,\"address1\":null,\"password\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:49:32', '2020-12-20 14:49:32'),
(2866, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:49:33', '2020-12-20 14:49:33'),
(2867, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":\"123123123123\",\"email\":\"test\",\"address1\":null,\"password\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:51:20', '2020-12-20 14:51:20'),
(2868, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:51:20', '2020-12-20 14:51:20'),
(2869, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":\"123123123123\",\"email\":\"test\",\"address1\":\"123\",\"password\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:51:23', '2020-12-20 14:51:23'),
(2870, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:51:24', '2020-12-20 14:51:24'),
(2871, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:53:14', '2020-12-20 14:53:14'),
(2872, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"email\",\"value\":\"test\",\"pk\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\",\"storeId\":\"1\"}', '2020-12-20 14:54:22', '2020-12-20 14:54:22'),
(2873, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"email\",\"value\":\"scbookstore@gmail.com\",\"pk\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\",\"storeId\":\"1\"}', '2020-12-20 14:54:48', '2020-12-20 14:54:48'),
(2874, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"dsd\",\"pk\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\",\"storeId\":\"1\"}', '2020-12-20 14:54:55', '2020-12-20 14:54:55'),
(2875, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"091029384\",\"pk\":null,\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\",\"storeId\":\"1\"}', '2020-12-20 14:54:58', '2020-12-20 14:54:58');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(2876, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 14:55:49', '2020-12-20 14:55:49'),
(2877, 1, 'sc_admin/user/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 14:58:53', '2020-12-20 14:58:53'),
(2878, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-12-20 14:58:53', '2020-12-20 14:58:53'),
(2879, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:00:41', '2020-12-20 15:00:41'),
(2880, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:00:43', '2020-12-20 15:00:43'),
(2881, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:00:43', '2020-12-20 15:00:43'),
(2882, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:01:53', '2020-12-20 15:01:53'),
(2883, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:01:57', '2020-12-20 15:01:57'),
(2884, 1, 'sc_admin/customer/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":null,\"phone\":null,\"email\":null,\"address1\":null,\"password\":\"ewq\",\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:02:05', '2020-12-20 15:02:05'),
(2885, 1, 'sc_admin/customer/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:02:05', '2020-12-20 15:02:05'),
(2886, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:04:45', '2020-12-20 15:04:45'),
(2887, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:04:55', '2020-12-20 15:04:55'),
(2888, 1, 'sc_admin/user/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"bbb\",\"username\":\"bbb\",\"email\":\"123@gmail.cm\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":\"qweqwe\",\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:05:02', '2020-12-20 15:05:02'),
(2889, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:05:02', '2020-12-20 15:05:02'),
(2890, 1, 'sc_admin/user/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"bbb\",\"username\":\"bbb\",\"email\":\"123@gmail.cm\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":\"qwe\",\"password_confirmation\":\"qwe\",\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:05:07', '2020-12-20 15:05:07'),
(2891, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:05:07', '2020-12-20 15:05:07'),
(2892, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:07:29', '2020-12-20 15:07:29'),
(2893, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:07:31', '2020-12-20 15:07:31'),
(2894, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":null,\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:07:36', '2020-12-20 15:07:36'),
(2895, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:07:36', '2020-12-20 15:07:36'),
(2896, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":\"qwe\",\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:09:49', '2020-12-20 15:09:49'),
(2897, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:09:49', '2020-12-20 15:09:49'),
(2898, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":\"qweqweqwe\",\"password_confirmation\":null,\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:09:52', '2020-12-20 15:09:52'),
(2899, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:09:53', '2020-12-20 15:09:53'),
(2900, 1, 'sc_admin/user/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":null,\"username\":null,\"email\":null,\"avatar\":null,\"phone\":null,\"password\":\"qweqweqwe\",\"password_confirmation\":\"123\",\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:11:11', '2020-12-20 15:11:11'),
(2901, 1, 'sc_admin/user/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:11:11', '2020-12-20 15:11:11'),
(2902, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:12:22', '2020-12-20 15:12:22'),
(2903, 1, 'sc_admin/user/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:12:24', '2020-12-20 15:12:24'),
(2904, 1, 'sc_admin/user/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"name\":\"bbb\",\"username\":\"bbb\",\"email\":\"123@gmail.cm\",\"avatar\":null,\"phone\":\"0137777777\",\"password\":null,\"password_confirmation\":null,\"roles\":[\"7\"],\"store\":[\"0\"],\"_token\":\"4SFP39XSfcWEmvR14e5Zg7qjsq1FKlNoIWFbe25U\"}', '2020-12-20 15:12:25', '2020-12-20 15:12:25'),
(2905, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:12:26', '2020-12-20 15:12:26'),
(2906, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-20 15:14:14', '2020-12-20 15:14:14'),
(2907, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:30:24', '2020-12-27 05:30:24'),
(2908, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:36:58', '2020-12-27 05:36:58'),
(2909, 1, 'sc_admin/customer/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:37:03', '2020-12-27 05:37:03'),
(2910, 1, 'sc_admin/customer/update-address/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:37:11', '2020-12-27 05:37:11'),
(2911, 1, 'sc_admin/customer/update-address/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:38:32', '2020-12-27 05:38:32'),
(2912, 1, 'sc_admin/customer/update-address/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"aaa\",\"phone\":\"0156844885\",\"address1\":\"aaaaaa\",\"_token\":\"8iYJlnAMHPyh7susGfSMbERT7Kb87pREw2Noo0LM\"}', '2020-12-27 05:38:35', '2020-12-27 05:38:35'),
(2913, 1, 'sc_admin/customer/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:38:36', '2020-12-27 05:38:36'),
(2914, 1, 'sc_admin/customer/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:44:41', '2020-12-27 05:44:41'),
(2915, 1, 'sc_admin/customer/edit/8', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '{\"first_name\":\"aaa\",\"phone\":\"0156844885\",\"email\":\"aaa@gmail.com\",\"address1\":\"aaaaaa\",\"password\":null,\"status\":\"on\",\"_token\":\"8iYJlnAMHPyh7susGfSMbERT7Kb87pREw2Noo0LM\"}', '2020-12-27 05:44:45', '2020-12-27 05:44:45'),
(2916, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:44:46', '2020-12-27 05:44:46'),
(2917, 1, 'sc_admin/customer/edit/8', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 05:44:49', '2020-12-27 05:44:49'),
(2918, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:09:10', '2020-12-27 06:09:10'),
(2919, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:09:21', '2020-12-27 06:09:21'),
(2920, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:09:27', '2020-12-27 06:09:27'),
(2921, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:10:07', '2020-12-27 06:10:07'),
(2922, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:10:10', '2020-12-27 06:10:10'),
(2923, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:10:19', '2020-12-27 06:10:19'),
(2924, 1, 'sc_admin/role', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:11:39', '2020-12-27 06:11:39'),
(2925, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:11:43', '2020-12-27 06:11:43'),
(2926, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:12:05', '2020-12-27 06:12:05'),
(2927, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:12:08', '2020-12-27 06:12:08'),
(2928, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:12:18', '2020-12-27 06:12:18'),
(2929, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2020-12-27 06:51:29', '2020-12-27 06:51:29'),
(2930, 2, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2021-01-08 12:23:49', '2021-01-08 12:23:49'),
(2931, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2021-01-08 12:24:24', '2021-01-08 12:24:24'),
(2932, 2, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2021-01-08 12:24:41', '2021-01-08 12:24:41'),
(2933, 2, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2021-01-08 12:24:45', '2021-01-08 12:24:45'),
(2934, 2, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '[]', '2021-01-08 12:24:47', '2021-01-08 12:24:47');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'lang::admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, '2020-12-19 13:18:38'),
(2, 6, 2, 'lang::admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, '2020-12-19 13:18:38'),
(3, 25, 1, 'lang::admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, '2020-12-19 13:18:38'),
(6, 0, 1, 'lang::admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, '2020-12-19 13:18:38'),
(7, 0, 2, 'lang::admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, '2020-12-19 13:18:38'),
(9, 0, 5, 'lang::admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, '2020-12-19 13:18:38'),
(10, 7, 2, 'lang::page.admin.title', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(12, 1, 1, 'lang::order.admin.title', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(15, 2, 1, 'lang::product.admin.title', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(16, 2, 2, 'lang::category.admin.title', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(20, 3, 1, 'lang::customer.admin.title', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(25, 0, 3, 'lang::admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, '2020-12-19 13:18:38'),
(26, 65, 1, 'lang::store.admin.title', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(33, 7, 1, 'lang::banner.admin.title', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(37, 25, 2, 'lang::admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, '2020-12-19 13:18:38'),
(38, 9, 2, 'lang::admin.menu_titles.admin', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, '2020-12-19 13:18:38'),
(46, 9, 1, 'lang::admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(47, 38, 1, 'lang::admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(48, 38, 2, 'lang::admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(49, 38, 4, 'lang::admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(54, 37, 1, 'lang::admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(57, 38, 3, 'lang::admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(60, 65, 2, 'lang::store_maintain.config_manager.title', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, '2020-12-19 13:18:38'),
(65, 0, 4, 'lang::admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, '2020-12-19 13:18:38');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2020-11-19 03:09:45', NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2020-11-19 03:09:45', NULL),
(3, 'Base setting', 'base.setting', 'ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*', '2020-11-19 03:09:45', NULL),
(4, 'Store manager', 'store.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*', '2020-11-19 03:09:45', NULL),
(5, 'Product manager', 'product.full', 'ANY::sc_admin/product/*', '2020-11-19 03:09:45', NULL),
(6, 'Category manager', 'category.full', 'ANY::sc_admin/category/*', '2020-11-19 03:09:45', NULL),
(7, 'Order manager', 'order.full', 'ANY::sc_admin/order/*', '2020-11-19 03:09:45', NULL),
(8, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2020-11-19 03:09:45', NULL),
(9, 'Extension manager', 'extension.full', 'ANY::sc_admin/template/*,ANY::sc_admin/plugin/*', '2020-11-19 03:09:45', NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*', '2020-11-19 03:09:45', NULL),
(11, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2020-11-19 03:09:45', NULL),
(12, 'CMS manager', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2020-11-19 03:09:45', NULL),
(13, 'Change config', 'change.config', 'POST::sc_admin/config/update_info', '2020-11-19 03:09:45', NULL),
(14, 'Role manager', 'rolemanager', 'ANY::sc_admin/role/*', '2020-11-21 05:08:49', '2020-11-21 05:08:49'),
(15, 'User Manager', 'profilemanager', 'GET::sc_admin/user,GET::sc_admin/user/edit/{id},POST::sc_admin/user/edit/{id}', '2020-11-21 05:10:16', '2020-11-21 06:39:37');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-11-19 03:09:45', NULL),
(2, 'Group only View', 'view.all', '2020-11-19 03:09:45', NULL),
(3, 'Manager', 'manager', '2020-11-19 03:09:45', NULL),
(4, 'CMS', 'cms', '2020-11-19 03:09:45', NULL),
(5, 'Accountant', 'accountant', '2020-11-19 03:09:45', NULL),
(6, 'Marketing', 'maketing', '2020-11-19 03:09:45', NULL),
(7, 'seller', 'seller', '2020-11-19 03:15:03', '2020-11-19 03:15:03');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2020-11-19 03:09:45', NULL),
(3, 2, '2020-11-19 03:09:45', NULL),
(3, 3, '2020-11-19 03:09:45', NULL),
(3, 4, '2020-11-19 03:09:45', NULL),
(3, 5, '2020-11-19 03:09:45', NULL),
(3, 6, '2020-11-19 03:09:45', NULL),
(3, 7, '2020-11-19 03:09:45', NULL),
(3, 8, '2020-11-19 03:09:45', NULL),
(3, 9, '2020-11-19 03:09:45', NULL),
(3, 10, '2020-11-19 03:09:45', NULL),
(3, 11, '2020-11-19 03:09:45', NULL),
(3, 12, '2020-11-19 03:09:45', NULL),
(3, 13, '2020-11-19 03:09:45', NULL),
(4, 1, '2020-11-19 03:09:45', NULL),
(4, 12, '2020-11-19 03:09:45', NULL),
(5, 1, '2020-11-19 03:09:45', NULL),
(5, 2, '2020-11-19 03:09:45', NULL),
(5, 7, '2020-11-19 03:09:45', NULL),
(5, 11, '2020-11-19 03:09:45', NULL),
(6, 1, '2020-11-19 03:09:45', NULL),
(6, 2, '2020-11-19 03:09:45', NULL),
(6, 8, '2020-11-19 03:09:45', NULL),
(6, 10, '2020-11-19 03:09:45', NULL),
(6, 11, '2020-11-19 03:09:45', NULL),
(6, 12, '2020-11-19 03:09:45', NULL),
(7, 5, NULL, NULL),
(7, 7, NULL, NULL),
(7, 8, NULL, NULL),
(7, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(7, 2, NULL, NULL),
(7, 9, NULL, NULL),
(7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0:Lock, 1: unlock',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `code`, `language`, `timezone`, `currency`, `status`, `active`) VALUES
(1, '/data/logo/Capture-removebg-preview.png', '016112344', '091029384', 'scbookstore@gmail.com', 'operation hours ：24 hours', '55, Jalan Dedap 4, Johor Jaya, 81100 Johor Bahru, Johor', NULL, NULL, 's-cart-light', 'localhost/s-cart/public', 'root', 'en', 'Asia/Kuala_Lumpur', 'USD', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`) VALUES
(1, 'en', 'Second hand Bookstore: A platform to trade second hand books.', 'A platform to trade second hand books.', 'Second hand Bookstore: A platform to trade second hand books.', '<center><img src=\"/images/maintenance.png\" />\r\n    <h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\r\n    </center>'),
(1, 'vi', 'Demo SCart: Mã nguồn website thương mại điện tử miễn phí', 'Laravel shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\r\n    <h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\r\n    </center>');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'admin', '$2y$10$v3.5Qo0HRtNp5C6787fI6edUEi9uk9dfz4.pocfEBrCOK/Dmy7QT.', 'Administrator', 'scbookstore@gmail.com', '/data/avatar/user.png', 'RyJ40iWq8BhVQZ5khHtkErKe8HcklFsx332aAIdipSuv8ITI4IHlLQlKYLKM', 'dark', '2020-11-19 03:09:45', '2020-12-19 13:55:53', '016112344'),
(2, 'aaa', '$2y$10$Ahd/PRfdxBJCRlbRJ0ZBAuXOktuhO.8Dr3XYmFCqdc2bo5rtlJbHy', 'aaa', 'aaa@gmail.com', '', NULL, NULL, '2020-11-19 03:15:48', '2020-11-23 06:14:07', '214213123'),
(5, 'bbb', '$2y$10$Po6lPM71Fn2rLcC8cWGeOOvHvZ8ExwVmoZbwhBWzEspZxt3dhQV4G', 'bbb', '123@gmail.cm', '', NULL, NULL, '2020-12-19 13:57:01', '2020-12-19 13:57:01', '0137777777'),
(9, 'classics_bookstore', '$2y$10$Ztk2eqotYCTrK2d953MGd.yTQl1Lnms1MvpIXdiOBRBGWc6V67iIq', 'Classics Bookstore', 'classicsbookstore@gmail.com', '/data/avatar/Capture.PNG', NULL, NULL, '2020-12-20 05:48:28', '2020-12-20 05:48:28', '0133243123');

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_admin_user_store`
--

CREATE TABLE `sc_admin_user_store` (
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_admin_user_store`
--

INSERT INTO `sc_admin_user_store` (`user_id`, `store_id`) VALUES
(2, 0),
(3, 0),
(5, 0),
(9, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '5fb5f00a68893', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_banner`
--

INSERT INTO `sc_shop_banner` (`id`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `store_id`, `created_at`, `updated_at`) VALUES
(5, '/data/banner/ban1.jpg', NULL, '_self', NULL, 1, 0, 0, 'banner', 1, '2020-11-25 03:35:30', '2020-11-25 03:36:24'),
(7, '/data/banner/ban3.jpg', '', '_self', '', 1, 0, 0, 'banner', 1, '2020-11-25 03:38:15', '2020-11-25 03:38:15'),
(8, '/data/banner/ban4.png', NULL, '_self', NULL, 1, 0, 0, 'banner', 1, '2020-11-25 03:38:30', '2020-11-25 03:38:49'),
(9, '/data/banner/Breadcrumb.jpeg', NULL, '_self', NULL, 1, 0, 0, 'breadcrumb', 1, '2020-11-25 09:03:01', '2020-11-25 09:09:04'),
(10, '/data/banner/ban store.jpg', NULL, '_self', NULL, 1, 0, 0, 'banner-store', 1, '2020-11-25 09:10:04', '2020-11-25 09:10:17');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(17, '', 'business', 0, 1, 1, 0),
(18, NULL, 'investing', 0, 1, 1, 0),
(19, '', 'computers', 0, 1, 1, 0),
(20, '', 'technology', 0, 1, 1, 0),
(21, '', 'health', 0, 1, 1, 0),
(22, '', 'fitness', 0, 1, 1, 0),
(23, '', 'dieting', 0, 1, 1, 0),
(24, NULL, 'history', 0, 1, 1, 0),
(25, '', 'medical', 0, 1, 1, 0),
(26, '', 'science', 0, 1, 1, 0),
(27, '', 'fantasy', 0, 1, 1, 0),
(28, '', 'math', 0, 1, 1, 0),
(29, '', 'sports', 0, 1, 1, 0),
(30, '', 'outdoors', 0, 1, 1, 0),
(31, '', 'professional', 0, 1, 1, 0),
(32, '', 'technical', 0, 1, 1, 0),
(33, NULL, 'travel', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(17, 'en', 'Business', 'Business', 'Business'),
(18, 'en', 'Investing', '', ''),
(19, 'en', 'Computers', '', ''),
(20, 'en', 'Technology', '', ''),
(21, 'en', 'Health', '', ''),
(22, 'en', 'Fitness', '', ''),
(23, 'en', 'Dieting', '', ''),
(24, 'en', 'History', '', ''),
(25, 'en', 'Medical', '', ''),
(26, 'en', 'Science', '', ''),
(27, 'en', 'Fantasy', '', ''),
(28, 'en', 'Math', '', ''),
(29, 'en', 'Sports', '', ''),
(30, 'en', 'Outdoors', '', ''),
(31, 'en', 'Professional', '', ''),
(32, 'en', 'Technical', '', ''),
(33, 'en', 'Travel', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\'s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\'s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'RM', 'USD', 'RM', 1.00, 0, 1, ',', 1, 0),
(2, 'VietNam Dong', 'VND', '₫', 20.00, 0, 0, ',', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_customer`
--

CREATE TABLE `sc_shop_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_customer`
--

INSERT INTO `sc_shop_customer` (`id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `company`, `country`, `phone`, `store_id`, `remember_token`, `status`, `group`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'Naruto', 'Kun', NULL, NULL, 'test@test.com', NULL, NULL, '$2y$10$A15od7n05988YRapuuTNLuY2w/nGQcpmctgzn4N3L5dGINIQKN4si', 0, '70000', 'HCM', 'HCM city', 'KTC', 'VN', '0667151172', 1, NULL, 1, 1, '2020-11-19 03:09:46', NULL, NULL, NULL),
(2, 'qwer', 'asdf', NULL, NULL, 'zxc@gmail.com', NULL, NULL, '$2y$10$4UaddfgoZcgJvORQtukObO6yR2a.vJYSplfoBWB8VDOXQzx7VejA6', 1, NULL, 'sada', 'asdscz', NULL, 'MK', '012345678', 1, NULL, 1, 1, '2020-11-19 03:51:03', '2020-11-19 03:51:03', NULL, NULL),
(3, 'qwe', 'asdf', NULL, NULL, 'ok.kai.mail@gmail.com', NULL, NULL, '$2y$10$OZRzI.u7bYSHt8shECEWgeJGwhAqBm9e15R4WFOPUJXg/EMqtPzvK', 2, NULL, '56, JALAN RAWA 3,', 'TAMAN DESA CEMERLANG', NULL, 'MY', '01127302634', 1, NULL, 1, 1, '2020-11-19 04:15:19', '2020-11-19 04:15:19', NULL, NULL),
(4, 'qwer', 'asdf', NULL, NULL, 'sdsdf@gmail.com', NULL, NULL, '$2y$10$35uuBRPgOoHSmEMUkFcvmuruwIq6WcTg44A4oCzh9v5oVirIDS16a', 3, NULL, '56, JALAN RAWA 3,', 'TAMAN DESA CEMERLANG', NULL, 'MY', '01127302634', 1, NULL, 1, 1, '2020-11-19 04:21:32', '2020-11-19 04:21:32', NULL, NULL),
(5, 'ADASD', 'asdf', NULL, NULL, '123@gmail.cm', NULL, NULL, '$2y$10$CXm79xgZ2e0vGLIN41yZuOMYm.6lFNXgq0Xeu0m0aRE5gDbMyUlem', 4, NULL, 'aS', 'TAMAN DESA CEMERLANG', NULL, 'MY', '0123133434', 1, NULL, 1, 1, '2020-11-19 04:22:13', '2020-12-20 14:47:45', NULL, NULL),
(6, 'dqwdq', NULL, NULL, NULL, 'qwqd@gmaiil.con', NULL, NULL, '$2y$10$FDnqPDmyk863UcfAvREJV.6zDOBxpL7sp38sht.oq9gD.GG0S5j6C', 5, NULL, 'dddasdq', NULL, NULL, 'VN', '0111111111', 1, NULL, 1, 1, '2020-12-09 07:26:30', '2020-12-09 07:26:30', NULL, NULL),
(7, 'qwer123', NULL, NULL, NULL, 'zetanalpha@gmail.com', NULL, NULL, '$2y$10$aQnrw3ftluDwD618EuAGueVvoEdnaYqcmHqH3eWRGrlngFNFiLjZm', 6, NULL, '56, JALAN RAWA 3,12', NULL, NULL, 'VN', '0111111111', 1, NULL, 1, 1, '2020-12-11 06:03:58', '2020-12-19 14:06:52', NULL, NULL),
(8, 'aaa', NULL, NULL, NULL, 'aaa@gmail.com', NULL, NULL, '$2y$10$DGA63RgyZVtyZ2NYojCJR.EYlsRAEjZeUewvm3V6J83JBpjcs/mKi', 7, NULL, 'aaaaaa', NULL, NULL, 'VN', '0156844885', 1, NULL, 1, 1, '2020-12-27 05:35:20', '2020-12-27 05:44:45', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_customer_address`
--

CREATE TABLE `sc_shop_customer_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_customer_address`
--

INSERT INTO `sc_shop_customer_address` (`id`, `customer_id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `postcode`, `address1`, `address2`, `country`, `phone`) VALUES
(1, 2, 'qwer', 'asdf', '', '', '', 'sada', 'asdscz', 'MK', '012345678'),
(2, 3, 'qwe', 'asdf', '', '', '', '56, JALAN RAWA 3,', 'TAMAN DESA CEMERLANG', 'MY', '01127302634'),
(3, 4, 'qwer', 'asdf', '', '', '', '56, JALAN RAWA 3,', 'TAMAN DESA CEMERLANG', 'MY', '01127302634'),
(4, 5, 'asd', 'asdf', '', '', '', '56, JALAN RAWA 3,', 'TAMAN DESA CEMERLANG', 'MY', '01127302634'),
(5, 6, 'dqwdq', '', '', '', '', 'dddasdq', '', '', '0111111111'),
(7, 8, 'aaa', '', '', '', '', 'aaaaaa', '', '', '0156844885');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '\r\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n<tbody><tr>\r\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n      <tbody><tr>\r\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <tbody><tr>\r\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\r\n              </td>\r\n          </tr>\r\n          </tbody>\r\n      </table>\r\n      </td>\r\n      </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n{{$note_sendmail}}\r\n</p>\r\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n<tbody><tr>\r\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}: <a href=\"{{$reset_link}}\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4\" target=\"_blank\">{{$reset_link}}</a></p>\r\n  </td>\r\n  </tr>\r\n</tbody>\r\n</table>', 1, 1),
(2, 'Welcome new customer', 'welcome_customer', '\r\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\r\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1, 1),
(3, 'Send form contact to admin', 'contact_to_admin', '\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n<td>\r\n<b>Name</b>: {{$name}}<br>\r\n<b>Email</b>: {{$email}}<br>\r\n<b>Phone</b>: {{$phone}}<br>\r\n</td>\r\n</tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Content:<br>\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n<tr>\r\n<td>{{$content}}</td>\r\n</tr>\r\n</table>', 1, 1),
(4, 'New order to admin', 'order_success_to_admin', '\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n  <tr>\r\n      <td>\r\n          <b>Order ID</b>: {{$orderID}}<br>\r\n          <b>Customer name</b>: {{$toname}}<br>\r\n          <b>Email</b>: {{$email}}<br>\r\n          <b>Address</b>: {{$address}}<br>\r\n          <b>Phone</b>: {{$phone}}<br>\r\n          <b>Order note</b>: {{$comment}}\r\n      </td>\r\n  </tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Order detail:<br>\r\n===================================<br></p>\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n  {{$orderDetail}}\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n  </tr>\r\n</table>', 1, 1),
(5, 'New order to customr', 'order_success_to_customer', '\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n  <td>\r\n      <b>Order ID</b>: {{$orderID}}<br>\r\n      <b>Customer name</b>: {{$toname}}<br>\r\n      <b>Address</b>: {{$address}}<br>\r\n      <b>Phone</b>: {{$phone}}<br>\r\n      <b>Order note</b>: {{$comment}}\r\n  </td>\r\n</tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Order detail:<br>\r\n===================================<br></p>\r\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n{{$orderDetail}}\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n</tr>\r\n</table>', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 1, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'lang::layout.page_position.home'),
(2, 'shop_home', 'lang::layout.page_position.shop_home'),
(3, 'product_list', 'lang::layout.page_position.product_list'),
(4, 'product_detail', 'lang::layout.page_position.product_detail'),
(5, 'shop_cart', 'lang::layout.page_position.shop_cart'),
(6, 'item_list', 'lang::layout.page_position.item_list'),
(7, 'item_detail', 'lang::layout.page_position.item_detail'),
(8, 'news_list', 'lang::layout.page_position.news_list'),
(9, 'news_detail', 'lang::layout.page_position.news_detail'),
(10, 'shop_auth', 'lang::layout.page_position.shop_auth'),
(11, 'shop_profile', 'lang::layout.page_position.shop_profile'),
(12, 'shop_page', 'lang::layout.page_position.shop_page'),
(13, 'shop_contact', 'lang::layout.page_position.shop_contact'),
(14, 'content_list', 'lang::layout.page_position.content_list'),
(15, 'content_detail', 'lang::layout.page_position.content_detail'),
(16, 'store_home', 'lang::layout.page_position.store_home'),
(17, 'store_product_list', 'lang::layout.page_position.store_product_list');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'meta', 'lang::layout.page_block.meta'),
(2, 'header', 'lang::layout.page_block.header'),
(3, 'top', 'lang::layout.page_block.top'),
(4, 'bottom', 'lang::layout.page_block.bottom'),
(5, 'left', 'lang::layout.page_block.left'),
(6, 'right', 'lang::layout.page_block.right'),
(7, 'banner_top', 'lang::layout.page_block.banner_top');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`, `store_id`) VALUES
(1, 'lang::front.contact', 'route::contact', '_self', 'menu', '', 1, 3, 1),
(2, 'lang::front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 4, 1),
(3, 'lang::front.my_profile', '/customer/login.html', '_self', 'footer', '', 1, 5, 1),
(4, 'lang::front.compare_page', '/compare.html', '_self', 'footer', '', 1, 4, 1),
(5, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_news`
--

INSERT INTO `sc_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `store_id`, `created_at`, `updated_at`) VALUES
(1, '/data/content/blog-1.jpg', 'demo-alias-blog-1', 0, 1, 1, '2020-11-18 16:00:00', NULL),
(2, '/data/content/blog-2.jpg', 'demo-alias-blog-2', 0, 1, 1, '2020-11-18 16:00:00', NULL),
(3, '/data/content/blog-3.jpg', 'demo-alias-blog-3', 0, 1, 1, '2020-11-18 16:00:00', NULL),
(4, '/data/content/blog-4.jpg', 'demo-alias-blog-4', 0, 1, 1, '2020-11-18 16:00:00', NULL),
(5, '/data/content/blog-5.jpg', 'demo-alias-blog-5', 0, 1, 1, '2020-11-18 16:00:00', NULL),
(6, '/data/content/blog-6.jpg', 'demo-alias-blog-6', 0, 1, 1, '2020-11-18 16:00:00', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_news_description`
--

INSERT INTO `sc_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'en', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'en', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'vi', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'en', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'vi', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_order`
--

INSERT INTO `sc_shop_order` (`id`, `customer_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `ip`, `transaction`, `created_at`, `updated_at`) VALUES
(8, 0, 'http://localhost/s-cart-4/public', 95, 4, 0, 1, 1, 1, 0, 99, 'USD', 1.00, 0, 99, 'Jason', NULL, NULL, NULL, '12, jalan lanjut 19, Taman desa cemerlang', NULL, 'VN', NULL, NULL, '0123123123', 'jason@gmail.com', NULL, '', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', NULL, '2020-12-20 06:13:22', '2020-12-20 06:13:22'),
(10, 8, 'http://localhost/s-cart/public/index.php', 63, 4, 0, 1, 1, 1, 0, 67, 'USD', 1.00, 0, 67, 'aaa', NULL, NULL, NULL, 'aaaaaa', NULL, 'VN', NULL, NULL, '0156844885', 'aaa@gmail.com', 'asd', '', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', NULL, '2020-12-27 05:45:58', '2020-12-27 05:45:58');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_order_detail`
--

INSERT INTO `sc_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `store_id`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(17, 8, 50, 'Passages', 42, 1, 1, 42, 0, 'Pass', 'USD', 1.00, '[]', '2020-12-20 06:13:22', '2020-12-20 06:13:22'),
(18, 8, 48, 'Back On Your Bike', 25, 1, 1, 25, 0, 'Bac_Your_Bik', 'USD', 1.00, '[]', '2020-12-20 06:13:22', '2020-12-20 06:13:22'),
(19, 8, 52, 'The Fury Of Battle: A D-Day Landing As It Happened', 28, 1, 1, 28, 0, 'Fur_Bat_Day_Land', 'USD', 1.00, '[]', '2020-12-20 06:13:22', '2020-12-20 06:13:22'),
(21, 10, 52, 'The Fury Of Battle: A D-Day Landing As It Happened', 21, 1, 1, 21, 0, 'Fur_Bat_Day_Land', 'USD', 1.00, '[]', '2020-12-27 05:45:58', '2020-12-27 05:45:58'),
(22, 10, 50, 'Passages', 42, 1, 1, 42, 0, 'Pass', 'USD', 1.00, '[]', '2020-12-27 05:45:59', '2020-12-27 05:45:59');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_order_history`
--

INSERT INTO `sc_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `customer_id`, `order_status_id`, `add_date`) VALUES
(8, 8, 'New order', 9, 0, 1, '2020-12-20 14:13:22'),
(10, 10, 'New order', 1, 8, 1, '2020-12-27 13:45:59');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_order_total`
--

INSERT INTO `sc_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(43, 8, 'Sub Total', 'subtotal', 95, 'RM95', 1, '2020-12-20 06:13:22', NULL),
(44, 8, 'Tax', 'tax', 0, 'RM0', 2, '2020-12-20 06:13:22', NULL),
(45, 8, 'Shipping Standard', 'shipping', 4, 'RM4', 10, '2020-12-20 06:13:22', NULL),
(46, 8, 'Discount', 'discount', 0, '0', 20, '2020-12-20 06:13:22', NULL),
(47, 8, 'Total', 'total', 99, 'RM99', 100, '2020-12-20 06:13:22', NULL),
(48, 8, 'Received', 'received', 0, '0', 200, '2020-12-20 06:13:22', NULL),
(55, 10, 'Sub Total', 'subtotal', 63, 'RM63', 1, '2020-12-27 05:45:58', NULL),
(56, 10, 'Tax', 'tax', 0, 'RM0', 2, '2020-12-27 05:45:58', NULL),
(57, 10, 'Shipping Standard', 'shipping', 4, 'RM4', 10, '2020-12-27 05:45:58', NULL),
(58, 10, 'Discount', 'discount', 0, '0', 20, '2020-12-27 05:45:58', NULL),
(59, 10, 'Total', 'total', 67, 'RM67', 100, '2020-12-27 05:45:58', NULL),
(60, 10, 'Received', 'received', 0, '0', 200, '2020-12-27 05:45:58', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`, `store_id`) VALUES
(1, '/data/page/124493.jpg', 'about', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', '', '', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-12 col-sm-12 col-md-6&quot;&gt;&lt;img src=&quot;http://localhost/s-cart/public/data/page/124493.jpg&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-12 col-sm-12 col-md-6&quot;&gt;\r\n&lt;p&gt;We started an ecommerce second hand book website in November 2020. Due to currently customers need to take a trip to physical store to make their purchases. In addition, the second-hand book market has not been developed by any company, and the market is mainly managed by small vendors. As a result, some people who want to buy second-hand books have only few choices for their second-hand books. Therefore, we decided to set up ecommerce second-hand book website, mainly to help some people who want to buy books but lack of funds, such as students, to buy the books they need for school on the second-hand book website. Through this website can also avoid wasting resources of books.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/div&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_password_resets`
--

INSERT INTO `sc_shop_password_resets` (`email`, `token`, `created_at`) VALUES
('zetanalpha@gmail.com', '$2y$10$O8idF9yboQFeu9yXzy1JA.qEgla3YggwFHa2X2l/7Iv/YrHN3sAWy', '2020-12-11 14:05:50');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` tinyint(4) DEFAULT 0 COMMENT '0:physical, 1:download, 2:only view, 3: Service',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_store_id` int(11) DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `sort`, `view`, `alias`, `category_store_id`, `store_id`, `date_lastview`, `date_available`, `created_at`, `updated_at`, `owner`, `user_id`) VALUES
(33, 'Holly_Mon_Sav', NULL, NULL, NULL, NULL, NULL, '/data/product/1.jpg', 0, 0, 14, 0, 6, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 6, 'holly-smiths-money-saving-book', 0, 1, '2020-11-25 12:54:10', NULL, '2020-11-25 04:31:06', '2020-12-20 06:11:01', 'admin', 1),
(34, 'Beg_Code_Cour', NULL, NULL, NULL, NULL, NULL, '/data/product/2.jpg', 0, 0, 32, 0, 7, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'beginners-step-by-step-coding-course', 0, 1, NULL, NULL, '2020-11-25 04:32:45', '2020-12-20 06:11:10', 'admin', 1),
(37, 'Sci_Stay_Well', NULL, NULL, NULL, NULL, NULL, '/data/product/5.jpg', 0, 0, 32, 0, 6, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 3, 'immunity-the-science-of-staying-well', 0, 1, '2020-12-14 20:48:05', NULL, '2020-11-25 04:35:12', '2020-12-20 06:11:17', 'admin', 1),
(46, 'Wit_Eve_Rea_Sum', NULL, NULL, NULL, NULL, NULL, '/data/product/10.jpg', 0, 0, 20, 0, 13, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'without-ever-reaching-the-summit', 0, 1, NULL, NULL, '2020-12-20 05:58:12', '2020-12-20 05:58:12', 'classics_bookstore', 9),
(47, 'Sha_Thi_Com', NULL, NULL, NULL, NULL, NULL, '/data/product/9.jpg', 0, 0, 12, 0, 8, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'shape-of-things-to-come', 0, 1, NULL, NULL, '2020-12-20 06:02:03', '2020-12-20 06:02:03', 'classics_bookstore', 9),
(48, 'Bac_Your_Bik', NULL, NULL, NULL, NULL, NULL, '/data/product/8.jpg', 0, 0, 25, 0, 7, 1, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'back-on-your-bike', 0, 1, NULL, NULL, '2020-12-20 06:03:33', '2020-12-20 06:13:22', 'classics_bookstore', 9),
(49, 'Found_Math', NULL, NULL, NULL, NULL, NULL, '/data/product/7.jpg', 0, 0, 16, 0, 16, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'foundations-illustr-mathematics', 0, 1, NULL, NULL, '2020-12-20 06:05:32', '2020-12-20 06:05:32', 'classics_bookstore', 9),
(50, 'Pass', NULL, NULL, NULL, NULL, NULL, '/data/product/6.jpg', 0, 0, 42, 0, 3, 2, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 1, 'passages', 0, 1, '2020-12-20 14:12:22', NULL, '2020-12-20 06:06:53', '2020-12-27 05:45:59', 'classics_bookstore', 9),
(51, 'Bre_Up_Sug', NULL, NULL, NULL, NULL, NULL, '/data/product/3.jpg', 0, 0, 26, 0, 7, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 0, 'breaking-up-with-sugar', 0, 1, NULL, NULL, '2020-12-20 06:08:16', '2020-12-20 13:02:24', 'classics_bookstore', 9),
(52, 'Fur_Bat_Day_Land', NULL, NULL, NULL, NULL, NULL, '/data/product/4.jpg', 0, 0, 21, 0, 11, 2, 0, '', 0, '', 0, 0, 0, 0, 0, '0', 1, 0, 11, 'the-fury-of-battle-a-d-day-landing-as-it-happened', 0, 1, '2020-12-27 14:21:00', NULL, '2020-12-20 06:09:42', '2020-12-27 06:21:00', 'classics_bookstore', 9);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
(33, 17),
(33, 18),
(34, 19),
(34, 20),
(37, 25),
(46, 33),
(47, 31),
(47, 32),
(48, 29),
(48, 30),
(49, 26),
(49, 28),
(50, 26),
(50, 27),
(51, 21),
(51, 22),
(51, 23),
(52, 24);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', '', '', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;img alt=&quot;&quot; src=&quot;/data/product/product-10.png&quot; style=&quot;width: 262px; height: 262px; float: right; margin: 10px;&quot; /&gt;&lt;/p&gt;\r\n    &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;/p&gt;'),
(2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(33, 'en', 'Holly Smith\'S Money Saving Book', 'Holly Smith\'S Money Saving Book', '', '\'THE WOMAN WHO\'LL MAKE YOU RICHER! SHE\'S WRITTEN A BOOK GUARANTEED TO SAVE YOU A FORTUNE\' MAIL ON SUNDAY\r\n\r\nHow much can you save with this book?\r\n\r\nTrusted bargain-hunter and mum, Holly Smith, cuts thousands of pounds off her shopping and bills every year. She founded the Facebook group Extreme Couponing and Bargains UK (one of the largest Facebook groups in the world) and is on TikTok, Youtube and Instagram helping as many people as possible to save money too.\r\n\r\nThis book contains all her best hacks and tips to save money and make money - simple, life-changing ideas for everyone.\r\n\r\nHolly has included her favourite hacks from the Extreme Couponing and Bargains UK community too, who inspired her to write this book. And has asked all her money-saving expert friends to contribute tips too.\r\n\r\nAll the costly moments of everyday life are included, from supermarket shops to kids parties - even special occasions like weddings and Christmas.\r\n\r\nDiscover lots of fun ways to get saving, find the bargains and make your money go further.'),
(34, 'en', 'Beginner\'S Step-By-Step Coding Course', 'Beginner\'S Step-By-Step Coding Course', '', 'Learning to code has never been easier than with this innovative visual guide to computer programming for beginners.\r\n\r\nCoding skills are in high demand and the need for programmers is still growing. However, taking the first steps in learning more about this complex subject may seem daunting and many of us feel left behind by the coding revolution. By using a graphic method to break code into small chunks, this book brings essential skills within reach.Terms such as algorithm, variable, string, function, and loop are all explained. The book also looks at the main coding languages that are out there, outlining the main applications of each language.\r\n\r\nIndividual chapters explore different languages, with practical programming projects to show you how programming works. You\'ll learn to think like a programmer by breaking a problem down into parts, before turning those parts into lines of code. Short, easy-to-follow steps then show you, piece by piece, how to build a complete program. There are challenges for you to tackle to build your confidence before moving on.\r\n\r\nWritten by a team of expert coders and coding teachers, the Beginner\'s Step-by-Step Coding Course is the ideal way to get to grips with coding.'),
(37, 'en', 'Immunity: The Science Of Staying Well', 'Immunity: The Science Of Staying Well', '', 'Your essential handbook to staying well in the modern world The immune system is your constant guardian, fighting around the clock to protect you from disease. There\'s a lot you can do to strengthen this first line of defense against all kinds of threats, from COVID-19 to cancer. Now, immunologist Dr. Jenna Macciochi gives us a crash course on how the immune system actually works--and how to keep yours in shape--with authoritative guidance on: the best foods to eat to strengthen your immune systemthe importance of movement, and how often to exercisethe essential link between immunity and sleepits surprising connection to your mental health.'),
(46, 'en', 'Without Ever Reaching The Summit', 'Without Ever Reaching The Summit', '', 'An awestruck love letter to one of the most spectacular places on earth, from the author of international bestseller The Eight Mountains\r\n\r\nPaolo Cognetti marked his 40th birthday with a journey he had always wanted to make: to Dolpo, a remote Himalayan region where Nepal meets Tibet. He took with him two friends, a notebook, mules and guides, and a well-worn copy of The Snow Leopard. Written in 1978, Matthiessen\'s classic was also turning forty, and Cognetti set out to walk in the footsteps of the great adventurer.\r\n\r\nWithout Ever Reaching the Summit combines travel journal, secular pilgrimage, literary homage and sublime mountain writing in a short book for readers of Macfarlane, Rebanks and Cognetti\'s own bestseller, The Eight Mountains. An investigation into the author\'s physical limits, an ancient mountain culture, and the magnificence of nature, it is an awestruck love letter to one of the most spectacular places on earth.'),
(47, 'en', 'Shape Of Things To Come', 'Shape Of Things To Come', '', 'In this humane and important exploration of modern medicine, Druin Burch examines the future of medicine, our changing physicalities and the implications of longer life.\r\n\r\nFrom birth to death and through the exploration of topics such as disease, sex, mind, eating and drinking, Burch tracks the future of medicine by looking at what is already possible today. Weaving in insights from literature, art and history, The Shape of Things to Come considers the cultural complexity surrounding medicine as well as its impact on the humanities.\r\n\r\nAs a specialist in geriatric medicine Burch writes with a keen understanding of the medical profession. He outlines the areas of medicine which have seen the greatest improvements and optimistically offers insight into further advancements.\r\nPraise for Druin Burch: \'A writer of searing intelligence and lively wit\' GOOD BOOK GUIDE\r\n\r\n\'Each chapter is a self-contained pleasure to read\' SUNDAY TIMES\r\n\r\n\'Intriguing and informed\' THE TIMES'),
(48, 'en', 'Back On Your Bike', 'Back On Your Bike', '', 'Many of us have recently dusted off an old bike and got back in the saddle for the first time in years. This is great news; we will be enjoying the health, financial, and emotional benefits for decades. But if you\'ve not ridden a bike since childhood, it\'s a challenging prospect. This book is a confidence builder for the nervous new or re-newed cyclist. In three clear stages the book covers the benefits of cycling, looking after your bike thereby avoiding trips to the bike workshop, and above all, the real-world advice you need to become a confident cycling commuter and road user. Engagingly written by cycling expert and author Alan Anderson, all this comes in a small, readable format, with attractive illustrations by David Sparshott.'),
(49, 'en', 'Foundations: Illustr Mathematics', 'Foundations: Illustr Mathematics', '', 'In order to understand the universe you must know the language in which it is written. And that language is mathematics - Galileo (1564-1642)\r\n\r\nFor hundreds of thousands of years, we have sought order in the apparent chaos of the universe. Mathematics has been our most valuable tool in that search, uncovering the patterns and rules that govern our world and beyond. This illustrated guide traces humankind\'s greatest achievements in mathematics, plotting a journey from innumerate cave-dwellers, through the towering intellects of the last 4,000 years, to where we stand today.\r\n\r\nIncluding a giant timeline wallchart, Foundations is a brilliant hardback reference book which charts the development of this intriguing and expansive discipline, from early history to modern day.'),
(50, 'en', 'Passages', 'Passages', '', 'This fourteenth anthology of short stories set in the beloved Valdemar universe features tales by debut and established authors and a brand-new story from Lackey herself. The Heralds of Valdemar are the kingdom\'s ancient order of protectors. They are drawn from all across the land, from all walks of life, and at all ages--and all are Gifted with abilities beyond those of normal men and women. They are Mindspeakers, FarSeers, Empaths, ForeSeers, Firestarters, FarSpeakers, and more. These inborn talents--combined with training as emissaries, spies, judges, diplomats, scouts, counselors, warriors, and more--make them indispensable to their monarch and realm. Sought and Chosen by mysterious horse-like Companions, they are bonded for life to these telepathic, enigmatic creatures. The Heralds of Valdemar and their Companions ride circuit throughout the kingdom, protecting the peace and, when necessary, defending their land and monarch.'),
(51, 'en', 'Breaking Up With Sugar', 'Breaking Up With Sugar', '', 'A 66-day plan for going sugar-free from an eating disorder specialist and therapist who broke free of her own sugar addiction.\r\n\r\nOur relationship with food can be complicated: for many, food soothes painful emotions, it nurtures, it numbs, it provides a \'high\'. Breaking Up With Sugar offers a plan for the complete transformation of many people\'s destructive relationship with food. For these people, sugar is often the culprit: it produces physical, neurological and endocrine changes that render the individual powerless over their compulsion to eat.\r\n\r\nMolly Carmel struggled with her own eating disorder for over 20 years and finding no solutions in available treatments, she created The Beacon, where she helps clients recover from similar addictions. Her step-by-step instructions are designed to take the guesswork out of sugar-free eating and help people start a new, healthier relationship with food. With 8 vows to return to and rely on, and guidance on how to divorce dieting forever, Breaking Up With Sugar offers an individualised, sustainable and realistic plan for eating and thriving for life.'),
(52, 'en', 'The Fury Of Battle: A D-Day Landing As It Happened', 'The Fury Of Battle: A D-Day Landing As It Happened', '', 'Before the war, Normandy\'s Plage d\'Or coast was best known for its sleepy villages and holiday destinations. Early in 1944, Field Marshal Erwin Rommel took one look at the gentle, sloping sands and announced \'They will come here!\' He was referring to Omaha Beach - the primary American D-Day landing site. The beach was subsequently transformed into three miles of lethal, bunker-protected arcs of fire, with chalets converted into concrete strongpoints, fringed by layers of barbed wire and mines. The Germans called it \'the Devil\'s Garden\'.\r\n\r\nWhen Company A of the US 116th Regiment landed on Omaha Beach on 6 June 1944, it lost 96% of its effective strength. This was the beginning of the historic day that The Fury of Battle narrates hour by hour - from midnight to midnight - tracking German and American soldiers fighting across the beachhead.\r\n\r\nTwo and a half hours in, General Bradley, commanding the landings aboard USS Augusta, had to decide whether to proceed or evacuate. On 6 June there were well over 2,400 casualties on Omaha Beach - easily D-Day\'s highest death toll.\r\n\r\nThe Wehrmacht thought they had bludgeoned the Americans into bloody submission, yet by mid-afternoon the troops were ashore. Why were the casualties so grim, and how could the Germans have failed? Robert Kershaw draws on American troops\' eyewitness accounts together with letters and post-combat reports to expose the horrors of Omaha Beach. He also cites the experiences of the Germans and of French civilians.\r\n\r\nThese are stories of humanity, resilience, and dark humour; of comradeship holding beleaguered men together during an amphibious landing that looked as though it might never succeed.');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_product_image`
--

INSERT INTO `sc_shop_product_image` (`id`, `image`, `product_id`) VALUES
(4, '/data/product/product-6.png', 2),
(8, '/data/product/product-1.png', 2),
(9, '/data/product/product-15.png', 2),
(32, '/data/product/product-2.png', 1),
(33, '/data/product/product-11.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_product_promotion`
--

INSERT INTO `sc_shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(2, 3000, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 4, 10000);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_store_block`
--

CREATE TABLE `sc_shop_store_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_store_block`
--

INSERT INTO `sc_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '\r\n  <div id=\"fb-root\"></div>\r\n  <script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n  }(document, \'script\', \'facebook-jssdk\'));\r\n  </script>', 1, 0, 1),
(2, 'Google Analytics', 'header', '*', 'html', '\r\n  <!-- Global site tag (gtag.js) - Google Analytics -->\r\n  <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\r\n  <script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n  gtag(\'config\', \'UA-128658138-1\');\r\n  </script>', 1, 0, 1),
(3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1, 1),
(4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3, 1),
(5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0, 1),
(6, 'Categories', 'left', 'home,shop_home', 'view', 'categories', 1, 4, 1),
(7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_store_css`
--

CREATE TABLE `sc_shop_store_css` (
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_store_css`
--

INSERT INTO `sc_shop_store_css` (`css`, `store_id`) VALUES
('\r\n.sc-overlay {\r\n  position: fixed;\r\n  top: 50%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  transform: -webkit-translate(-50%, -50%);\r\n  transform: -moz-translate(-50%, -50%);\r\n  transform: -ms-translate(-50%, -50%);\r\n  color:#1f222b;\r\n  z-index: 9999;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n  \r\n#sc-loading{\r\n  display: none;\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n  z-index: 50;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n/*end loading */\r\n  \r\n/*price*/\r\n.sc-new-price{\r\n  color:#FE980F;\r\n  font-size: 14px;\r\n  padding: 10px 5px;\r\n  font-weight:bold;\r\n  }\r\n  .sc-old-price {\r\n  text-decoration: line-through;\r\n  color: #a95d5d;\r\n  font-size: 13px;\r\n  padding: 10px;\r\n  }\r\n  /*end price*/\r\n.sc-product-build{\r\n  font-size: 20px;\r\n  font-weight: bold;\r\n}\r\n.sc-product-build img{\r\n  width: 50px;\r\n}\r\n.sc-product-group  img{\r\n  width: 100px;\r\n  cursor: pointer;\r\n  }\r\n.sc-product-group:hover{\r\n  box-shadow: 0px 0px 2px #999;\r\n}\r\n.sc-product-group:active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n.sc-product-group.active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n\r\n.sc-shipping-address td{\r\n  padding: 3px !important;\r\n}\r\n.sc-shipping-address textarea,\r\n.sc-shipping-address input[type=\"text\"],\r\n.sc-shipping-address option{\r\n  width: 100%;\r\n  padding: 7px !important;\r\n}\r\n.row_cart>td{\r\n  vertical-align: middle !important;\r\n}\r\ninput[type=\"number\"]{\r\n  text-align: center;\r\n  padding:2px;\r\n}\r\n.sc-notice{\r\n  clear: both;\r\n  clear: both;\r\n  font-size: 20px;\r\n  background: #f3f3f3;\r\n  width: 100%;\r\n}\r\nimg.new {\r\n  position: absolute;\r\n  right: 0px;\r\n  top: 0px;\r\n  padding: 0px !important;\r\n}\r\n.pointer {\r\n  cursor: pointer: \r\n}\r\n.add-to-cart-list {\r\n  padding: 5px 10px !important;\r\n  margin: 2px !important;\r\n  letter-spacing: 0px !important;\r\n  font-size: 12px !important;\r\n  border-radius: 5px;\r\n}\r\n.help-block {\r\n  font-size: 12px;\r\n  color: red;\r\n  font-style: italic;\r\n}\r\n                  ', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_supplier`
--

INSERT INTO `sc_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- 转储表的索引
--

--
-- 表的索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- 表的索引 `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- 表的索引 `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- 表的索引 `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- 表的索引 `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- 表的索引 `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- 表的索引 `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- 表的索引 `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- 表的索引 `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- 表的索引 `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- 表的索引 `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  ADD KEY `sc_admin_store_domain_index` (`domain`);

--
-- 表的索引 `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- 表的索引 `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- 表的索引 `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- 表的索引 `sc_admin_user_store`
--
ALTER TABLE `sc_admin_user_store`
  ADD PRIMARY KEY (`user_id`,`store_id`);

--
-- 表的索引 `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- 表的索引 `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_banner_type_index` (`type`),
  ADD KEY `sc_shop_banner_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_brand_alias_index` (`alias`);

--
-- 表的索引 `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_category_alias_index` (`alias`);

--
-- 表的索引 `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- 表的索引 `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- 表的索引 `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- 表的索引 `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `sc_shop_customer_address_id_index` (`address_id`),
  ADD KEY `sc_shop_customer_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_email_template_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- 表的索引 `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- 表的索引 `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- 表的索引 `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- 表的索引 `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_link_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_news_alias_index` (`alias`),
  ADD KEY `sc_shop_news_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- 表的索引 `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_page_alias_index` (`alias`),
  ADD KEY `sc_shop_page_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- 表的索引 `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- 表的索引 `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_sku_index` (`sku`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_property_index` (`property`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`),
  ADD KEY `sc_shop_product_alias_index` (`alias`),
  ADD KEY `sc_shop_product_category_store_id_index` (`category_store_id`),
  ADD KEY `sc_shop_product_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- 表的索引 `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- 表的索引 `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- 表的索引 `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- 表的索引 `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- 表的索引 `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- 表的索引 `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- 表的索引 `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- 表的索引 `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `sc_shop_shoppingcart_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_store_block_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_store_css`
--
ALTER TABLE `sc_shop_store_css`
  ADD UNIQUE KEY `sc_shop_store_css_store_id_unique` (`store_id`);

--
-- 表的索引 `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_subscribe_email_index` (`email`),
  ADD KEY `sc_shop_subscribe_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_supplier_alias_index` (`alias`),
  ADD KEY `sc_shop_supplier_store_id_index` (`store_id`);

--
-- 表的索引 `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- 使用表AUTO_INCREMENT `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2935;

--
-- 使用表AUTO_INCREMENT `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- 使用表AUTO_INCREMENT `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- 使用表AUTO_INCREMENT `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用表AUTO_INCREMENT `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用表AUTO_INCREMENT `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用表AUTO_INCREMENT `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
