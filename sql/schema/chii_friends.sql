CREATE TABLE IF NOT EXISTS
  `chii_friends` (
    `frd_uid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `frd_fid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `frd_grade` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `frd_dateline` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `frd_description` CHAR(255) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

ALTER TABLE
  `chii_friends`
ADD
  KEY `uid` (`frd_uid`),
ADD
  KEY `frd_fid` (`frd_fid`);
