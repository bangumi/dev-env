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
-- Table structure for table `chii_person_cs_index`
--

DROP TABLE IF EXISTS `chii_person_cs_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_person_cs_index` (
  `prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `prsn_position` smallint(5) unsigned NOT NULL COMMENT '监督，原案，脚本,..',
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(4) unsigned NOT NULL,
  `summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `prsn_appear_eps` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，人物参与的章节',
  PRIMARY KEY (`prsn_type`,`prsn_id`,`subject_id`,`prsn_position`),
  KEY `subject_id` (`subject_id`),
  KEY `prsn_position` (`prsn_position`),
  KEY `prsn_id` (`prsn_id`),
  KEY `subject_type_id` (`subject_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='subjects'' credits/creator & staff (c&s)index';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
