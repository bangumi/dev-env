CREATE TABLE IF NOT EXISTS
  `chii_crt_comments` (
    `crt_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `crt_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联人物ID',
    `crt_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `crt_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `crt_pst_dateline` INT(10) UNSIGNED NOT NULL,
    `crt_pst_content` MEDIUMTEXT NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS
  `chii_ep_comments` (
    `ep_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `ep_pst_dateline` INT(10) UNSIGNED NOT NULL,
    `ep_pst_content` MEDIUMTEXT NOT NULL,
    `ep_pst_state` TINYINT(1) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS
  `chii_group_posts` (
    `grp_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `grp_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `grp_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `grp_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '关联回复ID',
    `grp_pst_content` MEDIUMTEXT NOT NULL,
    `grp_pst_state` TINYINT(1) UNSIGNED NOT NULL,
    `grp_pst_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS
  `chii_prsn_comments` (
    `prsn_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联人物ID',
    `prsn_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `prsn_pst_dateline` INT(10) UNSIGNED NOT NULL,
    `prsn_pst_content` MEDIUMTEXT NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS
  `chii_subject_posts` (
    `sbj_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `sbj_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `sbj_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `sbj_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `sbj_pst_content` MEDIUMTEXT CHARACTER SET utf8mb4 NOT NULL,
    `sbj_pst_state` TINYINT(1) UNSIGNED NOT NULL,
    `sbj_pst_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_crt_comments`
ADD
  PRIMARY KEY (`crt_pst_id`),
ADD
  KEY `cmt_crt_id` (`crt_pst_mid`),
ADD
  KEY `crt_pst_related` (`crt_pst_related`),
ADD
  KEY `crt_pst_uid` (`crt_pst_uid`);

ALTER TABLE
  `chii_ep_comments`
ADD
  PRIMARY KEY (`ep_pst_id`),
ADD
  KEY `ep_cmt_crt_id` (`ep_pst_mid`),
ADD
  KEY `ep_pst_related` (`ep_pst_related`),
ADD
  KEY `ep_pst_uid` (`ep_pst_uid`);

ALTER TABLE
  `chii_group_posts`
ADD
  PRIMARY KEY (`grp_pst_id`),
ADD
  KEY `pss_topic_id` (`grp_pst_mid`),
ADD
  KEY `grp_pst_related` (`grp_pst_related`),
ADD
  KEY `grp_pst_uid` (`grp_pst_uid`);

ALTER TABLE
  `chii_prsn_comments`
ADD
  PRIMARY KEY (`prsn_pst_id`),
ADD
  KEY `cmt_prsn_id` (`prsn_pst_mid`),
ADD
  KEY `prsn_pst_related` (`prsn_pst_related`),
ADD
  KEY `prsn_pst_uid` (`prsn_pst_uid`);

ALTER TABLE
  `chii_subject_posts`
ADD
  PRIMARY KEY (`sbj_pst_id`),
ADD
  KEY `pss_topic_id` (`sbj_pst_mid`),
ADD
  KEY `sbj_pst_related` (`sbj_pst_related`),
ADD
  KEY `sbj_pst_uid` (`sbj_pst_uid`);

ALTER TABLE
  `chii_crt_comments`
MODIFY
  `crt_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_ep_comments`
MODIFY
  `ep_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_group_posts`
MODIFY
  `grp_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_prsn_comments`
MODIFY
  `prsn_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_subject_posts`
MODIFY
  `sbj_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
