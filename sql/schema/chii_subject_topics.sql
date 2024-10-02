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
-- Table structure for table `chii_subject_topics`
--

DROP TABLE IF EXISTS `chii_subject_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_topics` (
  `sbj_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sbj_tpc_subject_id` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_uid` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_title` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `sbj_tpc_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_state` tinyint(1) unsigned NOT NULL,
  `sbj_tpc_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`sbj_tpc_id`),
  KEY `tpc_subject_id` (`sbj_tpc_subject_id`),
  KEY `tpc_display` (`sbj_tpc_display`),
  KEY `sbj_tpc_uid` (`sbj_tpc_uid`),
  KEY `sbj_tpc_lastpost` (`sbj_tpc_lastpost`,`sbj_tpc_subject_id`,`sbj_tpc_display`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
