INSERT INTO
  `chii_members` (
    `uid`,
    `username`,
    `nickname`,
    `avatar`,
    `groupid`,
    `regdate`,
    `lastvisit`,
    `lastactivity`,
    `lastpost`,
    `dateformat`,
    `timeformat`,
    `timeoffset`,
    `newpm`,
    `new_notify`,
    `sign`,
    `password_crypt`,
    `email`
  )
VALUES
  (
    382951,
    '382951',
    '树洞酱',
    '000/38/29/382951.jpg?r=1571167246',
    10,
    1512262276,
    1639827114,
    1639841249,
    0,
    '',
    0,
    '9999',
    0,
    7,
    'treeholechan@gmail.com 密码:lovemeplease',
    '$2a$12$GA5Pr9GhsyLJcSPoTpYBY.JqTzYZb2nfgSeZ1EK38bfgk/Rykkvuq',
    'treeholechan@gmail.com'
  ),
  (
    318250,
    'treehole2',
    '树洞2',
    '',
    10,
    1512262276,
    1639827114,
    1639841249,
    0,
    '',
    0,
    '9999',
    0,
    0,
    'o &lt;img src=&quot;#&quot; &gt;&lt;/img&gt;',
    '$2a$12$GA5Pr9GhsyLJcSPoTpYBY.JqTzYZb2nfgSeZ1EK38bfgk/Rykkvuq',
    'treeholechan2@gmail.com'
  ),
  (
    2,
    '2',
    'nickname 2',
    '',
    11,
    0,
    0,
    0,
    0,
    '',
    0,
    '',
    0,
    0,
    'sing 2',
    '$2a$12$GA5Pr9GhsyLJcSPoTpYBY.JqTzYZb2nfgSeZ1EK38bfgk/Rykkvuq',
    '2@bgm38.com'
  );

INSERT INTO `chii_memberfields` (`uid`, `site`, `location`, `bio`, `privacy`, `blocklist`)
VALUES
  (
    382951,
    'bgm.tv/character/13307',
    '',
    'treeholechan@gmail.com 密码：lovemeplease\r\n（欢迎大家一起维护树洞酱，但请勿随意修改密码）\r\n\r\n[url=https://bgm.tv/user/treehole]初心[/url]\r\n\r\n[b][url=https://bgm.tv/blog/3996]1. 关于树洞酱的事[/url][/b]\r\n[size=8]任何人都可以钻到这里：可以诉说不为人知的秘密，可以自曝真相，可以晒黑历史，可以说平时不太敢说的话，可以扮演不同的人格……\r\n不用担心维护自己的形象。也许你会说，有什么都可以直接说出来嘛，为什么要这样做？但是既然有一个完全虚拟的网络，为什么非要对应着现实世界每个人都要有个id，有个头像呢？\r\n或者这只是一种尝试吧。[/size]\r\n\r\n[b][url=https://bgm.tv/blog/3998]2. 爱护我们的树洞酱[/url][/b]',
    'a:4:{i:1;i:2;i:30;i:2;i:20;i:2;i:21;i:0;}',
    '0'
  ),
  (287622, 'bgm.tv/character/13307', '', 'fake bio', 'a:4:{i:1;i:2;i:30;i:2;i:20;i:2;i:21;i:0;}', '0');

INSERT INTO chii_oauth_access_tokens (access_token, client_id, user_id, expires, scope, id, TYPE, info)
VALUES
  ('a_development_access_token', 'test_client_id', '382951', '2030-12-21 14:16:28', NULL, 1, 0, ''),
  ('a_expired_token', 'test_client_id', '382951', '2020-12-21 14:16:28', NULL, 2, 0, '');