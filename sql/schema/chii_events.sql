-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
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
-- Table structure for table `chii_events`
--

DROP TABLE IF EXISTS `chii_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_type` tinyint(4) unsigned NOT NULL,
  `event_creator` int(10) unsigned NOT NULL,
  `event_start_time` int(10) unsigned NOT NULL,
  `event_end_time` int(10) unsigned NOT NULL,
  `event_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_state` mediumint(8) unsigned NOT NULL,
  `event_city` mediumint(8) unsigned NOT NULL,
  `event_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `event_wish` mediumint(8) unsigned NOT NULL,
  `event_do` mediumint(8) unsigned NOT NULL,
  `event_buildtime` int(10) unsigned NOT NULL,
  `event_lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_type` (`event_type`),
  KEY `event_area` (`event_city`),
  KEY `event_startTime` (`event_start_time`),
  KEY `event_endTime` (`event_end_time`),
  KEY `event_lastupdate` (`event_lastupdate`),
  KEY `event_buildtime` (`event_buildtime`),
  KEY `event_creator` (`event_creator`),
  KEY `event_state` (`event_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
