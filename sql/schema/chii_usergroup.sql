--
-- Database: `bangumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `chii_usergroup`
--

CREATE TABLE IF NOT EXISTS `chii_usergroup`
(
    `usr_grp_id`       mediumint(8) unsigned           NOT NULL,
    `usr_grp_name`     varchar(255) CHARACTER SET utf8 NOT NULL,
    `usr_grp_perm`     mediumtext CHARACTER SET utf8   NOT NULL,
    `usr_grp_dateline` int(10) unsigned                NOT NULL
) ENGINE = MyISAM
  AUTO_INCREMENT = 12
  DEFAULT CHARSET = utf8
  COLLATE = utf8_unicode_ci;

--
-- Indexes for table `chii_usergroup`
--
ALTER TABLE `chii_usergroup`
    ADD PRIMARY KEY (`usr_grp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_usergroup`
--
ALTER TABLE `chii_usergroup`
    MODIFY `usr_grp_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 12;
