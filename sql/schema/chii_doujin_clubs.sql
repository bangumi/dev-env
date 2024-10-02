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
-- Table structure for table `chii_doujin_clubs`
--

DROP TABLE IF EXISTS `chii_doujin_clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_clubs` (
  `club_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `club_type` tinyint(3) unsigned NOT NULL COMMENT '社团类型 0=社团 1=主办方',
  `club_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `club_title` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `club_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `club_creator` mediumint(8) unsigned NOT NULL,
  `club_pro_book` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `club_pro_music` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `club_pro_game` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `club_members` mediumint(8) unsigned NOT NULL,
  `club_followers` mediumint(8) unsigned NOT NULL,
  `club_desc` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `club_builddate` int(10) unsigned NOT NULL,
  `club_lastupdate` int(10) unsigned NOT NULL,
  `club_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`club_id`),
  KEY `club_type` (`club_type`,`club_ban`),
  KEY `club_name` (`club_name`)
) ENGINE=MyISAM AUTO_INCREMENT=810747 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='社团';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
