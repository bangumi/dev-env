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
-- Table structure for table `chii_robot_personality`
--

DROP TABLE IF EXISTS `chii_robot_personality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_robot_personality` (
  `rbt_psn_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rbt_psn_name` varchar(255) NOT NULL COMMENT '人格名',
  `rbt_psn_creator` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '创建者',
  `rbt_psn_desc` mediumtext NOT NULL COMMENT '简介',
  `rbt_psn_speech` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '句库总数',
  `rbt_psn_ban` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否屏蔽 0=不屏蔽，1=屏蔽',
  `rbt_psn_lasttouch` int(10) unsigned NOT NULL COMMENT '最后修改',
  `rbt_psn_dateline` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`rbt_psn_id`),
  KEY `rbt_psn_ban` (`rbt_psn_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=1405 DEFAULT CHARSET=utf8 COMMENT='伪春菜人格';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
