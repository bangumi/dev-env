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
-- Table structure for table `chii_tag_neue_index`
--

DROP TABLE IF EXISTS `chii_tag_neue_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_neue_index` (
  `tag_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tag_cat` tinyint(3) NOT NULL COMMENT '0=条目 1=日志 2=天窗',
  `tag_type` tinyint(3) NOT NULL,
  `tag_results` mediumint(8) unsigned NOT NULL,
  `tag_dateline` int(10) unsigned NOT NULL,
  `tag_lasttouch` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tag_cat` (`tag_cat`,`tag_type`),
  KEY `tag_results` (`tag_cat`,`tag_type`,`tag_results`),
  KEY `tag_query` (`tag_name`,`tag_cat`,`tag_type`)
) ENGINE=InnoDB AUTO_INCREMENT=416338 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
