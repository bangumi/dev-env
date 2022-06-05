CREATE TABLE IF NOT EXISTS `chii_subject_topics`
(
    `sbj_tpc_id`         mediumint(8) unsigned             NOT NULL,
    `sbj_tpc_subject_id` mediumint(8) unsigned             NOT NULL,
    `sbj_tpc_uid`        mediumint(8) unsigned             NOT NULL,
    `sbj_tpc_title`      varchar(80) CHARACTER SET utf8mb4 NOT NULL,
    `sbj_tpc_dateline`   int(10) unsigned                  NOT NULL DEFAULT '0',
    `sbj_tpc_lastpost`   int(10) unsigned                  NOT NULL DEFAULT '0',
    `sbj_tpc_replies`    mediumint(8) unsigned             NOT NULL DEFAULT '0',
    `sbj_tpc_state`      tinyint(1) unsigned               NOT NULL,
    `sbj_tpc_display`    tinyint(1) unsigned               NOT NULL DEFAULT '1'
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;



ALTER TABLE `chii_subject_topics`
    ADD PRIMARY KEY (`sbj_tpc_id`),
    ADD KEY `tpc_subject_id` (`sbj_tpc_subject_id`),
    ADD KEY `tpc_display` (`sbj_tpc_display`),
    ADD KEY `sbj_tpc_uid` (`sbj_tpc_uid`),
    ADD KEY `sbj_tpc_lastpost` (`sbj_tpc_lastpost`, `sbj_tpc_subject_id`, `sbj_tpc_display`) USING BTREE;



ALTER TABLE `chii_subject_topics`
    MODIFY `sbj_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
