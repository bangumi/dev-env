CREATE TABLE IF NOT EXISTS `chii_groups` (
    `grp_id` smallint(6) unsigned NOT NULL,
    `grp_cat` smallint(6) unsigned NOT NULL DEFAULT '0',
    `grp_name` char(50) NOT NULL,
    `grp_title` char(50) NOT NULL,
    `grp_icon` varchar(255) NOT NULL,
    `grp_creator` mediumint(8) unsigned NOT NULL DEFAULT '0',
    `grp_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
    `grp_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
    `grp_members` mediumint(8) unsigned NOT NULL DEFAULT '1',
    `grp_desc` text NOT NULL,
    `grp_lastpost` int(10) unsigned NOT NULL,
    `grp_builddate` int(10) unsigned NOT NULL,
    `grp_accessible` tinyint(1) NOT NULL DEFAULT '1' COMMENT '可访问性',
    `grp_nsfw` tinyint(1) unsigned NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
    `chii_groups`
ADD
    PRIMARY KEY (`grp_id`);

ALTER TABLE
    `chii_groups`
MODIFY
    `grp_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT;
