CREATE TABLE IF NOT EXISTS `chii_os_web_sessions`
(
    `key`        char(64) PRIMARY KEY NOT NULL comment 'session key', #
    `user_id`    int unsigned         not null comment 'uint32 user id',
    `value`      MEDIUMBLOB           not null comment 'json encoded session data',
    `created_at` bigint               not null comment 'int64 unix timestamp, when session is created',
    `expired_at` bigint               not null comment 'int64 unix timestamp, when session is expired'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
