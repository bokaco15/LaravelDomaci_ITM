-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2025 at 06:15 PM
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
(1, 'Sabac', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(2, 'Danielshire', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(3, 'Russeltown', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(4, 'West Alexandrineton', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(5, 'Joanneborough', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(6, 'Lake Randalfort', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(7, 'East Maverickstad', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(8, 'Funkport', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(9, 'Lake Georgettemouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(10, 'Lake Maryamton', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(11, 'Runolfsdottirbury', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(12, 'New Javon', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(13, 'Port Eugene', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(14, 'Eldridgefurt', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(15, 'Lake Samanta', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(16, 'Port Jakeview', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(17, 'Joneston', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(18, 'Port Adella', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(19, 'North Mae', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(20, 'Estaton', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(21, 'Hayesmouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(22, 'Lake Ernestineton', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(23, 'South Marlene', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(24, 'Lake Heatherborough', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(25, 'West Austynborough', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(26, 'Baumbachmouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(27, 'Mabelleville', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(28, 'Ivaburgh', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(29, 'Veronicabury', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(30, 'New Kamryn', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(31, 'Malindamouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(32, 'Brandtville', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(33, 'Lacybury', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(34, 'West Ewaldport', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(35, 'New Akeem', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(36, 'Port Margetown', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(37, 'North Albert', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(38, 'Port Erika', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(39, 'Port Rubenstad', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(40, 'Letamouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(41, 'Port Giovanna', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(42, 'Port Alfonso', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(43, 'Bergemouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(44, 'South Haley', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(45, 'Lake Carmeloland', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(46, 'New Alveraborough', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(47, 'East Cheyenneview', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(48, 'Port Ardith', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(49, 'Port Lloydmouth', '2025-08-21 03:29:49', '2025-08-21 03:29:49'),
(50, 'Zboncakville', '2025-08-21 03:29:49', '2025-08-21 03:29:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'bborislavilic@gmail.com', 'Ovo je neka poruka', 'jasgfkjahsgkjhasgkjhasdkjgfkujadsghiugasdgjadhvasddfa', '2025-08-21 05:20:11', '2025-08-21 05:20:11'),
(2, 'bborislavilic@gmail.com', 'Ovo je neka poruka', 'jasgfkjahsgkjhasgkjhasdkjgfkujadsghiugasdgjadhvasddfa', '2025-08-21 05:20:11', '2025-08-21 05:20:11'),
(3, 'mima@gmail.com', 'naslov', 'lkahglhakjghsqiduhfviuorewhviuoewrbviuerbviuer bu jiherbiureigyieyrre', NULL, NULL);

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `forecasts_city_id_date_unique` (`city_id`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecasts`
--

INSERT INTO `forecasts` (`id`, `city_id`, `temperature`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 39.7, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(2, 1, 18.4, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(3, 1, 32.4, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(4, 1, 30.8, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(5, 1, 37.7, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(6, 2, 35, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(7, 2, 27.1, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(8, 2, 17.2, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(9, 2, 2.5, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(10, 2, 32.7, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(11, 3, 35.5, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(12, 3, 24.8, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(13, 3, 22.5, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(14, 3, 13.5, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(15, 3, 0.4, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(16, 4, 10.6, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(17, 4, 28.3, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(18, 4, 39, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(19, 4, 38.6, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(20, 4, 4.3, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(21, 5, 26.9, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(22, 5, 3.5, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(23, 5, 31.1, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(24, 5, 42.1, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(25, 5, 22.6, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(26, 6, 41, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(27, 6, 44.1, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(28, 6, 8.3, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(29, 6, 17.1, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(30, 6, 0.9, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(31, 7, 16.7, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(32, 7, 34.1, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(33, 7, 42.1, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(34, 7, 27.2, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(35, 7, 6.2, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(36, 8, 22.7, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(37, 8, 14.8, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(38, 8, 38.3, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(39, 8, 11.7, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(40, 8, 10.6, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(41, 9, 31.3, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(42, 9, 8.4, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(43, 9, 20.3, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(44, 9, 43.3, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(45, 9, 36.4, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(46, 10, 32.3, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(47, 10, 23, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(48, 10, 20.7, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(49, 10, 0.2, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(50, 10, 24, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(51, 11, 31.7, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(52, 11, 4.1, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(53, 11, 34.2, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(54, 11, 21.3, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(55, 11, 9.5, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(56, 12, 29.3, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(57, 12, 38.1, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(58, 12, 36.6, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(59, 12, 1, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(60, 12, 9.4, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(61, 13, 3.2, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(62, 13, 32.2, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(63, 13, 20.8, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(64, 13, 43.5, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(65, 13, 8.1, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(66, 14, 6.8, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(67, 14, 37.1, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(68, 14, 18.4, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(69, 14, 10.3, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(70, 14, 27.5, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(71, 15, 44.3, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(72, 15, 26.8, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(73, 15, 21, '2025-08-23', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(74, 15, 19.3, '2025-08-24', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(75, 15, 39.1, '2025-08-25', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(76, 16, 38.4, '2025-08-21', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(77, 16, 30.5, '2025-08-22', '2025-08-21 03:30:01', '2025-08-21 03:30:01'),
(78, 16, 20.8, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(79, 16, 41.5, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(80, 16, 32.2, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(81, 17, 9.8, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(82, 17, 3, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(83, 17, 39.1, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(84, 17, 26.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(85, 17, 40.9, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(86, 18, 19.4, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(87, 18, 39.4, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(88, 18, 7.4, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(89, 18, 19.4, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(90, 18, 22.9, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(91, 19, 18.3, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(92, 19, 26.9, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(93, 19, 19, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(94, 19, 28.5, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(95, 19, 9.1, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(96, 20, 36.8, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(97, 20, 19.1, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(98, 20, 42.5, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(99, 20, 14.2, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(100, 20, 11.1, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(101, 21, 28.5, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(102, 21, 20, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(103, 21, 12.2, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(104, 21, 31.2, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(105, 21, 41.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(106, 22, 27.5, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(107, 22, 4.4, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(108, 22, 4.3, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(109, 22, 43.9, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(110, 22, 14.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(111, 23, 20.2, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(112, 23, 21.9, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(113, 23, 40.7, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(114, 23, 43.4, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(115, 23, 10.4, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(116, 24, 39.7, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(117, 24, 19.6, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(118, 24, 12.9, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(119, 24, 27.9, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(120, 24, 15.4, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(121, 25, 40.2, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(122, 25, 22.5, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(123, 25, 15.1, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(124, 25, 8.9, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(125, 25, 0.3, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(126, 26, 11.3, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(127, 26, 7.1, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(128, 26, 23.3, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(129, 26, 13.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(130, 26, 22.7, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(131, 27, 42.8, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(132, 27, 22.8, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(133, 27, 19, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(134, 27, 38.1, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(135, 27, 12, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(136, 28, 44.4, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(137, 28, 25.2, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(138, 28, 43.2, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(139, 28, 35.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(140, 28, 22.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(141, 29, 14.8, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(142, 29, 17.2, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(143, 29, 34.5, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(144, 29, 44.1, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(145, 29, 32.8, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(146, 30, 4.1, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(147, 30, 11.7, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(148, 30, 32.7, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(149, 30, 27.4, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(150, 30, 19.7, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(151, 31, 19.5, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(152, 31, 9.5, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(153, 31, 9.3, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(154, 31, 14.2, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(155, 31, 35.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(156, 32, 33, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(157, 32, 26.8, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(158, 32, 10.9, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(159, 32, 34.8, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(160, 32, 31.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(161, 33, 27.5, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(162, 33, 18.7, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(163, 33, 11.4, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(164, 33, 15.3, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(165, 33, 22.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(166, 34, 27.7, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(167, 34, 21.7, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(168, 34, 14, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(169, 34, 15.1, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(170, 34, 43.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(171, 35, 31.7, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(172, 35, 14.4, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(173, 35, 2.8, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(174, 35, 42.7, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(175, 35, 19.2, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(176, 36, 43, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(177, 36, 34.5, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(178, 36, 4.9, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(179, 36, 41.9, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(180, 36, 22.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(181, 37, 35.9, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(182, 37, 22.3, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(183, 37, 27.3, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(184, 37, 37, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(185, 37, 19.1, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(186, 38, 32, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(187, 38, 8, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(188, 38, 35.2, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(189, 38, 39.5, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(190, 38, 41.1, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(191, 39, 43.1, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(192, 39, 13.9, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(193, 39, 16.5, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(194, 39, 38.5, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(195, 39, 2.9, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(196, 40, 19.3, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(197, 40, 33.8, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(198, 40, 11.8, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(199, 40, 42.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(200, 40, 28.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(201, 41, 37.3, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(202, 41, 26.5, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(203, 41, 26.9, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(204, 41, 36.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(205, 41, 8.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(206, 42, 22.2, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(207, 42, 0.5, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(208, 42, 25, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(209, 42, 2.4, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(210, 42, 15.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(211, 43, 25.3, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(212, 43, 43.8, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(213, 43, 13.6, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(214, 43, 32.1, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(215, 43, 23.1, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(216, 44, 8.4, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(217, 44, 38.7, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(218, 44, 2.6, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(219, 44, 0.8, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(220, 44, 29.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(221, 45, 44.3, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(222, 45, 41.4, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(223, 45, 44.1, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(224, 45, 31.3, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(225, 45, 25.8, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(226, 46, 9.9, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(227, 46, 3.6, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(228, 46, 24.5, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(229, 46, 8.2, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(230, 46, 39, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(231, 47, 26, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(232, 47, 40.7, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(233, 47, 40.9, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(234, 47, 3.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(235, 47, 14.7, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(236, 48, 22.5, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(237, 48, 13.3, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(238, 48, 41.8, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(239, 48, 10.2, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(240, 48, 34.6, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(241, 49, 31.5, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(242, 49, 39, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(243, 49, 6.9, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(244, 49, 22.6, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(245, 49, 8.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(246, 50, 8.7, '2025-08-21', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(247, 50, 33.3, '2025-08-22', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(248, 50, 17.4, '2025-08-23', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(249, 50, 41.1, '2025-08-24', '2025-08-21 03:30:02', '2025-08-21 03:30:02'),
(250, 50, 35.5, '2025-08-25', '2025-08-21 03:30:02', '2025-08-21 03:30:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item`, `created_at`, `updated_at`) VALUES
(1, 'Kecap', NULL, NULL),
(2, 'Majonez', NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, '2025_08_17_211940_create_weather_table', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ocena`
--

INSERT INTO `ocena` (`id`, `predmet`, `ocena`, `profesor`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Srpski', 5, 'Petar Peric', '2025-08-21 05:21:17', '2025-08-21 05:21:17', NULL),
(2, 'Engleski', 3, 'Zelimir', NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `amount`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Samsung A54', 'opis telefona', 5, 100, 'samsung.png', NULL, NULL),
(2, 'iPhone 15', 'opis za iphone 15', 1, 1000, 'ajfon.png', NULL, NULL);

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
('3chHB4MjaxxMiXjI55Jx8xY5BQh6DOsYtFXPetOv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzEycVpnQkFnRzZXS2Q2ZTB1ZE5qVkJJVDJ0WTdYT1c4aTJzMlBMNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9nbm96YT90ZW1wZXJhdHVyZVBhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1755755470);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `noIndex`, `created_at`, `updated_at`, `year`) VALUES
(1, 'Milica ', 'Vatralj', '2021/213123', NULL, NULL, 2021),
(2, 'Borislav', 'Ilic', '2022/210336', NULL, NULL, 2021);

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
(1, 'Borislav Ilic', 'bborislavilic@gmail.com', NULL, '$2y$12$wcvMMtPLIFwWD1vLNDVuI.ho7UHltNMI.M7DpXdaTOMdAP1xmGy8K', NULL, '2025-08-21 03:25:01', '2025-08-21 03:25:01', 'admin'),
(2, 'Petar Peric', 'petar@gmail.com', NULL, '$2y$12$FiywHIa80egMr6lMOgRsKuqbmlF3nDFbtNq2TroY7qP2cndmo.B5W', NULL, '2025-08-21 03:30:26', '2025-08-21 03:30:26', 'user'),
(3, 'Marko Markovic', 'marko@gmail.com', NULL, '$2y$12$0n/F30TS7wgC1IymS35Zm.oQRoK1aSpzSPYyvhQC.qKxv8JZoj4zq', NULL, '2025-08-21 03:30:47', '2025-08-21 03:30:47', 'user'),
(4, 'Alexys Crooks', 'bailey.bobby@hotmail.com', NULL, '$2y$12$iS2EI4GKaBLstj2WB4ruCehAHl35QQ/Aw2DswIUzYT8i61TC7Y1Gq', NULL, '2025-08-21 03:31:07', '2025-08-21 03:31:07', 'user'),
(5, 'Miss Michelle Bogisich', 'gunnar.gerhold@hotmail.com', NULL, '$2y$12$dNBkJU0yrxHmJvOb1RWYV.Z4GIj0fQ3T2PSEc86KrHOc/Mz7h7ALK', NULL, '2025-08-21 03:31:07', '2025-08-21 03:31:07', 'user'),
(6, 'Ms. Sabina Littel', 'romaine43@veum.com', NULL, '$2y$12$BYfLVcNOa8W1/0NTmeLDP./z4llop4aEDSWQ0bqYAGAFrTQ62JFGW', NULL, '2025-08-21 03:31:07', '2025-08-21 03:31:07', 'user'),
(7, 'Maegan Roberts', 'olson.annetta@gorczany.net', NULL, '$2y$12$jwyJueILw8xAPhR26gej1e9vq1aaFoL9r9SKE7Id7wifnsGGTSMa6', NULL, '2025-08-21 03:31:08', '2025-08-21 03:31:08', 'user'),
(8, 'Margaret Ward', 'abraham59@anderson.com', NULL, '$2y$12$nBDLFT/cXh/G6WQ0QP6jq.xbR4FmoUfCi6p/FSF2dWfZ3fWjxrv1C', NULL, '2025-08-21 03:31:08', '2025-08-21 03:31:08', 'user'),
(9, 'Bryce Bergstrom', 'jdamore@yahoo.com', NULL, '$2y$12$DcfHJKPLP5A/mYW6WLeYgOlFAFs/n8tR/zNCD78Hsp7S76db69F5G', NULL, '2025-08-21 03:31:08', '2025-08-21 03:31:08', 'user'),
(10, 'Edwardo Yost', 'dannie53@gmail.com', NULL, '$2y$12$fMO/0O4tDBIzW9A9i77jgOqxelk/HVznMxEFyZqfGnKaWjdX2eQfS', NULL, '2025-08-21 03:31:08', '2025-08-21 03:31:08', 'user'),
(11, 'Nayeli Jacobson', 'mkemmer@gmail.com', NULL, '$2y$12$ecgpsAlG8rDHbjmd1UAunOa0fqbvAraCVmnHNlRSt5kDastn3L/sG', NULL, '2025-08-21 03:31:08', '2025-08-21 03:31:08', 'user'),
(12, 'Mr. Wayne McGlynn IV', 'bechtelar.santina@hotmail.com', NULL, '$2y$12$ZydLoMdz5lhKJty0ibkc3O4g88KcZtvKd5NeeqkNFBlPwxJwQACZ.', NULL, '2025-08-21 03:31:09', '2025-08-21 03:31:09', 'user'),
(13, 'Max Swift', 'savion.oberbrunner@yahoo.com', NULL, '$2y$12$QvIjVzxbMIIfCDPsr5FXU.Y.GUkvU/EDVaBh3ehxpyNFHUEn7rcve', NULL, '2025-08-21 03:31:09', '2025-08-21 03:31:09', 'user'),
(14, 'Simone Daniel', 'homenick.audie@yahoo.com', NULL, '$2y$12$QtXcUvOxL1CGkEA/xeTLLu7tbypccQW31Y.GSazSRPwXq8YLhv7ie', NULL, '2025-08-21 03:31:09', '2025-08-21 03:31:09', 'user'),
(15, 'Carmine Champlin', 'melba31@yahoo.com', NULL, '$2y$12$mCtKHlucb3RghxzeP8f0jeuV0moQdb3Cnf/PrIWxXqbBpsLhF/rXG', NULL, '2025-08-21 03:31:09', '2025-08-21 03:31:09', 'user'),
(16, 'Pattie Jacobson', 'alf59@yahoo.com', NULL, '$2y$12$0JUEejlL2UWCzaZ60vgRe.CqFivOzRE2tC/TQIa1PnIvICnTdOVdm', NULL, '2025-08-21 03:31:10', '2025-08-21 03:31:10', 'user'),
(17, 'Amira Bosco', 'kyler.hammes@yahoo.com', NULL, '$2y$12$QmlQeer1yTwhM1wW9RRLkO0ewdgkOqwsScSYrBXugzQI7NH1Nj3KW', NULL, '2025-08-21 03:31:10', '2025-08-21 03:31:10', 'user'),
(18, 'Mr. Richie Tillman I', 'price.gutmann@hotmail.com', NULL, '$2y$12$.0fDVBgP0nVO7gTU6LY4jO0jhY/FIBAny8rWhBIlOLdUDjjcdoPAa', NULL, '2025-08-21 03:31:10', '2025-08-21 03:31:10', 'user'),
(19, 'Leatha Miller', 'bernard.conn@gottlieb.com', NULL, '$2y$12$Vs.t0s1CAgTjoJiFWpOku.5Hscqi3E.WSn0hOcnp2hoW/7twoq67y', NULL, '2025-08-21 03:31:10', '2025-08-21 03:31:10', 'user'),
(20, 'Uriel Goldner', 'afriesen@schiller.net', NULL, '$2y$12$0o9iGpgiB8jdHL6uQlFjCeruNGcWRhAXQQOwtD1rBhX7a00EUi7uu', NULL, '2025-08-21 03:31:10', '2025-08-21 03:31:10', 'user'),
(21, 'Ms. Candice Kassulke', 'ijohnson@hotmail.com', NULL, '$2y$12$8YhEvuj6MZB7O4e9pr9SYeOIB9YG3ougAxFHnw8HNPqiE1zad9.b2', NULL, '2025-08-21 03:31:11', '2025-08-21 03:31:11', 'user'),
(22, 'Mr. Zachery Shields V', 'zflatley@gmail.com', NULL, '$2y$12$dODXV5dQ/3066/DJ4fsL1.7Fnkr/wr6YOFGt9GJP9m8gaEr3Sugw6', NULL, '2025-08-21 03:31:11', '2025-08-21 03:31:11', 'user'),
(23, 'Prof. Alexis Erdman PhD', 'jacquelyn.flatley@yahoo.com', NULL, '$2y$12$BUaq.KVYaZ2XxyMeCHzW..inDWK5BoBjKSH7B8Xp8uUXGlcKLPbDS', NULL, '2025-08-21 03:31:11', '2025-08-21 03:31:11', 'user'),
(24, 'Bernadette Pfeffer', 'kenneth.mueller@gmail.com', NULL, '$2y$12$v6WO.Hf0c5eo4dnHFYnJ6.rp/POqC/kHJiM9t9HvJdVp1YAeDak0a', NULL, '2025-08-21 03:31:11', '2025-08-21 03:31:11', 'user'),
(25, 'Ebony Block', 'alberta14@yahoo.com', NULL, '$2y$12$74j6yIKnQmvQ17NmRLBE3OC4JfFvhS6me7tzPThYZhNi1Lm0V8xVK', NULL, '2025-08-21 03:31:11', '2025-08-21 03:31:11', 'user'),
(26, 'Mr. Mekhi Boyle', 'quigley.deshawn@lowe.com', NULL, '$2y$12$ICOsccmk4uxriejLloKMUeEIfOA5UZnmefBDEYeUlVaTJ5raRk/8S', NULL, '2025-08-21 03:31:12', '2025-08-21 03:31:12', 'user'),
(27, 'Howard Ruecker', 'vgerhold@gmail.com', NULL, '$2y$12$n4rUAy9eefO8OGwMO6ODSuzaIqXbIa6EBrS9WpQ7RHFa.dDVt.QSO', NULL, '2025-08-21 03:31:12', '2025-08-21 03:31:12', 'user'),
(28, 'Mike West', 'beier.mathias@wintheiser.com', NULL, '$2y$12$Onyq8MSpm.3xFlfhEZgoUe/UXnrWSn69ZFNJRVmIxzBwkkBU95iyu', NULL, '2025-08-21 03:31:12', '2025-08-21 03:31:12', 'user'),
(29, 'Prof. Harley Kunze', 'watsica.haylee@runolfsson.com', NULL, '$2y$12$T4ibKnSznmmwaBOST6ylR.FcPOWcw0SaFUsaL0hXwzaZM11OqGL4i', NULL, '2025-08-21 03:31:12', '2025-08-21 03:31:12', 'user'),
(30, 'Holly Bergstrom', 'lueilwitz.ana@gmail.com', NULL, '$2y$12$K7xFhOT1XSA3H./m.yqxJe8nf8mjvqpzCrERU3eoTOrcRA394TuPa', NULL, '2025-08-21 03:31:12', '2025-08-21 03:31:12', 'user'),
(31, 'Cordelia Haley', 'sunny65@hotmail.com', NULL, '$2y$12$nrADNm.OyTJK16Ob85pw8.BvaxvjCY0ngokkhmMnz7NcDt7phFSdm', NULL, '2025-08-21 03:31:13', '2025-08-21 03:31:13', 'user'),
(32, 'Mr. Stevie Wilderman', 'sydni.kohler@yahoo.com', NULL, '$2y$12$0ufdt3r49gDm8fTEwgrP9ufgUJV.BJbKXfKzb0HqEmDs7iV7gteIu', NULL, '2025-08-21 03:31:13', '2025-08-21 03:31:13', 'user'),
(33, 'Lorna Greenfelder', 'bette.huel@hand.com', NULL, '$2y$12$QkWwU0m/lUI6p96sbRr/ie8dXhduFgzfbEREV9.bB33srmJ6/WG0y', NULL, '2025-08-21 03:31:13', '2025-08-21 03:31:13', 'user'),
(34, 'Dr. Ernest Dibbert', 'gutkowski.beverly@pagac.com', NULL, '$2y$12$J8/WqQPZyz0XQ/NkPp9zLOOio47cs1IoqoVT.CKJWmPTR3iHTEssS', NULL, '2025-08-21 03:31:13', '2025-08-21 03:31:13', 'user'),
(35, 'Mr. Alex Bogan MD', 'jthiel@hotmail.com', NULL, '$2y$12$U7Ra2OVNsDjgsfEl/5wxuOfOzKy/Nbt0POQqL1FYWDVD/zBvplV8q', NULL, '2025-08-21 03:31:13', '2025-08-21 03:31:13', 'user'),
(36, 'Lexie Kertzmann', 'lonzo98@yahoo.com', NULL, '$2y$12$nN4J913en5fCbFEDDkL2Uu16zPuW2n1v5rNeV/mR23eZD7Xmn/NeK', NULL, '2025-08-21 03:31:14', '2025-08-21 03:31:14', 'user'),
(37, 'Creola Konopelski', 'robel.kurt@romaguera.com', NULL, '$2y$12$9jfOMeU4WIvdKlfHUSmgMuC6yFXGOliudbOYqMu9kdzQZPB3p/HIe', NULL, '2025-08-21 03:31:14', '2025-08-21 03:31:14', 'user'),
(38, 'Alda Cremin', 'wjohns@legros.com', NULL, '$2y$12$uht4lUY9QbWrEMu82TBMiORqkzy9nuRUKzh0fYvX0X5xYKzz/h3rC', NULL, '2025-08-21 03:31:14', '2025-08-21 03:31:14', 'user'),
(39, 'Mrs. Jacinthe Baumbach III', 'schaden.jovani@fadel.biz', NULL, '$2y$12$B37fUCjudfxAam0u9a21XeZ.dZtxmgu1/Ev38CelryoubyHk5zMTO', NULL, '2025-08-21 03:31:14', '2025-08-21 03:31:14', 'user'),
(40, 'Mr. Christian Feil III', 'rod81@yahoo.com', NULL, '$2y$12$ciLS171oOTiRQikRedoUxuJgZ5UacDNSbjAGwDYKSr7xr4JIInraK', NULL, '2025-08-21 03:31:14', '2025-08-21 03:31:14', 'user'),
(41, 'Roxanne Stoltenberg DDS', 'vesta00@breitenberg.com', NULL, '$2y$12$GAOhK4KOrz.YXQVLO3UjmOkp4P.5wUJi5nqnJE2lnYOxI2VP2fE0W', NULL, '2025-08-21 03:31:15', '2025-08-21 03:31:15', 'user'),
(42, 'Javier Strosin', 'kaia.barrows@yahoo.com', NULL, '$2y$12$oHIXsxiyNn5bST6YlbxMv.fXhHO3C5EAX6o275oBO9wAjlf11Jh3u', NULL, '2025-08-21 03:31:15', '2025-08-21 03:31:15', 'user'),
(43, 'Hester Wolff', 'omohr@streich.com', NULL, '$2y$12$8r0U0Xbj2KGqUi5nmYe5Qu.B6eNysFJIOo30IUSUakqAB65VJBmfW', NULL, '2025-08-21 03:31:15', '2025-08-21 03:31:15', 'user'),
(44, 'Theresia Buckridge', 'hjacobi@larson.net', NULL, '$2y$12$Eb3NIUm5Hzt2MuQfF8Yat.4uBMq6JRHBVa4u4kIn8QmVxbyTUeaQy', NULL, '2025-08-21 03:31:15', '2025-08-21 03:31:15', 'user'),
(45, 'Serenity Schaden', 'ortiz.ceasar@wisozk.com', NULL, '$2y$12$8KkCMvku/2qFcL3qfeTo1.KSc/in/8cY6/d7lIV3LVDg0Rw984Msq', NULL, '2025-08-21 03:31:15', '2025-08-21 03:31:15', 'user'),
(46, 'Dr. Desmond Stoltenberg', 'elisabeth56@swaniawski.com', NULL, '$2y$12$qtHrYXiLw.lbjR5vQaCjD.NJ628uVzWLtEn5mmZdVC9gF5GhpM3fW', NULL, '2025-08-21 03:31:16', '2025-08-21 03:31:16', 'user'),
(47, 'Brant Sipes', 'muriel.aufderhar@howe.com', NULL, '$2y$12$xjnEvOmKQxeg80wxOGXA8.t3T/MtsRMk1LQUbW51Q3txGAl8c1WtG', NULL, '2025-08-21 03:31:16', '2025-08-21 03:31:16', 'user'),
(48, 'Vesta Bradtke', 'mollie.ratke@hotmail.com', NULL, '$2y$12$xP6iRxlBuJ4MwyqIybmx5OkV0biVPpzQnHrowRnm6Ocfcd5IcJRIC', NULL, '2025-08-21 03:31:16', '2025-08-21 03:31:16', 'user'),
(49, 'Neha Homenick', 'fschimmel@okon.net', NULL, '$2y$12$YRS9CczecFouE1ZjMgbev.j9GxeISzLW3rLFZJZzyQU.vABtXuQIC', NULL, '2025-08-21 03:31:16', '2025-08-21 03:31:16', 'user'),
(50, 'Prof. Lisandro Shields', 'nwiegand@hotmail.com', NULL, '$2y$12$uiyyyLIqHpnvM.x2XoaMXen0ifLTZAGAjqRMgC3ohdv7W1O3PMwyy', NULL, '2025-08-21 03:31:16', '2025-08-21 03:31:16', 'user'),
(51, 'Joshua Grady', 'ricardo.olson@gmail.com', NULL, '$2y$12$Kh1CnYnGdDuIssk33vgN0eAW6cgrWBcYlK5RXuNSINclgepxeob66', NULL, '2025-08-21 03:31:17', '2025-08-21 03:31:17', 'user'),
(52, 'Nicola Rutherford', 'viola91@hotmail.com', NULL, '$2y$12$oEMde8hk/p7cYZNxGBjh.OVLr.PaOkMW.rTo5Et2q.f4PiIzJDEMa', NULL, '2025-08-21 03:31:17', '2025-08-21 03:31:17', 'user'),
(53, 'Mrs. Zelda Hill', 'kutch.marion@yahoo.com', NULL, '$2y$12$fFvL/HmE.4aIpnMAXt7rU.aNiTu4WJ9tTT7mbtFxaiqxk7/tje4iu', NULL, '2025-08-21 03:31:17', '2025-08-21 03:31:17', 'user');

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
(1, 1, 19.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(2, 2, 37.6, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(3, 3, 34.8, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(4, 4, 17.8, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(5, 5, 17.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(6, 6, 20.1, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(7, 7, 24.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(8, 8, 31.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(9, 9, 13.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(10, 10, 39.9, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(11, 11, 15.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(12, 12, 27.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(13, 13, 13.6, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(14, 14, 30.6, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(15, 15, 21.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(16, 16, 24.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(17, 17, 26.9, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(18, 18, 30.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(19, 19, 17, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(20, 20, 25.5, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(21, 21, 30.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(22, 22, 14.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(23, 23, 30.8, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(24, 24, 23.6, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(25, 25, 39.5, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(26, 26, 29.9, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(27, 27, 22.1, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(28, 28, 16.3, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(29, 29, 22.1, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(30, 30, 33.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(31, 31, 19.5, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(32, 32, 26.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(33, 33, 15.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(34, 34, 32.8, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(35, 35, 17.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(36, 36, 37.8, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(37, 37, 39.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(38, 38, 26.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(39, 39, 31.1, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(40, 40, 21.2, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(41, 41, 24.2, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(42, 42, 31.5, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(43, 43, 34.5, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(44, 44, 32.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(45, 45, 31.1, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(46, 46, 31.4, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(47, 47, 34.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(48, 48, 30.6, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(49, 49, 30.9, '2025-08-21 03:31:40', '2025-08-21 03:31:40'),
(50, 50, 18.7, '2025-08-21 03:31:40', '2025-08-21 03:31:40');

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
