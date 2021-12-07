-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 06, 2021 at 02:11 PM
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
-- Table structure for table `chii_characters`
--

CREATE TABLE IF NOT EXISTS `chii_characters` (
  `crt_id` mediumint(8) unsigned NOT NULL,
  `crt_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crt_role` tinyint(4) unsigned NOT NULL COMMENT '角色，机体，组织。。',
  `crt_infobox` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `crt_summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `crt_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crt_comment` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `crt_collects` mediumint(8) unsigned NOT NULL,
  `crt_dateline` int(10) unsigned NOT NULL,
  `crt_lastpost` int(11) unsigned NOT NULL,
  `crt_lock` tinyint(4) NOT NULL DEFAULT '0',
  `crt_img_anidb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `crt_anidb_id` mediumint(8) unsigned NOT NULL,
  `crt_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crt_redirect` int(10) unsigned NOT NULL DEFAULT '0',
  `crt_nsfw` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chii_crt_cast_index`
--

CREATE TABLE IF NOT EXISTS `chii_crt_cast_index` (
  `crt_id` mediumint(9) unsigned NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(3) unsigned NOT NULL COMMENT '根据人物归类查询角色，动画，书籍，游戏',
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '幼年，男乱马，女乱马，变身形态，少女形态。。'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chii_crt_subject_index`
--

CREATE TABLE IF NOT EXISTS `chii_crt_subject_index` (
  `crt_id` mediumint(9) unsigned NOT NULL,
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(4) unsigned NOT NULL,
  `crt_type` tinyint(4) unsigned NOT NULL COMMENT '主角，配角',
  `ctr_appear_eps` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，角色出场的的章节',
  `crt_order` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chii_persons`
--

CREATE TABLE IF NOT EXISTS `chii_persons` (
  `prsn_id` mediumint(8) unsigned NOT NULL,
  `prsn_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prsn_type` tinyint(4) unsigned NOT NULL COMMENT '个人，公司，组合',
  `prsn_infobox` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `prsn_producer` tinyint(1) NOT NULL,
  `prsn_mangaka` tinyint(1) NOT NULL,
  `prsn_artist` tinyint(1) NOT NULL,
  `prsn_seiyu` tinyint(1) NOT NULL,
  `prsn_writer` tinyint(4) NOT NULL DEFAULT '0' COMMENT '作家',
  `prsn_illustrator` tinyint(4) NOT NULL DEFAULT '0' COMMENT '绘师',
  `prsn_actor` tinyint(1) NOT NULL COMMENT '演员',
  `prsn_summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `prsn_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prsn_img_anidb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prsn_comment` mediumint(9) unsigned NOT NULL,
  `prsn_collects` mediumint(8) unsigned NOT NULL,
  `prsn_dateline` int(10) unsigned NOT NULL,
  `prsn_lastpost` int(11) unsigned NOT NULL,
  `prsn_lock` tinyint(4) NOT NULL,
  `prsn_anidb_id` mediumint(8) unsigned NOT NULL,
  `prsn_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prsn_redirect` int(10) unsigned NOT NULL DEFAULT '0',
  `prsn_nsfw` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='（现实）人物表';

-- --------------------------------------------------------

--
-- Table structure for table `chii_person_alias`
--

CREATE TABLE IF NOT EXISTS `chii_person_alias` (
  `prsn_cat` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `alias_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_type` tinyint(4) unsigned NOT NULL,
  `alias_key` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chii_person_collects`
--

CREATE TABLE IF NOT EXISTS `chii_person_collects` (
  `prsn_clt_id` mediumint(8) unsigned NOT NULL,
  `prsn_clt_cat` enum('prsn','crt') NOT NULL,
  `prsn_clt_mid` mediumint(8) unsigned NOT NULL,
  `prsn_clt_uid` mediumint(8) unsigned NOT NULL,
  `prsn_clt_dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人物收藏';

-- --------------------------------------------------------

--
-- Table structure for table `chii_person_cs_index`
--

CREATE TABLE IF NOT EXISTS `chii_person_cs_index` (
  `prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `prsn_position` smallint(5) unsigned NOT NULL COMMENT '监督，原案，脚本,..',
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(4) unsigned NOT NULL,
  `summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `prsn_appear_eps` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，人物参与的章节'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='subjects'' credits/creator & staff (c&s)index';

-- --------------------------------------------------------

--
-- Table structure for table `chii_person_fields`
--

CREATE TABLE IF NOT EXISTS `chii_person_fields` (
  `prsn_cat` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` int(8) unsigned NOT NULL,
  `gender` tinyint(4) unsigned NOT NULL,
  `bloodtype` tinyint(4) unsigned NOT NULL,
  `birth_year` year(4) NOT NULL,
  `birth_mon` tinyint(2) unsigned NOT NULL,
  `birth_day` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chii_person_relationship`
--

CREATE TABLE IF NOT EXISTS `chii_person_relationship` (
  `prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `relat_prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `relat_prsn_id` mediumint(9) unsigned NOT NULL,
  `relat_type` smallint(6) unsigned NOT NULL COMMENT '任职于，从属,聘用,嫁给，'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_characters`
--
ALTER TABLE `chii_characters`
  ADD PRIMARY KEY (`crt_id`),
  ADD KEY `crt_role` (`crt_role`),
  ADD KEY `crt_lock` (`crt_lock`),
  ADD KEY `crt_ban` (`crt_ban`);

--
-- Indexes for table `chii_crt_cast_index`
--
ALTER TABLE `chii_crt_cast_index`
  ADD PRIMARY KEY (`crt_id`,`prsn_id`,`subject_id`),
  ADD KEY `prsn_id` (`prsn_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `subject_type_id` (`subject_type_id`);

--
-- Indexes for table `chii_crt_subject_index`
--
ALTER TABLE `chii_crt_subject_index`
  ADD PRIMARY KEY (`crt_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `crt_type` (`crt_type`),
  ADD KEY `subject_type_id` (`subject_type_id`);

--
-- Indexes for table `chii_persons`
--
ALTER TABLE `chii_persons`
  ADD PRIMARY KEY (`prsn_id`),
  ADD KEY `prsn_type` (`prsn_type`),
  ADD KEY `prsn_producer` (`prsn_producer`),
  ADD KEY `prsn_mangaka` (`prsn_mangaka`),
  ADD KEY `prsn_artist` (`prsn_artist`),
  ADD KEY `prsn_seiyu` (`prsn_seiyu`),
  ADD KEY `prsn_writer` (`prsn_writer`),
  ADD KEY `prsn_illustrator` (`prsn_illustrator`),
  ADD KEY `prsn_lock` (`prsn_lock`),
  ADD KEY `prsn_ban` (`prsn_ban`),
  ADD KEY `prsn_actor` (`prsn_actor`);

--
-- Indexes for table `chii_person_alias`
--
ALTER TABLE `chii_person_alias`
  ADD KEY `prsn_cat` (`prsn_cat`,`prsn_id`),
  ADD KEY `prsn_id` (`prsn_id`);

--
-- Indexes for table `chii_person_collects`
--
ALTER TABLE `chii_person_collects`
  ADD PRIMARY KEY (`prsn_clt_id`),
  ADD KEY `prsn_clt_cat` (`prsn_clt_cat`,`prsn_clt_mid`),
  ADD KEY `prsn_clt_uid` (`prsn_clt_uid`),
  ADD KEY `prsn_clt_mid` (`prsn_clt_mid`);

--
-- Indexes for table `chii_person_cs_index`
--
ALTER TABLE `chii_person_cs_index`
  ADD PRIMARY KEY (`prsn_type`,`prsn_id`,`subject_id`,`prsn_position`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `prsn_position` (`prsn_position`),
  ADD KEY `prsn_id` (`prsn_id`),
  ADD KEY `subject_type_id` (`subject_type_id`);

--
-- Indexes for table `chii_person_fields`
--
ALTER TABLE `chii_person_fields`
  ADD PRIMARY KEY (`prsn_cat`,`prsn_id`),
  ADD KEY `prsn_id` (`prsn_id`);

--
-- Indexes for table `chii_person_relationship`
--
ALTER TABLE `chii_person_relationship`
  ADD KEY `prsn_type` (`prsn_type`,`prsn_id`),
  ADD KEY `relat_prsn_type` (`relat_prsn_type`,`relat_prsn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_characters`
--
ALTER TABLE `chii_characters`
  MODIFY `crt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_persons`
--
ALTER TABLE `chii_persons`
  MODIFY `prsn_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chii_person_collects`
--
ALTER TABLE `chii_person_collects`
  MODIFY `prsn_clt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
