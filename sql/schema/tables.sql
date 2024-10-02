-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
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
-- Table structure for table `chii_app_collects`
--

DROP TABLE IF EXISTS `chii_app_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_app_collects` (
  `app_clt_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `app_clt_app_id` mediumint(8) NOT NULL,
  `app_clt_uid` mediumint(8) NOT NULL,
  `app_clt_dateline` int(10) NOT NULL,
  PRIMARY KEY (`app_clt_id`),
  KEY `amb_app_id` (`app_clt_app_id`,`app_clt_uid`),
  KEY `app_clt_uid` (`app_clt_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=253452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_apps`
--

DROP TABLE IF EXISTS `chii_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_apps` (
  `app_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `app_type` tinyint(1) NOT NULL,
  `app_creator` mediumint(8) NOT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_url` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_is_third_party` tinyint(1) unsigned NOT NULL,
  `app_collects` mediumint(8) NOT NULL,
  `app_status` tinyint(1) NOT NULL,
  `app_timestamp` int(10) NOT NULL,
  `app_lasttouch` int(10) NOT NULL,
  `app_ban` tinyint(1) NOT NULL,
  PRIMARY KEY (`app_id`),
  KEY `app_type` (`app_type`,`app_creator`),
  KEY `app_ban` (`app_ban`),
  KEY `app_status` (`app_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_blog_comments`
--

DROP TABLE IF EXISTS `chii_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_blog_comments` (
  `blg_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `blg_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联日志ID',
  `blg_pst_uid` mediumint(8) unsigned NOT NULL,
  `blg_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `blg_pst_dateline` int(10) unsigned NOT NULL,
  `blg_pst_content` mediumtext NOT NULL,
  PRIMARY KEY (`blg_pst_id`),
  KEY `blg_cmt_eid` (`blg_pst_mid`),
  KEY `blg_cmt_uid` (`blg_pst_uid`),
  KEY `blg_pst_related` (`blg_pst_related`)
) ENGINE=InnoDB AUTO_INCREMENT=282215 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_blog_entry`
--

DROP TABLE IF EXISTS `chii_blog_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_blog_entry` (
  `entry_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `entry_type` smallint(6) unsigned NOT NULL,
  `entry_uid` mediumint(8) unsigned NOT NULL,
  `entry_title` varchar(80) NOT NULL,
  `entry_icon` varchar(255) NOT NULL,
  `entry_content` mediumtext NOT NULL,
  `entry_tags` mediumtext NOT NULL,
  `entry_views` mediumint(8) unsigned NOT NULL,
  `entry_replies` mediumint(8) unsigned NOT NULL,
  `entry_dateline` int(10) unsigned NOT NULL,
  `entry_lastpost` int(10) unsigned NOT NULL,
  `entry_like` int(8) unsigned NOT NULL,
  `entry_dislike` int(8) unsigned NOT NULL,
  `entry_noreply` smallint(3) unsigned NOT NULL,
  `entry_related` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `entry_public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry_id`),
  KEY `entry_type` (`entry_type`,`entry_uid`,`entry_noreply`),
  KEY `entry_relate` (`entry_related`),
  KEY `entry_public` (`entry_public`),
  KEY `entry_dateline` (`entry_dateline`),
  KEY `entry_uid` (`entry_uid`,`entry_public`)
) ENGINE=InnoDB AUTO_INCREMENT=344840 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_blog_photo`
--

DROP TABLE IF EXISTS `chii_blog_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_blog_photo` (
  `photo_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `photo_eid` mediumint(8) unsigned NOT NULL,
  `photo_uid` mediumint(8) unsigned NOT NULL,
  `photo_target` varchar(255) NOT NULL,
  `photo_vote` mediumint(8) unsigned NOT NULL,
  `photo_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `photo_eid` (`photo_eid`)
) ENGINE=InnoDB AUTO_INCREMENT=97892 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_characters`
--

DROP TABLE IF EXISTS `chii_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_characters` (
  `crt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `crt_name` varchar(255) NOT NULL,
  `crt_role` tinyint(4) unsigned NOT NULL COMMENT '角色，机体，组织。。',
  `crt_infobox` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crt_summary` mediumtext NOT NULL,
  `crt_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crt_comment` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `crt_collects` mediumint(8) unsigned NOT NULL,
  `crt_dateline` int(10) unsigned NOT NULL,
  `crt_lastpost` int(11) unsigned NOT NULL,
  `crt_lock` tinyint(4) NOT NULL DEFAULT '0',
  `crt_img_anidb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `crt_anidb_id` mediumint(8) unsigned NOT NULL,
  `crt_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crt_redirect` int(10) unsigned NOT NULL DEFAULT '0',
  `crt_nsfw` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`crt_id`),
  KEY `crt_role` (`crt_role`),
  KEY `crt_lock` (`crt_lock`),
  KEY `crt_ban` (`crt_ban`),
  KEY `crt_collects` (`crt_collects`),
  KEY `crt_comment` (`crt_comment`)
) ENGINE=InnoDB AUTO_INCREMENT=165172 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_crt_cast_index`
--

DROP TABLE IF EXISTS `chii_crt_cast_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_crt_cast_index` (
  `crt_id` mediumint(9) unsigned NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(3) unsigned NOT NULL COMMENT '根据人物归类查询角色，动画，书籍，游戏',
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '幼年，男乱马，女乱马，变身形态，少女形态。。',
  PRIMARY KEY (`crt_id`,`prsn_id`,`subject_id`),
  KEY `prsn_id` (`prsn_id`),
  KEY `subject_id` (`subject_id`),
  KEY `subject_type_id` (`subject_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_crt_comments`
--

DROP TABLE IF EXISTS `chii_crt_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_crt_comments` (
  `crt_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `crt_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联人物ID',
  `crt_pst_uid` mediumint(8) unsigned NOT NULL,
  `crt_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `crt_pst_dateline` int(10) unsigned NOT NULL,
  `crt_pst_content` mediumtext CHARACTER SET utf8 NOT NULL,
  `crt_pst_state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`crt_pst_id`),
  KEY `cmt_crt_id` (`crt_pst_mid`),
  KEY `crt_pst_related` (`crt_pst_related`),
  KEY `crt_pst_uid` (`crt_pst_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=308938 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_crt_revisions`
--

DROP TABLE IF EXISTS `chii_crt_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_crt_revisions` (
  `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rev_crt_id` mediumint(8) unsigned NOT NULL,
  `rev_crt_name` varchar(80) NOT NULL,
  `rev_crt_name_cn` varchar(80) NOT NULL,
  `rev_crt_info_wiki` mediumtext NOT NULL,
  `rev_crt_summary` mediumtext NOT NULL,
  `rev_dateline` int(10) unsigned NOT NULL,
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) NOT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `rev_crt_id` (`rev_crt_id`),
  KEY `rev_crt_creator` (`rev_creator`)
) ENGINE=MyISAM AUTO_INCREMENT=2296 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_crt_subject_index`
--

DROP TABLE IF EXISTS `chii_crt_subject_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_crt_subject_index` (
  `crt_id` mediumint(9) unsigned NOT NULL,
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(4) unsigned NOT NULL,
  `crt_type` tinyint(4) unsigned NOT NULL COMMENT '主角，配角',
  `ctr_appear_eps` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，角色出场的的章节',
  `crt_order` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`crt_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  KEY `crt_type` (`crt_type`),
  KEY `subject_type_id` (`subject_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_crt_subject_index_bak_240803`
--

DROP TABLE IF EXISTS `chii_crt_subject_index_bak_240803`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_crt_subject_index_bak_240803` (
  `crt_id` mediumint(9) unsigned NOT NULL,
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(4) unsigned NOT NULL,
  `crt_type` tinyint(4) unsigned NOT NULL COMMENT '主角，配角',
  `ctr_appear_eps` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，角色出场的的章节',
  `crt_order` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`crt_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  KEY `crt_type` (`crt_type`),
  KEY `subject_type_id` (`subject_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_comments`
--

DROP TABLE IF EXISTS `chii_doujin_club_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_comments` (
  `club_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `club_pst_mid` mediumint(8) unsigned NOT NULL,
  `club_pst_uid` mediumint(8) unsigned NOT NULL,
  `club_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `club_pst_dateline` int(10) unsigned NOT NULL,
  `club_pst_content` mediumtext NOT NULL,
  PRIMARY KEY (`club_pst_id`),
  KEY `club_pst_mid` (`club_pst_mid`),
  KEY `club_pst_related` (`club_pst_related`),
  KEY `club_pst_uid` (`club_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=140715 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_fields`
--

DROP TABLE IF EXISTS `chii_doujin_club_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_fields` (
  `cf_cid` mediumint(8) unsigned NOT NULL,
  `cf_header` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cf_bg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cf_theme` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `cf_design` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cf_model` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `cf_cid` (`cf_cid`),
  KEY `cf_theme` (`cf_theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_members`
--

DROP TABLE IF EXISTS `chii_doujin_club_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_members` (
  `cmb_uid` mediumint(8) unsigned NOT NULL,
  `cmb_cid` mediumint(8) unsigned NOT NULL,
  `cmb_moderator` tinyint(3) unsigned NOT NULL,
  `cmb_perm` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '个人权限',
  `cmb_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cmb_deteline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cmb_uid`,`cmb_cid`),
  KEY `query_followers` (`cmb_moderator`,`cmb_cid`,`cmb_deteline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_posts`
--

DROP TABLE IF EXISTS `chii_doujin_club_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_posts` (
  `club_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `club_pst_mid` mediumint(8) unsigned NOT NULL,
  `club_pst_uid` mediumint(8) unsigned NOT NULL,
  `club_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `club_pst_content` mediumtext NOT NULL,
  `club_pst_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`club_pst_id`),
  KEY `pss_topic_id` (`club_pst_mid`),
  KEY `club_pst_related` (`club_pst_related`),
  KEY `club_pst_uid` (`club_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=12366 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_related_blog`
--

DROP TABLE IF EXISTS `chii_doujin_club_related_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_related_blog` (
  `crb_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `crb_uid` mediumint(8) unsigned NOT NULL,
  `crb_club_id` mediumint(8) unsigned NOT NULL,
  `crb_entry_id` mediumint(8) unsigned NOT NULL,
  `crb_stick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `crb_dateline` int(10) NOT NULL,
  PRIMARY KEY (`crb_id`),
  KEY `crb_club_id` (`crb_club_id`,`crb_entry_id`),
  KEY `crb_entry_id` (`crb_entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8167 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_timeline`
--

DROP TABLE IF EXISTS `chii_doujin_club_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_timeline` (
  `tml_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tml_cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tml_type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tml_related` char(255) NOT NULL DEFAULT '0',
  `tml_memo` mediumtext NOT NULL,
  `tml_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tml_id`),
  KEY `tml_uid` (`tml_cid`),
  KEY `id_uid` (`tml_id`,`tml_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=51459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_club_topics`
--

DROP TABLE IF EXISTS `chii_doujin_club_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_club_topics` (
  `club_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `club_tpc_club_id` mediumint(8) unsigned NOT NULL,
  `club_tpc_uid` mediumint(8) unsigned NOT NULL,
  `club_tpc_title` varchar(80) NOT NULL,
  `club_tpc_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `club_tpc_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `club_tpc_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `club_tpc_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`club_tpc_id`),
  KEY `tpc_subject_id` (`club_tpc_club_id`),
  KEY `tpc_display` (`club_tpc_display`)
) ENGINE=MyISAM AUTO_INCREMENT=11657 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_clubs`
--

DROP TABLE IF EXISTS `chii_doujin_clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_clubs` (
  `club_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `club_type` tinyint(3) unsigned NOT NULL COMMENT '社团类型 0=社团 1=主办方',
  `club_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `club_title` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `club_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `club_creator` mediumint(8) unsigned NOT NULL,
  `club_pro_book` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `club_pro_music` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `club_pro_game` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `club_members` mediumint(8) unsigned NOT NULL,
  `club_followers` mediumint(8) unsigned NOT NULL,
  `club_desc` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `club_builddate` int(10) unsigned NOT NULL,
  `club_lastupdate` int(10) unsigned NOT NULL,
  `club_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`club_id`),
  KEY `club_type` (`club_type`,`club_ban`),
  KEY `club_name` (`club_name`)
) ENGINE=MyISAM AUTO_INCREMENT=810747 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='社团';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_invites`
--

DROP TABLE IF EXISTS `chii_doujin_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_invites` (
  `uid` mediumint(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `invitecode` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `invite_uid` mediumint(8) unsigned NOT NULL,
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_preorder`
--

DROP TABLE IF EXISTS `chii_doujin_preorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_preorder` (
  `pre_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pre_uid` mediumint(8) unsigned NOT NULL,
  `pre_type` tinyint(3) unsigned NOT NULL,
  `pre_mid` mediumint(8) unsigned NOT NULL,
  `pre_details` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `pre_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pre_id`),
  KEY `pre_uid` (`pre_uid`,`pre_type`,`pre_mid`)
) ENGINE=MyISAM AUTO_INCREMENT=576 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subject_attr_tags`
--

DROP TABLE IF EXISTS `chii_doujin_subject_attr_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subject_attr_tags` (
  `subject_id` mediumint(8) unsigned NOT NULL,
  `tag_id` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `subject_id` (`subject_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='属性标签索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subject_club_index`
--

DROP TABLE IF EXISTS `chii_doujin_subject_club_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subject_club_index` (
  `subject_id` mediumint(8) unsigned NOT NULL,
  `club_id` mediumint(8) unsigned NOT NULL,
  `subject_type` tinyint(1) unsigned NOT NULL COMMENT '条目类型',
  `club_role` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '社团职务 0=未知 1=主催 2=协作',
  UNIQUE KEY `subject_id` (`subject_id`,`club_id`),
  KEY `subject_type` (`subject_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subject_collects`
--

DROP TABLE IF EXISTS `chii_doujin_subject_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subject_collects` (
  `clt_uid` mediumint(8) unsigned NOT NULL,
  `clt_subject_id` mediumint(8) unsigned NOT NULL,
  `clt_subject_type` tinyint(3) unsigned NOT NULL,
  `clt_dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `clt_uid` (`clt_uid`,`clt_subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subject_comments`
--

DROP TABLE IF EXISTS `chii_doujin_subject_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subject_comments` (
  `sbj_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sbj_pst_mid` mediumint(8) unsigned NOT NULL,
  `sbj_pst_uid` mediumint(8) unsigned NOT NULL,
  `sbj_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbj_pst_related_photo` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '关联图片',
  `sbj_pst_dateline` int(10) unsigned NOT NULL,
  `sbj_pst_content` mediumtext NOT NULL,
  PRIMARY KEY (`sbj_pst_id`),
  KEY `sbj_pst_mid` (`sbj_pst_mid`),
  KEY `sbj_pst_related` (`sbj_pst_related`),
  KEY `sbj_related_photo` (`sbj_pst_related_photo`),
  KEY `sbj_pst_uid` (`sbj_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=449944 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subject_event_index`
--

DROP TABLE IF EXISTS `chii_doujin_subject_event_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subject_event_index` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `subject_id` mediumint(8) unsigned NOT NULL,
  `subject_type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `event_id` (`event_id`,`subject_id`),
  KEY `subject_type` (`subject_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='关联展会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subject_photos`
--

DROP TABLE IF EXISTS `chii_doujin_subject_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subject_photos` (
  `sbj_photo_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sbj_photo_mid` mediumint(8) unsigned NOT NULL,
  `sbj_photo_uid` mediumint(8) unsigned NOT NULL,
  `sbj_photo_target` text COLLATE utf8_unicode_ci NOT NULL,
  `sbj_photo_comment` mediumint(8) unsigned NOT NULL,
  `sbj_photo_dateline` int(10) unsigned NOT NULL,
  `sbj_photo_lasttouch` int(10) unsigned NOT NULL,
  `sbj_photo_ban` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`sbj_photo_id`),
  KEY `sbj_photo_mid` (`sbj_photo_mid`),
  KEY `sbj_photo_uid` (`sbj_photo_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=75905 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_doujin_subjects`
--

DROP TABLE IF EXISTS `chii_doujin_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_doujin_subjects` (
  `subject_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_type` tinyint(3) unsigned NOT NULL,
  `subject_cat` tinyint(3) unsigned NOT NULL,
  `subject_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_infobox` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_desc` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_collects` mediumint(8) unsigned NOT NULL,
  `subject_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject_original` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject_sexual` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性取向',
  `subject_age_limit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '年龄限制',
  `subject_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_attr_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_creator` mediumint(8) unsigned NOT NULL,
  `subject_comment` mediumint(8) unsigned NOT NULL,
  `subject_dateline` int(10) unsigned NOT NULL,
  `subject_lasttouch` int(10) unsigned NOT NULL COMMENT '最后修改',
  `subject_lastpost` int(10) unsigned NOT NULL,
  `subject_ban` tinyint(3) unsigned NOT NULL,
  `subject_ban_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '禁止原因',
  PRIMARY KEY (`subject_id`),
  KEY `subject_cat` (`subject_type`,`subject_cat`,`subject_creator`,`subject_ban`),
  KEY `subject_sexual` (`subject_sexual`,`subject_age_limit`,`subject_original`,`subject_status`),
  KEY `subject_lastpost` (`subject_lastpost`),
  KEY `subject_creator` (`subject_creator`),
  KEY `subject_dateline` (`subject_dateline`),
  KEY `subject_type` (`subject_type`,`subject_ban`),
  KEY `subject_ban` (`subject_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=50325 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_eden`
--

DROP TABLE IF EXISTS `chii_eden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_eden` (
  `eden_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `eden_type` smallint(6) unsigned NOT NULL,
  `eden_name` char(50) NOT NULL,
  `eden_title` char(50) NOT NULL,
  `eden_icon` varchar(255) NOT NULL,
  `eden_header` varchar(255) NOT NULL,
  `eden_desc` mediumtext NOT NULL,
  `eden_relate_subject` mediumtext NOT NULL,
  `eden_relate_grp` mediumtext NOT NULL,
  `eden_members` mediumint(8) unsigned NOT NULL,
  `eden_lasttouch` int(10) unsigned NOT NULL,
  `eden_builddate` int(10) unsigned NOT NULL,
  `eden_pushdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eden_id`),
  KEY `eden_type` (`eden_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_eden_members`
--

DROP TABLE IF EXISTS `chii_eden_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_eden_members` (
  `emb_uid` mediumint(8) NOT NULL DEFAULT '0',
  `emb_eid` smallint(6) NOT NULL DEFAULT '0',
  `emb_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `emb_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`emb_uid`,`emb_eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_ep_comments`
--

DROP TABLE IF EXISTS `chii_ep_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_ep_comments` (
  `ep_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ep_pst_mid` mediumint(8) unsigned NOT NULL,
  `ep_pst_uid` mediumint(8) unsigned NOT NULL,
  `ep_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ep_pst_dateline` int(10) unsigned NOT NULL,
  `ep_pst_content` mediumtext NOT NULL,
  `ep_pst_state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`ep_pst_id`),
  KEY `ep_cmt_crt_id` (`ep_pst_mid`),
  KEY `ep_pst_related` (`ep_pst_related`),
  KEY `ep_pst_uid` (`ep_pst_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1644685 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_ep_revisions`
--

DROP TABLE IF EXISTS `chii_ep_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_ep_revisions` (
  `ep_rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rev_sid` mediumint(8) unsigned NOT NULL,
  `rev_eids` varchar(255) NOT NULL,
  `rev_ep_infobox` mediumtext NOT NULL,
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rev_dateline` int(10) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) NOT NULL,
  PRIMARY KEY (`ep_rev_id`),
  KEY `rev_sid` (`rev_sid`,`rev_creator`)
) ENGINE=MyISAM AUTO_INCREMENT=69338 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_ep_status`
--

DROP TABLE IF EXISTS `chii_ep_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_ep_status` (
  `ep_stt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ep_stt_uid` mediumint(8) unsigned NOT NULL,
  `ep_stt_sid` mediumint(8) unsigned NOT NULL,
  `ep_stt_on_prg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ep_stt_status` mediumtext NOT NULL,
  `ep_stt_lasttouch` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ep_stt_id`),
  UNIQUE KEY `ep_stt_uniq` (`ep_stt_uid`,`ep_stt_sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7422289 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_episodes`
--

DROP TABLE IF EXISTS `chii_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_episodes` (
  `ep_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ep_subject_id` mediumint(8) unsigned NOT NULL,
  `ep_sort` float unsigned NOT NULL DEFAULT '0',
  `ep_type` tinyint(1) unsigned NOT NULL,
  `ep_disc` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '碟片数',
  `ep_name` varchar(80) NOT NULL,
  `ep_name_cn` varchar(80) NOT NULL,
  `ep_rate` tinyint(3) NOT NULL,
  `ep_duration` varchar(80) NOT NULL,
  `ep_airdate` varchar(80) NOT NULL,
  `ep_online` mediumtext NOT NULL,
  `ep_comment` mediumint(8) unsigned NOT NULL,
  `ep_resources` mediumint(8) unsigned NOT NULL,
  `ep_desc` mediumtext NOT NULL,
  `ep_dateline` int(10) unsigned NOT NULL,
  `ep_lastpost` int(10) unsigned NOT NULL,
  `ep_lock` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ep_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ep_id`),
  KEY `ep_sort` (`ep_sort`),
  KEY `ep_disc` (`ep_disc`),
  KEY `ep_subject_id` (`ep_subject_id`),
  KEY `ep_lastpost` (`ep_lastpost`),
  KEY `ep_ban` (`ep_ban`),
  KEY `ep_subject_id_2` (`ep_subject_id`,`ep_ban`,`ep_sort`)
) ENGINE=MyISAM AUTO_INCREMENT=1405248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_event_club_index`
--

DROP TABLE IF EXISTS `chii_event_club_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_event_club_index` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `club_id` mediumint(8) unsigned NOT NULL,
  `club_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `event_id` (`event_id`,`club_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='展会关联社团';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_event_collects`
--

DROP TABLE IF EXISTS `chii_event_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_event_collects` (
  `clt_uid` mediumint(8) unsigned NOT NULL,
  `clt_event_id` mediumint(8) unsigned NOT NULL,
  `clt_type` tinyint(3) unsigned NOT NULL,
  `clt_dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `clt_uid` (`clt_uid`,`clt_event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_event_posts`
--

DROP TABLE IF EXISTS `chii_event_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_event_posts` (
  `event_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_pst_mid` mediumint(8) unsigned NOT NULL,
  `event_pst_uid` mediumint(8) unsigned NOT NULL,
  `event_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `event_pst_content` mediumtext NOT NULL,
  `event_pst_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_pst_id`),
  KEY `pst_topic_id` (`event_pst_mid`),
  KEY `event_pst_related` (`event_pst_related`),
  KEY `event_pst_uid` (`event_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=142481 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_event_topics`
--

DROP TABLE IF EXISTS `chii_event_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_event_topics` (
  `event_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_tpc_mid` mediumint(8) unsigned NOT NULL,
  `event_tpc_uid` mediumint(8) unsigned NOT NULL,
  `event_tpc_title` varchar(80) NOT NULL,
  `event_tpc_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `event_tpc_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `event_tpc_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `event_tpc_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`event_tpc_id`),
  KEY `tpc_relate_id` (`event_tpc_mid`),
  KEY `tpc_display` (`event_tpc_display`)
) ENGINE=MyISAM AUTO_INCREMENT=82013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_events`
--

DROP TABLE IF EXISTS `chii_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_type` tinyint(4) unsigned NOT NULL,
  `event_creator` int(10) unsigned NOT NULL,
  `event_start_time` int(10) unsigned NOT NULL,
  `event_end_time` int(10) unsigned NOT NULL,
  `event_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_state` mediumint(8) unsigned NOT NULL,
  `event_city` mediumint(8) unsigned NOT NULL,
  `event_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `event_wish` mediumint(8) unsigned NOT NULL,
  `event_do` mediumint(8) unsigned NOT NULL,
  `event_buildtime` int(10) unsigned NOT NULL,
  `event_lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_type` (`event_type`),
  KEY `event_area` (`event_city`),
  KEY `event_startTime` (`event_start_time`),
  KEY `event_endTime` (`event_end_time`),
  KEY `event_lastupdate` (`event_lastupdate`),
  KEY `event_buildtime` (`event_buildtime`),
  KEY `event_creator` (`event_creator`),
  KEY `event_state` (`event_state`)
) ENGINE=MyISAM AUTO_INCREMENT=3650 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_failedlogins`
--

DROP TABLE IF EXISTS `chii_failedlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_failedlogins` (
  `ip` char(15) NOT NULL DEFAULT '',
  `count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_friends`
--

DROP TABLE IF EXISTS `chii_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_friends` (
  `frd_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `frd_fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `frd_grade` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frd_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `frd_description` char(255) NOT NULL,
  KEY `uid` (`frd_uid`),
  KEY `frd_fid` (`frd_fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=1610 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_group_members`
--

DROP TABLE IF EXISTS `chii_group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_group_members` (
  `gmb_uid` mediumint(8) NOT NULL DEFAULT '0',
  `gmb_gid` smallint(6) NOT NULL DEFAULT '0',
  `gmb_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `gmb_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gmb_uid`,`gmb_gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_group_posts`
--

DROP TABLE IF EXISTS `chii_group_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_group_posts` (
  `grp_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `grp_pst_mid` mediumint(8) unsigned NOT NULL,
  `grp_pst_uid` mediumint(8) unsigned NOT NULL,
  `grp_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '关联回复ID',
  `grp_pst_content` mediumtext NOT NULL,
  `grp_pst_state` tinyint(1) unsigned NOT NULL,
  `grp_pst_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`grp_pst_id`),
  KEY `pss_topic_id` (`grp_pst_mid`),
  KEY `grp_pst_related` (`grp_pst_related`),
  KEY `grp_pst_uid` (`grp_pst_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2909593 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_group_topics`
--

DROP TABLE IF EXISTS `chii_group_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_group_topics` (
  `grp_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `grp_tpc_gid` mediumint(8) unsigned NOT NULL,
  `grp_tpc_uid` mediumint(8) unsigned NOT NULL,
  `grp_tpc_title` varchar(80) NOT NULL,
  `grp_tpc_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `grp_tpc_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `grp_tpc_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `grp_tpc_state` tinyint(1) unsigned NOT NULL,
  `grp_tpc_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`grp_tpc_id`),
  KEY `grp_tpc_gid` (`grp_tpc_gid`),
  KEY `grp_tpc_display` (`grp_tpc_display`),
  KEY `grp_tpc_uid` (`grp_tpc_uid`),
  KEY `grp_tpc_lastpost` (`grp_tpc_lastpost`)
) ENGINE=InnoDB AUTO_INCREMENT=406527 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_groups`
--

DROP TABLE IF EXISTS `chii_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_groups` (
  `grp_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `grp_cat` smallint(6) unsigned NOT NULL DEFAULT '0',
  `grp_name` char(50) NOT NULL,
  `grp_title` char(50) NOT NULL,
  `grp_icon` varchar(255) NOT NULL,
  `grp_creator` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `grp_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `grp_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `grp_members` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `grp_desc` text NOT NULL,
  `grp_lastpost` int(10) unsigned NOT NULL,
  `grp_builddate` int(10) unsigned NOT NULL,
  `grp_accessible` tinyint(1) NOT NULL DEFAULT '1' COMMENT '可访问性',
  `grp_nsfw` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`grp_id`),
  KEY `grp_nsfw` (`grp_nsfw`)
) ENGINE=MyISAM AUTO_INCREMENT=5174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_index`
--

DROP TABLE IF EXISTS `chii_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_index` (
  `idx_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '自动id',
  `idx_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `idx_title` varchar(80) NOT NULL COMMENT '标题',
  `idx_desc` mediumtext NOT NULL COMMENT '简介',
  `idx_replies` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '回复数',
  `idx_subject_total` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内含条目总数',
  `idx_collects` mediumint(8) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `idx_stats` mediumtext NOT NULL,
  `idx_dateline` int(10) NOT NULL COMMENT '创建时间',
  `idx_lasttouch` int(10) unsigned NOT NULL,
  `idx_uid` mediumint(8) NOT NULL COMMENT '创建人UID',
  `idx_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mid` (`idx_id`),
  KEY `idx_ban` (`idx_ban`),
  KEY `idx_type` (`idx_type`),
  KEY `idx_uid` (`idx_uid`),
  KEY `idx_collects` (`idx_collects`)
) ENGINE=MyISAM AUTO_INCREMENT=64029 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_index_collects`
--

DROP TABLE IF EXISTS `chii_index_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_index_collects` (
  `idx_clt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idx_clt_mid` mediumint(8) unsigned NOT NULL COMMENT '目录ID',
  `idx_clt_uid` mediumint(8) unsigned NOT NULL COMMENT '用户UID',
  `idx_clt_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idx_clt_id`),
  KEY `idx_clt_mid` (`idx_clt_mid`,`idx_clt_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=124524 DEFAULT CHARSET=utf8 COMMENT='目录收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_index_comments`
--

DROP TABLE IF EXISTS `chii_index_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_index_comments` (
  `idx_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idx_pst_mid` mediumint(8) unsigned NOT NULL,
  `idx_pst_uid` mediumint(8) unsigned NOT NULL,
  `idx_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idx_pst_dateline` int(10) unsigned NOT NULL,
  `idx_pst_content` mediumtext NOT NULL,
  PRIMARY KEY (`idx_pst_id`),
  KEY `idx_pst_mid` (`idx_pst_mid`),
  KEY `idx_pst_related` (`idx_pst_related`),
  KEY `idx_pst_uid` (`idx_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=84454 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM AUTO_INCREMENT=1191722 DEFAULT CHARSET=utf8 COMMENT='目录关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_issues`
--

DROP TABLE IF EXISTS `chii_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_issues` (
  `isu_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isu_type` tinyint(3) unsigned NOT NULL,
  `isu_main_id` mediumint(8) unsigned NOT NULL,
  `isu_value` mediumint(8) unsigned NOT NULL,
  `isu_creator` mediumint(8) unsigned NOT NULL,
  `isu_operator` mediumint(8) unsigned NOT NULL,
  `isu_status` tinyint(3) unsigned NOT NULL,
  `isu_reason` mediumtext NOT NULL,
  `isu_related` mediumint(8) unsigned NOT NULL,
  `isu_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isu_id`),
  KEY `isu_type` (`isu_type`,`isu_main_id`,`isu_creator`,`isu_operator`,`isu_status`),
  KEY `isu_value` (`isu_value`)
) ENGINE=MyISAM AUTO_INCREMENT=28174 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_likes`
--

DROP TABLE IF EXISTS `chii_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_likes` (
  `type` mediumint(8) unsigned NOT NULL,
  `main_id` int(10) unsigned NOT NULL DEFAULT '0',
  `related_id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL COMMENT 'unix timestamp seconds',
  PRIMARY KEY (`type`,`related_id`,`uid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_related` (`related_id`),
  KEY `type` (`type`,`main_id`,`uid`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_likes_bak_230331`
--

DROP TABLE IF EXISTS `chii_likes_bak_230331`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_likes_bak_230331` (
  `type` mediumint(8) unsigned NOT NULL,
  `main_id` int(10) unsigned NOT NULL,
  `related_id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL COMMENT 'unix timestamp seconds',
  PRIMARY KEY (`type`,`related_id`,`uid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_related` (`related_id`),
  KEY `type` (`type`,`main_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_magi_answered`
--

DROP TABLE IF EXISTS `chii_magi_answered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_magi_answered` (
  `asw_qid` mediumint(8) unsigned NOT NULL,
  `asw_uid` mediumint(8) unsigned NOT NULL,
  `asw_answer` tinyint(1) unsigned NOT NULL,
  `asw_result` tinyint(1) unsigned NOT NULL,
  `asw_dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `asw_qid` (`asw_qid`,`asw_uid`),
  KEY `asw_uid` (`asw_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_magi_members`
--

DROP TABLE IF EXISTS `chii_magi_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_magi_members` (
  `mgm_uid` mediumint(8) unsigned NOT NULL,
  `mgm_correct` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mgm_answered` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mgm_created` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mgm_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `mgm_uid` (`mgm_uid`,`mgm_rank`),
  KEY `mgm_answered` (`mgm_uid`,`mgm_correct`,`mgm_answered`),
  KEY `mgm_created` (`mgm_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_magi_questions`
--

DROP TABLE IF EXISTS `chii_magi_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_magi_questions` (
  `qst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `qst_type` tinyint(3) unsigned NOT NULL,
  `qst_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `qst_options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `qst_answer` tinyint(1) unsigned NOT NULL,
  `qst_relate_type` tinyint(3) unsigned NOT NULL,
  `qst_related` mediumint(8) unsigned NOT NULL,
  `qst_correct` mediumint(8) unsigned NOT NULL,
  `qst_answered` mediumint(8) unsigned NOT NULL,
  `qst_creator` mediumint(8) unsigned NOT NULL,
  `qst_dateline` int(10) unsigned NOT NULL,
  `qst_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qst_id`),
  KEY `qst_type` (`qst_type`),
  KEY `related` (`qst_relate_type`,`qst_related`),
  KEY `qst_ban` (`qst_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=9143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=920192 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_network_services`
--

DROP TABLE IF EXISTS `chii_network_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_network_services` (
  `ns_uid` mediumint(8) unsigned NOT NULL,
  `ns_service_id` tinyint(3) unsigned NOT NULL,
  `ns_account` varchar(255) NOT NULL,
  `ns_dateline` int(10) unsigned NOT NULL,
  UNIQUE KEY `ns_uid` (`ns_uid`,`ns_service_id`),
  KEY `ns_uid_2` (`ns_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_notify`
--

DROP TABLE IF EXISTS `chii_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_notify` (
  `nt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nt_uid` mediumint(8) unsigned NOT NULL,
  `nt_from_uid` mediumint(8) unsigned NOT NULL,
  `nt_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `nt_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nt_mid` mediumint(8) unsigned NOT NULL COMMENT 'ID in notify_field',
  `nt_related_id` int(10) unsigned NOT NULL,
  `nt_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nt_id`),
  KEY `nt_uid` (`nt_uid`,`nt_status`,`nt_type`,`nt_related_id`),
  KEY `nt_mid` (`nt_mid`),
  KEY `nt_from_uid` (`nt_from_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6515054 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_notify_field`
--

DROP TABLE IF EXISTS `chii_notify_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_notify_field` (
  `ntf_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ntf_hash` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ntf_rid` int(10) unsigned NOT NULL,
  `ntf_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`ntf_id`),
  KEY `ntf_rid` (`ntf_rid`),
  KEY `ntf_hash` (`ntf_hash`)
) ENGINE=MyISAM AUTO_INCREMENT=303415 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_oauth_access_tokens`
--

DROP TABLE IF EXISTS `chii_oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_oauth_access_tokens` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token` (`access_token`) USING BTREE,
  KEY `type` (`type`),
  KEY `user_expires` (`user_id`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2493031 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_oauth_authorization_codes`
--

DROP TABLE IF EXISTS `chii_oauth_authorization_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_oauth_authorization_codes` (
  `authorization_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_token` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_oauth_clients`
--

DROP TABLE IF EXISTS `chii_oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_oauth_clients` (
  `app_id` mediumint(8) NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_types` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`app_id`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_oauth_jwt`
--

DROP TABLE IF EXISTS `chii_oauth_jwt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_oauth_jwt` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_key` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `chii_oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_oauth_refresh_tokens` (
  `refresh_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_oauth_scopes`
--

DROP TABLE IF EXISTS `chii_oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_oauth_scopes` (
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_onlinetime`
--

DROP TABLE IF EXISTS `chii_onlinetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_onlinetime` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thismonth` smallint(6) unsigned NOT NULL DEFAULT '0',
  `total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_os_web_sessions`
--

DROP TABLE IF EXISTS `chii_os_web_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_os_web_sessions` (
  `key` char(64) NOT NULL COMMENT 'session key',
  `user_id` int(10) unsigned NOT NULL COMMENT 'uint32 user id',
  `value` mediumblob NOT NULL COMMENT 'json encoded session data',
  `created_at` bigint(20) NOT NULL COMMENT 'int64 unix timestamp, when session is created',
  `expired_at` bigint(20) NOT NULL COMMENT 'int64 unix timestamp, when session is expired',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_person_alias`
--

DROP TABLE IF EXISTS `chii_person_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_person_alias` (
  `prsn_cat` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `alias_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_type` tinyint(4) unsigned NOT NULL,
  `alias_key` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  KEY `prsn_cat` (`prsn_cat`,`prsn_id`),
  KEY `prsn_id` (`prsn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_person_collects`
--

DROP TABLE IF EXISTS `chii_person_collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_person_collects` (
  `prsn_clt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `prsn_clt_cat` enum('prsn','crt') NOT NULL,
  `prsn_clt_mid` mediumint(8) unsigned NOT NULL,
  `prsn_clt_uid` mediumint(8) unsigned NOT NULL,
  `prsn_clt_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`prsn_clt_id`),
  KEY `prsn_clt_cat` (`prsn_clt_cat`,`prsn_clt_mid`),
  KEY `prsn_clt_uid` (`prsn_clt_uid`),
  KEY `prsn_clt_mid` (`prsn_clt_mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2052623 DEFAULT CHARSET=utf8 COMMENT='人物收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_person_cs_index`
--

DROP TABLE IF EXISTS `chii_person_cs_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_person_cs_index` (
  `prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `prsn_position` smallint(5) unsigned NOT NULL COMMENT '监督，原案，脚本,..',
  `subject_id` mediumint(9) unsigned NOT NULL,
  `subject_type_id` tinyint(4) unsigned NOT NULL,
  `summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `prsn_appear_eps` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，人物参与的章节',
  PRIMARY KEY (`prsn_type`,`prsn_id`,`subject_id`,`prsn_position`),
  KEY `subject_id` (`subject_id`),
  KEY `prsn_position` (`prsn_position`),
  KEY `prsn_id` (`prsn_id`),
  KEY `subject_type_id` (`subject_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='subjects'' credits/creator & staff (c&s)index';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_person_fields`
--

DROP TABLE IF EXISTS `chii_person_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_person_fields` (
  `prsn_cat` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` int(8) unsigned NOT NULL,
  `gender` tinyint(4) unsigned NOT NULL,
  `bloodtype` tinyint(4) unsigned NOT NULL,
  `birth_year` year(4) NOT NULL,
  `birth_mon` tinyint(2) unsigned NOT NULL,
  `birth_day` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`prsn_cat`,`prsn_id`),
  KEY `prsn_id` (`prsn_id`),
  KEY `gender` (`gender`),
  KEY `bloodtype` (`bloodtype`),
  KEY `birth_year` (`birth_year`),
  KEY `birth_mon` (`birth_mon`),
  KEY `birth_day` (`birth_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_person_relationship`
--

DROP TABLE IF EXISTS `chii_person_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_person_relationship` (
  `prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `prsn_id` mediumint(9) unsigned NOT NULL,
  `relat_prsn_type` enum('prsn','crt') COLLATE utf8_unicode_ci NOT NULL,
  `relat_prsn_id` mediumint(9) unsigned NOT NULL,
  `relat_type` smallint(6) unsigned NOT NULL COMMENT '任职于，从属,聘用,嫁给，',
  KEY `prsn_type` (`prsn_type`,`prsn_id`),
  KEY `relat_prsn_type` (`relat_prsn_type`,`relat_prsn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_persons`
--

DROP TABLE IF EXISTS `chii_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_persons` (
  `prsn_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `prsn_name` varchar(255) NOT NULL,
  `prsn_type` tinyint(4) unsigned NOT NULL COMMENT '个人，公司，组合',
  `prsn_infobox` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prsn_producer` tinyint(1) NOT NULL,
  `prsn_mangaka` tinyint(1) NOT NULL,
  `prsn_artist` tinyint(1) NOT NULL,
  `prsn_seiyu` tinyint(1) NOT NULL,
  `prsn_writer` tinyint(4) NOT NULL DEFAULT '0' COMMENT '作家',
  `prsn_illustrator` tinyint(4) NOT NULL DEFAULT '0' COMMENT '绘师',
  `prsn_actor` tinyint(1) NOT NULL COMMENT '演员',
  `prsn_summary` mediumtext NOT NULL,
  `prsn_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prsn_img_anidb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prsn_comment` mediumint(9) unsigned NOT NULL,
  `prsn_collects` mediumint(8) unsigned NOT NULL,
  `prsn_dateline` int(10) unsigned NOT NULL,
  `prsn_lastpost` int(11) unsigned NOT NULL,
  `prsn_lock` tinyint(4) NOT NULL,
  `prsn_anidb_id` mediumint(8) unsigned NOT NULL,
  `prsn_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prsn_redirect` int(10) unsigned NOT NULL DEFAULT '0',
  `prsn_nsfw` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`prsn_id`),
  KEY `prsn_type` (`prsn_type`),
  KEY `prsn_producer` (`prsn_producer`),
  KEY `prsn_mangaka` (`prsn_mangaka`),
  KEY `prsn_artist` (`prsn_artist`),
  KEY `prsn_seiyu` (`prsn_seiyu`),
  KEY `prsn_writer` (`prsn_writer`),
  KEY `prsn_illustrator` (`prsn_illustrator`),
  KEY `prsn_lock` (`prsn_lock`),
  KEY `prsn_ban` (`prsn_ban`),
  KEY `prsn_actor` (`prsn_actor`)
) ENGINE=InnoDB AUTO_INCREMENT=68522 DEFAULT CHARSET=utf8mb4 COMMENT='（现实）人物表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_pms`
--

DROP TABLE IF EXISTS `chii_pms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_pms` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_sid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_rid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_folder` enum('inbox','outbox') NOT NULL DEFAULT 'inbox',
  `msg_new` tinyint(1) NOT NULL DEFAULT '0',
  `msg_title` varchar(75) NOT NULL,
  `msg_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_message` text NOT NULL,
  `msg_related_main` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_related` int(10) unsigned NOT NULL,
  `msg_sdeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_rdeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `msgtoid` (`msg_rid`,`msg_folder`,`msg_dateline`),
  KEY `msgfromid` (`msg_sid`,`msg_folder`,`msg_dateline`),
  KEY `pm_related` (`msg_related`),
  KEY `msg_sdeleted` (`msg_sdeleted`,`msg_rdeleted`)
) ENGINE=MyISAM AUTO_INCREMENT=341446 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_prsn_comments`
--

DROP TABLE IF EXISTS `chii_prsn_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_prsn_comments` (
  `prsn_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `prsn_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联人物ID',
  `prsn_pst_uid` mediumint(8) unsigned NOT NULL,
  `prsn_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prsn_pst_dateline` int(10) unsigned NOT NULL,
  `prsn_pst_content` mediumtext NOT NULL,
  `prsn_pst_state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`prsn_pst_id`),
  KEY `cmt_prsn_id` (`prsn_pst_mid`),
  KEY `prsn_pst_related` (`prsn_pst_related`),
  KEY `prsn_pst_uid` (`prsn_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=169058 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_regips`
--

DROP TABLE IF EXISTS `chii_regips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_regips` (
  `ip` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(6) NOT NULL DEFAULT '0',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_resources`
--

DROP TABLE IF EXISTS `chii_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_resources` (
  `res_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `res_eid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `res_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `res_tool` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `res_url` mediumtext NOT NULL,
  `res_ext` varchar(5) NOT NULL,
  `res_audio_lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `res_sub_lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `res_quality` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `res_source` mediumtext NOT NULL,
  `res_version` tinyint(1) unsigned NOT NULL,
  `res_creator` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `res_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`res_id`),
  KEY `res_eid` (`res_eid`,`res_type`),
  KEY `res_tool` (`res_tool`)
) ENGINE=MyISAM AUTO_INCREMENT=851 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_rev_history`
--

DROP TABLE IF EXISTS `chii_rev_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_rev_history` (
  `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rev_type` tinyint(3) unsigned NOT NULL COMMENT '条目，角色，人物',
  `rev_mid` mediumint(8) unsigned NOT NULL COMMENT '对应条目，人物的ID',
  `rev_text_id` mediumint(9) unsigned NOT NULL,
  `rev_dateline` int(10) unsigned NOT NULL,
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `rev_crt_id` (`rev_type`,`rev_mid`),
  KEY `rev_crt_creator` (`rev_creator`),
  KEY `rev_id` (`rev_id`,`rev_type`,`rev_creator`)
) ENGINE=InnoDB AUTO_INCREMENT=2120145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_rev_text`
--

DROP TABLE IF EXISTS `chii_rev_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_rev_text` (
  `rev_text_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `rev_text` mediumblob NOT NULL,
  PRIMARY KEY (`rev_text_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067395 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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

--
-- Table structure for table `chii_robot_speech`
--

DROP TABLE IF EXISTS `chii_robot_speech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_robot_speech` (
  `rbt_spc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rbt_spc_mid` mediumint(8) unsigned NOT NULL,
  `rbt_spc_uid` mediumint(8) unsigned NOT NULL,
  `rbt_spc_speech` varchar(255) NOT NULL,
  `rbt_spc_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rbt_spc_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`rbt_spc_id`),
  KEY `rbt_spc_mid` (`rbt_spc_mid`),
  KEY `rbt_spc_ban` (`rbt_spc_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=4543 DEFAULT CHARSET=utf8 COMMENT='伪春菜句库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_searchindex`
--

DROP TABLE IF EXISTS `chii_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_searchindex` (
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `searchstring` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `threads` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tids` text NOT NULL,
  `type` varchar(255) NOT NULL,
  KEY `searchstring` (`searchstring`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_sessions`
--

DROP TABLE IF EXISTS `chii_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_sessions` (
  `sid` char(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `action` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastolupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `pageviews` smallint(6) unsigned NOT NULL DEFAULT '0',
  `seccode` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bloguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`),
  KEY `bloguid` (`bloguid`),
  KEY `ip` (`ip1`,`ip2`,`ip3`,`ip4`) USING HASH,
  KEY `lastactivity` (`lastactivity`) USING BTREE
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_settings`
--

DROP TABLE IF EXISTS `chii_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_settings` (
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_stats`
--

DROP TABLE IF EXISTS `chii_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_stats` (
  `unit` mediumint(8) unsigned NOT NULL,
  `category` mediumint(8) unsigned NOT NULL,
  `type` mediumint(8) unsigned NOT NULL,
  `sub_type` mediumint(8) unsigned NOT NULL,
  `related_id` mediumint(8) unsigned NOT NULL,
  `value` int(11) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `updated_at` int(10) unsigned NOT NULL,
  UNIQUE KEY `unit` (`unit`,`related_id`),
  KEY `category` (`category`,`type`,`sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_alias`
--

DROP TABLE IF EXISTS `chii_subject_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_alias` (
  `subject_id` int(10) unsigned NOT NULL,
  `alias_name` varchar(255) NOT NULL,
  `subject_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '所属条目的类型',
  `alias_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是别名还是条目名',
  `alias_key` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  KEY `subject_id` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_fields`
--

DROP TABLE IF EXISTS `chii_subject_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_fields` (
  `field_sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_tid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `field_meta_tags` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `field_tags` mediumtext NOT NULL,
  `field_rate_1` mediumint(8) unsigned NOT NULL,
  `field_rate_2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_3` mediumint(8) unsigned NOT NULL,
  `field_rate_4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_5` mediumint(8) unsigned NOT NULL,
  `field_rate_6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_7` mediumint(8) unsigned NOT NULL,
  `field_rate_8` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_9` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_rate_10` mediumint(8) unsigned NOT NULL,
  `field_airtime` tinyint(1) unsigned NOT NULL,
  `field_rank` int(10) unsigned NOT NULL DEFAULT '0',
  `field_year` year(4) NOT NULL COMMENT '放送年份',
  `field_mon` tinyint(2) NOT NULL COMMENT '放送月份',
  `field_week_day` tinyint(1) NOT NULL COMMENT '放送日(星期X)',
  `field_date` date NOT NULL COMMENT '放送日期',
  `field_redirect` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_sid`),
  KEY `sort_id` (`field_tid`),
  KEY `subject_airtime` (`field_airtime`),
  KEY `field_rank` (`field_rank`),
  KEY `field_date` (`field_date`),
  KEY `field_year_mon` (`field_year`,`field_mon`),
  KEY `field_year` (`field_year`),
  KEY `query_date` (`field_sid`,`field_date`)
) ENGINE=InnoDB AUTO_INCREMENT=516342 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_imgs`
--

DROP TABLE IF EXISTS `chii_subject_imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_imgs` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `img_subject_id` mediumint(8) unsigned NOT NULL,
  `img_uid` mediumint(8) unsigned NOT NULL,
  `img_target` varchar(255) NOT NULL,
  `img_vote` mediumint(8) unsigned NOT NULL,
  `img_nsfw` tinyint(1) unsigned NOT NULL,
  `img_ban` tinyint(1) unsigned NOT NULL,
  `img_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `img_subject_id` (`img_subject_id`),
  KEY `img_nsfw` (`img_nsfw`,`img_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=635464 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=33804640 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_posts`
--

DROP TABLE IF EXISTS `chii_subject_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_posts` (
  `sbj_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sbj_pst_mid` mediumint(8) unsigned NOT NULL,
  `sbj_pst_uid` mediumint(8) unsigned NOT NULL,
  `sbj_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbj_pst_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `sbj_pst_state` tinyint(1) unsigned NOT NULL,
  `sbj_pst_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sbj_pst_id`),
  KEY `pss_topic_id` (`sbj_pst_mid`),
  KEY `sbj_pst_related` (`sbj_pst_related`),
  KEY `sbj_pst_uid` (`sbj_pst_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=326048 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_rec`
--

DROP TABLE IF EXISTS `chii_subject_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_rec` (
  `subject_id` mediumint(8) unsigned NOT NULL,
  `rec_subject_id` mediumint(8) unsigned NOT NULL,
  `mio_sim` float NOT NULL,
  `mio_count` mediumint(9) NOT NULL,
  KEY `subject_id` (`subject_id`),
  KEY `mio_count` (`mio_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_rec_2`
--

DROP TABLE IF EXISTS `chii_subject_rec_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_rec_2` (
  `subject_id` mediumint(9) NOT NULL,
  `rec_subject_id` mediumint(9) NOT NULL,
  `mio_sim` float NOT NULL,
  `mio_count` mediumint(9) NOT NULL,
  KEY `subject1_id` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_related_blog`
--

DROP TABLE IF EXISTS `chii_subject_related_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_related_blog` (
  `srb_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `srb_uid` mediumint(8) unsigned NOT NULL,
  `srb_subject_id` mediumint(8) unsigned NOT NULL COMMENT '条目ID',
  `srb_entry_id` mediumint(8) unsigned NOT NULL COMMENT '日志ID',
  `srb_spoiler` mediumint(8) unsigned NOT NULL COMMENT '剧透',
  `srb_like` mediumint(8) unsigned NOT NULL,
  `srb_dislike` mediumint(8) unsigned NOT NULL,
  `srb_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`srb_id`),
  KEY `srb_uid` (`srb_uid`,`srb_subject_id`,`srb_entry_id`),
  KEY `subject_related` (`srb_subject_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=227141 DEFAULT CHARSET=utf8 COMMENT='条目关联日志';
/*!40101 SET character_set_client = @saved_cs_client */;

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

--
-- Table structure for table `chii_subject_relations_bak_240803`
--

DROP TABLE IF EXISTS `chii_subject_relations_bak_240803`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_relations_bak_240803` (
  `rlt_subject_id` mediumint(8) unsigned NOT NULL COMMENT '关联主 ID',
  `rlt_subject_type_id` tinyint(3) unsigned NOT NULL,
  `rlt_relation_type` smallint(5) unsigned NOT NULL COMMENT '关联类型',
  `rlt_related_subject_id` mediumint(8) unsigned NOT NULL COMMENT '关联目标 ID',
  `rlt_related_subject_type_id` tinyint(3) unsigned NOT NULL COMMENT '关联目标类型',
  `rlt_vice_versa` tinyint(1) unsigned NOT NULL,
  `rlt_order` tinyint(3) unsigned NOT NULL COMMENT '关联排序',
  UNIQUE KEY `rlt_subject_id` (`rlt_subject_id`,`rlt_related_subject_id`,`rlt_vice_versa`),
  KEY `rlt_related_subject_type_id` (`rlt_related_subject_type_id`,`rlt_order`),
  KEY `rlt_subject_type_id` (`rlt_subject_type_id`),
  KEY `rlt_relation_type` (`rlt_relation_type`,`rlt_subject_id`,`rlt_related_subject_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='条目关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_revisions`
--

DROP TABLE IF EXISTS `chii_subject_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_revisions` (
  `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rev_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '修订类型',
  `rev_subject_id` mediumint(8) unsigned NOT NULL,
  `rev_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rev_creator` mediumint(8) unsigned NOT NULL,
  `rev_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `rev_name` varchar(80) NOT NULL,
  `rev_name_cn` varchar(80) NOT NULL,
  `rev_field_infobox` mediumtext NOT NULL,
  `rev_field_meta_tags` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `rev_field_summary` mediumtext NOT NULL,
  `rev_vote_field` mediumtext NOT NULL,
  `rev_field_eps` mediumint(8) unsigned NOT NULL,
  `rev_edit_summary` varchar(200) NOT NULL,
  `rev_platform` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `rev_subject_id` (`rev_subject_id`,`rev_creator`),
  KEY `rev_type` (`rev_type`),
  KEY `rev_dateline` (`rev_dateline`),
  KEY `rev_creator` (`rev_creator`,`rev_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1425372 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subject_topics`
--

DROP TABLE IF EXISTS `chii_subject_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subject_topics` (
  `sbj_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sbj_tpc_subject_id` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_uid` mediumint(8) unsigned NOT NULL,
  `sbj_tpc_title` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `sbj_tpc_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbj_tpc_state` tinyint(1) unsigned NOT NULL,
  `sbj_tpc_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`sbj_tpc_id`),
  KEY `tpc_subject_id` (`sbj_tpc_subject_id`),
  KEY `tpc_display` (`sbj_tpc_display`),
  KEY `sbj_tpc_uid` (`sbj_tpc_uid`),
  KEY `sbj_tpc_lastpost` (`sbj_tpc_lastpost`,`sbj_tpc_subject_id`,`sbj_tpc_display`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subjects`
--

DROP TABLE IF EXISTS `chii_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subjects` (
  `subject_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `subject_name` varchar(512) NOT NULL,
  `subject_name_cn` varchar(512) NOT NULL,
  `subject_uid` varchar(20) NOT NULL COMMENT 'isbn / imdb',
  `subject_creator` mediumint(8) unsigned NOT NULL,
  `subject_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `subject_image` varchar(255) NOT NULL,
  `subject_platform` smallint(6) unsigned NOT NULL DEFAULT '0',
  `field_infobox` mediumtext NOT NULL,
  `field_summary` mediumtext NOT NULL COMMENT 'summary',
  `field_5` mediumtext NOT NULL COMMENT 'author summary',
  `field_volumes` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '卷数',
  `field_eps` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_wish` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_collect` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_doing` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_on_hold` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '搁置人数',
  `subject_dropped` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '抛弃人数',
  `subject_series` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject_series_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_idx_cn` varchar(1) NOT NULL,
  `subject_airtime` tinyint(1) unsigned NOT NULL,
  `subject_nsfw` tinyint(1) NOT NULL,
  `subject_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subject_id`),
  KEY `subject_name_cn` (`subject_name_cn`),
  KEY `subject_platform` (`subject_platform`),
  KEY `subject_creator` (`subject_creator`),
  KEY `subject_series` (`subject_series`),
  KEY `subject_series_entry` (`subject_series_entry`),
  KEY `subject_airtime` (`subject_airtime`),
  KEY `subject_ban` (`subject_ban`),
  KEY `subject_idx_cn` (`subject_idx_cn`,`subject_type_id`),
  KEY `subject_type_id` (`subject_type_id`),
  KEY `subject_name` (`subject_name`),
  KEY `order_by_name` (`subject_ban`,`subject_type_id`,`subject_series`,`subject_platform`,`subject_name`) USING BTREE,
  KEY `browser` (`subject_ban`,`subject_type_id`,`subject_series`,`subject_platform`) USING BTREE,
  KEY `subject_nsfw` (`subject_nsfw`)
) ENGINE=InnoDB AUTO_INCREMENT=516342 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_subjects_240921`
--

DROP TABLE IF EXISTS `chii_subjects_240921`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_subjects_240921` (
  `subject_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `subject_name` varchar(80) NOT NULL,
  `subject_name_cn` varchar(80) NOT NULL,
  `subject_uid` varchar(20) NOT NULL COMMENT 'isbn / imdb',
  `subject_creator` mediumint(8) unsigned NOT NULL,
  `subject_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `subject_image` varchar(255) NOT NULL,
  `subject_platform` smallint(6) unsigned NOT NULL DEFAULT '0',
  `field_infobox` mediumtext NOT NULL,
  `field_summary` mediumtext NOT NULL COMMENT 'summary',
  `field_5` mediumtext NOT NULL COMMENT 'author summary',
  `field_volumes` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '卷数',
  `field_eps` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_wish` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_collect` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_doing` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_on_hold` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '搁置人数',
  `subject_dropped` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '抛弃人数',
  `subject_series` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject_series_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_idx_cn` varchar(1) NOT NULL,
  `subject_airtime` tinyint(1) unsigned NOT NULL,
  `subject_nsfw` tinyint(1) NOT NULL,
  `subject_ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subject_id`),
  KEY `subject_name_cn` (`subject_name_cn`),
  KEY `subject_platform` (`subject_platform`),
  KEY `subject_creator` (`subject_creator`),
  KEY `subject_series` (`subject_series`),
  KEY `subject_series_entry` (`subject_series_entry`),
  KEY `subject_airtime` (`subject_airtime`),
  KEY `subject_ban` (`subject_ban`),
  KEY `subject_idx_cn` (`subject_idx_cn`,`subject_type_id`),
  KEY `subject_type_id` (`subject_type_id`),
  KEY `subject_name` (`subject_name`),
  KEY `order_by_name` (`subject_ban`,`subject_type_id`,`subject_series`,`subject_platform`,`subject_name`) USING BTREE,
  KEY `browser` (`subject_ban`,`subject_type_id`,`subject_series`,`subject_platform`) USING BTREE,
  KEY `subject_nsfw` (`subject_nsfw`)
) ENGINE=InnoDB AUTO_INCREMENT=514316 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_tag_index`
--

DROP TABLE IF EXISTS `chii_tag_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_index` (
  `tag_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) NOT NULL COMMENT '1=书 2=影 3=音 4=游 5=日志 6=三次元 7=社团 8=天窗',
  `tag_type_id` smallint(6) unsigned NOT NULL,
  `tag_result` mediumint(8) unsigned NOT NULL,
  `tag_dateline` int(10) unsigned NOT NULL,
  `tag_lasttouch` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tag_type_id` (`tag_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44096 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_tag_list`
--

DROP TABLE IF EXISTS `chii_tag_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_list` (
  `tlt_tid` mediumint(8) unsigned NOT NULL,
  `tlt_uid` mediumint(8) unsigned NOT NULL,
  `tlt_cid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'tag分类',
  `tlt_sid` mediumint(8) unsigned NOT NULL,
  `tag_dateline` int(10) unsigned NOT NULL,
  KEY `tlt_tid` (`tlt_tid`,`tlt_uid`,`tlt_sid`),
  KEY `tlt_cid` (`tlt_cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_tag_neue_fields`
--

DROP TABLE IF EXISTS `chii_tag_neue_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_neue_fields` (
  `field_tid` int(10) unsigned NOT NULL,
  `field_summary` mediumtext NOT NULL,
  `field_order` mediumint(9) NOT NULL DEFAULT '0',
  `field_nsfw` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field_lock` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_tag_neue_index`
--

DROP TABLE IF EXISTS `chii_tag_neue_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_neue_index` (
  `tag_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tag_cat` tinyint(3) NOT NULL COMMENT '0=条目 1=日志 2=天窗',
  `tag_type` tinyint(3) NOT NULL,
  `tag_results` mediumint(8) unsigned NOT NULL,
  `tag_dateline` int(10) unsigned NOT NULL,
  `tag_lasttouch` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tag_cat` (`tag_cat`,`tag_type`),
  KEY `tag_results` (`tag_cat`,`tag_type`,`tag_results`),
  KEY `tag_query` (`tag_name`,`tag_cat`,`tag_type`)
) ENGINE=InnoDB AUTO_INCREMENT=416333 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_tag_neue_list`
--

DROP TABLE IF EXISTS `chii_tag_neue_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tag_neue_list` (
  `tlt_tid` mediumint(8) unsigned NOT NULL,
  `tlt_uid` mediumint(8) unsigned NOT NULL,
  `tlt_cat` tinyint(3) unsigned NOT NULL,
  `tlt_type` tinyint(3) unsigned NOT NULL,
  `tlt_mid` mediumint(8) unsigned NOT NULL,
  `tlt_dateline` int(10) unsigned NOT NULL,
  KEY `tlt_tid` (`tlt_tid`,`tlt_uid`,`tlt_cat`,`tlt_type`,`tlt_mid`),
  KEY `user_tags` (`tlt_uid`,`tlt_cat`,`tlt_mid`,`tlt_tid`),
  KEY `subject_tags` (`tlt_cat`,`tlt_mid`,`tlt_tid`),
  KEY `tag_to_subject` (`tlt_tid`,`tlt_mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_timeline`
--

DROP TABLE IF EXISTS `chii_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_timeline` (
  `tml_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tml_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tml_cat` smallint(6) unsigned NOT NULL,
  `tml_type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tml_related` char(255) NOT NULL DEFAULT '0',
  `tml_memo` mediumtext NOT NULL,
  `tml_img` mediumtext NOT NULL,
  `tml_batch` tinyint(3) unsigned NOT NULL,
  `tml_source` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '更新来源',
  `tml_replies` mediumint(8) unsigned NOT NULL COMMENT '回复数',
  `tml_dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tml_id`),
  KEY `tml_uid` (`tml_uid`),
  KEY `tml_cat` (`tml_cat`),
  KEY `tml_batch` (`tml_batch`),
  KEY `query_tml_cat` (`tml_uid`,`tml_cat`),
  KEY `tml_cat_date` (`tml_uid`,`tml_cat`,`tml_dateline`)
) ENGINE=InnoDB AUTO_INCREMENT=45552677 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_timeline_comments`
--

DROP TABLE IF EXISTS `chii_timeline_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_timeline_comments` (
  `tml_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tml_pst_mid` int(10) unsigned NOT NULL COMMENT '关联人物ID',
  `tml_pst_uid` mediumint(8) unsigned NOT NULL,
  `tml_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tml_pst_dateline` int(10) unsigned NOT NULL,
  `tml_pst_content` mediumtext NOT NULL,
  PRIMARY KEY (`tml_pst_id`),
  KEY `cmt_tml_id` (`tml_pst_mid`),
  KEY `tml_pst_related` (`tml_pst_related`),
  KEY `tml_pst_uid` (`tml_pst_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=161773 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_tokei_paint`
--

DROP TABLE IF EXISTS `chii_tokei_paint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_tokei_paint` (
  `tp_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tp_uid` mediumint(8) unsigned NOT NULL,
  `tp_hour` tinyint(2) unsigned NOT NULL,
  `tp_min` tinyint(2) unsigned NOT NULL,
  `tp_url` varchar(255) NOT NULL,
  `tp_desc` mediumtext NOT NULL,
  `tp_book` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tp_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tp_related_tpc` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '关联小组话题',
  `tp_lastupdate` int(10) unsigned NOT NULL COMMENT '最近更新时间',
  `tp_dateline` int(10) NOT NULL,
  PRIMARY KEY (`tp_id`),
  KEY `tp_uid` (`tp_uid`,`tp_hour`),
  KEY `tp_related_tpc` (`tp_related_tpc`)
) ENGINE=MyISAM AUTO_INCREMENT=2505 DEFAULT CHARSET=utf8 COMMENT='Tokei Paints';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chii_usergroup`
--

DROP TABLE IF EXISTS `chii_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chii_usergroup` (
  `usr_grp_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `usr_grp_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usr_grp_perm` mediumtext CHARACTER SET utf8 NOT NULL,
  `usr_grp_dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usr_grp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
