DROP TABLE IF EXISTS `chii_tag_neue_index`;

CREATE TABLE
  `chii_tag_neue_index` (
    `tag_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    `tag_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
    `tag_cat` tinyint(3) NOT NULL COMMENT '0=条目 1=日志 2=天窗',
    `tag_type` tinyint(3) NOT NULL,
    `tag_results` mediumint(8) unsigned NOT NULL,
    `tag_dateline` int(10) unsigned NOT NULL,
    `tag_lasttouch` int(10) unsigned NOT NULL,
    PRIMARY KEY (`tag_id`),
    KEY `tag_cat` (`tag_cat`, `tag_type`),
    KEY `tag_results` (`tag_cat`, `tag_type`, `tag_results`),
    KEY `tag_query` (`tag_name`, `tag_cat`, `tag_type`)
  ) ENGINE = MyISAM AUTO_INCREMENT = 367287 DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;