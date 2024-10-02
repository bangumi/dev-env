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
-- Table structure for table `chii_members`
--

DROP TABLE IF EXISTS `chii_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_members` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL,
  `password_crypt` char(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `secques` char(8) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `regip` char(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `email` char(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateformat` char(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `timeformat` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `timeoffset` char(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `new_notify` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '新提醒',
  `username_lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ukagaka_settings` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0|0|0',
  `acl` mediumtext NOT NULL,
  `img_chart` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sign` varchar(255) CHARACTER SET utf8 NOT NULL,
  `invited` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否参与新功能测试',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=920208 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
