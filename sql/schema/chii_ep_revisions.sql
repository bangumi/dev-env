CREATE TABLE IF NOT EXISTS `chii_ep_revisions`
(
    `ep_rev_id`        mediumint(8) unsigned NOT NULL,
    `rev_sid`          mediumint(8) unsigned NOT NULL, # subject_id
    `rev_eids`         varchar(255)          NOT NULL,
    `rev_ep_infobox`   mediumtext            NOT NULL,
    `rev_creator`      mediumint(8) unsigned NOT NULL,
    `rev_version`      tinyint(1) unsigned   NOT NULL DEFAULT '0',
    `rev_dateline`     int(10) unsigned      NOT NULL,
    `rev_edit_summary` varchar(200)          NOT NULL
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_ep_revisions`
--
ALTER TABLE `chii_ep_revisions`
    ADD PRIMARY KEY (`ep_rev_id`),
    ADD KEY `rev_sid` (`rev_sid`, `rev_creator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_ep_revisions`
--
ALTER TABLE `chii_ep_revisions`
    MODIFY `ep_rev_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
