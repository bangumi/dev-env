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
-- Table structure for table `chii_issues`
--

DROP TABLE IF EXISTS `chii_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_issues` (
  `isu_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isu_type` tinyint(3) unsigned NOT NULL,
  `isu_main_id` mediumint(8) unsigned NOT NULL,
  `isu_value` mediumint(8) unsigned NOT NULL,
  `isu_creator` mediumint(8) unsigned NOT NULL,
  `isu_operator` mediumint(8) unsigned NOT NULL,
  `isu_status` tinyint(3) unsigned NOT NULL,
  `isu_reason` mediumtext NOT NULL,
  `isu_related` mediumint(8) unsigned NOT NULL,
  `isu_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isu_id`),
  KEY `isu_type` (`isu_type`,`isu_main_id`,`isu_creator`,`isu_operator`,`isu_status`),
  KEY `isu_value` (`isu_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
