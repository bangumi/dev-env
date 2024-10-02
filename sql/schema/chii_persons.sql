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
-- Table structure for table `chii_persons`
--

DROP TABLE IF EXISTS `chii_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_persons` (
  `prsn_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `prsn_name` varchar(255) NOT NULL,
  `prsn_type` tinyint(4) unsigned NOT NULL COMMENT '个人，公司，组合',
  `prsn_infobox` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prsn_producer` tinyint(1) NOT NULL,
  `prsn_mangaka` tinyint(1) NOT NULL,
  `prsn_artist` tinyint(1) NOT NULL,
  `prsn_seiyu` tinyint(1) NOT NULL,
  `prsn_writer` tinyint(4) NOT NULL DEFAULT '0' COMMENT '作家',
  `prsn_illustrator` tinyint(4) NOT NULL DEFAULT '0' COMMENT '绘师',
  `prsn_actor` tinyint(1) NOT NULL COMMENT '演员',
  `prsn_summary` mediumtext NOT NULL,
  `prsn_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prsn_img_anidb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prsn_comment` mediumint(9) unsigned NOT NULL,
  `prsn_collects` mediumint(8) unsigned NOT NULL,
  `prsn_dateline` int(10) unsigned NOT NULL,
  `prsn_lastpost` int(11) unsigned NOT NULL,
  `prsn_lock` tinyint(4) NOT NULL,
  `prsn_anidb_id` mediumint(8) unsigned NOT NULL,
  `prsn_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prsn_redirect` int(10) unsigned NOT NULL DEFAULT '0',
  `prsn_nsfw` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`prsn_id`),
  KEY `prsn_type` (`prsn_type`),
  KEY `prsn_producer` (`prsn_producer`),
  KEY `prsn_mangaka` (`prsn_mangaka`),
  KEY `prsn_artist` (`prsn_artist`),
  KEY `prsn_seiyu` (`prsn_seiyu`),
  KEY `prsn_writer` (`prsn_writer`),
  KEY `prsn_illustrator` (`prsn_illustrator`),
  KEY `prsn_lock` (`prsn_lock`),
  KEY `prsn_ban` (`prsn_ban`),
  KEY `prsn_actor` (`prsn_actor`)
) ENGINE=InnoDB AUTO_INCREMENT=68523 DEFAULT CHARSET=utf8mb4 COMMENT='（现实）人物表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
