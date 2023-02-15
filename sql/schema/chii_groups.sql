CREATE TABLE IF NOT EXISTS
  `chii_groups` (
    `grp_id` SMALLINT(6) UNSIGNED NOT NULL,
    `grp_cat` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `grp_name` CHAR(50) NOT NULL,
    `grp_title` CHAR(50) NOT NULL,
    `grp_icon` VARCHAR(255) NOT NULL,
    `grp_creator` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `grp_topics` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `grp_posts` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `grp_members` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '1',
    `grp_desc` TEXT NOT NULL,
    `grp_lastpost` INT(10) UNSIGNED NOT NULL,
    `grp_builddate` INT(10) UNSIGNED NOT NULL,
    `grp_accessible` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '可访问性',
    `grp_nsfw` TINYINT(1) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_groups`
ADD
  PRIMARY KEY (`grp_id`);

ALTER TABLE
  `chii_groups`
MODIFY
  `grp_id` SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT;
