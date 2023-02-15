REPLACE INTO
  `chii_groups` (`grp_id`, `grp_cat`, `grp_name`, `grp_title`, `grp_icon`, `grp_creator`, `grp_topics`, `grp_posts`, `grp_members`, `grp_desc`, `grp_lastpost`, `grp_builddate`, `grp_accessible`, `grp_nsfw`)
VALUES
  (1, 0, 'pb', 'Perfect Blue', '', 2, 579, 0, 15, '蛋疼的测试ing', 0, 1216020888, 1, 0),
  (2, 40, 'forum', '站务论坛', '000/00/00/2.jpg', 1, 8224, 0, 2523, '地图：\r\n[url=http://bgm.tv]Bangumi[/url]\r\n├ [url=http://bgm.tv/group/forum]站务论坛[/url] (就是这里)\r\n├ [url=http://bgm.tv/group/wiki]番組WIKI計画[/url]\r\n├ [url=http://bgm.tv/group/dev]番组开发[/url]\r\n└ [url=http://bgm.tv/group/issues]BUG追踪[/url]\r\n\r\n——————————\r\n● 天窗站务：[url]http://bgm.tv/group/doujin[/url]\r\n\r\n\r\n[url=http://bgm.tv/rakuen/topic/group/296596]邮箱修改申请及注册邮箱丢失办法[/url]', 0, 1216021079, 1, 0),
  (3, 0, 'virgin', '落红组', '', 3, 1, 0, 3, '喔耶~~ 我太坏了 ...\r\n\r\n[ 为什么叫落红组呢 ... ]\r\n\r\n因为这是全站的第一个小组哟 ...', 0, 1216021317, 1, 0),
  (4, 0, 'yd_1010', '大爱霹雳（—v—）~~', '000/00/00/4.jpg', 6, 6, 0, 26, '我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！我们爱霹雳~！！', 0, 1216031375, 1, 0),
  (5, 0, 'v2ex', 'V2EX', '', 4, 46, 0, 7, '', 0, 1216203519, 1, 0),
  (6, 41, 'ukagaka', '伪春菜', '000/00/00/6.jpg', 1, 585, 0, 2981, '无论是本地版还是Web版的伪春菜，都可以在这里讨论哟', 0, 1216478959, 1, 0),
  (7, 0, 'gr_35x', '真三国无双~！', '000/00/00/7.jpg', 6, 2, 0, 20, '光荣游戏大爱（—v—）~', 0, 1216874164, 1, 0),
  (8, 0, 'key', '噶哦_key', '000/00/00/8.jpg', 43, 0, 0, 16, 'clannad\r\nair\r\nkanon', 0, 1217530382, 1, 0),
  (9, 0, 'x404', '无敌世纪少年', '000/00/00/9.jpg', 48, 0, 0, 13, '你可曾设想，有朝一日，儿时的幻想竟成了恐怖的事实', 0, 1217530389, 1, 0),
  (10, 0, 'tm', '型月社', '000/00/00/10.jpg', 64, 7, 0, 95, '这里是蘑菇笔下的月世界，大家晚上不要出门。', 0, 1217541236, 1, 0),
  (11, 0, 'a', '～技术宅真可怕～', '000/00/00/11.jpg', 64, 3919, 0, 9452, '本小组欢迎对各种技术有一定了解的人，\r\n比如像橘花热衷杀人技术……\r\n\r\n不过、本组主要谈论ＰＣ软硬件方面，\r\n想了解相关知识，结识可怕的技术宅，请进。', 0, 1217542289, 1, 0);

INSERT INTO
  `chii_groups` (`grp_id`, `grp_cat`, `grp_name`, `grp_title`, `grp_icon`, `grp_creator`, `grp_topics`, `grp_posts`, `grp_members`, `grp_desc`, `grp_lastpost`, `grp_builddate`, `grp_accessible`, `grp_nsfw`)
VALUES
  (4215, 32, 'sandbox', '沙盒', '000/00/42/4215.jpg?r=1531631345', 287622, 1, 0, 3, '[s]非[/s]官方沙盒', 0, 1531631310, 1, 0);

INSERT INTO
  `chii_group_members` (`gmb_uid`, `gmb_gid`, `gmb_moderator`, `gmb_dateline`)
VALUES
  (287622, 4215, 1, 1531631310),
  (427613, 4215, 0, 1531631570),
  (382951, 4215, 0, 1640499538);
