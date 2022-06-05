CREATE TABLE IF NOT EXISTS `chii_subject_interests`
(
    `interest_id`               int(10) unsigned      NOT NULL,
    `interest_uid`              mediumint(8) unsigned NOT NULL,
    `interest_subject_id`       mediumint(8) unsigned NOT NULL,
    `interest_subject_type`     smallint(6) unsigned  NOT NULL DEFAULT '0',
    `interest_rate`             tinyint(3) unsigned   NOT NULL DEFAULT '0',
    `interest_type`             tinyint(1) unsigned   NOT NULL DEFAULT '0',
    `interest_has_comment`      tinyint(1) unsigned   NOT NULL,
    `interest_comment`          mediumtext            NOT NULL,
    `interest_tag`              mediumtext            NOT NULL,
    `interest_ep_status`        mediumint(8) unsigned NOT NULL DEFAULT '0',
    `interest_vol_status`       mediumint(8) unsigned NOT NULL COMMENT '卷数',
    `interest_wish_dateline`    int(10) unsigned      NOT NULL,
    `interest_doing_dateline`   int(10) unsigned      NOT NULL,
    `interest_collect_dateline` int(10) unsigned      NOT NULL,
    `interest_on_hold_dateline` int(10) unsigned      NOT NULL,
    `interest_dropped_dateline` int(10) unsigned      NOT NULL,
    `interest_lasttouch`        int(10) unsigned      NOT NULL DEFAULT '0',
    `interest_private`          tinyint(1) unsigned   NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;



ALTER TABLE `chii_subject_interests`
    ADD PRIMARY KEY (`interest_id`),
    ADD UNIQUE KEY `user_interest` (`interest_uid`, `interest_subject_id`),
    ADD KEY `interest_subject_id` (`interest_subject_id`, `interest_type`),
    ADD KEY `interest_uid` (`interest_uid`),
    ADD KEY `interest_collect_dateline` (`interest_collect_dateline`),
    ADD KEY `interest_private` (`interest_private`),
    ADD KEY `interest_lasttouch` (`interest_lasttouch`),
    ADD KEY `interest_subject_id_2` (`interest_subject_id`),
    ADD KEY `interest_type` (`interest_type`),
    ADD KEY `interest_subject_type` (`interest_subject_type`),
    ADD KEY `interest_rate` (`interest_rate`),
    ADD KEY `tag_subject_id` (`interest_subject_type`, `interest_type`, `interest_uid`) USING BTREE,
    ADD KEY `user_collects` (`interest_subject_type`, `interest_uid`),
    ADD KEY `subject_lasttouch` (`interest_subject_id`, `interest_private`, `interest_lasttouch`),
    ADD KEY `subject_comment` (`interest_subject_id`, `interest_has_comment`, `interest_private`, `interest_lasttouch`) USING BTREE,
    ADD KEY `subject_collect` (`interest_subject_id`, `interest_type`, `interest_private`, `interest_collect_dateline`),
    ADD KEY `user_collect_type` (`interest_subject_type`, `interest_type`, `interest_uid`, `interest_private`, `interest_collect_dateline`),
    ADD KEY `interest_id` (`interest_uid`, `interest_private`) USING BTREE,
    ADD KEY `subject_rate` (`interest_subject_id`, `interest_rate`, `interest_private`),
    ADD KEY `top_subject` (`interest_subject_id`, `interest_subject_type`, `interest_doing_dateline`),
    ADD KEY `user_collect_latest` (`interest_subject_type`, `interest_type`, `interest_uid`, `interest_private`),
    ADD KEY `interest_type_2` (`interest_type`, `interest_uid`),
    ADD KEY `interest_uid_2` (`interest_uid`, `interest_private`, `interest_lasttouch`);



ALTER TABLE `chii_subject_interests`
    MODIFY `interest_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
