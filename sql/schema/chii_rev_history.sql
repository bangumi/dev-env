-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 17, 2021 at 05:52 AM
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
-- Table structure for table `chii_rev_history`
--

CREATE TABLE IF NOT EXISTS `chii_rev_history` (
  `rev_id` mediumint(8) unsigned NOT NULL,
  `rev_type` tinyint(3) unsigned NOT NULL COMMENT '条目，角色，人物',
  `rev_mid` mediumint(8) unsigned NOT NULL COMMENT '对应条目，人物的ID',
  `rev_text_id` mediumint(9) unsigned NOT NULL,
  `rev_dateline` int(10) unsigned NOT NULL,
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chii_rev_text`
--

CREATE TABLE IF NOT EXISTS `chii_rev_text` (
  `rev_text_id` mediumint(9) unsigned NOT NULL,
  `rev_text` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_rev_history`
--
ALTER TABLE `chii_rev_history`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `rev_crt_id` (`rev_type`,`rev_mid`),
  ADD KEY `rev_crt_creator` (`rev_creator`),
  ADD KEY `rev_id` (`rev_id`,`rev_type`,`rev_creator`);

--
-- Indexes for table `chii_rev_text`
--
ALTER TABLE `chii_rev_text`
  ADD PRIMARY KEY (`rev_text_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_rev_history`
--
ALTER TABLE `chii_rev_history`
  MODIFY `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_rev_text`
--
ALTER TABLE `chii_rev_text`
  MODIFY `rev_text_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
