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
-- Table structure for table `chii_index_related`
--

DROP TABLE IF EXISTS `chii_index_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_index_related` (
  `idx_rlt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idx_rlt_cat` tinyint(3) NOT NULL,
  `idx_rlt_rid` mediumint(8) unsigned NOT NULL COMMENT '关联目录',
  `idx_rlt_type` smallint(6) unsigned NOT NULL COMMENT '关联条目类型',
  `idx_rlt_sid` mediumint(8) unsigned NOT NULL COMMENT '关联条目ID',
  `idx_rlt_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idx_rlt_comment` mediumtext NOT NULL,
  `idx_rlt_dateline` int(10) unsigned NOT NULL,
  `idx_rlt_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idx_rlt_id`),
  KEY `idx_rlt_rid` (`idx_rlt_rid`,`idx_rlt_type`),
  KEY `idx_rlt_sid` (`idx_rlt_rid`,`idx_rlt_sid`) USING BTREE,
  KEY `idx_rlt_sid_2` (`idx_rlt_sid`),
  KEY `idx_rlt_cat` (`idx_rlt_cat`),
  KEY `idx_order` (`idx_rlt_rid`,`idx_rlt_cat`,`idx_rlt_order`,`idx_rlt_sid`) USING BTREE,
  KEY `idx_rlt_ban` (`idx_rlt_ban`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='目录关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
