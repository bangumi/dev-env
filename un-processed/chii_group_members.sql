-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Jan 12, 2022 at 01:57 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1-log
-- PHP Version: 5.5.9-1ubuntu4.29


--
-- Database: `bangumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `chii_group_members`
--

CREATE TABLE IF NOT EXISTS `chii_group_members`
(
    `gmb_uid`       mediumint(8)     NOT NULL DEFAULT '0',
    `gmb_gid`       smallint(6)      NOT NULL DEFAULT '0',
    `gmb_moderator` tinyint(1)       NOT NULL DEFAULT '0',
    `gmb_dateline`  int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_group_members`
--
ALTER TABLE `chii_group_members`
    ADD PRIMARY KEY (`gmb_uid`, `gmb_gid`);




