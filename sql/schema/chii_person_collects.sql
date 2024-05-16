CREATE TABLE IF NOT EXISTS
  `chii_person_collects` (
    `prsn_clt_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_clt_cat` ENUM('prsn', 'crt') NOT NULL,
    `prsn_clt_mid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_clt_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `prsn_clt_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COMMENT = '人物收藏';

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
  `chii_person_collects`
MODIFY
  `prsn_clt_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;
