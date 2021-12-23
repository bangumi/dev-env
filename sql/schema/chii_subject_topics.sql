-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 23, 2021 at 08:54 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `chii_subject_topics`
--

CREATE TABLE IF NOT EXISTS `chii_subject_topics` (
  `sbj_tpc_id` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_subject_id` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_uid` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_title` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `sbj_tpc_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_state` tinyint(1) unsigned NOT NULL,
  `sbj_tpc_display` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_subject_topics`
--
ALTER TABLE `chii_subject_topics`
  ADD PRIMARY KEY (`sbj_tpc_id`),
  ADD KEY `tpc_subject_id` (`sbj_tpc_subject_id`),
  ADD KEY `tpc_display` (`sbj_tpc_display`),
  ADD KEY `sbj_tpc_uid` (`sbj_tpc_uid`),
  ADD KEY `sbj_tpc_lastpost` (`sbj_tpc_lastpost`,`sbj_tpc_subject_id`,`sbj_tpc_display`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_subject_topics`
--
ALTER TABLE `chii_subject_topics`
  MODIFY `sbj_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
