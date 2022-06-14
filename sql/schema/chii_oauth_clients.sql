CREATE TABLE
  IF NOT EXISTS `chii_oauth_clients` (
    `app_id` MEDIUMINT(8) NOT NULL,
    `client_id` VARCHAR(80) COLLATE utf8_unicode_ci NOT NULL,
    `client_secret` VARCHAR(80) COLLATE utf8_unicode_ci DEFAULT NULL,
    `redirect_uri` VARCHAR(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
    `grant_types` VARCHAR(80) COLLATE utf8_unicode_ci DEFAULT NULL,
    `scope` VARCHAR(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
    `user_id` VARCHAR(80) COLLATE utf8_unicode_ci DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

ALTER TABLE `chii_oauth_clients`
ADD PRIMARY KEY (`app_id`),
ADD KEY `client_id` (`client_id`);