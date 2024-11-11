-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2024 at 12:18 PM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u884331680_kdron`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(160) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(160) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(160) DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'User has been Created', 1, 'Gainhq\\Installer\\App\\Models\\Core\\User', 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Superadmin\",\"last_name\":null,\"email\":\"superadmin@mail.com\"}}', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(2, 'default', 'default.notification_setting has been Created', 1, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(3, 'default', 'created', 1, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(4, 'default', 'default.notification_setting has been Created', 2, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(5, 'default', 'created', 2, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(6, 'default', 'default.notification_setting has been Created', 3, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(7, 'default', 'created', 3, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(8, 'default', 'default.notification_setting has been Created', 4, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(9, 'default', 'created', 4, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(10, 'default', 'default.notification_setting has been Created', 5, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(11, 'default', 'created', 5, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(12, 'default', 'default.notification_setting has been Created', 6, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(13, 'default', 'created', 6, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(14, 'default', 'default.notification_setting has been Created', 7, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(15, 'default', 'created', 7, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(16, 'default', 'default.notification_setting has been Created', 8, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(17, 'default', 'created', 8, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(18, 'default', 'default.notification_setting has been Created', 9, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(19, 'default', 'created', 9, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(20, 'default', 'default.notification_setting has been Created', 10, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(21, 'default', 'created', 10, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(22, 'default', 'default.notification_setting has been Created', 11, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(23, 'default', 'created', 11, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(24, 'default', 'default.notification_setting has been Created', 12, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(25, 'default', 'created', 12, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(26, 'default', 'default.notification_setting has been Created', 13, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(27, 'default', 'created', 13, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(28, 'default', 'default.notification_setting has been Created', 14, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(29, 'default', 'created', 14, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(30, 'default', 'default.notification_setting has been Created', 15, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(31, 'default', 'created', 15, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(32, 'default', 'default.notification_setting has been Created', 16, 'App\\Models\\Core\\Setting\\NotificationSetting', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(33, 'default', 'created', 16, 'App\\Models\\Core\\Setting\\NotificationAudience', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(34, 'default', 'Notification template has been Created', 1, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(35, 'default', 'Notification template has been Created', 2, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(36, 'default', 'Notification template has been Created', 3, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(37, 'default', 'Notification template has been Created', 4, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(38, 'default', 'Notification template has been Created', 5, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(39, 'default', 'Notification template has been Created', 6, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(40, 'default', 'Notification template has been Created', 7, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(41, 'default', 'Notification template has been Created', 8, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(42, 'default', 'Notification template has been Created', 9, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(43, 'default', 'Notification template has been Created', 10, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(44, 'default', 'Notification template has been Created', 11, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(45, 'default', 'Notification template has been Created', 12, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(46, 'default', 'Notification template has been Created', 13, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(47, 'default', 'Notification template has been Created', 14, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(48, 'default', 'Notification template has been Created', 15, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(49, 'default', 'Notification template has been Created', 16, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(50, 'default', 'Notification template has been Created', 17, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(51, 'default', 'Notification template has been Created', 18, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(52, 'default', 'Notification template has been Created', 19, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(53, 'default', 'Notification template has been Created', 20, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(54, 'default', 'Notification template has been Created', 21, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(55, 'default', 'Notification template has been Created', 22, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(56, 'default', 'Notification template has been Created', 23, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(57, 'default', 'Notification template has been Created', 24, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(58, 'default', 'Notification template has been Created', 25, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(59, 'default', 'Notification template has been Created', 26, 'App\\Models\\Core\\Notification\\NotificationTemplate', 'created', NULL, NULL, '[]', NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(60, 'default', 'default.setting has been updated', 6, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:55:02', '2024-11-07 11:55:02'),
(61, 'default', 'default.setting has been updated', 12, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:55:02', '2024-11-07 11:55:02'),
(62, 'default', 'default.setting has been updated', 18, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:55:02', '2024-11-07 11:55:02'),
(63, 'default', 'default.setting has been Created', 20, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:55:02', '2024-11-07 11:55:02'),
(64, 'default', 'default.setting has been Created', 21, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:55:02', '2024-11-07 11:55:02'),
(65, 'default', 'default.setting has been updated', 11, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:55:33', '2024-11-07 11:55:33'),
(66, 'default', 'default.setting has been Created', 22, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(67, 'default', 'default.setting has been Created', 23, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(68, 'default', 'default.setting has been Created', 24, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(69, 'default', 'default.setting has been Created', 25, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(70, 'default', 'default.setting has been Created', 26, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(71, 'default', 'default.setting has been Created', 27, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(72, 'default', 'default.setting has been Created', 28, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(73, 'default', 'default.setting has been Created', 29, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(74, 'default', 'default.setting has been Created', 30, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(75, 'default', 'default.setting has been Created', 31, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(76, 'default', 'User has been Created', 2, 'App\\Models\\Core\\Auth\\User', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 11:59:24', '2024-11-07 11:59:24'),
(77, 'default', 'An user has been invited to join', NULL, NULL, NULL, 1, 'App\\Models\\Core\\Auth\\User', '{\"old\":[],\"attributes\":{\"email\":\"darwin.ibay30@gmail.com\",\"status_id\":3,\"invitation_token\":\"ZGFyd2luLmliYXkzMEBnbWFpbC5jb20taW52aXRhdGlvbi1mcm9tLXVz\",\"created_by\":1,\"updated_at\":\"2024-11-07T11:59:24.000000Z\",\"created_at\":\"2024-11-07T11:59:24.000000Z\",\"id\":2,\"full_name\":null,\"roles\":[]}}', NULL, '2024-11-07 11:59:27', '2024-11-07 11:59:27'),
(78, 'default', 'created', 1, 'App\\Models\\App\\Export\\ModuleExport', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(79, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(80, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(81, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(82, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(83, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(84, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(85, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(86, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(87, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(88, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(89, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(90, 'default', 'updated', 1, 'App\\Models\\App\\Export\\ModuleExport', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:01:31', '2024-11-07 12:01:31'),
(91, 'default', 'default.setting has been updated', 2, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:03:53', '2024-11-07 12:03:53'),
(92, 'default', 'default.setting has been updated', 3, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:07:35', '2024-11-07 12:07:35'),
(93, 'default', 'default.setting has been updated', 20, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:08:26', '2024-11-07 12:08:26'),
(94, 'default', 'default.setting has been updated', 4, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:08:26', '2024-11-07 12:08:26'),
(95, 'default', 'default.setting has been updated', 5, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:08:26', '2024-11-07 12:08:26'),
(96, 'default', 'default.setting has been updated', 2, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:09:06', '2024-11-07 12:09:06'),
(97, 'default', 'default.setting has been updated', 21, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:09:06', '2024-11-07 12:09:06'),
(98, 'default', 'default.setting has been updated', 18, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:14:33', '2024-11-07 12:14:33'),
(99, 'default', 'User has been Created', 3, 'App\\Models\\Core\\Auth\\User', 'created', NULL, NULL, '[]', NULL, '2024-11-07 12:18:42', '2024-11-07 12:18:42'),
(100, 'default', 'created', 1, 'App\\Models\\App\\Applicant\\Applicant', 'created', NULL, NULL, '[]', NULL, '2024-11-07 12:18:42', '2024-11-07 12:18:42'),
(101, 'default', 'created', 1, 'App\\Models\\App\\Company\\Department', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:19:32', '2024-11-07 12:19:32'),
(102, 'default', 'created', 2, 'App\\Models\\App\\Company\\Department', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:19:37', '2024-11-07 12:19:37'),
(103, 'default', 'deleted', 1, 'App\\Models\\App\\Export\\ModuleExport', 'deleted', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:22:40', '2024-11-07 12:22:40'),
(104, 'default', 'created', 1, 'App\\Models\\App\\Company\\CompanyLocation', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:26:07', '2024-11-07 12:26:07'),
(105, 'default', 'deleted', 1, 'App\\Models\\App\\Company\\CompanyLocation', 'deleted', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:26:13', '2024-11-07 12:26:13'),
(106, 'default', 'Role has been Created', 3, 'App\\Models\\Core\\Auth\\Role', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:27:57', '2024-11-07 12:27:57'),
(107, 'default', 'User has been Deleted', 2, 'App\\Models\\Core\\Auth\\User', 'deleted', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:28:38', '2024-11-07 12:28:38'),
(108, 'default', 'User has been Created', 4, 'App\\Models\\Core\\Auth\\User', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:28:46', '2024-11-07 12:28:46'),
(109, 'default', 'An user has been invited to join', NULL, NULL, NULL, 1, 'App\\Models\\Core\\Auth\\User', '{\"old\":[],\"attributes\":{\"email\":\"darwin.ibay30@gmail.com\",\"status_id\":3,\"invitation_token\":\"ZGFyd2luLmliYXkzMEBnbWFpbC5jb20taW52aXRhdGlvbi1mcm9tLXVz\",\"created_by\":1,\"updated_at\":\"2024-11-07T12:28:46.000000Z\",\"created_at\":\"2024-11-07T12:28:46.000000Z\",\"id\":4,\"full_name\":null,\"roles\":[]}}', NULL, '2024-11-07 12:28:49', '2024-11-07 12:28:49'),
(110, 'default', 'User has been Deleted', 4, 'App\\Models\\Core\\Auth\\User', 'deleted', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:45:19', '2024-11-07 12:45:19'),
(111, 'default', 'Role has been updated', 3, 'App\\Models\\Core\\Auth\\Role', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:46:52', '2024-11-07 12:46:52'),
(112, 'default', 'User has been Created', 5, 'App\\Models\\Core\\Auth\\User', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:47:15', '2024-11-07 12:47:15'),
(113, 'default', 'An user has been invited to join', NULL, NULL, NULL, 1, 'App\\Models\\Core\\Auth\\User', '{\"old\":[],\"attributes\":{\"email\":\"darwin.ibay30@gmail.com\",\"status_id\":3,\"invitation_token\":\"ZGFyd2luLmliYXkzMEBnbWFpbC5jb20taW52aXRhdGlvbi1mcm9tLXVz\",\"created_by\":1,\"updated_at\":\"2024-11-07T12:47:15.000000Z\",\"created_at\":\"2024-11-07T12:47:15.000000Z\",\"id\":5,\"full_name\":null,\"roles\":[]}}', NULL, '2024-11-07 12:47:18', '2024-11-07 12:47:18'),
(114, 'default', 'User has been updated', 5, 'App\\Models\\Core\\Auth\\User', 'updated', NULL, NULL, '[]', NULL, '2024-11-07 12:48:18', '2024-11-07 12:48:18'),
(115, 'default', 'User confirmed his joining', NULL, NULL, NULL, NULL, NULL, '{\"old\":[],\"attributes\":{\"id\":5,\"first_name\":\"Darwin\",\"last_name\":\"Ibay\",\"email\":\"darwin.ibay30@gmail.com\",\"last_login_at\":null,\"created_by\":1,\"status_id\":1,\"invitation_token\":\"ZGFyd2luLmliYXkzMEBnbWFpbC5jb20taW52aXRhdGlvbi1mcm9tLXVz\",\"created_at\":\"2024-11-07T12:47:15.000000Z\",\"updated_at\":\"2024-11-07T12:48:18.000000Z\",\"deleted_at\":null,\"full_name\":\"Darwin Ibay\",\"status\":{\"id\":3,\"name\":\"status_invited\",\"class\":\"purple\",\"type\":\"user\",\"created_at\":null,\"updated_at\":null,\"translated_name\":\"Invited\"}}}', NULL, '2024-11-07 12:48:18', '2024-11-07 12:48:18'),
(116, 'default', 'created', 2, 'App\\Models\\App\\Company\\CompanyLocation', 'created', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:51:00', '2024-11-07 12:51:00'),
(117, 'default', 'created', 1, 'App\\Models\\App\\JobPost\\JobPost', 'created', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:51:39', '2024-11-07 12:51:39'),
(118, 'default', 'created', 1, 'App\\Models\\App\\Recruitment\\HiringTeam', 'created', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:51:39', '2024-11-07 12:51:39'),
(119, 'default', 'updated', 1, 'App\\Models\\App\\JobPost\\JobPost', 'updated', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:52:02', '2024-11-07 12:52:02'),
(120, 'default', 'created', 2, 'App\\Models\\App\\Applicant\\Applicant', 'created', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:55:00', '2024-11-07 12:55:00'),
(121, 'default', 'created', 1, 'App\\Models\\App\\Applicant\\JobApplicant', 'created', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:55:00', '2024-11-07 12:55:00'),
(122, 'default', 'created', 1, 'App\\Models\\App\\JobPost\\ApplicationEmail', 'created', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:55:03', '2024-11-07 12:55:03'),
(123, 'timeline', '<strong>Darwin Ibay</strong> has applied for the Job <strong>SECURITY GUARD</strong> through online', 1, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:55:04', '2024-11-07 12:55:04'),
(124, 'default', 'updated', 1, 'App\\Models\\App\\Applicant\\JobApplicant', 'updated', 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:55:53', '2024-11-07 12:55:53'),
(125, 'timeline', '<strong>Darwin Ibay</strong> has given <strong>5 star</strong> review by <strong>Darwin Ibay</strong>', 1, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, 5, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 12:55:53', '2024-11-07 12:55:53'),
(126, 'default', 'default.setting has been Created', 32, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(127, 'default', 'default.setting has been Created', 33, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(128, 'default', 'default.setting has been Created', 34, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(129, 'default', 'default.setting has been Created', 35, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(130, 'default', 'default.setting has been Created', 36, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(131, 'default', 'default.setting has been Created', 37, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(132, 'default', 'default.setting has been Created', 38, 'App\\Models\\Core\\Setting\\Setting', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(133, 'default', 'created', 2, 'App\\Models\\App\\JobPost\\ApplicationEmail', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-07 13:04:44', '2024-11-07 13:04:44'),
(134, 'default', 'default.setting has been updated', 3, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 02:46:18', '2024-11-08 02:46:18'),
(135, 'default', 'User has been Created', 6, 'App\\Models\\Core\\Auth\\User', 'created', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:03:33', '2024-11-08 11:03:33'),
(136, 'default', 'An user has been invited to join', NULL, NULL, NULL, 1, 'App\\Models\\Core\\Auth\\User', '{\"old\":[],\"attributes\":{\"email\":\"claudinegicom04@gmail.com\",\"status_id\":3,\"invitation_token\":\"Y2xhdWRpbmVnaWNvbTA0QGdtYWlsLmNvbS1pbnZpdGF0aW9uLWZyb20tdXM=\",\"created_by\":1,\"updated_at\":\"2024-11-08T11:03:33.000000Z\",\"created_at\":\"2024-11-08T11:03:33.000000Z\",\"id\":6,\"full_name\":null,\"roles\":[]}}', NULL, '2024-11-08 11:03:35', '2024-11-08 11:03:35'),
(137, 'default', 'User has been updated', 6, 'App\\Models\\Core\\Auth\\User', 'updated', NULL, NULL, '[]', NULL, '2024-11-08 11:05:15', '2024-11-08 11:05:15'),
(138, 'default', 'User confirmed his joining', NULL, NULL, NULL, NULL, NULL, '{\"old\":[],\"attributes\":{\"id\":6,\"first_name\":\"Claudine Isabelle\",\"last_name\":\"Gicom\",\"email\":\"claudinegicom04@gmail.com\",\"last_login_at\":null,\"created_by\":1,\"status_id\":1,\"invitation_token\":\"Y2xhdWRpbmVnaWNvbTA0QGdtYWlsLmNvbS1pbnZpdGF0aW9uLWZyb20tdXM=\",\"created_at\":\"2024-11-08T11:03:33.000000Z\",\"updated_at\":\"2024-11-08T11:05:15.000000Z\",\"deleted_at\":null,\"full_name\":\"Claudine Isabelle Gicom\",\"status\":{\"id\":3,\"name\":\"status_invited\",\"class\":\"purple\",\"type\":\"user\",\"created_at\":null,\"updated_at\":null,\"translated_name\":\"Invited\"}}}', NULL, '2024-11-08 11:05:15', '2024-11-08 11:05:15'),
(139, 'default', 'created', 2, 'App\\Models\\App\\JobPost\\JobPost', 'created', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:10:13', '2024-11-08 11:10:13'),
(140, 'default', 'created', 2, 'App\\Models\\App\\Recruitment\\HiringTeam', 'created', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:10:13', '2024-11-08 11:10:13'),
(141, 'default', 'updated', 2, 'App\\Models\\App\\JobPost\\JobPost', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:10:53', '2024-11-08 11:10:53'),
(142, 'default', 'updated', 2, 'App\\Models\\App\\JobPost\\JobPost', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:12:01', '2024-11-08 11:12:01'),
(143, 'default', 'updated', 2, 'App\\Models\\App\\JobPost\\JobPost', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:12:21', '2024-11-08 11:12:21'),
(144, 'default', 'created', 3, 'App\\Models\\App\\Applicant\\Applicant', 'created', NULL, NULL, '[]', NULL, '2024-11-08 11:18:53', '2024-11-08 11:18:53'),
(145, 'default', 'created', 2, 'App\\Models\\App\\Applicant\\JobApplicant', 'created', NULL, NULL, '[]', NULL, '2024-11-08 11:18:53', '2024-11-08 11:18:53'),
(146, 'default', 'created', 3, 'App\\Models\\App\\JobPost\\ApplicationEmail', 'created', NULL, NULL, '[]', NULL, '2024-11-08 11:18:56', '2024-11-08 11:18:56'),
(147, 'timeline', '<strong>Kenneth  Munar</strong> has applied for the Job <strong>SECURITY GUARD</strong> through online', 2, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, NULL, NULL, '[]', NULL, '2024-11-08 11:18:56', '2024-11-08 11:18:56'),
(148, 'default', 'default.setting has been updated', 17, 'App\\Models\\Core\\Setting\\Setting', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:23:22', '2024-11-08 11:23:22'),
(149, 'default', 'created', 4, 'App\\Models\\App\\Applicant\\Applicant', 'created', NULL, NULL, '[]', NULL, '2024-11-08 11:24:34', '2024-11-08 11:24:34'),
(150, 'default', 'created', 3, 'App\\Models\\App\\Applicant\\JobApplicant', 'created', NULL, NULL, '[]', NULL, '2024-11-08 11:24:34', '2024-11-08 11:24:34'),
(151, 'default', 'created', 4, 'App\\Models\\App\\JobPost\\ApplicationEmail', 'created', NULL, NULL, '[]', NULL, '2024-11-08 11:24:37', '2024-11-08 11:24:37'),
(152, 'timeline', '<strong>awwegf srfefwe</strong> has applied for the Job <strong>Sentinel</strong> through online', 3, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, NULL, NULL, '[]', NULL, '2024-11-08 11:24:37', '2024-11-08 11:24:37'),
(153, 'default', 'updated', 3, 'App\\Models\\App\\Applicant\\JobApplicant', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:30:40', '2024-11-08 11:30:40'),
(154, 'timeline', '<strong>Claudine Isabelle Gicom</strong> moved <strong>awwegf srfefwe</strong> to <strong>interview</strong>', 3, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:30:40', '2024-11-08 11:30:40'),
(155, 'default', 'updated', 3, 'App\\Models\\App\\Applicant\\JobApplicant', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:30:43', '2024-11-08 11:30:43'),
(156, 'timeline', '<strong>Claudine Isabelle Gicom</strong> moved <strong>awwegf srfefwe</strong> to <strong>negotiation</strong>', 3, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:30:43', '2024-11-08 11:30:43'),
(157, 'default', 'updated', 3, 'App\\Models\\App\\Applicant\\JobApplicant', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:30:46', '2024-11-08 11:30:46'),
(158, 'timeline', '<strong>Claudine Isabelle Gicom</strong> moved <strong>awwegf srfefwe</strong> to <strong>interview</strong>', 3, 'App\\Models\\App\\Applicant\\JobApplicant', NULL, 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:30:46', '2024-11-08 11:30:46'),
(159, 'default', 'default.setting has been updated', 18, 'App\\Models\\Core\\Setting\\Setting', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:35:31', '2024-11-08 11:35:31'),
(160, 'default', 'default.setting has been updated', 20, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:38:28', '2024-11-08 11:38:28'),
(161, 'default', 'default.setting has been updated', 3, 'App\\Models\\Core\\Setting\\Setting', 'updated', 1, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:38:29', '2024-11-08 11:38:29'),
(162, 'default', 'updated', 2, 'App\\Models\\App\\JobPost\\JobPost', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:47:44', '2024-11-08 11:47:44'),
(163, 'default', 'updated', 2, 'App\\Models\\App\\JobPost\\JobPost', 'updated', 6, 'App\\Models\\Core\\Auth\\User', '[]', NULL, '2024-11-08 11:50:08', '2024-11-08 11:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(160) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `first_name`, `last_name`, `email`, `phone`, `date_of_birth`, `created_at`, `updated_at`, `user_id`, `gender`) VALUES
(1, 'DARWIN', 'IBAY', 'darwin.ibay29@gmail.com', NULL, NULL, '2024-11-07 12:18:42', '2024-11-07 12:18:42', NULL, NULL),
(2, 'Darwin', 'Ibay', 'darwin.ibay28@gmail.com', '+63 927 339 7377', '1995-04-28', '2024-11-07 12:55:00', '2024-11-07 12:55:00', NULL, 'Male'),
(3, 'Kenneth ', 'Munar', 'munarkennethangelo22@gmail.com', '+63 951 476 3173', '2024-04-01', '2024-11-08 11:18:53', '2024-11-08 11:18:53', NULL, 'Male'),
(4, 'awwegf', 'srfefwe', 'claudineisabellegicom@gmail.com', NULL, '1982-01-01', '2024-11-08 11:24:34', '2024-11-08 11:24:34', NULL, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `application_answers`
--

CREATE TABLE `application_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_applicant_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_answers`
--

INSERT INTO `application_answers` (`id`, `job_applicant_id`, `question`, `answer`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '[{\"id\":\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\",\"is_visible\":true,\"title\":\"Basic Information\",\"items\":[{\"id\":\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\",\"fields\":[{\"title\":\"First name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Darwin\"},{\"title\":\"Last name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Ibay\"},{\"title\":\"Email\",\"type\":\"email\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"darwin.ibay28@gmail.com\",\"disabled\":true},{\"title\":\"Gender\",\"type\":\"radio\",\"options\":[\"Male\",\"Female\"],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Male\"},{\"title\":\"Date of birth\",\"type\":\"date\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"maxDate\":\"2024-11-07\"},\"value\":\"1995-04-28T12:53:30.534Z\"},{\"title\":\"Phone\",\"type\":\"tel-input\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"+63 927 339 7377\"}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false,\"fixed\":true},\"key\":\"basic_information\"},{\"id\":\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\",\"is_visible\":true,\"title\":\"Contact Details\",\"items\":[{\"id\":\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\",\"fields\":[{\"title\":\"Address\",\"type\":\"textarea\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"pangasinan\"},{\"title\":\"Linkedin\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Twitter\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"7d3e3733-15e0-440e-9e90-794f1e98b45c\",\"is_visible\":true,\"title\":\"Education & Experience\",\"items\":[{\"id\":\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\",\"fields\":[{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false}],\"duplicate\":true},{\"title\":\"Work Experience\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"duplicate\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Start\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"End\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"Designation\",\"type\":\"text\",\"options\":[],\"required\":false}]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\",\"is_visible\":true,\"title\":\"Question\",\"items\":[{\"id\":\"7b01452c-9e48-4f81-a270-8f17f609d48e\",\"fields\":[{\"title\":\"Write something about you...\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"is_visible\":true,\"value\":\"asdada\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"d76873c5-d2d0-4182-a062-ddb82b56a57e\",\"fields\":[{\"title\":\"Why you think you are good for this job?\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"asddada\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\",\"is_visible\":true,\"title\":\"Assignment\",\"items\":[{\"id\":\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\",\"fields\":[{\"title\":\"Write your assignment question\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"sdfsfsfsfs\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\",\"is_visible\":true,\"title\":\"Resume\",\"items\":[{\"id\":\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\",\"fields\":[{\"title\":\"Upload your resume here\",\"type\":\"dropzone\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":[]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}]', NULL, NULL, NULL),
(2, 1, '1715565420_0eda21eb-5847-4c7f-8ec9-349462ab2a63-removebg-preview.png', NULL, 'attachments/1715565420_0eda21eb-5847-4c7f--672cb8a4b211a.png', NULL, NULL),
(3, 2, NULL, '[{\"id\":\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\",\"is_visible\":true,\"title\":\"Basic Information\",\"items\":[{\"id\":\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\",\"fields\":[{\"title\":\"First name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Kenneth \"},{\"title\":\"Last name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Munar\"},{\"title\":\"Email\",\"type\":\"email\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"munarkennethangelo22@gmail.com\",\"disabled\":true},{\"title\":\"Gender\",\"type\":\"radio\",\"options\":[\"Male\",\"Female\"],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Male\"},{\"title\":\"Date of birth\",\"type\":\"date\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"maxDate\":\"2024-11-08\"},\"value\":\"2024-04-01T11:14:22.685Z\"},{\"title\":\"Phone\",\"type\":\"tel-input\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"+63 951 476 3173\"}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false,\"fixed\":true},\"key\":\"basic_information\"},{\"id\":\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\",\"is_visible\":true,\"title\":\"Contact Details\",\"items\":[{\"id\":\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\",\"fields\":[{\"title\":\"Address\",\"type\":\"textarea\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"Address\"},{\"title\":\"Linkedin\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"Linkedin\"},{\"title\":\"Twitter\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"Twitter\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"7d3e3733-15e0-440e-9e90-794f1e98b45c\",\"is_visible\":true,\"title\":\"Education & Experience\",\"items\":[{\"id\":\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\",\"fields\":[{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"Level\"},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"Institute\"},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"CGPA\"}],\"removeable\":true},{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"Level\"},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"Level\"},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"Level\"}],\"duplicate\":true},{\"title\":\"Work Experience\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"duplicate\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Start\",\"type\":\"date\",\"options\":[],\"required\":false,\"value\":\"2024-11-06T11:18:03.637Z\"},{\"title\":\"End\",\"type\":\"date\",\"options\":[],\"required\":false,\"value\":\"2024-11-07T11:18:06.237Z\"},{\"title\":\"Designation\",\"type\":\"text\",\"options\":[],\"required\":false,\"value\":\"adasdafwefgweg\"}]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\",\"is_visible\":true,\"title\":\"Question\",\"items\":[{\"id\":\"7b01452c-9e48-4f81-a270-8f17f609d48e\",\"fields\":[{\"title\":\"Write something about you...\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"is_visible\":true,\"value\":\"erherth\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"d76873c5-d2d0-4182-a062-ddb82b56a57e\",\"fields\":[{\"title\":\"Why you think you are good for this job?\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"ehwergwersgbsdffv\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\",\"is_visible\":true,\"title\":\"Assignment\",\"items\":[{\"id\":\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\",\"fields\":[{\"title\":\"Write your assignment question\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"sdgedherth\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\",\"is_visible\":true,\"title\":\"Resume\",\"items\":[{\"id\":\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\",\"fields\":[{\"title\":\"Upload your resume here\",\"type\":\"dropzone\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":[]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}]', NULL, NULL, NULL),
(4, 2, 'MIDTERM EXAM 2.txt', NULL, 'attachments/m_i_d_t_e_r_m_e_x_a_m2-672df39d9affb.txt', NULL, NULL),
(5, 3, NULL, '[{\"id\":\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\",\"is_visible\":true,\"title\":\"Basic Information\",\"items\":[{\"id\":\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\",\"fields\":[{\"title\":\"First name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"awwegf\"},{\"title\":\"Last name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"srfefwe\"},{\"title\":\"Email\",\"type\":\"email\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"claudineisabellegicom@gmail.com\",\"disabled\":true},{\"title\":\"Gender\",\"type\":\"radio\",\"options\":[\"Male\",\"Female\"],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"value\":\"Male\"},{\"title\":\"Date of birth\",\"type\":\"date\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"maxDate\":\"2024-11-08\"},\"value\":\"1982-01-01T11:21:17.773Z\"},{\"title\":\"Phone\",\"type\":\"tel-input\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false,\"fixed\":true},\"key\":\"basic_information\"},{\"id\":\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\",\"is_visible\":true,\"title\":\"Contact Details\",\"items\":[{\"id\":\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\",\"fields\":[{\"title\":\"Address\",\"type\":\"textarea\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Linkedin\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Twitter\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"7d3e3733-15e0-440e-9e90-794f1e98b45c\",\"is_visible\":true,\"title\":\"Education & Experience\",\"items\":[{\"id\":\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\",\"fields\":[{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false}],\"duplicate\":true},{\"title\":\"Work Experience\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"duplicate\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Start\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"End\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"Designation\",\"type\":\"text\",\"options\":[],\"required\":false}]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\",\"is_visible\":true,\"title\":\"Question\",\"items\":[{\"id\":\"7b01452c-9e48-4f81-a270-8f17f609d48e\",\"fields\":[{\"title\":\"Write something about you...\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"is_visible\":true,\"value\":\"esdfwregw3f\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"d76873c5-d2d0-4182-a062-ddb82b56a57e\",\"fields\":[{\"title\":\"Why you think you are good for this job?\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"sdgbwfg\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\",\"is_visible\":true,\"title\":\"Assignment\",\"items\":[{\"id\":\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\",\"fields\":[{\"title\":\"Write your assignment question\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":\"sfgw3f\"}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\",\"is_visible\":true,\"title\":\"Resume\",\"items\":[{\"id\":\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\",\"fields\":[{\"title\":\"Upload your resume here\",\"type\":\"dropzone\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"value\":[]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}]', NULL, NULL, NULL),
(6, 3, 'beneficiary.docx', NULL, 'attachments/beneficiary-672df4f2902ec.docx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_emails`
--

