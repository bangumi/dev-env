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
-- Table structure for table `chii_pms`
--

DROP TABLE IF EXISTS `chii_pms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_pms` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_sid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_rid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_folder` enum('inbox','outbox') NOT NULL DEFAULT 'inbox',
  `msg_new` tinyint(1) NOT NULL DEFAULT '0',
  `msg_title` varchar(75) NOT NULL,
  `msg_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_message` text NOT NULL,
  `msg_related_main` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_related` int(10) unsigned NOT NULL,
  `msg_sdeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_rdeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `msgtoid` (`msg_rid`,`msg_folder`,`msg_dateline`),
  KEY `msgfromid` (`msg_sid`,`msg_folder`,`msg_dateline`),
  KEY `pm_related` (`msg_related`),
  KEY `msg_sdeleted` (`msg_sdeleted`,`msg_rdeleted`)
) ENGINE=MyISAM AUTO_INCREMENT=341448 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
