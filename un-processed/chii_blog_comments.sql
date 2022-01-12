-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Jan 12, 2022 at 01:52 PM
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
-- Table structure for table `chii_blog_comments`
--

CREATE TABLE IF NOT EXISTS `chii_blog_comments` (
  `blg_pst_id` mediumint(8) unsigned NOT NULL,
  `blg_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联日志ID',
  `blg_pst_uid` mediumint(8) unsigned NOT NULL,
  `blg_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `blg_pst_dateline` int(10) unsigned NOT NULL,
  `blg_pst_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_blog_comments`
--
ALTER TABLE `chii_blog_comments`
  ADD PRIMARY KEY (`blg_pst_id`),
  ADD KEY `blg_cmt_eid` (`blg_pst_mid`),
  ADD KEY `blg_cmt_uid` (`blg_pst_uid`),
  ADD KEY `blg_pst_related` (`blg_pst_related`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_blog_comments`
--
ALTER TABLE `chii_blog_comments`
  MODIFY `blg_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