CREATE TABLE `application_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender` varchar(255) NOT NULL,
  `message_id` varchar(128) NOT NULL,
  `reference_id` varchar(128) DEFAULT NULL,
  `text_html` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_emails`
--

INSERT INTO `application_emails` (`id`, `applicant_id`, `job_post_id`, `user_id`, `sender`, `message_id`, `reference_id`, `text_html`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, 'user', '621fd98fb6c5a7322ca085f2ae27235b@kdronksia.online', NULL, '<p><img src=\"https://kdronksia.online/storage/logo/672cad8753ff5.png\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi Darwin Ibay</span><br></p><p>\nYour application for SECURITY GUARD has been received successfully.\n<br><br>We will get back to you as soon as possible.\n<br><br>Best regards,</p><p>KidronKSIA</p><p></p><p></p>', '2024-11-07 12:55:03', '2024-11-07 12:55:03'),
(2, 2, 1, 1, 'user', '7872274ed95a7b55daf7a1a45854c464@kdronksia.online', '621fd98fb6c5a7322ca085f2ae27235b@kdronksia.online', 'please come at office tomorrow', '2024-11-07 13:04:44', '2024-11-07 13:04:44'),
(3, 3, 1, NULL, 'user', 'd69e30aa033a4fa919a2dbac93dd409b@kdronksia.online', NULL, '<p><img src=\"https://kdronksia.online/storage/logo/672d7b7a03fde.png\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi Kenneth  Munar</span><br></p><p>\nYour application for SECURITY GUARD has been received successfully.\n<br><br>We will get back to you as soon as possible.\n<br><br>Best regards,</p><p>KidronKSIA</p><p></p><p></p>', '2024-11-08 11:18:56', '2024-11-08 11:18:56'),
(4, 4, 2, NULL, 'user', 'af2b00b0cd56632035559a5453051e81@kdronksia.online', NULL, '<p><img src=\"https://kdronksia.online/storage/logo/672d7b7a03fde.png\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi awwegf srfefwe</span><br></p><p>\nYour application for Sentinel has been received successfully.\n<br><br>We will get back to you as soon as possible.\n<br><br>Best regards,</p><p>KidronKSIA</p><p></p><p></p>', '2024-11-08 11:24:37', '2024-11-08 11:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `hiring_team_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(60) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(120) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_pages`
--

CREATE TABLE `career_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` longtext NOT NULL,
  `content` longtext NOT NULL,
  `page_blocks` mediumtext NOT NULL,
  `page_style` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `about` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_locations`
