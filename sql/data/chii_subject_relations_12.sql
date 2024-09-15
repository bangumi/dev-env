LOCK TABLES `chii_subject_relations` WRITE;
REPLACE INTO `chii_subject_relations` (
  `rlt_subject_id`,
  `rlt_subject_type_id`,
  `rlt_relation_type`,
  `rlt_related_subject_id`,
  `rlt_related_subject_type_id`,
  `rlt_vice_versa`,
  `rlt_order`
)
VALUES (12, 2, 1004, 11, 1, 1, 0),
  (12, 2, 1, 497, 1, 1, 0),
  (12, 2, 3003, 4989, 3, 1, 0),
  (12, 2, 3002, 4990, 3, 1, 0),
  (12, 2, 3001, 4991, 3, 1, 0),
  (12, 2, 3001, 4992, 3, 1, 0),
  (12, 2, 3004, 4993, 3, 1, 0),
  (12, 2, 3004, 4994, 3, 1, 0),
  (12, 2, 3099, 4995, 3, 1, 0),
  (12, 2, 6, 57933, 2, 1, 0),
  (12, 2, 11, 62538, 4, 1, 0),
  (12, 2, 3007, 95057, 3, 1, 0),
  (12, 2, 3007, 95058, 3, 1, 0),
  (12, 2, 3007, 95059, 3, 1, 0),
  (12, 2, 3007, 95060, 3, 1, 0),
  (12, 2, 3007, 95062, 3, 1, 0);
UNLOCK TABLES;
