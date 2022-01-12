-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Jan 09, 2022 at 02:38 PM
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
-- Table structure for table `chii_timeline`
--

CREATE TABLE IF NOT EXISTS `chii_timeline` (
  `tml_id` int(10) unsigned NOT NULL,
  `tml_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tml_cat` smallint(6) unsigned NOT NULL,
  `tml_type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tml_related` char(255) NOT NULL DEFAULT '0',
  `tml_memo` mediumtext NOT NULL,
  `tml_img` mediumtext NOT NULL,
  `tml_batch` tinyint(3) unsigned NOT NULL,
  `tml_source` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '更新来源',
  `tml_replies` mediumint(8) unsigned NOT NULL COMMENT '回复数',
  `tml_dateline` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_timeline`
--
ALTER TABLE `chii_timeline`
  ADD PRIMARY KEY (`tml_id`),
  ADD KEY `tml_uid` (`tml_uid`),
  ADD KEY `tml_cat` (`tml_cat`),
  ADD KEY `tml_batch` (`tml_batch`),
  ADD KEY `query_tml_cat` (`tml_uid`,`tml_cat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_timeline`
--
ALTER TABLE `chii_timeline`
  MODIFY `tml_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
