-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 27, 2021 at 03:32 AM
-- Server version: 5.7.33-0ubuntu0.16.04.1-log
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangumi`
--

--
-- Dumping data for table `chii_subject_interests`
--

INSERT INTO `chii_subject_interests` (`interest_id`, `interest_uid`, `interest_subject_id`, `interest_subject_type`, `interest_rate`, `interest_type`, `interest_has_comment`, `interest_comment`, `interest_tag`, `interest_ep_status`, `interest_vol_status`, `interest_wish_dateline`, `interest_doing_dateline`, `interest_collect_dateline`, `interest_on_hold_dateline`, `interest_dropped_dateline`, `interest_lasttouch`, `interest_private`) VALUES
(17325702, 382951, 8, 2, 0, 2, 1, 'test comment', 'SUNRISE ', 23, 0, 0, 0, 1639569348, 0, 0, 1639569371, 0),
(17325710, 382951, 4, 4, 0, 1, 0, '', '', 0, 0, 1639569404, 0, 0, 0, 0,  1639569404, 0),
(17325711, 382951, 9, 4, 0, 5, 0, '', '', 0, 0, 0, 0, 0, 0, 1639569424,  1639569424, 0),
(17325712, 382951, 10, 1, 0, 4, 0, '', '', 0, 0, 0, 0, 0, 1639569433, 0, 1639569433, 0),
(17325727, 382951, 20, 3, 0, 3, 0, '', '', 0, 0, 0, 1639569656, 0, 0, 0, 1639569656, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
