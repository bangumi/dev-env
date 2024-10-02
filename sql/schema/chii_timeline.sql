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
-- Table structure for table `chii_timeline`
--

DROP TABLE IF EXISTS `chii_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_timeline` (
  `tml_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tml_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tml_cat` smallint(6) unsigned NOT NULL,
  `tml_type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tml_related` char(255) NOT NULL DEFAULT '0',
  `tml_memo` mediumtext NOT NULL,
  `tml_img` mediumtext NOT NULL,
  `tml_batch` tinyint(3) unsigned NOT NULL,
  `tml_source` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '更新来源',
  `tml_replies` mediumint(8) unsigned NOT NULL COMMENT '回复数',
  `tml_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tml_id`),
  KEY `tml_uid` (`tml_uid`),
  KEY `tml_cat` (`tml_cat`),
  KEY `tml_batch` (`tml_batch`),
  KEY `query_tml_cat` (`tml_uid`,`tml_cat`),
  KEY `tml_cat_date` (`tml_uid`,`tml_cat`,`tml_dateline`)
) ENGINE=InnoDB AUTO_INCREMENT=45553754 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
