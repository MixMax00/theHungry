-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 05:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hungery_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `adcategories`
--

CREATE TABLE `adcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adcategories`
--

INSERT INTO `adcategories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bottom Top Sell', 1, '2020-11-22 17:04:50', '2021-02-04 08:04:38'),
(2, 'top', 1, '2021-12-08 11:22:54', '2021-12-08 11:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `adcategory_id` int(11) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(11) NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingfee` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  `userid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brandName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_on_delivery_sets`
--

CREATE TABLE `cash_on_delivery_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_on_delivery_sets`
--

INSERT INTO `cash_on_delivery_sets` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', 'Set Cash On Delivery !', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontProduct` tinyint(4) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `frontProduct`, `level`, `status`, `created_at`, `updated_at`) VALUES
(17, 'Man', 'man', 'public/uploads/category/1674668826-Screenshot (3).png', 1, NULL, 1, '2023-01-25 17:47:06', '2023-01-25 17:48:11'),
(18, 'Women', 'women', 'public/uploads/category/1674886927-Screenshot (2).png', 1, NULL, 1, '2023-01-28 06:22:07', '2023-01-28 06:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `childcategoryName`, `slug`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 't-shirt', 't-shirt', 74, 1, '2023-01-28 06:23:40', '2023-01-28 06:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `clientfeedbacks`
--

CREATE TABLE `clientfeedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hungry',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maplink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `shop_name`, `currency`, `phone`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Hungry', '$', '(620) 429-2672', 'support@trustitzone.com', '532 Sunset Cir\nColumbus, Kansas(KS), 66725', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.0368097757387!2d-94.85889098469949!3d37.17559617987305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87c8084a1a38ac39%3A0x60f4d34d2f6e1096!2s532%20Sunset%20Cir%2C%20Columbus%2C%20KS%2066725%2C%20USA!5e0!3m2!1sen!2sbd!4v1674301429564!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, '2022-09-08 09:46:38', '2022-12-23 15:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `couponcodes`
--

CREATE TABLE `couponcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `couponcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expairdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offertype` tinyint(4) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyammount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_useds`
--

CREATE TABLE `coupon_useds` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `couponcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usedate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `createpages`
--

CREATE TABLE `createpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customerapplies`
--

CREATE TABLE `customerapplies` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verifyToken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passResetToken` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/uploads/avatar/avatar.png',
  `provider` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullName`, `phoneNumber`, `address`, `email`, `password`, `remember_token`, `verifyToken`, `passResetToken`, `image`, `provider`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(54, 'demo', '01710528972', NULL, 'demo@gmail.com', '$2y$10$7hTHamKClPhxnnoChQuV9Ol5tKxcKBx8R2jU6kW8rqXX/Gxo4yd6i', NULL, '1', NULL, 'public/uploads/avatar/avatar.png', NULL, NULL, 1, '2023-01-24 17:36:05', '2023-01-24 17:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expencecategories`
--

CREATE TABLE `expencecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

CREATE TABLE `expences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ammount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expencecategory_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(7, 'public/uploads/logo/1640582829-placeholder.jpg', 'Favicon', 1, '2021-09-12 12:55:05', '2021-12-27 05:38:33'),
(8, 'public/uploads/logo/1640582698-LOGO.jpg', 'Logo', 1, '2021-12-27 05:24:58', '2021-12-27 05:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_05_062607_create_roles_table', 1),
(4, '2018_11_14_122716_create_orders_table', 1),
(5, '2018_11_14_122919_create_payments_table', 1),
(6, '2018_11_14_123026_create_orderdetails_table', 1),
(7, '2018_11_26_045231_create_logos_table', 1),
(8, '2019_01_03_075632_create_categories_table', 1),
(9, '2019_01_03_111552_create_sub_categories_table', 1),
(10, '2019_01_05_055510_create_child_categories_table', 1),
(11, '2019_01_05_100733_create_brands_table', 1),
(12, '2019_01_06_084144_create_news_table', 1),
(13, '2019_01_07_054602_create_sliders_table', 1),
(14, '2019_01_08_091955_create_products_table', 1),
(15, '2019_01_08_124649_create_productimages_table', 1),
(16, '2019_01_17_102812_create_customers_table', 1),
(17, '2019_01_22_044004_create_shippings_table', 1),
(19, '2019_05_30_150731_create_socialmedia_table', 1),
(20, '2019_09_09_161229_create_locations_table', 1),
(21, '2019_09_28_105643_create_social_customers_table', 1),
(22, '2019_10_06_161552_create_offercategories_table', 1),
(23, '2019_10_07_180538_create_pagecategories_table', 1),
(24, '2019_10_07_185331_create_createpages_table', 1),
(25, '2019_12_30_163131_create_districts_table', 1),
(26, '2019_12_30_164743_create_areas_table', 1),
(27, '2020_02_15_142318_create_sizes_table', 1),
(28, '2020_02_15_142537_create_colors_table', 1),
(29, '2020_02_15_143519_create_productsizes_table', 1),
(30, '2020_02_15_143546_create_productcolors_table', 1),
(31, '2020_04_23_130355_create_shippingaddresses_table', 1),
(32, '2020_06_20_105300_create_clientfeedbacks_table', 1),
(33, '2020_06_20_113919_create_blogs_table', 1),
(34, '2020_06_20_132042_create_blogcategories_table', 1),
(39, '2020_07_20_215854_create_customerapplies_table', 1),
(40, '2020_07_29_234611_create_productrequests_table', 1),
(41, '2020_07_30_000717_create_sellwithuses_table', 1),
(42, '2020_07_30_124733_create_adcategories_table', 1),
(43, '2020_07_30_125925_create_advertisements_table', 1),
(44, '2020_10_03_200513_create_shippingfees_table', 1),
(46, '2020_11_21_172319_create_ordertypes_table', 2),
(47, '2019_05_27_111248_create_contacts_table', 3),
(51, '2019_05_11_140441_create_reviews_table', 4),
(52, '2020_01_02_154955_create_couponcodes_table', 5),
(53, '2020_03_14_162024_create_coupon_useds_table', 5),
(54, '2019_11_02_052042_create_expencecategories_table', 6),
(55, '2019_11_02_061805_create_expences_table', 6),
(56, '2019_08_19_000000_create_failed_jobs_table', 7),
(57, '2021_08_17_235943_create_table_carts', 8),
(58, '2021_08_18_002037_create_carts_table', 9),
(59, '2021_08_23_153630_create_wishlists_table', 10),
(60, '2021_08_23_182805_create_compares_table', 11),
(61, '2021_09_11_172834_create_paymentmethods_table', 12),
(63, '2021_11_24_123450_create_paypal_sets_table', 13),
(64, '2021_11_24_123500_create_stripe_sets_table', 13),
(65, '2021_11_24_123520_create_cash_on_delivery_sets_table', 13),
(66, '2023_01_25_003056_create_product_addons_table', 14),
(69, '2023_01_28_113547_create_size_price_products_table', 15),
(70, '2023_01_28_113829_create_product_addon_quantities_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offercategories`
--

CREATE TABLE `offercategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderDetails` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `productName` varchar(299) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productSize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productColor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productPrice` double(10,2) NOT NULL,
  `proPurchaseprice` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderIdPrimary` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `orderTotal` double(10,2) NOT NULL,
  `discount` int(11) DEFAULT 0,
  `transFee` int(11) DEFAULT 0,
  `trackingId` int(11) DEFAULT NULL,
  `orderStatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `cancelRequest` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordertypes`
--

CREATE TABLE `ordertypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordertypes`
--

INSERT INTO `ordertypes` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', NULL, NULL),
(2, 'Accepted', 'accepted', NULL, NULL),
(3, 'In Process', 'in-process', NULL, NULL),
(4, 'Picked Up', 'picked-u', NULL, NULL),
(5, 'Rescheduled', 'resheduled', NULL, NULL),
(6, 'Delivered', 'delivered', NULL, NULL),
(7, 'Cancelled', 'cancelled', NULL, NULL),
(8, 'Returned', 'return', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagecategories`
--

CREATE TABLE `pagecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `pagename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagecategories`
--

INSERT INTO `pagecategories` (`id`, `pagename`, `slug`, `menu_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', 1, 1, '2020-11-22 03:52:47', '2020-11-22 13:17:13'),
(3, 'Privacy Policy', 'privacy-policy', 1, 1, '2020-11-22 03:53:32', '2021-12-20 11:19:21'),
(4, 'Return Policy', 'return-policy', 1, 1, '2020-11-22 03:54:06', '2021-12-20 11:20:07'),
(5, 'How To Registration', 'how-to-registration', 2, 1, '2020-11-22 03:54:29', '2020-11-22 03:54:29'),
(6, 'How To Order', 'how-to-order', 2, 1, '2020-11-22 03:54:45', '2020-11-22 03:54:45'),
(7, 'Recover Password', 'recover-password', 2, 1, '2020-11-22 03:55:12', '2020-11-22 03:55:12'),
(8, 'Order Tracking System', 'order-tracking-system', 2, 1, '2020-11-22 03:56:33', '2020-11-22 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`id`, `title`, `text`, `store_id`, `store_password`, `button`, `value`, `form`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, NULL, NULL, 'cbutton', 'cash', 'codform', 1, '2021-09-11 13:59:43', '2021-09-12 04:59:40'),
(2, 'Online Payment', NULL, 'webso60ab2b84c58d2', 'webso60ab2b84c58d2@ssl', 'bbutton', 'online', 'onlineform', 1, '2021-09-11 14:00:40', '2021-09-19 11:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentIdPrimary` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transectionId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `transFee` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_sets`
--

CREATE TABLE `paypal_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ClientId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `SandboxStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_sets`
--

INSERT INTO `paypal_sets` (`id`, `title`, `ClientId`, `currency`, `Secret`, `Description`, `Status`, `SandboxStatus`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'ASQt_1BoaUsbC8yy8yGDZ3M2D70Bt3eoBO5Mq7LijI0ISR-eYBp1GPe5xhtC7fWtfpakoB_jvAN60_W2', 'USD', 'EIMJsK9A9BndaxgCHj1qTQhKdpsypwhpsSvfA32vlXn14nGtXMMMMdhU04bsZa6-FIFsL9fP6LRor03u', 'Set Paypal Account !!', 1, 1, NULL, '2021-11-24 08:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(399, 375, 'public/uploads/product/1674889130-6a34d8b11cdeb177fd5ca7c48ce31f24.jpg', '2023-01-28 06:58:50', '2023-01-28 06:58:50'),
(400, 376, 'public/uploads/product/1674928372-aedrian-wAU3MfsGPNw-unsplash.jpg', '2023-01-28 17:52:52', '2023-01-28 17:52:52'),
(401, 377, 'public/uploads/product/1675266256-pngwing.com.png', '2023-02-01 15:44:16', '2023-02-01 15:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `productrequests`
--

CREATE TABLE `productrequests` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `proCategory` int(11) NOT NULL,
  `proSubcategory` int(11) DEFAULT NULL,
  `proChildCategory` int(11) DEFAULT NULL,
  `proBrand` int(11) DEFAULT NULL,
  `proName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proPurchaseprice` double(10,2) DEFAULT NULL,
  `proOldprice` double(10,2) DEFAULT 0.00,
  `proNewprice` double(10,2) NOT NULL,
  `proCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proQuantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aditionalshipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullpaid` tinyint(4) DEFAULT NULL,
  `deal` tinyint(4) DEFAULT NULL,
  `feature` tinyint(4) DEFAULT NULL,
  `bestsell` tinyint(4) DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `proCategory`, `proSubcategory`, `proChildCategory`, `proBrand`, `proName`, `slug`, `proPurchaseprice`, `proOldprice`, `proNewprice`, `proCode`, `proDescription`, `shortDescription`, `proQuantity`, `aditionalshipping`, `dealdate`, `fullpaid`, `deal`, `feature`, `bestsell`, `video`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(375, 17, 74, 7, NULL, 'Polo T-shirt', 'polo-t-shirt', 50.00, 500.00, 350.00, '456789', '<p>dcdkkdnkjdjmcbdj</p>', '<p>kjdklfjdlkjflds</p>', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pics', 1, '2023-01-28 06:58:50', '2023-01-28 06:58:50'),
(376, 17, 74, 7, NULL, 'Abc', 'abc', 15.00, 300.00, 200.00, '21212', '<p>dgfgdfgdfg</p>', '<p>vvxcvxcv</p>', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pics', 1, '2023-01-28 17:52:52', '2023-01-28 17:52:52'),
(377, 18, 75, 0, NULL, 'Dve', 'dve', 0.00, 500.00, 400.00, '456789', '<p>hmghjvhjv</p>', '<p>vbncvhgcghc</p>', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pics', 1, '2023-02-01 15:44:16', '2023-02-01 15:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_addons`
--

CREATE TABLE `product_addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'addons.png',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_addons`
--

INSERT INTO `product_addons` (`id`, `name`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pipe sos', 50.00, 'public/uploads/product/1674670731-Life-Jumbo-Chili.png', 1, '2023-01-25 17:19:07', '2023-01-25 18:18:51'),
(2, 'Sos', 10.00, 'public/uploads/product/1674670613-Life-Tomato-Sachet.png', 1, '2023-01-25 18:16:53', '2023-01-25 18:16:53'),
(3, 'abc', 20.00, 'public/uploads/product/1674928105-aedrian-wAU3MfsGPNw-unsplash.jpg', 1, '2023-01-28 17:48:25', '2023-01-28 17:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_addon_quantities`
--

CREATE TABLE `product_addon_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_price` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_addon_quantities`
--

INSERT INTO `product_addon_quantities` (`id`, `product_id`, `addon_id`, `addon_price`, `created_at`, `updated_at`) VALUES
(1, 375, 1, NULL, '2023-01-28 06:58:50', '2023-01-28 06:58:50'),
(2, 375, 2, NULL, '2023-01-28 06:58:50', '2023-01-28 06:58:50'),
(3, 376, 1, NULL, '2023-01-28 17:52:52', '2023-01-28 17:52:52'),
(4, 376, 2, NULL, '2023-01-28 17:52:52', '2023-01-28 17:52:52'),
(5, 376, 3, NULL, '2023-01-28 17:52:52', '2023-01-28 17:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratting` tinyint(4) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', NULL, NULL),
(2, 'Admin', NULL, NULL),
(3, 'Editor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellwithuses`
--

CREATE TABLE `sellwithuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `pName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pCategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pPrice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conpersonName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippingaddresses`
--

CREATE TABLE `shippingaddresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `recipient` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingPhone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippingfees`
--

CREATE TABLE `shippingfees` (
  `id` int(10) UNSIGNED NOT NULL,
  `minprice` int(11) NOT NULL,
  `maxprice` int(11) NOT NULL,
  `shippingfee` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `shippingPrimariId` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingfee` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Large', '1', '2023-01-26 18:46:14', '2023-01-26 18:46:14'),
(10, 'Small', '1', '2023-01-28 05:20:43', '2023-01-28 05:20:43'),
(11, 'Medium', '1', '2023-01-28 05:20:57', '2023-01-28 05:21:27'),
(12, 'Extra Large', '1', '2023-01-28 05:21:12', '2023-01-28 05:21:12'),
(13, 'Extra Large large', '1', '2023-01-28 17:49:10', '2023-01-28 17:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `size_price_products`
--

CREATE TABLE `size_price_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_price` double(10,2) DEFAULT 0.00,
  `qty` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_price_products`
--

INSERT INTO `size_price_products` (`id`, `product_id`, `size_id`, `size_price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 375, 9, 100.00, 0, '2023-01-28 06:58:50', '2023-01-28 06:58:50'),
(2, 375, 10, 50.00, 0, '2023-01-28 06:58:50', '2023-01-28 06:58:50'),
(3, 376, 9, 20.00, 0, '2023-01-28 17:52:52', '2023-01-28 17:52:52'),
(4, 376, 12, 50.00, 0, '2023-01-28 17:52:52', '2023-01-28 17:52:52'),
(5, 377, 10, 250.00, 0, '2023-02-01 15:44:16', '2023-02-01 15:44:16'),
(6, 377, 11, 100.00, 0, '2023-02-01 15:44:16', '2023-02-01 15:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `burl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `name`, `icon`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fa fa-facebook', '#', 1, '2020-11-22 03:35:15', '2020-11-22 03:38:20'),
(2, 'Linkedin', 'fa fa-linkedin', '#', 1, '2020-11-22 03:39:04', '2020-11-22 03:39:04'),
(3, 'instagram', 'fa fa-instagram', '#', 1, '2020-11-22 03:39:59', '2021-08-04 06:51:32'),
(4, 'Youtube', 'fa fa-youtube', '#', 1, '2020-11-22 03:40:23', '2020-11-22 03:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `social_customers`
--

CREATE TABLE `social_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_sets`
--

CREATE TABLE `stripe_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SecretKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PublishableKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `SandboxStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_sets`
--

INSERT INTO `stripe_sets` (`id`, `title`, `SecretKey`, `PublishableKey`, `Description`, `Status`, `SandboxStatus`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 'sk_test_HETvnHVWPE2yxioaiobPi25k00uvh64zC3', 'pk_test_T5wFaZtvqWHXkrOcBvUSC7Gl00UkI7ZYIk', 'Set Stripe Account !!', 1, 1, NULL, '2021-11-30 09:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cooling & Heating', 'cooling-&-heating', 16, '1', '2021-02-14 16:33:26', '2021-09-29 09:18:09'),
(2, 'Water Dispensers, Purifiers & Filters', 'water-dispensers,-purifiers-&-filters', 16, '1', '2021-02-14 16:34:13', '2021-09-29 09:17:54'),
(3, 'Shirts', 'shirts', 6, '1', '2021-02-14 16:40:21', '2021-02-19 05:45:04'),
(4, 'T Shirt', 't-shirt', 6, '1', '2021-02-14 16:40:41', '2021-02-14 16:40:41'),
(5, 'Jacket', 'jacket', 6, '1', '2021-02-14 16:41:19', '2021-02-14 16:41:19'),
(6, 'Sweaters & Cardigans', 'sweaters-&-cardigans', 7, '1', '2021-02-19 05:24:55', '2021-02-19 05:24:55'),
(7, 'Jackets & Coats', 'jackets-&-coats', 7, '1', '2021-02-19 05:25:08', '2021-02-19 05:25:08'),
(8, 'Saree', 'saree', 7, '1', '2021-02-19 05:25:19', '2021-02-19 05:25:19'),
(9, 'Shalwar Kameez', 'shalwar-kameez', 7, '1', '2021-02-19 05:25:29', '2021-02-19 05:25:29'),
(10, 'Unstitched Fabric', 'unstitched-fabric', 7, '1', '2021-02-19 05:25:43', '2021-02-19 05:25:43'),
(11, 'Kurtis', 'kurtis', 7, '1', '2021-02-19 05:26:17', '2021-02-19 05:26:17'),
(12, 'Bath', 'bath', 3, '1', '2021-02-19 05:28:30', '2021-02-19 05:28:30'),
(13, 'Bedding', 'bedding', 3, '1', '2021-02-19 05:28:45', '2021-02-19 05:28:45'),
(14, 'Decor', 'decor', 3, '1', '2021-02-19 05:28:58', '2021-02-19 05:28:58'),
(15, 'Furniture', 'furniture', 3, '1', '2021-02-19 05:29:08', '2021-02-19 05:29:08'),
(16, 'Lighting', 'lighting', 3, '1', '2021-02-19 05:29:17', '2021-02-19 05:29:43'),
(17, 'Laundry & Cleaning', 'laundry-&-cleaning', 3, '1', '2021-02-19 05:43:18', '2021-02-19 05:43:18'),
(18, 'Tools, DIY & Outdoor', 'tools,-diy-&-outdoor', 3, '1', '2021-02-19 05:43:33', '2021-02-19 05:43:33'),
(19, 'Stationery & Craft', 'stationery-&-craft', 3, '1', '2021-02-19 05:43:43', '2021-02-19 05:43:43'),
(20, 'Media, Music & Books', 'media,-music-&-books', 3, '1', '2021-02-19 05:43:52', '2021-02-19 05:43:52'),
(21, 'Hoodies & Sweatshirts', 'hoodies-&-sweatshirts', 6, '1', '2021-02-19 06:14:24', '2021-02-19 06:14:24'),
(22, 'Men\'s Bags', 'men\'s-bags', 6, '1', '2021-02-19 06:19:31', '2021-02-19 06:19:31'),
(23, 'Shoes', 'shoes', 6, '1', '2021-02-19 06:19:43', '2021-02-19 06:19:43'),
(24, 'Accessories', 'accessories', 6, '1', '2021-02-19 06:19:55', '2021-02-19 06:19:55'),
(25, 'Mother & Baby', 'mother-&-baby', 4, '1', '2021-02-19 06:24:51', '2021-02-19 06:24:51'),
(26, 'Feeding', 'feeding', 4, '1', '2021-02-19 06:25:02', '2021-02-19 06:25:02'),
(27, 'Diapering & Potty', 'diapering-&-potty', 4, '1', '2021-02-19 06:25:11', '2021-02-19 06:25:11'),
(28, 'Baby Gear', 'baby-gear', 4, '1', '2021-02-19 06:25:24', '2021-02-19 06:25:24'),
(29, 'Baby Personal Care', 'baby-personal-care', 4, '1', '2021-02-19 06:25:38', '2021-02-19 06:25:38'),
(30, 'Clothing & Accessories', 'clothing-&-accessories', 4, '1', '2021-02-19 06:28:08', '2021-02-19 06:28:08'),
(31, 'Nursery', 'nursery', 4, '1', '2021-02-19 06:28:15', '2021-02-19 06:28:15'),
(32, 'Toys & Games', 'toys-&-games', 4, '1', '2021-02-19 06:28:23', '2021-02-19 06:28:23'),
(33, 'Remote Control & Vehicles', 'remote-control-&-vehicles', 4, '1', '2021-02-19 06:28:35', '2021-02-19 06:28:35'),
(34, 'Mobile Accessories', 'mobile-accessories', 5, '1', '2021-02-19 06:28:41', '2021-02-19 06:32:53'),
(35, 'Audio', 'audio', 5, '1', '2021-02-19 06:28:49', '2021-02-19 06:33:06'),
(36, 'Wearable', 'wearable', 5, '0', '2021-02-19 06:33:17', '2021-02-19 06:34:33'),
(37, 'Console Accessories', 'console-accessories', 5, '0', '2021-02-19 06:33:25', '2021-02-19 06:35:35'),
(38, 'Camera Accessories', 'camera-accessories', 5, '1', '2021-02-19 06:33:34', '2021-02-19 06:33:34'),
(39, 'Computer Accessories', 'computer-accessories', 5, '1', '2021-02-19 06:33:41', '2021-02-19 06:33:41'),
(40, 'Printers', 'printers', 5, '1', '2021-02-19 06:33:49', '2021-02-19 06:33:49'),
(41, 'Computer Components', 'computer-components', 5, '1', '2021-02-19 06:33:56', '2021-02-19 06:33:56'),
(42, 'Network Components', 'network-components', 5, '1', '2021-02-19 06:34:02', '2021-02-19 06:34:02'),
(43, 'Software', 'software', 5, '1', '2021-02-19 06:34:08', '2021-02-19 06:34:08'),
(44, 'Water Purifiers & Filters', 'water-purifiers-&-filters', 16, '1', '2021-02-19 08:27:46', '2021-09-29 09:17:30'),
(45, 'Irons & Garment Steamers', 'irons-&-garment-steamers', 16, '1', '2021-02-19 08:27:53', '2021-09-29 09:16:50'),
(46, 'Vacuums & Floor Care', 'vacuums-&-floor-care', 16, '1', '2021-02-19 08:28:01', '2021-09-29 09:16:33'),
(47, 'Large Appliances', 'large-appliances', 16, '1', '2021-02-19 08:28:08', '2021-09-29 09:16:14'),
(48, 'Coffee & Tea', 'coffee-&-tea', 2, '1', '2021-02-19 08:28:32', '2021-02-19 08:30:58'),
(49, 'Storage & Organisation', 'storage-&-organisation', 2, '1', '2021-02-19 08:31:20', '2021-02-19 08:31:20'),
(50, 'Cookware', 'cookware', 2, '1', '2021-02-19 08:31:47', '2021-02-19 08:31:47'),
(51, 'Dinnerware', 'dinnerware', 2, '1', '2021-02-19 08:31:58', '2021-02-19 08:31:58'),
(52, 'Kitchen & Table Linen', 'kitchen-&-table-linen', 2, '1', '2021-02-19 08:32:08', '2021-02-19 08:32:08'),
(53, 'Kitchen Storage & Accessories', 'kitchen-storage-&-accessories', 2, '1', '2021-02-19 08:32:16', '2021-02-19 08:32:16'),
(54, 'Kitchen Utensils', 'kitchen-utensils', 2, '1', '2021-02-19 08:32:38', '2021-02-19 08:32:38'),
(55, 'Kitchen Utensils', 'kitchen-utensils', 2, '1', '2021-02-19 08:32:54', '2021-02-19 08:32:54'),
(56, 'Men\'s Watch', 'men\'s-watch', 10, '1', '2021-02-19 08:35:35', '2021-02-19 08:35:35'),
(57, 'Women\'s Watch', 'women\'s-watch', 10, '1', '2021-02-19 08:35:42', '2021-02-19 08:35:42'),
(58, 'Women\'s Jewelleries', 'women\'s-jewelleries', 10, '1', '2021-02-19 08:35:57', '2021-02-19 08:35:57'),
(59, 'Men\'s Jewelleries', 'men\'s-jewelleries', 10, '1', '2021-02-19 08:36:07', '2021-02-19 08:36:07'),
(60, 'Men\'s Belt', 'men\'s-belt', 10, '1', '2021-02-19 08:36:14', '2021-02-19 08:36:14'),
(61, 'Men\'s Wallet', 'men\'s-wallet', 10, '1', '2021-02-19 08:36:22', '2021-02-19 08:36:22'),
(62, 'Sunglasses', 'sunglasses', 10, '1', '2021-02-19 08:36:27', '2021-02-19 08:36:27'),
(63, 'Eyeglasses', 'eyeglasses', 10, '1', '2021-02-19 08:36:34', '2021-02-19 08:36:34'),
(64, 'Smartphones', 'smartphones', 11, '1', '2021-02-19 08:36:41', '2021-02-19 08:37:48'),
(65, 'Tablets', 'tablets', 11, '1', '2021-02-19 08:38:04', '2021-02-19 08:38:04'),
(66, 'Laptops', 'laptops', 11, '1', '2021-02-19 08:38:13', '2021-02-19 08:38:13'),
(67, 'Desktops', 'desktops', 11, '1', '2021-02-19 08:38:24', '2021-02-19 08:38:24'),
(68, 'Gaming Consoles', 'gaming-consoles', 11, '1', '2021-02-19 08:38:32', '2021-02-19 08:38:32'),
(69, 'Cameras', 'cameras', 11, '1', '2021-02-19 08:38:39', '2021-02-19 08:38:39'),
(70, 'Security Cameras', 'security-cameras', 11, '1', '2021-02-19 08:38:47', '2021-02-19 08:38:47'),
(71, 'tast', 'tast', 13, '1', '2021-09-11 09:55:59', '2021-09-11 09:55:59'),
(72, 'pizza', 'pizza', 16, '1', '2021-09-29 09:13:55', '2021-09-29 09:13:55'),
(73, 'Home', 'home', 1, '0', '2021-11-03 12:12:37', '2021-11-06 08:18:27'),
(74, 'Shirt', 'shirt', 17, '1', '2023-01-28 06:22:35', '2023-01-28 06:22:35'),
(75, 'pluzu', 'pluzu', 18, '1', '2023-01-28 06:22:50', '2023-01-28 06:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `table_carts`
--

CREATE TABLE `table_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/uploads/avatar/avatar.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `phone`, `designation`, `status`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin', 'admin@gmail.com', '01710528972', 'admin', '1', '$2y$10$0huw37OTmYJiss69lJW8tel9hPMu9uh.tCa08LVschcJMpceslVpu', 'public/uploads/avatar/avatar.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '60', '1', '2021-08-23 11:37:00', '2021-08-23 11:37:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adcategories`
--
ALTER TABLE `adcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_on_delivery_sets`
--
ALTER TABLE `cash_on_delivery_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_subcategory_id_index` (`subcategory_id`);

--
-- Indexes for table `clientfeedbacks`
--
ALTER TABLE `clientfeedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couponcodes`
--
ALTER TABLE `couponcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createpages`
--
ALTER TABLE `createpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerapplies`
--
ALTER TABLE `customerapplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phonenumber_unique` (`phoneNumber`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expencecategories`
--
ALTER TABLE `expencecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expences`
--
ALTER TABLE `expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offercategories`
--
ALTER TABLE `offercategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderDetails`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderIdPrimary`);

--
-- Indexes for table `ordertypes`
--
ALTER TABLE `ordertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagecategories`
--
ALTER TABLE `pagecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentIdPrimary`);

--
-- Indexes for table `paypal_sets`
--
ALTER TABLE `paypal_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productrequests`
--
ALTER TABLE `productrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_addons`
--
ALTER TABLE `product_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_addon_quantities`
--
ALTER TABLE `product_addon_quantities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellwithuses`
--
ALTER TABLE `sellwithuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingfees`
--
ALTER TABLE `shippingfees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`shippingPrimariId`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_price_products`
--
ALTER TABLE `size_price_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_customers`
--
ALTER TABLE `social_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_customers_email_unique` (`email`);

--
-- Indexes for table `stripe_sets`
--
ALTER TABLE `stripe_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_index` (`category_id`);

--
-- Indexes for table `table_carts`
--
ALTER TABLE `table_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adcategories`
--
ALTER TABLE `adcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cash_on_delivery_sets`
--
ALTER TABLE `cash_on_delivery_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clientfeedbacks`
--
ALTER TABLE `clientfeedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `couponcodes`
--
ALTER TABLE `couponcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `createpages`
--
ALTER TABLE `createpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customerapplies`
--
ALTER TABLE `customerapplies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `expencecategories`
--
ALTER TABLE `expencecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expences`
--
ALTER TABLE `expences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offercategories`
--
ALTER TABLE `offercategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderDetails` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderIdPrimary` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `ordertypes`
--
ALTER TABLE `ordertypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pagecategories`
--
ALTER TABLE `pagecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentIdPrimary` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `paypal_sets`
--
ALTER TABLE `paypal_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `productrequests`
--
ALTER TABLE `productrequests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `product_addons`
--
ALTER TABLE `product_addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_addon_quantities`
--
ALTER TABLE `product_addon_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sellwithuses`
--
ALTER TABLE `sellwithuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippingfees`
--
ALTER TABLE `shippingfees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `shippingPrimariId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `size_price_products`
--
ALTER TABLE `size_price_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_customers`
--
ALTER TABLE `social_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_sets`
--
ALTER TABLE `stripe_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `table_carts`
--
ALTER TABLE `table_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
