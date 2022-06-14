CREATE TABLE IF NOT EXISTS `chii_blog_photo` (
    `photo_id` mediumint(8) unsigned NOT NULL,
    `photo_eid` mediumint(8) unsigned NOT NULL,
    `photo_uid` mediumint(8) unsigned NOT NULL,
    `photo_target` varchar(255) NOT NULL,
    `photo_vote` mediumint(8) unsigned NOT NULL,
    `photo_dateline` int(10) unsigned NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
    `chii_blog_photo`
ADD
    PRIMARY KEY (`photo_id`),
ADD
    KEY `photo_eid` (`photo_eid`);

ALTER TABLE
    `chii_blog_photo`
MODIFY
    `photo_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
