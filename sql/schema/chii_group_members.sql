CREATE TABLE IF NOT EXISTS
  `chii_group_members` (
    `gmb_uid` MEDIUMINT(8) NOT NULL DEFAULT '0',
    `gmb_gid` SMALLINT(6) NOT NULL DEFAULT '0',
    `gmb_moderator` TINYINT(1) NOT NULL DEFAULT '0',
    `gmb_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_group_members`
ADD
  PRIMARY KEY (`gmb_uid`, `gmb_gid`);
