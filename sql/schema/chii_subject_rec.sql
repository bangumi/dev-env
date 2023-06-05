DROP TABLE IF EXISTS `chii_subject_rec`;
CREATE TABLE `chii_subject_rec` (
  `subject_id` mediumint(8) unsigned NOT NULL,
  `rec_subject_id` mediumint(8) unsigned NOT NULL,
  `mio_sim` float NOT NULL,
  `mio_count` mediumint(9) NOT NULL,
  KEY `subject_id` (`subject_id`),
  KEY `mio_count` (`mio_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
