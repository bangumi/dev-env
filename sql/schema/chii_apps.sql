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
-- Table structure for table `chii_apps`
--

DROP TABLE IF EXISTS `chii_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_apps` (
  `app_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `app_type` tinyint(1) NOT NULL,
  `app_creator` mediumint(8) NOT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_url` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_is_third_party` tinyint(1) unsigned NOT NULL,
  `app_collects` mediumint(8) NOT NULL,
  `app_status` tinyint(1) NOT NULL,
  `app_timestamp` int(10) NOT NULL,
  `app_lasttouch` int(10) NOT NULL,
  `app_ban` tinyint(1) NOT NULL,
  PRIMARY KEY (`app_id`),
  KEY `app_type` (`app_type`,`app_creator`),
  KEY `app_ban` (`app_ban`),
  KEY `app_status` (`app_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
