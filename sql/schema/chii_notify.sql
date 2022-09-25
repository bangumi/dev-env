create table chii_notify
(
    nt_id         mediumint unsigned auto_increment
        primary key,
    nt_uid        mediumint unsigned            not null,
    nt_from_uid   mediumint unsigned            not null,
    nt_status     tinyint(1) unsigned default 1 not null,
    nt_type       tinyint unsigned    default 0 not null,
    nt_mid        mediumint unsigned            not null comment 'ID in notify_field',
    nt_related_id int unsigned                  not null,
    nt_dateline   int unsigned                  not null
)
    engine = MyISAM
    charset = utf8;

create index nt_from_uid
    on chii_notify (nt_from_uid);

create index nt_mid
    on chii_notify (nt_mid);

create index nt_uid
    on chii_notify (nt_uid, nt_status, nt_type, nt_related_id);

create table chii_notify_field
(
    ntf_id    mediumint unsigned auto_increment
        primary key,
    ntf_hash  tinyint unsigned default 0   not null,
    ntf_rid   int unsigned                 not null,
    ntf_title varchar(255) charset utf8mb4 not null
)
    engine = MyISAM
    charset = utf8;

create index ntf_hash
    on chii_notify_field (ntf_hash);

create index ntf_rid
    on chii_notify_field (ntf_rid);

create table chii_pms
(
    msg_id           int unsigned auto_increment
        primary key,
    msg_sid          mediumint unsigned       default 0       not null,
    msg_rid          mediumint unsigned       default 0       not null,
    msg_folder       enum ('inbox', 'outbox') default 'inbox' not null,
    msg_new          tinyint(1)               default 0       not null,
    msg_title        varchar(75)                              not null,
    msg_dateline     int unsigned             default 0       not null,
    msg_message      text                                     not null,
    msg_related_main int unsigned             default 0       not null,
    msg_related      int unsigned                             not null,
    msg_sdeleted     tinyint(1) unsigned      default 0       not null,
    msg_rdeleted     tinyint(1) unsigned      default 0       not null
)
    engine = MyISAM
    charset = utf8;

create index msg_sdeleted
    on chii_pms (msg_sdeleted, msg_rdeleted);

create index msgfromid
    on chii_pms (msg_sid, msg_folder, msg_dateline);

create index msgtoid
    on chii_pms (msg_rid, msg_folder, msg_dateline);

create index pm_related
    on chii_pms (msg_related);
