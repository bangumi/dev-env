CREATE TABLE
  `chii_subject_imgs` (
    `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    `img_subject_id` mediumint(8) unsigned NOT NULL,
    `img_uid` mediumint(8) unsigned NOT NULL,
    `img_target` varchar(255) NOT NULL,
    `img_vote` mediumint(8) unsigned NOT NULL,
    `img_nsfw` tinyint(1) unsigned NOT NULL,
    `img_ban` tinyint(1) unsigned NOT NULL,
    `img_dateline` int(10) unsigned NOT NULL,
    PRIMARY KEY (`img_id`),
    KEY `img_subject_id` (`img_subject_id`),
    KEY `img_nsfw` (`img_nsfw`, `img_ban`)
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;
