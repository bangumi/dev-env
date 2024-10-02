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
-- Table structure for table `chii_subject_interests`
--

DROP TABLE IF EXISTS `chii_subject_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_interests` (
  `interest_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `interest_uid` mediumint(8) unsigned NOT NULL,
  `interest_subject_id` mediumint(8) unsigned NOT NULL,
  `interest_subject_type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `interest_rate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interest_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `interest_has_comment` tinyint(1) unsigned NOT NULL,
  `interest_comment` mediumtext NOT NULL,
  `interest_tag` mediumtext NOT NULL,
  `interest_ep_status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `interest_vol_status` mediumint(8) unsigned NOT NULL COMMENT '卷数',
  `interest_wish_dateline` int(10) unsigned NOT NULL,
  `interest_doing_dateline` int(10) unsigned NOT NULL,
  `interest_collect_dateline` int(10) unsigned NOT NULL,
  `interest_on_hold_dateline` int(10) unsigned NOT NULL,
  `interest_dropped_dateline` int(10) unsigned NOT NULL,
  `interest_create_ip` char(15) NOT NULL,
  `interest_lasttouch_ip` char(15) NOT NULL,
  `interest_lasttouch` int(10) unsigned NOT NULL DEFAULT '0',
  `interest_private` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`interest_id`),
  UNIQUE KEY `user_interest` (`interest_uid`,`interest_subject_id`),
  KEY `interest_subject_id` (`interest_subject_id`,`interest_type`),
  KEY `interest_uid` (`interest_uid`),
  KEY `interest_collect_dateline` (`interest_collect_dateline`),
  KEY `interest_private` (`interest_private`),
  KEY `interest_lasttouch` (`interest_lasttouch`),
  KEY `interest_subject_id_2` (`interest_subject_id`),
  KEY `interest_type` (`interest_type`),
  KEY `interest_subject_type` (`interest_subject_type`),
  KEY `interest_rate` (`interest_rate`),
  KEY `tag_subject_id` (`interest_subject_type`,`interest_type`,`interest_uid`) USING BTREE,
  KEY `user_collects` (`interest_subject_type`,`interest_uid`),
  KEY `subject_lasttouch` (`interest_subject_id`,`interest_private`,`interest_lasttouch`),
  KEY `subject_comment` (`interest_subject_id`,`interest_has_comment`,`interest_private`,`interest_lasttouch`) USING BTREE,
  KEY `subject_collect` (`interest_subject_id`,`interest_type`,`interest_private`,`interest_collect_dateline`),
  KEY `user_collect_type` (`interest_subject_type`,`interest_type`,`interest_uid`,`interest_private`,`interest_collect_dateline`),
  KEY `interest_id` (`interest_uid`,`interest_private`) USING BTREE,
  KEY `subject_rate` (`interest_subject_id`,`interest_rate`,`interest_private`),
  KEY `top_subject` (`interest_subject_id`,`interest_subject_type`,`interest_doing_dateline`),
  KEY `user_collect_latest` (`interest_subject_type`,`interest_type`,`interest_uid`,`interest_private`),
  KEY `interest_type_2` (`interest_type`,`interest_uid`),
  KEY `interest_uid_2` (`interest_uid`,`interest_private`,`interest_lasttouch`)
) ENGINE=InnoDB AUTO_INCREMENT=33805614 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
