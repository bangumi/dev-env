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
-- Table structure for table `chii_subject_fields`
--

DROP TABLE IF EXISTS `chii_subject_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_fields` (
  `field_sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_tid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `field_meta_tags` mediumtext CHARACTER SET utf8mb4 NOT NULL default '',
  `field_tags` mediumtext NOT NULL,
  `field_rate_1` mediumint(8) unsigned NOT NULL,
  `field_rate_2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_3` mediumint(8) unsigned NOT NULL,
  `field_rate_4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_5` mediumint(8) unsigned NOT NULL,
  `field_rate_6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_7` mediumint(8) unsigned NOT NULL,
  `field_rate_8` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_9` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_10` mediumint(8) unsigned NOT NULL,
  `field_airtime` tinyint(1) unsigned NOT NULL,
  `field_rank` int(10) unsigned NOT NULL DEFAULT '0',
  `field_year` year(4) NOT NULL COMMENT '放送年份',
  `field_mon` tinyint(2) NOT NULL COMMENT '放送月份',
  `field_week_day` tinyint(1) NOT NULL COMMENT '放送日(星期X)',
  `field_date` date NOT NULL COMMENT '放送日期',
  `field_redirect` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_sid`),
  KEY `sort_id` (`field_tid`),
  KEY `subject_airtime` (`field_airtime`),
  KEY `field_rank` (`field_rank`),
  KEY `field_date` (`field_date`),
  KEY `field_year_mon` (`field_year`,`field_mon`),
  KEY `field_year` (`field_year`),
  KEY `query_date` (`field_sid`,`field_date`)
) ENGINE=InnoDB AUTO_INCREMENT=516363 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
