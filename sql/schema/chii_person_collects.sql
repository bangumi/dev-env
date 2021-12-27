-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Dec 27, 2021 at 03:34 AM
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
-- Table structure for table `chii_person_collects`
--

CREATE TABLE IF NOT EXISTS `chii_person_collects` (
  `prsn_clt_id` mediumint(8) unsigned NOT NULL,
  `prsn_clt_cat` enum('prsn','crt') NOT NULL,
  `prsn_clt_mid` mediumint(8) unsigned NOT NULL,
  `prsn_clt_uid` mediumint(8) unsigned NOT NULL,
  `prsn_clt_dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人物收藏';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_person_collects`
--
ALTER TABLE `chii_person_collects`
  ADD PRIMARY KEY (`prsn_clt_id`),
  ADD KEY `prsn_clt_cat` (`prsn_clt_cat`,`prsn_clt_mid`),
  ADD KEY `prsn_clt_uid` (`prsn_clt_uid`),
  ADD KEY `prsn_clt_mid` (`prsn_clt_mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_person_collects`
--
ALTER TABLE `chii_person_collects`
  MODIFY `prsn_clt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
