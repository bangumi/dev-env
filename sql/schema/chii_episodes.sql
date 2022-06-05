--
-- Database: `bangumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `chii_episodes`
--

CREATE TABLE IF NOT EXISTS `chii_episodes`
(
    `ep_id`         mediumint(8) unsigned NOT NULL,
    `ep_subject_id` mediumint(8) unsigned NOT NULL,
    `ep_sort`       float unsigned        NOT NULL DEFAULT '0',
    `ep_type`       tinyint(1) unsigned   NOT NULL,
    `ep_disc`       tinyint(3) unsigned   NOT NULL DEFAULT '0' COMMENT '碟片数',
    `ep_name`       varchar(80)           NOT NULL,
    `ep_name_cn`    varchar(80)           NOT NULL,
    `ep_rate`       tinyint(3)            NOT NULL,
    `ep_duration`   varchar(80)           NOT NULL,
    `ep_airdate`    varchar(80)           NOT NULL,
    `ep_online`     mediumtext            NOT NULL,
    `ep_comment`    mediumint(8) unsigned NOT NULL,
    `ep_resources`  mediumint(8) unsigned NOT NULL,
    `ep_desc`       mediumtext            NOT NULL,
    `ep_dateline`   int(10) unsigned      NOT NULL,
    `ep_lastpost`   int(10) unsigned      NOT NULL,
    `ep_lock`       tinyint(3) unsigned   NOT NULL DEFAULT '0',
    `ep_ban`        tinyint(3) unsigned   NOT NULL DEFAULT '0'
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_episodes`
--
ALTER TABLE `chii_episodes`
    ADD PRIMARY KEY (`ep_id`),
    ADD KEY `ep_sort` (`ep_sort`),
    ADD KEY `ep_disc` (`ep_disc`),
    ADD KEY `ep_subject_id` (`ep_subject_id`),
    ADD KEY `ep_lastpost` (`ep_lastpost`),
    ADD KEY `ep_ban` (`ep_ban`),
    ADD KEY `ep_subject_id_2` (`ep_subject_id`, `ep_ban`, `ep_sort`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_episodes`
--
ALTER TABLE `chii_episodes`
    MODIFY `ep_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
