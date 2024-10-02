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
-- Table structure for table `chii_index_comments`
--

DROP TABLE IF EXISTS `chii_index_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_index_comments` (
  `idx_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idx_pst_mid` mediumint(8) unsigned NOT NULL,
  `idx_pst_uid` mediumint(8) unsigned NOT NULL,
  `idx_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idx_pst_dateline` int(10) unsigned NOT NULL,
  `idx_pst_content` mediumtext NOT NULL,
  PRIMARY KEY (`idx_pst_id`),
  KEY `idx_pst_mid` (`idx_pst_mid`),
  KEY `idx_pst_related` (`idx_pst_related`),
  KEY `idx_pst_uid` (`idx_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=84454 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
