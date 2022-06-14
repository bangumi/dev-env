CREATE TABLE
  IF NOT EXISTS `chii_subject_related_blog` (
    `srb_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `srb_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `srb_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '条目ID',
    `srb_entry_id` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '日志ID',
    `srb_spoiler` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '剧透',
    `srb_like` MEDIUMINT(8) UNSIGNED NOT NULL,
    `srb_dislike` MEDIUMINT(8) UNSIGNED NOT NULL,
    `srb_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COMMENT = '条目关联日志';

ALTER TABLE `chii_subject_related_blog`
ADD PRIMARY KEY (`srb_id`),
ADD KEY `srb_uid` (`srb_uid`, `srb_subject_id`, `srb_entry_id`),
ADD KEY `subject_related` (`srb_subject_id`) USING BTREE;

ALTER TABLE `chii_subject_related_blog` MODIFY `srb_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;