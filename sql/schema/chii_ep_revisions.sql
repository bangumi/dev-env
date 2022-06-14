CREATE TABLE
  IF NOT EXISTS `chii_ep_revisions` (
    `ep_rev_id` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_sid` MEDIUMINT(8) UNSIGNED NOT NULL,
    # subject_id
    `rev_eids` VARCHAR(255) NOT NULL,
    `rev_ep_infobox` MEDIUMTEXT NOT NULL,
    `rev_creator` MEDIUMINT(8) UNSIGNED NOT NULL,
    `rev_version` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
    `rev_dateline` INT(10) UNSIGNED NOT NULL,
    `rev_edit_summary` VARCHAR(200) NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE `chii_ep_revisions`
ADD PRIMARY KEY (`ep_rev_id`),
ADD KEY `rev_sid` (`rev_sid`, `rev_creator`);

ALTER TABLE `chii_ep_revisions` MODIFY `ep_rev_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT;