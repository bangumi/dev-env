CREATE TABLE
  IF NOT EXISTS `chii_blog_photo` (
    `photo_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `photo_eid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `photo_uid` MEDIUMINT(8) UNSIGNED NOT NULL,
    `photo_target` VARCHAR(255) NOT NULL,
    `photo_vote` MEDIUMINT(8) UNSIGNED NOT NULL,
    `photo_dateline` INT(10) UNSIGNED NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE `chii_blog_photo`
ADD PRIMARY KEY (`photo_id`),
ADD KEY `photo_eid` (`photo_eid`);

ALTER TABLE `chii_blog_photo` MODIFY `photo_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;