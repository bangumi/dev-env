CREATE TABLE `chii_likes`
(
    `type`       mediumint(8) unsigned NOT NULL,
    `main_id`    int(10) unsigned      NOT NULL DEFAULT '0',
    `related_id` int(10) unsigned      NOT NULL,
    `uid`        mediumint(8) unsigned NOT NULL,
    `value`      mediumint(8) unsigned NOT NULL DEFAULT '0',
    `ban`        tinyint(2) unsigned   NOT NULL DEFAULT '0',
    `created_at` int(10) unsigned      NOT NULL COMMENT 'unix timestamp seconds',
    PRIMARY KEY (`type`, `related_id`, `uid`),
    KEY `idx_uid` (`uid`),
    KEY `idx_related` (`related_id`),
    KEY `type` (`type`, `main_id`, `uid`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
