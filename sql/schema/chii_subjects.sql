CREATE TABLE
  IF NOT EXISTS `chii_subjects` (
    `subject_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `subject_type_id` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `subject_name` VARCHAR(80) NOT NULL,
    `subject_name_cn` VARCHAR(80) NOT NULL,
    `subject_uid` VARCHAR(20) NOT NULL COMMENT 'isbn / imdb',
    `subject_creator` MEDIUMINT(8) UNSIGNED NOT NULL,
    `subject_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `subject_image` VARCHAR(255) NOT NULL,
    `subject_platform` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `field_infobox` MEDIUMTEXT NOT NULL,
    `field_summary` MEDIUMTEXT NOT NULL COMMENT 'summary',
    `field_5` MEDIUMTEXT NOT NULL COMMENT 'author summary',
    `field_volumes` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '卷数',
    `field_eps` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `subject_wish` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `subject_collect` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `subject_doing` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `subject_on_hold` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '搁置人数',
    `subject_dropped` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '抛弃人数',
    `subject_series` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
    `subject_series_entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `subject_idx_cn` VARCHAR(1) NOT NULL,
    `subject_airtime` TINYINT(1) UNSIGNED NOT NULL,
    `subject_nsfw` TINYINT(1) NOT NULL,
    `subject_ban` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE
  IF NOT EXISTS `chii_subject_alias` (
    `subject_id` INT(10) UNSIGNED NOT NULL,
    `alias_name` VARCHAR(255) NOT NULL,
    `subject_type_id` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属条目的类型',
    `alias_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是别名还是条目名',
    `alias_key` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE
  IF NOT EXISTS `chii_subject_fields` (
    `field_sid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `field_tid` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `field_tags` MEDIUMTEXT NOT NULL,
    `field_rate_1` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_3` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_4` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_5` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_6` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_7` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_8` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_9` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_rate_10` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `field_airtime` TINYINT(1) UNSIGNED NOT NULL,
    `field_rank` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `field_year` YEAR(4) NOT NULL COMMENT '放送年份',
    `field_mon` TINYINT(2) NOT NULL COMMENT '放送月份',
    `field_week_day` TINYINT(1) NOT NULL COMMENT '放送日(星期X)',
    `field_date` DATE NOT NULL COMMENT '放送日期',
    `field_redirect` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE
  IF NOT EXISTS `chii_subject_relations` (
    `rlt_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联主 ID',
    `rlt_subject_type_id` TINYINT(3) UNSIGNED NOT NULL,
    `rlt_relation_type` SMALLINT(5) UNSIGNED NOT NULL COMMENT '关联类型',
    `rlt_related_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联目标 ID',
    `rlt_related_subject_type_id` TINYINT(3) UNSIGNED NOT NULL COMMENT '关联目标类型',
    `rlt_vice_versa` TINYINT(1) UNSIGNED NOT NULL,
    `rlt_order` TINYINT(3) UNSIGNED NOT NULL COMMENT '关联排序'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci COMMENT = '条目关联表';

ALTER TABLE `chii_subjects`
ADD PRIMARY KEY (`subject_id`),
ADD KEY `subject_name_cn` (`subject_name_cn`),
ADD KEY `subject_platform` (`subject_platform`),
ADD KEY `subject_creator` (`subject_creator`),
ADD KEY `subject_series` (`subject_series`),
ADD KEY `subject_series_entry` (`subject_series_entry`),
ADD KEY `subject_airtime` (`subject_airtime`),
ADD KEY `subject_ban` (`subject_ban`),
ADD KEY `subject_idx_cn` (`subject_idx_cn`, `subject_type_id`),
ADD KEY `subject_type_id` (`subject_type_id`),
ADD KEY `subject_name` (`subject_name`),
ADD
  KEY `order_by_name` (`subject_ban`, `subject_type_id`, `subject_series`, `subject_platform`, `subject_name`) USING BTREE,
ADD KEY `browser` (`subject_ban`, `subject_type_id`, `subject_series`, `subject_platform`) USING BTREE,
ADD KEY `subject_nsfw` (`subject_nsfw`);

ALTER TABLE `chii_subject_alias`
ADD KEY `subject_id` (`subject_id`);

ALTER TABLE `chii_subject_fields`
ADD PRIMARY KEY (`field_sid`),
ADD KEY `sort_id` (`field_tid`),
ADD KEY `subject_airtime` (`field_airtime`),
ADD KEY `field_rank` (`field_rank`),
ADD KEY `field_date` (`field_date`),
ADD KEY `field_year_mon` (`field_year`, `field_mon`),
ADD KEY `field_year` (`field_year`),
ADD KEY `query_date` (`field_sid`, `field_date`);

ALTER TABLE `chii_subject_relations`
ADD UNIQUE KEY `rlt_subject_id` (`rlt_subject_id`, `rlt_related_subject_id`, `rlt_vice_versa`),
ADD KEY `rlt_related_subject_type_id` (`rlt_related_subject_type_id`, `rlt_order`),
ADD KEY `rlt_subject_type_id` (`rlt_subject_type_id`),
ADD KEY `rlt_relation_type` (`rlt_relation_type`, `rlt_subject_id`, `rlt_related_subject_id`) USING BTREE;

ALTER TABLE `chii_subjects` MODIFY `subject_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `chii_subject_fields` MODIFY `field_sid` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;