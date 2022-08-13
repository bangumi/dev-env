CREATE TABLE
  IF NOT EXISTS `chii_subject_interests` (
    `interest_id` INT(10) UNSIGNED NOT NULL,
    `interest_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `interest_subject_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `interest_subject_type` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `interest_rate` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `interest_type` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
    `interest_has_comment` TINYINT(1) UNSIGNED NOT NULL,
    `interest_comment` MEDIUMTEXT NOT NULL,
    `interest_tag` MEDIUMTEXT NOT NULL,
    `interest_ep_status` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `interest_vol_status` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '卷数',
    `interest_wish_dateline` INT(10) UNSIGNED NOT NULL,
    `interest_doing_dateline` INT(10) UNSIGNED NOT NULL,
    `interest_collect_dateline` INT(10) UNSIGNED NOT NULL,
    `interest_on_hold_dateline` INT(10) UNSIGNED NOT NULL,
    `interest_dropped_dateline` INT(10) UNSIGNED NOT NULL,
    `interest_lasttouch` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `interest_private` TINYINT(1) UNSIGNED NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

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
ADD
  KEY `subject_comment` (`interest_subject_id`, `interest_has_comment`, `interest_private`, `interest_lasttouch`) USING BTREE,
ADD KEY `subject_collect` (`interest_subject_id`, `interest_type`, `interest_private`, `interest_collect_dateline`),
ADD
  KEY `user_collect_type` (`interest_subject_type`, `interest_type`, `interest_uid`, `interest_private`, `interest_collect_dateline`),
ADD KEY `interest_id` (`interest_uid`, `interest_private`) USING BTREE,
ADD KEY `subject_rate` (`interest_subject_id`, `interest_rate`, `interest_private`),
ADD KEY `top_subject` (`interest_subject_id`, `interest_subject_type`, `interest_doing_dateline`),
ADD KEY `user_collect_latest` (`interest_subject_type`, `interest_type`, `interest_uid`, `interest_private`),
ADD KEY `interest_type_2` (`interest_type`, `interest_uid`),
ADD KEY `interest_uid_2` (`interest_uid`, `interest_private`, `interest_lasttouch`);

ALTER TABLE `chii_subject_interests` MODIFY `interest_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;