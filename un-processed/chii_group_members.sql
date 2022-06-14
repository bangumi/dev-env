CREATE TABLE IF NOT EXISTS `chii_group_members` (
  `gmb_uid` mediumint(8) NOT NULL DEFAULT '0',
  `gmb_gid` smallint(6) NOT NULL DEFAULT '0',
  `gmb_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `gmb_dateline` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_group_members`
ADD
  PRIMARY KEY (`gmb_uid`, `gmb_gid`);
