CREATE TABLE
  IF NOT EXISTS `chii_blog_entry` (
    `entry_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `entry_type` SMALLINT(6) UNSIGNED NOT NULL,
    `entry_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `entry_title` VARCHAR(80) NOT NULL,
    `entry_icon` VARCHAR(255) NOT NULL,
    `entry_content` MEDIUMTEXT NOT NULL,
    `entry_tags` MEDIUMTEXT NOT NULL,
    `entry_views` MEDIUMINT(8) UNSIGNED NOT NULL,
    `entry_replies` MEDIUMINT(8) UNSIGNED NOT NULL,
    `entry_dateline` INT(10) UNSIGNED NOT NULL,
    `entry_lastpost` INT(10) UNSIGNED NOT NULL,
    `entry_like` INT(8) UNSIGNED NOT NULL,
    `entry_dislike` INT(8) UNSIGNED NOT NULL,
    `entry_noreply` SMALLINT(3) UNSIGNED NOT NULL,
    `entry_related` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `entry_public` TINYINT(1) NOT NULL DEFAULT '1'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE `chii_blog_entry`
ADD PRIMARY KEY (`entry_id`),
ADD KEY `entry_type` (`entry_type`, `entry_uid`, `entry_noreply`),
ADD KEY `entry_relate` (`entry_related`),
ADD KEY `entry_public` (`entry_public`),
ADD KEY `entry_dateline` (`entry_dateline`),
ADD KEY `entry_uid` (`entry_uid`, `entry_public`);

ALTER TABLE `chii_blog_entry` MODIFY `entry_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;