CREATE TABLE
  IF NOT EXISTS `chii_subject_revisions` (
    `rev_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '修订类型',
    `rev_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_type_id` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `rev_creator` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `rev_name` VARCHAR(80) NOT NULL,
    `rev_name_cn` VARCHAR(80) NOT NULL,
    `rev_field_infobox` MEDIUMTEXT NOT NULL,
    `rev_field_summary` MEDIUMTEXT NOT NULL,
    `rev_vote_field` MEDIUMTEXT NOT NULL,
    `rev_field_eps` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_edit_summary` VARCHAR(200) NOT NULL,
    `rev_platform` SMALLINT(6) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE `chii_subject_revisions`
ADD PRIMARY KEY (`rev_id`),
ADD KEY `rev_subject_id` (`rev_subject_id`, `rev_creator`),
ADD KEY `rev_type` (`rev_type`),
ADD KEY `rev_dateline` (`rev_dateline`),
ADD KEY `rev_creator` (`rev_creator`, `rev_id`) USING BTREE;

ALTER TABLE `chii_subject_revisions` MODIFY `rev_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;