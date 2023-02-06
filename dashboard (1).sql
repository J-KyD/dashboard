-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 05:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomplishments`
--

CREATE TABLE `accomplishments` (
  `id` int(11) NOT NULL,
  `task` longtext NOT NULL,
  `accomplishment` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `coca_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomplishments`
--

INSERT INTO `accomplishments` (`id`, `task`, `accomplishment`, `status`, `coca_id`, `created_at`, `updated_at`) VALUES
(1, 'SR430937\nSR433312\nSR431257\nSR430936\nSR431259\nSR428583\nSR431261\nSR431299\nSR431296\nSR431298\nSR431278\nSR432461\nSR431516\nSR433314\n', '1. Checking/Resolving PRs with Error / Issues\n\n2. End to End PO Monitoring Report Development\"\n\n1.OMEGAMAX Sprint 1\n-conditional expression manager\n- application designer\n-Security Group\n-Project Acceptance\n\n2.Creation of MOP\"\n\n1. Checking/Resolving PRs with Error / Issues\n\n2. Regeneration of New PR\"\n\n1. Monthly Updating of omegamax broadcast Report (14\nreports)\n\n2. Project Deposit Handover Enhancements\"\n\n1. Maximo/ICD Asset L1 Support\n', 'dsad', 3, '2023-02-02 10:34:48', '2023-02-02 10:34:48'),
(2, 'dsad', 'dada', 'dsada', 3, '2023-02-02 02:36:46', '2023-02-02 02:36:46'),
(3, 'dsad', 'dada', 'dsada', 3, '2023-02-02 02:39:40', '2023-02-02 02:39:40'),
(4, 'dadsa', 'dsadsa', 'dada', 3, '2023-02-02 02:44:16', '2023-02-02 02:44:16'),
(5, 'Sample Add Task', 'Construction', 'On Going', 3, '2023-02-02 06:33:33', '2023-02-02 06:33:33'),
(6, 'sdsds', 'zxc', 'active', 6, '2023-02-02 22:26:01', '2023-02-02 22:26:01'),
(7, 'HELLO\r\nHI', 'zxc', 'active', 3, '2023-02-02 22:52:36', '2023-02-02 22:52:36'),
(8, 'xzcz', 'sada', 'dsada', 6, '2023-02-02 22:54:51', '2023-02-02 22:54:51'),
(9, 'xzczx', 'zxczx', 'qweq', 6, '2023-02-02 22:55:24', '2023-02-02 22:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `allprojects`
--

CREATE TABLE `allprojects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_leader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `project_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allprojects`
--

