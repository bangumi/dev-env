SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE IF NOT EXISTS chii_memberfields
(
    uid       mediumint unsigned       default 0  not null primary key,
    site      varchar(75) charset utf8 default '' not null,
    location  varchar(30) charset utf8 default '' not null,
    bio       text charset utf8                   not null,
    privacy   mediumtext charset utf8             not null,
    blocklist mediumtext charset utf8             not null
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


-- --------------------------------------------------------

--
-- Table structure for table `chii_members`
--

CREATE TABLE IF NOT EXISTS chii_members
(
    uid            mediumint unsigned auto_increment primary key,
    username       char(15) charset utf8 default ''                    not null,
    nickname       varchar(30)                                         not null,
    avatar         varchar(255) charset utf8                           not null,
    groupid        smallint(6) unsigned  default 0                     not null, # 用户权限组
    regdate        int unsigned          default 0                     not null, # 注册日期
    lastvisit      int unsigned          default 0                     not null, # 最后访问
    lastactivity   int unsigned          default 0                     not null, # 最后活动
    lastpost       int unsigned          default 0                     not null, # 最后发帖
    dateformat     char(10) charset utf8 default ''                    not null, # 没用
    timeformat     tinyint(1)            default 0                     not null, # 没用
    timeoffset     char(4) charset utf8  default ''                    not null, # 没用
    newpm          tinyint(1)            default 0                     not null,
    new_notify     smallint(6) unsigned  default 0                     not null comment '新提醒',
    sign           varchar(255) charset utf8                           not null,
    password_crypt char(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    email          char(50) CHARACTER SET utf8                         NOT NULL DEFAULT '',
    constraint username unique (username)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
