









CREATE TABLE IF NOT EXISTS `chii_blog_entry`
(
    `entry_id`       mediumint(8) unsigned NOT NULL,
    `entry_type`     smallint(6) unsigned  NOT NULL,
    `entry_uid`      mediumint(8) unsigned NOT NULL,
    `entry_title`    varchar(80)           NOT NULL,
    `entry_icon`     varchar(255)          NOT NULL,
    `entry_content`  mediumtext            NOT NULL,
    `entry_tags`     mediumtext            NOT NULL,
    `entry_views`    mediumint(8) unsigned NOT NULL,
    `entry_replies`  mediumint(8) unsigned NOT NULL,
    `entry_dateline` int(10) unsigned      NOT NULL,
    `entry_lastpost` int(10) unsigned      NOT NULL,
    `entry_like`     int(8) unsigned       NOT NULL,
    `entry_dislike`  int(8) unsigned       NOT NULL,
    `entry_noreply`  smallint(3) unsigned  NOT NULL,
    `entry_related`  tinyint(3) unsigned   NOT NULL DEFAULT '0',
    `entry_public`   tinyint(1)            NOT NULL DEFAULT '1'
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;






ALTER TABLE `chii_blog_entry`
    ADD PRIMARY KEY (`entry_id`),
    ADD KEY `entry_type` (`entry_type`, `entry_uid`, `entry_noreply`),
    ADD KEY `entry_relate` (`entry_related`),
    ADD KEY `entry_public` (`entry_public`),
    ADD KEY `entry_dateline` (`entry_dateline`),
    ADD KEY `entry_uid` (`entry_uid`, `entry_public`);






ALTER TABLE `chii_blog_entry`
    MODIFY `entry_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;



