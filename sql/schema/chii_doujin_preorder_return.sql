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
-- Table structure for table `chii_doujin_preorder_return`
--

DROP TABLE IF EXISTS `chii_doujin_preorder_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_preorder_return` (
  `rt_id` bigint(20) unsigned NOT NULL,
  `rt_pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rt_uid` mediumint(8) unsigned NOT NULL COMMENT '提交 UID (可为空)',
  `rt_status` tinyint(1) unsigned NOT NULL COMMENT '处理状态',
  `rt_juiz` mediumint(8) unsigned NOT NULL COMMENT '受理人',
  `rt_paymail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rt_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rt_realname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rt_uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rt_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `rt_comment` text COLLATE utf8_unicode_ci NOT NULL,
  `rt_dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `rt_id_2` (`rt_id`),
  KEY `rt_id` (`rt_id`,`rt_status`),
  KEY `rt_pid` (`rt_pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
