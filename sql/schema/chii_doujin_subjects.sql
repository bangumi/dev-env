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
-- Table structure for table `chii_doujin_subjects`
--

DROP TABLE IF EXISTS `chii_doujin_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subjects` (
  `subject_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_type` tinyint(3) unsigned NOT NULL,
  `subject_cat` tinyint(3) unsigned NOT NULL,
  `subject_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_infobox` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_desc` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_collects` mediumint(8) unsigned NOT NULL,
  `subject_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject_original` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject_sexual` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性取向',
  `subject_age_limit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '年龄限制',
  `subject_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_attr_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_creator` mediumint(8) unsigned NOT NULL,
  `subject_comment` mediumint(8) unsigned NOT NULL,
  `subject_dateline` int(10) unsigned NOT NULL,
  `subject_lasttouch` int(10) unsigned NOT NULL COMMENT '最后修改',
  `subject_lastpost` int(10) unsigned NOT NULL,
  `subject_ban` tinyint(3) unsigned NOT NULL,
  `subject_ban_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '禁止原因',
  PRIMARY KEY (`subject_id`),
  KEY `subject_cat` (`subject_type`,`subject_cat`,`subject_creator`,`subject_ban`),
  KEY `subject_sexual` (`subject_sexual`,`subject_age_limit`,`subject_original`,`subject_status`),
  KEY `subject_lastpost` (`subject_lastpost`),
  KEY `subject_creator` (`subject_creator`),
  KEY `subject_dateline` (`subject_dateline`),
  KEY `subject_type` (`subject_type`,`subject_ban`),
  KEY `subject_ban` (`subject_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=50325 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
