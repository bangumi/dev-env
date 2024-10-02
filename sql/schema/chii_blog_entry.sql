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
-- Table structure for table `chii_blog_entry`
--

DROP TABLE IF EXISTS `chii_blog_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_blog_entry` (
  `entry_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `entry_type` smallint(6) unsigned NOT NULL,
  `entry_uid` mediumint(8) unsigned NOT NULL,
  `entry_title` varchar(80) NOT NULL,
  `entry_icon` varchar(255) NOT NULL,
  `entry_content` mediumtext NOT NULL,
  `entry_tags` mediumtext NOT NULL,
  `entry_views` mediumint(8) unsigned NOT NULL,
  `entry_replies` mediumint(8) unsigned NOT NULL,
  `entry_dateline` int(10) unsigned NOT NULL,
  `entry_lastpost` int(10) unsigned NOT NULL,
  `entry_like` int(8) unsigned NOT NULL,
  `entry_dislike` int(8) unsigned NOT NULL,
  `entry_noreply` smallint(3) unsigned NOT NULL,
  `entry_related` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `entry_public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry_id`),
  KEY `entry_type` (`entry_type`,`entry_uid`,`entry_noreply`),
  KEY `entry_relate` (`entry_related`),
  KEY `entry_public` (`entry_public`),
  KEY `entry_dateline` (`entry_dateline`),
  KEY `entry_uid` (`entry_uid`,`entry_public`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
