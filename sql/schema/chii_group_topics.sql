CREATE TABLE IF NOT EXISTS
  `chii_group_topics` (
    `grp_tpc_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `grp_tpc_gid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `grp_tpc_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `grp_tpc_title` VARCHAR(80) NOT NULL,
    `grp_tpc_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `grp_tpc_lastpost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `grp_tpc_replies` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `grp_tpc_state` TINYINT(1) UNSIGNED NOT NULL,
    `grp_tpc_display` TINYINT(1) UNSIGNED NOT NULL DEFAULT '1'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE
  `chii_group_topics`
ADD
  PRIMARY KEY (`grp_tpc_id`),
ADD
  KEY `grp_tpc_gid` (`grp_tpc_gid`),
ADD
  KEY `grp_tpc_display` (`grp_tpc_display`),
ADD
  KEY `grp_tpc_uid` (`grp_tpc_uid`),
ADD
  KEY `grp_tpc_lastpost` (`grp_tpc_lastpost`);

ALTER TABLE
  `chii_group_topics`
MODIFY
  `grp_tpc_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
