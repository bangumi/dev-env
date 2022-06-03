-- --------------------------------------------------------

--
-- Table structure for table `chii_oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `chii_oauth_access_tokens` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chii_oauth_access_tokens`
--
ALTER TABLE `chii_oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token` (`access_token`) USING BTREE,
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chii_oauth_access_tokens`
--
ALTER TABLE `chii_oauth_access_tokens`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;