--

CREATE TABLE `company_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_locations`
--

INSERT INTO `company_locations` (`id`, `company_detail_id`, `address`, `created_at`, `updated_at`) VALUES
(2, NULL, 'LAUNION', '2024-11-07 12:51:00', '2024-11-07 12:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `meta` text DEFAULT NULL,
  `in_list` tinyint(1) NOT NULL DEFAULT 0,
  `is_for_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_types`
--

CREATE TABLE `custom_field_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_types`
--

INSERT INTO `custom_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'text', NULL, NULL),
(2, 'textarea', NULL, NULL),
(3, 'radio', NULL, NULL),
(4, 'select', NULL, NULL),
(5, 'date', NULL, NULL),
(6, 'number', NULL, NULL),
(7, 'dropzone', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text NOT NULL,
  `contextable_type` varchar(255) NOT NULL,
  `contextable_id` varchar(255) NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Security', '2024-11-07 12:19:32', '2024-11-07 12:19:32'),
(2, 'Admin', '2024-11-07 12:19:37', '2024-11-07 12:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `email_inbox_ids`
--

CREATE TABLE `email_inbox_ids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_read_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_type_id` bigint(20) UNSIGNED NOT NULL,
  `job_applicant_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Call', NULL, NULL),
(2, 'Meeting', NULL, NULL),
(3, 'Video Call', NULL, NULL),
(4, 'Job Interview', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_levels`
--

CREATE TABLE `experience_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experience_levels`
--

INSERT INTO `experience_levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Entry level', NULL, NULL),
(2, 'Mid level', NULL, NULL),
(3, 'Senior level', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text NOT NULL,
  `fileable_type` varchar(160) NOT NULL,
  `fileable_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `path`, `fileable_type`, `fileable_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'job_post/policeman-672dfb56071d0.png', 'App\\Models\\App\\JobPost\\JobPost', 2, 'job_post_thumbnail_image', '2024-11-08 11:51:50', '2024-11-08 11:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `files_fields`
--

CREATE TABLE `files_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_file` varchar(255) DEFAULT NULL,
  `default_file` varchar(255) DEFAULT NULL,
  `dropzone_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hiring_teams`
--

CREATE TABLE `hiring_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recruiter_id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiring_teams`
--

INSERT INTO `hiring_teams` (`id`, `recruiter_id`, `job_post_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2024-11-07 12:51:39', '2024-11-07 12:51:39'),
(2, 6, 2, '2024-11-08 11:10:13', '2024-11-08 11:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(160) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_alerts`
--

CREATE TABLE `job_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `department` varchar(255) NOT NULL,
  `experience_level` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `working_arrangement` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_stage_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `apply_form_setting` mediumtext DEFAULT NULL,
  `slug` varchar(120) NOT NULL,
  `review` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `disqualification_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `applicant_id`, `job_post_id`, `current_stage_id`, `status_id`, `apply_form_setting`, `slug`, `review`, `disqualification_reason`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 4, '\"[{\\\"id\\\":\\\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Basic Information\\\",\\\"items\\\":[{\\\"id\\\":\\\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\\\",\\\"fields\\\":[{\\\"title\\\":\\\"First name\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Darwin\\\"},{\\\"title\\\":\\\"Last name\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Ibay\\\"},{\\\"title\\\":\\\"Email\\\",\\\"type\\\":\\\"email\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"darwin.ibay28@gmail.com\\\",\\\"disabled\\\":true},{\\\"title\\\":\\\"Gender\\\",\\\"type\\\":\\\"radio\\\",\\\"options\\\":[\\\"Male\\\",\\\"Female\\\"],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Male\\\"},{\\\"title\\\":\\\"Date of birth\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"dateOptions\\\":{\\\"maxDate\\\":\\\"2024-11-07\\\"},\\\"value\\\":\\\"1995-04-28T12:53:30.534Z\\\"},{\\\"title\\\":\\\"Phone\\\",\\\"type\\\":\\\"tel-input\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"+63 927 339 7377\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":false,\\\"move\\\":false}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":false,\\\"move\\\":false,\\\"fixed\\\":true},\\\"key\\\":\\\"basic_information\\\"},{\\\"id\\\":\\\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Contact Details\\\",\\\"items\\\":[{\\\"id\\\":\\\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Address\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"pangasinan\\\"},{\\\"title\\\":\\\"Linkedin\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"title\\\":\\\"Twitter\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"7d3e3733-15e0-440e-9e90-794f1e98b45c\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Education & Experience\\\",\\\"items\\\":[{\\\"id\\\":\\\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Education\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Level\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"Institute\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"CGPA\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false}],\\\"duplicate\\\":true},{\\\"title\\\":\\\"Work Experience\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"duplicate\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Start\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"End\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"Designation\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false}]}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Question\\\",\\\"items\\\":[{\\\"id\\\":\\\"7b01452c-9e48-4f81-a270-8f17f609d48e\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Write something about you...\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"is_visible\\\":true,\\\"value\\\":\\\"asdada\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"d76873c5-d2d0-4182-a062-ddb82b56a57e\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Why you think you are good for this job?\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"asddada\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Assignment\\\",\\\"items\\\":[{\\\"id\\\":\\\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Write your assignment question\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"sdfsfsfsfs\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Resume\\\",\\\"items\\\":[{\\\"id\\\":\\\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Upload your resume here\\\",\\\"type\\\":\\\"dropzone\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":[]}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}]\"', '8d0738a7-abc8-4317-a76b-0f259136e4c0', '5', NULL, '2024-11-07 12:55:00', '2024-11-07 12:55:53'),
(2, 3, 1, 1, 4, '\"[{\\\"id\\\":\\\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Basic Information\\\",\\\"items\\\":[{\\\"id\\\":\\\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\\\",\\\"fields\\\":[{\\\"title\\\":\\\"First name\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Kenneth \\\"},{\\\"title\\\":\\\"Last name\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Munar\\\"},{\\\"title\\\":\\\"Email\\\",\\\"type\\\":\\\"email\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"munarkennethangelo22@gmail.com\\\",\\\"disabled\\\":true},{\\\"title\\\":\\\"Gender\\\",\\\"type\\\":\\\"radio\\\",\\\"options\\\":[\\\"Male\\\",\\\"Female\\\"],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Male\\\"},{\\\"title\\\":\\\"Date of birth\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"dateOptions\\\":{\\\"maxDate\\\":\\\"2024-11-08\\\"},\\\"value\\\":\\\"2024-04-01T11:14:22.685Z\\\"},{\\\"title\\\":\\\"Phone\\\",\\\"type\\\":\\\"tel-input\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"+63 951 476 3173\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":false,\\\"move\\\":false}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":false,\\\"move\\\":false,\\\"fixed\\\":true},\\\"key\\\":\\\"basic_information\\\"},{\\\"id\\\":\\\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Contact Details\\\",\\\"items\\\":[{\\\"id\\\":\\\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Address\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"Address\\\"},{\\\"title\\\":\\\"Linkedin\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"Linkedin\\\"},{\\\"title\\\":\\\"Twitter\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"Twitter\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"7d3e3733-15e0-440e-9e90-794f1e98b45c\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Education & Experience\\\",\\\"items\\\":[{\\\"id\\\":\\\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Education\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Level\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"Level\\\"},{\\\"title\\\":\\\"Institute\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"Institute\\\"},{\\\"title\\\":\\\"CGPA\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"CGPA\\\"}],\\\"removeable\\\":true},{\\\"title\\\":\\\"Education\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Level\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"Level\\\"},{\\\"title\\\":\\\"Institute\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"Level\\\"},{\\\"title\\\":\\\"CGPA\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"Level\\\"}],\\\"duplicate\\\":true},{\\\"title\\\":\\\"Work Experience\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"duplicate\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Start\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"2024-11-06T11:18:03.637Z\\\"},{\\\"title\\\":\\\"End\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"2024-11-07T11:18:06.237Z\\\"},{\\\"title\\\":\\\"Designation\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"value\\\":\\\"adasdafwefgweg\\\"}]}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Question\\\",\\\"items\\\":[{\\\"id\\\":\\\"7b01452c-9e48-4f81-a270-8f17f609d48e\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Write something about you...\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"is_visible\\\":true,\\\"value\\\":\\\"erherth\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"d76873c5-d2d0-4182-a062-ddb82b56a57e\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Why you think you are good for this job?\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"ehwergwersgbsdffv\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Assignment\\\",\\\"items\\\":[{\\\"id\\\":\\\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Write your assignment question\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"sdgedherth\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Resume\\\",\\\"items\\\":[{\\\"id\\\":\\\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Upload your resume here\\\",\\\"type\\\":\\\"dropzone\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":[]}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}]\"', '36ec674e-f27c-4feb-9941-dfa6879609c3', '0', NULL, '2024-11-08 11:18:53', '2024-11-08 11:18:53'),
(3, 4, 2, 9, 5, '\"[{\\\"id\\\":\\\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Basic Information\\\",\\\"items\\\":[{\\\"id\\\":\\\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\\\",\\\"fields\\\":[{\\\"title\\\":\\\"First name\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"awwegf\\\"},{\\\"title\\\":\\\"Last name\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"srfefwe\\\"},{\\\"title\\\":\\\"Email\\\",\\\"type\\\":\\\"email\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"claudineisabellegicom@gmail.com\\\",\\\"disabled\\\":true},{\\\"title\\\":\\\"Gender\\\",\\\"type\\\":\\\"radio\\\",\\\"options\\\":[\\\"Male\\\",\\\"Female\\\"],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"value\\\":\\\"Male\\\"},{\\\"title\\\":\\\"Date of birth\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false},\\\"dateOptions\\\":{\\\"maxDate\\\":\\\"2024-11-08\\\"},\\\"value\\\":\\\"1982-01-01T11:21:17.773Z\\\"},{\\\"title\\\":\\\"Phone\\\",\\\"type\\\":\\\"tel-input\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":false,\\\"delete\\\":false,\\\"move\\\":false}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":false,\\\"move\\\":false}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":false,\\\"move\\\":false,\\\"fixed\\\":true},\\\"key\\\":\\\"basic_information\\\"},{\\\"id\\\":\\\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Contact Details\\\",\\\"items\\\":[{\\\"id\\\":\\\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Address\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"title\\\":\\\"Linkedin\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"title\\\":\\\"Twitter\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"7d3e3733-15e0-440e-9e90-794f1e98b45c\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Education & Experience\\\",\\\"items\\\":[{\\\"id\\\":\\\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Education\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Level\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"Institute\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"CGPA\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false}],\\\"duplicate\\\":true},{\\\"title\\\":\\\"Work Experience\\\",\\\"type\\\":\\\"custom-form\\\",\\\"options\\\":[],\\\"required\\\":false,\\\"is_visible\\\":true,\\\"duplicate\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"fields\\\":[{\\\"title\\\":\\\"Start\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"End\\\",\\\"type\\\":\\\"date\\\",\\\"options\\\":[],\\\"required\\\":false},{\\\"title\\\":\\\"Designation\\\",\\\"type\\\":\\\"text\\\",\\\"options\\\":[],\\\"required\\\":false}]}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Question\\\",\\\"items\\\":[{\\\"id\\\":\\\"7b01452c-9e48-4f81-a270-8f17f609d48e\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Write something about you...\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"is_visible\\\":true,\\\"value\\\":\\\"esdfwregw3f\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"d76873c5-d2d0-4182-a062-ddb82b56a57e\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Why you think you are good for this job?\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"sdgbwfg\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Assignment\\\",\\\"items\\\":[{\\\"id\\\":\\\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Write your assignment question\\\",\\\"type\\\":\\\"textarea\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":\\\"sfgw3f\\\"}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}},{\\\"id\\\":\\\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\\\",\\\"is_visible\\\":true,\\\"title\\\":\\\"Resume\\\",\\\"items\\\":[{\\\"id\\\":\\\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\\\",\\\"fields\\\":[{\\\"title\\\":\\\"Upload your resume here\\\",\\\"type\\\":\\\"dropzone\\\",\\\"options\\\":[],\\\"required\\\":true,\\\"is_visible\\\":true,\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true},\\\"value\\\":[]}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}],\\\"actions\\\":{\\\"edit\\\":true,\\\"delete\\\":true,\\\"move\\\":true}}]\"', 'd923548f-f5a9-477c-8772-a7bbe11650e4', '0', NULL, '2024-11-08 11:24:34', '2024-11-08 11:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_settings`
--

CREATE TABLE `job_application_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `application_settings` mediumtext NOT NULL,
  `editor_settings` mediumtext NOT NULL,
  `template` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `experience_level_id` tinyint(1) NOT NULL,
  `job_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `posted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `stages` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `is_viewable` tinyint(1) NOT NULL DEFAULT 1,
  `vacancy_count` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `responsibilities` text DEFAULT NULL,
  `job_post_settings` longtext NOT NULL,
  `apply_form_settings` mediumtext NOT NULL,
  `last_submission_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `working_arrangement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `company_location_id`, `department_id`, `experience_level_id`, `job_type_id`, `status_id`, `posted_by`, `name`, `slug`, `stages`, `salary`, `is_viewable`, `vacancy_count`, `description`, `responsibilities`, `job_post_settings`, `apply_form_settings`, `last_submission_date`, `created_at`, `updated_at`, `working_arrangement`) VALUES
(1, 2, 1, 2, 1, 9, 5, 'SECURITY GUARD', 'security-guard', 'new,interview,negotiation,shortlist,task phase,hired,disqualified', '24000', 1, '2', 'SAMPLE', NULL, '{\"content\":{\"title\":\"SECURITY GUARD\",\"subtitle\":\"SAMPLE\",\"details\":\"Full Time - LAUNION\",\"bodySection\":[{\"headings\":\"About Job\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"headings\":\"About Employee\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"headings\":\"About requirement\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"headings\":\"Extended Heading\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"}]},\"pageStyle\":{\"defaultView\":[{\"name\":\"Title\",\"key\":\"title\",\"fontSize\":50,\"fontWeight\":700,\"letterSpacing\":1,\"color\":\"#313131\"},{\"name\":\"Subtitle\",\"key\":\"sub-title\",\"fontSize\":30,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#afb1b6\"},{\"name\":\"Details\",\"key\":\"details\",\"fontSize\":20,\"fontWeight\":500,\"letterSpacing\":1,\"color\":\"#00000\"},{\"name\":\"Headings\",\"key\":\"headings\",\"fontSize\":27,\"fontWeight\":600,\"letterSpacing\":0,\"color\":\"#313131\"},{\"name\":\"Description\",\"key\":\"description\",\"fontSize\":16,\"fontWeight\":300,\"letterSpacing\":0,\"color\":\"#6c757d\"}],\"mobileView\":[{\"name\":\"Title\",\"key\":\"title\",\"fontSize\":40,\"fontWeight\":700,\"letterSpacing\":1,\"color\":\"#313131\"},{\"name\":\"Subtitle\",\"key\":\"sub-title\",\"fontSize\":25,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#afb1b6\"},{\"name\":\"Details\",\"key\":\"details\",\"fontSize\":16,\"fontWeight\":500,\"letterSpacing\":1,\"color\":\"#00000\"},{\"name\":\"Headings\",\"key\":\"headings\",\"fontSize\":20,\"fontWeight\":600,\"letterSpacing\":0,\"color\":\"#313131\"},{\"name\":\"Description\",\"key\":\"description\",\"fontSize\":14,\"fontWeight\":300,\"letterSpacing\":0,\"color\":\"#6c757d\"}]},\"pageBlocks\":{\"defaultView\":{\"header\":true,\"body\":true,\"footer\":true,\"logo\":true},\"mobileView\":{\"header\":true,\"body\":true,\"footer\":true,\"logo\":true}}}', '[{\"id\":\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\",\"is_visible\":true,\"title\":\"Basic Information\",\"items\":[{\"id\":\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\",\"fields\":[{\"title\":\"First name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}},{\"title\":\"Last name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}},{\"title\":\"Email\",\"type\":\"email\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}},{\"title\":\"Gender\",\"type\":\"radio\",\"options\":[\"Male\",\"Female\"],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}},{\"title\":\"Date of birth\",\"type\":\"date\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}},{\"title\":\"Phone\",\"type\":\"tel-input\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false,\"fixed\":true},\"key\":\"basic_information\"},{\"id\":\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\",\"is_visible\":true,\"title\":\"Contact Details\",\"items\":[{\"id\":\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\",\"fields\":[{\"title\":\"Address\",\"type\":\"textarea\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Linkedin\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Twitter\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"7d3e3733-15e0-440e-9e90-794f1e98b45c\",\"is_visible\":true,\"title\":\"Education & Experience\",\"items\":[{\"id\":\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\",\"fields\":[{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false}],\"duplicate\":true},{\"title\":\"Work Experience\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"duplicate\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Start\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"End\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"Designation\",\"type\":\"text\",\"options\":[],\"required\":false}]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\",\"is_visible\":true,\"title\":\"Question\",\"items\":[{\"id\":\"7b01452c-9e48-4f81-a270-8f17f609d48e\",\"fields\":[{\"title\":\"Write something about you...\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"is_visible\":true}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"d76873c5-d2d0-4182-a062-ddb82b56a57e\",\"fields\":[{\"title\":\"Why you think you are good for this job?\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\",\"is_visible\":true,\"title\":\"Assignment\",\"items\":[{\"id\":\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\",\"fields\":[{\"title\":\"Write your assignment question\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\",\"is_visible\":true,\"title\":\"Resume\",\"items\":[{\"id\":\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\",\"fields\":[{\"title\":\"Upload your resume here\",\"type\":\"dropzone\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}]', '2024-11-30', '2024-11-07 12:51:39', '2024-11-07 12:52:02', 'on_site'),
(2, 2, 2, 1, 1, 9, 6, 'Sentinel', 'sentinel', 'new,interview,negotiation,shortlist,task phase,hired,disqualified', '10000', 0, '1', 'Hold site.', NULL, '{\"content\":{\"title\":\"Sentinel\",\"subtitle\":\"Hold site.\",\"details\":\"Full Time - LAUNION\",\"bodySection\":[{\"id\":\"81b65614-f0db-514e-2419-ec9da6c3d08d\",\"headings\":\"About Job\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"id\":\"3fa9b02d-8423-df67-4af2-61645ba2100b\",\"headings\":\"About Employee\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"id\":\"5dcb1dc3-4b20-27fc-e213-e9c4f7ff657f\",\"headings\":\"About requirement\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"id\":\"af4bc641-f706-e27a-e02b-2e36a5c5afa4\",\"headings\":\"Extended Heading\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"}],\"hero\":true},\"pageStyle\":{\"defaultView\":[{\"name\":\"Title\",\"key\":\"title\",\"fontSize\":50,\"fontWeight\":700,\"letterSpacing\":1,\"color\":\"#313131\"},{\"name\":\"Subtitle\",\"key\":\"sub-title\",\"fontSize\":30,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#afb1b6\"},{\"name\":\"Details\",\"key\":\"details\",\"fontSize\":20,\"fontWeight\":500,\"letterSpacing\":1,\"color\":\"#00000\"},{\"name\":\"Headings\",\"key\":\"headings\",\"fontSize\":27,\"fontWeight\":600,\"letterSpacing\":0,\"color\":\"#313131\"},{\"name\":\"Description\",\"key\":\"description\",\"fontSize\":16,\"fontWeight\":300,\"letterSpacing\":0,\"color\":\"#6c757d\"}],\"mobileView\":[{\"name\":\"Title\",\"key\":\"title\",\"fontSize\":40,\"fontWeight\":700,\"letterSpacing\":1,\"color\":\"#313131\"},{\"name\":\"Subtitle\",\"key\":\"sub-title\",\"fontSize\":25,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#afb1b6\"},{\"name\":\"Details\",\"key\":\"details\",\"fontSize\":16,\"fontWeight\":500,\"letterSpacing\":1,\"color\":\"#00000\"},{\"name\":\"Headings\",\"key\":\"headings\",\"fontSize\":20,\"fontWeight\":600,\"letterSpacing\":0,\"color\":\"#313131\"},{\"name\":\"Description\",\"key\":\"description\",\"fontSize\":14,\"fontWeight\":300,\"letterSpacing\":0,\"color\":\"#6c757d\"}]},\"pageBlocks\":{\"defaultView\":{\"header\":true,\"body\":true,\"footer\":true,\"logo\":true},\"mobileView\":{\"header\":true,\"body\":true,\"footer\":true,\"logo\":true}}}', '[{\"id\":\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\",\"is_visible\":true,\"title\":\"Basic Information\",\"items\":[{\"id\":\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\",\"fields\":[{\"title\":\"First name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:43:58.419Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Last name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:43:58.419Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Email\",\"type\":\"email\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:43:58.419Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Gender\",\"type\":\"radio\",\"options\":[\"Male\",\"Female\"],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:43:58.419Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Date of birth\",\"type\":\"date\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:43:58.419Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Phone\",\"type\":\"tel-input\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:43:58.419Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"SSS Number\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"Street Address\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"City\\/Municipality\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"Province\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"Zip Code\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"Pag-ibig Number\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"Philhealth Number\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"BIR TIN\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:46:15.374Z\"},\"fields\":[],\"name\":\"fahim\"}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false,\"fixed\":true},\"key\":\"basic_information\"},{\"id\":\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\",\"is_visible\":true,\"title\":\"Contact Details\",\"items\":[{\"id\":\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\",\"fields\":[{\"title\":\"Address\",\"type\":\"textarea\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Linkedin\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Twitter\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"7d3e3733-15e0-440e-9e90-794f1e98b45c\",\"is_visible\":true,\"title\":\"Education & Experience\",\"items\":[{\"id\":\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\",\"fields\":[{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false}],\"duplicate\":true},{\"title\":\"Work Experience\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"duplicate\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Start\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"End\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"Designation\",\"type\":\"text\",\"options\":[],\"required\":false}]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\",\"is_visible\":true,\"title\":\"Question\",\"items\":[{\"id\":\"7b01452c-9e48-4f81-a270-8f17f609d48e\",\"fields\":[{\"title\":\"Write something about you...\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"is_visible\":true}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"d76873c5-d2d0-4182-a062-ddb82b56a57e\",\"fields\":[{\"title\":\"Why you think you are good for this job?\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\",\"is_visible\":true,\"title\":\"Assignment\",\"items\":[{\"id\":\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\",\"fields\":[{\"title\":\"Write your assignment question\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\",\"is_visible\":true,\"title\":\"Resume\",\"items\":[{\"id\":\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\",\"fields\":[{\"title\":\"Upload your resume here\",\"type\":\"dropzone\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}]', '2025-11-01', '2024-11-08 11:10:13', '2024-11-08 11:50:08', 'on_site');

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `job_post_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'new', NULL, NULL),
(2, 1, 'interview', NULL, NULL),
(3, 1, 'negotiation', NULL, NULL),
(4, 1, 'shortlist', NULL, NULL),
(5, 1, 'task phase', NULL, NULL),
(6, 1, 'hired', NULL, NULL),
(7, 1, 'disqualified', NULL, NULL),
(8, 2, 'new', NULL, NULL),
(9, 2, 'interview', NULL, NULL),
(10, 2, 'negotiation', NULL, NULL),
(11, 2, 'shortlist', NULL, NULL),
(12, 2, 'task phase', NULL, NULL),
(13, 2, 'hired', NULL, NULL),
(14, 2, 'disqualified', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `brief`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', 'This job is for specific Time Range', NULL, NULL),
(2, 'Part Time', '', NULL, NULL),
(3, 'Contractual', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` longtext DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `uuid` text DEFAULT NULL,
  `host_id` text DEFAULT NULL,
  `host_email` text DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `duration` longtext DEFAULT NULL COMMENT 'minutes',
  `password` varchar(255) DEFAULT NULL COMMENT 'meeting password',
  `start_url` text DEFAULT NULL,
  `join_url` text DEFAULT NULL,
  `meeting_channel` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_02_09_0000_create_types_table', 1),
(2, '2013_02_10_072424_create_statuses_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_09_03_144628_create_permission_tables', 1),
(6, '2017_09_04_064802_create_role_user_table', 1),
(7, '2017_09_26_140332_create_cache_table', 1),
(8, '2017_09_26_140528_create_sessions_table', 1),
(9, '2017_09_26_140609_create_jobs_table', 1),
(10, '2018_04_08_033256_create_password_histories_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_02_10_071640_create_settings_table', 1),
(13, '2020_02_11_083419_create_custom_field_types_table', 1),
(14, '2020_02_11_083437_create_custom_fields_table', 1),
(15, '2020_02_11_083711_create_custom_field_values_table', 1),
(16, '2020_02_12_123449_create_notification_events_table', 1),
(17, '2020_02_12_123727_create_notification_settings_table', 1),
(18, '2020_02_12_124416_create_notification_channels_table', 1),
(19, '2020_02_12_124533_create_notification_audiences_table', 1),
(20, '2020_02_18_141948_create_notifications_table', 1),
(21, '2020_02_19_092540_create_activity_log_table', 1),
(22, '2020_02_26_112625_create_files_table', 1),
(23, '2020_03_10_124422_create_notification_templates_table', 1),
(24, '2020_03_10_124437_create_notification_event_template_table', 1),
(25, '2020_04_21_130410_create_files_fields_table', 1),
(26, '2020_05_03_091140_create_profile_table', 1),
(27, '2021_05_04_054053_create_departments_table', 1),
(28, '2021_05_04_054718_create_job_types_table', 1),
(29, '2021_05_04_102036_create_company_details_table', 1),
(30, '2021_05_04_102051_create_business_types_table', 1),
(31, '2021_05_04_102224_create_company_locations_table', 1),
(32, '2021_05_04_102411_create_job_posts_table', 1),
(33, '2021_05_04_102414_create_job_stages_table', 1),
(34, '2021_05_04_102415_create_hiring_teams_table', 1),
(35, '2021_05_04_102416_create_todos_table', 1),
(36, '2021_05_04_103715_create_job_application_settings_table', 1),
(37, '2021_05_04_104356_create_applicants_table', 1),
(38, '2021_05_04_104535_create_job_applicants_table', 1),
(39, '2021_05_04_104536_create_notes_table', 1),
(40, '2021_05_05_044317_create_career_pages_table', 1),
(41, '2021_05_05_051705_create_application_answers_table', 1),
(42, '2021_05_06_071842_create_questions_table', 1),
(43, '2021_05_06_072740_create_personal_infos_table', 1),
(44, '2021_05_09_080830_create_stages_table', 1),
(45, '2021_06_01_075300_create_event_types_table', 1),
(46, '2021_06_01_075315_create_events_table', 1),
(47, '2021_06_01_075318_create_attendees_table', 1),
(48, '2022_03_01_100203_add_vacancy_count_to_job_posts_table', 1),
(49, '2022_03_14_082546_create_meetings_table', 1),
(50, '2022_09_04_085717_add_event_column_to_activity_log_table', 1),
(51, '2022_09_04_085718_add_batch_uuid_column_to_activity_log_table', 1),
(52, '2022_09_04_085719_create_application_emails_table', 1),
(53, '2022_09_13_103811_create_email_inbox_ids_table', 1),
(54, '2023_07_13_061538_add_is_viewable_to_job_posts_table', 1),
(55, '2023_07_17_122808_create_experience_levels_table', 1),
(56, '2023_07_17_123914_add_experience_level_id_job_posts_table', 1),
(57, '2023_07_18_131912_create_job_alerts_table', 1),
(58, '2023_09_20_090056_add_phone_to_applicants_table', 1),
(59, '2023_10_09_065309_add_user_id_to_applicants_table', 1),
(60, '2023_10_09_065645_add_working_arrangement_to_job_posts_table', 1),
(61, '2023_10_12_133501_change_application_answers_question_field', 1),
(62, '2023_10_16_072815_convert_enum_to_string_in_applicants', 1),
(63, '2023_12_20_065645_add_uuid_to_failed_jobs_table', 1),
(64, '2024_06_27_141309_create_module_exports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_exports`
--

CREATE TABLE `module_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `requested_modules` text DEFAULT NULL,
  `completed_modules` text DEFAULT NULL,
  `requested_on` timestamp NULL DEFAULT NULL,
  `completed_on` timestamp NULL DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_applicant_id` bigint(20) UNSIGNED NOT NULL,
  `noted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(160) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('10d7fa65-3535-4438-babf-fa52e296ce77', 'App\\Notifications\\App\\Applicant\\AppliedJobNotification', 'App\\Models\\Core\\Auth\\User', 5, '{\"message\":\"<b>Darwin Ibay<\\/b> applied for the <b>SECURITY GUARD<\\/b>\",\"name\":\"Darwin Ibay\",\"url\":\"https:\\/\\/kdronksia.online\\/admin\\/candidates?2\",\"notifier_id\":5}', NULL, '2024-11-07 12:55:03', '2024-11-07 12:55:03'),
('539ed9d0-3534-4de0-b5ce-fa336ab67e0a', 'App\\Notifications\\App\\Applicant\\AppliedJobNotification', 'App\\Models\\Core\\Auth\\User', 6, '{\"message\":\"<b>awwegf srfefwe<\\/b> applied for the <b>Sentinel<\\/b>\",\"name\":\"Claudine Isabelle Gicom\",\"url\":\"https:\\/\\/kdronksia.online\\/admin\\/candidates?4\",\"notifier_id\":null}', '2024-11-08 12:06:48', '2024-11-08 11:24:37', '2024-11-08 12:06:48'),
('9309178f-90b4-4213-a91a-079437fa33bb', 'App\\Notifications\\App\\Export\\ExportCompleteNotification', 'App\\Models\\Core\\Auth\\User', 1, '{\"message\":\"Export file is ready to download.\",\"name\":\"Superadmin\",\"url\":\"https:\\/\\/kdronksia.online\\/exports?tab=Export\",\"notifier_id\":1}', '2024-11-07 12:26:28', '2024-11-07 12:01:31', '2024-11-07 12:26:28'),
('cc54942a-78d8-4bba-bf2a-f0684390173f', 'App\\Notifications\\App\\Applicant\\AppliedJobNotification', 'App\\Models\\Core\\Auth\\User', 5, '{\"message\":\"<b>Kenneth  Munar<\\/b> applied for the <b>SECURITY GUARD<\\/b>\",\"name\":\"Darwin Ibay\",\"url\":\"https:\\/\\/kdronksia.online\\/admin\\/candidates?3\",\"notifier_id\":null}', NULL, '2024-11-08 11:18:56', '2024-11-08 11:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `notification_audiences`
--

CREATE TABLE `notification_audiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_setting_id` bigint(20) UNSIGNED NOT NULL,
  `audience_type` varchar(255) NOT NULL,
  `audiences` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_audiences`
--

INSERT INTO `notification_audiences` (`id`, `notification_setting_id`, `audience_type`, `audiences`, `created_at`, `updated_at`) VALUES
(1, 1, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(2, 2, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(3, 3, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(4, 4, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(5, 5, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(6, 6, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(7, 7, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(8, 8, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(9, 9, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(10, 10, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(11, 11, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(12, 12, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(13, 13, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(14, 14, 'roles', '[null]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(15, 15, 'roles', '[]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(16, 16, 'roles', '[]', '2024-11-07 11:52:33', '2024-11-07 11:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `notification_channels`
--

CREATE TABLE `notification_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_channels`
--

INSERT INTO `notification_channels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'database', NULL, NULL),
(2, 'mail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_events`
--

CREATE TABLE `notification_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_events`
--

INSERT INTO `notification_events` (`id`, `name`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 'user_invitation', 1, NULL, NULL),
(2, 'password_reset', 1, NULL, NULL),
(3, 'user_joined', 1, NULL, NULL),
(4, 'roles_created', 1, NULL, NULL),
(5, 'roles_updated', 1, NULL, NULL),
(6, 'roles_deleted', 1, NULL, NULL),
(7, 'candidate_disqualified', 1, NULL, NULL),
(8, 'disqualification_mail_for_candidate', 1, NULL, NULL),
(9, 'event_created', 1, NULL, NULL),
(10, 'create_event_mail_for_candidate', 1, NULL, NULL),
(11, 'note_created', 1, NULL, NULL),
(12, 'job_applied', 1, NULL, NULL),
(13, 'job_apply_response_for_candidate', 1, NULL, NULL),
(14, 'job_alert', 1, NULL, NULL),
(15, 'export_complete', 1, NULL, NULL),
(16, 'export_failed', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_event_template`
--

CREATE TABLE `notification_event_template` (
  `notification_event_id` bigint(20) UNSIGNED NOT NULL,
  `notification_template_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_event_template`
--

INSERT INTO `notification_event_template` (`notification_event_id`, `notification_template_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(3, 3),
(4, 6),
(4, 5),
(5, 8),
(5, 7),
(6, 10),
(6, 9),
(7, 12),
(7, 11),
(8, 13),
(9, 15),
(9, 14),
(10, 16),
(11, 18),
(11, 17),
(12, 20),
(12, 19),
(13, 21),
(14, 22),
(15, 24),
(15, 23),
(16, 26),
(16, 25);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_event_id` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `notify_by` varchar(255) NOT NULL COMMENT 'List of notification channels.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `notification_event_id`, `updated_by`, `notify_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(2, 2, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(3, 3, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(4, 4, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(5, 5, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(6, 6, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(7, 7, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(8, 8, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(9, 9, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(10, 10, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(11, 11, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(12, 12, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(13, 13, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(14, 14, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(15, 15, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(16, 16, NULL, '[\"database\",\"mail\"]', '2024-11-07 11:52:33', '2024-11-07 11:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text DEFAULT NULL,
  `default_content` longtext DEFAULT NULL,
  `custom_content` longtext DEFAULT NULL,
  `type` enum('sms','mail','database') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `subject`, `default_content`, `custom_content`, `type`, `created_at`, `updated_at`) VALUES
(1, 'User invitation form {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>Hope this mail finds you well and healthy. We are informing you that you\'ve been invited to our application by {action_by}. It\'ll be a great opportunity to work with you.</p><br>\n<p><a href=\"{invitation_url}\" target=\"_blank\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; text-decoration: none; text-underline: none\">Accept Invitation</a></p><br>\n\n<p></p><p>Thanks &amp; Regards,\n</p><p>{app_name}</p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(2, 'Password reset link provided by {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>Your request for reset password has been approved from {app_name}. Press the button below to reset the password.</p><br>\n<p><a href=\"{reset_password_url}\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; text-decoration: none; text-underline: none\" target=\"_blank\">Reset password</a></p><br>\n\nWe are highly expecting you as soon as possible. Hope you\'ll join us.\n<p></p><p>Thanks for being with us.\n</p><p>Regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(3, 'A new user has been joined in {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>It\'s a piece of good news that a new user {name} has been joined in our application. Hope you will enjoy his work and collaborations.</p><br>\n<p><a href=\"{resource_url}\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; text-decoration: none; text-underline: none\" target=\"_blank\">View Resource</a></p><br>\n\n<p></p><p>Thanks for being with us.\n</p><p>Regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(4, NULL, 'A new user has been joined in {app_name}', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(5, 'A new roles has been created in {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>It\'s a piece of good news that a new roles named {name} has been created in our application by {action_by}. Please have a look at that.</p><br>\n<p><a href=\"{resource_url}\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; ; text-decoration: none; text-underline: none\" target=\"_blank\">View Roles</a></p><br>\n<p></p><p>Thanks for being with us.\n</p><p>Regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(6, NULL, 'A new roles named {name} has been created by {action_by}.', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(7, 'A roles has been updated in {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>It\'s a piece of good news that a roles named {name} has been updated in our application by {action_by}. Please have a look at that.</p><br>\n<p><a href=\"{resource_url}\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; text-decoration: none; text-underline: none\" target=\"_blank\">View Roles</a></p><br>\n\n<p></p><p>Thanks for being with us.\n</p><p>Regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(8, NULL, 'A roles named {name} has been updated by {action_by}.', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(9, 'A roles has been deleted in {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>We are going to inform you that a roles has been deleted from our application by {action_by}.</p>\n<p></p><p>Thanks for being with us.\n</p><p>Regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(10, NULL, 'A roles named {name} has been deleted by {action_by}.', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(11, '{candidate_name} has been disqualified', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p> {candidate_name} has been disqualified by {action_by}. \n<br><br>Job post: {job_post}\n<br><br>Disqualification reason: {disqualification_reason}\n\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(12, NULL, '{candidate_name} has been disqualified by {action_by} for the post of {job_post}', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(13, 'Disqualified for the post {job_post}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {candidate_name}</span><br></p><p>Thank you for taking the time to attend the recruitment process for the position {job_post}. Our team appreciates your interest in the role and in our organisation.\n<br><br>Unfortunately, on this occasion, your application was not successful, and we have appointed an applicant who we believe more closely matches the skills required for the job position.\n<br><br>We really appreciate you taking the time to attend the recruitment process.\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(14, 'Invitation for {event_type}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>{action_by} invites you to join {event_type} with {candidate_name} for the post of {job_post}.\n<p>Time: <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?{start_at_query}\">{start_at} (UTC)</a> to <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?{end_at_query}\">{end_at} (UTC)</a></p>\n\n<br>Location: {event_location}\n\n<br><br>Zoom Meeting -\n<br>Meeting ID: {zoom_meeting_id}.\n<br>Meeting Topic: {topic}.\n<br>Meeting Duration (min) : {duration}.\n<br><p><a href=\"{zoom_join_url}\" target=\"_blank\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; text-decoration: none; text-underline: none\">Zoom Meeting URL</a></p>.\n\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(15, NULL, '{event_type} with {candidate_name} at {event_time}', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(16, '{event_type} has been scheduled for the post {job_post}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {candidate_name}</span><br></p><p>Thank you for taking the time to attend the recruitment process for the position {job_post}. Our team appreciates your interest in the role and in our organisation.\n<br><br>{event_type} has been scheduled for the post {job_post}.\n<br><br>Description: {description}.\n<br><br>Location: {location}.\n\n<p>Start Time: <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?{start_at_query}\">{start_at} (UTC)</a> </p>\n<p>End Time: <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?{end_at_query}\">{end_at} (UTC)</a></p>\n\n\n<br><br>Zoom Meeting -\n<br>Meeting ID: {zoom_meeting_id}.\n<br>Meeting Topic: {topic}.\n<br>Meeting Duration (min): {duration}.\n<br><p><a href=\"{zoom_join_url}\" target=\"_blank\" style=\"background: #4466F2;color: white;padding: 9px;border-radius: 4px;cursor: pointer; text-decoration: none; text-underline: none\">Zoom Meeting Start URL</a></p>.\n\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(17, 'New note added by {noted_by}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>{noted_by} added a note on {job_post} for {candidate_name}.<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(18, NULL, '{noted_by} added a note on {job_post} for {candidate_name}', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(19, 'A new candidate named {candidate_name} applied for the {job_post}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p><p>A new candidate named {candidate_name} applied for the {job_post}.\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(20, NULL, '{candidate_name} applied for the {job_post}', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(21, 'Thank you {candidate_name} for your application', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {candidate_name}</span><br></p><p>\nYour application for {job_post} has been received successfully.\n<br><br>We will get back to you as soon as possible.\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(22, 'Don\'t Miss Out! New Job Posts Just Arrived at {app_name}', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p><span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {candidate_name}</span><br></p><p>\nWe hope this message finds you well. We have some exciting news for you! New job openings have just been posted at JobPoint. If you\'re seeking new opportunities to set sail on a thrilling career journey, check out the latest job posts below:\n\n<br><br>\n{job_post_card}\n<br><br>\n<a href=\"{career_page_link}\" style=\"cursor:pointer;  \">See all new jobs</a>\n\n<br><br>Best regards,</p><p>{app_name}</p><p></p><p></p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(23, 'Export file is ready to download.', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p>\n<span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span>\n<br></p>\n<p>Export file is ready to download. Please navigate to the <a href=\"{resource_url}\" target=\"_blank\">app</a> and download.\n<br>\n<p></p><p>Thanks &amp; Regards,\n</p><p>{app_name}</p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(24, NULL, 'Export file is ready to download.', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(25, 'Export generation failed.', '<p><img src=\"{app_logo}\" style=\"height: 75px\"></p>\n<p>\n</p><p>\n<span style=\"background-color: var(--form-control-bg) ; color: var(--default-font-color) ;\">Hi {receiver_name}</span><br></p>\n<p>We are really sorry to inform you that the Export File generation has failed. You can try again <a href=\"{resource_url}\" target=\"_blank\">here</a>.\n<br>\n<p></p><p>Thanks &amp; Regards,\n</p><p>{app_name}</p>', NULL, 'mail', '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(26, NULL, 'Export generation failed.', NULL, 'database', '2024-11-07 11:52:33', '2024-11-07 11:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

CREATE TABLE `password_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `type_id`, `name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'can_view_job_post', 'job_post', NULL, NULL),
(2, 1, 'can_create_job_post', 'job_post', NULL, NULL),
(3, 1, 'can_update_job_post', 'job_post', NULL, NULL),
(4, 1, 'can_delete_job_post', 'job_post', NULL, NULL),
(5, 1, 'can_view_job_overview', 'job_post', NULL, NULL),
(6, 1, 'can_view_applicants_job_overview', 'job_post', NULL, NULL),
(7, 1, 'can_sharable_link_job_post', 'job_post', NULL, NULL),
(8, 1, 'can_view_job_post_setting', 'job_post', NULL, NULL),
(9, 1, 'can_update_job_post_setting_job_post', 'job_post', NULL, NULL),
(10, 1, 'can_manage_job_post_application_form', 'job_post', NULL, NULL),
(11, 1, 'can_change_job_post_status', 'job_post', NULL, NULL),
(12, 1, 'can_view_job_stage', 'job_post', NULL, NULL),
(13, 1, 'can_create_job_stage', 'job_post', NULL, NULL),
(14, 1, 'can_update_job_stage', 'job_post', NULL, NULL),
(15, 1, 'can_delete_job_stage', 'job_post', NULL, NULL),
(16, 1, 'can_view_hiring_team', 'job_post', NULL, NULL),
(17, 1, 'can_create_hiring_team', 'job_post', NULL, NULL),
(18, 1, 'can_delete_hiring_team', 'job_post', NULL, NULL),
(19, 1, 'can_manage_sharable_thumbnail', 'job_post', NULL, NULL),
(20, 1, 'can_manage_get_job_alert', 'job_post', NULL, NULL),
(21, 1, 'can_manage_set_job_alert', 'job_post', NULL, NULL),
(22, 1, 'can_last_applied_job_applicant', 'job_post', NULL, NULL),
(23, 1, 'view_my_story', 'job_post', NULL, NULL),
(24, 1, 'manage_dashboard', 'job_post', NULL, NULL),
(25, 1, 'can_view_job_applicant', 'candidates', NULL, NULL),
(26, 1, 'can_create_applicant', 'candidates', NULL, NULL),
(27, 1, 'can_update_applicant', 'candidates', NULL, NULL),
(28, 1, 'can_view_applicant', 'candidates', NULL, NULL),
(29, 1, 'can_delete_applicant', 'candidates', NULL, NULL),
(30, 1, 'can_create_job_applicant', 'candidates', NULL, NULL),
(31, 1, 'can_delete_job_applicant', 'candidates', NULL, NULL),
(32, 1, 'can_view_job_applicant_timeline', 'candidates', NULL, NULL),
(33, 1, 'can_view_applicant_details', 'candidates', NULL, NULL),
(34, 1, 'can_change_stage_job_applicant', 'candidates', NULL, NULL),
(35, 1, 'can_change_review_job_applicant', 'candidates', NULL, NULL),
(36, 1, 'can_send_email_job_applicant', 'candidates', NULL, NULL),
(37, 1, 'can_disqualify_job_applicant', 'candidates', NULL, NULL),
(38, 1, 'can_view_note_by_recruiters', 'candidates', NULL, NULL),
(39, 1, 'can_export_applicants', 'candidates', NULL, NULL),
(40, 1, 'can_view_events_for_job_applicant', 'candidates', NULL, NULL),
(41, 1, 'can_view_event', 'candidates', NULL, NULL),
(42, 1, 'can_create_event', 'candidates', NULL, NULL),
(43, 1, 'can_update_event', 'candidates', NULL, NULL),
(44, 1, 'can_delete_event', 'candidates', NULL, NULL),
(45, 1, 'can_view_note', 'candidates', NULL, NULL),
(46, 1, 'can_create_note', 'candidates', NULL, NULL),
(47, 1, 'can_update_note', 'candidates', NULL, NULL),
(48, 1, 'can_delete_note', 'candidates', NULL, NULL),
(49, 1, 'can_view_career_page', 'career_page', NULL, NULL),
(50, 1, 'can_update_career_page', 'career_page', NULL, NULL),
(51, 1, 'can_view_job_setting', 'job_settings', NULL, NULL),
(52, 1, 'can_view_integrations', 'integrations', NULL, NULL),
(53, 1, 'can_manage_global_application_form', 'job_settings', NULL, NULL),
(54, 1, 'can_view_event_type', 'job_settings', NULL, NULL),
(55, 1, 'can_create_event_type', 'job_settings', NULL, NULL),
(56, 1, 'can_update_event_type', 'job_settings', NULL, NULL),
(57, 1, 'can_delete_event_type', 'job_settings', NULL, NULL),
(58, 1, 'can_view_job_type', 'job_settings', NULL, NULL),
(59, 1, 'can_create_job_type', 'job_settings', NULL, NULL),
(60, 1, 'can_update_job_type', 'job_settings', NULL, NULL),
(61, 1, 'can_delete_job_type', 'job_settings', NULL, NULL),
(62, 1, 'can_view_experience_level', 'job_settings', NULL, NULL),
(63, 1, 'can_create_experience_level', 'job_settings', NULL, NULL),
(64, 1, 'can_update_experience_level', 'job_settings', NULL, NULL),
(65, 1, 'can_delete_experience_level', 'job_settings', NULL, NULL),
(66, 1, 'can_view_company_location', 'job_settings', NULL, NULL),
(67, 1, 'can_create_company_location', 'job_settings', NULL, NULL),
(68, 1, 'can_update_company_location', 'job_settings', NULL, NULL),
(69, 1, 'can_delete_company_location', 'job_settings', NULL, NULL),
(70, 1, 'can_view_department', 'job_settings', NULL, NULL),
(71, 1, 'can_create_department', 'job_settings', NULL, NULL),
(72, 1, 'can_update_department', 'job_settings', NULL, NULL),
(73, 1, 'can_delete_department', 'job_settings', NULL, NULL),
(74, 1, 'can_view_stage', 'job_settings', NULL, NULL),
(75, 1, 'can_create_stage', 'job_settings', NULL, NULL),
(76, 1, 'can_update_stage', 'job_settings', NULL, NULL),
(77, 1, 'can_delete_stage', 'job_settings', NULL, NULL),
(78, 1, 'view_settings', 'app_settings', NULL, NULL),
(79, 1, 'update_settings', 'app_settings', NULL, NULL),
(80, 1, 'view_delivery_settings', 'app_settings', NULL, NULL),
(81, 1, 'update_delivery_settings', 'app_settings', NULL, NULL),
(82, 1, 'view_notification_settings', 'app_settings', NULL, NULL),
(83, 1, 'update_notification_settings', 'app_settings', NULL, NULL),
(84, 1, 'view_cron_job_settings', 'app_settings', NULL, NULL),
(85, 1, 'view_imap_settings', 'app_settings', NULL, NULL),
(86, 1, 'view_update_settings', 'app_settings', NULL, NULL),
(87, 1, 'view_users', 'users', NULL, NULL),
(88, 1, 'create_users', 'users', NULL, NULL),
(89, 1, 'update_users', 'users', NULL, NULL),
(90, 1, 'delete_users', 'users', NULL, NULL),
(91, 1, 'invite_user', 'users', NULL, NULL),
(92, 1, 'cancel_user_invitation', 'users', NULL, NULL),
(93, 1, 'attach_roles_users', 'users', NULL, NULL),
(94, 1, 'detach_roles_users', 'users', NULL, NULL),
(95, 1, 'change_settings_users', 'users', NULL, NULL),
(96, 1, 'settings_list_users', 'users', NULL, NULL),
(97, 1, 'view_roles', 'roles', NULL, NULL),
(98, 1, 'create_roles', 'roles', NULL, NULL),
(99, 1, 'update_roles', 'roles', NULL, NULL),
(100, 1, 'delete_roles', 'roles', NULL, NULL),
(101, 1, 'attach_users_to_roles', 'roles', NULL, NULL),
(102, 1, 'detach_users_to_roles', 'roles', NULL, NULL),
(103, 1, 'attach_permissions_roles', 'permissions', NULL, NULL),
(104, 1, 'detach_permissions_roles', 'permissions', NULL, NULL),
(105, 1, 'view_notification_templates', 'templates', NULL, NULL),
(106, 1, 'create_notification_templates', 'templates', NULL, NULL),
(107, 1, 'update_notification_templates', 'templates', NULL, NULL),
(108, 1, 'delete_notification_templates', 'templates', NULL, NULL),
(109, 1, 'view_templates', 'templates', NULL, NULL),
(110, 1, 'update_templates', 'templates', NULL, NULL),
(111, 1, 'delete_templates', 'templates', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_infos`
--

CREATE TABLE `personal_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `gender`, `date_of_birth`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(1, 6, 'male', NULL, 'dgdghgfeg ge', NULL, '2024-11-08 11:14:22', '2024-11-08 11:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_admin`, `is_default`, `type_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'App Admin', 1, 1, 1, 1, NULL, NULL),
(2, 'Candidate', 0, 0, 1, 1, NULL, NULL),
(3, 'Admin', 0, 0, 1, 1, '2024-11-07 12:27:57', '2024-11-07 12:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `meta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`, `meta`) VALUES
(2, 1, NULL),
(3, 1, NULL),
(3, 2, NULL),
(3, 3, NULL),
(3, 4, NULL),
(3, 5, NULL),
(3, 6, NULL),
(3, 7, NULL),
(3, 8, NULL),
(3, 9, NULL),
(3, 10, NULL),
(3, 11, NULL),
(3, 12, NULL),
(3, 13, NULL),
(3, 14, NULL),
(3, 15, NULL),
(3, 16, NULL),
(3, 17, NULL),
(3, 18, NULL),
(3, 19, NULL),
(2, 20, NULL),
(3, 20, NULL),
(2, 21, NULL),
(3, 21, NULL),
(2, 22, NULL),
(3, 22, NULL),
(2, 23, NULL),
(3, 23, NULL),
(2, 24, NULL),
(3, 24, NULL),
(2, 25, NULL),
(3, 25, NULL),
(3, 26, NULL),
(3, 27, NULL),
(3, 28, NULL),
(3, 29, NULL),
(3, 30, NULL),
(3, 31, NULL),
(3, 32, NULL),
(3, 33, NULL),
(3, 34, NULL),
(3, 35, NULL),
(3, 36, NULL),
(3, 37, NULL),
(3, 38, NULL),
(3, 39, NULL),
(3, 40, NULL),
(3, 41, NULL),
(3, 42, NULL),
(3, 43, NULL),
(3, 44, NULL),
(3, 45, NULL),
(3, 46, NULL),
(3, 47, NULL),
(3, 48, NULL),
(3, 49, NULL),
(3, 50, NULL),
(3, 51, NULL),
(3, 53, NULL),
(3, 54, NULL),
(3, 55, NULL),
(3, 56, NULL),
(3, 57, NULL),
(3, 58, NULL),
(3, 59, NULL),
(3, 60, NULL),
(3, 61, NULL),
(3, 62, NULL),
(3, 63, NULL),
(3, 64, NULL),
(3, 65, NULL),
(3, 66, NULL),
(3, 67, NULL),
(3, 68, NULL),
(3, 69, NULL),
(3, 70, NULL),
(3, 71, NULL),
(3, 72, NULL),
(3, 73, NULL),
(3, 74, NULL),
(3, 75, NULL),
(3, 76, NULL),
(3, 77, NULL),
(3, 105, NULL),
(3, 106, NULL),
(3, 107, NULL),
(3, 108, NULL),
(3, 109, NULL),
(3, 110, NULL),
(3, 111, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(3, 2),
(5, 3),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(120) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `settingable_type` varchar(160) DEFAULT NULL,
  `settingable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT 0,
  `public` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `settingable_type`, `settingable_id`, `context`, `autoload`, `public`, `created_at`, `updated_at`) VALUES
(1, 'purchase_code', '438c9157-d06a-4a88-b4b3-1d67b04691e5', NULL, NULL, 'purchase_code', 0, 1, '2024-11-07 11:52:33', '2024-11-07 11:52:33'),
(2, 'company_name', 'KidronKSIA', NULL, NULL, 'app', 0, 1, NULL, '2024-11-07 12:09:06'),
(3, 'company_logo', 'logo/672df834dcc56.png', NULL, NULL, 'app', 0, 1, NULL, '2024-11-08 11:38:29'),
(4, 'company_icon', 'icon/672cadba027b7.png', NULL, NULL, 'app', 0, 1, NULL, '2024-11-07 12:08:26'),
(5, 'company_banner', 'banner/672cadba2e9d0.png', NULL, NULL, 'app', 0, 1, NULL, '2024-11-07 12:08:26'),
(6, 'job_post_cover', 'https://kdronksia.online/images/job_post_cover.png', NULL, NULL, 'app', 0, 1, NULL, '2024-11-07 11:55:02'),
(7, 'language', 'en', NULL, NULL, 'app', 0, 1, NULL, NULL),
(8, 'layout', 'ltr', NULL, NULL, 'app', 0, 1, NULL, NULL),
(9, 'date_format', 'd-m-Y', NULL, NULL, 'app', 0, 1, NULL, NULL),
(10, 'time_format', 'h', NULL, NULL, 'app', 0, 1, NULL, NULL),
(11, 'time_zone', 'Asia/Manila', NULL, NULL, 'app', 0, 1, NULL, '2024-11-07 11:55:33'),
(12, 'currency_symbol', '₱', NULL, NULL, 'app', 0, 1, NULL, '2024-11-07 11:55:02'),
(13, 'decimal_separator', '.', NULL, NULL, 'app', 0, 1, NULL, NULL),
(14, 'thousand_separator', ',', NULL, NULL, 'app', 0, 1, NULL, NULL),
(15, 'number_of_decimal', '2', NULL, NULL, 'app', 0, 1, NULL, NULL),
(16, 'currency_position', 'prefix_with_space', NULL, NULL, 'app', 0, 1, NULL, NULL),
(17, 'application_form', '[{\"id\":\"64adc53a-4cdf-4c4e-82e5-b3bfc6b990f9\",\"is_visible\":true,\"title\":\"Personal Information\",\"items\":[{\"id\":\"dac64396-e2a6-4c1b-bf30-ad864f3c7ff0\",\"fields\":[{\"title\":\"First name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:14:26.885Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Last name\",\"type\":\"text\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:14:26.885Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Email\",\"type\":\"email\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:14:26.885Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Gender\",\"type\":\"radio\",\"options\":[\"Male\",\"Female\"],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:14:26.885Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Date of birth\",\"type\":\"date\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:14:26.885Z\"},\"fields\":[],\"name\":\"fahim\"},{\"title\":\"Phone\",\"type\":\"tel-input\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":false,\"delete\":false,\"move\":false},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:14:26.885Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"SSS Number\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\",\"minDate\":null,\"maxDate\":\"2024-11-08T11:16:09.118Z\"},\"fields\":[],\"name\":\"fahim\"},{\"is_visible\":true,\"title\":\"Middle Name\",\"type\":\"text\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"Street Address\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"City\\/Municipality\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"Province\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"Zip Code\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"Pag-ibig Number\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"Philhealth Number\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}},{\"is_visible\":true,\"title\":\"BIR TIN\",\"type\":\"text\",\"options\":[],\"required\":false,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"dateOptions\":{\"dateMode\":\"date\"}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false}}],\"actions\":{\"edit\":true,\"delete\":false,\"move\":false,\"fixed\":true},\"key\":\"basic_information\"},{\"id\":\"d6e5f546-73f8-45d4-96b5-fdd6e912ecad\",\"is_visible\":true,\"title\":\"Contact Details\",\"items\":[{\"id\":\"40cf036c-6e70-4a5b-943c-e9df43cdfd46\",\"fields\":[{\"title\":\"Address\",\"type\":\"textarea\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Linkedin\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"title\":\"Twitter\",\"type\":\"text\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"7d3e3733-15e0-440e-9e90-794f1e98b45c\",\"is_visible\":true,\"title\":\"Education & Experience\",\"items\":[{\"id\":\"9a3f0038-a6f5-4575-8c53-adc5b280cb22\",\"fields\":[{\"title\":\"Education\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Level\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"Institute\",\"type\":\"text\",\"options\":[],\"required\":false},{\"title\":\"CGPA\",\"type\":\"text\",\"options\":[],\"required\":false}],\"duplicate\":true},{\"title\":\"Work Experience\",\"type\":\"custom-form\",\"options\":[],\"required\":false,\"is_visible\":true,\"duplicate\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"fields\":[{\"title\":\"Start\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"End\",\"type\":\"date\",\"options\":[],\"required\":false},{\"title\":\"Designation\",\"type\":\"text\",\"options\":[],\"required\":false}]}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"c4e419a6-b77e-4bc7-ae9a-a33d3363589c\",\"is_visible\":true,\"title\":\"Question\",\"items\":[{\"id\":\"7b01452c-9e48-4f81-a270-8f17f609d48e\",\"fields\":[{\"title\":\"Write something about you...\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true},\"is_visible\":true}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"d76873c5-d2d0-4182-a062-ddb82b56a57e\",\"fields\":[{\"title\":\"Why you think you are good for this job?\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"42c8b816-0bd2-49a5-aa6b-d41f5cb05bc5\",\"is_visible\":true,\"title\":\"Assignment\",\"items\":[{\"id\":\"a83f1a25-e9eb-4f0b-9414-5af7449adc5f\",\"fields\":[{\"title\":\"Write your assignment question\",\"type\":\"textarea\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}},{\"id\":\"8b6ed18d-f67f-4cc5-bdf5-5a151a1f1e57\",\"is_visible\":true,\"title\":\"Resume\",\"items\":[{\"id\":\"48de9f8e-f3b2-4f13-83e2-06d4e69a3e78\",\"fields\":[{\"title\":\"Upload your resume here\",\"type\":\"dropzone\",\"options\":[],\"required\":true,\"is_visible\":true,\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}],\"actions\":{\"edit\":true,\"delete\":true,\"move\":true}}]', NULL, NULL, 'app', 0, 1, NULL, '2024-11-08 11:23:22'),
(18, 'career_page', '{\"job_post_settings\":{\"content\":{\"title\":\"The Leading Security Services Company in the North!\",\"subtitle\":\"\\\"Your Safety, Our Mission.\\\"\",\"details\":\"Software Company - Dhaka\",\"bodySection\":[{\"id\":\"5a98ae73-f7d4-4c0a-9e10-b03bd97bf086\",\"headings\":\"About Us\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"id\":\"64f6ebef-d2d2-d05d-29a2-d69d2f33a51c\",\"headings\":\"Service we provide\",\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\"},{\"id\":\"1d19e628-ff18-e0b6-bc36-e1a21b50e906\",\"headings\":\"Contact Us\",\"description\":\"<p>Facebook:&nbsp;<\\/p><p>Email:&nbsp;<\\/p>\"}],\"hero\":true,\"job_post_cover\":\"https:\\/\\/kdronksia.online\\/images\\/job_post_cover.png\"},\"pageStyle\":{\"defaultView\":[{\"name\":\"Title\",\"key\":\"title\",\"fontSize\":50,\"fontWeight\":700,\"letterSpacing\":1,\"color\":\"#313131\"},{\"name\":\"Subtitle\",\"key\":\"sub-title\",\"fontSize\":30,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#afb1b6\"},{\"name\":\"Details\",\"key\":\"details\",\"fontSize\":20,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#3758b3\"},{\"name\":\"Headings\",\"key\":\"headings\",\"fontSize\":27,\"fontWeight\":600,\"letterSpacing\":0,\"color\":\"#313131\"},{\"name\":\"Description\",\"key\":\"description\",\"fontSize\":19,\"fontWeight\":300,\"letterSpacing\":0,\"color\":\"#313131\"}],\"mobileView\":[{\"name\":\"Title\",\"key\":\"title\",\"fontSize\":40,\"fontWeight\":700,\"letterSpacing\":1,\"color\":\"#313131\"},{\"name\":\"Subtitle\",\"key\":\"sub-title\",\"fontSize\":25,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#afb1b6\"},{\"name\":\"Details\",\"key\":\"details\",\"fontSize\":16,\"fontWeight\":300,\"letterSpacing\":1,\"color\":\"#3758b3\"},{\"name\":\"Headings\",\"key\":\"headings\",\"fontSize\":20,\"fontWeight\":600,\"letterSpacing\":0,\"color\":\"#313131\"},{\"name\":\"Description\",\"key\":\"description\",\"fontSize\":18,\"fontWeight\":300,\"letterSpacing\":0,\"color\":\"#313131\"}]},\"pageBlocks\":{\"defaultView\":{\"header\":true,\"body\":true,\"footer\":true,\"logo\":true},\"mobileView\":{\"header\":true,\"body\":true,\"footer\":true,\"logo\":true}}},\"name\":\"The Leading Security Services Company in the North!\",\"description\":\"\\\"Your Safety, Our Mission.\\\"\"}', NULL, NULL, 'app', 0, 1, NULL, '2024-11-08 11:35:31'),
(19, 'storage_type', 'eyJpdiI6ImlxVlZ4WWFUcDFSSWh0VHdMbUM4Vnc9PSIsInZhbHVlIjoiMDFBdSszdEI2ZU45dEwrUGZBaW14dz09IiwibWFjIjoiOTQ2M2M0ZGU3ZmYzZDgwMTI2MTM1YTcxYjc0OWJkMWY3YWVlOTllOWEzMzg0ZTM5YzdkYWNmMTQ4ZWMxYzlkMCIsInRhZyI6IiJ9', NULL, NULL, 'storage_configuration', 0, 1, NULL, NULL),
(20, 'logo', 'https://kdronksia.online/storage/logo/672d7b7a03fde.png', NULL, NULL, 'app', 0, 1, '2024-11-07 11:55:02', '2024-11-08 11:38:28'),
(21, 'icon', 'https://kdronksia.online/storage/icon/672cadba027b7.png', NULL, NULL, 'app', 0, 1, '2024-11-07 11:55:02', '2024-11-07 12:09:06'),
(22, 'from_name', 'eyJpdiI6IloycGJGZEpwaDR3NWJzeFdzeEs0TXc9PSIsInZhbHVlIjoicWhBcGRsS0plemE0azA4Qnh1SGN4dndpYnZZbDFaVjBsWHAvdzVIMjNBQT0iLCJtYWMiOiJiZWEyODMwYzhiNDdlZjhjZmNiYzRhMDU5MjRhZmE0NDFkZTlmZWI5YTg3N2NjZGI4ODA0YWNhYzZiZmNiMWQ3IiwidGFnIjoiIn0=', NULL, NULL, 'default_mail_email_name', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(23, 'from_email', 'eyJpdiI6Ik9wcWpjZXk1RzdlcHFqMkJZV1Q0RXc9PSIsInZhbHVlIjoiSldPaUkza1QzQmNvNXpYYm16OTM2b1ovRUJ5ZXRtOVRGVTQza0xEYTFLeENQTXpEbU9LSVpoWHhtMmYwbHo4dCIsIm1hYyI6IjUxNmYyMzIwN2E5ZTVkZWE4NGY0MDE5MmRiNjRhN2U2OWJkYjI5ZmFjNjAxZGU0NjMxM2ZmMjExMDU3MDhhNzAiLCJ0YWciOiIifQ==', NULL, NULL, 'default_mail_email_name', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(24, 'region', 'eyJpdiI6IjhtbHQxVHUydzJoT2k3SlJBS2JsR3c9PSIsInZhbHVlIjoiQ0dlWDlBSGJEWk1MZUN3MDlOYkpiaG5NRmFjdUFWdWFZNlkvQ3lYVG5zND0iLCJtYWMiOiIzMjYzNTA5NDU4NjlkYTY4OGQzYjdlNDY5NTE2YmE3ZGNiNDE4NWU0YTUxZGVhZTcyZDU0MjVhNWQ4MThkY2JkIiwidGFnIjoiIn0=', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(25, 'provider', 'eyJpdiI6IkhTOXU1K0szc2tCUEphQmFCaWI1K0E9PSIsInZhbHVlIjoiSzBGT2VZUVhFMXROb0NScW9jR0JBdz09IiwibWFjIjoiOTFlN2U1NjI4YTBkZmNmMDc2ZTg4YTFmZTkyYTNkMjIwMDYyNGJiNzM3NjkzMDI5M2Q0ZmFkZWEwYjkyMzNlMCIsInRhZyI6IiJ9', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(26, 'smtp_user_name', 'eyJpdiI6InNtbWUrQmYyR09Zc0FtR0NHSjZ6bVE9PSIsInZhbHVlIjoiMlNpdUpHVWpnbWw4QjQvUFZpSEI0L0c5aUhtVFV1UkFyWXdIa2F5cGhrUFFVUzVnaFFOcEk2UHFmbzFYZGRmTiIsIm1hYyI6IjRhNDAyNmQwNjRmNDEyZjRmM2RmNjU5YjFmY2RiZjZhY2ExYzExYzViYzNjMjUzZjM3NDg1YjIxMzJhNjc2Y2QiLCJ0YWciOiIifQ==', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(27, 'smtp_host', 'eyJpdiI6IlRRMURaSWlreEVBTGd0V1BvNmF0dlE9PSIsInZhbHVlIjoiY2pnQXRiQUVnYVFPSEF2R1VCMnE0YkFQRVROZmpwcldDOS9RRHVPUm45QT0iLCJtYWMiOiJjMDU3NjcwOGE2ODIyM2MwYTA5MzU0MGRkMWJkNGMyYWJiMTVkODc4MDg5MTZkYzE2ZThlMGEyNWQyNDVkMDc1IiwidGFnIjoiIn0=', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(28, 'smtp_port', 'eyJpdiI6IndLSTJ2S0ppeGxhSSs1b1pvQW14dHc9PSIsInZhbHVlIjoiSHRFdGVqd2RIaWNYL1B4VWsyNmVIQT09IiwibWFjIjoiMzg4MzU0NDE1OTU4MjVjNjA4MTE2ZTFkMjBhNTFiYzQ1YjI4NjUwMTRkOWRkMWRhM2VkZjBlM2Q0YjQ2NDY4YSIsInRhZyI6IiJ9', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(29, 'email_password', 'eyJpdiI6Iks4ekQwamdRcE9BY1JiMzErWjB5NkE9PSIsInZhbHVlIjoiMUIwVGVyS1QwZm5IUmIwZlF4bTh3aGloeHZ4SVR4QnNkdEc0am1PRC9ldz0iLCJtYWMiOiIxZTFlM2IwN2MxOGQ4NjQ1Y2JmMjJkNTA1OTA1NTdkNThhN2Y1MjdjNzYxOGM5Y2RlYTg4N2EwN2NkZGI0MWRlIiwidGFnIjoiIn0=', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(30, 'encryption_type', 'eyJpdiI6ImFyclFyajVZeEtUQU9acVl4Q3J2dEE9PSIsInZhbHVlIjoic0NPcVJ0SWxpVnZMalVRT0ZQNHhUdz09IiwibWFjIjoiMjVlNTNhZDAyNWY5ZjBmNmY1MTM1MDRjYjIzYjZkM2E4NWU0ZDVmYjczMWI3Nzg0NTkzZGZlYzMyMzc1YzBmYyIsInRhZyI6IiJ9', NULL, NULL, 'smtp', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(31, 'default_mail', 'smtp', NULL, NULL, 'mail', 0, 1, '2024-11-07 11:58:50', '2024-11-07 11:58:50'),
(32, 'imap_encryption', 'eyJpdiI6IldoWHRvTHhGSXZaaEZaYWRmYlVLbGc9PSIsInZhbHVlIjoiaTVuamZ1YmRYbTJXanZaTWR3cmpyZz09IiwibWFjIjoiNGNhNmM1ZDFmM2EyYmE4OWU5NzIxODllMWI4NmZmODZkZjBkN2UzOWIyYmQ5M2IwNjMxOTczM2I5YzI5YjhjNCIsInRhZyI6IiJ9', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(33, 'imap_password', 'eyJpdiI6Imd0VkRMVXY0cjJmVU9MdjZjdXBFa3c9PSIsInZhbHVlIjoiTFZGUUNCWnVGejZHYXFzVjh1eXVJcmtQZGVsdFlVMjh4dHk5ckROOXhRTT0iLCJtYWMiOiJiZjJmMjE2MjcyZjllODA2ZjgzYmZhN2I4YWMzOTMyMzQyNGQwNGM5NTUzZjZlMGZkZjM4ZTg1OWU5N2E3Y2ZmIiwidGFnIjoiIn0=', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(34, 'imap_port', 'eyJpdiI6IjJrSHY0enlrNFBHMEpzcWxzODlVR2c9PSIsInZhbHVlIjoiakJHdHZaNzlWcHJ2aFlYeG5jdFc2dz09IiwibWFjIjoiOTdhMjU1NjdhMDU1OWQxZTJkYWQ3MDE3OTQ3Y2UxYzhmZGRjMmQ0NzQ3MWI4NjIzYmI3YzZmYzQxMzBlMGExZCIsInRhZyI6IiJ9', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(35, 'imap_server', 'eyJpdiI6IlYvSW9jK3Rpb2xld3IySVVnZFpjVkE9PSIsInZhbHVlIjoid01lWXNYNi9QWDVSVCtsWWkzbHdLSnRyZ01pZDNxTGQvZWFBSmhGZVZWST0iLCJtYWMiOiJkNWEwM2JiZWE0OTQ5ZjQ0MDBmOGIxMmFhZGY4NGVmNmVmNjFmYTk1ODZhOGE4MGNmMmQ3MTUwZjZiNDRkMDdlIiwidGFnIjoiIn0=', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(36, 'imap_user', 'eyJpdiI6IlcxYnBuektSYlFKSy9xUVB5WmoxYkE9PSIsInZhbHVlIjoicmFhSzAwVkkyU3dZRnI2aG5PM3JOdklXSXIwWTlnaHo1cjl2aFIzTjVGWFlzcGw2aGtDKzMrVkJEazlNbzl3TCIsIm1hYyI6Ijc5MmNhMmZiZjc1MzIyYWU1NzE0ZWZlNTM3OWUyZjBlOTkyMWNjZTM3ZmUxYjUxMmU1ZGYxZmQ3MzQ0MTM0OWQiLCJ0YWciOiIifQ==', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(37, 'imap_validate_cert', 'eyJpdiI6Ik1oclU0Qkw1ZTBNZS9qQ0R1cnVvcFE9PSIsInZhbHVlIjoiZmJGZTc3Y1JqODMyV3Z2WjRSOUltQT09IiwibWFjIjoiNmE5MmE4NDJiMjYxNDRiNjc4MTBjYjM5YTk1MDdjYTFiNWNiMjBhN2JkMDc3ZjllYWE0MGFiMjQ2ZTk2ZjEyOSIsInRhZyI6IiJ9', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51'),
(38, 'imap_protocol', 'eyJpdiI6IlY4NlB3K1JmZEUzaHZRSS83Y1FDdnc9PSIsInZhbHVlIjoidExKV2ZDZG15NDRPWTVhUG9LUzMzUT09IiwibWFjIjoiZmUwNzNmMWZkZjllZmU2ZGQzOWJkMDI4MWFkM2YwZWIzOWRjNjc3YThjNjllN2E2ZThkZWU4Y2RkNzIyMjhjYiIsInRhZyI6IiJ9', NULL, NULL, 'imap_config', 0, 1, '2024-11-07 13:03:51', '2024-11-07 13:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(48) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'new', NULL, NULL),
(2, 'shortlist', NULL, NULL),
(3, 'interview', NULL, NULL),
(4, 'task phase', NULL, NULL),
(5, 'negotiation', NULL, NULL),
(6, 'hired', NULL, NULL),
(7, 'disqualified', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `class`, `type`, `created_at`, `updated_at`) VALUES
(1, 'status_active', 'success', 'user', NULL, NULL),
(2, 'status_inactive', 'danger', 'user', NULL, NULL),
(3, 'status_invited', 'purple', 'user', NULL, NULL),
(4, 'status_new', 'primary', 'job_applicant', NULL, NULL),
(5, 'status_in_progress', 'purple', 'job_applicant', NULL, NULL),
(6, 'status_hired', 'success', 'job_applicant', NULL, NULL),
(7, 'status_disqualified', 'danger', 'job_applicant', NULL, NULL),
(8, 'status_draft', 'warning', 'job_post', NULL, NULL),
(9, 'status_open', 'success', 'job_post', NULL, NULL),
(10, 'status_closed', 'danger', 'job_post', NULL, NULL),
(11, 'status_pending', 'primary', 'todo', NULL, NULL),
(12, 'status_done', 'success', 'todo', NULL, NULL),
(13, 'status_pending', 'secondary', 'export', NULL, NULL),
(14, 'status_processing', 'primary', 'export', NULL, NULL),
(15, 'status_rejected', 'danger', 'export', NULL, NULL),
(16, 'status_completed', 'success', 'export', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(80) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'App', 'app', NULL, NULL),
(2, 'Brand', 'brand', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(160) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `invitation_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `last_login_at`, `created_by`, `status_id`, `invitation_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Superadmin', NULL, 'superadmin@mail.com', '$2y$10$XfEJQEiQIx/Vp8AQCvDGsORvf5A8O6.rbQ9G18AaOpuTdO5Z8DsYi', NULL, NULL, 1, NULL, NULL, '2024-11-07 11:52:33', '2024-11-07 11:52:33', NULL),
(3, 'DARWIN', 'IBAY', 'darwin.ibay29@gmail.com', '$2y$10$2hAtI313G8hVzYbZV4H.wOZdKnA6AdJav0sFl3ULsyA4Qij8AILza', NULL, NULL, 1, NULL, NULL, '2024-11-07 12:18:42', '2024-11-07 12:18:42', NULL),
(5, 'Darwin', 'Ibay', 'darwin.ibay30@gmail.com', '$2y$10$6xXgxgmk/bHMc2fQm5UiyurSs8H/CxQwu6zXbrtvwjmcBOtG4jWOC', NULL, 1, 1, 'ZGFyd2luLmliYXkzMEBnbWFpbC5jb20taW52aXRhdGlvbi1mcm9tLXVz', NULL, '2024-11-07 12:47:15', '2024-11-07 12:48:18', NULL),
(6, 'Claudine Isabelle', 'Gicom', 'claudinegicom04@gmail.com', '$2y$10$yYZn0wa6SJzNRX7duzriSuxcUmgXfQeUzXPNWkt6WAJkRRdp7a7Z.', NULL, 1, 1, 'Y2xhdWRpbmVnaWNvbTA0QGdtYWlsLmNvbS1pbnZpdGF0aW9uLWZyb20tdXM=', NULL, '2024-11-08 11:03:33', '2024-11-08 11:05:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicants_email_unique` (`email`),
  ADD KEY `applicants_user_id_foreign` (`user_id`);

--
-- Indexes for table `application_answers`
--
ALTER TABLE `application_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_answers_job_applicant_id_foreign` (`job_applicant_id`);

--
-- Indexes for table `application_emails`
--
ALTER TABLE `application_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_emails_applicant_id_foreign` (`applicant_id`),
  ADD KEY `application_emails_job_post_id_foreign` (`job_post_id`),
  ADD KEY `application_emails_user_id_foreign` (`user_id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendees_event_id_foreign` (`event_id`),
  ADD KEY `attendees_hiring_team_id_foreign` (`hiring_team_id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_types_type_unique` (`type`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `career_pages`
--
ALTER TABLE `career_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career_pages_company_detail_id_foreign` (`company_detail_id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_locations_company_detail_id_foreign` (`company_detail_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_custom_field_type_id_foreign` (`custom_field_type_id`),
  ADD KEY `custom_fields_created_by_foreign` (`created_by`);

--
-- Indexes for table `custom_field_types`
--
ALTER TABLE `custom_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`),
  ADD KEY `custom_field_values_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_inbox_ids`
--
ALTER TABLE `email_inbox_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_event_type_id_foreign` (`event_type_id`),
  ADD KEY `events_job_applicant_id_foreign` (`job_applicant_id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_types_name_unique` (`name`);

--
-- Indexes for table `experience_levels`
--
ALTER TABLE `experience_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `experience_levels_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fileable_index` (`fileable_type`,`fileable_id`);

--
-- Indexes for table `files_fields`
--
ALTER TABLE `files_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiring_teams`
--
ALTER TABLE `hiring_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hiring_teams_recruiter_id_foreign` (`recruiter_id`),
  ADD KEY `hiring_teams_job_post_id_foreign` (`job_post_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_alerts`
--
ALTER TABLE `job_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_applicants_slug_unique` (`slug`),
  ADD KEY `job_applicants_applicant_id_foreign` (`applicant_id`),
  ADD KEY `job_applicants_job_post_id_foreign` (`job_post_id`),
  ADD KEY `job_applicants_current_stage_id_foreign` (`current_stage_id`),
  ADD KEY `job_applicants_status_id_foreign` (`status_id`);

--
-- Indexes for table `job_application_settings`
--
ALTER TABLE `job_application_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_application_settings_job_post_id_foreign` (`job_post_id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_posts_company_location_id_foreign` (`company_location_id`),
  ADD KEY `job_posts_department_id_foreign` (`department_id`),
  ADD KEY `job_posts_job_type_id_foreign` (`job_type_id`),
  ADD KEY `job_posts_status_id_foreign` (`status_id`),
  ADD KEY `job_posts_posted_by_foreign` (`posted_by`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_stages_job_post_id_foreign` (`job_post_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_event_id_foreign` (`event_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_exports`
--
ALTER TABLE `module_exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_exports_created_by_foreign` (`created_by`),
  ADD KEY `module_exports_status_id_foreign` (`status_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_job_applicant_id_foreign` (`job_applicant_id`),
  ADD KEY `notes_noted_by_foreign` (`noted_by`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_audiences`
--
ALTER TABLE `notification_audiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_audiences_notification_setting_id_foreign` (`notification_setting_id`);

--
-- Indexes for table `notification_channels`
--
ALTER TABLE `notification_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_events`
--
ALTER TABLE `notification_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_events_type_id_foreign` (`type_id`);

--
-- Indexes for table `notification_event_template`
--
ALTER TABLE `notification_event_template`
  ADD KEY `notification_event_template_notification_event_id_foreign` (`notification_event_id`),
  ADD KEY `notification_event_template_notification_template_id_foreign` (`notification_template_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_settings_notification_event_id_foreign` (`notification_event_id`),
  ADD KEY `notification_settings_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_type_id_foreign` (`type_id`);

--
-- Indexes for table `personal_infos`
--
ALTER TABLE `personal_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_type_id_foreign` (`type_id`),
  ADD KEY `roles_created_by_foreign` (`created_by`),
  ADD KEY `roles_name_index` (`name`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_permission_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settingable_index` (`settingable_type`,`settingable_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stages_name_unique` (`name`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_status_id_foreign` (`status_id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_alias_unique` (`alias`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_status_id_foreign` (`status_id`),
  ADD KEY `users_created_by_foreign` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `application_answers`
--
ALTER TABLE `application_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `application_emails`
--
ALTER TABLE `application_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career_pages`
--
ALTER TABLE `career_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_locations`
--
ALTER TABLE `company_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_types`
--
ALTER TABLE `custom_field_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_inbox_ids`
--
ALTER TABLE `email_inbox_ids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experience_levels`
--
ALTER TABLE `experience_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files_fields`
--
ALTER TABLE `files_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hiring_teams`
--
ALTER TABLE `hiring_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_alerts`
--
ALTER TABLE `job_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_application_settings`
--
ALTER TABLE `job_application_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `module_exports`
--
ALTER TABLE `module_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_audiences`
--
ALTER TABLE `notification_audiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification_channels`
--
ALTER TABLE `notification_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification_events`
--
ALTER TABLE `notification_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `password_histories`
--
ALTER TABLE `password_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `personal_infos`
--
ALTER TABLE `personal_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `application_answers`
--
ALTER TABLE `application_answers`
  ADD CONSTRAINT `application_answers_job_applicant_id_foreign` FOREIGN KEY (`job_applicant_id`) REFERENCES `job_applicants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `application_emails`
--
ALTER TABLE `application_emails`
  ADD CONSTRAINT `application_emails_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `application_emails_job_post_id_foreign` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`),
  ADD CONSTRAINT `application_emails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `attendees`
--
ALTER TABLE `attendees`
  ADD CONSTRAINT `attendees_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendees_hiring_team_id_foreign` FOREIGN KEY (`hiring_team_id`) REFERENCES `hiring_teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `career_pages`
--
ALTER TABLE `career_pages`
  ADD CONSTRAINT `career_pages_company_detail_id_foreign` FOREIGN KEY (`company_detail_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD CONSTRAINT `company_locations_company_detail_id_foreign` FOREIGN KEY (`company_detail_id`) REFERENCES `company_details` (`id`);

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `custom_fields_custom_field_type_id_foreign` FOREIGN KEY (`custom_field_type_id`) REFERENCES `custom_field_types` (`id`);

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`),
  ADD CONSTRAINT `custom_field_values_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_event_type_id_foreign` FOREIGN KEY (`event_type_id`) REFERENCES `event_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_job_applicant_id_foreign` FOREIGN KEY (`job_applicant_id`) REFERENCES `job_applicants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hiring_teams`
--
ALTER TABLE `hiring_teams`
  ADD CONSTRAINT `hiring_teams_job_post_id_foreign` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hiring_teams_recruiter_id_foreign` FOREIGN KEY (`recruiter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD CONSTRAINT `job_applicants_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applicants_current_stage_id_foreign` FOREIGN KEY (`current_stage_id`) REFERENCES `job_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applicants_job_post_id_foreign` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applicants_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_application_settings`
--
ALTER TABLE `job_application_settings`
  ADD CONSTRAINT `job_application_settings_job_post_id_foreign` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`);

--
-- Constraints for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD CONSTRAINT `job_posts_company_location_id_foreign` FOREIGN KEY (`company_location_id`) REFERENCES `company_locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_posts_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_posts_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_posts_posted_by_foreign` FOREIGN KEY (`posted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_posts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD CONSTRAINT `job_stages_job_post_id_foreign` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_exports`
--
ALTER TABLE `module_exports`
  ADD CONSTRAINT `module_exports_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `module_exports_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_job_applicant_id_foreign` FOREIGN KEY (`job_applicant_id`) REFERENCES `job_applicants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_noted_by_foreign` FOREIGN KEY (`noted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notification_audiences`
--
ALTER TABLE `notification_audiences`
  ADD CONSTRAINT `notification_audiences_notification_setting_id_foreign` FOREIGN KEY (`notification_setting_id`) REFERENCES `notification_settings` (`id`);

--
-- Constraints for table `notification_events`
--
ALTER TABLE `notification_events`
  ADD CONSTRAINT `notification_events_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `notification_event_template`
--
ALTER TABLE `notification_event_template`
  ADD CONSTRAINT `notification_event_template_notification_event_id_foreign` FOREIGN KEY (`notification_event_id`) REFERENCES `notification_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_event_template_notification_template_id_foreign` FOREIGN KEY (`notification_template_id`) REFERENCES `notification_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD CONSTRAINT `notification_settings_notification_event_id_foreign` FOREIGN KEY (`notification_event_id`) REFERENCES `notification_events` (`id`),
  ADD CONSTRAINT `notification_settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
