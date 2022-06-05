CREATE TABLE IF NOT EXISTS `chii_apps`
(
    `app_id`        mediumint(8)                             NOT NULL,
    `app_type`      tinyint(1)                               NOT NULL,
    `app_creator`   mediumint(8)                             NOT NULL,
    `app_name`      varchar(255) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `app_desc`      mediumtext COLLATE utf8mb4_unicode_ci    NOT NULL,
    `app_url`       varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
    `app_collects`  mediumint(8)                             NOT NULL,
    `app_status`    tinyint(1)                               NOT NULL,
    `app_timestamp` int(10)                                  NOT NULL,
    `app_lasttouch` int(10)                                  NOT NULL,
    `app_ban`       tinyint(1)                               NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;



ALTER TABLE `chii_apps`
    ADD PRIMARY KEY (`app_id`),
    ADD KEY `app_type` (`app_type`, `app_creator`),
    ADD KEY `app_ban` (`app_ban`),
    ADD KEY `app_status` (`app_status`);



ALTER TABLE `chii_apps`
    MODIFY `app_id` mediumint(8) NOT NULL AUTO_INCREMENT;
