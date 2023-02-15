CREATE TABLE IF NOT EXISTS
  `chii_os_web_sessions` (
    `key` CHAR(64) PRIMARY KEY NOT NULL COMMENT 'session key',
    #
    `user_id` INT UNSIGNED NOT NULL COMMENT 'uint32 user id',
    `value` MEDIUMBLOB NOT NULL COMMENT 'json encoded session data',
    `created_at` BIGINT NOT NULL COMMENT 'int64 unix timestamp, when session is created',
    `expired_at` BIGINT NOT NULL COMMENT 'int64 unix timestamp, when session is expired'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
