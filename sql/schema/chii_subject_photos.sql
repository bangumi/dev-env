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
-- Table structure for table `chii_subject_photos`
--

DROP TABLE IF EXISTS `chii_subject_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_photos` (
  `sbj_photo_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sbj_photo_type` tinyint(3) unsigned NOT NULL,
  `sbj_photo_mid` mediumint(8) unsigned NOT NULL,
  `sbj_photo_uid` mediumint(8) unsigned NOT NULL,
  `sbj_photo_target` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sbj_photo_title` varchar(1024) CHARACTER SET utf8mb4 NOT NULL,
  `sbj_photo_comment` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `sbj_photo_tags` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sbj_photo_spoiler` tinyint(3) unsigned NOT NULL,
  `sbj_photo_dateline` int(10) unsigned NOT NULL,
  `sbj_photo_lasttouch` int(10) unsigned NOT NULL,
  `sbj_photo_lastpost` int(10) unsigned NOT NULL,
  `sbj_photo_ban` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`sbj_photo_id`),
  KEY `sbj_photo_uid` (`sbj_photo_uid`),
  KEY `sbj_photo_mid` (`sbj_photo_type`,`sbj_photo_mid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
