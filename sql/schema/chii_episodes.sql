CREATE TABLE IF NOT EXISTS
  `chii_episodes` (
    `ep_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_sort` FLOAT UNSIGNED NOT NULL DEFAULT '0',
    `ep_type` TINYINT(1) UNSIGNED NOT NULL,
    `ep_disc` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '碟片数',
    `ep_name` VARCHAR(80) NOT NULL,
    `ep_name_cn` VARCHAR(80) NOT NULL,
    `ep_rate` TINYINT(3) NOT NULL,
    `ep_duration` VARCHAR(80) NOT NULL,
    `ep_airdate` VARCHAR(80) NOT NULL,
    `ep_online` MEDIUMTEXT NOT NULL,
    `ep_comment` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_resources` MEDIUMINT(8) UNSIGNED NOT NULL,
    `ep_desc` MEDIUMTEXT NOT NULL,
    `ep_dateline` INT(10) UNSIGNED NOT NULL,
    `ep_lastpost` INT(10) UNSIGNED NOT NULL,
    `ep_lock` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `ep_ban` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_episodes`
ADD
  PRIMARY KEY (`ep_id`),
ADD
  KEY `ep_sort` (`ep_sort`),
ADD
  KEY `ep_disc` (`ep_disc`),
ADD
  KEY `ep_subject_id` (`ep_subject_id`),
ADD
  KEY `ep_lastpost` (`ep_lastpost`),
ADD
  KEY `ep_ban` (`ep_ban`),
ADD
  KEY `ep_subject_id_2` (`ep_subject_id`, `ep_ban`, `ep_sort`);

ALTER TABLE
  `chii_episodes`
MODIFY
  `ep_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
