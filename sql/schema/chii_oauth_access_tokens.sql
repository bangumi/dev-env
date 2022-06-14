CREATE TABLE
  IF NOT EXISTS `chii_oauth_access_tokens` (
    `id` MEDIUMINT(8) NOT NULL,
    `type` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
    `access_token` VARCHAR(40) COLLATE utf8_unicode_ci NOT NULL,
    `client_id` VARCHAR(80) COLLATE utf8_unicode_ci NOT NULL,
    `user_id` VARCHAR(80) COLLATE utf8_unicode_ci DEFAULT NULL,
    `expires` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `scope` VARCHAR(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
    `info` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

ALTER TABLE `chii_oauth_access_tokens`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `access_token` (`access_token`) USING BTREE,
ADD KEY `type` (`type`);

ALTER TABLE `chii_oauth_access_tokens` MODIFY `id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT;