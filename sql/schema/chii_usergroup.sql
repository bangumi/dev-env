CREATE TABLE IF NOT EXISTS
  `chii_usergroup` (
    `usr_grp_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `usr_grp_name` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
    `usr_grp_perm` MEDIUMTEXT CHARACTER SET utf8 NOT NULL,
    `usr_grp_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

ALTER TABLE
  `chii_usergroup`
ADD
  PRIMARY KEY (`usr_grp_id`);

ALTER TABLE
  `chii_usergroup`
MODIFY
  `usr_grp_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 12;
