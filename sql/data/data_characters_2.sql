-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: 192.168.201.71    Database: bangumi
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Dumping data for table `chii_characters`
--
-- WHERE:  crt_ban != 0 ORDER BY crt_id LIMIT 3

LOCK TABLES `chii_characters` WRITE;
/*!40000 ALTER TABLE `chii_characters`
    DISABLE KEYS */;
REPLACE INTO `chii_characters`
VALUES (55, '国崎往人', 1, '{{Infobox Crt\n|简体中文名=国崎往人\n|声优=\n|性别=男\n|生日=\n|血型=\n|身高=\n|体重=\n|BWH=\n}}',
        'くにさき ゆきと：\r\n男主角（游戏中可以更改名字），背负著传承了近1000年的使命：寻找并解救“天空中的女孩”。他从母亲身上学到操纵玩偶的特殊能力，以表演玩偶为生，四处旅行。在一个海边小镇上认识了神尾观铃并且暂时寄宿在她家。喜欢吃的食物是拉面套餐。最终献出自身以完成拯救神奈灵魂的使命。',
        'bd/ba/55_crt_8e8o4.jpg', 0, 1, 0, 0, 0, '', 0, 1, 52, 0),
       (82, 'つんく♂，', 1, '{{Infobox Crt\n|简体中文名=淳君\n|声优=\n|性别=男\n|生日=\n|血型=\n|身高=\n|体重=\n|BWH=\n}}',
        'Hello! Project的全权制作人。本名寺田光男 (てらだみつお)。原本是80年代末90年代初著名摇滚乐队シャ乱Q的主唱，中文翻译作射乱Q。在乐队解散后，淳君退居幕后，发掘培养了早安美少女这个如日中天的组合，此后还有松浦亚弥等也都是他一手栽培的。以此为中心，建立了专门培养女性偶像的团体Hello! Projec，隶属在大型演艺经纪公司UP-FRONT AGENCY(UFA)旗下。Hello! Projec几乎的歌曲都由淳君担任制作人，并且作词作曲。通常他在个人活动和担任制作人时使用艺名つんく♂，作词作曲时使用つんく。《节奏天国》两作游戏，也都是他担任制作人的。',
        '97/78/82_5d219c5080b9a6a17bef029331c_2r4GW.jpg', 0, 1, 0, 0, 0, '', 0, 1, 30114, 0),
       (202, '本田 透（ほんだ とおる）', 1, '{{Infobox Crt\n|简体中文名=本田　透\n|声优=\n|性别=女\n|生日=\n|血型=\n|身高=\n|体重=\n|BWH=\n}}',
        '16岁，故事的主要人物，妈妈去世后便成了孤儿，很想让自己属不是十二生肖中的猫，和草摩家的草摩紫吴、草摩由希、草摩夹住在一起，负责他们的家务。小透性格开朗，不知不觉中影响了大家的性格。',
        '85/4d/202_fae5ee42911677c739ee1734486_7jQ9E.jpg', 0, 6, 0, 0, 0, '', 0, 1, 276, 0);
/*!40000 ALTER TABLE `chii_characters`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;
