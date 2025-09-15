-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 15, 2025 at 09:18 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `predavanje6_vezba`
--
CREATE DATABASE IF NOT EXISTS `predavanje6_vezba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `predavanje6_vezba`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-bborislavilic@gmail.com|127.0.0.1', 'i:1;', 1757941656),
('laravel-cache-bborislavilic@gmail.com|127.0.0.1:timer', 'i:1757941656;', 1757941656);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sabac', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(2, 'East Krystina', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(3, 'Hintzmouth', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(4, 'Shawnville', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(5, 'Margarettebury', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(6, 'Lake Nelsmouth', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(7, 'Lednerview', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(8, 'Lake Oswaldhaven', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(9, 'West Austinfurt', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(10, 'West Edwardbury', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(11, 'Port Maximillian', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(12, 'Ursulatown', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(13, 'Lake Elinore', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(14, 'Kylerbury', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(15, 'South Mariana', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(16, 'Lake Lelaville', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(17, 'Dickinsonside', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(18, 'Port Janet', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(19, 'Meredithton', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(20, 'Vincenzachester', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(21, 'Tiffanyberg', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(22, 'North Izabellaville', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(23, 'Port Russellview', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(24, 'Runolfsdottirbury', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(25, 'Lednerside', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(26, 'Beertown', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(27, 'Coleberg', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(28, 'South Liam', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(29, 'South Hillary', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(30, 'Osinskibury', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(31, 'Alexischester', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(32, 'Madelynnmouth', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(33, 'South Talonland', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(34, 'Lake Hertha', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(35, 'Bennybury', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(36, 'East Torrance', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(37, 'South Micaela', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(38, 'East Otto', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(39, 'Port Herthaside', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(40, 'Lake Ottis', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(41, 'Helgahaven', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(42, 'New Alycia', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(43, 'North Lydahaven', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(44, 'Micaelamouth', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(45, 'Kaylahmouth', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(46, 'Port Guillermoland', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(47, 'Urielport', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(48, 'Port Jedport', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(49, 'West Josie', '2025-08-26 04:16:40', '2025-08-26 04:16:40'),
(50, 'Carrollview', '2025-08-26 04:16:40', '2025-08-26 04:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forecasts`
--

DROP TABLE IF EXISTS `forecasts`;
CREATE TABLE IF NOT EXISTS `forecasts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_id` bigint UNSIGNED NOT NULL,
  `temperature` double NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weather_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sunny',
  `probabbility` smallint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forecasts_city_id_date_unique` (`city_id`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecasts`
--

