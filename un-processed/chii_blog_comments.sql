CREATE TABLE IF NOT EXISTS `chii_blog_comments` (
    `blg_pst_id` mediumint(8) unsigned NOT NULL,
    `blg_pst_mid` mediumint(8) unsigned NOT NULL COMMENT '关联日志ID',
    `blg_pst_uid` mediumint(8) unsigned NOT NULL,
    `blg_pst_related` mediumint(8) unsigned NOT NULL DEFAULT '0',
    `blg_pst_dateline` int(10) unsigned NOT NULL,
    `blg_pst_content` mediumtext NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE
    `chii_blog_comments`
ADD
    PRIMARY KEY (`blg_pst_id`),
ADD
    KEY `blg_cmt_eid` (`blg_pst_mid`),
ADD
    KEY `blg_cmt_uid` (`blg_pst_uid`),
ADD
    KEY `blg_pst_related` (`blg_pst_related`);

ALTER TABLE
    `chii_blog_comments`
MODIFY
    `blg_pst_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
