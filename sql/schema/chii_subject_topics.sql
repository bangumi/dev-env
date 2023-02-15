CREATE TABLE IF NOT EXISTS
  `chii_subject_topics` (
    `sbj_tpc_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `sbj_tpc_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `sbj_tpc_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `sbj_tpc_title` VARCHAR(80) CHARACTER SET utf8mb4 NOT NULL,
    `sbj_tpc_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `sbj_tpc_lastpost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `sbj_tpc_replies` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `sbj_tpc_state` TINYINT(1) UNSIGNED NOT NULL,
    `sbj_tpc_display` TINYINT(1) UNSIGNED NOT NULL DEFAULT '1'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_subject_topics`
ADD
  PRIMARY KEY (`sbj_tpc_id`),
ADD
  KEY `tpc_subject_id` (`sbj_tpc_subject_id`),
ADD
  KEY `tpc_display` (`sbj_tpc_display`),
ADD
  KEY `sbj_tpc_uid` (`sbj_tpc_uid`),
ADD
  KEY `sbj_tpc_lastpost` (`sbj_tpc_lastpost`, `sbj_tpc_subject_id`, `sbj_tpc_display`) USING BTREE;

ALTER TABLE
  `chii_subject_topics`
MODIFY
  `sbj_tpc_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
