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
-- Table structure for table `chii_episodes`
--

DROP TABLE IF EXISTS `chii_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_episodes` (
  `ep_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ep_subject_id` mediumint(8) unsigned NOT NULL,
  `ep_sort` float unsigned NOT NULL DEFAULT '0',
  `ep_type` tinyint(1) unsigned NOT NULL,
  `ep_disc` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '碟片数',
  `ep_name` varchar(80) NOT NULL,
  `ep_name_cn` varchar(80) NOT NULL,
  `ep_rate` tinyint(3) NOT NULL,
  `ep_duration` varchar(80) NOT NULL,
  `ep_airdate` varchar(80) NOT NULL,
  `ep_online` mediumtext NOT NULL,
  `ep_comment` mediumint(8) unsigned NOT NULL,
  `ep_resources` mediumint(8) unsigned NOT NULL,
  `ep_desc` mediumtext NOT NULL,
  `ep_dateline` int(10) unsigned NOT NULL,
  `ep_lastpost` int(10) unsigned NOT NULL,
  `ep_lock` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ep_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ep_id`),
  KEY `ep_sort` (`ep_sort`),
  KEY `ep_disc` (`ep_disc`),
  KEY `ep_subject_id` (`ep_subject_id`),
  KEY `ep_lastpost` (`ep_lastpost`),
  KEY `ep_ban` (`ep_ban`),
  KEY `ep_subject_id_2` (`ep_subject_id`,`ep_ban`,`ep_sort`)
) ENGINE=MyISAM AUTO_INCREMENT=1405318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
