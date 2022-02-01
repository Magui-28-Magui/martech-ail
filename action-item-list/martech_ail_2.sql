-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 10:23 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martech_ail`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `action_id` int(11) NOT NULL,
  `action_project_id` int(11) NOT NULL,
  `action_phase` int(11) NOT NULL,
  `action_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `action_description` text COLLATE utf8_spanish2_ci NOT NULL,
  `action_department` int(11) NOT NULL,
  `action_start_date` date NOT NULL,
  `action_promise_date` date NOT NULL,
  `action_end_date` date NOT NULL,
  `action_status` int(1) NOT NULL,
  `action_percent` int(3) NOT NULL,
  `action_complete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`action_id`, `action_project_id`, `action_phase`, `action_name`, `action_description`, `action_department`, `action_start_date`, `action_promise_date`, `action_end_date`, `action_status`, `action_percent`, `action_complete`) VALUES
(46, 27, 62, 'Junta  de inicio', 'Junta para discutir el alcance de los cambios y el resultado esperado', 1, '2021-04-20', '2021-04-22', '0000-00-00', 0, 0, 0),
(47, 28, 68, 'Clean Apache Access Logs', 'Clean apache server logs on mxmtsvrandon1 on XAMPP application', 1, '2021-04-26', '2021-05-03', '2021-04-28', 0, 100, 1),
(48, 29, 69, 'App development', 'Develop application', 1, '2021-04-26', '2021-05-14', '2021-04-28', 0, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `action_files`
--

CREATE TABLE `action_files` (
  `file_id` int(11) NOT NULL,
  `file_project_id` int(11) NOT NULL,
  `file_action_id` int(11) NOT NULL,
  `file_user_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `file_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_responsible`
--

