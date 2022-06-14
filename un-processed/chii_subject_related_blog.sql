CREATE TABLE IF NOT EXISTS `chii_subject_related_blog` (
    `srb_id` mediumint(8) unsigned NOT NULL,
    `srb_uid` mediumint(8) unsigned NOT NULL,
    `srb_subject_id` mediumint(8) unsigned NOT NULL COMMENT '条目ID',
    `srb_entry_id` mediumint(8) unsigned NOT NULL COMMENT '日志ID',
    `srb_spoiler` mediumint(8) unsigned NOT NULL COMMENT '剧透',
    `srb_like` mediumint(8) unsigned NOT NULL,
    `srb_dislike` mediumint(8) unsigned NOT NULL,
    `srb_dateline` int(10) unsigned NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = utf8 COMMENT = '条目关联日志';

ALTER TABLE
    `chii_subject_related_blog`
ADD
    PRIMARY KEY (`srb_id`),
ADD
    KEY `srb_uid` (`srb_uid`, `srb_subject_id`, `srb_entry_id`),
ADD
    KEY `subject_related` (`srb_subject_id`) USING BTREE;

ALTER TABLE
    `chii_subject_related_blog`
MODIFY
    `srb_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
