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
-- Table structure for table `chii_characters`
--

DROP TABLE IF EXISTS `chii_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_characters` (
  `crt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `crt_name` varchar(255) NOT NULL,
  `crt_role` tinyint(4) unsigned NOT NULL COMMENT '角色，机体，组织。。',
  `crt_infobox` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crt_summary` mediumtext NOT NULL,
  `crt_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crt_comment` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `crt_collects` mediumint(8) unsigned NOT NULL,
  `crt_dateline` int(10) unsigned NOT NULL,
  `crt_lastpost` int(11) unsigned NOT NULL,
  `crt_lock` tinyint(4) NOT NULL DEFAULT '0',
  `crt_img_anidb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `crt_anidb_id` mediumint(8) unsigned NOT NULL,
  `crt_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crt_redirect` int(10) unsigned NOT NULL DEFAULT '0',
  `crt_nsfw` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`crt_id`),
  KEY `crt_role` (`crt_role`),
  KEY `crt_lock` (`crt_lock`),
  KEY `crt_ban` (`crt_ban`),
  KEY `crt_collects` (`crt_collects`),
  KEY `crt_comment` (`crt_comment`)
) ENGINE=InnoDB AUTO_INCREMENT=165172 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
