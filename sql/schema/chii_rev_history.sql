CREATE TABLE IF NOT EXISTS
  `chii_rev_history` (
    `rev_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_type` TINYINT(3) UNSIGNED NOT NULL COMMENT '条目，角色，人物',
    `rev_mid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '对应条目，人物的ID',
    `rev_text_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `rev_dateline` INT(10) UNSIGNED NOT NULL,
    `rev_creator` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_edit_summary` VARCHAR(200) COLLATE utf8_unicode_ci NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS
  `chii_rev_text` (
    `rev_text_id` MEDIUMINT(9) UNSIGNED NOT NULL,
    `rev_text` MEDIUMBLOB NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

ALTER TABLE
  `chii_rev_history`
ADD
  PRIMARY KEY (`rev_id`),
ADD
  KEY `rev_crt_id` (`rev_type`, `rev_mid`),
ADD
  KEY `rev_crt_creator` (`rev_creator`),
ADD
  KEY `rev_id` (`rev_id`, `rev_type`, `rev_creator`);

ALTER TABLE
  `chii_rev_text`
ADD
  PRIMARY KEY (`rev_text_id`);

ALTER TABLE
  `chii_rev_history`
MODIFY
  `rev_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE
  `chii_rev_text`
MODIFY
  `rev_text_id` MEDIUMINT(9) UNSIGNED NOT NULL AUTO_INCREMENT;
