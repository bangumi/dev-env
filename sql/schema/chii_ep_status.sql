CREATE TABLE
  IF NOT EXISTS `chii_ep_status` (
    `ep_stt_id` mediumint(8) unsigned NOT NULL,
    `ep_stt_uid` mediumint(8) unsigned NOT NULL,
    `ep_stt_sid` mediumint(8) unsigned NOT NULL,
    `ep_stt_on_prg` tinyint(1) unsigned NOT NULL DEFAULT '0',
    `ep_stt_status` mediumtext NOT NULL,
    `ep_stt_lasttouch` int(10) unsigned NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8;

ALTER TABLE `chii_ep_status`
ADD PRIMARY KEY (`ep_stt_id`),
ADD UNIQUE KEY `ep_stt_uniq` (`ep_stt_uid`, `ep_stt_sid`) USING BTREE;

ALTER TABLE `chii_ep_status` MODIFY `ep_stt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;