-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
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
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `chii_persons`
--
-- WHERE:  prsn_ban != 0 ORDER BY prsn_id LIMIT 3

LOCK TABLES `chii_persons` WRITE;
/*!40000 ALTER TABLE `chii_persons` DISABLE KEYS */;
REPLACE INTO `chii_persons` VALUES (153,'葉月九ロウ',1,'{{Infobox Crt\n|性别= 男\n|别名={\n[纯假名|はづき きゅうろう]\n[罗马字|Hazuki Kyuurou]\n[日文名|葉月九ロウ]\n}\n}}',1,0,0,0,0,0,0,'','b3/e3/153_prsn_anidb.jpg','http://img7.anidb.net/pics/anime/18265.jpg',0,0,0,0,0,7507,1,529,0),(330,'桜庭統',1,'{{Infobox Crt\n|生日= 1965-08-05\n|性别= 男\n|别名={\n[罗马字|Sakuraba Motoi]\n[日文名|桜庭統]\n}\n}}',1,0,0,0,0,0,0,'','fe/73/330_prsn_anidb.jpg','http://img7.anidb.net/pics/anime/31244.jpg',0,0,0,0,0,6647,1,6989,0),(341,'SPE・ビジュアルワークス',2,'{{Infobox Crt\n|别名={\n[日文名|SPE・ビジュアルワークス]\n[罗马字|SPE Visual Works]\n}\n}}',1,0,0,0,0,0,0,'','','',1,1,0,1582048896,0,842,1,645,0);
/*!40000 ALTER TABLE `chii_persons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16  9:19:20
