CREATE TABLE IF NOT EXISTS
  `chii_characters` (
    `crt_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `crt_name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `crt_role` TINYINT(4) UNSIGNED NOT NULL COMMENT '角色，机体，组织。。',
    `crt_infobox` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL,
    `crt_summary` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL,
    `crt_img` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `crt_comment` MEDIUMINT(9) UNSIGNED NOT NULL DEFAULT '0',
    `crt_collects` MEDIUMINT(8) UNSIGNED NOT NULL,
    `crt_dateline` INT(10) UNSIGNED NOT NULL,
    `crt_lastpost` INT(11) UNSIGNED NOT NULL,
    `crt_lock` TINYINT(4) NOT NULL DEFAULT '0',
    `crt_img_anidb` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
    `crt_anidb_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `crt_ban` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `crt_redirect` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `crt_nsfw` TINYINT(1) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS
  `chii_crt_cast_index` (
    `crt_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `prsn_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `subject_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `subject_type_id` TINYINT(3) UNSIGNED NOT NULL COMMENT '根据人物归类查询角色，动画，书籍，游戏',
    `summary` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '幼年，男乱马，女乱马，变身形态，少女形态。。'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS
  `chii_crt_subject_index` (
    `crt_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `subject_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `subject_type_id` TINYINT(4) UNSIGNED NOT NULL,
    `crt_type` TINYINT(4) UNSIGNED NOT NULL COMMENT '主角，配角',
    `ctr_appear_eps` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，角色出场的的章节',
    `crt_order` TINYINT(3) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS
  `chii_persons` (
    `prsn_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `prsn_type` TINYINT(4) UNSIGNED NOT NULL COMMENT '个人，公司，组合',
    `prsn_infobox` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL,
    `prsn_producer` TINYINT(1) NOT NULL,
    `prsn_mangaka` TINYINT(1) NOT NULL,
    `prsn_artist` TINYINT(1) NOT NULL,
    `prsn_seiyu` TINYINT(1) NOT NULL,
    `prsn_writer` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '作家',
    `prsn_illustrator` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '绘师',
    `prsn_actor` TINYINT(1) NOT NULL COMMENT '演员',
    `prsn_summary` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL,
    `prsn_img` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `prsn_img_anidb` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
    `prsn_comment` MEDIUMINT(9) UNSIGNED NOT NULL,
    `prsn_collects` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_dateline` INT(10) UNSIGNED NOT NULL,
    `prsn_lastpost` INT(11) UNSIGNED NOT NULL,
    `prsn_lock` TINYINT(4) NOT NULL,
    `prsn_anidb_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_ban` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `prsn_redirect` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `prsn_nsfw` TINYINT(1) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci COMMENT = '（现实）人物表';

CREATE TABLE IF NOT EXISTS
  `chii_person_alias` (
    `prsn_cat` ENUM('prsn', 'crt') COLLATE utf8_unicode_ci NOT NULL,
    `prsn_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `alias_name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
    `alias_type` TINYINT(4) UNSIGNED NOT NULL,
    `alias_key` VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS
  `chii_person_collects` (
    `prsn_clt_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_clt_cat` ENUM('prsn', 'crt') NOT NULL,
    `prsn_clt_mid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_clt_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_clt_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COMMENT = '人物收藏';

CREATE TABLE IF NOT EXISTS
  `chii_person_cs_index` (
    `prsn_type` ENUM('prsn', 'crt') COLLATE utf8_unicode_ci NOT NULL,
    `prsn_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `prsn_position` SMALLINT(5) UNSIGNED NOT NULL COMMENT '监督，原案，脚本,..',
    `subject_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `subject_type_id` TINYINT(4) UNSIGNED NOT NULL,
    `summary` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL,
    `prsn_appear_eps` MEDIUMTEXT COLLATE utf8_unicode_ci NOT NULL COMMENT '可选，人物参与的章节'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'subjects'' credits/creator & staff (c&s)index';

CREATE TABLE IF NOT EXISTS
  `chii_person_fields` (
    `prsn_cat` ENUM('prsn', 'crt') COLLATE utf8_unicode_ci NOT NULL,
    `prsn_id` INT(8) UNSIGNED NOT NULL,
    `gender` TINYINT(4) UNSIGNED NOT NULL,
    `bloodtype` TINYINT(4) UNSIGNED NOT NULL,
    `birth_year` YEAR(4) NOT NULL,
    `birth_mon` TINYINT(2) UNSIGNED NOT NULL,
    `birth_day` TINYINT(2) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS
  `chii_person_relationship` (
    `prsn_type` ENUM('prsn', 'crt') COLLATE utf8_unicode_ci NOT NULL,
    `prsn_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `relat_prsn_type` ENUM('prsn', 'crt') COLLATE utf8_unicode_ci NOT NULL,
    `relat_prsn_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `relat_type` SMALLINT(6) UNSIGNED NOT NULL COMMENT '任职于，从属,聘用,嫁给，'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

ALTER TABLE
  `chii_characters`
ADD
  PRIMARY KEY (`crt_id`),
ADD
  KEY `crt_role` (`crt_role`),
ADD
  KEY `crt_lock` (`crt_lock`),
ADD
  KEY `crt_ban` (`crt_ban`);

ALTER TABLE
  `chii_crt_cast_index`
ADD
  PRIMARY KEY (`crt_id`, `prsn_id`, `subject_id`),
ADD
  KEY `prsn_id` (`prsn_id`),
ADD
  KEY `subject_id` (`subject_id`),
ADD
  KEY `subject_type_id` (`subject_type_id`);

ALTER TABLE
  `chii_crt_subject_index`
ADD
  PRIMARY KEY (`crt_id`, `subject_id`),
ADD
  KEY `subject_id` (`subject_id`),
ADD
  KEY `crt_type` (`crt_type`),
ADD
  KEY `subject_type_id` (`subject_type_id`);

ALTER TABLE
  `chii_persons`
ADD
  PRIMARY KEY (`prsn_id`),
ADD
  KEY `prsn_type` (`prsn_type`),
ADD
  KEY `prsn_producer` (`prsn_producer`),
ADD
  KEY `prsn_mangaka` (`prsn_mangaka`),
ADD
  KEY `prsn_artist` (`prsn_artist`),
ADD
  KEY `prsn_seiyu` (`prsn_seiyu`),
ADD
  KEY `prsn_writer` (`prsn_writer`),
ADD
  KEY `prsn_illustrator` (`prsn_illustrator`),
ADD
  KEY `prsn_lock` (`prsn_lock`),
ADD
  KEY `prsn_ban` (`prsn_ban`),
ADD
  KEY `prsn_actor` (`prsn_actor`);

ALTER TABLE
  `chii_person_alias`
ADD
  KEY `prsn_cat` (`prsn_cat`, `prsn_id`),
ADD
  KEY `prsn_id` (`prsn_id`);

ALTER TABLE
  `chii_person_collects`
ADD
  PRIMARY KEY (`prsn_clt_id`),
ADD
  KEY `prsn_clt_cat` (`prsn_clt_cat`, `prsn_clt_mid`),
ADD
  KEY `prsn_clt_uid` (`prsn_clt_uid`),
ADD
  KEY `prsn_clt_mid` (`prsn_clt_mid`);

ALTER TABLE
  `chii_person_cs_index`
ADD
  PRIMARY KEY (
    `prsn_type`,
    `prsn_id`,
    `subject_id`,
    `prsn_position`
  ),
ADD
  KEY `subject_id` (`subject_id`),
ADD
  KEY `prsn_position` (`prsn_position`),
ADD
  KEY `prsn_id` (`prsn_id`),
ADD
  KEY `subject_type_id` (`subject_type_id`);

ALTER TABLE
  `chii_person_fields`
ADD
  PRIMARY KEY (`prsn_cat`, `prsn_id`),
ADD
  KEY `prsn_id` (`prsn_id`);

ALTER TABLE
  `chii_person_relationship`
ADD
  KEY `prsn_type` (`prsn_type`, `prsn_id`),
ADD
  KEY `relat_prsn_type` (`relat_prsn_type`, `relat_prsn_id`);

ALTER TABLE
  `chii_characters`
MODIFY
  `crt_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_persons`
MODIFY
  `prsn_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_person_collects`
MODIFY
  `prsn_clt_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
