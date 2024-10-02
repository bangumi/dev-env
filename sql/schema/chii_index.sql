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
-- Table structure for table `chii_index`
--

DROP TABLE IF EXISTS `chii_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_index` (
  `idx_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '自动id',
  `idx_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `idx_title` varchar(80) NOT NULL COMMENT '标题',
  `idx_desc` mediumtext NOT NULL COMMENT '简介',
  `idx_replies` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '回复数',
  `idx_subject_total` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内含条目总数',
  `idx_collects` mediumint(8) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `idx_stats` mediumtext NOT NULL,
  `idx_dateline` int(10) NOT NULL COMMENT '创建时间',
  `idx_lasttouch` int(10) unsigned NOT NULL,
  `idx_uid` mediumint(8) NOT NULL COMMENT '创建人UID',
  `idx_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mid` (`idx_id`),
  KEY `idx_ban` (`idx_ban`),
  KEY `idx_type` (`idx_type`),
  KEY `idx_uid` (`idx_uid`),
  KEY `idx_collects` (`idx_collects`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
