-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 192.168.201.71    Database: bangumi
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chii_subjects`
--

DROP TABLE IF EXISTS `chii_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subjects` (
  `subject_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `subject_name` varchar(512) NOT NULL,
  `subject_name_cn` varchar(512) NOT NULL,
  `subject_uid` varchar(20) NOT NULL COMMENT 'isbn / imdb',
  `subject_creator` mediumint(8) unsigned NOT NULL,
  `subject_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `subject_image` varchar(255) NOT NULL,
  `subject_platform` smallint(6) unsigned NOT NULL DEFAULT '0',
  `field_infobox` mediumtext NOT NULL,
  `field_summary` mediumtext NOT NULL COMMENT 'summary',
  `field_5` mediumtext NOT NULL COMMENT 'author summary',
  `field_volumes` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '卷数',
  `field_eps` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_wish` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_collect` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_doing` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_on_hold` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '搁置人数',
  `subject_dropped` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '抛弃人数',
  `subject_series` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject_series_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_idx_cn` varchar(1) NOT NULL,
  `subject_airtime` tinyint(1) unsigned NOT NULL,
  `subject_nsfw` tinyint(1) NOT NULL,
  `subject_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subject_id`),
  KEY `subject_name_cn` (`subject_name_cn`),
  KEY `subject_platform` (`subject_platform`),
  KEY `subject_creator` (`subject_creator`),
  KEY `subject_series` (`subject_series`),
  KEY `subject_series_entry` (`subject_series_entry`),
  KEY `subject_airtime` (`subject_airtime`),
  KEY `subject_ban` (`subject_ban`),
  KEY `subject_idx_cn` (`subject_idx_cn`,`subject_type_id`),
  KEY `subject_type_id` (`subject_type_id`),
  KEY `subject_name` (`subject_name`),
  KEY `order_by_name` (`subject_ban`,`subject_type_id`,`subject_series`,`subject_platform`,`subject_name`) USING BTREE,
  KEY `browser` (`subject_ban`,`subject_type_id`,`subject_series`,`subject_platform`) USING BTREE,
  KEY `subject_nsfw` (`subject_nsfw`)
) ENGINE=InnoDB AUTO_INCREMENT=516363 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
