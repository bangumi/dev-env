-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 17, 2021 at 05:51 AM
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
-- Table structure for table `chii_subject_revisions`
--

CREATE TABLE IF NOT EXISTS `chii_subject_revisions` (
  `rev_id` mediumint(8) unsigned NOT NULL,
  `rev_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '修订类型',
  `rev_subject_id` mediumint(8) unsigned NOT NULL,
  `rev_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `rev_name` varchar(80) NOT NULL,
  `rev_name_cn` varchar(80) NOT NULL,
  `rev_field_infobox` mediumtext NOT NULL,
  `rev_field_summary` mediumtext NOT NULL,
  `rev_vote_field` mediumtext NOT NULL,
  `rev_field_eps` mediumint(8) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) NOT NULL,
  `rev_platform` smallint(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_subject_revisions`
--
ALTER TABLE `chii_subject_revisions`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `rev_subject_id` (`rev_subject_id`,`rev_creator`),
  ADD KEY `rev_type` (`rev_type`),
  ADD KEY `rev_dateline` (`rev_dateline`),
  ADD KEY `rev_creator` (`rev_creator`,`rev_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_subject_revisions`
--
ALTER TABLE `chii_subject_revisions`
  MODIFY `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