INSERT INTO `forecasts` (`id`, `city_id`, `temperature`, `date`, `created_at`, `updated_at`, `weather_type`, `probabbility`) VALUES
(1, 1, -23, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 65),
(2, 1, -26, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 87),
(3, 1, -30, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(4, 1, -28, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(5, 1, -27, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 6),
(6, 2, 8, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(7, 2, 3, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 63),
(8, 2, 2, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 37),
(9, 2, 4, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 91),
(10, 2, 4, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 30),
(11, 3, 48, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 2),
(12, 3, 50, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 55),
(13, 3, 54, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 75),
(14, 3, 50, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 7),
(15, 3, 49, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 94),
(16, 4, -22, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 25),
(17, 4, -21, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 66),
(18, 4, -21, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 87),
(19, 4, -26, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(20, 4, -28, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 69),
(21, 5, 31, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 79),
(22, 5, 33, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 39),
(23, 5, 28, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 13),
(24, 5, 31, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 51),
(25, 5, 27, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 52),
(26, 6, 49, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(27, 6, 54, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 63),
(28, 6, 58, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 73),
(29, 6, 61, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 1),
(30, 6, 58, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 52),
(31, 7, -27, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 79),
(32, 7, -22, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 81),
(33, 7, -18, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 81),
(34, 7, -18, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 68),
(35, 7, -20, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 5),
(36, 8, -24, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 1),
(37, 8, -28, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 19),
(38, 8, -24, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 17),
(39, 8, -28, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 25),
(40, 8, -26, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 39),
(41, 9, 13, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(42, 9, 16, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 49),
(43, 9, 21, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(44, 9, 19, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(45, 9, 19, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(46, 10, -25, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 17),
(47, 10, -25, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 57),
(48, 10, -27, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(49, 10, -24, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 96),
(50, 10, -27, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(51, 11, 18, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 46),
(52, 11, 19, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(53, 11, 22, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 67),
(54, 11, 24, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 23),
(55, 11, 22, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 29),
(56, 12, -6, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 94),
(57, 12, -4, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 18),
(58, 12, -7, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 15),
(59, 12, -10, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 1),
(60, 12, -6, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 56),
(61, 13, -10, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 34),
(62, 13, -8, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(63, 13, -3, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 47),
(64, 13, 1, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 4),
(65, 13, 0, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(66, 14, -38, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 28),
(67, 14, -33, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 19),
(68, 14, -30, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 68),
(69, 14, -32, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 86),
(70, 14, -33, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 34),
(71, 15, 12, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 5),
(72, 15, 10, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 47),
(73, 15, 12, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 63),
(74, 15, 16, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 43),
(75, 15, 15, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(76, 16, -32, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(77, 16, -27, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(78, 16, -27, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 45),
(79, 16, -22, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 83),
(80, 16, -22, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 3),
(81, 17, -11, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 19),
(82, 17, -7, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 7),
(83, 17, -4, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 57),
(84, 17, -8, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(85, 17, -8, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(86, 18, 15, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 36),
(87, 18, 12, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 79),
(88, 18, 15, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 31),
(89, 18, 10, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(90, 18, 7, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 13),
(91, 19, -8, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 6),
(92, 19, -6, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 52),
(93, 19, -3, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 79),
(94, 19, -8, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 98),
(95, 19, -4, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 32),
(96, 20, -5, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 93),
(97, 20, -9, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 16),
(98, 20, -14, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 15),
(99, 20, -19, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 82),
(100, 20, -24, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 15),
(101, 21, 42, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 32),
(102, 21, 44, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 62),
(103, 21, 43, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 50),
(104, 21, 40, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(105, 21, 36, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 43),
(106, 22, -32, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 94),
(107, 22, -36, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 29),
(108, 22, -34, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(109, 22, -29, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(110, 22, -30, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(111, 23, 8, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 49),
(112, 23, 6, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(113, 23, 1, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 51),
(114, 23, 4, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 64),
(115, 23, 0, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(116, 24, -6, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 85),
(117, 24, -1, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(118, 24, 3, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 37),
(119, 24, 6, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(120, 24, 2, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 86),
(121, 25, -34, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 31),
(122, 25, -31, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 95),
(123, 25, -35, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 98),
(124, 25, -35, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 73),
(125, 25, -40, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(126, 26, 10, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 83),
(127, 26, 7, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 22),
(128, 26, 3, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 50),
(129, 26, 3, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 36),
(130, 26, 3, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 37),
(131, 27, -4, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 3),
(132, 27, -9, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 48),
(133, 27, -12, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(134, 27, -15, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 66),
(135, 27, -15, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 93),
(136, 28, -14, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 41),
(137, 28, -11, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 21),
(138, 28, -12, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 89),
(139, 28, -13, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 61),
(140, 28, -13, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 43),
(141, 29, -16, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(142, 29, -16, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 83),
(143, 29, -12, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(144, 29, -12, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(145, 29, -14, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(146, 30, -1, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(147, 30, 0, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 96),
(148, 30, -3, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(149, 30, -4, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 21),
(150, 30, -2, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 38),
(151, 31, -20, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 67),
(152, 31, -20, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 39),
(153, 31, -15, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 3),
(154, 31, -20, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(155, 31, -24, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 15),
(156, 32, -25, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 39),
(157, 32, -22, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 57),
(158, 32, -24, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 8),
(159, 32, -22, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 83),
(160, 32, -26, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 80),
(161, 33, 11, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 40),
(162, 33, 13, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(163, 33, 9, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(164, 33, 7, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 57),
(165, 33, 10, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 49),
(166, 34, 1, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 18),
(167, 34, 4, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(168, 34, 3, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 45),
(169, 34, 3, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 21),
(170, 34, 0, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 29),
(171, 35, -19, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 99),
(172, 35, -16, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 14),
(173, 35, -13, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 54),
(174, 35, -9, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 95),
(175, 35, -11, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 1),
(176, 36, 45, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 10),
(177, 36, 49, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 83),
(178, 36, 52, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'cloudy', 1),
(179, 36, 48, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 35),
(180, 36, 45, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(181, 37, 18, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(182, 37, 20, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 64),
(183, 37, 16, '2025-09-17', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'rainy', 79),
(184, 37, 12, '2025-09-18', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 23),
(185, 37, 8, '2025-09-19', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(186, 38, -8, '2025-09-15', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'sunny', NULL),
(187, 38, -6, '2025-09-16', '2025-09-15 18:37:34', '2025-09-15 18:37:34', 'snowy', 34),
(188, 38, -9, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 77),
(189, 38, -11, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 97),
(190, 38, -16, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 85),
(191, 39, -50, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 69),
(192, 39, -47, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(193, 39, -50, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(194, 39, -55, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(195, 39, -50, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 32),
(196, 40, 45, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(197, 40, 49, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 50),
(198, 40, 50, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 75),
(199, 40, 52, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 20),
(200, 40, 55, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(201, 41, -1, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 26),
(202, 41, 1, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 58),
(203, 41, -4, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 8),
(204, 41, -2, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 92),
(205, 41, -7, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 57),
(206, 42, 35, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 81),
(207, 42, 35, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 92),
(208, 42, 31, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(209, 42, 32, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 48),
(210, 42, 28, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 46),
(211, 43, -27, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 53),
(212, 43, -28, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 29),
(213, 43, -24, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 61),
(214, 43, -28, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 84),
(215, 43, -26, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 65),
(216, 44, 1, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 33),
(217, 44, 6, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 86),
(218, 44, 2, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 42),
(219, 44, -1, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 99),
(220, 44, 3, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 46),
(221, 45, 2, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 37),
(222, 45, -3, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(223, 45, -8, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 56),
(224, 45, -9, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 86),
(225, 45, -7, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(226, 46, 4, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 82),
(227, 46, 1, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 64),
(228, 46, 2, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(229, 46, 7, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 56),
(230, 46, 10, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 93),
(231, 47, -16, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(232, 47, -17, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 96),
(233, 47, -12, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 20),
(234, 47, -9, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(235, 47, -11, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 18),
(236, 48, 17, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(237, 48, 12, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'snowy', 65),
(238, 48, 10, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 6),
(239, 48, 12, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 58),
(240, 48, 15, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 44),
(241, 49, 27, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(242, 49, 23, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(243, 49, 25, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 83),
(244, 49, 27, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 16),
(245, 49, 27, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(246, 50, -50, '2025-09-15', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(247, 50, -50, '2025-09-16', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 36),
(248, 50, -55, '2025-09-17', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'rainy', 30),
(249, 50, -55, '2025-09-18', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'sunny', NULL),
(250, 50, -50, '2025-09-19', '2025-09-15 18:37:35', '2025-09-15 18:37:35', 'cloudy', 49);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_19_154137_create_ocena_table', 1),
(5, '2025_07_29_053809_add_user_id_to_ocene', 1),
(6, '2025_07_29_061430_add_role_to_users', 1),
(7, '2025_07_29_062220_create_products_table', 1),
(8, '2025_07_30_063226_create_contacts_table', 1),
(9, '2025_08_01_091259_create_students_table', 1),
(10, '2025_08_01_094721_add_year_of_start_to_students', 1),
(11, '2025_08_04_114442_create_items_table', 1),
(12, '2025_08_17_185545_create_cities_table', 1),
(13, '2025_08_17_195347_create_forecasts_table', 1),
(14, '2025_08_17_211940_create_weather_table', 1),
(15, '2025_08_26_053942_add_weather_type_and_probabbility_to_forecasts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ocena`
--

DROP TABLE IF EXISTS `ocena`;
CREATE TABLE IF NOT EXISTS `ocena` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `predmet` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocena` int NOT NULL,
  `profesor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ocena_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VsuJuggRLwmq9EA6vrCUqK677KASnoCNMgTQgHG6', 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieENwdWJFV3NtYlJ3WWtNVEhYVGFNeTZqZTVKUVB1VnpHUm55RTF5ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3JlY2FzdC9zYWJhYyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjUzO30=', 1757968844),
('wakxX22tu9ohUUf8uY4XmyQUPC23Mq9SPwzbQsTU', 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFRYRnlHaFFrTGFFQUVmNEFqN0dIN0ZLZGlpamtHa2dRTkdZazFLUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjUzO30=', 1757963868);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noIndex` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Test User', 'test@example.com', '2025-08-26 04:16:41', '$2y$12$uQX/MPWFUjeWMxz6a9DuPeT5zTQTGacQLV8b4vDS1GH8rb2CW2SsG', 'vTZ86cmziU', '2025-08-26 04:16:41', '2025-08-26 04:16:41', 'user'),
(2, 'Borislav Ilic', 'bokaco@gmail.com', NULL, '$2y$12$loAnsBtfpe9jsi3mEaHbcOrMJkhL1Y3JwGpjItXd5zp/i5VKCggjC', NULL, '2025-08-26 04:26:35', '2025-08-26 04:26:35', 'admin'),
(3, 'Paul Weber', 'iwindler@hotmail.com', NULL, '$2y$12$oEdEdjISnbu/QKWayJ0l0.Y6WFNk2L.N/EwmKFpk8jZm0fT2aZb9O', NULL, '2025-08-26 04:26:50', '2025-08-26 04:26:50', 'user'),
(4, 'Eunice Littel', 'hirthe.colleen@williamson.com', NULL, '$2y$12$tVXqoWn0ASNByIiOfhX1PuuRbUoxBRD6zFwaEezxmGw71aBHyhR6i', NULL, '2025-08-26 04:26:50', '2025-08-26 04:26:50', 'user'),
(5, 'Stephon Smitham', 'kohler.wellington@hotmail.com', NULL, '$2y$12$gZjyp.RKIT2AJQsiPKG69OaqaSlAbuAW5zD2gexFE/DAaSAVgTxtC', NULL, '2025-08-26 04:26:50', '2025-08-26 04:26:50', 'user'),
(6, 'Mark Gaylord', 'bogisich.dee@gutmann.org', NULL, '$2y$12$uueGlLF.o1ZKnPmZgp4ZouGS.10ZavVSngdnNtd5YG/6xrPUJH3Ru', NULL, '2025-08-26 04:26:50', '2025-08-26 04:26:50', 'user'),
(7, 'Larue Jacobi DDS', 'ckessler@kub.biz', NULL, '$2y$12$qV/bTiQlDbzpysrw01af8.H4mywU9HkriAtaSy61FE1UR2/nmLJTC', NULL, '2025-08-26 04:26:50', '2025-08-26 04:26:50', 'user'),
(8, 'Dasia Pfannerstill', 'lucious57@dicki.net', NULL, '$2y$12$m/uMNidctOVtnOS6FDI1fep/o1ezSmTWyV5/HRaKjdc1Ho6YXWWyK', NULL, '2025-08-26 04:26:51', '2025-08-26 04:26:51', 'user'),
(9, 'Antone Borer', 'mmaggio@langworth.org', NULL, '$2y$12$ezzavq3lGS96mAm/K93/Iuh5K37JyKa7NAReGnuFPjQdLhPCTddmm', NULL, '2025-08-26 04:26:51', '2025-08-26 04:26:51', 'user'),
(10, 'Tyrel Schowalter', 'aurelio26@okeefe.com', NULL, '$2y$12$fyTP4RwPf/gEAyRZFyyAUuyMMloc7Wgix8PRYWCNnoVITsHPQ2vQ2', NULL, '2025-08-26 04:26:51', '2025-08-26 04:26:51', 'user'),
(11, 'Jason Okuneva MD', 'sbogisich@gaylord.biz', NULL, '$2y$12$mdr/zbnZ78nlp88WnMOSOuaf2xyeoXEXNWD4jnURIRSykaoDmcKhW', NULL, '2025-08-26 04:26:51', '2025-08-26 04:26:51', 'user'),
(12, 'Maud Maggio', 'mann.dudley@bergstrom.com', NULL, '$2y$12$i/b7YY8zInV9VyLzMSoCrewS23kOyGVIqakEEGdK6r3/2bMJaq.Pi', NULL, '2025-08-26 04:26:52', '2025-08-26 04:26:52', 'user'),
(13, 'Kip Reilly', 'kerluke.layla@lueilwitz.com', NULL, '$2y$12$KVJwxF0pShFxVLcuiYxYUOrfn0Dc0XCRTpi6GUqaaDbzrUXUqlGm2', NULL, '2025-08-26 04:26:52', '2025-08-26 04:26:52', 'user'),
(14, 'Coby Hagenes', 'forest.krajcik@gmail.com', NULL, '$2y$12$VQDcPxbUh6Jxm500cym4KO/1cE6q8vO8N9yWLzqd30GhrJycC91ti', NULL, '2025-08-26 04:26:52', '2025-08-26 04:26:52', 'user'),
(15, 'Caterina Dare', 'pberge@casper.com', NULL, '$2y$12$IDJI/5ToUOt9kzTCR8TT6.9vLtmLN0xIs5c8f274sHI4aP1Lbkbbq', NULL, '2025-08-26 04:26:52', '2025-08-26 04:26:52', 'user'),
(16, 'Prof. Lacey Williamson Sr.', 'hamill.lupe@bartell.org', NULL, '$2y$12$TKfE6qz/8jwECoeOUotWRectfiERoRacvsZRzBfHHJvOS7lKs9W2S', NULL, '2025-08-26 04:26:52', '2025-08-26 04:26:52', 'user'),
(17, 'Mrs. Estrella Schinner DDS', 'cassandra.ledner@gmail.com', NULL, '$2y$12$cXO./fGfY7ZKqEczdf/.Cu.ZFT0hNer9.RuN8x2Z0xsTqIrd194Pm', NULL, '2025-08-26 04:26:53', '2025-08-26 04:26:53', 'user'),
(18, 'Miss Charlotte Koss', 'phaag@hotmail.com', NULL, '$2y$12$qqxRW6/6LuIwVHP84bkfxOgN3bFS7rKXbRPX1dnA83TBzoD26dB7m', NULL, '2025-08-26 04:26:53', '2025-08-26 04:26:53', 'user'),
(19, 'Cesar West', 'brown.emmanuel@yahoo.com', NULL, '$2y$12$dbZ3HFjkUrLxLh9/z9iUNOkZv2U6Pa93PDlbhVDuHgeBUGDpgJrQa', NULL, '2025-08-26 04:26:53', '2025-08-26 04:26:53', 'user'),
(20, 'Jana Paucek', 'damore.carolina@gmail.com', NULL, '$2y$12$Tafh0LViyMgRZfyC/xC5EeZvgBwu9QBfEvKjffYMTe6/FWB7KzIbK', NULL, '2025-08-26 04:26:53', '2025-08-26 04:26:53', 'user'),
(21, 'Abigail Pouros', 'jones.elvie@kub.net', NULL, '$2y$12$I9miD5fyw6F4s.WuedJnpe.uw3gOiBtyjPQsOMpeEBmL/0qGUnY8q', NULL, '2025-08-26 04:26:53', '2025-08-26 04:26:53', 'user'),
(22, 'Prof. Yazmin Ritchie DVM', 'era53@hotmail.com', NULL, '$2y$12$qmXK/wVYUDoB70pHK5GkwOsayGhEQnt5ZTzrdj/Yh1b5tEdJILbpi', NULL, '2025-08-26 04:26:54', '2025-08-26 04:26:54', 'user'),
(23, 'Gladys Koch', 'pfranecki@farrell.org', NULL, '$2y$12$LF3Jf.QsKzuc6yi4N0p.F.GJpKlPBqI7ikmBRFfIqZPYdVKKSAoRS', NULL, '2025-08-26 04:26:54', '2025-08-26 04:26:54', 'user'),
(24, 'Gwen Beahan', 'camille.herzog@gmail.com', NULL, '$2y$12$QSqP0IRKK.YkyNN7jBzhneAM/YcUnkLMpUYf5.wPtBSvGJ/qcZAPK', NULL, '2025-08-26 04:26:54', '2025-08-26 04:26:54', 'user'),
(25, 'Mr. Kenny Jaskolski IV', 'rchristiansen@yahoo.com', NULL, '$2y$12$DUvwIb0laJ9nMDxqGqbJ3.WVQm8a0JrJj3erTJzZT.zu8ZgSfawbO', NULL, '2025-08-26 04:26:54', '2025-08-26 04:26:54', 'user'),
(26, 'Nakia Runolfsson II', 'bgutmann@gmail.com', NULL, '$2y$12$1kupjR1n3wv.9N0j1TOtpeHUR7VNN5NRJMik1DrDMSub0qjAe0xT.', NULL, '2025-08-26 04:26:54', '2025-08-26 04:26:54', 'user'),
(27, 'Alena Trantow DDS', 'tiffany91@hotmail.com', NULL, '$2y$12$CQJo5GaX1jvY8sDjMPbe/u9eVrgEjXZopkDX5shrF5ckBzJATYz3q', NULL, '2025-08-26 04:26:55', '2025-08-26 04:26:55', 'user'),
(28, 'Dell Huel', 'zion03@yahoo.com', NULL, '$2y$12$6iathTG100eat4Zyt4JrTeH5pH0J2B1yvdsY3kD8PBic1n//uyikO', NULL, '2025-08-26 04:26:55', '2025-08-26 04:26:55', 'user'),
(29, 'Marcia Blick', 'purdy.elaina@gmail.com', NULL, '$2y$12$SkvINXEgLzXPayTW1I0Fqerb8nYYes5Q2Dibx9hWkNA4.7ZJV4xKy', NULL, '2025-08-26 04:26:55', '2025-08-26 04:26:55', 'user'),
(30, 'Kailey Wyman II', 'cassidy.zemlak@hotmail.com', NULL, '$2y$12$EA9MkADHgJ.OwS2fZZUghOp4kvMKFeVcunVCBBiMGz2UbrIJVvzMK', NULL, '2025-08-26 04:26:55', '2025-08-26 04:26:55', 'user'),
(31, 'Maud Labadie', 'wilson42@yahoo.com', NULL, '$2y$12$jjVg2TY7c6S0OKe1oYyTcu4kWEGmtfjh7MnnjTKQsNXYwtDaf6/Iq', NULL, '2025-08-26 04:26:55', '2025-08-26 04:26:55', 'user'),
(32, 'Magdalen Rowe', 'nbayer@gmail.com', NULL, '$2y$12$OID5K3BDpEQZsdPoNg82Le4NF9u.fmBacuket6hjYBc/jTTkCQ9xS', NULL, '2025-08-26 04:26:56', '2025-08-26 04:26:56', 'user'),
(33, 'Pierre Tromp', 'wilhelm05@gmail.com', NULL, '$2y$12$LZWhHx9SZ5KeLrzFTH2bwObyNK9qHk7r3dkHsDHy2mDdImaWvVUhS', NULL, '2025-08-26 04:26:56', '2025-08-26 04:26:56', 'user'),
(34, 'Mrs. Marielle Jakubowski III', 'jhessel@pagac.biz', NULL, '$2y$12$SCAAsFgGT3JiydTTLCPXae2gzQYdBLSiPHXT84u0E/Yd323LLtDte', NULL, '2025-08-26 04:26:56', '2025-08-26 04:26:56', 'user'),
(35, 'Dr. Tate Little DVM', 'lane76@mante.info', NULL, '$2y$12$G0wgSv1oWPOPWkBgMWKImOpLl.zvxz2trBZIj3s3D3CbQEjpd3aL.', NULL, '2025-08-26 04:26:56', '2025-08-26 04:26:56', 'user'),
(36, 'Cassidy Lehner Sr.', 'rsanford@hotmail.com', NULL, '$2y$12$erIgr/xIkwkYGQv2ADeqmO51Fo316D8RXKF2sVNfxXObHk.L9T7fa', NULL, '2025-08-26 04:26:56', '2025-08-26 04:26:56', 'user'),
(37, 'Dr. Neil Stark', 'jbartell@denesik.biz', NULL, '$2y$12$XdPCm32EZCHBjbVCz6ZRbeB3axaCdWo0JJ11B1kCKJyJsz0vg9hF6', NULL, '2025-08-26 04:26:57', '2025-08-26 04:26:57', 'user'),
(38, 'Murl Zieme Sr.', 'nayeli.lind@gmail.com', NULL, '$2y$12$1RGc93L5UC3zMZ93c59O4ON9f3gMaNGPEI36/CUkbgKWokZ8Gfyku', NULL, '2025-08-26 04:26:57', '2025-08-26 04:26:57', 'user'),
(39, 'Vada Mayer', 'zaufderhar@schowalter.com', NULL, '$2y$12$YUQy7H.72eKtR7jixavN8.UmOa5.wu5ijqCpAT0q8.GYq7Wkq8jXq', NULL, '2025-08-26 04:26:57', '2025-08-26 04:26:57', 'user'),
(40, 'Aida Rempel', 'mathilde.will@dach.biz', NULL, '$2y$12$yjaUjf7QuhaT/.H9FsrDCOw8LFHfQdm0zGv4TKXQKd/z08koIF21i', NULL, '2025-08-26 04:26:57', '2025-08-26 04:26:57', 'user'),
(41, 'Queen Willms', 'qtreutel@carroll.info', NULL, '$2y$12$jEap7BRTEJr8j1fIVpxY8ugOQ1l8W5CT.XfGWS/oIpZML809bn2EK', NULL, '2025-08-26 04:26:58', '2025-08-26 04:26:58', 'user'),
(42, 'Cleve Kertzmann', 'rhett.schiller@hand.com', NULL, '$2y$12$Ar7KfLDsdJ.gtoDbyarBK./FrPIWbH4pv7Hcn8dETaP.1PaPK3lMS', NULL, '2025-08-26 04:26:58', '2025-08-26 04:26:58', 'user'),
(43, 'Parker Mante', 'jgaylord@cole.com', NULL, '$2y$12$EE8MH8j/ubfzQXEij6VAReLIVkDXOwvqU2.PcWerUrYSEw2kQv5Vi', NULL, '2025-08-26 04:26:58', '2025-08-26 04:26:58', 'user'),
(44, 'Ralph Murphy Jr.', 'vance54@schneider.com', NULL, '$2y$12$offvlU0UODkUgiqymFWREeV8xr8mV3SP3XPKKn09BRbLuqnC6kZFG', NULL, '2025-08-26 04:26:58', '2025-08-26 04:26:58', 'user'),
(45, 'Ms. Eleanore Huels', 'odell53@hyatt.info', NULL, '$2y$12$oXhLP/eeFld7t5FEokA96eiqjvGdo.mOR/mPEW7wvCJF/Ufht91ia', NULL, '2025-08-26 04:26:58', '2025-08-26 04:26:58', 'user'),
(46, 'Marcelle Ratke PhD', 'odicki@gmail.com', NULL, '$2y$12$45ntQuCdWLbXBUzifLv2Qu7pqnR6S4fwKWpieSPzlkUC7gBmXdWjq', NULL, '2025-08-26 04:26:59', '2025-08-26 04:26:59', 'user'),
(47, 'Kelsi Stiedemann', 'windler.ova@yahoo.com', NULL, '$2y$12$tVlvXOR.wCSTqfhqf9CfqO9oFsICU4Pp1bjxAX2MTRvDWtJ30476.', NULL, '2025-08-26 04:26:59', '2025-08-26 04:26:59', 'user'),
(48, 'Raegan Keebler', 'jaycee.funk@hotmail.com', NULL, '$2y$12$v.LyrDJla8iJKhpJUgF5Vuss5ukQzBnUf4n5E6YjIfs2FuqIKdSt2', NULL, '2025-08-26 04:26:59', '2025-08-26 04:26:59', 'user'),
(49, 'Dr. Frederick Eichmann PhD', 'ometz@waelchi.com', NULL, '$2y$12$kSOPOZjENhtD5HwFjLqKq.FU8q3mTWnyk9Nma/c0cK9a5wXrremHK', NULL, '2025-08-26 04:26:59', '2025-08-26 04:26:59', 'user'),
(50, 'Davon Morissette', 'jacobson.aubree@carter.com', NULL, '$2y$12$58IALZdWeq1ZBTd7hA2nK.d6bp21ldWU666pFjz9BxeWlPgpgxESW', NULL, '2025-08-26 04:26:59', '2025-08-26 04:26:59', 'user'),
(51, 'Miss Amelie Weber', 'nmarvin@yahoo.com', NULL, '$2y$12$fI.t6FRcyIdk1M66cU0C1ubjBW2MLJFbdffiuRrklKRs8Tnd1zz8W', NULL, '2025-08-26 04:27:00', '2025-08-26 04:27:00', 'user'),
(52, 'Micaela Aufderhar', 'raquel90@batz.com', NULL, '$2y$12$wTIbzglQ1VSS4njR8g9q6uQlcVRxRb0wNUiZkwxpBv91VPdFHAYMG', NULL, '2025-08-26 04:27:00', '2025-08-26 04:27:00', 'user'),
(53, 'Admin', 'admin@admin.com', NULL, '$2y$12$sqIap4SKVs9CDdUbWCDHleJgonLEi9GnLcNJIK/jXR4dUE8FDqH16', NULL, '2025-08-27 14:20:13', '2025-08-27 14:20:13', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
CREATE TABLE IF NOT EXISTS `weather` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_id` bigint UNSIGNED NOT NULL,
  `temperature` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `weather_city_id_foreign` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `city_id`, `temperature`, `created_at`, `updated_at`) VALUES
(1, 1, 16.5, '2025-08-26 05:05:49', '2025-08-26 09:17:38'),
(2, 2, 3, '2025-08-26 05:05:49', '2025-08-26 08:34:38'),
(3, 3, 23.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(4, 4, 34.2, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(5, 5, 35.4, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(6, 6, 11.1, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(7, 7, 13.5, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(8, 8, 19.1, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(9, 9, 32.4, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(10, 10, 36, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(11, 11, 17.4, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(12, 12, 21.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(13, 13, 14.6, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(14, 14, 22.3, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(15, 15, 18.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(16, 16, 10.7, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(17, 17, 17.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(18, 18, 31.6, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(19, 19, 16.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(20, 20, 23.5, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(21, 21, 38, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(22, 22, 10.1, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(23, 23, 32.6, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(24, 24, 25.5, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(25, 25, 28, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(26, 26, 12.8, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(27, 27, 23.3, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(28, 28, 35.3, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(29, 29, 30.8, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(30, 30, 25.3, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(31, 31, 35, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(32, 32, 13.1, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(33, 33, 14.4, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(34, 34, 21.8, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(35, 35, 26.8, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(36, 36, 34.3, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(37, 37, 27.1, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(38, 38, 18.8, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(39, 39, 30.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(40, 40, 34.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(41, 41, 17.1, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(42, 42, 20.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(43, 43, 26.5, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(44, 44, 11, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(45, 45, 29.9, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(46, 46, 22.3, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(47, 47, 21.8, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(48, 48, 14.2, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(49, 49, 39.7, '2025-08-26 05:05:49', '2025-08-26 05:05:49'),
(50, 50, 36.4, '2025-08-26 05:05:49', '2025-08-26 05:05:49');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forecasts`
--
ALTER TABLE `forecasts`
  ADD CONSTRAINT `forecasts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ocena`
--
ALTER TABLE `ocena`
  ADD CONSTRAINT `ocena_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weather`
--
ALTER TABLE `weather`
  ADD CONSTRAINT `weather_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