CREATE TABLE `action_responsible` (
  `a_responsible_id` int(11) NOT NULL,
  `a_action_id` int(11) NOT NULL,
  `a_responsible_user` int(11) NOT NULL,
  `a_responsible_main` int(1) NOT NULL DEFAULT 0,
  `a_responsible_added_by` int(11) NOT NULL,
  `a_responsible_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `action_responsible`
--

INSERT INTO `action_responsible` (`a_responsible_id`, `a_action_id`, `a_responsible_user`, `a_responsible_main`, `a_responsible_added_by`, `a_responsible_date`) VALUES
(304, 46, 21, 1, 21, '2021-04-21'),
(305, 46, 143, 0, 21, '2021-04-21'),
(306, 46, 144, 0, 21, '2021-04-21'),
(307, 46, 145, 0, 21, '2021-04-21'),
(308, 47, 21, 1, 21, '2021-04-28'),
(309, 47, 144, 0, 21, '2021-04-28'),
(310, 48, 21, 1, 21, '2021-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `action_updates`
--

CREATE TABLE `action_updates` (
  `a_update_id` int(11) NOT NULL,
  `a_update_action_id` int(11) NOT NULL,
  `a_update_descr` text COLLATE utf8_spanish2_ci NOT NULL,
  `a_update_user` int(11) NOT NULL,
  `a_update_date` date NOT NULL,
  `a_update_percent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `action_updates`
--

INSERT INTO `action_updates` (`a_update_id`, `a_update_action_id`, `a_update_descr`, `a_update_user`, `a_update_date`, `a_update_percent`) VALUES
(43, 47, 'ACTION COMPLETED! - 2021-04-28: Server cleanup was successful apache logs were cleaned saved up to 60 GB of disk space', 21, '2021-04-28', 1),
(44, 48, 'ACTION COMPLETED! - 2021-04-28: App was finished successfully', 21, '2021-04-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ail_action`
--

CREATE TABLE `ail_action` (
  `ail_action_id` int(11) NOT NULL,
  `ail_action_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `ail_action_ecd` date NOT NULL,
  `ail_owner` int(11) NOT NULL,
  `ail_meeting_id` int(11) NOT NULL,
  `ail_action_date` date NOT NULL,
  `action_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `ail_action`
--

INSERT INTO `ail_action` (`ail_action_id`, `ail_action_name`, `ail_action_ecd`, `ail_owner`, `ail_meeting_id`, `ail_action_date`, `action_active`) VALUES
(1, 'accion 1', '2021-07-20', 21, 4, '2021-05-28', 1),
(2, 'Accion 1', '2021-06-02', 21, 5, '2021-06-02', 1),
(3, 'accion new ', '2021-06-01', 21, 6, '2021-05-31', 1),
(4, 'accion nueva', '2021-06-29', 21, 7, '2021-05-31', 1),
(5, 'dffds', '2021-06-15', 21, 8, '2021-05-31', 1),
(6, 'ddssd', '2021-06-05', 21, 9, '2021-05-31', 1),
(7, 'completar programa', '2021-06-05', 21, 10, '2021-05-31', 1),
(8, 'accion 2', '2021-06-08', 143, 10, '2021-05-31', 1),
(9, 'accion 3', '2021-06-09', 129, 10, '2021-05-31', 1),
(10, 'accion 4 ', '2021-06-05', 21, 10, '2021-05-31', 1),
(11, 'hr x hr update', '2021-06-04', 145, 11, '2021-05-31', 1),
(12, 'pph review with programers', '2021-07-08', 129, 11, '2021-06-02', 1),
(13, 'ail review', '2021-06-11', 21, 11, '2021-05-31', 1),
(14, 'action1', '2021-07-08', 21, 12, '2021-06-01', 1),
(15, 'action2', '2021-07-09', 21, 12, '2021-06-01', 1),
(16, 'action3', '2021-07-10', 21, 12, '2021-06-01', 1),
(17, 'fdsf', '2021-07-15', 21, 12, '2021-06-01', 1),
(18, 'Software review', '2021-06-02', 21, 13, '2021-06-01', 1),
(19, 'Ajustes a software', '2021-06-04', 21, 13, '2021-06-01', 1),
(20, 'Subir a servidor', '2021-06-08', 21, 13, '2021-06-01', 1),
(21, 'Entrenamiento a personal', '2021-06-11', 21, 13, '2021-06-01', 1),
(22, 'accion nueva', '2021-07-09', 21, 9, '2021-06-01', 1),
(23, 'private action', '2021-07-02', 21, 14, '2021-06-01', 1),
(24, 'esquer ', '2021-07-02', 21, 14, '2021-06-01', 1),
(25, 'accion 1', '2021-07-08', 21, 15, '2021-06-02', 1),
(26, 'accion 2', '2021-07-09', 21, 15, '2021-06-02', 1),
(27, 'nueva', '2021-07-09', 21, 5, '2021-06-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ail_meeting`
--

CREATE TABLE `ail_meeting` (
  `meeting_id` int(11) NOT NULL,
  `meeting_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `meeting_department` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_register` date NOT NULL,
  `private` int(1) NOT NULL DEFAULT 0,
  `active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `ail_meeting`
--

INSERT INTO `ail_meeting` (`meeting_id`, `meeting_name`, `meeting_department`, `meeting_date`, `meeting_register`, `private`, `active`) VALUES
(2, 'meeting', 3, '2021-06-03', '2021-05-11', 0, 1),
(3, 'meeting 3', 1, '2021-06-04', '2021-05-11', 0, 1),
(4, 'meeting 1 ', 2, '2021-06-29', '2021-05-28', 0, 1),
(5, 'Meeting Test', 2, '2021-05-26', '2021-06-02', 0, 1),
(6, 'meeting new', 1, '2021-06-21', '2021-05-31', 0, 1),
(7, 'nueva junta', 1, '2021-06-14', '2021-05-31', 0, 1),
(8, 'fsdsfd', 1, '2021-06-05', '2021-05-31', 0, 1),
(9, 'dfsf editado', 1, '2021-06-05', '2021-06-01', 0, 1),
(10, 'meeting de ail software para juntas', 1, '2021-06-01', '2021-05-31', 0, 1),
(11, 'CI Meeting', 2, '2021-06-01', '2021-05-31', 0, 1),
(12, 'meeting morq', 1, '2021-06-29', '2021-06-01', 0, 1),
(13, 'AIL software', 2, '2021-06-02', '2021-06-01', 0, 1),
(14, 'private CI meeting', 2, '2021-07-02', '2021-06-01', 1, 1),
(15, 'junta martin', 1, '2021-07-07', '2021-06-02', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ail_updates`
--

CREATE TABLE `ail_updates` (
  `update_id` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `update_user` int(11) NOT NULL,
  `update_text` text COLLATE utf8_spanish2_ci NOT NULL,
  `action_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `ail_updates`
--

INSERT INTO `ail_updates` (`update_id`, `update_date`, `update_user`, `update_text`, `action_id`) VALUES
(1, '2021-06-01', 21, 'Ajustes en proceso', 19),
(2, '2021-06-01', 21, 'En espera de software ', 21),
(3, '2021-06-01', 21, 'Ajustes cerca de terminar con un texto largo lorem ipsum dolet amer dolor a set alet amet usum ', 19),
(4, '2021-06-01', 21, 'un update', 18),
(5, '2021-06-01', 21, 'un update a esta accion ', 22),
(6, '2021-06-02', 21, 'un update', 25),
(7, '2021-06-02', 21, 'programa completado', 7),
(8, '2021-06-02', 21, 'update de ail review', 13),
(9, '2021-06-02', 21, 'hr x hr update', 11),
(10, '2021-06-02', 21, 'otro update de hora x hora', 11),
(11, '2021-06-02', 21, 'update a accion 4', 10),
(12, '2021-06-02', 21, 'update a accion 3 ', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ail_users`
--

CREATE TABLE `ail_users` (
  `ail_id` int(11) NOT NULL,
  `ail_meeting_id` int(11) NOT NULL,
  `ail_action_id` int(11) NOT NULL,
  `ail_user_id` int(11) NOT NULL,
  `ail_user_register` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `ail_users`
--

INSERT INTO `ail_users` (`ail_id`, `ail_meeting_id`, `ail_action_id`, `ail_user_id`, `ail_user_register`) VALUES
(1, 4, 1, 129, '2021-05-28'),
(2, 4, 1, 143, '2021-05-28'),
(3, 4, 1, 144, '2021-05-28'),
(4, 5, 2, 129, '2021-05-28'),
(5, 5, 2, 143, '2021-05-28'),
(6, 5, 2, 144, '2021-05-28'),
(7, 6, 3, 144, '2021-05-31'),
(8, 7, 4, 143, '2021-05-31'),
(9, 7, 4, 144, '2021-05-31'),
(10, 7, 4, 145, '2021-05-31'),
(11, 8, 5, 129, '2021-05-31'),
(12, 8, 5, 135, '2021-05-31'),
(13, 8, 5, 144, '2021-05-31'),
(14, 9, 6, 129, '2021-05-31'),
(15, 9, 6, 135, '2021-05-31'),
(16, 10, 7, 129, '2021-05-31'),
(17, 10, 7, 144, '2021-05-31'),
(18, 10, 7, 145, '2021-05-31'),
(19, 10, 8, 21, '2021-05-31'),
(20, 10, 9, 21, '2021-05-31'),
(21, 10, 9, 144, '2021-05-31'),
(22, 10, 9, 146, '2021-05-31'),
(23, 10, 10, 144, '2021-05-31'),
(24, 11, 11, 21, '2021-05-31'),
(25, 11, 11, 129, '2021-05-31'),
(26, 11, 11, 144, '2021-05-31'),
(28, 11, 13, 143, '2021-05-31'),
(29, 12, 14, 129, '2021-06-01'),
(30, 12, 14, 143, '2021-06-01'),
(31, 12, 14, 144, '2021-06-01'),
(32, 12, 16, 145, '2021-06-01'),
(33, 13, 18, 135, '2021-06-01'),
(34, 13, 18, 143, '2021-06-01'),
(35, 13, 20, 144, '2021-06-01'),
(36, 13, 21, 129, '2021-06-01'),
(37, 13, 21, 143, '2021-06-01'),
(38, 13, 21, 144, '2021-06-01'),
(39, 13, 21, 145, '2021-06-01'),
(40, 13, 21, 147, '2021-06-01'),
(41, 9, 22, 129, '2021-06-01'),
(42, 14, 23, 129, '2021-06-01'),
(43, 14, 23, 144, '2021-06-01'),
(44, 14, 24, 129, '2021-06-01'),
(45, 14, 24, 145, '2021-06-01'),
(46, 15, 25, 129, '2021-06-02'),
(47, 15, 25, 144, '2021-06-02'),
(48, 15, 26, 143, '2021-06-02'),
(55, 11, 0, 135, '2021-06-02'),
(56, 11, 0, 143, '2021-06-02'),
(57, 11, 12, 21, '2021-06-02'),
(58, 11, 12, 135, '2021-06-02'),
(59, 5, 27, 135, '2021-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `department_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `department_active`) VALUES
(1, 'C.I', 1),
(2, 'Administration', 1),
(3, 'Production', 1),
(4, 'Engineering', 1),
(5, 'Quality', 1),
(6, 'R&D', 1),
(7, 'Incoming Inspection', 1),
(8, 'Customs', 1),
(9, 'Planning', 1),
(10, 'H.R.', 1),
(11, 'Warehouse', 1),
(12, 'Logistics', 1),
(13, 'Document Control', 1),
(14, 'EHS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `key_indicator`
--

CREATE TABLE `key_indicator` (
  `key_id` int(11) NOT NULL,
  `key_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `key_indicator`
--

INSERT INTO `key_indicator` (`key_id`, `key_name`) VALUES
(1, 'Labor Cost '),
(2, 'MMW MRO Expense vs Sales %'),
(3, 'OTD'),
(4, 'Output'),
(5, 'RM Cost vs Sales %'),
(6, 'Sales Growth '),
(7, 'Scrap'),
(8, 'Turnover'),
(9, 'Utilization'),
(10, 'Adoptions Cycle Time'),
(11, 'CPM NCR %'),
(12, 'Downtime'),
(13, 'Efficiency'),
(14, 'Efficiency Labor'),
(15, 'HC Reduction'),
(16, 'Employee Engagement'),
(17, 'Internal Rejections'),
(18, 'Inventory Cost');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(11) NOT NULL,
  `meeting_action_id` int(11) NOT NULL,
  `meeting_project_id` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_update` text COLLATE utf8_spanish2_ci NOT NULL,
  `meeting_reason` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_responsible`
--

CREATE TABLE `meeting_responsible` (
  `meeting_responsible_id` int(11) NOT NULL,
  `m_r_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notpermitted`
--

CREATE TABLE `notpermitted` (
  `perm_id` int(11) NOT NULL,
  `perm_user_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_a` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plant_id` int(11) NOT NULL,
  `plant_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `plant_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`plant_id`, `plant_name`, `plant_active`) VALUES
(1, 'Plant 1 Molding', 1),
(2, 'Plant 2 Assembly', 1),
(3, 'Plant 3 Point', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `lean` int(1) NOT NULL DEFAULT 0,
  `project_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `project_description` text COLLATE utf8_spanish2_ci NOT NULL,
  `project_department` int(11) NOT NULL,
  `project_owner` int(11) NOT NULL,
  `project_support` int(11) NOT NULL,
  `project_start_date` date NOT NULL,
  `project_promise_date` date NOT NULL,
  `project_end_date` date NOT NULL,
  `project_status` int(1) NOT NULL COMMENT '0 cancelled\r\n1 complete\r\n2 suspended',
  `project_active` int(1) NOT NULL DEFAULT 1,
  `project_complete` int(1) NOT NULL,
  `project_priority` int(2) NOT NULL DEFAULT 0,
  `project_type` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `improvement_oportunity` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `key_indicator_id` int(11) NOT NULL,
  `expected_improvement` float NOT NULL,
  `achieved_improvement` float NOT NULL,
  `expected_cost_saving` float NOT NULL,
  `achieved_cost_saving` float NOT NULL,
  `roi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `lean`, `project_name`, `project_description`, `project_department`, `project_owner`, `project_support`, `project_start_date`, `project_promise_date`, `project_end_date`, `project_status`, `project_active`, `project_complete`, `project_priority`, `project_type`, `improvement_oportunity`, `key_indicator_id`, `expected_improvement`, `achieved_improvement`, `expected_cost_saving`, `achieved_cost_saving`, `roi`) VALUES
(27, 0, 'TPM Checklist improvement', 'Speed up app execution', 1, 143, 21, '2021-04-20', '2021-05-14', '0000-00-00', 1, 1, 0, 1, 'Software Application', 'Time Reduction', 3, 30, 25, 1000, 2000, 2),
(28, 1, 'Server Cleanup', 'increase server space updating configuration for Apache logs', 1, 21, 144, '2021-05-07', '2021-05-30', '0000-00-00', 1, 1, 0, 2, 'Software Application', 'increase server space', 9, 25, 25, 1500, 2000, 12),
(29, 1, 'Quarantine App', 'Develop Application that lets users register items in quarantine and for incoming inspection to accept and decline items this app will also send email notifications when an item is overdue for pickup, all users will have an administration panel depending on user level.', 1, 159, 21, '2021-04-26', '2021-05-14', '0000-00-00', 1, 1, 0, 1, 'Software Application', 'Reduce time for items in Quarantine', 3, 50, 50, 1500, 1500, 12),
(30, 1, 'test', 'description', 1, 21, 21, '2021-04-27', '2021-05-06', '0000-00-00', 0, 1, 0, 1, 'Automation', 'op', 1, 78, 0, 78, 0, 5),
(31, 1, 'testtestname', 'dsfsi', 1, 21, 144, '2021-05-03', '2021-05-26', '0000-00-00', 0, 1, 0, 1, 'Software Application', 'test', 9, 10, 0, 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_phase`
--

CREATE TABLE `project_phase` (
  `phase_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `phase_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `phase_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `project_phase`
--

INSERT INTO `project_phase` (`phase_id`, `project_id`, `phase_name`, `phase_active`) VALUES
(62, 27, 'Analisis', 1),
(63, 27, 'Desarrollo', 1),
(64, 27, 'Prototipo', 1),
(65, 27, 'Implementacion', 1),
(66, 28, 'Analisis', 1),
(67, 28, 'Desarrollo', 1),
(68, 28, 'Implementacion', 1),
(69, 29, 'Development And Implementation', 1),
(70, 30, 'phase1', 1),
(71, 31, 'fase1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tiers`
--

CREATE TABLE `tiers` (
  `tier_id` int(11) NOT NULL,
  `tier_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tier_plant` int(11) NOT NULL,
  `tier_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tiers`
--

INSERT INTO `tiers` (`tier_id`, `tier_name`, `tier_plant`, `tier_active`) VALUES
(1, 'tier 2.0', 1, 1),
(2, 'tier 2.5', 1, 1),
(3, 'tier 3.0', 1, 1),
(4, 'tier 3.5', 1, 1),
(5, 'tier 2.0', 2, 1),
(6, 'tier 2.5', 2, 1),
(7, 'tier 3.0', 2, 1),
(8, 'tier 3.5', 2, 1),
(9, 'tier 2.0', 3, 1),
(10, 'tier 2.5', 3, 1),
(11, 'tier 3.0', 3, 1),
(12, 'tier 3.5', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tier_actions`
--

CREATE TABLE `tier_actions` (
  `action_id` int(11) NOT NULL,
  `action_tier_id` int(11) NOT NULL,
  `action_tier_area` int(11) NOT NULL,
  `action_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `action_description` text COLLATE utf8_spanish2_ci NOT NULL,
  `action_department` int(11) NOT NULL,
  `action_start_date` date NOT NULL,
  `action_promise_date` date NOT NULL,
  `action_end_date` date NOT NULL,
  `action_status` int(1) NOT NULL,
  `action_percent` int(3) NOT NULL,
  `action_complete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tier_actions`
--

INSERT INTO `tier_actions` (`action_id`, `action_tier_id`, `action_tier_area`, `action_name`, `action_description`, `action_department`, `action_start_date`, `action_promise_date`, `action_end_date`, `action_status`, `action_percent`, `action_complete`) VALUES
(4, 5, 3, 'accion 1 de tier 2 ensamble', 'descripcion editada', 2, '2021-04-21', '2021-06-03', '0000-00-00', 0, 20, 0),
(5, 5, 3, 'shortterm action 2.0', 'descripcion', 1, '2021-04-26', '2021-05-06', '0000-00-00', 0, 0, 0),
(6, 2, 0, 'action tier_id 2 2.5', 'fidosfj', 2, '2021-04-21', '2021-04-23', '0000-00-00', 0, 0, 0),
(7, 1, 1, 'accion emilio', 'dsiofj', 4, '2021-05-26', '2021-06-18', '0000-00-00', 0, 0, 0),
(8, 1, 0, 'accion emilio 2', 'fdsif', 1, '2021-05-26', '2021-06-03', '0000-00-00', 0, 0, 0),
(9, 1, 1, 'accion 3 emilio', 'fdskfmso', 4, '2021-05-13', '2021-07-07', '0000-00-00', 0, 0, 0),
(10, 1, 1, 'accion 4 emilio', 'fdfsd', 3, '2021-05-25', '2021-06-04', '0000-00-00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tier_action_files`
--

CREATE TABLE `tier_action_files` (
  `file_id` int(11) NOT NULL,
  `file_project_id` int(11) NOT NULL,
  `file_action_id` int(11) NOT NULL,
  `file_user_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `file_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tier_action_files`
--

INSERT INTO `tier_action_files` (`file_id`, `file_project_id`, `file_action_id`, `file_user_id`, `file_name`, `file_url`, `file_active`) VALUES
(4, 0, 4, 21, 'upload 1 ', 'uploads/actions/2021-04-221513922443network-diagram-example.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tier_action_responsible`
--

CREATE TABLE `tier_action_responsible` (
  `a_responsible_id` int(11) NOT NULL,
  `a_action_id` int(11) NOT NULL,
  `a_responsible_user` int(11) NOT NULL,
  `a_responsible_main` int(1) NOT NULL DEFAULT 0,
  `a_responsible_added_by` int(11) NOT NULL,
  `a_responsible_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tier_action_responsible`
--

INSERT INTO `tier_action_responsible` (`a_responsible_id`, `a_action_id`, `a_responsible_user`, `a_responsible_main`, `a_responsible_added_by`, `a_responsible_date`) VALUES
(27, 4, 21, 1, 21, '2021-04-22'),
(28, 4, 144, 0, 21, '2021-04-22'),
(29, 4, 145, 0, 21, '2021-04-22'),
(30, 4, 147, 0, 21, '2021-04-22'),
(31, 4, 158, 0, 21, '2021-04-22'),
(32, 5, 21, 1, 21, '2021-04-22'),
(33, 5, 144, 0, 21, '2021-04-22'),
(34, 5, 158, 0, 21, '2021-04-22'),
(35, 6, 21, 1, 21, '2021-04-22'),
(36, 6, 143, 0, 21, '2021-04-22'),
(37, 7, 129, 1, 21, '2021-05-04'),
(38, 7, 21, 0, 21, '2021-05-04'),
(39, 8, 21, 1, 21, '2021-05-04'),
(40, 8, 152, 0, 21, '2021-05-04'),
(41, 9, 21, 1, 21, '2021-05-04'),
(42, 9, 145, 0, 21, '2021-05-04'),
(43, 10, 21, 1, 21, '2021-05-04'),
(44, 10, 144, 0, 21, '2021-05-04'),
(45, 10, 145, 0, 21, '2021-05-04'),
(46, 10, 152, 0, 21, '2021-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `tier_action_updates`
--

CREATE TABLE `tier_action_updates` (
  `a_update_id` int(11) NOT NULL,
  `a_update_action_id` int(11) NOT NULL,
  `a_update_descr` text COLLATE utf8_spanish2_ci NOT NULL,
  `a_update_user` int(11) NOT NULL,
  `a_update_date` date NOT NULL,
  `a_update_percent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tier_action_updates`
--

INSERT INTO `tier_action_updates` (`a_update_id`, `a_update_action_id`, `a_update_descr`, `a_update_user`, `a_update_date`, `a_update_percent`) VALUES
(5, 4, 'ACTION 20% COMPLETE - 2021-04-22: un update el jueves', 21, '2021-04-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tier_area`
--

CREATE TABLE `tier_area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tier_id` int(11) NOT NULL,
  `area_ident` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tier_area`
--

INSERT INTO `tier_area` (`area_id`, `area_name`, `tier_id`, `area_ident`) VALUES
(1, 'Moldeo', 1, 'A'),
(2, 'Extrusion', 1, 'H'),
(3, 'Assembly (Short Term)', 5, 'B'),
(4, 'Assembly (Gyrus)', 5, 'C'),
(5, 'Assembly (HemoFlow)', 5, 'D'),
(6, 'Assembly (Piccs)', 5, 'E'),
(7, 'Packaging', 9, 'F'),
(8, 'Point Medical', 9, 'G');

-- --------------------------------------------------------

--
-- Table structure for table `tier_triggers`
--

CREATE TABLE `tier_triggers` (
  `trigger_id` int(11) NOT NULL,
  `trigger_issue` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `trigger_tier_id` int(11) NOT NULL,
  `trigger_area_id` int(11) NOT NULL,
  `trigger_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trigger_complete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tier_triggers`
--

INSERT INTO `tier_triggers` (`trigger_id`, `trigger_issue`, `trigger_tier_id`, `trigger_area_id`, `trigger_date`, `trigger_complete`) VALUES
(1, 'issue nuevo', 1, 0, '2021-05-01 02:46:35', 0),
(2, 'new issue 2', 1, 1, '2021-05-03 18:43:47', 0),
(3, 'new no area', 7, 0, '2021-05-03 18:49:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `user_first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_employee_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_department` int(11) NOT NULL,
  `user_date` datetime DEFAULT NULL,
  `user_last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_areacode` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` int(1) NOT NULL DEFAULT 0,
  `user_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'uploads/user_img/noimage.png',
  `user_locked` int(1) NOT NULL DEFAULT 0,
  `user_suspend` int(1) NOT NULL DEFAULT 0,
  `user_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='user data';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_first_name`, `user_last_name`, `user_employee_number`, `user_department`, `user_date`, `user_last_update`, `user_phone`, `user_areacode`, `user_level`, `user_image`, `user_locked`, `user_suspend`, `user_active`) VALUES
(21, 'jgomez', '$2y$10$RGMkMwWiYmbJZjU/vzpOaOC4JAFxKiCV/rCpmE40wwBo.31MGhCTK', 'jgomez@martechmedical.com', 'Jose Luis', 'Gomez Ceceña', '43044', 1, '2018-08-09 00:00:00', '2021-04-23 01:03:18', '(686)259-4318', '+52', 2, 'uploads/user_img/17074115591410280743profile.jpg', 0, 0, 1),
(129, 'jmorimoto', '$2y$10$D5JHU5GkhlCki.eeBtcQP.0iTUAcFwxLnDKx6TEl/Q2A0SKfSvY.u', 'jmorimoto@martechmedical.com', 'Jose Francisco', 'Morimoto', '44312', 1, '2020-10-24 01:39:00', '2021-01-19 20:55:31', '6862594318', '+52', 0, 'uploads/user_img/noimage.jpg', 0, 0, 1),
(135, 'avalle', '$2y$10$Z9u3eVP2JSiClBQGJwRR6.D4XvZsEED0vnYyKjo7UIYeZlifdZVES', 'avalle@martechmedical.com', 'Anabel', 'Valle', '1', 2, '2020-11-06 15:40:51', '2021-01-18 23:25:26', '6862594318', '+52', 1, 'uploads/user_img/877324661685686452Anabel Valle.png', 0, 0, 1),
(143, 'jvargas', '$2y$10$Z9u3eVP2JSiClBQGJwRR6.D4XvZsEED0vnYyKjo7UIYeZlifdZVES', 'jvargas@martechmedical.com', 'Javier', 'Vargas', '1', 1, '2020-11-06 15:40:51', '2021-01-19 18:55:42', '6862594318', '+52', 1, 'uploads/user_img/123909636192934652noimage.jpg', 0, 0, 1),
(144, 'mespericueta', '$2y$10$Z9u3eVP2JSiClBQGJwRR6.D4XvZsEED0vnYyKjo7UIYeZlifdZVES', 'mespericueta@martechmedical.com', 'Martin Mateo', 'Espericueta Gomez', '1', 1, '2020-11-06 15:40:51', '2021-01-12 00:47:09', '6862594318', '+52', 0, 'uploads/user_img/192934652noimage.jpg', 0, 0, 1),
(145, 'jesquer', '$2y$10$T8mSmhcuJTQIBtyaz5.GE.2KpmCgDL8FvYRw/oB6ymN0IXzrMvYHa', 'jesquer@martechmedical.com', 'Juan Carlos', 'Esquer', '43047', 1, '2021-01-11 16:41:04', '2021-04-02 00:03:54', '', '', 0, 'uploads/user_img/980766341JC_icono.jpeg', 0, 0, 1),
(146, 'msalazar', '$2y$10$IFq8u4tIQ4HYe6bUsXDHhuspys1/dNWQT7JnEstD7SgVXoeZn0laS', 'msalazar@martechmedical.com', 'Myrna Araceli', 'Salazar', '43566', 1, '2021-01-11 16:42:05', '2021-01-12 00:47:14', '', '', 0, 'uploads/user_img/646166708951055819people.png', 0, 0, 1),
(147, 'jruiz1', '$2y$10$YRAfe4xwql.zv8BBKjRsF.y/dWAa6ElnzxZl.gNCdFQcu59CafjJe', 'jruiz1@martechmedical.com', 'Julio', 'Ruiz', '495215', 1, '2021-01-11 16:46:32', '2021-04-03 00:26:28', '', '+52', 0, 'uploads/user_img/1413036211profile.jpg', 0, 0, 1),
(151, 'cobregon', '$2y$10$V7s2qXvNnAa6Wpj8/URoCOpa89OV4aCfygivHtZ6.cnG2t7V9yh1a', 'cobregon@martechmedical.com', 'Carolina', 'Obregon', '12235', 2, '2021-01-15 17:31:28', '2021-01-18 23:25:47', '', '+52', 1, 'uploads/user_img/noimage.png', 0, 0, 1),
(152, 'fnava', '$2y$10$GQ7GsOrBj1kO8c9aW98p7.s12MY05NQro3Ib3tuNoCdDT..eDPwNu', 'fnava@martechmedical.com', 'Edmundo', 'Nava', '1000', 2, '2021-01-18 11:11:41', '2021-01-18 23:18:39', '', '+52', 1, 'uploads/user_img/noimage.png', 0, 0, 1),
(153, 'Saul', '$2y$10$vZVERG7qsOAUQNlSXAhcduMzAmZiv/9UWCF5nzf/t2YSUiUUP5UDm', 'sruiz@martechmedical.com', 'Saul', 'Ruiz', '28885', 3, '2021-01-22 15:21:03', '2021-01-22 23:21:04', '1', '+52', 0, 'uploads/user_img/noimage.png', 0, 0, 1),
(154, 'Marcos', '$2y$10$AJjHOKiJHT6.y13xfNapI.GB0/a4vXDl8O3TONzrjSw6XnHABvaeu', 'MArriaga@martechmedical.com', 'Marcos ', 'Arriaga ', '1', 5, '2021-01-22 15:24:15', '2021-01-22 23:24:15', '1', '+52', 0, 'uploads/user_img/noimage.png', 0, 0, 1),
(155, 'Ruben', '$2y$10$4W6SfZHeJZlOdqnzADxrUOeNhB0G0fnp24dMv2hpQggwmSczgkYhu', 'Rduenas@martechmedical.com', 'Ruben', 'Dueñas', '15009', 4, '2021-01-22 15:31:44', '2021-01-22 23:31:44', '1', '+52', 0, 'uploads/user_img/noimage.png', 0, 0, 1),
(156, 'Cesar', '$2y$10$TeNDF/5uSaPO8GzHt6QNauozy1yf3tZd77j1wao0opSBxZxZJGf9C', 'CToledo@martechmedical.com', 'Cesar', 'Toledo', '43583', 4, '2021-01-22 15:40:00', '2021-01-22 23:40:01', '1', '+52', 0, 'uploads/user_img/noimage.png', 0, 0, 1),
(157, 'Melquiades', '$2y$10$guUCP0x0mSlZGqRTXRRIq.gEUoxTUPfHD3TicxGphsryCHhV0syDe', 'MArmenta@martechmedical.com', 'Melquiades', 'Armenta', '31481', 3, '2021-01-22 15:47:51', '2021-01-22 23:47:52', '1', '+52', 0, 'uploads/user_img/noimage.png', 0, 0, 1),
(158, 'dpaniagua', '$2y$10$dx1FqaWTg9I3z9JIL.UoR.CITYlc9yTEb6QPpftmfm9aNuAQnpKcu', 'dpaniagua@martechmedical.com', 'Daniel', 'Paniagua', '1554', 4, '2021-04-22 13:48:25', '2021-04-22 20:48:25', '', '', 0, 'uploads/user_img/noimage.png', 0, 0, 1),
(159, 'aavila', '$2y$10$NwqDg15IKht2BTaxm9lE6O7rziChhz/sALgkDzTKwiCXLtFdQ8BKO', 'aavila@martechmedical.com', 'Alheli', 'Avila', '1', 5, '2021-04-28 18:00:45', '2021-04-29 01:00:45', '', '', 0, 'uploads/user_img/noimage.png', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_actions`
--

CREATE TABLE `user_actions` (
  `user_action_id` int(11) NOT NULL,
  `user_action` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `user_action_project` int(11) NOT NULL,
  `user_action_action` int(11) NOT NULL,
  `user_action_file` int(11) NOT NULL,
  `user_action_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `action_files`
--
ALTER TABLE `action_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `action_responsible`
--
ALTER TABLE `action_responsible`
  ADD PRIMARY KEY (`a_responsible_id`);

--
-- Indexes for table `action_updates`
--
ALTER TABLE `action_updates`
  ADD PRIMARY KEY (`a_update_id`);

--
-- Indexes for table `ail_action`
--
ALTER TABLE `ail_action`
  ADD PRIMARY KEY (`ail_action_id`);

--
-- Indexes for table `ail_meeting`
--
ALTER TABLE `ail_meeting`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `ail_updates`
--
ALTER TABLE `ail_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `ail_users`
--
ALTER TABLE `ail_users`
  ADD PRIMARY KEY (`ail_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `key_indicator`
--
ALTER TABLE `key_indicator`
  ADD PRIMARY KEY (`key_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `meeting_responsible`
--
ALTER TABLE `meeting_responsible`
  ADD PRIMARY KEY (`meeting_responsible_id`);

--
-- Indexes for table `notpermitted`
--
ALTER TABLE `notpermitted`
  ADD PRIMARY KEY (`perm_id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_phase`
--
ALTER TABLE `project_phase`
  ADD PRIMARY KEY (`phase_id`);

--
-- Indexes for table `tiers`
--
ALTER TABLE `tiers`
  ADD PRIMARY KEY (`tier_id`);

--
-- Indexes for table `tier_actions`
--
ALTER TABLE `tier_actions`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `tier_action_files`
--
ALTER TABLE `tier_action_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tier_action_responsible`
--
ALTER TABLE `tier_action_responsible`
  ADD PRIMARY KEY (`a_responsible_id`);

--
-- Indexes for table `tier_action_updates`
--
ALTER TABLE `tier_action_updates`
  ADD PRIMARY KEY (`a_update_id`);

--
-- Indexes for table `tier_area`
--
ALTER TABLE `tier_area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `tier_triggers`
--
ALTER TABLE `tier_triggers`
  ADD PRIMARY KEY (`trigger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD PRIMARY KEY (`user_action_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `action_files`
--
ALTER TABLE `action_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `action_responsible`
--
ALTER TABLE `action_responsible`
  MODIFY `a_responsible_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `action_updates`
--
ALTER TABLE `action_updates`
  MODIFY `a_update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ail_action`
--
ALTER TABLE `ail_action`
  MODIFY `ail_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ail_meeting`
--
ALTER TABLE `ail_meeting`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ail_updates`
--
ALTER TABLE `ail_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ail_users`
--
ALTER TABLE `ail_users`
  MODIFY `ail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `key_indicator`
--
ALTER TABLE `key_indicator`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_responsible`
--
ALTER TABLE `meeting_responsible`
  MODIFY `meeting_responsible_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notpermitted`
--
ALTER TABLE `notpermitted`
  MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `plant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `project_phase`
--
ALTER TABLE `project_phase`
  MODIFY `phase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tiers`
--
ALTER TABLE `tiers`
  MODIFY `tier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tier_actions`
--
ALTER TABLE `tier_actions`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tier_action_files`
--
ALTER TABLE `tier_action_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tier_action_responsible`
--
ALTER TABLE `tier_action_responsible`
  MODIFY `a_responsible_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tier_action_updates`
--
ALTER TABLE `tier_action_updates`
  MODIFY `a_update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tier_area`
--
ALTER TABLE `tier_area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tier_triggers`
--
ALTER TABLE `tier_triggers`
  MODIFY `trigger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `user_actions`
--
ALTER TABLE `user_actions`
  MODIFY `user_action_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
