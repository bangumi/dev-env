









CREATE TABLE IF NOT EXISTS `chii_friends`
(
    `frd_uid`         mediumint(8) unsigned NOT NULL DEFAULT '0',
    `frd_fid`         mediumint(8) unsigned NOT NULL DEFAULT '0',
    `frd_grade`       tinyint(3) unsigned   NOT NULL DEFAULT '1',
    `frd_dateline`    int(10) unsigned      NOT NULL DEFAULT '0',
    `frd_description` char(255)             NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;






ALTER TABLE `chii_friends`
    ADD KEY `uid` (`frd_uid`),
    ADD KEY `frd_fid` (`frd_fid`);