INSERT INTO `allprojects` (`id`, `project_name`, `team_leader`, `project_status`, `created_at`, `updated_at`) VALUES
(1, 'ITG - ALPHAMAX', 'Jea Allyson Sejas', 'active', NULL, '2023-01-31 00:42:14'),
(2, 'ITG - AMICASSA IT Support', 'Rhyan Ramos\n', 'ACTIVE', NULL, NULL),
(3, 'ITG - ARES', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(4, 'ITG - DIGITAL GROWTH MARKETING', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(5, 'ITG - EDO SIMP', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(6, 'ITG - EDO SM', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(7, 'ITG - EDO SM (IPM)', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(8, 'ITG - EIG QA', 'Roque, Jr. Tribiana Teves', 'ACTIVE', NULL, NULL),
(9, 'ITG - EITSC SD', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(10, 'ITG - EITSC SF', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(11, 'ITG - GLOBE STS AUTOMATION', 'Fernando, Jr. Daing Salvador', 'ACTIVE', NULL, NULL),
(12, 'ITG - GoCloud presales', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(13, 'ITG - ISDP', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(14, 'ITG - IT BAR DEVICES SUPPORT OPERATIONS MS', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(15, 'ITG - IT NTG', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(16, 'ITG - LAS', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(17, 'ITG - NTG (DCO-FW-NETWORK)', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(18, 'ITG - NTG OSS', 'Carmelyn Calma Samontina', 'ACTIVE', NULL, NULL),
(19, 'ITG - OSS SERVICE FULFILLMENT', 'Marisol Andrade', 'ACTIVE', NULL, NULL),
(20, 'ITG - OSS SF PMs', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(21, 'ITG - PGPD DASH AND PROGRAM GOVERNANCE', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(22, 'ITG - PGPD DEVOPS', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(23, 'ITG - PGPD ENG SUPPORT', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(24, 'ITG - PROGRAM GOVERNANCE AND IT SUPPORT', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(25, 'ITG - PROJECT MANAGEMENT SERVICES-GENERAL TRIAS/CITADEL', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(26, 'ITG - SMD TASK AUTOMATION', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(27, 'ITG - UNIONBANK Bayanihan Bonds PH', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(28, 'ITG - UNIONBANK Customer Verification Platform (CVP)', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(29, 'ITG - UNIONBANK Delivery Lead Gerand Elinzano', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(30, 'ITG - UNIONBANK Dole Project & EON Project', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(31, 'ITG - UNIONBANK Project Alpha', 'Gesna Guantes', 'ACTIVE', NULL, NULL),
(32, 'ITG - UNIONBANK The Portal', 'Gesna Guantes', 'ACTIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `employee_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 11, 29, NULL, NULL),
(2, 12, 29, NULL, NULL),
(3, 13, 31, NULL, NULL),
(4, 14, 18, NULL, NULL),
(5, 15, 18, NULL, NULL),
(6, 16, 32, NULL, NULL),
(7, 17, 18, NULL, NULL),
(8, 18, 18, NULL, NULL),
(9, 19, 28, NULL, NULL),
(10, 20, 30, NULL, NULL),
(11, 21, 18, NULL, NULL),
(12, 22, 27, NULL, NULL),
(13, 23, 18, NULL, NULL),
(14, 24, 19, NULL, NULL),
(15, 25, 18, NULL, NULL),
(16, 26, 2, NULL, NULL),
(17, 27, 2, NULL, NULL),
(18, 28, 19, NULL, NULL),
(19, 29, 19, NULL, NULL),
(20, 30, 19, NULL, NULL),
(21, 31, 19, NULL, NULL),
(22, 32, 19, NULL, NULL),
(23, 33, 18, NULL, NULL),
(24, 34, 15, NULL, NULL),
(25, 35, 19, NULL, NULL),
(26, 36, 15, NULL, NULL),
(27, 37, 19, NULL, NULL),
(28, 38, 19, NULL, NULL),
(29, 39, 18, NULL, NULL),
(30, 40, 2, NULL, NULL),
(31, 41, 15, NULL, NULL),
(32, 42, 2, NULL, NULL),
(33, 43, 2, NULL, NULL),
(34, 44, 18, NULL, NULL),
(35, 45, 18, NULL, NULL),
(36, 46, 19, NULL, NULL),
(37, 47, 19, NULL, NULL),
(38, 48, 19, NULL, NULL),
(39, 49, 19, NULL, NULL),
(40, 50, 19, NULL, NULL),
(41, 51, 19, NULL, NULL),
(42, 52, 19, NULL, NULL),
(43, 53, 19, NULL, NULL),
(44, 54, 19, NULL, NULL),
(45, 55, 19, NULL, NULL),
(46, 56, 19, NULL, NULL),
(47, 57, 19, NULL, NULL),
(48, 58, 19, NULL, NULL),
(49, 59, 19, NULL, NULL),
(50, 60, 19, NULL, NULL),
(51, 61, 19, NULL, NULL),
(52, 62, 19, NULL, NULL),
(53, 63, 19, NULL, NULL),
(54, 64, 19, NULL, NULL),
(55, 65, 19, NULL, NULL),
(56, 66, 19, NULL, NULL),
(57, 67, 19, NULL, NULL),
(58, 68, 19, NULL, NULL),
(59, 69, 18, NULL, NULL),
(60, 70, 20, NULL, NULL),
(61, 71, 18, NULL, NULL),
(62, 72, 18, NULL, NULL),
(63, 73, 18, NULL, NULL),
(64, 74, 18, NULL, NULL),
(65, 75, 15, NULL, NULL),
(66, 76, 18, NULL, NULL),
(67, 77, 20, NULL, NULL),
(68, 78, 19, NULL, NULL),
(69, 79, 18, NULL, NULL),
(70, 80, 20, NULL, NULL),
(71, 81, 19, NULL, NULL),
(72, 82, 19, NULL, NULL),
(73, 83, 19, NULL, NULL),
(74, 84, 18, NULL, NULL),
(75, 85, 19, NULL, NULL),
(76, 86, 18, NULL, NULL),
(77, 87, 20, NULL, NULL),
(78, 88, 20, NULL, NULL),
(79, 89, 20, NULL, NULL),
(80, 90, 20, NULL, NULL),
(81, 91, 20, NULL, NULL),
(82, 92, 19, NULL, NULL),
(83, 93, 20, NULL, NULL),
(84, 94, 19, NULL, NULL),
(85, 95, 18, NULL, NULL),
(86, 96, 18, NULL, NULL),
(87, 97, 18, NULL, NULL),
(88, 98, 1, NULL, NULL),
(89, 99, 20, NULL, NULL),
(90, 100, 15, NULL, NULL),
(91, 101, 29, NULL, NULL),
(92, 102, 15, NULL, NULL),
(93, 103, 20, NULL, NULL),
(94, 104, 20, NULL, NULL),
(95, 105, 20, NULL, NULL),
(96, 106, 20, NULL, NULL),
(97, 107, 20, NULL, NULL),
(98, 108, 18, NULL, NULL),
(99, 109, 20, NULL, NULL),
(100, 110, 15, NULL, NULL),
(101, 111, 1, NULL, NULL),
(102, 112, 18, NULL, NULL),
(103, 113, 19, NULL, NULL),
(104, 114, 19, NULL, NULL),
(105, 115, 29, NULL, NULL),
(106, 116, 20, NULL, NULL),
(107, 117, 18, NULL, NULL),
(108, 118, 18, NULL, NULL),
(109, 119, 18, NULL, NULL),
(110, 120, 18, NULL, NULL),
(111, 121, 18, NULL, NULL),
(112, 122, 18, NULL, NULL),
(113, 123, 19, NULL, NULL),
(114, 124, 20, NULL, NULL),
(115, 125, 18, NULL, NULL),
(116, 126, 18, NULL, NULL),
(117, 127, 19, NULL, NULL),
(118, 128, 12, NULL, NULL),
(119, 129, 12, NULL, NULL),
(120, 130, 20, NULL, NULL),
(121, 131, 19, NULL, NULL),
(122, 132, 19, NULL, NULL),
(123, 133, 19, NULL, NULL),
(124, 134, 19, NULL, NULL),
(125, 135, 19, NULL, NULL),
(126, 136, 19, NULL, NULL),
(127, 137, 19, NULL, NULL),
(128, 138, 18, NULL, NULL),
(129, 139, 18, NULL, NULL),
(130, 140, 18, NULL, NULL),
(131, 141, 18, NULL, NULL),
(132, 142, 18, NULL, NULL),
(133, 143, 18, NULL, NULL),
(134, 144, 18, NULL, NULL),
(135, 145, 18, NULL, NULL),
(136, 146, 16, NULL, NULL),
(137, 147, 21, NULL, NULL),
(138, 148, 21, NULL, NULL),
(139, 149, 21, NULL, NULL),
(140, 150, 17, NULL, NULL),
(141, 151, 17, NULL, NULL),
(142, 152, 16, NULL, NULL),
(143, 153, 16, NULL, NULL),
(144, 154, 16, NULL, NULL),
(145, 155, 25, NULL, NULL),
(146, 156, 22, NULL, NULL),
(147, 157, 22, NULL, NULL),
(148, 158, 23, NULL, NULL),
(149, 159, 23, NULL, NULL),
(150, 160, 23, NULL, NULL),
(151, 161, 24, NULL, NULL),
(152, 162, 1, NULL, NULL),
(153, 163, 1, NULL, NULL),
(154, 164, 1, NULL, NULL),
(155, 165, 1, NULL, NULL),
(156, 166, 4, NULL, NULL),
(157, 167, 5, NULL, NULL),
(158, 168, 5, NULL, NULL),
(159, 169, 5, NULL, NULL),
(160, 170, 5, NULL, NULL),
(161, 171, 5, NULL, NULL),
(162, 172, 5, NULL, NULL),
(163, 173, 5, NULL, NULL),
(164, 174, 5, NULL, NULL),
(165, 175, 5, NULL, NULL),
(166, 176, 6, NULL, NULL),
(167, 177, 6, NULL, NULL),
(168, 178, 6, NULL, NULL),
(169, 179, 6, NULL, NULL),
(170, 180, 6, NULL, NULL),
(171, 181, 6, NULL, NULL),
(172, 182, 6, NULL, NULL),
(173, 183, 7, NULL, NULL),
(174, 184, 8, NULL, NULL),
(175, 185, 8, NULL, NULL),
(176, 186, 8, NULL, NULL),
(177, 187, 8, NULL, NULL),
(178, 188, 8, NULL, NULL),
(179, 189, 8, NULL, NULL),
(180, 190, 8, NULL, NULL),
(181, 191, 8, NULL, NULL),
(182, 192, 9, NULL, NULL),
(183, 193, 9, NULL, NULL),
(184, 194, 10, NULL, NULL),
(185, 195, 10, NULL, NULL),
(186, 196, 10, NULL, NULL),
(187, 197, 11, NULL, NULL),
(188, 198, 11, NULL, NULL),
(189, 199, 11, NULL, NULL),
(190, 200, 11, NULL, NULL),
(191, 201, 11, NULL, NULL),
(192, 202, 12, NULL, NULL),
(193, 203, 12, NULL, NULL),
(194, 204, 3, NULL, NULL),
(195, 205, 14, NULL, NULL),
(196, 206, 14, NULL, NULL),
(197, 207, 14, NULL, NULL),
(198, 208, 14, NULL, NULL),
(199, 209, 14, NULL, NULL),
(200, 210, 14, NULL, NULL),
(201, 211, 14, NULL, NULL),
(202, 212, 26, NULL, NULL),
(203, 213, 26, NULL, NULL),
(204, 214, 26, NULL, NULL),
(205, 215, 26, NULL, NULL),
(206, 216, 26, NULL, NULL),
(207, 217, 26, NULL, NULL),
(208, 218, 26, NULL, NULL),
(209, 219, 26, NULL, NULL),
(210, 220, 26, NULL, NULL),
(211, 221, 3, NULL, NULL),
(212, 222, 3, NULL, NULL),
(213, 223, 3, NULL, NULL),
(214, 224, 13, NULL, NULL),
(215, 225, 3, NULL, NULL),
(216, 226, 13, NULL, NULL),
(217, 227, 26, NULL, NULL),
(218, 228, 26, NULL, NULL),
(219, 229, 26, NULL, NULL),
(220, 230, 26, NULL, NULL),
(221, 231, 26, NULL, NULL),
(222, 232, 26, NULL, NULL),
(223, 233, 26, NULL, NULL),
(224, 234, 26, NULL, NULL),
(225, 235, 26, NULL, NULL),
(226, 236, 26, NULL, NULL),
(227, 237, 26, NULL, NULL),
(228, 238, 26, NULL, NULL),
(229, 239, 26, NULL, NULL),
(230, 240, 26, NULL, NULL),
(231, 241, 8, NULL, NULL),
(232, 242, 11, NULL, NULL),
(233, 243, 26, NULL, NULL),
(234, 244, 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cocas`
--

CREATE TABLE `cocas` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `services` longtext NOT NULL,
  `location` longtext NOT NULL,
  `po_number` bigint(20) DEFAULT NULL,
  `vendor` longtext NOT NULL,
  `address` longtext NOT NULL,
  `completion_date` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cocas`
--

INSERT INTO `cocas` (`id`, `date`, `services`, `location`, `po_number`, `vendor`, `address`, `completion_date`, `created_at`, `updated_at`) VALUES
(2, '02/23/2023', 'eqwewqewqewq', 'eqewqewqewq', NULL, 'ewqewewq', 'ewqewqeqweqweq', '03/23/2029', NULL, NULL),
(3, '02/10/2023', 'xczxcz', 'BGC', NULL, 'dsadas', 'dsadsad', '02/14/2023', '2023-02-01 06:55:25', '2023-02-02 21:46:01'),
(4, '02/10/2023', 'dads', 'dsadas', NULL, 'dsadsa', 'dsadsa', '02/23/2023', '2023-02-01 07:00:31', '2023-02-01 07:00:31'),
(6, '02/03/2023', 'Joel', 'pasig', 32, '3', 'caloocan', '02/03/2023', '2023-02-02 22:25:38', '2023-02-02 22:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `conformes`
--

CREATE TABLE `conformes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_server_manger` varchar(255) NOT NULL,
  `sincerely_date` varchar(255) NOT NULL,
  `by1` varchar(255) NOT NULL,
  `by2` varchar(255) NOT NULL,
  `conforme_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `hire_date` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `tenure` varchar(255) NOT NULL,
  `total_it_exp` varchar(255) NOT NULL,
  `project_status` varchar(255) NOT NULL DEFAULT '''ACTIVE''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_number`, `name`, `role_id`, `hire_date`, `contact`, `birthdate`, `tenure`, `total_it_exp`, `project_status`, `created_at`, `updated_at`) VALUES
(11, 'A01475', 'Angelo Michael Bermudez Migo', 11, '01-17-23', '', '01/28/99', '0years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'A01470', 'Ryan Balcorta Monegro', 11, '02-22-21', '9176397070', '01/19/84', '1years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'A01474', 'John Paul Tangalin Mañoza', 36, '12-14-20', '0956 859 1727', '10/15/92', '2years,1months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'A00065', 'Sean Dhecklien De Jesus Bumanlag', 52, '01-01-21', '', '01/31/23', '2years,0months', '2 Years', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'A00064', 'Romer Tacleon De Guzman', 52, '01-01-21', '', '', '2years,0months', '4 Years (Outside ABSI)', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'A01482', 'Maria Ursula Tolentino De Leon', 37, '10-26-20', '9175161333', '08/20/93', '2years,3months', '2 Years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'A01061', 'Kevin Eliczar Bailon Estrella', 52, '10-22-20', '', '', '2years,3months', '2 Years', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'A00063', 'Dexter Espiritu Serisola', 52, '01-01-21', '9760217623', '04/02/98', '2years,0months', '2 Years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'A01481', 'Kelvin Dale Castro Vitug', 27, '10-19-20', '9289226897', '12/03/96', '2years,3months', '2 Years and 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'A01468', 'Kevin Feliciano Castro De Lara', 27, '10-12-20', '9164271761', '07/13/90', '2years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'A00062', 'Sheila Buag Maraño', 52, '01-01-21', '9260660678', '03/13/96', '2years,0months', '2 Years and 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'A01479', 'Roestam John Pena Bautista', 55, '05-27-20', '9568591727', '', '2years,8months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'A00060', 'Dianne Rada Carbonel', 1, '01-01-21', '9355861638', '07/12/94', '2years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'A00059', 'JOSEPH ERICKSON BAYBAY', 52, '05-21-20', '9153896109', '03/01/95', '2years,8months', '3 years 8 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'A00058', 'Alyssa Joy Gonzales Batitay', 1, '01-01-21', '9812212955', '07/23/97', '2years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'A01205', 'Jonathan Caisip Piol', 52, '03-03-20', '9153892848', '07/11/94', '2years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'A01204', 'Ryan Amaro Bares', 52, '03-03-20', '', '', '2years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'A01016', 'CAMILLE TONEL', 52, '03-15-21', '09269536934 / 09982346924', '04/11/97', '1years,10months', '2 years 10 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'A01017', 'IAN CHRISTIAN AGUILAR', 52, '03-08-21', '9560566411', '12/29/97', '1years,10months', '2 years 10 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'A01018', 'JIM KELLY PEREZ', 52, '03-08-21', '9157716201', '02/18/99', '1years,10months', '4 yrs', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'A01019', 'JOANA MARIE TANGI', 54, '03-08-21', '9055357897', '01/25/89', '1years,10months', '2 years 11 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'A01020', 'ALLAN CYRUS CLEMEN MIRANDA', 52, '03-15-21', '9499440466', '11/23/95', '1years,10months', '2 years 11 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'A00054', 'Ameer Abayato Samporna', 52, '07-10-19', '0956 124 3072', '11/03/96', '3years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'A00297', 'Kim Jan Bantugan Optina', 42, '07-10-19', '', '', '3years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'A01026', 'IVAN LOUIE AGAPAY', 52, '03-15-21', '9100717900', '03/23/99', '1years,10months', '4 years 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'A01004', 'Aljohn Pope Anito Andrade', 42, '07-08-19', '', '', '3years,6months', '3 years and 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'A01031', 'VHAN KELLY DOMALAON', 52, '03-15-21', '9276311680', '06/30/97', '1years,10months', '3 years and 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'A01040', 'MARISOL ANDRADE', 49, '11-04-19', '9087006093', '06/08/97', '3years,2months', '3 years and 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'A01813', 'Rochelle Ann Dolot Dino', 51, '05-29-19', '9561243974', '07/13/95', '3years,7months', '3 Years & 5 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'A01142', 'Raymart Marcelino Rivera', 15, '01-21-19', '9665896944', '12/17/95', '4years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'A00289', 'Calvin Joe Carranza Albarillo', 42, '12-19-18', '', '', '4years,1months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'A01140', 'Sherwin Degumbis Cabrera', 19, '02-01-17', '', '', '5years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'A01139', 'Rhyan Tolentino Ramos', 19, '02-01-17', '9563711642', '05/02/81', '5years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'A00047', 'Ana Clarissa Barsana Sagitarios', 6, '06-15-16', '', '', '6years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'A00961', 'R-Clarisse Ijan Toribio', 52, '01-28-21', '9273067547', '08/29/98', '2years,0months', '1Year and 9 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'A01042', 'JESSICA BUENDIA', 52, '07-03-19', '9561241130', '06/05/98', '3years,6months', '2 year and 9 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'A01043', 'ALAN ADRIAN ESPIRITU', 52, '11-04-19', '9565124909', '05/11/95', '3years,2months', '2 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'A01044', 'IAN PATRICK LEUTERIO', 52, '07-03-19', '9561241129', '04/19/98', '3years,6months', '2 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'A01046', 'LAVERN CASTAÑEDA', 52, '07-08-19', '9561243036', '11/17/95', '3years,6months', '8 years and 9 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'A01047', 'RICO ROBERT GO', 52, '11-04-19', '9565124910', '03/28/98', '3years,2months', '2 years and 4 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'A01048', 'BRYON ANDREW DEL PILAR', 3, '12-09-19', '9567248562', '04/10/97', '3years,1months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'A01068', 'GERALDINE MESA', 52, '12-09-19', '9154823791', '04/25/98', '3years,1months', '2 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'A01077', 'ROBERT DEL ROSARIO', 52, '04-05-21', '9369625521', '06/24/94', '1years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'A01090', 'MARLON FIRMALO', 52, '04-05-21', '9156514737', '02/11/81', '1years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'A01115', 'JIM JOSHUA SANTOS', 52, '04-07-21', '9202988322', '03/02/97', '1years,9months', '5 years & 7months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'A01290', 'MICHAEL ANGELO LASAP', 52, '04-19-21', '9276311507', '12/13/93', '1years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'A01422', 'JEIRMLY DULOS', 52, '06-07-21', '9369675486', '06/16/96', '1years,7months', '4 years and 11 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'A01423', 'JETRO GADIANE', 52, '06-07-21', '9369675487', '01/10/98', '1years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'A01593', 'JOHN DALE NAPIZA', 52, '08-02-21', '9478435344', '12/12/95', '1years,5months', '8 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'A01596', 'ARREN JAY VISPO', 52, '08-05-21', '9273552257', '09/26/93', '1years,5months', '1 year and 7 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'A01597', 'TRISHA DELA TORRE', 52, '08-05-21', '9611044126', '06/07/99', '1years,5months', '1 year and 6 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'A01600', 'DANICA SARUCAM', 52, '08-05-21', '9356094833', '04/04/97', '1years,5months', '1 yr 7 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'A01618', 'JOSHUA EDUARD SORIANO', 52, '08-18-21', '9369676368', '01/23/97', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'A01639', 'MARC JASON PASCUAL', 52, '08-23-21', '9277042331', '08/25/96', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'A01648', 'RAQUEL VISMONTE', 52, '09-09-21', '9502507226', '01/05/92', '1years,4months', '1 Year and 4 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'A01813', 'ROCHELLE ANN DINO', 51, '05-29-19', '9561243974', '07/13/95', '3years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'A01819', 'NICAELA SHEIN ESTRELLA', 52, '06-24-22', '9950881012', '01/18/97', '0years,7months', '1yr 4 month', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'A01842', 'SARAH JANE MENDOZA', 52, '06-23-22', '9056536337', '07/16/96', '0years,7months', '1yr 4 month', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'A01438', 'Edcel Ann Alos Bañadera', 52, '06-14-21', '9369675564', '03/27/99', '1years,7months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'A01445', 'Charles Edward Rivera Aguinaldo', 35, '06-14-21', '', '', '1years,7months', '', 'NOT A PART OF ITG-OSS SERVICE FULFILLMENT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'A01524', 'Roselle Del Rosario España', 52, '06-28-21', '9616930398', '07/18/99', '1years,7months', '1year and 4months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'A01525', 'Christian Jordan Evangelista Camilo', 52, '06-28-21', '9614953278', '03/06/99', '1years,7months', '1 Year and 5 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'A01522', 'Carmelyn Calma Samontina', 52, '06-28-21', '9567805075', '08/06/97', '1years,7months', '1year and 4months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'A01535', 'Eunice Myer Lucero Lumba', 52, '07-05-21', '', '', '1years,6months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'A01549', 'Eduardo, Jr. Cayampat Maninang', 42, '07-08-21', '', '', '1years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'A01574', 'Carl Bryan Tanlogon Francisco', 52, '07-19-21', '', '', '1years,6months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'A01575', 'Lara Beatriz Valenzuela Rialp', 28, '07-19-21', '9176850588', '02/22/88', '1years,6months', '1 years 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'A01562', 'Cholin Lorenzo Saria', 28, '07-26-21', '9369676106', '09/15/96', '1years,6months', '1 years 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'A01593', 'John Dale Tobias Napiza', 52, '08-02-21', '', '', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'A01599', 'Joyby Padua Delgado', 28, '08-02-21', '9369676269', '', '1years,5months', '1 years 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'A02072', 'JHON ALVIN CASTRO', 52, '02-17-22', '9368823698', '07/06/99', '0years,11months', '1 year & 2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'A02101', 'ALDRIN ALEMANIA', 52, '02-28-22', '9761515452', '12/06/92', '0years,11months', '1 year & 2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'A02187', 'ROENNE NICOLE COLORINA', 52, '03-24-22', '9673006313', '01/09/97', '0years,10months', '4 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'A01613', 'Mark Edwin Elbambo Ysao', 52, '08-09-21', '9499648033', '08/21/98', '1years,5months', '1 year and 2months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'A02447', 'KIMBERLY NOLASCO', 52, '07-18-22', '9994642275', '11/08/93', '0years,6months', '5 years & 7 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'A01610', 'Elice Jean Puno Santos', 52, '08-12-21', '9165061711', '01/06/92', '1years,5months', '1 year and 2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'A01612', 'Saldy Miranda Zantua', 52, '08-19-21', '', '', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'A01623', 'Monica Reyes Gonzales', 52, '08-19-21', '', '', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'A01625', 'Christine Joy Sulinap Corpuz', 52, '08-19-21', '9369676404', '04/04/96', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'A01626', 'Jalal Pacatan Kasan', 52, '08-19-21', '9505061692', '01/19/99', '1years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'A01628', 'Claire Ojeda Roman', 28, '08-23-21', '9369676424', '', '1years,5months', '1 years 2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'A02456', 'LEXUS UYQUIENGCO', 52, '08-01-22', '9456571880', '11/12/98', '0years,5months', '2 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'A01651', 'Kim Baniola Diaz', 28, '09-06-21', '', '', '1years,4months', '1 years 2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'A02493', 'NARENCE JOY CATAQUIZ', 52, '08-01-22', '9678001008', '06/21/99', '0years,5months', '1 year & 1 month', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'A01653', 'Alexis Bautista Almasol', 21, '09-09-21', '', '', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'A01663', 'Enrico, Jr. Ilag Gonzales', 21, '09-09-21', '', '', '1years,4months', '1 Year and 1 month', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'A01670', 'Angela Tabadero Borlongan', 21, '09-09-21', '', '', '1years,4months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'A01709', 'Dorjie Ann Maranan Castro', 6, '09-23-21', '9562305935', '09/18/89', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'A01713', 'Raphael Alfonso Balitaan Tan', 21, '09-23-21', '', '', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'A01714', 'Samantha Louise Sanchez Magalong', 42, '09-23-21', '9456220504', '04/11/98', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'A01710', 'Janine Sayo Valerio', 11, '09-27-21', '9997187913', '', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'A01738', 'Mark Joseph Sahagon Aurin', 42, '09-30-21', '9074462013', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'A01731', 'Jeralyn Demano Estrella', 21, '10-01-21', '', '', '1years,3months', '1 Year and 2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'A01759', 'Eunice Genevieve De Leon Aduca', 21, '10-07-21', '', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'A01769', 'Nerlyn Tejada Viginia', 21, '10-14-21', '', '', '1years,3months', '1 Year and 1 month', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'A01775', 'Almin John Manangan Lopez', 21, '10-14-21', '', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'A01771', 'Venz Kenneth Galolo Dumo', 52, '10-18-21', '9278127833', '10/26/98', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'A01800', 'Orland James Nmn Palac', 21, '10-25-21', '', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'A01803', 'Gilda Montemayor Soriano', 6, '11-03-21', '', '', '1years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'A01804', 'Raphael Caasi Dimdam', 42, '11-04-21', '9156802021', '01/21/91', '1years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'A01812', 'John Joseph Taeza Musngi', 21, '11-15-21', '9561249501', '05/26/98', '1years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'A01820', 'Chantal Tan Diverson', 21, '11-18-21', '9562305532', '03/01/98', '1years,2months', '11 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'A02566', 'KIMBERLY BUENASEDA', 52, '09-05-22', '9675625094', '11/09/98', '0years,4months', '1 year', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'A02570', 'CARL JEROME HUSENA', 52, '09-05-22', '9298742918', '04/12/99', '0years,4months', '11 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'A01944', 'Rod Eliziah Bonifacio Molina', 11, '01-13-22', '9060246403', '', '1years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'A02016', 'Cristhian Alcaparas Lasmarias', 28, '01-31-22', '9276364394', '09/15/97', '0years,11months', '0 years 9 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'A02067', 'Bryon Gil Peña Cajayon', 6, '02-10-22', '', '', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'A02068', 'Rholand Cielo Talavera', 52, '02-10-22', '9669328437', '07/28/97', '0years,11months', '8 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'A02069', 'Jane March Alvasan Reyes', 52, '02-10-22', '9567001875', '03/06/97', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'A02087', 'Jim Harley Torzar Alabado', 52, '02-17-22', '9750027742', '07/24/97', '0years,11months', '8 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'A02072', 'Jhon Alvin Patalin Castro', 52, '02-17-22', '', '', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'A02074', 'Bernadette Shane Emnace Villaflor', 21, '02-17-22', '9067885299', '07/28/98', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'A02580', 'RONEL LORICO', 52, '09-05-22', '9759009327', '07/09/97', '0years,4months', '4 Years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'A02102', 'John Lorenz Valles Pe', 44, '03-01-22', '', '', '0years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'A02127', 'Jean Claudette Oliveros Remolona', 52, '03-03-22', '9283286422', '01/05/99', '0years,10months', '7 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'A02173', 'Alessandra Dominique Pamulo Dizon', 6, '03-14-22', '', '', '0years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'A02617', 'RAMIL CHRISTIAN HIPOLITO', 52, '09-19-22', '9166633438', '02/04/97', '0years,4months', '3 years', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'A02195', 'John Mark Dela Torre Villasenor', 26, '03-24-22', '', '', '0years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'A02202', 'Jhon Edward Jimenez Quijano', 26, '03-31-22', '9276330918', '06/22/88', '0years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'A02205', 'Gerald Juliado Ricardos', 28, '04-04-22', '9066877103', '', '0years,9months', '0 years 7 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'A02739', 'ABBYGAIL RHENEE LORETO', 52, '10-24-22', '9283882578', '12/22/98', '0years,3months', '-', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'A02417', 'Rovi Ann Declaro Babilonia', 52, '07-07-22', '9453251232', '06/25/99', '0years,6months', '3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'A02860', 'BRIGHTELYN JOY IBAÑEZ', 52, '12-19-22', '9771987490', '11/24/96', '0years,1months', '6 MONTHS', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'A02777', 'RENZ CHARLES FIEDACAN', 52, '11-07-22', '9959417109', '11/30/99', '0years,2months', '5 MONTHS', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'A02499', 'Jaiselle John Cuyos Rogales', 52, '08-01-22', '9097948541', '06/01/95', '0years,5months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'A02525', 'Asuncion Ejae Omaña', 21, '08-15-22', '', '', '0years,5months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'A02526', 'Resonable Jeg Soliven', 16, '08-15-22', '9454092124', '03/31/81', '0years,5months', '0 years 3 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'A02793', 'CHRISTIAN JOSEPH TAGLE, DELGADO', 52, '11-14-22', '0917 710 3941', '05/15/99', '0years,2months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'A02874', 'JOHN PATRICK ESPIRITU, CONTRERAS', 52, '12-19-22', '9164108587', '12/18/99', '0years,1months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'A02807', 'KALVIN DANIELLE MUSTERA, ANGELES', 52, '11-21-22', '9453020307', '11/07/99', '0years,2months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'A02825', 'IVAN DALE DAVID, BADBADEN', 52, '11-28-22', '9760394624', '08/31/98', '0years,2months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'A02820', 'RODNEY HONRADE, SISTOSO', 52, '11-28-22', '9277410452', '08/19/98', '0years,2months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'A02834', 'ROLAND CALDEO, ABAYA', 52, '11-28-22', '9651269901', '04/14/99', '0years,2months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'A02826', 'BRYAN VILAN, ATIENZA', 52, '11-28-22', '9457717244', '07/25/87', '0years,2months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'A02885', 'JUSTINE BELINO, ABARO', 52, '01-02-22', '9272477432', '06/30/97', '1years,0months', '2 months', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'A01521', 'Marvin Ken Sandoval Aguilar', 9, '06-28-21', '9669571652', '03/30/92', '1years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'A02094', 'Denzel Reeve Monterola Salazar', 2, '02-21-22', '9163761635', '03/05/97', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'A02372', 'Blixxe Kyle Lucena Aggabao', 23, '06-27-22', '9276641288', '12/15/97', '0years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'A00287', 'Marcos Gabriel Barruga Jr.', 8, '01-09-17', '9054933882', '09/29/89', '6years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'A01069', 'Aaron Josh Obaob Astilla', 24, '12-28-20', '9772847904', '01/14/96', '2years,1months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'A00118', 'Harmon Jerome Lagman Domeyeg', 28, '08-22-18', '9568767334', '10/08/94', '4years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'A00126', 'Glen Mark Mondoy Bayubay', 28, '02-03-19', '9665949196', '08/08/95', '3years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'A02658', 'Erika Mae Botin', 22, '10-03-22', '9171299585', '11/08/97', '0years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'A00119', 'Nixon Pardito Macabuhay', 28, '01-01-20', '9176880282', '01/29/88', '3years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'A01367', 'Angelyza Antonio', 7, '05-24-21', '9369623804', '05/16/93', '1years,8months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'A01496', 'Jhulie Ann Castillo', 56, '06-21-21', '9308584710', '11/30/96', '1years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'A01444', 'Ian Hope Calipusan', 48, '06-14-21', '9300188263', '02/05/93', '1years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'A01437', 'Harold Castillo', 48, '07-14-21', '9158117372', '01/20/95', '1years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'A01810', 'Rostum Oliveros', 48, '11-04-21', '9105187306', '02/07/94', '1years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'A02369', 'Juherm Venus', 56, '06-23-22', '9760722871', '11/02/97', '0years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'A01348', 'Kenneth John Beler', 52, '05-01-21', '9272604156', '10/18/89', '1years,8months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'A01303', 'Marcky Dela Cruz', 52, '04-19-21', '9516638983', '04/21/98', '1years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'A01347', 'Verly Ann Hofilena', 52, '06-01-17', '9153879576', '04/19/95', '5years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'A01346', 'Jea Allyson Sejas', 52, '10-23-17', '9352575538', '08/22/93', '5years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'A01556', 'Rose Katherine Tapang', 46, '07-12-21', '9369676071', '08/15/98', '1years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'A01565', 'Jeffrey Agdales Del Rosario', 50, '07-19-21', '9060280239', '', '1years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'A01632', 'Daryl Sanders Lim Acebuche', 9, '08-08-18', '', '', '4years,5months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'A01009', 'Jetrho Marquez Gamil', 31, '03-01-21', '', '', '1years,10months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'A00288', 'Niño Angelo Mendoza Ramos', 41, '09-06-17', '', '', '5years,4months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'A00282', 'Jeffrey Masangkay Cosico', 47, '05-16-15', '', '', '7years,8months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'A00296', 'Ronald Buctot Gallamaso', 47, '06-13-19', '', '', '3years,7months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'A01039', 'Bryan Paul Macadamia Tempra', 49, '05-04-15', '9457717244', '07/25/87', '7years,8months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, '', 'Charemagne Angeles', 1, '', '', '', '123years,0months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'A02498', 'Roda Jane Camacho', 31, '08-01-22', '9369533432', '', '0years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'A02656', 'Dan Marc Quiton Llanes', 9, '10-03-22', '9658174121', '', '0years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'A02056', 'Chrevic Josef Pelias Dangan', 25, '02-03-22', '9177138598', '', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'A00301', 'Glaiza Tan Chin Guison', 25, '01-13-20', '9154823805', '', '3years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'A01591', 'Jan Ruel Codes Repalda', 25, '07-26-21', '', '', '1years,6months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'A00302', 'Julius Francia Portentado', 25, '02-11-20', '9772301163', '', '2years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'A01843', 'Michael Nepomuceno Rombaon', 25, '11-29-21', '', '', '1years,1months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'A00305', 'Mikhail Ramos Demetrio', 25, '06-01-20', '9086092096', '', '2years,7months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'A00299', 'Aileen Tolentino Catindig', 40, '09-10-19', '', '', '3years,4months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'A02380', 'Kyle Ruel Rojas Baculanta', 5, '07-04-22', '9171447904', '', '0years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'A01656', 'Gabriel Martin Cortez Cervantes', 6, '09-02-21', '9562301734', '', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'A02020', 'Jeremias Enriquez Caro', 6, '01-25-22', '', '', '1years,0months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'A01654', 'Jia Anne Carmela Pablo Filoteo', 6, '09-02-21', '9175841201', '', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'A02105', 'Julie Ann Diaz Kempis', 6, '02-28-22', '9773139918', '', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'A01664', 'Marie Janiola Cuaresma', 6, '09-02-21', '9672710336', '', '1years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'A02451', 'Shanneen Canacan Macarimbang', 6, '07-21-22', '9173061960', '', '0years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'A00902', 'Dianne Tan Geronimo', 43, '08-15-19', '9561243727', '', '3years,5months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'A00286', 'Roque, Jr. Tribiana Teves', 49, '01-02-17', '9175031339', '', '6years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'A00298', 'Andrew Calaunan Camacho', 39, '07-10-19', '9166529944', '', '3years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'A00304', 'Mark Anthony Sulit Hernandez', 39, '03-05-20', '9369546697', '', '2years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'A01066', 'John Romeo Capila De Luna', 39, '07-10-19', '9561243313', '', '3years,6months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'A00303', 'Noel Leonardo Nicolas', 39, '02-24-20', '', '', '2years,11months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'A02694', 'Joenel Jacaba', 39, '10-10-22', '9103724757', '', '0years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'A01084', 'Romark Rojo Limtingco', 12, '04-05-21', '9276311601', '', '1years,9months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'A01254', 'Marvin Andaya Esternon', 56, '04-19-21', '9760431505', '', '1years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'A01329', 'Fernando, Jr. Daing Salvador', 49, '09-14-20', '9774793907', '', '2years,4months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, '', 'Francis Dulay', 45, '', '', '', '123years,0months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'A02749', 'Aldwin Pabualan', 45, '10-31-22', '9663855480', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'A02202', 'Jhon Edward Jimenez Quijano', 26, '03-31-22', '', '', '0years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'A02195', 'John Mark Dela Torre Villasenor', 26, '03-24-22', '', '', '0years,10months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'A02258', 'Ranil Vincent Co Reyes', 18, '05-12-22', '', '', '0years,8months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'A01807', 'Don Don Yanela Cabanela', 52, '10-15-21', '9455208365', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'A01798', 'Jason Clyde Subade Ploteña', 52, '10-15-21', '9562307462', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'A01796', 'Jovito, Jr. Agustin Malanot', 52, '10-15-21', '9175884400', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'A01794', 'Leonard Nacion Gonzales', 52, '10-15-21', '9562307389', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'A01793', 'Nomar Dela Cruz Ortiz', 52, '10-15-21', '9562307382', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'A01795', 'Novieñigo Fiel Libres', 52, '10-15-21', '9059788567', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'A01797', 'Richard Legaspi Oña', 52, '10-15-21', '9168874355', '', '1years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'A02267', 'Maribeth Ruivivar Maca', 4, '05-12-22', '9266427977', '', '0years,8months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'A01058', 'Julie-Ann Ador Obligado', 20, '07-15-19', '9561243067', '', '3years,6months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'A01059', 'Nathaniel Aaron Estur Castillo', 4, '06-04-20', '9976040307', '', '2years,7months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'A01060', 'Quennie Lynn Brucales Conde', 10, '08-06-18', '9270644169', '', '4years,5months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'A01716', 'Angelo Jordan Soliven', 14, '09-30-21', '', '', '1years,3months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'A01057', 'Arnel Ejoracadas Virtus', 4, '07-08-19', '9561243048', '', '3years,6months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, '', 'John Anthony Naui', 4, '', '9999908116', '', '123years,0months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, '', 'DARA DARLENE NAVARRO BAUI', 1, '', '', '', '123years,0months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'A02758', 'Jerome Magat', 4, '11-02-22', '9654200003', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'A01083', 'Alecs Dubal Asenci', 34, '04-05-21', '', '', '1years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'A00036', 'Kevin Sapaden Roberto', 38, '06-26-17', '9178720414', '', '5years,7months', '', 'RESIGNED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'A02794', 'Mark Joshua Go', 38, '11-14-22', '9059633678', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'A02095', 'Nazareth Dogillo Comia', 33, '02-17-22', '9276327776', '09/25/97', '0years,11months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'A00035', 'Pauline Nikole Bautista Manalo', 34, '01-01-17', '', '', '6years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'A02211', 'Robert Rae Salgado Bunagan', 17, '04-18-22', '9161651997', '01/15/97', '0years,9months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'A01788', 'Jaime Ferrer', 13, '', '9602769984', '', '123years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'A02783', 'Ma. Cathrina Cayanan Yumul', 4, '11-08-22', '9270595215', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'A02786', 'Ron Lorenz Taquiqui Hernandez', 4, '11-08-22', '9176292516', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'A02784', 'Kenneth Ledeno Pacifico', 4, '11-08-22', '9565479496', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'A02779', 'Ronald Figueroa Avila', 14, '11-08-22', '9154254432', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'A02781', 'Ruselle Ian Joe Bayalan Endaya', 4, '11-08-22', '9923747736', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'A02787', 'Julius Czar Visconde', 4, '11-08-22', '9452438248', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'A02768', 'Eugene Vincent Ching Alcid', 4, '11-08-22', '9564090625', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'A02795', 'Sebastian Santos', 4, '11-14-22', '9059401375', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'A02796', 'Pablo Mandrilla III', 4, '11-14-22', '9982376871', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'A02788', 'Ian Esguerra', 4, '11-14-22', '9293836528', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'A02797', 'Spencer Castro', 4, '11-14-22', '9092031776', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'A02799', 'Joanne Bonlay', 4, '11-14-22', '9275203083', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'A02828', 'Cyan Macklein Pereyra', 4, '11-21-22', '9099292908', '', '0years,2months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'A02663', 'Leslee Juco', 29, '10-02-22', '9665708776', '06/28/99', '0years,3months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'A02877', 'Ace Dagooc', 30, '12-26-22', '9232287450', '', '0years,1months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'A01804', 'Raphael Dimdam', 4, '', '9156802021', '', '123years,0months', '', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'IC', 'Jojy Mae Juayong ', 32, '12-12-22', '9360518163', '', '0years,1months', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_01_05_134948_create_roles', 1),
(5, '2023_01_06_072134_create_employees_table', 1),
(6, '2023_01_06_095146_create_allprojects_table', 1),
(7, '2023_01_06_102329_create_campaigns_table', 1),
(8, '2023_01_17_135109_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) NOT NULL,
  `name_of_campaign` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `number_of_hours` varchar(255) NOT NULL,
  `billable_amount` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `conforme_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRATIVE ASSISTANT', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(2, 'APPLICATION SUPPORT ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(3, 'ASSISTANT TEAM LEAD', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(4, 'BACKEND DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(5, 'BIG DATA PLATFORM ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(6, 'BUSINESS ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(7, 'DATA ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(8, 'DATA CENTER OPERATION SPECIALIST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(9, 'DATA ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(10, 'DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(11, 'DIGITAL DELIVERY LEAD', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(12, 'ETL DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(13, 'Front End Developer', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(14, 'FULL STACK SYSTEM DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(15, 'IT HELPDESK SPECIALIST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(16, 'IT PROJECT MANAGER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(17, 'IT SECURITY ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(18, 'IT SECURITY ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(19, 'IT TECHNICAL SUPPORT', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(20, 'JAVA DEVELOPER / BACKEND DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(21, 'JUNIOR BUSINESS ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(22, 'MECHANICAL ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(23, 'MS DASHBOARD', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(24, 'NETWORK ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(25, 'PLATFORM ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(26, 'PRE-SALES ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(27, 'OUTSYSTEM DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(28, 'PROJECT MANAGER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(29, 'QA TESTER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(30, 'REPORTING ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(31, 'REPORTS DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(32, 'RPA Developer', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(33, 'SECURITY ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(34, 'SECURITY SPECIALIST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(35, 'SENIOR BUSINESS ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(36, 'SENIOR IOS DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(37, 'SENIOR OUTSYSTEMS DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(38, 'SENIOR THREAT INTELLIGENCE AND FORENSICS', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(39, 'SERVICE DESK ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(40, 'SERVICE MANAGER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(41, 'SIMP LEAD', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(42, 'SOFTWARE DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(43, 'SOFTWARE QA ANALYST', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(44, 'SOLUTIONS ARCHITECT', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(45, 'SQL Developer', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(46, 'Strategy And Culture Management Associate', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(47, 'SUBJECT MATTER EXPERT', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(48, 'SUPPORT ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(49, 'TEAM LEAD', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(50, 'TECHNICAL INCIDENT MANAGER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(51, 'TECHNICAL PROJECT COORDINATOR', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(52, 'TECHNICAL SUPPORT ENGINEER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(53, 'TECHNICAL SUPPORT ENGINEER LEAD', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(54, 'TECHNICAL SUPPORT SUPERVISOR', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(55, 'UIPATH DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33'),
(56, 'WEB DEVELOPER', '2023-01-25 01:48:33', '2023-01-25 01:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `employee_number`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Angelo Michael Bermudez Migo', 'A01475', '$2y$10$5GHEclN6mHT9aVZecxMDaegtHmIOobsZMSW8Gcb3MNhCs/QqYXPzu', 'admin', 'unactive', NULL, '2023-01-31 19:36:53'),
(2, 'Ryan Balcorta Monegro', 'A01470', '$2y$10$NEP0p0FcKC84T.iWP90ayuYNV9Mxwbk2/be2LBCV.31Zly7nDRL8m', 'user', 'active', NULL, '2023-01-25 00:19:47'),
(3, 'John Paul Tangalin Mañoza', 'A01474', '$2y$10$.wV7Md3QiGsCPr3YSYwJROqjYf2aFVb9BNc0GJuSqE.jBoPMRKc.6', 'user', 'active', NULL, NULL),
(4, 'Sean Dhecklien De Jesus Bumanlag', 'A00065', '$2y$10$KLQGLiQliO/hYxyI3tpkXOuCt30beYwndU4C0UOtnn5cN0GdrmoRe', 'user', 'active', NULL, NULL),
(5, 'Romer Tacleon De Guzman', 'A00064', '$2y$10$T.CMoBONdx2HIzB3zAxD4.XWUInBe/kGDu6lWzY3bzhNCp7S1gyWy', 'user', 'active', NULL, NULL),
(6, 'Maria Ursula Tolentino De Leon', 'A01482', '$2y$10$UKaQN4u6Wk2NnaonKSvDnerfK1wPFM9C.pqJsiCeyugvMtpyylufu', 'user', 'active', NULL, NULL),
(7, 'Kevin Eliczar Bailon Estrella', 'A01061', '$2y$10$bav1gqQCjfBftIVvUxqJteS4beTMO.cMKVCcTzdLpIR34ADsNn8XK', 'user', 'active', NULL, NULL),
(8, 'Dexter Espiritu Serisola', 'A00063', '$2y$10$P9ce5Lwad2TCbElQW1n7wOWswnUldXXFVf0Sa4THItM1xnG0JSo4O', 'user', 'active', NULL, NULL),
(9, 'Kelvin Dale Castro Vitug', 'A01481', '$2y$10$p11jd7.hKmLfTZkolf27HON6.qG/tFRq0NV7V6Muvx3o48755OtlO', 'user', 'active', NULL, NULL),
(10, 'Kevin Feliciano Castro De Lara', 'A01468', '$2y$10$1JvcH3OzXvRbBVusrSwA7Oq8pGnjxwlFP5mrL.GLvsEnKkmo16rVW', 'user', 'active', NULL, NULL),
(11, 'Sheila Buag Maraño', 'A00062', '$2y$10$JBiluiKc9YuWYbAH6QNNcuKB5vKWZqB9uwEaqsoMLw/xEgpHdWjDK', 'user', 'active', NULL, NULL),
(12, 'Roestam John Pena Bautista', 'A01479', '$2y$10$YVj9SMp3UDbsj2jq9uPPH.hmcc4WOYXnv1YFR8zH3etP1.SA3M5oO', 'user', 'active', NULL, NULL),
(13, 'Dianne Rada Carbonel', 'A00060', '$2y$10$rN0xVo/.Um519OJNZJLVbOBk4rFGb2WhwU44TIKmd35edMBG1Ih4.', 'user', 'active', NULL, NULL),
(14, 'JOSEPH ERICKSON BAYBAY', 'A00059', '$2y$10$jtSpsit28iAsxoFyBJrsduq1iqq0n4ytLf6MHPIo6f7A3WCgZ/9my', 'user', 'active', NULL, NULL),
(15, 'Alyssa Joy Gonzales Batitay', 'A00058', '$2y$10$LG1WMOHCxe78ickDnkg8Lu/n01yjwtivbVYjkMhP75GxbhZsk45rO', 'user', 'active', NULL, NULL),
(16, 'Jonathan Caisip Piol', 'A01205', '$2y$10$.RemP9GcGVRO7rl.tdbHZuTWkDwvJGTSKsX8RTINOj4rdMXELpKta', 'user', 'active', NULL, NULL),
(17, 'Ryan Amaro Bares', 'A01204', '$2y$10$AtbcW.gLYwu4BsWxomLzC.M12ead07Jqb2Eki4ROSxS61BeeXOGXS', 'user', 'active', NULL, NULL),
(18, 'CAMILLE TONEL', 'A01016', '$2y$10$G1jGL9gnblO4nOCDjaujzughIjuzh5kqogMotkY6C7QdFIKoNtn46', 'user', 'active', NULL, NULL),
(19, 'IAN CHRISTIAN AGUILAR', 'A01017', '$2y$10$aF2/6kEx1lNVhA6RKvTQu.F.0jkyAz8iOqNeiakHu1YhckxduC18i', 'user', 'active', NULL, NULL),
(20, 'JIM KELLY PEREZ', 'A01018', '$2y$10$g/h99YTIFDNBHn4BdCudZepDOARb4Q.gm4yadW5vAeVMSqMkTOJ..', 'user', 'active', NULL, NULL),
(21, 'JOANA MARIE TANGI', 'A01019', '$2y$10$whicrL8abh4yht51pJt0oeGI.mQEtWEGE4.KwwOmeftcbYUaQLUqC', 'user', 'active', NULL, NULL),
(22, 'ALLAN CYRUS CLEMEN MIRANDA', 'A01020', '$2y$10$gp5Yt/oOAmfr93AeFOnw4.4AqYKQNnxNlcjMK80sGUbI5nVbnvYGO', 'user', 'active', NULL, NULL),
(23, 'Ameer Abayato Samporna', 'A00054', '$2y$10$zp8l/QyaLtDg8AW9C2D4yO7GBSGo4KOJh.9PHGwGX2v6IKSSyhuQa', 'user', 'active', NULL, NULL),
(24, 'Kim Jan Bantugan Optina', 'A00297', '$2y$10$QvmQRznK8ucSPjV2xx4wyOLILNAhgoBbl8KeAIS5zrnj7ZRDRNk1q', 'user', 'active', NULL, NULL),
(25, 'IVAN LOUIE AGAPAY', 'A01026', '$2y$10$V1B/y6rENd859edOoV3tb.pgW/gVW7wUFNSAI/vwIpSMTP4dZRAcW', 'user', 'active', NULL, NULL),
(26, 'Aljohn Pope Anito Andrade', 'A01004', '$2y$10$dsqyc7wDryHGw5oJsAc6WeJ8uPnz92WwF8wtWzuXsvxliYpOxfrrG', 'user', 'active', NULL, NULL),
(27, 'VHAN KELLY DOMALAON', 'A01031', '$2y$10$Wa9Dr6hs1z7bNkE17wzko.bWOO/zg6gMyvR1ZkpLSozMSRVRWC6S6', 'user', 'active', NULL, NULL),
(28, 'Marisol Andrade', 'A01040', '$2y$10$V3X.EEJPabTFeG1fHMbfQuesFP2HoLegmW9tCzBPboyFVC6PJwcJ.', 'leader', 'active', NULL, NULL),
(29, 'Rochelle Ann Dolot Dino', 'A01813', '$2y$10$Af5XPCVd3etXeOf34AQKv.l3t4HxsNEyIAzMPqI/.JmOfMBCfJZLa', 'user', 'active', NULL, NULL),
(30, 'Raymart Marcelino Rivera', 'A01142', '$2y$10$fwk2BO15LzQk54dyFeMV9uLT.GPE0UalDcZXdgsKTthvU/NIR6UHO', 'user', 'active', NULL, NULL),
(31, 'Calvin Joe Carranza Albarillo', 'A00289', '$2y$10$ImZrtCm46tRf.F0GxGcBpOLzXllgFRrHnivuu5Z5K5AOzvaUxDmce', 'user', 'active', NULL, NULL),
(32, 'Sherwin Degumbis Cabrera', 'A01140', '$2y$10$1F0xuJjym/aP1FCk9j7OHOjZVbwUqUBHkaRUUo1ItEPRht.SWgwgC', 'user', 'active', NULL, NULL),
(33, 'Rhyan Tolentino Ramos', 'A01139', '$2y$10$tWjr5Uz.X5K2d5vwQ7klzuBtA82CWSNBsUI0G8kN1dzmUgCquCRJq', 'user', 'active', NULL, NULL),
(34, 'Ana Clarissa Barsana Sagitarios', 'A00047', '$2y$10$u5SQeEbwieygWdn8mHZiP.Mhf4Ky4CPn2a9lJ1sHI9JCGm6JKCiBe', 'user', 'active', NULL, NULL),
(35, 'R-Clarisse Ijan Toribio', 'A00961', '$2y$10$iipkZQqL4hYy.m7BoguXee5DOPsq02ZY3szzyorwwZzQcjRmVjy4a', 'user', 'active', NULL, NULL),
(36, 'JESSICA BUENDIA', 'A01042', '$2y$10$EchVWw65U4pmdGfZ6RIuuenZUZoLgMs2mZyz8Z5fqYtnrcqTGWW3e', 'user', 'active', NULL, NULL),
(37, 'ALAN ADRIAN ESPIRITU', 'A01043', '$2y$10$44p37Wu76gNJ.KjVFVVAnuOYPz1/R3VM0HAMOYtrThH0jqY7q2ZQC', 'user', 'active', NULL, NULL),
(38, 'IAN PATRICK LEUTERIO', 'A01044', '$2y$10$bfoqZ0bBTIdJOLOtY.mmpep6nKzamNb4kGdFVmJWDRq74jiPquAoC', 'user', 'active', NULL, NULL),
(39, 'LAVERN CASTAÑEDA', 'A01046', '$2y$10$S3PTih6uQbccq0RAYCfuDOn/0FRQS4Z0BwXIW9XRkyddqBa/E1AuO', 'user', 'active', NULL, NULL),
(40, 'RICO ROBERT GO', 'A01047', '$2y$10$1aPTPnqgHX0.Ctuv2m2Vce0uHjF56k2ojFUTho0KuMDg5g.baeWPa', 'user', 'active', NULL, NULL),
(41, 'BRYON ANDREW DEL PILAR', 'A01048', '$2y$10$1uErSAa4zhKeqhFkAW5UcO/.eGSO.wNci0auYfHhiNmaZy1UweCgC', 'user', 'active', NULL, NULL),
(42, 'GERALDINE MESA', 'A01068', '$2y$10$KNoueRfHrdrBjWQq0x95V.xltvPPu93vNWSZ8ETr7yfE9bGOiAA4e', 'user', 'active', NULL, NULL),
(43, 'ROBERT DEL ROSARIO', 'A01077', '$2y$10$U13gsiGmFfV6.PTkmBxr.ugO61tkSCwKB0nYpBcjNYoEebMhGjIbC', 'user', 'active', NULL, NULL),
(44, 'MARLON FIRMALO', 'A01090', '$2y$10$0n0epQkAwX.oM8msEXy8TOvAywHaUsOxW0jC6ctzCOdaaZXNZoBka', 'user', 'active', NULL, NULL),
(45, 'JIM JOSHUA SANTOS', 'A01115', '$2y$10$vA6sNhArl2YUOS0TtE9RL.K4/T7jiRDBrhnn.y9oCjoMEZVFYYmMO', 'user', 'active', NULL, NULL),
(46, 'MICHAEL ANGELO LASAP', 'A01290', '$2y$10$XgBJb6EvPKSw5nUAYxHtAesP5vM7B2vTI.4gNb5tgp1NArkdkeGHO', 'user', 'active', NULL, NULL),
(47, 'JEIRMLY DULOS', 'A01422', '$2y$10$hwpzks7Jvy8EfJksU8oY3uu3YVSDVA6oJUYRCYCe9b3qTabXXrQBC', 'user', 'active', NULL, NULL),
(48, 'JETRO GADIANE', 'A01423', '$2y$10$peewDjhkBJygOpgFYkZPoO76NeaJ1q5.ko/cYncJ6A.K22zjmPzdO', 'user', 'active', NULL, NULL),
(49, 'JOHN DALE NAPIZA', 'A01593', '$2y$10$uRq/cfZCR6rIEaWv/DbGceTr3qBfPSc0sRUUZd0I9ynqzZeCyE6o2', 'user', 'active', NULL, NULL),
(50, 'ARREN JAY VISPO', 'A01596', '$2y$10$Ynat13M0JAJWX9cVoEIjx.7TC6qux36Nw6C1I.MmM.KC6cMHgNrDC', 'user', 'active', NULL, NULL),
(51, 'TRISHA DELA TORRE', 'A01597', '$2y$10$iH1RT6Y2BqUNePfBIiF99uI2wRCUJyECmpYNJPmyZaEiUIL9l3YyS', 'user', 'active', NULL, NULL),
(52, 'DANICA SARUCAM', 'A01600', '$2y$10$IXhNcAlAyu7v78d81wKpz.O3CoV2frD3KOFVFrp.xI/DZLGdlIMUa', 'user', 'active', NULL, NULL),
(53, 'JOSHUA EDUARD SORIANO', 'A01618', '$2y$10$4ZrakSP0ddUFRrG.5aXNp.SuaT1CgzFp12nf9JnmoZH7CKhvBK2Aa', 'user', 'active', NULL, NULL),
(54, 'MARC JASON PASCUAL', 'A01639', '$2y$10$I07HLnymKzBNnjDwOVTU4OtlwnZI3DgL79WjgrOmbClHFoXU/9Vfy', 'user', 'active', NULL, NULL),
(55, 'RAQUEL VISMONTE', 'A01648', '$2y$10$hDcqbshfaxukGYs/NAy9RubruwiC3ru3UOp39.Rgbhkecfdnua4uC', 'user', 'active', NULL, NULL),
(56, 'ROCHELLE ANN DINO', 'A01813', '$2y$10$NhmAz6cCqpGXN8Fao8cTnOak7kPyTHfk2XJfST9gSyBLTEpSJYQMW', 'user', 'active', NULL, NULL),
(57, 'NICAELA SHEIN ESTRELLA', 'A01819', '$2y$10$wckLQdPQKp0x8W1D4jgaNOzos.wuSHPZjdX31qxbEBR15IHE3Uj3K', 'user', 'active', NULL, NULL),
(58, 'SARAH JANE MENDOZA', 'A01842', '$2y$10$sFWxVaKdqlUDXpVdz0y37.Q0PEFkZhuFxfPGhsHX/EFrKKxedo4s.', 'user', 'active', NULL, NULL),
(59, 'Edcel Ann Alos Bañadera', 'A01438', '$2y$10$odA1VxxY3hZlGd2G8gJfu.8VWmwvcMO.mzpDxVm5pBOU00yN5oe7y', 'user', 'active', NULL, NULL),
(60, 'Charles Edward Rivera Aguinaldo', 'A01445', '$2y$10$QxrJmu.ZG9h1XxqD/5DDreBnh7VfMMG8diR.GPubBlRiOP9kCPUnm', 'user', 'active', NULL, NULL),
(61, 'Roselle Del Rosario España', 'A01524', '$2y$10$I8JDKPsKk3maYtFhz9qIl.c01uGxSQE.0fgIeswKzm.3NDwQUr5wy', 'user', 'active', NULL, NULL),
(62, 'Christian Jordan Evangelista Camilo', 'A01525', '$2y$10$5T.C4FhE56Ql5TDORe2uNuWyQViEusa53mT82k5g5tV/6DhMwLzLa', 'user', 'active', NULL, NULL),
(63, 'Carmelyn Calma Samontina', 'A01522', '$2y$10$gkZfNuxHVZIDFFKCmJ7Mte/lhBsWLl8qrbo0pRRrwq8j6/lioP/U.', 'user', 'active', NULL, NULL),
(64, 'Eunice Myer Lucero Lumba', 'A01535', '$2y$10$lSdKFvrjY5DM8wZ3Q73Td.AX15AY/V2cyNgX6AjnBw.7fNpr0E9By', 'user', 'active', NULL, NULL),
(65, 'Eduardo, Jr. Cayampat Maninang', 'A01549', '$2y$10$zeXpIPtTWj6i0WraCIdz7uzDZsEVcDUxk.NcluePv4435ghXkmy5K', 'user', 'active', NULL, NULL),
(66, 'Carl Bryan Tanlogon Francisco', 'A01574', '$2y$10$YgzlkUoCizMIpebdhSduVegG5jRVZPMB9Cq01FMkDNK9OOaPeArSi', 'user', 'active', NULL, NULL),
(67, 'Lara Beatriz Valenzuela Rialp', 'A01575', '$2y$10$qeCX2lMgp5tpJKekT06wGOa5aDXIVdC3eWBBEWbpMYwK5QEqkPwF.', 'user', 'active', NULL, NULL),
(68, 'Cholin Lorenzo Saria', 'A01562', '$2y$10$4yzLP9Y0z0lJgj8uWJJBv.zyjsNvQzi4E3D/hPTogGIU2NSkdhfFS', 'user', 'active', NULL, NULL),
(69, 'John Dale Tobias Napiza', 'A01593', '$2y$10$sJ9feNR3bKavxS4sjDg11e8sxoCR1m0xvkjqr4wCEvrZDJ4AS.tUS', 'user', 'active', NULL, NULL),
(70, 'Joyby Padua Delgado', 'A01599', '$2y$10$jXXp/yT.j7PnUs9yq34AkOxUAUYWJ7FnquT/w40iCwBbz/0Hg.vHq', 'user', 'active', NULL, NULL),
(71, 'JHON ALVIN CASTRO', 'A02072', '$2y$10$T1j7CWJD5.zdoR3mHSFGhuO7IzOpSlXO2j4c3bFctyeBBk1cxdEm.', 'user', 'active', NULL, NULL),
(72, 'ALDRIN ALEMANIA', 'A02101', '$2y$10$r1/QwMbYix.OcyNwsB4aPOVhPfcku/roUsPsYkr0v5UPhUt3BJgS6', 'user', 'active', NULL, NULL),
(73, 'ROENNE NICOLE COLORINA', 'A02187', '$2y$10$0NBHhyMpdZFfFlbWwy5ffOB5qPjLL8lzMZ5KCU/Ikw7bkrjNHRcF6', 'user', 'active', NULL, NULL),
(74, 'Mark Edwin Elbambo Ysao', 'A01613', '$2y$10$wPj1nJ9NOEMiYuSZLqBZr.SEzIEmHcw19e/DwKr8ibGFYBG7QPjKe', 'user', 'active', NULL, NULL),
(75, 'KIMBERLY NOLASCO', 'A02447', '$2y$10$S8rFXU3pQR4NofYL.jG/auUU7Os6tWHsSznnpUB5Uy8IPUoyNLOki', 'user', 'active', NULL, NULL),
(76, 'Elice Jean Puno Santos', 'A01610', '$2y$10$sgo7Bxu3U4LOGyerVnxFzugHME2lyoR3XJT.7I5xZDBUcN1EKXXhu', 'user', 'active', NULL, NULL),
(77, 'Saldy Miranda Zantua', 'A01612', '$2y$10$lcNo2FeQLO1Pb4absKt3neF2Svaau7Yg9qXoA1wgKEn1Ahf0v//FW', 'user', 'active', NULL, NULL),
(78, 'Monica Reyes Gonzales', 'A01623', '$2y$10$b5WHM6imnCgL0I6tPfLsm.6DIsxi2MX7rjk1H8B8KehoSJijl1yOS', 'user', 'active', NULL, NULL),
(79, 'Christine Joy Sulinap Corpuz', 'A01625', '$2y$10$oPyo.1/njPZ2GJC4fbRpQuBAw7BKAeV03diFN23RcEaEN8RVE90cS', 'user', 'active', NULL, NULL),
(80, 'Jalal Pacatan Kasan', 'A01626', '$2y$10$vzxS2HbBEJIklIar8UbqxOpb9u/4zBaOpoFZljsMAFfGKFoOEeiKq', 'user', 'active', NULL, NULL),
(81, 'Claire Ojeda Roman', 'A01628', '$2y$10$Qqq1B1I3nadBU.9LJ7.ymOxJOlsiwN7nhsbYchSDBYiotSQ31/6fm', 'user', 'active', NULL, NULL),
(82, 'LEXUS UYQUIENGCO', 'A02456', '$2y$10$U3KGj7QossXNh.xOHvrKMu45r3QbTqNQo6p92.p4.nQBdO3Vb/cz2', 'user', 'active', NULL, NULL),
(83, 'Kim Baniola Diaz', 'A01651', '$2y$10$W01.8pQIVFklfFtov5vOaOMl5HtnpxZVg0IzjNXm3qUC5HLN7rvhC', 'user', 'active', NULL, NULL),
(84, 'NARENCE JOY CATAQUIZ', 'A02493', '$2y$10$6eSvaE1fvrKcCG0m.DyFSe3/kwsMIBpsb..0ZdbOhOSe/o7Y9Rj9W', 'user', 'active', NULL, NULL),
(85, 'Alexis Bautista Almasol', 'A01653', '$2y$10$Mr5B6xkncviF.I3f9JdfyeUfhvkYEviXKU.EahKOMPE9v.PixDca2', 'user', 'active', NULL, NULL),
(86, 'Enrico, Jr. Ilag Gonzales', 'A01663', '$2y$10$wVFQfvdK1z652e9em8diZ.CM4JgfFIUWLJ4855jYgQO24ul5cAqum', 'user', 'active', NULL, NULL),
(87, 'Angela Tabadero Borlongan', 'A01670', '$2y$10$O7/cDrgKzy389j3p5ag5Z.fJUB/DVo0muoV9HgRaDesAUL8u3lWrO', 'user', 'active', NULL, NULL),
(88, 'Dorjie Ann Maranan Castro', 'A01709', '$2y$10$2/xaHB3dK4drDthmF6FQu.OfUQfd.ewQKEa7VT9D5byJDSV299Neq', 'user', 'active', NULL, NULL),
(89, 'Raphael Alfonso Balitaan Tan', 'A01713', '$2y$10$dk36fe5QNhFI/27z7vttj.9mHicO/jsv0DdP0c6Lf41.07WrfPbP.', 'user', 'active', NULL, NULL),
(90, 'Samantha Louise Sanchez Magalong', 'A01714', '$2y$10$ddFwuBaJmzxa15IVidrT0eYYdHCOkklEgmsW0aMcaMerevGohPBNS', 'user', 'active', NULL, NULL),
(91, 'Janine Sayo Valerio', 'A01710', '$2y$10$EBut.22R5YOaTQxB6QIcwOTqvxGy0wM/ybZoXH7gV1CK1fxVe6BBO', 'user', 'active', NULL, NULL),
(92, 'Mark Joseph Sahagon Aurin', 'A01738', '$2y$10$z5QGpYFjMK/AXWuR7y3DNuFe8wCms9/J3g2YJUl2jX8Hn9gYY8L0W', 'user', 'active', NULL, NULL),
(93, 'Jeralyn Demano Estrella', 'A01731', '$2y$10$7P53PrPQJLse4zhLNdNHyuwoDeKiMetSMealxG2TdUhA/QYHHuWDG', 'user', 'active', NULL, NULL),
(94, 'Eunice Genevieve De Leon Aduca', 'A01759', '$2y$10$L7QNm5.1djvz5T1KshWXMublc1mrntp.ttmRDBE6gkCppK5JfHCUq', 'user', 'active', NULL, NULL),
(95, 'Nerlyn Tejada Viginia', 'A01769', '$2y$10$FfGhrGRDW3W2JJkmkzRJkubr14QqcFDmSakaQK2bQx8cqXxCYGAnW', 'user', 'active', NULL, NULL),
(96, 'Almin John Manangan Lopez', 'A01775', '$2y$10$wylKA7NBzc46WT9ErX7XXuwtTS6pkLeMNIywfmtdP1/S98egPZqQe', 'user', 'active', NULL, NULL),
(97, 'Venz Kenneth Galolo Dumo', 'A01771', '$2y$10$7FJvsIcqflY8i/S6ourmEuvkjoby8NupDWPZ9OlV5VcwyQcHocAyW', 'user', 'active', NULL, NULL),
(98, 'Orland James Nmn Palac', 'A01800', '$2y$10$JGmuNQU0OjUxJ8KAF6iqBubrMpRMhrJJ1vVG7TIFOMCChhnrY1PWa', 'user', 'active', NULL, NULL),
(99, 'Gilda Montemayor Soriano', 'A01803', '$2y$10$tfkd1VHbTQweyrSICXkyy.PgYQepzCeww9ofD1DoiKoMDyUxPQOF.', 'user', 'active', NULL, NULL),
(100, 'Raphael Caasi Dimdam', 'A01804', '$2y$10$ho8sZIry4bzxHYfTzMKpHe9bCj226LUf9M25d9IeZRrXc8G2QBrYG', 'user', 'active', NULL, NULL),
(101, 'John Joseph Taeza Musngi', 'A01812', '$2y$10$LOQr43CTNGUOBMH33QdFn.VJgrfyJIHMDxcQUTE3Z9H8BFNfOIf3a', 'user', 'active', NULL, NULL),
(102, 'Chantal Tan Diverson', 'A01820', '$2y$10$/BkyLOUlc7awbUMjhSVov.0k/yfNKjCVelPhWBW9OJYxQu9/pt5re', 'user', 'active', NULL, NULL),
(103, 'KIMBERLY BUENASEDA', 'A02566', '$2y$10$QK/Glp9h44FSI/A79APp2e4FX1IX0IgHJYQPfX4ZEnygxsLfwrOMS', 'user', 'active', NULL, NULL),
(104, 'CARL JEROME HUSENA', 'A02570', '$2y$10$G7347UEabgMZ2HKdWN9HCuoJhSktDpPx6L0dITg.gwbcikmOYF.wy', 'user', 'active', NULL, NULL),
(105, 'Rod Eliziah Bonifacio Molina', 'A01944', '$2y$10$E0aFib9v/KwT.KdyaKD8w.E0GjMw9n1vM8LPuDRiIvMBsvk2T2YB2', 'user', 'active', NULL, NULL),
(106, 'Cristhian Alcaparas Lasmarias', 'A02016', '$2y$10$roCU3/2Pl3pkZSGMF3wUXeGiqQnQeDdJNtnunWILKUEHLevyMbkOG', 'user', 'active', NULL, NULL),
(107, 'Bryon Gil Peña Cajayon', 'A02067', '$2y$10$H4c1u6XntpZYE5EBqbsFQ.U8xTIBbzhrU4td4Snxv.4Vods/Ho/y2', 'user', 'active', NULL, NULL),
(108, 'Rholand Cielo Talavera', 'A02068', '$2y$10$14t8gt2wEFUYigOfJ0V.WOhzd.4VYm0A/C.smQW6HLmxTBnoeZgY.', 'user', 'active', NULL, NULL),
(109, 'Jane March Alvasan Reyes', 'A02069', '$2y$10$AujjUCd8iYZDO8H9wORANeZAsZwx42LAds5dDczNJnlmxlToDzxRi', 'user', 'active', NULL, NULL),
(110, 'Jim Harley Torzar Alabado', 'A02087', '$2y$10$4WOLHehapxJUWS9BCqFx2.3/aOgk93tm4ulTuAfJN/yY0N.G2kvnO', 'user', 'active', NULL, NULL),
(111, 'Jhon Alvin Patalin Castro', 'A02072', '$2y$10$1Cv0J6Q04uUjMF3sPBv3iO/dlUvDpq7XtcKp.3vcbJk3KKNmBuVwa', 'user', 'active', NULL, NULL),
(112, 'Bernadette Shane Emnace Villaflor', 'A02074', '$2y$10$c.vO.xAZIEoPGfP9ihr6a.KrGy4GmhSZL3zG94y7.oDjhm7lyzVxy', 'user', 'active', NULL, NULL),
(113, 'RONEL LORICO', 'A02580', '$2y$10$og43ROiZdFeGyElP10iti.sIXfwdUEnmBvaiOQI/KP4GpmGrRE5gS', 'user', 'active', NULL, NULL),
(114, 'John Lorenz Valles Pe', 'A02102', '$2y$10$pRkTEvGyN4DsMOe98u5G8uHlD4MtMnNBAwl.gyHGUmE.lv6FNLRUS', 'user', 'active', NULL, NULL),
(115, 'Jean Claudette Oliveros Remolona', 'A02127', '$2y$10$1VbQyNou1RsD77uydorcy.wW0sdnm868A1L08iH9n4JbL0spVy6cS', 'user', 'active', NULL, NULL),
(116, 'Alessandra Dominique Pamulo Dizon', 'A02173', '$2y$10$zqZHnTa0xmNGzlbxixdU0uwLbUof/2nnzW7ykySllSGPG2h4bkNOG', 'user', 'active', NULL, NULL),
(117, 'RAMIL CHRISTIAN HIPOLITO', 'A02617', '$2y$10$yjhJKBEdzW40Eiarrcue5.mvkV3qt3gobpMX1QS2g8Khncg7aaGg2', 'user', 'active', NULL, NULL),
(118, 'John Mark Dela Torre Villasenor', 'A02195', '$2y$10$Xl8u7pSBaNVfYr3O.g.u8uJiPoPMcZ5Fm6L7O6EB3.isDeynxBXca', 'user', 'active', NULL, NULL),
(119, 'Jhon Edward Jimenez Quijano', 'A02202', '$2y$10$BKfGmT/x7x8EKDocpj38Wu1WNkvTG89hdd8l2f5WBHXgjUCSSuvfy', 'user', 'active', NULL, NULL),
(120, 'Gerald Juliado Ricardos', 'A02205', '$2y$10$szMcQCEqjqM3bCcqlL5JEuwXesIY0RNjTVSwLvPUp5qrxIaiSkffm', 'user', 'active', NULL, NULL),
(121, 'ABBYGAIL RHENEE LORETO', 'A02739', '$2y$10$uwwV7wf2KDh6Eg4sXDdlwef73wetA0sZvdV9ffMDyMyR0ks7xqPCu', 'user', 'active', NULL, NULL),
(122, 'Rovi Ann Declaro Babilonia', 'A02417', '$2y$10$X03ZugzqhmPaJlrqshS2/eNL73/b81c1Da75VucpA2AJQN4qzPRhi', 'user', 'active', NULL, NULL),
(123, 'BRIGHTELYN JOY IBAÑEZ', 'A02860', '$2y$10$WHYtKE3OFmlxov5d7un0H.FIP9W3LSX17Gf.BZqrfF/FgKxAdI6ii', 'user', 'active', NULL, NULL),
(124, 'RENZ CHARLES FIEDACAN', 'A02777', '$2y$10$nefffOzUymGAGeNg5Rl0COau7KmOHRnCl4P0AfWQv9gZyuWg387lC', 'user', 'active', NULL, NULL),
(125, 'Jaiselle John Cuyos Rogales', 'A02499', '$2y$10$oVUCseR1xAi04l0QMOpICu0.dOjcidfhnAedTJ7fes8j2Da9qqaHq', 'user', 'active', NULL, NULL),
(126, 'Asuncion Ejae Omaña', 'A02525', '$2y$10$0z073j0Tvd8I3EwyyiWCke9kxjlsjYytCUCnHGy.6/9SesjQ.EmAa', 'user', 'active', NULL, NULL),
(127, 'Resonable Jeg Soliven', 'A02526', '$2y$10$QZs094fW4uFq7I6NBLpXHOXjvnNQAMfq5jtmlU/FeDOx5d6cygdFa', 'user', 'active', NULL, NULL),
(128, 'ROVI ANN DECLARO, BABILONIA', 'A02417', '$2y$10$TY/cgAEvtDSmDyEqEn9VhOHbJQA6KpV2HFFPtX7iV3jy47ocP2hfK', 'user', 'active', NULL, NULL),
(129, 'JAISELLE JOHN CUYOS, ROGALES', 'A02499', '$2y$10$9h33R3LlqgH2unQj0PwKKeUoCyzGdtsIKCD4Vv2TR5nvenMyoIVwy', 'user', 'active', NULL, NULL),
(130, 'CHRISTIAN JOSEPH TAGLE, DELGADO', 'A02793', '$2y$10$wkG7EyWwsI5U.SL4EnI2sOiMs./Qe7iyY8w/G8IZ4v.mqUnEM9Xii', 'user', 'active', NULL, NULL),
(131, 'JOHN PATRICK ESPIRITU, CONTRERAS', 'A02874', '$2y$10$BXtBZkjOARP7jBl80AyOwusR89vjdBe/NIW/aIejSLf.AX92xKSMG', 'user', 'active', NULL, NULL),
(132, 'KALVIN DANIELLE MUSTERA, ANGELES', 'A02807', '$2y$10$L3RYAhH/MIhI.mFWtFlIteY26TG4YMVS/1ATKvj0M13IRzXdtWgwO', 'user', 'active', NULL, NULL),
(133, 'IVAN DALE DAVID, BADBADEN', 'A02825', '$2y$10$K/PTJQvWQXqQUIm62usfdurdegkyMQ4tUSPQekWanzKCovDjwf0ri', 'user', 'active', NULL, NULL),
(134, 'RODNEY HONRADE, SISTOSO', 'A02820', '$2y$10$Kk.M9GVaUK6ATeSVqM4A5.gel6540MofSYjN7OmMuiQRQ7GDWS23e', 'user', 'active', NULL, NULL),
(135, 'ROLAND CALDEO, ABAYA', 'A02834', '$2y$10$ftGex3R4DNEI3tRZ3/ba/e16IPPvAM7heTVhXGSU.GlagH3ixv2p6', 'user', 'active', NULL, NULL),
(136, 'BRYAN VILAN, ATIENZA', 'A02826', '$2y$10$wPZssJHEfmsTz4Es9x3T0uCYCy0QhJChYKDWCMog0izqMAkM.eM0y', 'user', 'active', NULL, NULL),
(137, 'JUSTINE BELINO, ABARO', 'A02885', '$2y$10$N6Vk8PFG3BtPv/KEzW.Ml.jfztTio1yB7voaRELy43ux3PjBmjEdK', 'user', 'active', NULL, NULL),
(138, 'Marvin Ken Sandoval Aguilar', 'A01521', '$2y$10$iotjdDRkFfEJy9p8cmaGde.2NnRTtRMWYNwEnd7UVrtby8VLXCpja', 'user', 'active', NULL, NULL),
(139, 'Denzel Reeve Monterola Salazar', 'A02094', '$2y$10$ampnJyt9i4YqKEtM2Wi8tO43aBUBT9tHYUqWMFAlBci457PCjcY/G', 'user', 'active', NULL, NULL),
(140, 'Blixxe Kyle Lucena Aggabao', 'A02372', '$2y$10$HpNxvFdJ3g.sYEGIhkyj7uHFmzu1jaIeCqmH7lGzxk747JnouMx6q', 'user', 'active', NULL, NULL),
(141, 'Marcos Gabriel Barruga Jr.', 'A00287', '$2y$10$eS2z./Mh/B1RIaxFDm5fy.n88ShK4iNN.ABYXB9.DnA4LbQT.pdrK', 'user', 'active', NULL, NULL),
(142, 'Aaron Josh Obaob Astilla', 'A01069', '$2y$10$3kB4nDMjl9YIHwhdCjSo4uPq1Z1.j99nssG.tcv6VgkvXp8KRt7x6', 'user', 'active', NULL, NULL),
(143, 'Harmon Jerome Lagman Domeyeg', 'A00118', '$2y$10$jfrule0Ct3QtJT0P19CHIe/6sVjSVNpI.5gTMAlVbda3qc8KWgRfC', 'user', 'active', NULL, NULL),
(144, 'Glen Mark Mondoy Bayubay', 'A00126', '$2y$10$d/cxZhGBUlKzN37VDJ0y6OgsgWb84X7ZKH3T7UJjbD4zW1LaTN3Ai', 'user', 'active', NULL, NULL),
(145, 'Erika Mae Botin', 'A02658', '$2y$10$aH8Ulf2cyxHvvoH5RMLz4uHAVbMfXn8KN68sDk1lS5evDmdXiEtq2', 'user', 'active', NULL, NULL),
(146, 'Nixon Pardito Macabuhay', 'A00119', '$2y$10$ca7Klo0uKq3o.6jUhNLSZOe1m/fvsP.HN8AKlwXtzPyPpdVyP/4Yy', 'user', 'active', NULL, NULL),
(147, 'Angelyza Antonio', 'A01367', '$2y$10$yPJykVzY8VyFhEaBJdhca.XhPMReALek3ANgyZffp5cgr4qki4Gpy', 'user', 'active', NULL, NULL),
(148, 'Jhulie Ann Castillo', 'A01496', '$2y$10$T6Qeg/jwsJICX3kRKgocUex/041BsGSamyCzQIi8nrGi387dNfW8K', 'user', 'active', NULL, NULL),
(149, 'Ian Hope Calipusan', 'A01444', '$2y$10$mApfGXyE7QrkSRmaizo4ZuqI7y5te0G/2NApS..V5F1e43Mfm.CRW', 'user', 'active', NULL, NULL),
(150, 'Harold Castillo', 'A01437', '$2y$10$U36KEO/0xKCs1nhMuAfNXeQfUjlk6C.acQp9g3k8GJIvHoChn5nj2', 'user', 'active', NULL, NULL),
(151, 'Rostum Oliveros', 'A01810', '$2y$10$2iA5/Qp4pLyy4Cn2Z.A4quus.Z9X3t2MovrFJU3YJXUiNrpi35NRa', 'user', 'active', NULL, NULL),
(152, 'Juherm Venus', 'A02369', '$2y$10$kz/TyZKQS3JQDZk7DCt6cuTqZG64uo1mXHzx0CkaeQoY3sxLbNyXG', 'user', 'active', NULL, NULL),
(153, 'Kenneth John Beler', 'A01348', '$2y$10$joNjrG5ESz0zJ9vUYUeBg.DJC3sLZEbrl1wL1JXYuO9drLFDN5tf6', 'user', 'active', NULL, NULL),
(154, 'Marcky Dela Cruz', 'A01303', '$2y$10$XcbOGYqYZlsmxK.8pcWnr.1lH/n4.jx/2KbOUmkqfWIotMwkgrfqG', 'user', 'active', NULL, NULL),
(155, 'Verly Ann Hofilena', 'A01347', '$2y$10$fl2jymWzDiqMKD1Guh1OwuT659Qy7aT7Pk.SpUSF/03YuMobtJZCK', 'user', 'active', NULL, NULL),
(156, 'Jea Allyson Sejas', 'A01346', '$2y$10$AOtHuX49tZbdIFAKygMbFewnWYXMxvHVNziHu7Y7/mI8K2NqSxAA6', 'leader', 'active', NULL, NULL),
(157, 'Rose Katherine Tapang', 'A01556', '$2y$10$wLMcZWC6Y4FO9cksvkt1p.FPXeZHVSq98ApuaYUUKMY2KMNE/6ZNq', 'user', 'active', NULL, NULL),
(158, 'Jeffrey Agdales Del Rosario', 'A01565', '$2y$10$u7zgg08hlZRHbAH689maburDpv0tWHVRrFGuFpVOB0bl/X7VziXCy', 'user', 'active', NULL, NULL),
(159, 'Daryl Sanders Lim Acebuche', 'A01632', '$2y$10$Xg12j7RJ5dHHoJm5xddx2u9QJfT18AlKRltpNhY.jIf9YkhxbFfMe', 'user', 'active', NULL, NULL),
(160, 'Jetrho Marquez Gamil', 'A01009', '$2y$10$Q9AjZLMx.NiZGqfT3GataOP7NCE/9sKjWqwFmcaiU02g7eJtcYnuK', 'user', 'active', NULL, NULL),
(161, 'Niño Angelo Mendoza Ramos', 'A00288', '$2y$10$MX5UDc5Q6DVnJSJqTJgBI.PmmWjkTaUmkTpTHM3/NLJhcHxm9bmee', 'user', 'active', NULL, NULL),
(162, 'Jeffrey Masangkay Cosico', 'A00282', '$2y$10$yLBxUr5vngjIwzPJFU2ByOxTyXK2ipTAbntbcLpQH5SgHs3UfCz8q', 'user', 'active', NULL, NULL),
(163, 'Ronald Buctot Gallamaso', 'A00296', '$2y$10$EVQTEEAHcBZJ.kr1a3YIqeGxrlNTC4A/VV.a/FTOSI3JzDA4fUZji', 'user', 'active', NULL, NULL),
(164, 'Bryan Paul Macadamia Tempra', 'A01039', '$2y$10$wwFsZNn9XcLgM06vpTkdHOWSDj2j0.Tu043brRigOvoGblCu0UYtC', 'user', 'active', NULL, NULL),
(165, 'Charemagne Angeles', '', '$2y$10$0NV6OW2y/HPVtmg/TuY5Uucw9chWfCDP.iX6rTyz43fzwkuPsUlIa', 'user', 'active', NULL, NULL),
(166, 'Roda Jane Camacho', 'A02498', '$2y$10$V.rZu9q4WZHgS1jkVHGWFODqW.6nH65QuJcTsCnZdJDQHIFI6C/Za', 'user', 'active', NULL, NULL),
(167, 'Dan Marc Quiton Llanes', 'A02656', '$2y$10$B9gnrrKGrg.B47s/ixflK..hdYlm/eqsRAtvU2diTdnQLlI/rnPTa', 'user', 'active', NULL, NULL),
(168, 'Chrevic Josef Pelias Dangan', 'A02056', '$2y$10$J/Fpeig9.tc1GMsQNQxAXukLwz0s.589I5kz9jmVRSD/Fc97pviKy', 'user', 'active', NULL, NULL),
(169, 'Glaiza Tan Chin Guison', 'A00301', '$2y$10$HqqLUiuqRK7tn7NvITr3Qekf5xpHKBs6exkO/6OJ2/fgysEGxbSNS', 'user', 'active', NULL, NULL),
(170, 'Jan Ruel Codes Repalda', 'A01591', '$2y$10$dRnyscoiKKbtylgoa/kRJ.9bXjmnZTyJoOMHDVSH.YH/8YJHexezS', 'user', 'active', NULL, NULL),
(171, 'Julius Francia Portentado', 'A00302', '$2y$10$okqwWrekuE.uuY/e5rxn5.mbhvy46XA6B3T3p4IIiMQ1diXoeoq2i', 'user', 'active', NULL, NULL),
(172, 'Michael Nepomuceno Rombaon', 'A01843', '$2y$10$Bbv0fQ9S6XfQs42zMiNEh.SOlQJcTxqu6tEYqdTJfzufrPKUR2UbK', 'user', 'active', NULL, NULL),
(173, 'Mikhail Ramos Demetrio', 'A00305', '$2y$10$xsFgs0CR1c3102CL7bZ0/OrMWzKxhjcfPKO9O4xY3/h/Vqq5xa3G2', 'user', 'active', NULL, NULL),
(174, 'Aileen Tolentino Catindig', 'A00299', '$2y$10$/TAp7Bx9dIKbSpp7zI6bh.Jay87B6upvusrjlfRMsHMvTCMNw49LW', 'user', 'active', NULL, NULL),
(175, 'Kyle Ruel Rojas Baculanta', 'A02380', '$2y$10$X5O3qyC9e135CuasHPcVA./1OH6TjX4ZifJpAN1gnE8YhBBjK0mpm', 'user', 'active', NULL, NULL),
(176, 'Gabriel Martin Cortez Cervantes', 'A01656', '$2y$10$37ZEL8jXNWl4t3pKOxpLcuXa9/AbGYqyrYEZdFQHXMs39voEA1ldO', 'user', 'active', NULL, NULL),
(177, 'Jeremias Enriquez Caro', 'A02020', '$2y$10$sXALH7Wcdp6grodiihtv/OwmK9ek5RQoxZvrlG/mHv97aGVhBRVFS', 'user', 'active', NULL, NULL),
(178, 'Jia Anne Carmela Pablo Filoteo', 'A01654', '$2y$10$1ZS246LFCcEvrqMydW9KYO0BqT56rNlUrUqnUHihNfW8bEQT8Q0.2', 'user', 'active', NULL, NULL),
(179, 'Julie Ann Diaz Kempis', 'A02105', '$2y$10$8nyoyss2gxu61LAavNLjVeUHdLF3/AxECNA49JCjELDXQPTdVxDvq', 'user', 'active', NULL, NULL),
(180, 'Marie Janiola Cuaresma', 'A01664', '$2y$10$CdThiBOmrv.Aqz.zjgHdZuw/nmDh32N5cWL09qllyf0ceU2IzIkOq', 'user', 'active', NULL, NULL),
(181, 'Shanneen Canacan Macarimbang', 'A02451', '$2y$10$/ggXonM7unCP3Ann3PQPQOsBLHGFNitWkYwImjSGktFgR1AzTVFSm', 'user', 'active', NULL, NULL),
(182, 'Dianne Tan Geronimo', 'A00902', '$2y$10$7i3KPVu4y4tYCKdRvBSHN.7JUAImNlBm1n/6M0CftrEUT0rOAqUby', 'user', 'active', NULL, NULL),
(183, 'Roque, Jr. Tribiana Teves', 'A00286', '$2y$10$IlQVaAcAs3oe724FLx97Yu8Xa7LD3oVm1punNfi/FiUC20zYSkEQK', 'leader', 'active', NULL, NULL),
(184, 'Andrew Calaunan Camacho', 'A00298', '$2y$10$WceJXgoM89tsqHitoinVxe5xOaneHW1fS3gt2AU1ZOcEAeI2jWeCC', 'user', 'active', NULL, NULL),
(185, 'Mark Anthony Sulit Hernandez', 'A00304', '$2y$10$WclTawLgbKOAkvSF2wus6.5e4OTQ3zvXSngYwIrsGPxNNQk/SoM6m', 'user', 'active', NULL, NULL),
(186, 'John Romeo Capila De Luna', 'A01066', '$2y$10$7kHzqxEXTrckMlUesteupungS7AkrnyuufT8DjRwbw0hmGtnNhcCy', 'user', 'active', NULL, NULL),
(187, 'Noel Leonardo Nicolas', 'A00303', '$2y$10$4A0GHMEXV3LCAu7RQpXCKOtKJ5zFV/RIPIMp34BaqS9o9CT87S.n2', 'user', 'active', NULL, NULL),
(188, 'Joenel Jacaba', 'A02694', '$2y$10$yD5A8wqqQ1qstzB6aSHIauUFKb/MqCnYVABms1KnIw5jHLvyFlhTG', 'user', 'active', NULL, NULL),
(189, 'Romark Rojo Limtingco', 'A01084', '$2y$10$0vFoUZdxYH7Q30I20vwOn.rJbQoJmXidHJRzM9nPJPpnBT0Z2pdRq', 'user', 'active', NULL, NULL),
(190, 'Marvin Andaya Esternon', 'A01254', '$2y$10$rVR4tcMfesDsNDplDdzYouKSSG.TYf9tYosuLOVpkzROmkrajOLEC', 'user', 'active', NULL, NULL),
(191, 'Fernando, Jr. Daing Salvador', 'A01329', '$2y$10$CMife5iIrZGY4QPXSY6Ef.iypZ8ps4rrYd8blILgn0mVe2YxJRMum', 'leader', 'active', NULL, NULL),
(192, 'Francis Dulay', '', '$2y$10$zB9WApNn7bbiib4eebn7/OeNTyOB8TaQx/.sR75ZCMSzDHlSVmPPi', 'user', 'active', NULL, NULL),
(193, 'Aldwin Pabualan', 'A02749', '$2y$10$MubhFXggVEap9ptZFTQHZ.QpsJYHKHWP.PxkbnJwuZB4CGdae/yo.', 'user', 'active', NULL, NULL),
(194, 'Jhon Edward Jimenez Quijano', 'A02202', '$2y$10$Odg7Yq5HGQojAeaXKazHq.5LDiFxFfD44kK0cfMPYlQAho4LdgMbG', 'user', 'active', NULL, NULL),
(195, 'John Mark Dela Torre Villasenor', 'A02195', '$2y$10$i9knAl81SmLiAh.d8syMRu5uxZE98a7GqYCzn9CmtFrZmDiwFHXOu', 'user', 'active', NULL, NULL),
(196, 'Ranil Vincent Co Reyes', 'A02258', '$2y$10$675gAqPR4l8.xledwua5.ODkpHW/TNjnb3.UW3GRLf4mX1tDL3D9a', 'user', 'active', NULL, NULL),
(197, 'Don Don Yanela Cabanela', 'A01807', '$2y$10$BWQTlEfCQP35fY./J/tbVej5sw8bXO4GH7ooaEplDsbuLUnEyLlwy', 'user', 'active', NULL, NULL),
(198, 'Jason Clyde Subade Ploteña', 'A01798', '$2y$10$dLbcbi1aeNpBkguL0sgeOOiu61bu495ihax/I42dZL.oO/Fg4UP1y', 'user', 'active', NULL, NULL),
(199, 'Jovito, Jr. Agustin Malanot', 'A01796', '$2y$10$OeuWP3wcm1pITngblegN3erXu4uwzl2kfR2yiJS3STx3pGulFa.rq', 'user', 'active', NULL, NULL),
(200, 'Leonard Nacion Gonzales', 'A01794', '$2y$10$M7LQV7LYfxqgTiXxNNy0D.ap0uFJOqTxtvYQJv7D9bi4kkTmOC8N2', 'user', 'active', NULL, NULL),
(201, 'Nomar Dela Cruz Ortiz', 'A01793', '$2y$10$L/JBaJXF06xSnaVebTBkLOJl.8hp9At4YDewxPQ7TQlk7m6DejtaO', 'user', 'active', NULL, NULL),
(202, 'Novieñigo Fiel Libres', 'A01795', '$2y$10$FP3seMfGqWfVcLu1xZf7DuWU1Gylku1T6/P14lmSPQRFEkaawSRFm', 'user', 'active', NULL, NULL),
(203, 'Richard Legaspi Oña', 'A01797', '$2y$10$NNa5SON2QkLGnpsIdObyn.E4piPDhlFPUOZPn8oTwIED4zYE1PQke', 'user', 'active', NULL, NULL),
(204, 'Maribeth Ruivivar Maca', 'A02267', '$2y$10$y8c9dEKu43DmpZX5ibHttetQeX52w0feBLsGeYifhfvNcdNTBO/Zi', 'user', 'active', NULL, NULL),
(205, 'Julie-Ann Ador Obligado', 'A01058', '$2y$10$YhL889O5HSg9ljJvM885KeSZlA9KnMQ5bIG09.KJPVpCliFayfPq.', 'user', 'active', NULL, NULL),
(206, 'Nathaniel Aaron Estur Castillo', 'A01059', '$2y$10$shnRsnIZZc2aHyFNjPmzhOW2GBo1bI3KUPDcV4lyHrhO89IIvai3y', 'user', 'active', NULL, NULL),
(207, 'Quennie Lynn Brucales Conde', 'A01060', '$2y$10$swZrs8cjW3rUf.o6ckV/0u./sx.orlf452HT9ewFtk7coeC.yl.0e', 'user', 'active', NULL, NULL),
(208, 'Angelo Jordan Soliven', 'A01716', '$2y$10$IKUi/WQTPdXGRwaFhMmUtOHLkWmDo9/0FmWaQN6DV2W11xViO353y', 'user', 'active', NULL, NULL),
(209, 'Arnel Ejoracadas Virtus', 'A01057', '$2y$10$/R2wt07E3lFrQTVqhBZo/OvuEx/CKmMcbdessGO2IHm6q.ZRFdM9q', 'user', 'active', NULL, NULL),
(210, 'John Anthony Naui', '', '$2y$10$Lnj/txgVd.ub.zeshOIqbuX0sddSwxuGIUoE4PinqyZzfLJvRmgHy', 'user', 'active', NULL, NULL),
(211, 'DARA DARLENE NAVARRO BAUI', '', '$2y$10$DdBUyeM9iN161AP6zZxQIuXD6T4YaLapUTAXaLjJOjSD6PPDIrXN6', 'user', 'active', NULL, NULL),
(212, 'Jerome Magat', 'A02758', '$2y$10$OE1gDjrIXPrUbHMCP8eFUeX.Uv.f40KtMre4TiVcXTO3xMVERMn7e', 'user', 'active', NULL, NULL),
(213, 'Alecs Dubal Asenci', 'A01083', '$2y$10$zUFXFz6KoGlihBf/3zZTKuPF.j.k6C83sChg3ZlG0gFvaiVbK7uuC', 'user', 'active', NULL, NULL),
(214, 'Kevin Sapaden Roberto', 'A00036', '$2y$10$Nj4vKHZLvpYb.R6ggtXYSuC3qcrRWAh2tYJ0MLjO7DhP8H6.QA1LO', 'user', 'active', NULL, NULL),
(215, 'Mark Joshua Go', 'A02794', '$2y$10$178BQpb0887p9z0MWEQtDOkRFcGiXCGsXfiFKD5th9BMU6b.5cAlC', 'user', 'active', NULL, NULL),
(216, 'Nazareth Dogillo Comia', 'A02095', '$2y$10$BYG/ltMt0BFEYFGN5Yu3J.s6WUkrc5WpINc.jYvnd2nTrASbmK3QS', 'user', 'active', NULL, NULL),
(217, 'Pauline Nikole Bautista Manalo', 'A00035', '$2y$10$zgozVc1Iiu5hKKeGjys7/Ozw95C2gtMWXsLTOD/bBzulmv.CJvlIe', 'user', 'active', NULL, NULL),
(218, 'Robert Rae Salgado Bunagan', 'A02211', '$2y$10$8/wl8CQJGq6KvSw3KuoyzulbP1TgKsAu87yqTV6kJnF2Ghcec/8Ce', 'user', 'active', NULL, NULL),
(219, 'Jaime Ferrer', 'A01788', '$2y$10$ZHMfN9L4w0khDZ9qxF8UUuTGD9TycEo.uwFPij4yn5e5krDENPvbG', 'user', 'active', NULL, NULL),
(220, 'Ma. Cathrina Cayanan Yumul', 'A02783', '$2y$10$BOEZS3yYD7aIgUBkT.2ze.RhhN2S4KePzStadf/46PohKlgPJS0DG', 'user', 'active', NULL, NULL),
(221, 'Ron Lorenz Taquiqui Hernandez', 'A02786', '$2y$10$qL4wGbpOHUHKZYytsufo.OvkYUlg7ZXNGKu5p6NGa1vbPB7ayVDBO', 'user', 'active', NULL, NULL),
(222, 'Kenneth Ledeno Pacifico', 'A02784', '$2y$10$huvKJ/MnKSerVkWxgswy5OWCgyISTQEsz6dNPYhR6rZzjbnGMbC3S', 'user', 'active', NULL, NULL),
(223, 'Ronald Figueroa Avila', 'A02779', '$2y$10$Jaf5uQPRegsfFEiMQTMsweVL6GpVQoeVtT0BIq4slRZ8rt.u1FRtG', 'user', 'active', NULL, NULL),
(224, 'Ruselle Ian Joe Bayalan Endaya', 'A02781', '$2y$10$6bofcMulXzNsfLwyaPsO0.QQTd57uXG28Rbl8IGvrTDDsnlrJ9/zq', 'user', 'active', NULL, NULL),
(225, 'Julius Czar Visconde', 'A02787', '$2y$10$b75o49pQ8rn1LstrxmRDJes1NropzzAMoFDSBJplQf12jzFoAintK', 'user', 'active', NULL, NULL),
(226, 'Eugene Vincent Ching Alcid', 'A02768', '$2y$10$ITHi/TFAPiA6RNp.nkgYDuSSI7AGQUmHrM.vhhRVjioCsgcxz3TRO', 'user', 'active', NULL, NULL),
(227, 'Sebastian Santos', 'A02795', '$2y$10$JEh6kLBZCdhHk7M8J.1BWOY4cVeyfs9SOp.apqfuZYrH3UIcX/on.', 'user', 'active', NULL, NULL),
(228, 'Pablo Mandrilla III', 'A02796', '$2y$10$PSG6XQRQLLPCfdWeS30zLu81Y.prFnfYWoETVwdQTuvVZra6a4vau', 'user', 'active', NULL, NULL),
(229, 'Ian Esguerra', 'A02788', '$2y$10$lzyZ5iEE2B59nzjmsU9qnOGQ0g9tMik4Hjah.T491YjhHK.JZ7eH2', 'user', 'active', NULL, NULL),
(230, 'Spencer Castro', 'A02797', '$2y$10$wBrywl/ADxOz1/maAu7qhuPNPR8mSaTBLGqocccYWzK2ldShy/3hi', 'user', 'active', NULL, NULL),
(231, 'Joanne Bonlay', 'A02799', '$2y$10$G3nECa8/cecs8nvQgkDLDO9SRzLnM3fSHZ0oXfe.O0vQbEX4GPRaq', 'user', 'active', NULL, NULL),
(232, 'Cyan Macklein Pereyra', 'A02828', '$2y$10$uI9Y4b7gbKZAcchrYwBqjel6XXbOJqAsKzOdMqhOwUJ7m549/CdQa', 'user', 'active', NULL, NULL),
(233, 'Lesly Juco', 'A02663', '$2y$10$cKNm5e3FSg936ow62MxOj.v5zEehHZthyV4wc2Ypx35dVADmwfKUO', 'user', 'active', NULL, NULL),
(234, 'Ace Dagooc', 'A02877', '$2y$10$L1kIBzy5LRhKak2fMwQWhOx6Ywv80s3deIsEvKU46CluO5qYcXmxK', 'user', 'active', NULL, NULL),
(235, 'Raphael Dimdam', 'A01804', '$2y$10$lTXzaJawVBAk.XrIM310.eLM1hnfH/dheUTiy./hcmxiDLJ7.E3Bm', 'user', 'active', NULL, NULL),
(236, 'Jojy Mae Juayong ', 'IC', '$2y$10$LhJ7.AO44DCsGwaWD9jJEeceGEFaz3Q2dcgCPI6S/dc7HP3hVGR7G', 'user', 'active', NULL, NULL),
(241, 'Gesna Guantes', 'A01773', '$2y$10$tKKDdrpii4UfHgiMLEB83OitAJv.PgfhVSTy1pS0Szm4St.eWPcDG', 'leader', 'active', '2023-02-02 01:31:36', '2023-02-02 01:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `welcomes`
--

CREATE TABLE `welcomes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `welcomes`
--

INSERT INTO `welcomes` (`id`, `title`, `description`, `picture`, `type`, `created_at`, `updated_at`) VALUES
(26, 'GOJO', 'GOJO', 'JOGO.jpg', 'holiday', '2023-01-30 23:41:18', '2023-01-30 23:41:18'),
(27, 'Luffy', 'none', 'luffy.jpg', 'announcement', '2023-01-30 23:42:56', '2023-01-30 23:42:56'),
(31, 'NARUTO', 'NARUTO', 'naruto.jpg', 'announcement', '2023-01-31 19:35:07', '2023-01-31 23:37:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomplishments`
--
ALTER TABLE `accomplishments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cocaFK` (`coca_id`);

--
-- Indexes for table `allprojects`
--
ALTER TABLE `allprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_employee_id_foreign` (`employee_id`),
  ADD KEY `campaigns_project_id_foreign` (`project_id`);

--
-- Indexes for table `cocas`
--
ALTER TABLE `cocas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conformes`
--
ALTER TABLE `conformes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_role_id_foreign` (`role_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comformes_comforme_id_foreign` (`conforme_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcomes`
--
ALTER TABLE `welcomes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomplishments`
--
ALTER TABLE `accomplishments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `allprojects`
--
ALTER TABLE `allprojects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `cocas`
--
ALTER TABLE `cocas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conformes`
--
ALTER TABLE `conformes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `welcomes`
--
ALTER TABLE `welcomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accomplishments`
--
ALTER TABLE `accomplishments`
  ADD CONSTRAINT `cocaFK` FOREIGN KEY (`coca_id`) REFERENCES `cocas` (`id`);

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `campaigns_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `allprojects` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD CONSTRAINT `comformes_comforme_id_foreign` FOREIGN KEY (`conforme_id`) REFERENCES `conformes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
