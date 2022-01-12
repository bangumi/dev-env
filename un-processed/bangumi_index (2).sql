-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Jan 12, 2022 at 01:45 PM
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
-- Table structure for table `chii_index`
--

CREATE TABLE IF NOT EXISTS `chii_index` (
  `idx_id` mediumint(8) NOT NULL COMMENT '自动id',
  `idx_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `idx_title` varchar(80) NOT NULL COMMENT '标题',
  `idx_desc` mediumtext NOT NULL COMMENT '简介',
  `idx_replies` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '回复数',
  `idx_subject_total` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内含条目总数',
  `idx_collects` mediumint(8) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `idx_stats` mediumtext NOT NULL,
  `idx_dateline` int(10) NOT NULL COMMENT '创建时间',
  `idx_lasttouch` int(10) unsigned NOT NULL,
  `idx_uid` mediumint(8) NOT NULL COMMENT '创建人UID',
  `idx_ban` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chii_index_collects`
--

CREATE TABLE IF NOT EXISTS `chii_index_collects` (
  `idx_clt_id` mediumint(8) unsigned NOT NULL,
  `idx_clt_mid` mediumint(8) unsigned NOT NULL COMMENT '目录ID',
  `idx_clt_uid` mediumint(8) unsigned NOT NULL COMMENT '用户UID',
  `idx_clt_dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='目录收藏';

-- --------------------------------------------------------

--
-- Table structure for table `chii_index_comments`
--

CREATE TABLE IF NOT EXISTS `chii_index_comments` (
  `idx_pst_id` mediumint(8) unsigned NOT NULL,
  `idx_pst_mid` mediumint(8) unsigned NOT NULL,
  `idx_pst_uid` mediumint(8) unsigned NOT NULL,
  `idx_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idx_pst_dateline` int(10) unsigned NOT NULL,
  `idx_pst_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chii_index_related`
--

CREATE TABLE IF NOT EXISTS `chii_index_related` (
  `idx_rlt_id` mediumint(8) unsigned NOT NULL,
  `idx_rlt_cat` tinyint(3) NOT NULL,
  `idx_rlt_rid` mediumint(8) unsigned NOT NULL COMMENT '关联目录',
  `idx_rlt_type` smallint(6) unsigned NOT NULL COMMENT '关联条目类型',
  `idx_rlt_sid` mediumint(8) unsigned NOT NULL COMMENT '关联条目ID',
  `idx_rlt_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idx_rlt_comment` mediumtext NOT NULL,
  `idx_rlt_dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='目录关联表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_index`
--
ALTER TABLE `chii_index`
  ADD UNIQUE KEY `mid` (`idx_id`),
  ADD KEY `idx_ban` (`idx_ban`),
  ADD KEY `idx_type` (`idx_type`),
  ADD KEY `idx_uid` (`idx_uid`),
  ADD KEY `idx_collects` (`idx_collects`);

--
-- Indexes for table `chii_index_collects`
--
ALTER TABLE `chii_index_collects`
  ADD PRIMARY KEY (`idx_clt_id`),
  ADD KEY `idx_clt_mid` (`idx_clt_mid`,`idx_clt_uid`);

--
-- Indexes for table `chii_index_comments`
--
ALTER TABLE `chii_index_comments`
  ADD PRIMARY KEY (`idx_pst_id`),
  ADD KEY `idx_pst_mid` (`idx_pst_mid`),
  ADD KEY `idx_pst_related` (`idx_pst_related`),
  ADD KEY `idx_pst_uid` (`idx_pst_uid`);

--
-- Indexes for table `chii_index_related`
--
ALTER TABLE `chii_index_related`
  ADD PRIMARY KEY (`idx_rlt_id`),
  ADD KEY `idx_rlt_rid` (`idx_rlt_rid`,`idx_rlt_type`),
  ADD KEY `idx_rlt_sid` (`idx_rlt_rid`,`idx_rlt_sid`) USING BTREE,
  ADD KEY `idx_rlt_sid_2` (`idx_rlt_sid`),
  ADD KEY `idx_rlt_cat` (`idx_rlt_cat`),
  ADD KEY `idx_order` (`idx_rlt_rid`,`idx_rlt_cat`,`idx_rlt_order`,`idx_rlt_sid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_index`
--
ALTER TABLE `chii_index`
  MODIFY `idx_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '自动id';
--
-- AUTO_INCREMENT for table `chii_index_collects`
--
ALTER TABLE `chii_index_collects`
  MODIFY `idx_clt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_index_comments`
--
ALTER TABLE `chii_index_comments`
  MODIFY `idx_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_index_related`
--
ALTER TABLE `chii_index_related`
  MODIFY `idx_rlt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
