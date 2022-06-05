CREATE TABLE IF NOT EXISTS `chii_subject_revisions`
(
    `rev_id`            mediumint(8) unsigned NOT NULL,
    `rev_type`          tinyint(3) unsigned   NOT NULL DEFAULT '1' COMMENT '修订类型',
    `rev_subject_id`    mediumint(8) unsigned NOT NULL,
    `rev_type_id`       smallint(6) unsigned  NOT NULL DEFAULT '0',
    `rev_creator`       mediumint(8) unsigned NOT NULL,
    `rev_dateline`      int(10) unsigned      NOT NULL DEFAULT '0',
    `rev_name`          varchar(80)           NOT NULL,
    `rev_name_cn`       varchar(80)           NOT NULL,
    `rev_field_infobox` mediumtext            NOT NULL,
    `rev_field_summary` mediumtext            NOT NULL,
    `rev_vote_field`    mediumtext            NOT NULL,
    `rev_field_eps`     mediumint(8) unsigned NOT NULL,
    `rev_edit_summary`  varchar(200)          NOT NULL,
    `rev_platform`      smallint(6) unsigned  NOT NULL
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;



ALTER TABLE `chii_subject_revisions`
    ADD PRIMARY KEY (`rev_id`),
    ADD KEY `rev_subject_id` (`rev_subject_id`, `rev_creator`),
    ADD KEY `rev_type` (`rev_type`),
    ADD KEY `rev_dateline` (`rev_dateline`),
    ADD KEY `rev_creator` (`rev_creator`, `rev_id`) USING BTREE;



ALTER TABLE `chii_subject_revisions`
    MODIFY `rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
