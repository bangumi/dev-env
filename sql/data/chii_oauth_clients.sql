LOCK TABLES
  `chii_oauth_clients` WRITE;

REPLACE INTO
  `chii_oauth_clients`
VALUES
  (1, 'bgmabcdefg', 'abcdefg', 'bangumi://oauth/callback', '', '', '2');

UNLOCK TABLES;
