CREATE TABLE
  IF NOT EXISTS `chii_blog_comments` (
    `blg_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `blg_pst_mid` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '关联日志ID',
    `blg_pst_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `blg_pst_related` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `blg_pst_dateline` INT(10) UNSIGNED NOT NULL,
    `blg_pst_content` MEDIUMTEXT NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE `chii_blog_comments`
ADD PRIMARY KEY (`blg_pst_id`),
ADD KEY `blg_cmt_eid` (`blg_pst_mid`),
ADD KEY `blg_cmt_uid` (`blg_pst_uid`),
ADD KEY `blg_pst_related` (`blg_pst_related`);

ALTER TABLE `chii_blog_comments` MODIFY `blg_pst_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;