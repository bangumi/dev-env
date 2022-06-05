-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 192.168.201.71
-- Generation Time: Jan 12, 2022 at 01:53 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1-log
-- PHP Version: 5.5.9-1ubuntu4.29


--
-- Database: `bangumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `chii_subject_related_blog`
--

CREATE TABLE IF NOT EXISTS `chii_subject_related_blog`
(
    `srb_id`         mediumint(8) unsigned NOT NULL,
    `srb_uid`        mediumint(8) unsigned NOT NULL,
    `srb_subject_id` mediumint(8) unsigned NOT NULL COMMENT '条目ID',
    `srb_entry_id`   mediumint(8) unsigned NOT NULL COMMENT '日志ID',
    `srb_spoiler`    mediumint(8) unsigned NOT NULL COMMENT '剧透',
    `srb_like`       mediumint(8) unsigned NOT NULL,
    `srb_dislike`    mediumint(8) unsigned NOT NULL,
    `srb_dateline`   int(10) unsigned      NOT NULL
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8 COMMENT ='条目关联日志';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_subject_related_blog`
--
ALTER TABLE `chii_subject_related_blog`
    ADD PRIMARY KEY (`srb_id`),
    ADD KEY `srb_uid` (`srb_uid`, `srb_subject_id`, `srb_entry_id`),
    ADD KEY `subject_related` (`srb_subject_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_subject_related_blog`
--
ALTER TABLE `chii_subject_related_blog`
    MODIFY `srb_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;



