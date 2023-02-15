CREATE TABLE IF NOT EXISTS
  `chii_apps` (
    `app_id` MEDIUMINT(8) NOT NULL,
    `app_type` TINYINT(1) NOT NULL,
    `app_creator` MEDIUMINT(8) NOT NULL,
    `app_name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `app_desc` MEDIUMTEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    `app_url` VARCHAR(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
    `app_collects` MEDIUMINT(8) NOT NULL,
    `app_status` TINYINT(1) NOT NULL,
    `app_timestamp` INT(10) NOT NULL,
    `app_lasttouch` INT(10) NOT NULL,
    `app_ban` TINYINT(1) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

ALTER TABLE
  `chii_apps`
ADD
  PRIMARY KEY (`app_id`),
ADD
  KEY `app_type` (`app_type`, `app_creator`),
ADD
  KEY `app_ban` (`app_ban`),
ADD
  KEY `app_status` (`app_status`);

ALTER TABLE
  `chii_apps`
MODIFY
  `app_id` MEDIUMINT(8) NOT NULL AUTO_INCREMENT;
