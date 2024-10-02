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
-- Table structure for table `chii_magi_questions`
--

DROP TABLE IF EXISTS `chii_magi_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_magi_questions` (
  `qst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `qst_type` tinyint(3) unsigned NOT NULL,
  `qst_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `qst_options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `qst_answer` tinyint(1) unsigned NOT NULL,
  `qst_relate_type` tinyint(3) unsigned NOT NULL,
  `qst_related` mediumint(8) unsigned NOT NULL,
  `qst_correct` mediumint(8) unsigned NOT NULL,
  `qst_answered` mediumint(8) unsigned NOT NULL,
  `qst_creator` mediumint(8) unsigned NOT NULL,
  `qst_dateline` int(10) unsigned NOT NULL,
  `qst_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qst_id`),
  KEY `qst_type` (`qst_type`),
  KEY `related` (`qst_relate_type`,`qst_related`),
  KEY `qst_ban` (`qst_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=9143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
