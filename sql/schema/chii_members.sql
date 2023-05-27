CREATE TABLE IF NOT EXISTS
    chii_memberfields
(
    uid       MEDIUMINT UNSIGNED       DEFAULT 0  NOT NULL PRIMARY KEY,
    site      VARCHAR(75) CHARSET utf8 DEFAULT '' NOT NULL,
    location  VARCHAR(30) CHARSET utf8 DEFAULT '' NOT NULL,
    bio       TEXT CHARSET utf8                   NOT NULL,
    privacy   MEDIUMTEXT CHARSET utf8             NOT NULL,
    blocklist MEDIUMTEXT CHARSET utf8             NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS
    chii_members
(
    uid            MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username       CHAR(15) CHARSET utf8 DEFAULT ''                    NOT NULL,
    nickname       VARCHAR(30)                                         NOT NULL,
    avatar         VARCHAR(255) CHARSET utf8                           NOT NULL,
    groupid        SMALLINT(6) UNSIGNED  DEFAULT 0                     NOT NULL,
    # 用户权限组
    regdate        INT UNSIGNED          DEFAULT 0                     NOT NULL,
    # 注册日期
    lastvisit      INT UNSIGNED          DEFAULT 0                     NOT NULL,
    # 最后访问
    lastactivity   INT UNSIGNED          DEFAULT 0                     NOT NULL,
    # 最后活动
    lastpost       INT UNSIGNED          DEFAULT 0                     NOT NULL,
    # 最后发帖
    dateformat     CHAR(10) CHARSET utf8 DEFAULT ''                    NOT NULL,
    # 没用
    timeformat     TINYINT(1)            DEFAULT 0                     NOT NULL,
    # 没用
    timeoffset     CHAR(4) CHARSET utf8  DEFAULT ''                    NOT NULL,
    # 没用
    newpm          TINYINT(1)            DEFAULT 0                     NOT NULL,
    new_notify     SMALLINT(6) UNSIGNED  DEFAULT 0                     NOT NULL COMMENT '新提醒',
    sign           VARCHAR(255) CHARSET utf8                           NOT NULL,
    password_crypt CHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    email          CHAR(50) CHARACTER SET utf8                         NOT NULL DEFAULT '',
    acl            mediumtext                                          NOT NULL default '{}',
    CONSTRAINT username UNIQUE (username)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
