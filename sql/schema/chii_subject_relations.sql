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
-- Table structure for table `chii_subject_relations`
--

DROP TABLE IF EXISTS `chii_subject_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_relations` (
  `rlt_subject_id` mediumint(8) unsigned NOT NULL COMMENT '关联主 ID',
  `rlt_subject_type_id` tinyint(3) unsigned NOT NULL,
  `rlt_relation_type` smallint(5) unsigned NOT NULL COMMENT '关联类型',
  `rlt_related_subject_id` mediumint(8) unsigned NOT NULL COMMENT '关联目标 ID',
  `rlt_related_subject_type_id` tinyint(3) unsigned NOT NULL COMMENT '关联目标类型',
  `rlt_vice_versa` tinyint(1) unsigned NOT NULL,
  `rlt_order` smallint(6) unsigned NOT NULL COMMENT '关联排序',
  UNIQUE KEY `rlt_subject_id` (`rlt_subject_id`,`rlt_related_subject_id`,`rlt_vice_versa`),
  KEY `rlt_related_subject_type_id` (`rlt_related_subject_type_id`,`rlt_order`),
  KEY `rlt_subject_type_id` (`rlt_subject_type_id`),
  KEY `rlt_relation_type` (`rlt_relation_type`,`rlt_subject_id`,`rlt_related_subject_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='条目关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
