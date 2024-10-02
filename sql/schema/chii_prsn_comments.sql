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
-- Table structure for table `chii_prsn_comments`
--

DROP TABLE IF EXISTS `chii_prsn_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_prsn_comments` (
  `prsn_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `prsn_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联人物ID',
  `prsn_pst_uid` mediumint(8) unsigned NOT NULL,
  `prsn_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prsn_pst_dateline` int(10) unsigned NOT NULL,
  `prsn_pst_content` mediumtext NOT NULL,
  `prsn_pst_state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`prsn_pst_id`),
  KEY `cmt_prsn_id` (`prsn_pst_mid`),
  KEY `prsn_pst_related` (`prsn_pst_related`),
  KEY `prsn_pst_uid` (`prsn_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=169061 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
