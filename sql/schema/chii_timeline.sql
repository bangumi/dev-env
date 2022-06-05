CREATE TABLE IF NOT EXISTS `chii_timeline`
(
    `tml_id`       int(10) unsigned      NOT NULL,
    `tml_uid`      mediumint(8) unsigned NOT NULL DEFAULT '0',
    `tml_cat`      smallint(6) unsigned  NOT NULL,
    `tml_type`     smallint(6) unsigned  NOT NULL DEFAULT '0',
    `tml_related`  char(255)             NOT NULL DEFAULT '0',
    `tml_memo`     mediumtext            NOT NULL,
    `tml_img`      mediumtext            NOT NULL,
    `tml_batch`    tinyint(3) unsigned   NOT NULL,
    `tml_source`   tinyint(3) unsigned   NOT NULL DEFAULT '0' COMMENT '更新来源',
    `tml_replies`  mediumint(8) unsigned NOT NULL COMMENT '回复数',
    `tml_dateline` int(10) unsigned      NOT NULL DEFAULT '0',
    `tml_status`   tinyint unsigned      NOT NULL DEFAULT '0'
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;


ALTER TABLE `chii_timeline`
    ADD PRIMARY KEY (`tml_id`),
    ADD KEY `tml_uid` (`tml_uid`),
    ADD KEY `tml_cat` (`tml_cat`),
    ADD KEY `tml_batch` (`tml_batch`),
    ADD KEY `query_tml_cat` (`tml_uid`, `tml_cat`);


ALTER TABLE `chii_timeline`
    MODIFY `tml_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
