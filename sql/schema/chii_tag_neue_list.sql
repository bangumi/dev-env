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
-- Table structure for table `chii_tag_neue_list`
--

DROP TABLE IF EXISTS `chii_tag_neue_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_neue_list` (
  `tlt_tid` mediumint(8) unsigned NOT NULL,
  `tlt_uid` mediumint(8) unsigned NOT NULL,
  `tlt_cat` tinyint(3) unsigned NOT NULL,
  `tlt_type` tinyint(3) unsigned NOT NULL,
  `tlt_mid` mediumint(8) unsigned NOT NULL,
  `tlt_dateline` int(10) unsigned NOT NULL,
  KEY `tlt_tid` (`tlt_tid`,`tlt_uid`,`tlt_cat`,`tlt_type`,`tlt_mid`),
  KEY `user_tags` (`tlt_uid`,`tlt_cat`,`tlt_mid`,`tlt_tid`),
  KEY `subject_tags` (`tlt_cat`,`tlt_mid`,`tlt_tid`),
  KEY `tag_to_subject` (`tlt_tid`,`tlt_mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
