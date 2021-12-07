-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 08:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swap_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `otp`, `email`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Nazrul Islam Rafi', '01872791920', '4697', 'nazrulrafi765@gmail.com', '99b6618eae221e4ab99166a649e6983e', 'Uttara, Dhaka', NULL, '2021-07-26 19:30:12'),
(3, 'Md Belal Uddin', '01931599151', '3388', 'belalhsikdar@gmail.com', '609cf7d8b2eba7821adea093dbba737e', 'Uttara, Dhaka, Bangladesh.', NULL, '2021-07-28 17:10:02'),
(4, 'Test Mohosin', '01857126452', NULL, 'hamza161033@gmail.com', 'bdc78dcca6ac0b392a5bab529f91f891', 'Test', NULL, NULL),
(5, 'admin 1', '01833385143', NULL, 'zhrafi630@gmail.com', '9c06dd5f28d6a79c2407ed65f975ec91', 'Your Address will be here', NULL, NULL),
(6, 'admin 2', '01676916618', NULL, 'ismail.bnm25@gmail.com', '9bd4a002db7fdf4b5851152234c35d4a', 'Your Address will be here', NULL, NULL),
(7, 'admin 3', '01931599151', NULL, 'belalhsikdar@gmail.com', 'e2a552584e5fe0859d62192601267695', 'Your Address will be here', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(16, 14, 'Xiaomi', '1627576586_Xiaomi.png', NULL, NULL),
(17, 14, 'Realme', '1627570414_Untitled design (2).png', NULL, NULL),
(18, 14, 'OnePlus', '1627577090_oneplus.png', NULL, NULL),
(19, 14, 'Oppo', '1627577429_oppo.png', NULL, NULL),
(20, 14, 'Vivo', '1627577633_vivo.png', NULL, NULL),
(21, 14, 'Huawei', '1627577777_huawei.png', NULL, NULL),
(22, 14, 'Tecno', '1627578069_Tecno.png', NULL, NULL),
(23, 14, 'Google', '1627577235_google.png', NULL, NULL),
(24, 14, 'Asus', '1627578168_Asus.png', NULL, NULL),
(25, 14, 'Motorola', '1627578682_Motrola.png', NULL, NULL),
(26, 14, 'Honor', '1627573061_Honor-logo.jpg', NULL, NULL),
(27, 14, 'Nokia', '1627573123_Nokia-Logo-Featured.jpg', NULL, NULL),
(28, 14, 'Walton', '1627858918_walton-logo-8655B6D7F3-seeklogo.com.png', NULL, NULL),
(29, 14, 'Others', '1636442840_GADGET.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(14, 'Smart Phone', '1627368146_apple.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_number` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_01_06_053142_create_customers_table', 1),
(11, '2021_01_06_053242_create_sellers_table', 1),
(12, '2021_01_06_093437_create_admins_table', 1),
(14, '2021_01_23_023817_create_carts_table', 2),
(15, '2021_04_23_055227_create_categories_table', 3),
(16, '2021_04_24_035312_create_brands_table', 4),
(17, '2021_04_27_040159_create_mobile_categories_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_categories`
--

CREATE TABLE `mobile_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `mobile_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram_rom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `camera` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `battery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prices` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specificationram_rom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specificationsim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specificationcamera` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specificationprocessor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specificationbattery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_categories`
--

INSERT INTO `mobile_categories` (`id`, `category_id`, `brand_id`, `mobile_model`, `image`, `ram_rom`, `sim`, `camera`, `processor`, `battery`, `prices`, `specificationram_rom`, `specificationsim`, `specificationcamera`, `specificationprocessor`, `specificationbattery`, `created_at`, `updated_at`) VALUES
(36, 14, 16, 'Redmi Note 10 Pro Max', '1628674105_note_10_pro_max-removebg-preview.png', '8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '19500, 18000, 16700', NULL, NULL, '108 | 16 MP', 'Snapdragon 732G', '5020mAh', NULL, NULL),
(37, 14, 16, 'Redmi Note 10 Pro', '1628673663_note_10_pro_-removebg-preview.png', '8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '17700, 16200, 15700', NULL, NULL, '108 | 16 MP', 'Snapdragon 732G', '5020mAh', NULL, NULL),
(38, 14, 16, 'Redmi Note 10', '1628673686_note_10_-removebg-preview.png', '6GB | 128GB,4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '15000, 14000, 13200', NULL, NULL, '48 | 13 MP', 'Snapdragon 678', '5000mAh', NULL, NULL),
(39, 14, 16, 'Redmi Note 9 Pro Max', '1628674613_note_9_pro_max__1_-removebg-preview.png', '8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '15200, 14300, 13300', NULL, NULL, '64 | 32 MP', 'Snapdragon 720G', '5020mAh', NULL, NULL),
(40, 14, 16, 'Redmi Note 9 Pro', '1628674657_note_9_pro_-removebg-preview.png', '6GB | 128GB,4GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13200, 12500, 12000, 11700', NULL, NULL, '48 | 16 MP', 'Snapdragon 720G', '5020mAh', NULL, NULL),
(41, 14, 16, 'Redmi Note 9', '1628761838_note_9_-removebg-preview.png', '4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '11500, 10500', NULL, NULL, '48 | 13 MP', 'Mediatek', '5020mAh', NULL, NULL),
(42, 14, 16, 'Redmi K30', '1628756694_redmi_k30-removebg-preview.png', '8GB | 256GB,8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '15500, 14500, 13500', NULL, NULL, '64 | 20 MP', 'Snapdragon 730G', '4500mAh', NULL, NULL),
(43, 14, 16, 'Redmi Note 8 Pro', '1628675517_note_8pro-removebg-preview.png', '8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '13000,12200,11200', NULL, NULL, '64 | 20 MP', 'Mediatek', '4500mAh', NULL, NULL),
(44, 14, 16, 'Redmi Note 8', '1628675544_note_8-removebg-preview.png', '6GB | 128GB,4GB | 128GB,6GB | 64GB,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '10000, 9500, 9300, 9200, 8200', NULL, NULL, '48 | 13 MP', 'Snapdragon 665', '4000mAh', NULL, NULL),
(45, 14, 16, 'Redmi 8', '1628675593_redmi_8-removebg-preview.png', '4GB | 64GB ,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7200, 6000', NULL, NULL, '12 | 8 MP', 'Snapdragon 439', '5000mAh', NULL, NULL),
(46, 14, 16, 'Redmi K20 Pro', '1628756672_redmi_k20_pro-removebg-preview.png', '8GB | 256GB,8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '18500, 17500, 17000, 16000', NULL, NULL, '48 | 20 MP', 'Snapdragon 855', '4000mAh', NULL, NULL),
(47, 14, 16, 'Redmi K20', '1628757778_redmi_k20-removebg-preview.png', '6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '15000, 14000', NULL, NULL, '48 | 20 MP', 'Snapdragon 730', '4000mAh', NULL, NULL),
(48, 14, 16, 'Redmi Y3', '1628960596_redmi_y3-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6700, 5800', NULL, NULL, '13 | 32 MP', 'Snapdragon 632', '4000mAh', NULL, NULL),
(49, 14, 16, 'Redmi S2', '1628756153_redmi_S2-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '5500, 5200', NULL, NULL, '12 | 16 MP', 'Snapdragon 625', '3080mAh', NULL, NULL),
(50, 14, 16, 'Redmi 7', '1628681950_redmi_7-removebg-preview.png', '4GB | 64GB,3GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7000, 6800, 6500', NULL, NULL, '12 | 8 MP', 'Snapdragon 632', '4000mAh', NULL, NULL),
(51, 14, 16, 'Redmi Note 7 Pro', '1628684257_redmi__note_7_proo-removebg-preview.png', '6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10500, 9800, 9200', NULL, NULL, '48 | 13 MP', 'Snapdragon 675', '4000mAh', NULL, NULL),
(52, 14, 16, 'Redmi Note 7S', '1628684500_note_7_pro-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8700, 7800', NULL, NULL, '48 | 13 MP', 'Snapdragon 660', '4000mAh', NULL, NULL),
(53, 14, 16, 'Redmi Note 6 Pro', '1628677854_note_6_pro-removebg-preview.png', '6GB | 64GB,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8200, 7000, 6500', NULL, NULL, '12 | 20 MP', 'Snapdragon 636', '4000mAh', NULL, NULL),
(54, 14, 16, 'Redmi Note 5 Pro', '1628683073_redmi_note_5_pro-removebg-preview.png', '6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '7200, 6300', NULL, NULL, '12 | 20 MP', 'Snapdragon 636', '4000mAh', NULL, NULL),
(55, 14, 16, 'Redmi 6', '1628683037_redmi_6_-removebg-preview.png', '3GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6700, 5200', NULL, NULL, '12 | 5 MP', 'Mediatek', '3000mAh', NULL, NULL),
(56, 14, 16, 'Redmi 5 Plus', '1628683271_redmi  5 plus.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '5500, 5200', NULL, NULL, '13 | 5 MP', 'Snapdragon 625', '4000mAh', NULL, NULL),
(57, 14, 16, 'Redmi 6 Pro', '1628677951_redmi_6_pro-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6800, 6200', NULL, NULL, '12 | 5MP', 'Snapdragon 625', '4000mAh', NULL, NULL),
(58, 14, 16, 'Redmi Note 5', '1628683236_redmi note 5 .png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6800, 5800', NULL, NULL, '12 | 5 MP', 'Snapdragon 625', '4000mAh', NULL, NULL),
(59, 14, 16, 'Redmi Note 7 Global', '1628683599_note 7 .png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8200, 7200', NULL, NULL, '48 | 13 MP', 'Snapdragon 660', '4000mAh', NULL, NULL),
(60, 14, 16, 'Redmi Note 7 Indian', '1628684389_redmi__note_7_2-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8200, 7200', NULL, NULL, '48 | 13 MP', 'Snapdragon 660', '4000mAh', NULL, NULL),
(61, 14, 16, 'Redmi 7A', '1628681999_redmi_7A-removebg-preview.png', '2GB | 32GB,2GB | 16GB', 'Dual', NULL, NULL, NULL, '5800, 5500', NULL, NULL, '13 | 5 MP', 'Snapdragon 439', '4000mAh', NULL, NULL),
(62, 14, 16, 'Redmi 8A', '1628675632_note_8A-removebg-preview.png', '3GB | 32GB,2GB | 32GB', 'Dual', NULL, NULL, NULL, '6500, 5800', NULL, NULL, '12 | 8 MP', 'Snapdragon 439', '5000mAh', NULL, NULL),
(63, 14, 16, 'Redmi Note 5 Ai', '1628755978_Mi_note_5_Ai-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6700, 5700', NULL, NULL, '12 | 13 MP', 'Snapdragon 636', '4000mAh', NULL, NULL),
(64, 14, 16, 'Redmi 9', '1628683137_redmi_9_-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '9200, 7800', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(66, 14, 16, 'Redmi Note 9S', '1628674727_note_9_s-removebg-preview.png', '6GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13000, 11000', NULL, NULL, '48 | 16 MP', 'Snapdragon 720G', '5020mAh', NULL, NULL),
(67, 14, 16, 'Redmi 9A', '1628683344_redmi_9A-removebg-preview.png', '3GB | 32GB,2GB | 16GB', 'Dual', NULL, NULL, NULL, '6500, 6000', NULL, NULL, '13 | 5 MP', 'Mediatek', '5000mAh', NULL, NULL),
(68, 14, 16, 'Redmi 8A Dual', '1628757517_redmi_8A_dual-removebg-preview.png', '3GB | 64GB,3GB | 32GB,2GB | 32GB', 'Dual', NULL, NULL, NULL, '6800, 6200,5700', NULL, NULL, '13 | 8 MP', 'Snapdragon 439', '5000mAh', NULL, NULL),
(69, 14, 16, 'Redmi 9 Prime', '1628683317_redmi_9_Prime-removebg-preview.png', '4GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '9500, 9000', NULL, NULL, '13 | 8 MP', 'Mediatek', '5020mAh', NULL, NULL),
(70, 14, 16, 'Redmi Note 9T', '1628674995_note_9T-removebg-preview.png', '4GB | 128GB,4GB | 32GB', 'Dual', NULL, NULL, NULL, '11500, 10800', NULL, NULL, '48 | 12 MP', 'Mediatek', '5000mAh', NULL, NULL),
(71, 14, 16, 'Redmi K30 5G', '1628756714_redmi_k30_5G-removebg-preview.png', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '15500', NULL, NULL, '64 | 20 MP', 'Snapdragon 665 5G', '4500mAh', NULL, NULL),
(72, 14, 16, 'Redmi 9 Power', '1628757199_redmi_9_power-removebg-preview.png', '6GB | 128GB,4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10800, 10500, 9500', NULL, NULL, '48 | 8 MP', 'Snapdragon 662', '6000mAh', NULL, NULL),
(73, 14, 16, 'Mi Note 10 Pro', '1628754940_Mi_note_10_pro-removebg-preview.png', '8GB | 256GB', 'Dual', NULL, NULL, NULL, '24500', NULL, NULL, '108 | 32 MP', 'Snapdragon 730G', '5260mAh', NULL, NULL),
(74, 14, 16, 'Mi Note 10', '1628754912_Mi_note_10-removebg-preview.png', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '22000', NULL, NULL, '108 | 32 MP', 'Snapdragon 730G', '5260mAh', NULL, NULL),
(75, 14, 16, 'Mi A3', '1628755119_Mi_A3-removebg-preview.png', '6GB | 128GB,4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10800, 10000, 9800', NULL, NULL, '48 | 32 MP', 'Snapdragon 665', '4030mAh', NULL, NULL),
(76, 14, 16, 'Mi 9T Pro', '1628752503_Mi_9T_pro-removebg-preview.png', '8GB | 256GB,8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '18500, 17000, 16500, 15500', NULL, NULL, '48 | 20 MP', 'Snapdragon 855', '4000mAh', NULL, NULL),
(77, 14, 16, 'Mi 9T', '1628752527_Mi_9T-removebg-preview.png', '6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '14800, 13800', NULL, NULL, '48 | 20 MP', 'Snapdragon 730', '4000mAh', NULL, NULL),
(78, 14, 16, 'Mi A2 Lite', '1628755760_Mi_A2_lite-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6500, 5500', NULL, NULL, '12 | 5 MP', 'Snapdragon 625', '4000mAh', NULL, NULL),
(79, 14, 16, 'Mi A2', '1628755092_Mi_A2-removebg-preview.png', '6GB | 128GB,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8200, 7200, 6500', NULL, NULL, '12 | 20 MP', 'Snapdragon 660', '3000mAh', NULL, NULL),
(80, 14, 16, 'Mi A1', '1628755013_Mi_A1-removebg-preview.png', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '6000', NULL, NULL, '12 | 5 MP', 'Snapdragon 625', '3080mAh', NULL, NULL),
(81, 14, 16, 'Mi Mix 3', '1628755185_Mi_mix_3-removebg-preview.png', '8GB | 256GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '20000, 19000', NULL, NULL, '12 | 24 MP', 'Snapdragon 845', '3200mAh', NULL, NULL),
(82, 14, 16, 'Mi 10 5G', '1628752557_Mi_10_5G-removebg-preview.png', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '32000, 28000', NULL, NULL, '108 | 20 MP', 'Snapdragon 865 5G', '4780mAh', NULL, NULL),
(83, 14, 16, 'Mi Note 10 Lite', '1628754982_Mi_note_10_lite-removebg-preview.png', '8GB | 128GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '19000, 18000, 16000', NULL, NULL, '64 | 16 MP', 'Snapdragon730G', '5260mAh', NULL, NULL),
(84, 14, 16, 'Mi 10 Ultra', '1628752586_Mi_10_ultra-removebg-preview.png', '12 GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '51000, 47000', NULL, NULL, '48 | 20 MP', 'Snapdragon 865 5G', '4500mAh', NULL, NULL),
(85, 14, 16, 'Mi 10T', '1628755456_Mi_10T-removebg-preview (1).png', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '24000, 22000', NULL, NULL, '64 | 20 MP', 'Snapdragon 865 5G', '5000mAh', NULL, NULL),
(86, 14, 16, 'Mi 10T Pro 5G', '1628755048_Mi_10T_pro-removebg-preview.png', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '26500, 26000', NULL, NULL, '108 | 20 MP', 'Snapdragon 865 5G', '5000mAh', NULL, NULL),
(87, 14, 16, 'Mi 10i 5G', '1628752612_Mi_10i_5G-removebg-preview.png', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '18500, 17500', NULL, NULL, '108 | 16 MP', 'Snapdragon 750G 5G', '4820mAh', NULL, NULL),
(88, 14, 16, 'Mi 11 Lite', '1628754583_Mi_11_lite-removebg-preview.png', '8GB | 128GB ,6GB | 128GB', 'Dual', NULL, NULL, NULL, '19700, 17800', NULL, NULL, '64 | 16 MP', 'Snapdragon 732G', '4250mAh', NULL, NULL),
(89, 14, 16, 'Mi 11 Ultra', '1628754626_Mi_11_Ultra-removebg-preview.png', '12GB | 256GB,12GB | 128GB', 'Dual', NULL, NULL, NULL, '64000, 62000', NULL, NULL, '50 | 20 MP', 'Snapdragon 888 5G', '5000mAh', NULL, NULL),
(90, 14, 16, 'Mi 11X', '1628754875_Mi_11x-removebg-preview.png', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '23800, 21700', NULL, NULL, '48 | 20 MP', 'Snapdragon 870 5G', '4520mAh', NULL, NULL),
(91, 14, 16, 'Poco F1', '1628758596_poco_F1-removebg-preview.png', '8GB | 256GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '13800, 12000, 11000', NULL, NULL, '12 | 20 MP', 'Snapdragon 845', '4000mAh', NULL, NULL),
(92, 14, 16, 'Poco X2', '1628758620_poco_x2-removebg-preview.png', '8GB | 256GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '15200, 13700, 12800', NULL, NULL, '64 | 20 MP', 'Snapdragon 730G', '4500mAh', NULL, NULL),
(93, 14, 16, 'Poco M2 Pro', '1628758913_poco_m2_pro-removebg-preview.png', '6GB | 128GB ,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13800, 13000, 11800', NULL, NULL, '48 | 16 MP', 'Snapdragon 720G', '5000mAh', NULL, NULL),
(94, 14, 16, 'Poco F2 Pro', '1628758666_poco_F2_pro-removebg-preview.png', '8GB | 256GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '24000, 22500', NULL, NULL, '64 | 20 MP', 'Snapdragon 865 5G', '4700mAh', NULL, NULL),
(96, 14, 16, 'Poco X3', '1628758794_poco_x3-removebg-preview.png', '8GB | 128GB,6GB | 128,6GB | 64GB', 'Dual', NULL, NULL, NULL, '15000, 14200, 13500', NULL, NULL, '64 | 20 MP', 'Snapdragon 732G', '6000mAh', NULL, NULL),
(97, 14, 16, 'Poco M2', '1628758937_poco_M2-removebg-preview.png', '6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '10000, 9200', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(98, 14, 16, 'Poco C3', '1628761875_poco_c3-removebg-preview.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8500, 7500', NULL, NULL, '13 | 5 MP', 'Mediatek', '5000mAh', NULL, NULL),
(100, 14, 16, 'Poco X3 Pro', '1628759001_poco_x3_pro-removebg-preview.png', '8GB | 256GB ,8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '18500, 17000, 15700', NULL, NULL, '48 | 20 MP', 'Snapdragon 860', '5160mAh', NULL, NULL),
(101, 14, 16, 'Poco F3', '1628759056_poco_F3-removebg-preview.png', '8GB | 256GB ,6GB | 128GB', 'Dual', NULL, NULL, NULL, '24500, 21500', NULL, NULL, '48 | 20 MP', 'Snapdragon 870 5G', '4520mAh', NULL, NULL),
(102, 14, 18, 'OnePlus 9 Pro', '1628708548_OnePlus-9-Pro.jpg', '12GB | 256GB,8GB | 256GB', 'Dual', NULL, NULL, NULL, '63000, 60000', NULL, NULL, '50 | 16 MP', 'Snapdragon 888 5G', '4500mAh', NULL, NULL),
(103, 14, 18, 'OnePlus 9R', '1628708705_OnePlus-9R.jpg', '12GB | 256GB,8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '40000, 37000, 35000', NULL, NULL, '48 | 16 MP', 'Snapdragon 870 5G', '4500mAh', NULL, NULL),
(104, 14, 18, 'OnePlus 9', '1628708908_OnePlus-9.jpg', '12GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '47000, 43000', NULL, NULL, '50 | 16 MP', 'Snapdragon 888 5G', '4500mAh', NULL, NULL),
(105, 14, 18, 'Oneplus 7T Pro 5G (McLaren)', '1628709109_OnePlus-7T-Pro-5G-McLaren.jpg', '12GB | 256GB', 'Dual,Single', NULL, NULL, NULL, '41000, 39000', NULL, NULL, '48 | 16 MP', 'Snapdragon 855+', '4085mAh', NULL, NULL),
(106, 14, 18, 'OnePlus 7T Pro', '1628709349_OnePlus-7-Pro.jpg', '12GB | 256GB,8GB | 256GB', 'Dual', NULL, NULL, NULL, '35000, 33000', NULL, NULL, '48 | 16 MP', 'Snapdragon 855+', '4085mAh', NULL, NULL),
(107, 14, 18, 'OnePlus 7T', '1628709458_OnePlus-7T.jpg', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '27000, 25000', NULL, NULL, '48 | 16 MP', 'Snapdragon 855+', '3800mAh', NULL, NULL),
(108, 14, 18, 'OnePlus 7 Pro', '1628709718_OnePlus-7-Pro.jpg', '12GB | 256GB,8GB | 256GB,6GB | 128GB', 'Dual,Single', NULL, NULL, NULL, '32000, 30000, 27000, 30000, 28000, 25000', NULL, NULL, '48 | 16 MP', 'Snapdragon 855', '4000mAh', NULL, NULL),
(109, 14, 18, 'OnePlus 7', '1628709866_OnePlus-7.jpg', '8GB | 256GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '23000, 21500', NULL, NULL, '48 | 16 MP', 'Snapdragon 855', '3700mAh', NULL, NULL),
(110, 14, 18, 'OnePlus 6T', '1628709950_OnePlus-6T.jpg', '8GB | 256GB ,8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '21500, 18500, 17500', NULL, NULL, '20 | 16 MP', 'Snapdragon 845', '3700mAh', NULL, NULL),
(111, 14, 18, 'Oneplus 6T McLaren', '1628710111_OnePlus-6T-McLaren.jpg', '10GB | 256GB', 'Dual', NULL, NULL, NULL, '22500', NULL, NULL, '20 | 16 MP', 'Snapdragon 845', '3700mAh', NULL, NULL),
(112, 14, 18, 'OnePlus 6', '1628710443_OnePlus-6.png', '8GB | 256GB,8GB | 128GB ,6GB | 64GB', 'Dual', NULL, NULL, NULL, '17500, 16000, 14500', NULL, NULL, '20 | 16 MP', 'Snapdragon 845', '3300mAh', NULL, NULL),
(113, 14, 18, 'OnePlus 5T', '1628710726_OnePlus-5T.jpg', '8GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '14000, 12000', NULL, NULL, '20 | 16 MP', 'Snapdragon 835', '3300mAh', NULL, NULL),
(114, 14, 18, 'OnePlus 5', '1628711096_OnePlus-5 ....jpg', '8GB | 128GB ,6GB | 64GB', 'Dual', NULL, NULL, NULL, '10500, 9500', NULL, NULL, '20 | 16 MP', 'Snapdragon 835', '3300mAh', NULL, NULL),
(115, 14, 18, 'OnePlus 3T', '1628711511_oneplus_3t.jpg', '6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '8000, 7000', NULL, NULL, '16 | 16 MP', 'Snapdragon 821', '3400mAh', NULL, NULL),
(116, 14, 18, 'OnePlus 3', '1628711762_OnePlus-3.jpg', '6GB | 64GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '16 | 8 MP', 'Snadragon 820', '3000mAh', NULL, NULL),
(117, 14, 18, 'OnePlus 8', '1628711960_OnePlus-8.png', '12GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '33500, 31500', NULL, NULL, '48 | 16 MP', 'Snapdragon 865 5G', '4300mAh', NULL, NULL),
(118, 14, 18, 'OnePlus 8 Pro', '1628712076_OnePlus-8-Pro.jpg', '12GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '47000, 42000', NULL, NULL, '48 | 16 MP', 'Snapdragon 865 5G', '4510mAh', NULL, NULL),
(119, 14, 18, 'OnePlus Nord', '1628712242_OnePlus-Nord.jpg', '12GB | 256GB,8GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '26500, 23500, 21500', NULL, NULL, '48 | 32 MP', 'Snapdragon 765G 5G', '4115mAh', NULL, NULL),
(120, 14, 18, 'OnePlus 8T', '1628712399_Oneplus-8T.png', '12GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '35000, 32000', NULL, NULL, '48 | 16 MP', 'Snapdragon 865 5G', '4500mAh', NULL, NULL),
(121, 14, 18, 'Oneplus Nord N10 5G', '1628713724_OnePlus-Nord-N10-5G.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '15500', NULL, NULL, '64 | 16 MP', 'Snapdragon 690 5G', '4300mAh', NULL, NULL),
(122, 14, 18, 'OnePlus 7 Pro 5G', '1628713793_OnePlus-7-Pro 5G.jpg', '8GB | 256GB', 'Dual', NULL, NULL, NULL, '29000', NULL, NULL, '48 | 16 MP', 'Snapdragon 855', '4000mAh', NULL, NULL),
(123, 14, 18, 'OnePlus Nord N100', '1628713833_OnePlus-Nord-N100.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '11000', NULL, NULL, '13 | 8 MP', 'Snapdragon 460', '5000mAh', NULL, NULL),
(124, 14, 18, 'OnePlus 8 5G', '1628713872_OnePlus-8-5G-UW.jpg', '8GB | 128GB', 'Single', NULL, NULL, NULL, '31000', NULL, NULL, '48 | 16 MP', 'Snapdragon 865 5G', '4300mAh', NULL, NULL),
(125, 14, 18, 'OnePlus 8T Cyber Punk', '1628713929_OnePlus-8T-Cyberpunk-2077-Edition.jpg', '12GB | 512GB,8GB | 256GB', 'Dual', NULL, NULL, NULL, '51000, 47000', NULL, NULL, '48 | 16 MP', 'Snapdragon 865', '4500mAh', NULL, NULL),
(202, 14, 17, 'Realme X50 5G', '1628497540_Realme-X50-5g-green.jpg', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '14200,12800', NULL, NULL, '48 | 16 MP', 'Snapdragon 765G 5G', '4200 mAh', NULL, NULL),
(203, 14, 17, 'Realme X Global', '1628497212_Realme-X.jpg', '8GB | 128GB,4GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '12800,11800,10800', NULL, NULL, '48 | 16 MP', 'Snapdragon 710', '3765 mAh', NULL, NULL),
(204, 14, 17, 'Realme X (Chinese)', '1628497376_Realme-X.jpg', '8GB | 128GB,4GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '10800,9800,8800', NULL, NULL, '48 | 16 MP', 'Snapdragon 710', '3765 mAh', NULL, NULL),
(205, 14, 17, 'Realme XT (Global)', '1628497723_Realme-XT.jpg', '8GB | 128GB ,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13000,12000,10800', NULL, NULL, '64 | 16 MP', 'Snapdragon 712', '4000 mAh', NULL, NULL),
(206, 14, 17, 'Realme XT (Chinese)', '1628497835_Realme-XT.jpg', '8GB | 128GB,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10800,9800,8800', NULL, NULL, '64 | 16 MP', 'Snapdragon 712', '4000 mAh', NULL, NULL),
(207, 14, 17, 'Realme X2 (Global)', '1628497994_Realme-X2.jpg', '8GB | 128GB ,6GB | 128GB,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13800,13000,11800,11000', NULL, NULL, '64 | 32 MP', 'Snapdragon 730G', '4000 mAh', NULL, NULL),
(208, 14, 17, 'Realme X2 (Chinese)', '1628498142_Realme-X2.jpg', '8GB | 128GB ,6GB | 128GB,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '11800,10500,9800,8700', NULL, NULL, '64 | 32 MP', 'Snapdragon 730G', '4000 mAh', NULL, NULL),
(209, 14, 17, 'Realme X2 Pro (Global)', '1628498354_Realme-X2-Pro-White.jpg', '12GB | 256GB ,8GB | 256GB,8GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '22000,21000,19500,17500', NULL, NULL, '64 | 16 MP', 'Snapdragon 855+', '4000 mAh', NULL, NULL),
(210, 14, 17, 'Realme X2 Pro (Chinese)', '1628498500_Realme-X2-Pro-White.jpg', '12GB | 256GB,8GB | 256GB ,8GB | 128GB ,6GB | 64GB', 'Dual', NULL, NULL, NULL, '18000,16000,15000,13000', NULL, NULL, '64 | 16 MP', 'Snapdragon 855+', '4000 mAh', NULL, NULL),
(212, 14, 17, 'Realme X3 SuperZoom', '1628498843_Realme-X3-SuperZoom-new1.jpg', '12 GB | 256GB ,8GB | 128GB', 'Dual', NULL, NULL, NULL, '22800,20500', NULL, NULL, '64 | 32 MP', 'Snapdragon 855+', '4200 mAh', NULL, NULL),
(213, 14, 17, 'Realme 2', '1628703925_Realme 2.png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6000,5500', NULL, NULL, '13 | 8 MP', 'Snapdragon 450', '4230 mAh', NULL, NULL),
(214, 14, 17, 'Realme 2 Pro', '1628501592_Realme-2-Pro-Black.jpg', '8GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '7000,6500,6000', NULL, NULL, '16 | 16 MP', 'Snapdragon 660', '3500 mAh', NULL, NULL),
(215, 14, 17, 'Realme 3', '1628501746_Realme-3.jpg', '4GB | 64GB,3GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6200,6000,5800', NULL, NULL, '13 | 13 MP', 'Mediatek', '4230 mAh', NULL, NULL),
(216, 14, 17, 'Realme 3 Pro', '1628501953_Realme-3-Pro.jpg', '6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '7800,7500,7000', NULL, NULL, '16 | 25 MP', 'Snapdragon 710', '4045 mAh', NULL, NULL),
(217, 14, 17, 'Realme 3i', '1628502103_Realme-3i.jpg', '4GB | 64GB ,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7500,6800', NULL, NULL, '13 | 13 MP', 'Mediatek', '4030 mAh', NULL, NULL),
(218, 14, 17, 'Realme 5', '1628502236_Realme-5.jpg', '6GB | 128GB ,4GB | 128GB ,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8800,8200,7800,6800', NULL, NULL, '12 | 13 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(219, 14, 17, 'Realme 5 Pro', '1628502487_Realme-5-Pro.jpg', '8GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10800,9800,8800', NULL, NULL, '48 | 16 MP', 'Snapdragon 712', '4035 mAh', NULL, NULL),
(220, 14, 17, 'Realme 5i', '1628502611_Realme-5i.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '8200', NULL, NULL, '12 | 8 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(221, 14, 17, 'Realme C2', '1628502774_Realme-C2.jpg', '3GB | 32GB,2GB | 32GB,2GB | 16GB', 'Dual', NULL, NULL, NULL, '5800,5500,4200', NULL, NULL, '13 | 5 MP', 'Mediatek', '4000 mAh', NULL, NULL),
(222, 14, 17, 'Realme C3', '1628503019_Realme-C3-new-red.jpg', '4GB | 64GB ,3GB | 32GB,2GB | 32GB', 'Dual', NULL, NULL, NULL, '7800,6800,5500', NULL, NULL, '12 | 5 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(223, 14, 17, 'Realme 5s', '1628503181_Realme-5s.jpg', '4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '9500, 8800', NULL, NULL, '48 | 13 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(224, 14, 17, 'Realme 6 Pro', '1628503341_Realme-6-Pro-purple-new.jpg', '8GB | 128GB ,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '15700,14800,13000', NULL, NULL, '64 | 16 MP', 'Snapdragon 730G', '4300 mAh', NULL, NULL),
(225, 14, 17, 'Realme 6', '1628503792_Realme-6-white.jpg', '8GB | 128GB ,6GB | 128GB ,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '12800,11200,10800,9800', NULL, NULL, '64 | 16 MP', 'Mediatek', '4300 mAh', NULL, NULL),
(226, 14, 17, 'Realme C17', '1628504286_Realme-C17-Navy-Blue.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '10000', NULL, NULL, '13 | 8 MP', 'Snapdragon 460', '5000 mAh', NULL, NULL),
(227, 14, 17, 'Realme 6i', '1628504551_Realme-6i.jpg', '4GB | 128GB,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '9500,9000,8800', NULL, NULL, '48 | 16 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(228, 14, 17, 'Realme 7 Pro', '1628504770_Realme-7-Pro.jpg', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '15000,14000', NULL, NULL, '64 | 32 MP', 'Snapdragon 720G', '4500 mAh', NULL, NULL),
(229, 14, 17, 'Realme 7', '1628504952_Realme-7.jpg', '8GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '14500,12800', NULL, NULL, '48 | 16 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(230, 14, 17, 'Realme C11', '1628505286_Realme-C11.jpg', '2GB | 32GB', 'Dual', NULL, NULL, NULL, '5500', NULL, NULL, '13 | 5 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(231, 14, 17, 'Realme C12', '1628505583_Realme-C12.jpg', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '6800', NULL, NULL, '13 | 5 MP', 'Mediatek', '6000 mAh', NULL, NULL),
(232, 14, 17, 'Realme 7i', '1628505789_Realme-7i.jpg', '8GB | 128GB,4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10800,10500,9500', NULL, NULL, '64 | 16 MP', 'Snapdragon 662', '5000 mAh', NULL, NULL),
(233, 14, 17, 'Realme C15', '1628506043_Realme-C15-Qualcomm-Edition.jpg', '4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '8500,7800', NULL, NULL, '13 | 8 MP', 'Mediatek', '6000 mAh', NULL, NULL),
(234, 14, 17, 'Realme Narzo 10', '1628506322_Realme-Narzo-10-new.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '48 | 16 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(235, 14, 17, 'Realme Narzo 20', '1628506422_Realme-Narzo-20.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '8500', NULL, NULL, '48 | 8 MP', 'Mediatek', '6000 mAh', NULL, NULL),
(236, 14, 17, 'Realme 8 Pro', '1628506533_Realme-8-Pro-image.jpg', '8GB | 128GB ,6GB | 128GB', 'Dual', NULL, NULL, NULL, '16800,16000', NULL, NULL, '108 | 16 MP', 'Snapdragon 720G', '4500 mAh', NULL, NULL),
(237, 14, 17, 'Realme 8', '1628506665_Realme-8-image.jpg', '8GB | 128GB ,6GB | 128GB,4GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '15200,14200,13200,12200', NULL, NULL, '64 | 16 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(238, 14, 17, 'Realme C1', '1628506743_Realme-C1-Blue.jpg', '2GB | 32GB', 'Dual', NULL, NULL, NULL, '4700', NULL, NULL, '13 | 5 MP', 'Snapdragon 450', '4230 mAh', NULL, NULL),
(239, 14, 19, 'Oppo A9 (2020)', '1628531286_oppo-a9-2020-.jpg', '8GB | 128GB,4GB | 128GB', 'Dual', NULL, NULL, NULL, '11000, 9000', NULL, NULL, '48 | 16 MP', 'Snapdragon 665', '5000mAh', NULL, NULL),
(240, 14, 19, 'Oppo A5 (2020)', '1628531414_Oppo A5.jpg', '4GB | 128GB ,4GB | 64GB ,3GB | 64GB', 'Dual', NULL, NULL, NULL, '9000, 8000, 7000', NULL, NULL, '12 | 8 MP', 'Snapdragon 665', '5000mAh', NULL, NULL),
(241, 14, 19, 'Oppo A7', '1628531571_oppo-A7.jpg', '4GB | 64GB,3GB | 64GB', 'Dual', NULL, NULL, NULL, '7000, 6300', NULL, NULL, '13 | 16 MP', 'Snapdragon 450', '4230mAh', NULL, NULL),
(242, 14, 19, 'Oppo A5', '1628531846_Oppo A5.jpg', '4GB | 64GB ,4GB | 32GB', 'Dual', NULL, NULL, NULL, '7000, 6500', NULL, NULL, '13 | 8 MP', 'Snapdragon 450', '4230mAh', NULL, NULL),
(243, 14, 19, 'Oppo A5s', '1628532037_Oppo-A15s-image.jpg', '4GB | 64GB ,3GB | 32GB,2GB | 32GB', 'Dual', NULL, NULL, NULL, '7500, 6500, 6000', NULL, NULL, '13 | 8 MP', 'Mediatek', '4230mAh', NULL, NULL),
(244, 14, 19, 'Oppo A3s', '1628532332_Oppo-A3s-Red.jpg', '3GB | 32GB ,2GB | 16GB', 'Dual', NULL, NULL, NULL, '6000, 5500', NULL, NULL, '13 | 8 MP', 'Snapdragon 450', '4230mAh', NULL, NULL),
(245, 14, 19, 'Oppo A1k', '1628532683_Oppo-A1K-new.jpg', '2GB | 32GB', 'Dual', NULL, NULL, NULL, '5000', NULL, NULL, '8 | 5 MP', 'Mediatek', '4000mAh', NULL, NULL),
(246, 14, 19, 'Oppo A12', '1628533019_Oppo-A12-black.jpg', '4GB | 64GB ,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7000, 5500', NULL, NULL, '13 | 5 MP', 'Mediatek', '4230mAh', NULL, NULL),
(247, 14, 19, 'Oppo A92', '1628533244_Oppo-A92-new-black.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '12000', NULL, NULL, '48 | 16 MP', 'Snapdragon 665', '5000mAh', NULL, NULL),
(248, 14, 19, 'Oppo A31', '1628534008_Oppo-A31.jpg', '6GB | 128GB ,4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10000,8500,8000', NULL, NULL, '12 | 8 MP', 'Mediatek', '4230mAh', NULL, NULL),
(249, 14, 19, 'Oppo A52', '1628534410_Oppo-A52-new-green.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '10000', NULL, NULL, '12 | 16 MP', 'Snapdragon 665', '5000mAh', NULL, NULL),
(250, 14, 19, 'Oppo A11k', '1628534591_oppo-a11k.jpg', '2GB | 32GB', 'Dual', NULL, NULL, NULL, '6000', NULL, NULL, '13 | 5 MP', 'Mediatek', '4230mAh', NULL, NULL),
(251, 14, 19, 'Oppo A33-2020', '1628534869_Oppo-A53.jpg', '4GB | 32GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '9500, 8000', NULL, NULL, '13 | 8 MP', 'Snapdragon 460', '5000mAh', NULL, NULL),
(252, 14, 19, 'Oppo A53', '1628535003_Oppo-A53.jpg', '6GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10000, 8000', NULL, NULL, '13 | 16 MP', 'Snapdragon 460', '5000mAh', NULL, NULL),
(253, 14, 19, 'Oppo A15', '1628535221_Oppo-A15.jpg', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '13 | 5 MP', 'Mediatek', '4230mAh', NULL, NULL),
(254, 14, 19, 'Oppo A15s', '1628535742_Oppo-A15s-image.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '8500', NULL, NULL, '13 | 8 MP', 'Mediatek', '4230mAh', NULL, NULL),
(255, 14, 19, 'Oppo F11 Pro', '1628535916_oppo-f11-pro-.jpg', '6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '12000, 11000', NULL, NULL, '48 | 16 MP', 'Mediatek', '4000mAh', NULL, NULL),
(256, 14, 19, 'Oppo F11', '1628536066_Oppo-F11-new.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '9000', NULL, NULL, '48 | 16 MP', 'Mediatek', '4020mAh', NULL, NULL),
(257, 14, 19, 'Oppo F9 Pro', '1628537325_Oppo-F9-new.jpg', '6GB | 64GB', 'Dual', NULL, NULL, NULL, '8000', NULL, NULL, '16 | 25 MP', 'Mediatek', '3500mAh', NULL, NULL),
(258, 14, 19, 'Oppo F9', '1628537822_Oppo-F9-new.jpg', '6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '7000, 6000', NULL, NULL, '16 | 25 mAh', 'Mediatek', '3500mAh', NULL, NULL),
(259, 14, 19, 'Oppo F15', '1628537986_Oppo-F15-new.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '12000', NULL, NULL, '48 | 16 MP', 'Mediatek', '4025mAh', NULL, NULL),
(260, 14, 19, 'Oppo F17', '1628538161_oppo-f17.jpg', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '13000, 11500', NULL, NULL, '16 | 16 MP', 'Snapdragon 662', '4015mAh', NULL, NULL),
(261, 14, 19, 'Oppo F17 Pro', '1628538521_oppo-f17-pro---.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '15500', NULL, NULL, '48 | 16 MP', 'Mediatek', '4015mAh', NULL, NULL),
(262, 14, 19, 'Oppo F7', '1628538980_Oppo-F7-new.jpg', '6GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '5000, 4000', NULL, NULL, '16 | 25 MP', 'Mediatek', '3400mAh', NULL, NULL),
(263, 14, 19, 'Oppo F19 Pro', '1628539102_Oppo-F19-Pro-image.jpg', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '18000, 17000', NULL, NULL, '48 | 16 MP', 'Mediatek', '4310mAh', NULL, NULL),
(264, 14, 19, 'Oppo F19', '1628539212_oppo-f19.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '15000', NULL, NULL, '48 | 16 MP', 'Snapdragon 662', '5000mAh', NULL, NULL),
(265, 14, 19, 'Oppo K3', '1628539341_oppo-k3.jpg', '8GB | 128GB ,6GB | 64GB', 'Dual', NULL, NULL, NULL, '9500, 8000', NULL, NULL, '16 | 16 MP', 'Snapdragon 710', '3765mAh', NULL, NULL),
(266, 14, 19, 'Oppo K1', '1628539492_oppo-k1-.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '8000', NULL, NULL, '16 | 25 MP', 'Snapdragon 660', '3600mAh', NULL, NULL),
(267, 14, 19, 'Oppo Reno', '1628540149_Oppo Reno.png', '8GB | 256GB,6GB | 256GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '12000, 11000, 10000', NULL, NULL, '48 | 16 MP', 'Snapdragon 710', '3765mAh', NULL, NULL),
(268, 14, 19, 'Oppo Reno 10x Zoom', '1628540425_Oppo-Reno-10x-Zoom.jpg', '12GB | 256GB,8GB | 256GB ,6GB | 256GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '20000, 18000, 16000, 12000', NULL, NULL, '48 | 16 MP', 'Snapdragon 855', '4065mAh', NULL, NULL),
(269, 14, 19, 'Oppo Reno 2', '1628540706_Oppo-Reno2.jpg', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '19000, 17000', NULL, NULL, '48 | 16 MP', 'Snapdragon 730G', '4000mAh', NULL, NULL),
(270, 14, 19, 'Oppo Reno2 F', '1628540925_Oppo-Reno2-F.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '15000', NULL, NULL, '48 | 16 MP', 'Mediatek', '4000mAh', NULL, NULL),
(271, 14, 19, 'Oppo Reno2 Z', '1628541104_oppo-reno2z-2f.jpg', '8GB | 256GB ,8GB | 128GB', 'Dual', NULL, NULL, NULL, '17000, 15000', NULL, NULL, '48 | 16 MP', 'Mediatek', '4000mAh', NULL, NULL),
(272, 14, 19, 'Oppo Reno3 Pro', '1628541282_oppo-reno3-pro-.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '19000', NULL, NULL, '64 | 44 MP', 'Mediatek', '4025mAh', NULL, NULL),
(273, 14, 19, 'Oppo Reno4', '1628541472_oppo-reno4.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '18000', NULL, NULL, '48 | 32 MP', 'Snapdragon 720G', '4015mAh', NULL, NULL),
(274, 14, 19, 'Oppo Reno4 Pro', '1628541571_oppo-reno4-pro-5g.jpg', '8GB | 256GB ,8GB | 128GB', 'Dual', NULL, NULL, NULL, '25500, 23500', NULL, NULL, '48 | 32 MP', 'Snapdragon 720G', '4000mAh', NULL, NULL),
(275, 14, 19, 'Oppo Reno5 4G', '1628541782_Oppo-Reno5-image.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '21000', NULL, NULL, '64 | 44 MP', 'Snapdragon 720G', '4310mAh', NULL, NULL),
(276, 14, 19, 'Oppo Reno5 Pro', '1628542091_oppo-reno5-pro-5g-.jpg', '12GB | 256GB', 'Dual', NULL, NULL, NULL, '28000', NULL, NULL, '64 | 32 MP', 'Mediatek', '4350mAh', NULL, NULL),
(277, 14, 19, 'Oppo Find X', '1628542315_Oppo-Find-X-blue.jpg', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '22000, 20000', NULL, NULL, '16 | 25 MP', 'Snapdragon 845', '3730mAh', NULL, NULL),
(278, 14, 19, 'Oppo Find X2', '1628542499_Oppo-Find-X2-ceramic.jpg', '12GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '37000, 33000', NULL, NULL, '48 | 32 MP', 'Snapdragon 865 5G', '4260mAh', NULL, NULL),
(279, 14, 20, 'Vivo X60 Pro', '1628544340_Vivo-X60-Pro-5G-image.jpg', '12GB | 256GB', 'Dual', NULL, NULL, NULL, '38000', NULL, NULL, '48 | 32 MP', 'Snapdragon 870 5G', '4200 mAh', NULL, NULL),
(280, 14, 20, 'Vivo Z1 Pro', '1628544581_Vivo-Z1-Pro.jpg', '6GB | 128GB ,6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '11200,10300,9800', NULL, NULL, '16 | 32 MP', 'Snapdragon 712', '5000 mAh', NULL, NULL),
(281, 14, 20, 'Vivo Z1x', '1628544784_Vivo-Z1x.jpg', '8GB | 128GB ,6GB | 128GB,4GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13800,13200,12800,12500,12000', NULL, NULL, '48 | 32 MP', 'Snapdragon 712', '4500 mAh', NULL, NULL),
(282, 14, 20, 'Vivo S1', '1628584278_Vivo-S1.jpg', '6GB | 128GB,4GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '11000,10000,9800', NULL, NULL, '16 | 32 MP', 'Mediatek', '4500 mAh', NULL, NULL),
(283, 14, 20, 'Vivo S1 Pro', '1628584386_Vivo-S1-Pro.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '13000', NULL, NULL, '48 | 32 MP', 'Snapdragon 665', '4500 mAh', NULL, NULL),
(284, 14, 20, 'Vivo U10', '1628585934_Vivo-U10.jpg', '4GB | 64GB,3GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8500,8000,7500', NULL, NULL, '13 | 8 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(285, 14, 20, 'Vivo U20', '1628586196_Vivo-U20.jpg', '8GB | 128GB,6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '12000,10800,10000,9200', NULL, NULL, '16 | 16 MP', 'Snapdragon 675', '5000 mAh', NULL, NULL),
(286, 14, 20, 'Vivo V11i', '1628808216_Vivo-V11i[1].png', '6GB | 64GB', 'Dual', NULL, NULL, NULL, '7000', NULL, NULL, '16 | 25 MP', 'Mediatek', '3315 mAh', NULL, NULL),
(287, 14, 20, 'Vivo V11 Pro', '1628588516_Vivo-V11-Pro-Starry.jpg', '6GB | 64GB', 'Dual', NULL, NULL, NULL, '8000', NULL, NULL, '12 | 25 MP', 'Snapdragon 660', '3400 mAh', NULL, NULL),
(288, 14, 20, 'Vivo V17 Pro', '1628588683_Vivo-V17-Pro.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '15000', NULL, NULL, '48 | 32 MP', 'Snapdragon 675', '4100 mAh', NULL, NULL),
(289, 14, 20, 'Vivo V15', '1628588869_Vivo-V15-Red.jpg', '6GB | 64GB', 'Dual', NULL, NULL, NULL, '10200', NULL, NULL, '24 | 32 MP', 'Mediatek', '4000 mAh', NULL, NULL),
(290, 14, 20, 'Vivo V15 Pro', '1628588999_Vivo-V15-Pro-Blue.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '12500', NULL, NULL, '48 | 32 MP', 'Snapdragon 675', '3700 mAh', NULL, NULL),
(291, 14, 20, 'Vivo V17', '1637835914_image-removebg-preview.png', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '13800', NULL, NULL, '48 | 32 MP', 'Snapdragon 675', '4500 mAh', NULL, NULL),
(292, 14, 20, 'Vivo V19', '1628589820_Vivo-V19-Bangladesh-new.jpg', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '17500, 16500', NULL, NULL, '48 | 32 MP', 'Snapdragon 712', '4500mAh', NULL, NULL),
(293, 14, 20, 'Vivo V20', '1628590018_Vivo-V20.jpg', '8GB | 256GB ,8GB | 128GB', 'Dual', NULL, NULL, NULL, '19000,17000', NULL, NULL, '64 | 44 MP', 'Snapdragon 720G', '4000 mAh', NULL, NULL),
(294, 14, 20, 'Vivo V20 SE', '1628590215_Vivo-V20-SE.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '13200', NULL, NULL, '48 | 32 MP', 'Snapdragon 665', '4100 mAh', NULL, NULL),
(295, 14, 20, 'Vivo V21', '1628590397_Vivo-V21-image.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '21000', NULL, NULL, '64 | 44 MP', 'Mediatek', '4000 mAh', NULL, NULL),
(296, 14, 20, 'Vivo Y90', '1628590577_Vivo-Y90.jpg', '2GB | 32GB ,2GB | 16GB', 'Dual', NULL, NULL, NULL, '4800,4500', NULL, NULL, '8 | 5 MP', 'Mediatek', '4030 mAh', NULL, NULL),
(297, 14, 20, 'Vivo Y19', '1628590829_Vivo-Y19-new.jpg', '6GB | 128GB,4GB | 128GB', 'Dual', NULL, NULL, NULL, '9800,8200', NULL, NULL, '16 | 16 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(298, 14, 20, 'Vivo Y11', '1628591004_Vivo-Y11-2019-new.jpg', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '6800', NULL, NULL, '13 | 8 MP', 'Snapdragon 439', '5000 mAh', NULL, NULL),
(299, 14, 20, 'Vivo Y12', '1628591276_Vivo-Y12-new.jpg', '3GB | 64GB,4GB | 32GB', 'Dual', NULL, NULL, NULL, '7200,7000', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(300, 14, 20, 'Vivo Y15', '1628591396_Vivo-Y15-new.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '9000', NULL, NULL, '13 | 16 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(301, 14, 20, 'Vivo Y17', '1628591503_Vivo-Y17-new.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '9500', NULL, NULL, '13 | 20 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(302, 14, 20, 'Vivo Y20', '1628591714_Vivo-Y20.jpg', '4GB | 64GB,3GB | 64GB', 'Dual', NULL, NULL, NULL, '9000,8200', NULL, NULL, '13 | 8 MP', 'Snapdragon 460', '5000 mAh', NULL, NULL),
(303, 14, 20, 'Vivo Y20G', '1628591834_Vivo-Y20G-image.jpg', '6GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10800,10000', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(304, 14, 20, 'Vivo Y30', '1628591965_Vivo-Y30.jpg', '4GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10500,9800', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(305, 14, 20, 'Vivo Y50', '1628592129_Vivo-Y50-Bangladesh.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '11000', NULL, NULL, '13 | 16 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(306, 14, 20, 'Vivo Y81', '1628592275_Vivo-Y81-new.jpg', '4GB | 32GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '5500,4800', NULL, NULL, '13 | 5 MP', 'Mediatek', '3260 mAh', NULL, NULL),
(307, 14, 20, 'Vivo Y83', '1628592451_vivo-y83-1.jpg', '4GB | 64GB ,4GB | 32GB', 'Dual', NULL, NULL, NULL, '6000,5000', NULL, NULL, '13 | 8 MP', 'Mediatek', '3260 mAh', NULL, NULL),
(309, 14, 20, 'Vivo Y91', '1628592767_Vivo-Y91-new.jpg', '3GB | 32GB,2GB | 32GB', 'Dual', NULL, NULL, NULL, '6000,5500', NULL, NULL, '13 | 8 MP', 'Snapdragon 439', '4030 mAh', NULL, NULL),
(310, 14, 20, 'Vivo Y93', '1628808451_Vivo_Y93[1].jpg', '3GB | 64GB ,4GB | 32GB', 'Dual', NULL, NULL, NULL, '6700,6600', NULL, NULL, '13 | 8 MP', 'Snapdragon 439', '4030 mAh', NULL, NULL),
(311, 14, 20, 'Vivo Y95', '1628592979_Vivo-Y95-new.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '7800', NULL, NULL, '13 | 20 MP', 'Snapdragon 439', '4030mAh', NULL, NULL),
(312, 14, 20, 'Vivo Y51 (2020, Dec)', '1628808537_Vivo-Y51-image[1].jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '12000', NULL, NULL, '48 | 16 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(313, 14, 20, 'Vivo Y1s', '1628593425_Vivo-Y1s-image.jpg', '2GB | 32GB', 'Dual', NULL, NULL, NULL, '5200', NULL, NULL, '13 | 5 MP', 'Mediatek', '4030 mAh', NULL, NULL),
(314, 14, 20, 'Vivo Y12s', '1628593520_Vivo-Y12s-image.jpg', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '7500', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(315, 14, 21, 'Huawei P20 Pro', '1628596234_Huawei-P20-Pro-Pink.jpg', '6GB | 256GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '19000, 17000', NULL, NULL, '40 | 24 MP', 'Kirin 970', '4000mAh', NULL, NULL),
(316, 14, 21, 'Huawei P20 Lite', '1628596344_Huawei-P20-Lite.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '9000', NULL, NULL, '16 | 16 MP', 'Kirin 659', '3000mAh', NULL, NULL),
(317, 14, 21, 'Huawei P30', '1628596502_Huawei-P30-new.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '22000', NULL, NULL, '40 | 32 MP', 'Kirin 980', '3650mAh', NULL, NULL),
(318, 14, 21, 'Huawei P30 Pro', '1628596882_Huawei-P30-Pro-new.jpg', '8GB | 256GB,8GB | 128GB', 'Dual,Single', NULL, NULL, NULL, '36000, 33000, 33000, 30000', NULL, NULL, '40 | 32 MP', 'Kirin 980', '4200mAh', NULL, NULL),
(319, 14, 21, 'Huawei P30 Lite', '1628597206_Huawei-P30-Lite-new.jpg', '8GB | 128GB,6GB | 128GB,4GB | 128GB', 'Dual', NULL, NULL, NULL, '12000, 10000, 8000', NULL, NULL, '48 | 24 MP', 'Kirin 710', '3340mAh', NULL, NULL),
(320, 14, 21, 'Huawei P40', '1628597392_Huawei-P40.jpg', '8GB | 256GB,8GB | 128GB,6GB  |128GB', 'Dual', NULL, NULL, NULL, '30000, 28000, 26000', NULL, NULL, '50 | 32 MP', 'Kirin 990 5G', '3800mAh', NULL, NULL),
(321, 14, 21, 'Huawei P40 Pro', '1628597571_HUAWEI-P40-Pro-black-new.jpg', '8GB | 512GB,8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '48000, 46000, 43000', NULL, NULL, '50 | 32 MP', 'Kirin 990 5G', '4200mAh', NULL, NULL),
(322, 14, 21, 'Huawei P40 Pro Plus', '1628597675_Huawei-P40-Pro-plus-white.jpg', '8GB | 256GB', 'Dual', NULL, NULL, NULL, '43000', NULL, NULL, '50 | 32 MP', 'Kirin 990 5G', '4200mAh', NULL, NULL),
(323, 14, 21, 'Huawei Y7 Pro (2019)', '1628597861_Huawei-Y7-Pro-2019-64-GB.jpg', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '5500, 4500', NULL, NULL, '13 | 16 MP', 'Snapdragon 450', '4000mAh', NULL, NULL),
(324, 14, 21, 'Huawei Y9 (2019)', '1628598032_Huawei-Y9-2019-Blue.jpg', '6GB | 128GB , 4GB | 64GB', 'Dual', NULL, NULL, NULL, '8000, 7000', NULL, NULL, '13 | 16 MP', 'Kirin 710', '4000mAh', NULL, NULL),
(325, 14, 21, 'Huawei Y9 Prime (2019)', '1628598153_Huawei-Y9-Prime-2019.jpg', '4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10000, 9000', NULL, NULL, '16 | 16 MP', 'Kirin 710F', '4000mAh', NULL, NULL),
(326, 14, 21, 'Huawei Y9s', '1628598291_Huawei-Y9s.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '12000', NULL, NULL, '48  | 16 MP', 'Kirin 710F', '4000mAh', NULL, NULL),
(327, 14, 21, 'Huawei Nova 2i', '1628598646_PWB000235333.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '6000', NULL, NULL, '16 | 13 MP', 'Kirin 659', '3340mAh', NULL, NULL),
(328, 14, 21, 'Huawei Nova 3i', '1628598871_huawei-nova-3i.jpg', '6GB | 128GB,4GB | 128GB', 'Dual', NULL, NULL, NULL, '9500, 8500', NULL, NULL, '16 | 24 MP', 'Kirin 710', '3340mAh', NULL, NULL),
(329, 14, 21, 'Huawei Nova 5T', '1628599005_Huawei-Nova-5T.jpg', '8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '17000, 16000', NULL, NULL, '48 | 32 MP', 'Kirin 980', '3750mAh', NULL, NULL),
(330, 14, 21, 'Huawei Nova 7i', '1628599202_nova-7i-list-midnight-black.png', '8GB | 128GB', 'Dual,Single', NULL, NULL, NULL, '13000, 11000', NULL, NULL, '48 | 16 MP', 'Kirin 810', '4200mAh', NULL, NULL),
(331, 14, 21, 'Huawei Mate 20 Pro', '1628599470_Huawei-Mate-20-Pro-Green.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '22000', NULL, NULL, '40 | 24 MP', 'Kirin 980', '4200mAh', NULL, NULL),
(332, 14, 21, 'Huawei Mate 30 Pro', '1628599599_Huawei-Mate-30-Pro-new.jpg', '8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '39000, 36000', NULL, NULL, '40 | 24 mAh', 'Kirin 990', '4500mAh', NULL, NULL),
(333, 14, 21, 'Huawei Mate 40 Pro', '1628599712_huawei-mate-40-pro.jpg', '8GB | 512GB ,8GB | 256GB', 'Dual', NULL, NULL, NULL, '65000, 61000', NULL, NULL, '50 | 13 MP', 'Kirin 9000 5G,f', '4400mAh', NULL, NULL),
(334, 14, 22, 'Tecno Camon 17P', '1628610581_Tecno-Camon-17P-image.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '11500', NULL, NULL, '64 | 16 MP', 'Mediatek', '5000mAh', NULL, NULL),
(335, 14, 22, 'Tecno Camon 17', '1628610734_Tecno-Camon-17-image.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '10500', NULL, NULL, '48 | 16 MP', 'Mediatek', '5000mAh', NULL, NULL),
(336, 14, 22, 'Tecno Spark 7 pro', '1628610867_Tecno-Spark-7-Pro-image.jpg', '6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10500, 9500', NULL, NULL, '48 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(337, 14, 22, 'Tecno Spark 7', '1628615746_Tecno-Spark-7-image.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '8200', NULL, NULL, '16 | 8 MP', 'Mediatek', '6000mAh', NULL, NULL),
(338, 14, 22, 'Tecno Camon 16 Premier', '1628615863_Tecno-Camon-16-Premier.jpg', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '14000', NULL, NULL, '64 | 48 MP', 'Mediatek', '4500mAh', NULL, NULL),
(339, 14, 22, 'Tecno Camon 16 Pro', '1628615989_Tecno-Camon-16-Pro.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '11500', NULL, NULL, '64 | 16 MP', 'Mediatek', '5000mAh', NULL, NULL),
(340, 14, 22, 'Tecno Camon 16', '1628616113_Tecno-Camon-16.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '9500', NULL, NULL, '64 | 16 MP', 'Mediatek', '5000mAh', NULL, NULL),
(341, 14, 22, 'Tecno Spark 6 Go', '1628616235_Tecno-Spark-6-Go.jpg', '4GB | 64GB ,3GB | 64GB', 'Dual', NULL, NULL, NULL, '7200, 6200', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(342, 14, 22, 'Tecno Spark 6', '1628616397_Tecno-Spark-6.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '7000', NULL, NULL, '16 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(343, 14, 22, 'Tecno Spark 5 pro', '1628616502_Tecno-Spark-5-Pro.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '6300', NULL, NULL, '16 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(344, 14, 22, 'Tecno Camon 15', '1628616611_Tecno-Camon-15-new.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '10000', NULL, NULL, '48 | 16 MP', 'Mediatek', '5000mAh', NULL, NULL),
(345, 14, 22, 'Tecno Camon 12 Air', '1628616883_Tecno-Camon-12-Air.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '8000', NULL, NULL, '16 | 8 MP', 'Mediatek', '4000mAh', NULL, NULL),
(346, 14, 22, 'Tecno Camon 15 Pro', '1628616982_Tecno-Camon-15-Pro-new.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '11000', NULL, NULL, '48 | 32 MP', 'Mediatek', '4000mAh', NULL, NULL),
(347, 14, 23, 'Google Pixel 4 XL', '1628617946_Google-Pixel-4-XL-black.jpg', '6GB | 128GB ,6GB | 64GB', 'Nano-SIM / eSIM', NULL, NULL, NULL, '34000, 32000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 855', '3700mAh', NULL, NULL),
(348, 14, 23, 'Google Pixel 3a', '1628618240_Google-Pixel-3a.jpg', '4GB | 128GB ,4GB | 64GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '15000, 13000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 670', '3000mAh', NULL, NULL),
(349, 14, 23, 'Google Pixel 3 XL', '1628618457_Google-Pixel-3-XL-Black.jpg', '4GB | 128GB,4GB | 64GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '21000, 19000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 845', '3450mAh', NULL, NULL),
(350, 14, 23, 'Google Pixel 2 XL', '1628619337_google-pixel-2-xl.jpg', '4GB | 128GB ,4GB | 64GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '13000, 12000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 835', '3520mAh', NULL, NULL),
(351, 14, 23, 'Google Pixel 4', '1628619568_google-pixel-4-1.jpg', '6GB | 128GB ,6GB | 64GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '30000, 28000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 855', '2800mAh', NULL, NULL),
(352, 14, 23, 'Google Pixel 4a', '1628619786_google-pixel-4a-1.jpg', '6GB | 128GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '25500', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 730G', '3140mAh', NULL, NULL),
(353, 14, 23, 'Google Pixel 5', '1628620057_Google-Pixel-5.jpg', '8GB | 128GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '47000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 765G 5G', '4080mAh', NULL, NULL),
(354, 14, 23, 'Google Pixel 4a 5G', '1628714455_google-pixel-4a-5g.jpg', '12.2 | 8 MP', 'Nano-SIM/eSIM', NULL, NULL, NULL, '33000', NULL, NULL, '12.2 | 8 MP', 'Snapdragon 765G 5G', '3885mAh', NULL, NULL),
(355, 14, 23, 'Google Pixel 3a XL', '1628620691_Google-Pixel-3A-XL.jpg', '4GB | 64GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '15000', NULL, NULL, '12.2 | 8 MP', 'Srapdragon 670', '3700mAh', NULL, NULL),
(356, 14, 23, 'Google Pixel 3', '1628620937_Google-Pixel-3-Pink.jpg', '4GB | 128GB', 'Nano-SIM/eSIM', NULL, NULL, NULL, '16000', NULL, NULL, '12.2 | 8 MP', 'Snapgragon 845', '2915mAh', NULL, NULL),
(357, 14, 24, 'Asus ROG Phone II', '1628621676_Asus-ROG-Phone-II.jpg', '8GB | 512GB ,8GB | 256GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '29000, 26000, 24000', NULL, NULL, '48 | 24 MP', 'Snapdragon 855+', '6000mAh', NULL, NULL),
(358, 14, 24, 'Asus ROG Phone 3', '1628621907_Asus-Rog-Phone-3.jpg', '12GB | 256GB,12GB | 128GB,8GB | 128GB', 'Dual', NULL, NULL, NULL, '35000, 33000, 30000', NULL, NULL, '64 | 24 MP', 'Snapdragon 865+ 5G', '6000mAh', NULL, NULL),
(359, 14, 24, 'Asus ROG Phone 5', '1628622205_asus-rog-phone-5-2.jpg', '12GB | 256GB,12GB | 128GB ,8GB | 128GB', 'Dual', NULL, NULL, NULL, '49000, 46500, 42000', NULL, NULL, '64 | 24 MP', 'Snapdragon 888 5G', '6000mAh', NULL, NULL),
(360, 14, 24, 'Asus Zenfone 5z', '1628622401_Asus-Zenfone-5z.jpg', '6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '11000, 10000, 9500', NULL, NULL, '12 | 8 MP', 'Snapdragon 845', '3300mAh', NULL, NULL),
(361, 14, 24, 'Asus Zenfone 6Z', '1628622813_Asus-Zenfone-6-ZS630KL.jpg', '8GB | 256GB,6GB | 128GB,6GB | 64GB', 'Dual', NULL, NULL, NULL, '15500, 14000, 13500', NULL, NULL, '48 | 48 MP', 'Snapdragon 855', '5000mAh', NULL, NULL),
(362, 14, 24, 'Asus Zenfone Max (M2)', '1628623266_Asus-ZenFone-Max-M2.jpg', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7500, 5500', NULL, NULL, '13 | 8 MP', 'Snapdragon 632', '4000mAh', NULL, NULL),
(363, 14, 24, 'Asus zenfone Max pro (M1)', '1628623471_Asus-ZenFone-Max-Pro-M1.jpg', '6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '7500, 5500, 5000', NULL, NULL, '13 | 16 MP', 'Snapdragon 836', '5000mAh', NULL, NULL),
(364, 14, 24, 'Asus Zenfone Max Pro (M2)', '1628623656_Asus-Zenfone-Max-Pro-M2-ZB631KL.jpg', '6GB | 64GB,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8500, 7500, 6500', NULL, NULL, '12 | 13 MP', 'Snapdragon 660', '5000mAh', NULL, NULL),
(365, 14, 26, 'Honor 8X', '1628624719_Honor-8X.jpg', '6GB | 128GB,4GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '9000, 8000, 7500, 7000', NULL, NULL, '20 | 16 MP', 'Kirin 710', '3750mAh', NULL, NULL);
INSERT INTO `mobile_categories` (`id`, `category_id`, `brand_id`, `mobile_model`, `image`, `ram_rom`, `sim`, `camera`, `processor`, `battery`, `prices`, `specificationram_rom`, `specificationsim`, `specificationcamera`, `specificationprocessor`, `specificationbattery`, `created_at`, `updated_at`) VALUES
(366, 14, 26, 'Honor 9N (9i)', '1628624911_huawei-honor-9n-9i.jpg', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6000, 5000', NULL, NULL, '13 | 16 MP', 'Kirin 659', '3000mAh', NULL, NULL),
(367, 14, 26, 'Honor 9 Lite', '1628625154_huawei-honor-9-lite.jpg', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '5000', NULL, NULL, '13 | 13 MP', 'Kirin 659', '3000mAh', NULL, NULL),
(368, 14, 26, 'Honor 10 Lite', '1628625359_Honor-10-Lite-new.jpg', '6GB | 64GB,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '10000, 9000, 7000', NULL, NULL, '13 | 24 MP', 'Kirin 710', '3400mAh', NULL, NULL),
(369, 14, 26, 'Honor 20i', '1628625513_Honor-20i.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '10000', NULL, NULL, '24 | 32 MP', 'Kirin 710', '3400mAh', NULL, NULL),
(370, 14, 26, 'Honor Play', '1628625651_huawei-honor-play.jpg', '6GB | 64GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '9000, 8000', NULL, NULL, '16 | 16 MP', 'Kirin 970', '3750mAh', NULL, NULL),
(371, 14, 27, 'Nokia 3.1 Plus', '1628626049_Nokia-3.1-Plus-white.jpg', '3GB | 32GB,2GB | 32GB,2GB | 16GB', 'Dual', NULL, NULL, NULL, '4500, 4000, 3500', NULL, NULL, '13 | 8 MP', 'Mediatek', '3500mAh', NULL, NULL),
(372, 14, 27, 'Nokia 4.2', '1628626233_Nokia-4.2-new.jpg', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '6000', NULL, NULL, '13 | 8 MP', 'Snapdragon 439', '3000mAh', NULL, NULL),
(373, 14, 27, 'Nokia 5.1 plus (Nokia X5)', '1628626527_Nokia-5.1-Plus-Black.jpg', '6GB | 64GB,4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '5500, 5000, 4500', NULL, NULL, '13 | 8 MP', 'Mediatek', '3060mAh', NULL, NULL),
(374, 14, 27, 'Nokia 6.1 plus (Nokia X6)', '1628626739_Nokia-6.1-Plus-new.jpg', '6GB | 64GB,4GB | 64GB,3GB | 64GB', 'Dual', NULL, NULL, NULL, '8000, 7000, 5500', NULL, NULL, '16 | 16 MP', 'Snapdragon  636', '3060mAh', NULL, NULL),
(375, 14, 27, 'Nokia 7.1', '1628626974_Nokia-7.1-Official-image-500x500.jpg', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '9000, 7000', NULL, NULL, '12 | 8 MP', 'Snapdragon 636', '3060mAh', NULL, NULL),
(376, 14, 27, 'Nokia 7.2', '1628627211_nokia-72-1.jpg', '6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '11000, 10000, 9000', NULL, NULL, '48 | 20 MP', 'Snapdragon 660', '3500mAh', NULL, NULL),
(377, 14, 27, 'Nokia 8.1 (Nokia X7)', '1628627538_nokia-X7-8.1.jpg', '6GB | 128GB,6GB | 64GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '13000, 12000, 11000', NULL, NULL, '13 | 20 MP', 'Snapdragon 710', '3500mAh', NULL, NULL),
(378, 14, 28, 'Walton Primo RX8', '1628627931_Walton-Primo-RX8-image.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '9200', NULL, NULL, '16 | 32 MP', 'Mediatek', '4000mAh', NULL, NULL),
(379, 14, 28, 'Walton Primo RX8 mini', '1628628372_Walton-Primo-RX8-Mini.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '7500', NULL, NULL, '12 | 13 MP', 'Snapdragon 660', '3600mAh', NULL, NULL),
(380, 14, 28, 'Walton Primo RM4', '1628628582_Walton-Primo-RM4.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '6000', NULL, NULL, '13 | 8 MP', 'Mediatek', '5950mAh', NULL, NULL),
(381, 14, 28, 'Walton Primo S7 Pro', '1628628789_Walton-Primo-S7-Pro.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '11000', NULL, NULL, '48 | 16 MP', 'Mediatek', '3950mAh', NULL, NULL),
(382, 14, 28, 'Walton Primo S7', '1628629002_Walton-Primo-S7-new.jpg', '4GB | 32GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8000, 7000', NULL, NULL, '12 | 16 MP', 'Mediadtek', '3900mAh', NULL, NULL),
(383, 14, 28, 'Walton Primo RX7', '1628629183_Walton-Primo-RX7.jpg', '4GB | 32GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '16 | 13 MP', 'Mediatek', '3900mAh', NULL, NULL),
(384, 14, 28, 'Walton Primo R8', '1628629354_Walton-Primo-R8-image.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '5500', NULL, NULL, '13 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(385, 14, 25, 'Motorola Moto G5S Plus', '1628629943_motorola-moto-g5s-plus-1-removebg-preview.png', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '5000', NULL, NULL, '13 |8 MP', 'Snapdragon 625', '3000mAh', NULL, NULL),
(386, 14, 25, 'Motorola Moto G30', '1628630390_Motorola-Moto-G30-image.jpg', '6GB | 128GB,4GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '12000, 11500, 11000', NULL, NULL, '64 | 13 MP', 'Snapdragon 662', '5000mAh', NULL, NULL),
(387, 14, 25, 'Motorola Moto G10 Power', '1628630596_Motorola-Moto-G10-Power-image.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '9000', NULL, NULL, '48 | 8 MP', 'Snapdragon 460', '6000mAh', NULL, NULL),
(388, 14, 25, 'Motorola Moto G9 Play', '1628630909_Motorola-Moto-G9-Play.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '7500', NULL, NULL, '48 | 8 MP', 'Snapdragon 662', '5000mAh', NULL, NULL),
(389, 14, 25, 'Motorola Moto G8 Power Lite', '1628631110_Motorola-Moto-G8-Power-Lite.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '7500', NULL, NULL, '16 | 8 MP', 'Mediatek', '5000mAh', NULL, NULL),
(390, 14, 25, 'Motorola Moto G9 Plus', '1628631307_Motorola-Moto-G9-Plus.jpg', '6GB | 128GB', 'Dual', NULL, NULL, NULL, '14000', NULL, NULL, '64 | 16 MP', 'Snapdragon 730G', '5000mAh', NULL, NULL),
(391, 14, 25, 'Motorola One Action', '1628631511_Motorola-One-Action.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '7500', NULL, NULL, '12 | 12 MP', 'Exynos 9609', '3500mAh', NULL, NULL),
(392, 14, 25, 'Motorola One Power (P30 Note)', '1628631734_motorola-one-power-P30.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '16 | 12 MP', 'Snapdragon 636', '5000mAh', NULL, NULL),
(393, 14, 25, 'Motorola One (P30 Play)', '1628631983_motorola-one-p30-play.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '13 | 8 MP', 'Snapdragon 625', '3000mAh', NULL, NULL),
(394, 14, 25, 'Motorola One Vision', '1628632176_motorola-one-vision-0.jpg', '4GB | 128GB', 'Dual', NULL, NULL, NULL, '9000', NULL, NULL, '48 | 25 MP', 'Exynos 9609', '3500mAh', NULL, NULL),
(395, 14, 25, 'Motorola One Fusion+', '1628632404_motorola-one-fusion-plus-5.jpg', '6GB | 128GB ,4GB | 128GB', 'Dual', NULL, NULL, NULL, '13000, 12000', NULL, NULL, '64 | 16 MP', 'Snapdragon 730', '5000mAh', NULL, NULL),
(396, 14, 25, 'Motorola Razr 2019', '1628632667_Motorola-Razr-2019-black.jpg', '6GB | 128GB', 'eSIM', NULL, NULL, NULL, '57000', NULL, NULL, '16 | 5 MP', 'Snapdragon 710', '2510mAh', NULL, NULL),
(397, 14, 25, 'Motorola Razr 5G', '1628633254_Motorola-Razr-5G.jpg', '8GB | 256GB', 'eSIM', NULL, NULL, NULL, '80000', NULL, NULL, '48 | 20 MP', 'Snapdragon 765 5G', '2800mAh', NULL, NULL),
(398, 14, 25, 'Motorola Moto E7 Plus', '1628633492_Motorola-Moto-E7-Plus-image.jpg', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '7500', NULL, NULL, '48 | 8 MP', 'Snapdragon 460', '5000mAh', NULL, NULL),
(399, 14, 17, 'Realme C21', '1630926528_Realme-C21-image.jpg', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6500,6000', NULL, NULL, '13 | 5 MP', 'MediaTek', '5000 mAh', NULL, NULL),
(400, 14, 17, 'Realme C25', '1630926689_Realme-C25-image.jpg', '4GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '10500,10000', NULL, NULL, '13 | 8 MP', 'MediaTek', '6000 mAh', NULL, NULL),
(401, 14, 17, 'Realme C25s', '1630926761_Realme-C25-image (1).jpg', '4GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '9500,8800', NULL, NULL, '13 | 8 MP', 'Mediatek', '6000 mAh', NULL, NULL),
(402, 14, 17, 'Realme C20A', '1630926950_Realme-C20A-image.jpg', '2GB | 32GB', 'Dual', NULL, NULL, NULL, '6500', NULL, NULL, '8 | 5 MP', 'Mediatek', '5000 mAh', NULL, NULL),
(403, 14, 29, 'Others', '1636442961_GADGET.png', NULL, NULL, NULL, NULL, NULL, 'Any', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 14, 17, 'Realme Narzo 20A', '1637825861_narzo_20a-removebg-preview.png', '4GB | 64GB ,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7500, 6500', NULL, NULL, '12 | 8 MP', 'Snapdragon 665', '5000 mAh', NULL, NULL),
(409, 14, 17, 'Realme Narzo 30', '1637828757_image-removebg-preview (1).png', '6GB | 128GB,4GB | 128GB ,4GB | 64GB', 'Dual', NULL, NULL, NULL, '14000,13000,12800', NULL, NULL, '48 | 16 MP', 'MediaTek', '5000 mAh', NULL, NULL),
(410, 14, 17, 'Realme Narzo 30A', '1637831113_image-removebg-preview (2).png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '8000,7000', NULL, NULL, '13 | 8 MP', 'MediaTek', '6000 mAh', NULL, NULL),
(411, 14, 17, 'Realme 8 5G', '1637831433_image-removebg-preview (4).png', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '14500', NULL, NULL, '48 | 16 MP', 'MediaTek Dimensity 700 5G', '5000 mAh', NULL, NULL),
(412, 14, 17, 'Realme GT Master', '1637831691_image-removebg-preview.png', '8GB | 256GB  ,8GB | 128GB,6GB | 128GB', 'Dual', NULL, NULL, NULL, '22000,21000,20000', NULL, NULL, '64 | 32 MP', 'Snapdragon 778G', '4300 mAh', NULL, NULL),
(413, 14, 17, 'Realme C21', '1637831880_image-removebg-preview (1).png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '6500,6000', NULL, NULL, '13 | 5 MP', 'MediaTek', '5000 mAh', NULL, NULL),
(414, 14, 17, 'Realme C21Y', '1637832390_image-removebg-preview (2).png', '4GB | 64GB,3GB | 32GB', 'Dual', NULL, NULL, NULL, '7700,5700', NULL, NULL, '13 | 5 MP', 'Unisoc T610', '5000 mAh', NULL, NULL),
(415, 14, 17, 'Realme C25Y', '1637832635_image-removebg-preview.png', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '9000', NULL, NULL, '50 | 8 MP', 'Unisoc T610', '5000 mAh', NULL, NULL),
(416, 14, 20, 'Vivo V21 SE', '1637839892_v21se.png', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '17800', NULL, NULL, '48 | 32 MP', 'Snapdragon 720G', '4100 mAh', NULL, NULL),
(417, 14, 20, 'Vivo V21e', '1637839982_v21e.png', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '18000', NULL, NULL, '64 | 44 MP', 'Snapdragon 720G', '4000 mAh', NULL, NULL),
(418, 14, 20, 'Vivo Y21', '1637840174_image-removebg-preview.png', '4GB | 64GB', 'Dual', NULL, NULL, NULL, '9800', NULL, NULL, '13 | 8 MP', 'MediaTek', '5000 mAh', NULL, NULL),
(419, 14, 20, 'Vivo Y53s', '1637840342_image-removebg-preview (1).png', '8GB | 128GB', 'Dual', NULL, NULL, NULL, '15000', NULL, NULL, '64 | 16 MP', 'MediaTek', '5000 mAh', NULL, NULL),
(420, 14, 20, 'Vivo Y12a', '1637840483_image-removebg-preview.png', '3GB | 32GB', 'Dual', NULL, NULL, NULL, '8200', NULL, NULL, '13 | 8 MP', 'Snapdragon', '5000 mAh', NULL, NULL),
(421, 14, 20, 'Vivo X50 Pro 5G', '1637840795_image-removebg-preview.png', '12GB | 256GB', 'Dual', NULL, NULL, NULL, '45000', NULL, NULL, '50 | 32 MP', 'MediaTek Dimensity', '4450 mAh', NULL, NULL),
(422, 14, 16, 'Poco F3 GT', '1638169672_Samsung_M62-removebg-preview.png', '8GB | 256GB,8GB | 128GB,6GB | 128GGB', 'Dual', NULL, NULL, NULL, '26500, 25500, 25000', NULL, NULL, '64MP | 16MP', 'MediaTek Dimensity 1200', '5065 mAh', NULL, NULL),
(423, 14, 16, 'Poco M3 Pro 5G', '1638169991_poco_m3_pro_5G-removebg-preview.png', '6GB | 128GB,4GB | 64GB', 'Dual', NULL, NULL, NULL, '14200, 11500', NULL, NULL, '48MP | 8MP', 'MediaTek Dimensity 700 5G', '5000 mAh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `temporary_order_id` int(11) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 0,
  `delete_status` int(2) DEFAULT 0,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_mobile_categories`
--

CREATE TABLE `order_mobile_categories` (
  `id` int(11) NOT NULL,
  `session_id` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `ram_rom` varchar(255) DEFAULT NULL,
  `sim` varchar(255) DEFAULT NULL,
  `estimated_price` varchar(255) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `ex_emi_box_charger` varchar(256) DEFAULT 'NO',
  `ex_phone_problem` varchar(256) DEFAULT 'NO',
  `ex_parts_change` varchar(256) DEFAULT 'NO',
  `ex_issue_network` varchar(256) DEFAULT 'NO',
  `network_issue_short_notes` text DEFAULT 'N/A',
  `front_phone_image` varchar(256) DEFAULT NULL,
  `back_phone_image` varchar(256) DEFAULT NULL,
  `top_img` varchar(256) DEFAULT NULL,
  `bottom_img` varchar(256) DEFAULT NULL,
  `left_img` varchar(255) DEFAULT NULL,
  `right_img` varchar(256) DEFAULT NULL,
  `customer_division` varchar(256) DEFAULT NULL,
  `customer_address` varchar(256) DEFAULT NULL,
  `category_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_place_status` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `otp_varifiers`
--

CREATE TABLE `otp_varifiers` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `otp` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `area_code`, `phone`, `otp`, `email`, `password`, `address`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Demoa2z', '1857', '126452', NULL, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', 'House-39,Shataish', 1, '2021-01-17 04:03:10', '2021-01-20 19:31:05'),
(2, 'Demoa2z', '1857', '126451111', NULL, '01857126452@gmail.com', '202cb962ac59075b964b07152d234b70', 'House-39,Shataish', 1, '2021-01-18 12:39:59', NULL),
(3, 'Demoa2z 33', '1857', '01857126452', NULL, NULL, '698d51a19d8a121ce581499d7b701668', 'House-39,Shataish', 1, '2021-01-18 12:42:36', '2021-01-20 12:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `session_otp`
--

CREATE TABLE `session_otp` (
  `id` int(11) NOT NULL,
  `session_id` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `otp` int(11) NOT NULL,
  `temporary_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_otp`
--

INSERT INTO `session_otp` (`id`, `session_id`, `phone`, `otp`, `temporary_order_id`) VALUES
(273, 'Zyp55KdbnOndxtr8yQHGfXCaafiJq48W7ugeIfOe', '01857126452', 6794, 283),
(274, '68ulAYNbF9msxawTcUOedVJvCzUPPjmvVy3Mlmo9', '01843801109', 2112, 284),
(275, '0q53ce0byVfkttA4fM6JmOlTnYRM2TArPDPQ12Uf', '01843801109', 9577, 285),
(276, 'eu0ijraQ18tg8ncoIlWzZwQHtPyn9yVeLS5Jb8mb', '01843801109', 5305, 286),
(277, 'hlLOSqMBdMDyXjY5lLFkSo5mVuZpHiBhpjX1Cmib', '01857126452', 5121, 287),
(278, 'RP0IzIICTM8dYHww0sa4jk9TGLqGsyGFSfXSi0rN', '01710018079', 2712, 288),
(279, 'X0zbic166d6Av2dQxSOkWmznZNRyrn8zxVO8qEHv', '01843801109', 7342, 289),
(280, 'X4aYJkYuuVMiPdSj6yqQn2GQ6pkxJBNEz0m7sKxZ', '01843801109', 3315, 290),
(281, 'byAj9RJgRndxJJX60lxlf44NhIzamJ6lohW11xPI', '01843801109', 4744, 291),
(282, 'W2BpJUP2OQqkYG4xG4WZFocBZL57YA0v3qOOYlzJ', '01878408511', 7031, 292),
(283, '8hHDZ2Pk99Gzmf6nBdik2mvyH3RpjcrETmIIHTjd', '01710018079', 9845, 293),
(284, 'nOpmtlymjEk8dAPsyHeBK1OetvwEjqYtmSdDp9LU', '01710018079', 6340, 294),
(285, 'h2J9E4elLOIWcBHvZzGO1vLYUijGBXmxK23TcBL0', '01730956861', 4613, 295),
(286, 'hICzJn4HKmvG8BskqHvZzMDdjmMPsgSY0ekqkudc', '01843801109', 8603, 296),
(287, 'hICzJn4HKmvG8BskqHvZzMDdjmMPsgSY0ekqkudc', '01872791920', 3339, 297),
(288, 'ese6IvZrf0MMBMnRUhmVKSFNU0s5UT53H8ekECI7', '01710018079', 3996, 298),
(289, 'hICzJn4HKmvG8BskqHvZzMDdjmMPsgSY0ekqkudc', '01872791920', 2679, 299),
(290, 'r3pqTXEmcFfRa3kTAVIumrJmDDx0krulk0uKOiRE', '01689855123', 2450, 300),
(291, 'P7Zak3Vq3K2afn0gBdMjNlLKLeLf8kQxsoQG75kB', '01857126452', 4219, 301),
(292, 'P7Zak3Vq3K2afn0gBdMjNlLKLeLf8kQxsoQG75kB', '01773193256', 8320, 302),
(293, 'P7Zak3Vq3K2afn0gBdMjNlLKLeLf8kQxsoQG75kB', '01773193256', 2816, 303),
(294, '8GBjNnE6nRLftOJBIiA8JXKXMesxGe4ZTPr1jiyv', '01857126452', 8133, 304),
(295, 'jO3I0jlzWmA2ErVKXlewNPIyyk2xguCP1zHsHBwj', '01718991041', 6016, 305),
(296, 'jO3I0jlzWmA2ErVKXlewNPIyyk2xguCP1zHsHBwj', '01843801109', 1458, 306),
(297, 'nQ3GdqF5MD91LZkI1kc0eqVGvkkUROctSxYgWcLR', '01710018079', 3161, 307),
(298, 'nQ3GdqF5MD91LZkI1kc0eqVGvkkUROctSxYgWcLR', '01710018079', 7410, 308),
(299, 'LOkoMDRdACFnRG2d81HViDEpUllKEV8s2MkMB6pg', '01872791920', 7520, 309),
(300, 'Fiy2trikiO1AdajSm9ianM5GhEpgzT9KAaEuzRtr', '01939731798', 5318, 310),
(301, 'RxOCGIeWIMmpnU345zgfrMyDcQpLSYt0DeGve3U8', '01956249527', 6466, 311),
(302, '4lPslTiA1OTaZ7Ag88XwJ424oToc6FTdHmuedCrY', '01855766399', 5968, 312),
(303, 'GFkHigePJFLaIrocQbhHbYh89qOMyvE4yFNsJnXl', '01872791920', 5169, 313),
(304, 'IfZNp7Jfbr7lodU2aoJHqqRr8y76YjQwM3wkqHrG', '01633526574', 6234, 314),
(305, 'qMHpl6hKSv9XqBQulkAEnCc1hv1MJTisBMgsdIWg', '01939731798', 2415, 315),
(306, 'WRuUEFbjj1klg7vffw1ueoRU1BtAFgR5c43oFkmi', '01752715016', 5542, 316),
(307, 'pIiA0WCHirVptebJ5eCG175XrOHAR17QcX3hIy51', '01720676101', 5837, 317),
(308, 'fI1Kk7dhhM4fyzOTSmptQn9hye4RyjVr3vG7Xnja', '01931599151', 2443, 318),
(309, 'iRuLG9DJXYuXLmUS2knwbZVjMiog1DAK3I57lT40', '01743901199', 9812, 319),
(310, 'iRuLG9DJXYuXLmUS2knwbZVjMiog1DAK3I57lT40', '01743901199', 6993, 320),
(311, 'iRuLG9DJXYuXLmUS2knwbZVjMiog1DAK3I57lT40', '01743901199', 7685, 321),
(312, 'fPXNsIemYsUXNiaYfooRuAJvqP6NMqwb9xw6uxYZ', '01886629661', 7876, 322),
(313, 'oEr3zTqZxYWcHjRsn7j9Ha6oghbiIo7QjrgowN8K', '01760356298', 8828, 323),
(314, 'fpPXg2fYzVdzTpoL2PNssvuSkevUMt7YLmBcr40X', '01766593840', 2437, 324),
(315, '4CVXUSCAnZLkO8y7eAJZn57HONkSxP98X0z2SODi', '01827379464', 3888, 325),
(316, 'T8UKkI67zqmj6q9fkmITpchcmObFyqueByW1BY05', '01843801109', 8070, 326),
(317, 'nEPkeOZWlwOlsbqCTliT6ZKY2KXTQNgbBrQGAdZH', '01851412777', 1615, 327),
(318, 'rnwVm79MHByuwQqRBlbTibStGOzrGvLWEpBN43xN', '01633526574', 1498, 328),
(319, 'oUds5gqFlU2R0PmvtB4TJq1rhwrjBuvJjs4FEPxn', '01710018079', 4220, 329),
(320, 'CyIXSqDQ2MNpbDcZX1NGcbAKmifCQUutQPv6jeUJ', '01734649582', 6931, 330),
(321, '3D8RaZvazCNTOAS7YTjf5oPP1q9N02xRCJR1szzV', '01872791920', 9276, 331),
(322, 'xUodrPpeBdB2dHwHWUpXFW12JMOrTpoO3PoDfwul', '01708158000', 6876, 332),
(323, 'IR0PdcQS3MEJH8HN8OU9qaU6DwTkQLSSjWLCVamZ', '01689855123', 4396, 333),
(324, 'feCaEpzRE0QtlIbYI5c32rVu0UfnufXUBvRtuSXR', '01708158000', 2835, 334),
(325, 'uRKCVLr8buqofUN5VcCp7KA4DnkDcxznNmeAB4Li', '01633526574', 5960, 335),
(326, 'gDGNAZY6rmgZA7Tc7piNpjtXhuQwUtGolvgCsRVe', '01782794833', 5132, 336),
(327, 'nk16NNzf5ZhagX5UObhS5YsdVwH5cTMG1Lwdf1ML', '01929520328', 3370, 337),
(328, '2njE9y0HWP8f0U81Qh8FYV6IWVIsWLUiVbzzlJtH', '01777333726', 1571, 338),
(329, 'ezzQ3Op8Kw7Sx4n6pIyW6PlSHFH3VRtKemfczpvD', '01931599151', 8863, 339),
(330, 'RD4D1KozKi2Ra11MIQ8KBzygOJCDjcc2KmzSyv65', '01872791920', 9026, 340),
(331, 'RD4D1KozKi2Ra11MIQ8KBzygOJCDjcc2KmzSyv65', '01872791920', 9418, 341),
(332, 'e6slRrdsa6kQNYfPHl4BlLWzzxhZTloTAbczaxYo', '01633526574', 9991, 342),
(333, 'pn3mpmEsCjEAIqQ1u2FDkvnhNtzdKFpXmFKFjaMi', '01759154064', 6945, 343),
(334, '9UfLO2zQGlx54u8atAtkTEAbAktsDgxq31YvuR80', '01633526574', 8418, 344),
(335, 'CxEg3nGJ0eMCUPc8NFIbkQHZ0kYBvhs7as24KYlp', '01939731798', 5152, 345),
(336, '8mMufO3XsWds9N1DeNuH3O5p0ZlAIql5KcIvrwWP', '01779388910', 7559, 346),
(337, 'yqZLloCbKNTxKTnMSBQ4uYyyWBWPpcNeBzOalyhN', '01799370952', 5981, 347),
(338, 'LlzhnHHXFfO2TqJYn0ivLeKA9VLth7qvHv1rJdpb', '01626087433', 7962, 348),
(339, 'YEWONXgbK37UPMxCGpXsIL0Mixfqa3GWpawxJJeN', '01633526574', 1756, 349),
(340, 'YEWONXgbK37UPMxCGpXsIL0Mixfqa3GWpawxJJeN', '01633526574', 9417, 350),
(341, 'ormojB0CT4LdFJDNFK5JzdmQYlbnXdh76mxfQfir', '01688106333', 2228, 351),
(342, 'jpuomRTQ4Uqc5fokdAMlIQYU7L1xL348AqDlkdj9', '01762918091', 6004, 352),
(343, 'jpuomRTQ4Uqc5fokdAMlIQYU7L1xL348AqDlkdj9', '01762918091', 2789, 353),
(344, 'nFaH1RhkraTakLICAYONh7Stn0oW1SIu38HA0gxg', '01856740878', 9032, 354),
(345, 'nFaH1RhkraTakLICAYONh7Stn0oW1SIu38HA0gxg', '01856740878', 4976, 355),
(346, 'K3I8YOoigph7wiSLat0xg8hjcyINQTmhztencc0h', '01521308042', 9053, 356),
(347, 'VTu9157J42BzUEMVgFK6HTppctJbajGpfjpUXmVV', '01914452644', 8309, 357),
(348, 'nCPvn7QsoHgLxGdIhJ9VPNO5BTM80tfHvf2sVNpg', '01300836684', 6961, 358),
(349, 'O9LoNjqWwIx88Fifep72oSAEWc8hFdvbpy1S0BH9', '01314645757', 2053, 359),
(350, 'qWzWMy46iV4E9YYET0BEOYRyXbKNDw1f97WAxBBo', '01850679952', 6919, 360),
(351, 'PJqIDp3q2YVELTkJpUsIDTyRM3hRDH3gHdbybMh8', '01689855123', 2528, 361),
(352, 'kNzWnowB27pzwCDApv4H9sY5G46rB7hisFiMbHhU', '01872791920', 2810, 362),
(353, 'gjps5M5LZb9WnmgXrGjCveJzmwZowQn5bpOkJAV7', '01931599151', 7171, 363),
(354, 'hokrnyMc04G6zNw6NZCtswwyj3BBnLgXntyCEq9W', '01752715016', 3655, 364),
(355, 'DIBZYPR67iZA8vtMkuIQGIf5pyJtlb60QflvkJFf', '01676916618', 5811, 365),
(356, 'xTB2KbLEHR2Yv0h2XEE59GLC00nhVexb6DkhjPHE', '01939731798', 7633, 366),
(357, 'iyJCE6ztQWCzdjALtrp8Y6cot4RY5dM6Zlc4l7jq', '01708888810', 8235, 367),
(358, 'CzCqx5pG9mywGFaauWNFes3fUpU8NG6d3OO6avCQ', '01760356298', 3441, 368),
(359, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 1047, 369),
(360, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 2641, 370),
(361, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 4861, 371),
(362, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 2975, 372),
(363, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 1889, 373),
(364, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 3100, 374),
(365, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 1991, 375),
(366, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 7867, 376),
(367, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 2419, 377),
(368, 'sVneEZmICwEK4tyFtrtWipC4sAt5sVQW5tzvQdV1', '01886388910', 3488, 378),
(369, 'N1lnXQnmJ27rToeibHL54Y3L6vDPDNRuOrgjHpXt', '01710018079', 9066, 379),
(370, 'N1lnXQnmJ27rToeibHL54Y3L6vDPDNRuOrgjHpXt', '01736871338', 4571, 380),
(371, 'tGiPucTGaShWMnKwusxNvCzyjUfdTd2FnU8YKAUY', '01884374435', 1112, 381),
(372, 'AlftRXQlw5H2UzB1SoIMwdGbliU2nXvLkkV7e9Ks', '01743901199', 2849, 382),
(373, 'XPK61LRoJ9TjuT3WG1MrqW1QfwEbe6rcBMS5zgnq', '01628180030', 2928, 383),
(374, 'O6OEFXfNLBBgFYJB04Gb9yzUWECXYPzj7KJCPzeN', '01877158615', 4453, 384),
(375, 'O6OEFXfNLBBgFYJB04Gb9yzUWECXYPzj7KJCPzeN', '01863585911', 9252, 385),
(376, 'O6OEFXfNLBBgFYJB04Gb9yzUWECXYPzj7KJCPzeN', '01863585944', 2244, 386),
(377, 'DYkPl68PokUnG4hDP4jLYSe5OLhhbxfIR4cXy7GR', '01837680100', 5797, 387),
(378, 'W4XVWE3Gf7fMAcL8PQXziE13eKnZoEQBjkDQ6zfj', '01931599151', 9959, 388),
(379, 'VltmT5AwXJxvvVfJpHHoajrHsSH6JLQqSc7MnJyq', '01626267711', 4295, 389),
(380, 'juqh3fyprftYsh05ieNiTz3Im0kBhYleOERCIx2Y', '01872791920', 9206, 390),
(381, 'juqh3fyprftYsh05ieNiTz3Im0kBhYleOERCIx2Y', '01322614020', 8249, 391),
(382, 'PCntVDzzEM5eQy55UQH4G70s4WPHplZeshuM8nBJ', '01307128006', 5011, 392),
(383, 'PCntVDzzEM5eQy55UQH4G70s4WPHplZeshuM8nBJ', '01307128006', 6936, 393),
(384, 'yaAO089ddHDxNf1cDEbTB9wkqaRngKmM4unflFpH', '01567954144', 9016, 394),
(385, 'lRKcAM1rAiaijj4sa7V3EuyfXpOeEe8FoyG64mg5', '01515254889', 6365, 395),
(386, 'lRKcAM1rAiaijj4sa7V3EuyfXpOeEe8FoyG64mg5', '01515254889', 6571, 396),
(387, '6D5Zd1P1BI4QTl8FX23goAW3NvooG2zJbC07d7Ag', '01870436199', 5945, 397),
(388, 'WNEahKy1Op6NjR5jmuvRhO7qeDHwt5zmgQPgMHLS', '01789646556', 7947, 398),
(389, '3YZWOw1OSYiZHB2mTOmudH9WL5mZci3ZVjqlKZ7D', '01571176840', 5612, 399),
(390, '4SWXsjuPPrT1vRbp9JpFhfCFjJJbsjFrFKKGb8wz', '01796094601', 3311, 400),
(391, 'yPjQjgeXF6mlXg118YIorbLWGml31pRKxAWbLdlO', '01952023958', 6830, 401),
(392, 'MLmpzQFLFvWEjfIKNiHaqAuHaxI2tgxhYipvGy7M', '01949839081', 9145, 402),
(393, 'cmwJbYiUwwpjDyGF0VJOEATBocorE0wmbAT2Hx85', '01981875239', 7322, 403),
(394, 'KYXVKXFkEA3cuoHUk5x5324AwqBxZ37g2Ai3rMf8', '01955299251', 5430, 404),
(395, 'Gdzf9yncKfKh8s9jkXa7nB8qHepRsyQjLg2zhs3B', '01860564648', 1417, 405),
(396, 'avhpJRjHzhoFRGgLCAkCfRAEHHoXEFJJBYnIkEeA', '01913983154', 5891, 406),
(397, 'avhpJRjHzhoFRGgLCAkCfRAEHHoXEFJJBYnIkEeA', '01913983454', 3702, 407),
(398, 'dVVqOVMMJvTVWuJ7im5fuTrWZaz23nkJN5qyNiUh', '01840398022', 6785, 408),
(399, 'Midjf9oTddZOZWokyYhpUPe0bBpZCMm4PAjHaIms', '01612255244', 6183, 409),
(400, 'iJiOuqMzOwxyNElENv8Q55su3Du3eoC51YytkVZp', '01732321665', 3039, 410),
(401, 'qAtJQdNi7M9xFFTWSpAWVz70XYv4Z2BMZA0qT1b0', '01718507939', 4422, 411),
(402, 'eKake4UoUjB2cNIl06yahg2rxiVWi6bS2KygvWcp', '01585480222', 6229, 412),
(403, 'sLLiIlGBn0RpdzTEZPzzekLEvgFJy3H8ygLxzZ6N', '01646962206', 7821, 413),
(404, 'ouf8rEZfCwdZmLy6gN1A3g5sSRzK6sxu6qRDVTjS', '01318330594', 6687, 414),
(405, 'jtLPZQoSxCf6X7qgmecA9T2RNrxx7rtTC42WZySg', '01318330594', 8409, 415),
(406, 'OYW8jGy2Fszx5Fdsn1KweVjq22XV8FbsQTCRbB0P', '01815521942', 3783, 416),
(407, 'Va4EG1K8xaSJX2QEvVlFq9uzhrOJ1kbLA5YSam7W', '01782827751', 2271, 417),
(408, 'qqZ1ZZZD0JRquBlVrT8YpPl73JQv83aFvhaf8UbF', '01613777713', 5491, 418),
(409, 'eNrh8k3vNP2wScck0erwLjPXYnlLyHDxxgKPvbpq', '01837470222', 4518, 419),
(410, '6cCShigTpj8nJlnlUrHDFuolMLgm4LN8cmhpZNnH', '01621106466', 8400, 420),
(411, 'PxDveiPFyo7MihhevfdAiC9P8DGeb1jBkaeqNkH2', '01621999470', 4491, 421),
(412, 'gwXqwi5Z4HxpT8vEpypKqlSEMcvqe6BWLnxZfbCQ', '01679116335', 9219, 422),
(413, 'y0ZY7kBTKd7nsoZwDFwmARxIWU4c2qezwOuaP8fw', '01739612035', 6274, 423),
(414, 'EICqJSjS8cgX4IYhrx5vQ2PVtwR3z7nAgd9WNsui', '01780802011', 1527, 424),
(415, '223n4Xugcjk6EYsaGoAoDEbDfjm2Sb7rHzB8YsU3', '01955299251', 1348, 425),
(416, '223n4Xugcjk6EYsaGoAoDEbDfjm2Sb7rHzB8YsU3', '01955299251', 7458, 426),
(417, 'gnClyOujzeL021jK0jX70mPbBRPcwvbjnWNr9fSL', '01628298803', 4547, 427),
(418, 'umfXqa7EG1ShpkP2oVU36spCtP4UkM0QQ1jkh1qT', '01624342831', 2784, 428),
(419, '0uMwWAITR2hOBptY6O3wAdiImj21EkvHv0WI1Vwo', '01869731032', 7299, 429),
(420, 'glRbe21xbmcKZCt19hrgEvuvjmdzO2Nf6Ur94RWI', '01755036310', 6402, 430),
(421, 'QrkoITCRbp4KNxPz3Z6q59coSLvA3Kk3Ee89Wxml', '01816184078', 9053, 431),
(422, 'kGkQSAwnn9jG49qH5vbVcoiPvJfMcJ4GuiqF7nsR', '01954398026', 5067, 432),
(423, 'r8jtqRqhZ5BVaVfoVWE0yCcCeZIVz14oAcV1CFJz', '01710106663', 5267, 433),
(424, 'VvdkJFj7SIkUMbIjO1ZFG9LPDnuSGjYtSZa2KA71', '01754222449', 1270, 434),
(425, 'tVnqeUl4vPBH2wt4uQKwxvx4IKGiZvEF6tjH6DB0', '01752216142', 3223, 435),
(426, 'sJ9pmmMMjnyxWGiMnUineXTLQg6QjvZhQi00rbyy', '01857126452', 4257, 436),
(427, 'm7UYZFo3scFL7uZOSORlVJVYCm3WlKSvcGqdwUr9', '01857126452', 6316, 437),
(428, 'm7UYZFo3scFL7uZOSORlVJVYCm3WlKSvcGqdwUr9', '01857126452', 3911, 438),
(429, 'm7UYZFo3scFL7uZOSORlVJVYCm3WlKSvcGqdwUr9', '01857126452', 1604, 439),
(430, 'm7UYZFo3scFL7uZOSORlVJVYCm3WlKSvcGqdwUr9', '01857126452', 9522, 440),
(431, '3HpEJNu4WQeIBhv93yvOXJEm3MWroGVGHcxzw7yg', '01857126452', 6896, 441),
(432, 'FpY2jZtWzMYC79JZjbAHbO3pCRatnfbHQ5GvIICt', '01857126452', 7824, 442),
(433, 'FpY2jZtWzMYC79JZjbAHbO3pCRatnfbHQ5GvIICt', '01857126452', 6566, 443);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_categories`
--
ALTER TABLE `mobile_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_mobile_categories`
--
ALTER TABLE `order_mobile_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_varifiers`
--
ALTER TABLE `otp_varifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_otp`
--
ALTER TABLE `session_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mobile_categories`
--
ALTER TABLE `mobile_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `order_mobile_categories`
--
ALTER TABLE `order_mobile_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `otp_varifiers`
--
ALTER TABLE `otp_varifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session_otp`
--
ALTER TABLE `session_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
