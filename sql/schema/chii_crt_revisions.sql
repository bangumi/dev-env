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
-- Table structure for table `chii_crt_revisions`
--

DROP TABLE IF EXISTS `chii_crt_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_crt_revisions` (
  `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rev_crt_id` mediumint(8) unsigned NOT NULL,
  `rev_crt_name` varchar(80) NOT NULL,
  `rev_crt_name_cn` varchar(80) NOT NULL,
  `rev_crt_info_wiki` mediumtext NOT NULL,
  `rev_crt_summary` mediumtext NOT NULL,
  `rev_dateline` int(10) unsigned NOT NULL,
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) NOT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `rev_crt_id` (`rev_crt_id`),
  KEY `rev_crt_creator` (`rev_creator`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
