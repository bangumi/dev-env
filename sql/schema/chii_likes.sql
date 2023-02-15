drop table if exists chii_likes;

create table
  IF NOT EXISTS `chii_likes` (
    `type` MEDIUMINT UNSIGNED NOT NULL,
    `related_id` int(10) unsigned NOT NULL,
    `uid` mediumint UNSIGNED NOT NULL,
    `value` mediumint unsigned not null default 0,
    `ban` tinyint(2) unsigned not null DEFAULT 0,
    `created_at` int unsigned not null comment 'unix timestamp seconds',
    PRIMARY KEY (type, related_id, uid)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

create index idx_uid on `chii_likes` (uid);

create index idx_related on `chii_likes` (related_id);