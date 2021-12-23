-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 23, 2021 at 08:55 AM
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
-- Table structure for table `chii_crt_comments`
--

CREATE TABLE IF NOT EXISTS `chii_crt_comments` (
  `crt_pst_id` mediumint(8) unsigned NOT NULL,
  `crt_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联人物ID',
  `crt_pst_uid` mediumint(8) unsigned NOT NULL,
  `crt_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `crt_pst_dateline` int(10) unsigned NOT NULL,
  `crt_pst_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chii_ep_comments`
--

CREATE TABLE IF NOT EXISTS `chii_ep_comments` (
  `ep_pst_id` mediumint(8) unsigned NOT NULL,
  `ep_pst_mid` mediumint(8) unsigned NOT NULL,
  `ep_pst_uid` mediumint(8) unsigned NOT NULL,
  `ep_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ep_pst_dateline` int(10) unsigned NOT NULL,
  `ep_pst_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chii_group_posts`
--

CREATE TABLE IF NOT EXISTS `chii_group_posts` (
  `grp_pst_id` mediumint(8) unsigned NOT NULL,
  `grp_pst_mid` mediumint(8) unsigned NOT NULL,
  `grp_pst_uid` mediumint(8) unsigned NOT NULL,
  `grp_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '关联回复ID',
  `grp_pst_content` mediumtext NOT NULL,
  `grp_pst_state` tinyint(1) unsigned NOT NULL,
  `grp_pst_dateline` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chii_prsn_comments`
--

CREATE TABLE IF NOT EXISTS `chii_prsn_comments` (
  `prsn_pst_id` mediumint(8) unsigned NOT NULL,
  `prsn_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联人物ID',
  `prsn_pst_uid` mediumint(8) unsigned NOT NULL,
  `prsn_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prsn_pst_dateline` int(10) unsigned NOT NULL,
  `prsn_pst_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chii_subject_posts`
--

CREATE TABLE IF NOT EXISTS `chii_subject_posts` (
  `sbj_pst_id` mediumint(8) unsigned NOT NULL,
  `sbj_pst_mid` mediumint(8) unsigned NOT NULL,
  `sbj_pst_uid` mediumint(8) unsigned NOT NULL,
  `sbj_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbj_pst_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `sbj_pst_state` tinyint(1) unsigned NOT NULL,
  `sbj_pst_dateline` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_crt_comments`
--
ALTER TABLE `chii_crt_comments`
  ADD PRIMARY KEY (`crt_pst_id`),
  ADD KEY `cmt_crt_id` (`crt_pst_mid`),
  ADD KEY `crt_pst_related` (`crt_pst_related`),
  ADD KEY `crt_pst_uid` (`crt_pst_uid`);

--
-- Indexes for table `chii_ep_comments`
--
ALTER TABLE `chii_ep_comments`
  ADD PRIMARY KEY (`ep_pst_id`),
  ADD KEY `ep_cmt_crt_id` (`ep_pst_mid`),
  ADD KEY `ep_pst_related` (`ep_pst_related`),
  ADD KEY `ep_pst_uid` (`ep_pst_uid`);

--
-- Indexes for table `chii_group_posts`
--
ALTER TABLE `chii_group_posts`
  ADD PRIMARY KEY (`grp_pst_id`),
  ADD KEY `pss_topic_id` (`grp_pst_mid`),
  ADD KEY `grp_pst_related` (`grp_pst_related`),
  ADD KEY `grp_pst_uid` (`grp_pst_uid`);

--
-- Indexes for table `chii_prsn_comments`
--
ALTER TABLE `chii_prsn_comments`
  ADD PRIMARY KEY (`prsn_pst_id`),
  ADD KEY `cmt_prsn_id` (`prsn_pst_mid`),
  ADD KEY `prsn_pst_related` (`prsn_pst_related`),
  ADD KEY `prsn_pst_uid` (`prsn_pst_uid`);

--
-- Indexes for table `chii_subject_posts`
--
ALTER TABLE `chii_subject_posts`
  ADD PRIMARY KEY (`sbj_pst_id`),
  ADD KEY `pss_topic_id` (`sbj_pst_mid`),
  ADD KEY `sbj_pst_related` (`sbj_pst_related`),
  ADD KEY `sbj_pst_uid` (`sbj_pst_uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_crt_comments`
--
ALTER TABLE `chii_crt_comments`
  MODIFY `crt_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_ep_comments`
--
ALTER TABLE `chii_ep_comments`
  MODIFY `ep_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_group_posts`
--
ALTER TABLE `chii_group_posts`
  MODIFY `grp_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_prsn_comments`
--
ALTER TABLE `chii_prsn_comments`
  MODIFY `prsn_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_subject_posts`
--
ALTER TABLE `chii_subject_posts`
  MODIFY `sbj_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
