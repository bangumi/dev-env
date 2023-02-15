DROP TABLE IF EXISTS
  `chii_tag_neue_list`;

CREATE TABLE
  `chii_tag_neue_list` (
    `tlt_tid` mediumint(8) unsigned NOT NULL,
    `tlt_uid` mediumint(8) unsigned NOT NULL,
    `tlt_cat` tinyint(3) unsigned NOT NULL,
    `tlt_type` tinyint(3) unsigned NOT NULL,
    `tlt_mid` mediumint(8) unsigned NOT NULL,
    `tlt_dateline` int(10) unsigned NOT NULL,
    KEY `tlt_tid` (
      `tlt_tid`,
      `tlt_uid`,
      `tlt_cat`,
      `tlt_type`,
      `tlt_mid`
    ),
    KEY `user_tags` (`tlt_uid`, `tlt_cat`, `tlt_mid`, `tlt_tid`),
    KEY `subject_tags` (`tlt_cat`, `tlt_mid`, `tlt_tid`),
    KEY `tag_to_subject` (`tlt_tid`, `tlt_mid`)
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
