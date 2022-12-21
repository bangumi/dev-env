CREATE TABLE
  IF NOT EXISTS `chii_timeline` (
    `tml_id` INT(10) UNSIGNED NOT NULL,
    `tml_uid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `tml_cat` SMALLINT(6) UNSIGNED NOT NULL,
    `tml_type` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
    `tml_related` CHAR(255) NOT NULL DEFAULT '0',
    `tml_memo` MEDIUMTEXT NOT NULL,
    `tml_img` MEDIUMTEXT NOT NULL,
    `tml_batch` TINYINT(3) UNSIGNED NOT NULL,
    `tml_source` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新来源',
    `tml_replies` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT '回复数',
    `tml_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0'
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8mb4;

ALTER TABLE `chii_timeline`
ADD PRIMARY KEY (`tml_id`),
ADD KEY `tml_uid` (`tml_uid`),
ADD KEY `tml_cat` (`tml_cat`),
ADD KEY `tml_batch` (`tml_batch`),
ADD KEY `query_tml_cat` (`tml_uid`, `tml_cat`);

ALTER TABLE `chii_timeline` MODIFY `tml_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;
