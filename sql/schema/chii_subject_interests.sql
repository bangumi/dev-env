create table
  chii_subject_interests (
    interest_id int unsigned auto_increment primary key,
    interest_uid mediumint unsigned not null,
    interest_subject_id mediumint unsigned not null,
    interest_subject_type smallint(6) unsigned default 0 not null,
    interest_rate tinyint unsigned default 0 not null,
    interest_type tinyint(1) unsigned default 0 not null,
    interest_has_comment tinyint(1) unsigned not null,
    interest_comment mediumtext not null,
    interest_tag mediumtext not null,
    interest_ep_status mediumint unsigned default 0 not null,
    interest_vol_status mediumint unsigned not null comment '卷数',
    interest_wish_dateline int unsigned not null,
    interest_doing_dateline int unsigned not null,
    interest_collect_dateline int unsigned not null,
    interest_on_hold_dateline int unsigned not null,
    interest_dropped_dateline int unsigned not null,
    interest_create_ip char(15) not null,
    interest_lasttouch_ip char(15) not null,
    interest_lasttouch int unsigned default 0 not null,
    interest_private tinyint(1) unsigned not null,
    constraint user_interest unique (interest_uid, interest_subject_id)
  ) charset = utf8;

create index
  interest_collect_dateline on chii_subject_interests (interest_collect_dateline);

create index
  interest_id on chii_subject_interests (interest_uid, interest_private);

create index
  interest_lasttouch on chii_subject_interests (interest_lasttouch);

create index
  interest_private on chii_subject_interests (interest_private);

create index
  interest_rate on chii_subject_interests (interest_rate);

create index
  interest_subject_id on chii_subject_interests (interest_subject_id, interest_type);

create index
  interest_subject_id_2 on chii_subject_interests (interest_subject_id);

create index
  interest_subject_type on chii_subject_interests (interest_subject_type);

create index
  interest_type on chii_subject_interests (interest_type);

create index
  interest_type_2 on chii_subject_interests (interest_type, interest_uid);

create index
  interest_uid on chii_subject_interests (interest_uid);

create index
  interest_uid_2 on chii_subject_interests (interest_uid, interest_private, interest_lasttouch);

create index
  subject_collect on chii_subject_interests (interest_subject_id, interest_type, interest_private, interest_collect_dateline);

create index
  subject_comment on chii_subject_interests (interest_subject_id, interest_has_comment, interest_private, interest_lasttouch);

create index
  subject_lasttouch on chii_subject_interests (interest_subject_id, interest_private, interest_lasttouch);

create index
  subject_rate on chii_subject_interests (interest_subject_id, interest_rate, interest_private);

create index
  tag_subject_id on chii_subject_interests (interest_subject_type, interest_type, interest_uid);

create index
  top_subject on chii_subject_interests (interest_subject_id, interest_subject_type, interest_doing_dateline);

create index
  user_collect_latest on chii_subject_interests (interest_subject_type, interest_type, interest_uid, interest_private);

create index
  user_collect_type on chii_subject_interests (interest_subject_type, interest_type, interest_uid, interest_private, interest_collect_dateline);

create index
  user_collects on chii_subject_interests (interest_subject_type, interest_uid);
