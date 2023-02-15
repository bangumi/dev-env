CREATE TABLE IF NOT EXISTS
  `chii_index` (
    `idx_id` MEDIUMINT(8) NOT NULL COMMENT '自动id',
    `idx_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `idx_title` VARCHAR(80) NOT NULL COMMENT '标题',
    `idx_desc` MEDIUMTEXT NOT NULL COMMENT '简介',
    `idx_replies` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '回复数',
    `idx_subject_total` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '内含条目总数',
    `idx_collects` MEDIUMINT(8) NOT NULL DEFAULT '0' COMMENT '收藏数',
    `idx_stats` MEDIUMTEXT NOT NULL,
    `idx_dateline` INT(10) NOT NULL COMMENT '创建时间',
    `idx_lasttouch` INT(10) UNSIGNED NOT NULL,
    `idx_uid` MEDIUMINT(8) NOT NULL COMMENT '创建人UID',
    `idx_ban` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS
  `chii_index_collects` (
    `idx_clt_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `idx_clt_mid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '目录ID',
    `idx_clt_uid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '用户UID',
    `idx_clt_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COMMENT = '目录收藏';

CREATE TABLE IF NOT EXISTS
  `chii_index_comments` (
    `idx_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `idx_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `idx_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `idx_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `idx_pst_dateline` INT(10) UNSIGNED NOT NULL,
    `idx_pst_content` MEDIUMTEXT NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS
  `chii_index_related` (
    `idx_rlt_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `idx_rlt_cat` TINYINT(3) NOT NULL,
    `idx_rlt_rid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联目录',
    `idx_rlt_type` SMALLINT(6) UNSIGNED NOT NULL COMMENT '关联条目类型',
    `idx_rlt_sid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联条目ID',
    `idx_rlt_order` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `idx_rlt_comment` MEDIUMTEXT NOT NULL,
    `idx_rlt_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COMMENT = '目录关联表';

ALTER TABLE
  `chii_index`
ADD
  UNIQUE KEY `mid` (`idx_id`),
ADD
  KEY `idx_ban` (`idx_ban`),
ADD
  KEY `idx_type` (`idx_type`),
ADD
  KEY `idx_uid` (`idx_uid`),
ADD
  KEY `idx_collects` (`idx_collects`);

ALTER TABLE
  `chii_index_collects`
ADD
  PRIMARY KEY (`idx_clt_id`),
ADD
  KEY `idx_clt_mid` (`idx_clt_mid`, `idx_clt_uid`);

ALTER TABLE
  `chii_index_comments`
ADD
  PRIMARY KEY (`idx_pst_id`),
ADD
  KEY `idx_pst_mid` (`idx_pst_mid`),
ADD
  KEY `idx_pst_related` (`idx_pst_related`),
ADD
  KEY `idx_pst_uid` (`idx_pst_uid`);

ALTER TABLE
  `chii_index_related`
ADD
  PRIMARY KEY (`idx_rlt_id`),
ADD
  KEY `idx_rlt_rid` (`idx_rlt_rid`, `idx_rlt_type`),
ADD
  KEY `idx_rlt_sid` (`idx_rlt_rid`, `idx_rlt_sid`) USING BTREE,
ADD
  KEY `idx_rlt_sid_2` (`idx_rlt_sid`),
ADD
  KEY `idx_rlt_cat` (`idx_rlt_cat`),
ADD
  KEY `idx_order` (`idx_rlt_rid`, `idx_rlt_cat`, `idx_rlt_order`, `idx_rlt_sid`) USING BTREE;

ALTER TABLE
  `chii_index`
MODIFY
  `idx_id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT COMMENT '自动id';

ALTER TABLE
  `chii_index_collects`
MODIFY
  `idx_clt_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_index_comments`
MODIFY
  `idx_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_index_related`
MODIFY
  `idx_rlt_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
