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
-- Table structure for table `chii_memberfields`
--

DROP TABLE IF EXISTS `chii_memberfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_memberfields` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `site` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `location` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `bio` text CHARACTER SET utf8 NOT NULL,
  `homepage` mediumtext CHARACTER SET utf8 NOT NULL,
  `index_sort` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '首页排序',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ignorepm` text CHARACTER SET utf8 NOT NULL,
  `groupterms` text CHARACTER SET utf8 NOT NULL,
  `authstr` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `privacy` mediumtext CHARACTER SET utf8 NOT NULL,
  `blocklist` mediumtext CHARACTER SET utf8 NOT NULL,
  `reg_source` tinyint(1) unsigned NOT NULL,
  `invite_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `email_verified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_verify_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verify_score` float NOT NULL,
  `email_verify_dateline` int(10) unsigned NOT NULL,
  `reset_password_force` tinyint(1) unsigned NOT NULL,
  `reset_password_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reset_password_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
