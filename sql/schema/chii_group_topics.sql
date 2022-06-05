CREATE TABLE IF NOT EXISTS `chii_group_topics`
(
    `grp_tpc_id`       mediumint(8) unsigned NOT NULL,
    `grp_tpc_gid`      mediumint(8) unsigned NOT NULL,
    `grp_tpc_uid`      mediumint(8) unsigned NOT NULL,
    `grp_tpc_title`    varchar(80)           NOT NULL,
    `grp_tpc_dateline` int(10) unsigned      NOT NULL DEFAULT '0',
    `grp_tpc_lastpost` int(10) unsigned      NOT NULL DEFAULT '0',
    `grp_tpc_replies`  mediumint(8) unsigned NOT NULL DEFAULT '0',
    `grp_tpc_state`    tinyint(1) unsigned   NOT NULL,
    `grp_tpc_display`  tinyint(1) unsigned   NOT NULL DEFAULT '1'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;



ALTER TABLE `chii_group_topics`
    ADD PRIMARY KEY (`grp_tpc_id`),
    ADD KEY `grp_tpc_gid` (`grp_tpc_gid`),
    ADD KEY `grp_tpc_display` (`grp_tpc_display`),
    ADD KEY `grp_tpc_uid` (`grp_tpc_uid`),
    ADD KEY `grp_tpc_lastpost` (`grp_tpc_lastpost`);



ALTER TABLE `chii_group_topics`
    MODIFY `grp_tpc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
