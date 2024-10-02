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
-- Table structure for table `chii_gadgets`
--

DROP TABLE IF EXISTS `chii_gadgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_gadgets` (
  `gdt_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `gdt_app_id` mediumint(8) NOT NULL,
  `gdt_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gdt_creator` mediumint(8) NOT NULL,
  `gdt_script` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gdt_style` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gdt_has_script` tinyint(1) NOT NULL,
  `gdt_has_style` tinyint(1) NOT NULL,
  `gdt_status` tinyint(1) NOT NULL,
  `gdt_edit_summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gdt_timestamp` int(10) NOT NULL,
  `gdt_lasttouch` int(10) NOT NULL,
  PRIMARY KEY (`gdt_id`),
  KEY `gdt_app_id` (`gdt_app_id`,`gdt_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
