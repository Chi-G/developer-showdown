-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 21, 2024 at 06:13 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `developer_shutdown`
--

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_17_050532_add_timezone_to_users_table', 1),
(5, '2024_10_17_054137_create_users_table', 2),
(6, '2024_10_17_054928_add_timezone_to_users_table', 3);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jYIw17WTyEFrHI7ZS9jpvTQac1t2n9y7X1BttEdI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDllVEJLUE02V0UwT0dhMWltY1RvQjVBMXREVkU3RlU3S29GMENuZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729237494),
('To4yrTGaN3LQmYfoxHBfyeLsDtABx6Q0yEzJeAJl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDBuNTdKb0VNY05SSHFKbHZNSXk0NktFY1Exb1hHb3YwbnYwTHAzRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy8zL2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729277016),
('3PB5IXJcCCRkHb1za3Ls7uzVQ2ahNPSc4B3aQPd6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHZkMzM0ZkFTWDBqYUlXRHNZTWZnTWpieWd4cEdhanJIbnZCeDFNbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729490011),
('B4ldEuNJYlMs586YgiKYGfooNrlL4kKaO7JYUqhn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlBsSFQ1ZmZsUEtXeFdYcDFiQldLSTd4NHpyNEJuSzQ0djlUZ0k5UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729490664);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `timezone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Julianne', 'Mitchell', 'roselyn.mante@example.org', 'CET', '2024-10-17 04:51:13', '$2y$12$lpArlVa4VW3dTDqpqFGN5e8u5nXhYUTvWzpU/wAj7lQ4qqsNsrQc2', 'sP5xvLGadg', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(4, 'Raquel', 'Steuber', 'desmond92@example.org', 'CST', '2024-10-17 04:51:14', '$2y$12$W7Wu1e82j6HHOlQzcIFyv.vnsRsaqAwOM3Gm5gIM.NYfTlNE5mRSC', 'RWPQTEMrzy', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(5, 'Alaina', 'Grady', 'maudie.gibson@example.org', 'GMT+1', '2024-10-17 04:51:14', '$2y$12$ATXSHqsRvMQAVksb4im8lONx3m4DU7gf1M2H0raA.5UiuBjG3iJWu', 'D6pNoEyinl', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(6, 'Jayda', 'Becker', 'tboyle@example.org', 'CST', '2024-10-17 04:51:14', '$2y$12$B2ZLRPN5mgX3HPcfdu80/udN0kh10WRf1OE6AG8xk7Qz/AjzycQBO', 'aqXj4OQK9Z', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(7, 'Kyler', 'Sanford', 'gwen84@example.org', 'CST', '2024-10-17 04:51:14', '$2y$12$M4rUU7QioP4BaVeRUkDHDOuZ3cl7xUViQtdj2FrYBLWMB5Mt1qhAi', '4U6mW6fxOS', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(8, 'Adela', 'Lang', 'trever24@example.net', 'CST', '2024-10-17 04:51:15', '$2y$12$/AYn9iTz6eYKXwQFIvDxWuaUOT/SSKQuZymBo9kafNjM9CZV26fim', 'AIPUjrBUeO', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(9, 'Adam', 'Crooks', 'lemke.neha@example.net', 'GMT+1', '2024-10-17 04:51:15', '$2y$12$yq9967M6ci2iczt8ZNgekufPUuB73FKEPRaa5yyqIE/qTA3FE8m1G', 'up8oDyNgZS', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(10, 'Loma', 'Beer', 'swaniawski.laurie@example.org', 'CST', '2024-10-17 04:51:15', '$2y$12$ULdCwWFXFv9vAlVTXvl1venhdnVyUagRqVoZSy0XKWdVCSGs3SkIm', 'LTVufsmyzl', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(11, 'Meaghan', 'Considine', 'vdamore@example.com', 'GMT+1', '2024-10-17 04:51:15', '$2y$12$TiRUAzo7FuDdQHaDrvUIFOExSHvk4PdgNu8f5/UqyEpACSlmaxlHC', 'txdRFGNaYX', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(12, 'Lew', 'Lang', 'hzemlak@example.org', 'CET', '2024-10-17 04:51:16', '$2y$12$MbI946RWG1ouiNwWOXfcKOlJzt3q2pq16qly24.IP6gW5i06H6dTK', 'n9LN3i6xl8', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(13, 'Melissa', 'Hamill', 'katlynn29@example.net', 'CST', '2024-10-17 04:51:16', '$2y$12$12j.BkrQSm9RXw68vQSQteIxSlfgIxDsPhS8he7GsRFBCtpESegoe', 'rIXPO2bJnI', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(14, 'Evan', 'Rohan', 'ohara.lilly@example.net', 'CST', '2024-10-17 04:51:16', '$2y$12$t8drhEzG1lP5sTokMWP29OFgb6B33Sf7dpqrUySL90nqjC.1pyMfK', 'hQ2JJtyySd', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(15, 'Salma', 'Christiansen', 'bradley36@example.org', 'CET', '2024-10-17 04:51:16', '$2y$12$GpAy4YZmOYvQr2WPOQ4RMOFVBr.DDC7U/6BTkpmVrm10B/BBqaxVW', 'tdb9HMDiPq', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(16, 'Michael', 'Kub', 'wbeatty@example.com', 'CET', '2024-10-17 04:51:16', '$2y$12$.eEOSvdz55Mlr3YEf6fXQ.FJzOpxHCxSiN1K2qRcIj2aR2VW0iA5K', 'P2zO4voSc6', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(17, 'Verona', 'Robel', 'jayce11@example.net', 'CET', '2024-10-17 04:51:17', '$2y$12$V6PR/z/tSIK7XjS/Fou96.NgB0fdKOu0zGLz/dnf.KJgcpdQDhQdS', 'JOAJssbRxS', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(18, 'Stewart', 'Lockman', 'viva.kirlin@example.com', 'CST', '2024-10-17 04:51:17', '$2y$12$Sc6QuqZ7lI3.AxQoYIkyAeOAIwSlvj7Mep5j.szXGv8OYOB7Cbcrm', 'EMveVM4b8l', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(19, 'Dexter', 'Ernser', 'samara30@example.org', 'CET', '2024-10-17 04:51:17', '$2y$12$6cV8iJviy3mCrqmOLTA8JOu6DSRRfaYZgOSfEtJYroW0XPMmZxmk2', 'SDZuSKcaVo', '2024-10-17 04:51:18', '2024-10-18 02:35:19'),
(20, 'Dora', 'Metz', 'bartholome02@example.org', 'CST', '2024-10-17 04:51:17', '$2y$12$zcii7bYDLaazPdVrdPGzzeoIDPRiraH02jxi4XHmaObZA5yYy.iS6', '7ybxzGElpQ', '2024-10-17 04:51:18', '2024-10-18 02:35:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
