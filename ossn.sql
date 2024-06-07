/*
Navicat MySQL Data Transfer

Source Server         : rootlocal
Source Server Version : 100208
Source Host           : localhost:3307
Source Database       : ossn

Target Server Type    : MYSQL
Target Server Version : 100208
File Encoding         : 65001

Date: 2020-10-10 17:34:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ossn_annotations
-- ----------------------------
DROP TABLE IF EXISTS `ossn_annotations`;
CREATE TABLE `ossn_annotations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `subject_guid` (`subject_guid`),
  KEY `time_created` (`time_created`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_annotations
-- ----------------------------

-- ----------------------------
-- Table structure for ossn_components
-- ----------------------------
DROP TABLE IF EXISTS `ossn_components`;
CREATE TABLE `ossn_components` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `com_id` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_components
-- ----------------------------
INSERT INTO `ossn_components` VALUES ('1', 'OssnProfile', '1');
INSERT INTO `ossn_components` VALUES ('2', 'OssnWall', '1');
INSERT INTO `ossn_components` VALUES ('3', 'OssnComments', '1');
INSERT INTO `ossn_components` VALUES ('4', 'OssnLikes', '1');
INSERT INTO `ossn_components` VALUES ('5', 'OssnPhotos', '1');
INSERT INTO `ossn_components` VALUES ('6', 'OssnNotifications', '1');
INSERT INTO `ossn_components` VALUES ('7', 'OssnSearch', '1');
INSERT INTO `ossn_components` VALUES ('8', 'OssnMessages', '1');
INSERT INTO `ossn_components` VALUES ('9', 'OssnAds', '1');
INSERT INTO `ossn_components` VALUES ('10', 'OssnGroups', '1');
INSERT INTO `ossn_components` VALUES ('11', 'OssnSitePages', '1');
INSERT INTO `ossn_components` VALUES ('12', 'OssnBlock', '1');
INSERT INTO `ossn_components` VALUES ('13', 'OssnChat', '1');
INSERT INTO `ossn_components` VALUES ('14', 'OssnPoke', '1');
INSERT INTO `ossn_components` VALUES ('15', 'OssnInvite', '1');
INSERT INTO `ossn_components` VALUES ('16', 'OssnEmbed', '1');
INSERT INTO `ossn_components` VALUES ('17', 'OssnSmilies', '1');
INSERT INTO `ossn_components` VALUES ('18', 'OssnSounds', '1');
INSERT INTO `ossn_components` VALUES ('19', 'OssnAutoPagination', '1');
INSERT INTO `ossn_components` VALUES ('20', 'OssnMessageTyping', '1');
INSERT INTO `ossn_components` VALUES ('21', 'OssnRealTimeComments', '1');
INSERT INTO `ossn_components` VALUES ('22', 'OssnPostBackground', '1');

-- ----------------------------
-- Table structure for ossn_entities
-- ----------------------------
DROP TABLE IF EXISTS `ossn_entities`;
CREATE TABLE `ossn_entities` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `owner_guid` (`owner_guid`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`),
  KEY `active` (`active`),
  KEY `permission` (`permission`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `eky_ts` (`type`,`subtype`),
  KEY `eky_tso` (`type`,`subtype`,`owner_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_entities
-- ----------------------------
INSERT INTO `ossn_entities` VALUES ('1', '1', 'user', 'birthdate', '1602226087', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('2', '1', 'user', 'gender', '1602226087', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('3', '1', 'user', 'password_algorithm', '1602226087', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('4', '2', 'user', 'birthdate', '1602226350', '1602227176', '2', '1');
INSERT INTO `ossn_entities` VALUES ('5', '2', 'user', 'gender', '1602226350', '1602227176', '2', '1');
INSERT INTO `ossn_entities` VALUES ('6', '2', 'user', 'password_algorithm', '1602226350', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('7', '2', 'user', 'cover_time', '1602226618', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('8', '1', 'object', 'membership', '1602226818', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('9', '3', 'user', 'birthdate', '1602226961', '1602227056', '2', '1');
INSERT INTO `ossn_entities` VALUES ('10', '3', 'user', 'gender', '1602226961', '1602227056', '2', '1');
INSERT INTO `ossn_entities` VALUES ('11', '3', 'user', 'password_algorithm', '1602226961', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('12', '3', 'user', 'cover_time', '1602226996', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('13', '2', 'object', 'membership', '1602227023', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('14', '3', 'user', 'language', '1602227056', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('15', '2', 'user', 'language', '1602227176', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('16', '4', 'user', 'birthdate', '1602227822', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('17', '4', 'user', 'gender', '1602227822', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('18', '4', 'user', 'password_algorithm', '1602227822', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('19', '4', 'user', 'cover_time', '1602228042', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('20', '5', 'user', 'birthdate', '1602228620', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('21', '5', 'user', 'gender', '1602228620', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('22', '5', 'user', 'password_algorithm', '1602228620', '0', '2', '1');
INSERT INTO `ossn_entities` VALUES ('23', '5', 'user', 'cover_time', '1602229274', '0', '2', '1');

-- ----------------------------
-- Table structure for ossn_entities_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ossn_entities_metadata`;
CREATE TABLE `ossn_entities_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_entities_metadata
-- ----------------------------
INSERT INTO `ossn_entities_metadata` VALUES ('1', '1', '14/01/2008');
INSERT INTO `ossn_entities_metadata` VALUES ('2', '2', 'male');
INSERT INTO `ossn_entities_metadata` VALUES ('3', '3', 'bcrypt');
INSERT INTO `ossn_entities_metadata` VALUES ('4', '4', '11/10/2020');
INSERT INTO `ossn_entities_metadata` VALUES ('5', '5', 'male');
INSERT INTO `ossn_entities_metadata` VALUES ('6', '6', 'bcrypt');
INSERT INTO `ossn_entities_metadata` VALUES ('7', '7', '1602226618');
INSERT INTO `ossn_entities_metadata` VALUES ('8', '8', '2');
INSERT INTO `ossn_entities_metadata` VALUES ('9', '9', '11/10/2020');
INSERT INTO `ossn_entities_metadata` VALUES ('10', '10', 'male');
INSERT INTO `ossn_entities_metadata` VALUES ('11', '11', 'bcrypt');
INSERT INTO `ossn_entities_metadata` VALUES ('12', '12', '1602226996');
INSERT INTO `ossn_entities_metadata` VALUES ('13', '13', '2');
INSERT INTO `ossn_entities_metadata` VALUES ('14', '14', 'zh');
INSERT INTO `ossn_entities_metadata` VALUES ('15', '15', 'zh');
INSERT INTO `ossn_entities_metadata` VALUES ('16', '16', '04/10/2020');
INSERT INTO `ossn_entities_metadata` VALUES ('17', '17', 'male');
INSERT INTO `ossn_entities_metadata` VALUES ('18', '18', 'bcrypt');
INSERT INTO `ossn_entities_metadata` VALUES ('19', '19', '1602228042');
INSERT INTO `ossn_entities_metadata` VALUES ('20', '20', '11/10/2020');
INSERT INTO `ossn_entities_metadata` VALUES ('21', '21', 'male');
INSERT INTO `ossn_entities_metadata` VALUES ('22', '22', 'bcrypt');
INSERT INTO `ossn_entities_metadata` VALUES ('23', '23', '1602229274');

-- ----------------------------
-- Table structure for ossn_likes
-- ----------------------------
DROP TABLE IF EXISTS `ossn_likes`;
CREATE TABLE `ossn_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subtype` (`subtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_likes
-- ----------------------------

-- ----------------------------
-- Table structure for ossn_messages
-- ----------------------------
DROP TABLE IF EXISTS `ossn_messages`;
CREATE TABLE `ossn_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_from` bigint(20) NOT NULL,
  `message_to` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_to` (`message_to`),
  KEY `message_from` (`message_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_messages
-- ----------------------------

-- ----------------------------
-- Table structure for ossn_notifications
-- ----------------------------
DROP TABLE IF EXISTS `ossn_notifications`;
CREATE TABLE `ossn_notifications` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `poster_guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time_created` int(11) NOT NULL,
  `item_guid` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `poster_guid` (`poster_guid`),
  KEY `owner_guid` (`owner_guid`),
  KEY `subject_guid` (`subject_guid`),
  KEY `time_created` (`time_created`),
  KEY `item_guid` (`item_guid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_notifications
-- ----------------------------
INSERT INTO `ossn_notifications` VALUES ('1', 'group:joinrequest', '3', '2', '1', null, '1602227101', '0');
INSERT INTO `ossn_notifications` VALUES ('2', 'group:joinrequest', '5', '2', '1', null, '1602230194', '0');

-- ----------------------------
-- Table structure for ossn_object
-- ----------------------------
DROP TABLE IF EXISTS `ossn_object`;
CREATE TABLE `ossn_object` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time_created` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `subtype` varchar(30) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `owner_guid` (`owner_guid`),
  KEY `time_created` (`time_created`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `oky_ts` (`type`,`subtype`),
  KEY `oky_tsg` (`type`,`subtype`,`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_object
-- ----------------------------
INSERT INTO `ossn_object` VALUES ('1', '2', 'user', '1602226818', 'myprp', '', 'ossngroup');
INSERT INTO `ossn_object` VALUES ('2', '3', 'user', '1602227023', 'u2grp', '', 'ossngroup');
INSERT INTO `ossn_object` VALUES ('3', '1', 'site', '1602227553', '', '&amp;lt;p&amp;gt;站使用條款 站使用條款 站使用條款 站使用條款&amp;lt;/p&amp;gt;', 'sitepage:terms');

-- ----------------------------
-- Table structure for ossn_relationships
-- ----------------------------
DROP TABLE IF EXISTS `ossn_relationships`;
CREATE TABLE `ossn_relationships` (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `relation_from` bigint(20) NOT NULL,
  `relation_to` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `relation_to` (`relation_to`),
  KEY `relation_from` (`relation_from`),
  KEY `time` (`time`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_relationships
-- ----------------------------
INSERT INTO `ossn_relationships` VALUES ('1', '2', '1', 'group:join', '1602226818');
INSERT INTO `ossn_relationships` VALUES ('2', '1', '2', 'group:join:approve', '1602226818');
INSERT INTO `ossn_relationships` VALUES ('3', '3', '2', 'group:join', '1602227023');
INSERT INTO `ossn_relationships` VALUES ('4', '2', '3', 'group:join:approve', '1602227023');
INSERT INTO `ossn_relationships` VALUES ('5', '3', '1', 'friend:request', '1602227087');
INSERT INTO `ossn_relationships` VALUES ('6', '3', '2', 'friend:request', '1602227090');
INSERT INTO `ossn_relationships` VALUES ('7', '3', '1', 'group:join', '1602227101');
INSERT INTO `ossn_relationships` VALUES ('8', '1', '3', 'group:join:approve', '1602227163');
INSERT INTO `ossn_relationships` VALUES ('9', '2', '3', 'friend:request', '1602227274');
INSERT INTO `ossn_relationships` VALUES ('10', '4', '2', 'friend:request', '1602228064');
INSERT INTO `ossn_relationships` VALUES ('11', '4', '3', 'friend:request', '1602228066');
INSERT INTO `ossn_relationships` VALUES ('12', '2', '4', 'friend:request', '1602228078');
INSERT INTO `ossn_relationships` VALUES ('13', '5', '2', 'friend:request', '1602228658');
INSERT INTO `ossn_relationships` VALUES ('14', '2', '5', 'friend:request', '1602228871');
INSERT INTO `ossn_relationships` VALUES ('15', '5', '1', 'group:join', '1602230194');
INSERT INTO `ossn_relationships` VALUES ('16', '1', '5', 'group:join:approve', '1602230273');
INSERT INTO `ossn_relationships` VALUES ('17', '5', '2', 'group:join', '0');
INSERT INTO `ossn_relationships` VALUES ('18', '2', '5', 'group:join:approve', '0');

-- ----------------------------
-- Table structure for ossn_site_settings
-- ----------------------------
DROP TABLE IF EXISTS `ossn_site_settings`;
CREATE TABLE `ossn_site_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_site_settings
-- ----------------------------
INSERT INTO `ossn_site_settings` VALUES ('1', 'theme', 'goblue');
INSERT INTO `ossn_site_settings` VALUES ('2', 'site_name', 'mysnsx');
INSERT INTO `ossn_site_settings` VALUES ('3', 'language', 'zh');
INSERT INTO `ossn_site_settings` VALUES ('4', 'cache', '1');
INSERT INTO `ossn_site_settings` VALUES ('5', 'owner_email', 'attilax1314@gmail.com');
INSERT INTO `ossn_site_settings` VALUES ('6', 'notification_email', 'attilax1314@gmail.com');
INSERT INTO `ossn_site_settings` VALUES ('7', 'upgrades', '[\"1410545706.php\",\"1411396351.php\", \"1412353569.php\",\"1415553653.php\",\"1415819862.php\", \"1423419053.php\", \"1423419054.php\", \"1439295894.php\", \"1440716428.php\", \"1440867331.php\", \"1440603377.php\", \"1443202118.php\", \"1443211017.php\", \"1443545762.php\", \"1443617470.php\", \"1446311454.php\", \"1448807613.php\", \"1453676400.php\", \"1459411815.php\", \"1468010638.php\", \"1470127853.php\", \"1480759958.php\", \"1495366993.php\", \"1513524535.php\", \"1513603766.php\", \"1513783390.php\", \"1542223614.php\", \"1564080285.php\", \"1577836800.php\", \"1597058454.php\", \"1597734806.php\", \"1598389337.php\"]');
INSERT INTO `ossn_site_settings` VALUES ('9', 'display_errors', 'on');
INSERT INTO `ossn_site_settings` VALUES ('10', 'site_key', 'e5a3b7e5');
INSERT INTO `ossn_site_settings` VALUES ('11', 'last_cache', '1602226094');
INSERT INTO `ossn_site_settings` VALUES ('12', 'site_version', '5.5');

-- ----------------------------
-- Table structure for ossn_users
-- ----------------------------
DROP TABLE IF EXISTS `ossn_users`;
CREATE TABLE `ossn_users` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `salt` varchar(8) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `last_login` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `activation` varchar(32) DEFAULT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `last_login` (`last_login`),
  KEY `last_activity` (`last_activity`),
  KEY `time_created` (`time_created`),
  FULLTEXT KEY `type` (`type`),
  FULLTEXT KEY `email` (`email`),
  FULLTEXT KEY `first_name` (`first_name`),
  FULLTEXT KEY `last_name` (`last_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ossn_users
-- ----------------------------
INSERT INTO `ossn_users` VALUES ('1', 'admin', 'admin', 'attilax1314@gmail.com', '$2y$10$K2KSFZlaLOi6NStd0mZFQO4r9pGixj8HajD8fJHPe1iy5SZXogss.', '7a791349', 'aaa', 'aaa', '1602299412', '1602301007', '', '1602226087');
INSERT INTO `ossn_users` VALUES ('2', 'normal', 'attilax', 'attilax13144@gmail.com', '$2y$10$fepcJ5y7gW7NSkOIBPDCeeh66EHgCt/.skTPMA835pl03JXoDDmJq', 'be76c214', 'u1', 'uu1', '1602312953', '1602322452', '', '1602226350');
INSERT INTO `ossn_users` VALUES ('3', 'normal', 'attilax2', 'attilax1316@gmail.com', '$2y$10$N5i345IN69mRMPZNQCRmOOPYDrWaZZXtJTSE5JTkas8VERNogz6L6', 'b7040c27', 'u2', 'u2', '1602227707', '1602227784', '', '1602226961');
INSERT INTO `ossn_users` VALUES ('4', 'normal', 'attilax3', 'attilax13141@gmail.com', '$2y$10$Zcoq4ri9vDEpW/cLAT9Z9edRC7miS1WrV1eANJGFDotZlOWh3gVpW', 'e6ec9d61', 'uu3', 'uu3', '1602228033', '1602228592', '', '1602227822');
INSERT INTO `ossn_users` VALUES ('5', 'normal', 'attilax5', 'a55@f.com', '$2y$10$X2JdJ13eeUfsRjokbHBvgOIWQPyRlktookS2bnh6VW7Wt6cC6yH6S', '18ca16f2', 'uu5', 'uu5', '1602228629', '1602320398', '', '1602228620');

-- ----------------------------
-- View structure for grpmembers
-- ----------------------------
DROP VIEW IF EXISTS `grpmembers`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `grpmembers` AS select `ossn_relationships`.`relation_id` AS `relation_id`,`ossn_relationships`.`relation_from` AS `relation_from`,`grp`.`title` AS `title`,`ossn_relationships`.`relation_to` AS `relation_to`,`u`.`username` AS `username`,`ossn_relationships`.`type` AS `type`,`ossn_relationships`.`time` AS `time` from ((`ossn_relationships` left join `ossn_object` `grp` on(`grp`.`guid` = `ossn_relationships`.`relation_from`)) left join `ossn_users` `u` on(`u`.`guid` = `ossn_relationships`.`relation_to`)) where `ossn_relationships`.`type` = 'group:join:approve' order by `ossn_relationships`.`relation_from` ;

-- ----------------------------
-- View structure for rlt_frd
-- ----------------------------
DROP VIEW IF EXISTS `rlt_frd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rlt_frd` AS select `ossn_relationships`.`relation_id` AS `relation_id`,`ossn_relationships`.`relation_from` AS `relation_from`,`u`.`username` AS `username_from`,`ossn_relationships`.`relation_to` AS `relation_to`,`u2`.`username` AS `username_to`,`ossn_relationships`.`type` AS `type`,`ossn_relationships`.`time` AS `time` from ((`ossn_relationships` left join `ossn_users` `u` on(`u`.`guid` = `ossn_relationships`.`relation_from`)) left join `ossn_users` `u2` on(`u2`.`guid` = `ossn_relationships`.`relation_to`)) where `ossn_relationships`.`type` = 'friend:request' order by `ossn_relationships`.`relation_from` ;

-- ----------------------------
-- View structure for userjoinedgrps
-- ----------------------------
DROP VIEW IF EXISTS `userjoinedgrps`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userjoinedgrps` AS select `ossn_relationships`.`relation_id` AS `relation_id`,`ossn_relationships`.`relation_from` AS `relation_from`,`u`.`username` AS `username`,`ossn_relationships`.`relation_to` AS `relation_to`,`grp`.`title` AS `title`,`ossn_relationships`.`type` AS `type`,`ossn_relationships`.`time` AS `time` from ((`ossn_relationships` left join `ossn_users` `u` on(`u`.`guid` = `ossn_relationships`.`relation_from`)) left join `ossn_object` `grp` on(`grp`.`guid` = `ossn_relationships`.`relation_to`)) where `ossn_relationships`.`type` = 'group:join' ;

-- ----------------------------
-- Procedure structure for addUser2grp
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUser2grp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser2grp`(`uid` int,`grpid` int)
BEGIN
	#Routine body goes here...
  insert ossn_relationships set  ossn_relationships.relation_from=uid,relation_to=grpid,type='group:join';
  insert ossn_relationships set  ossn_relationships.relation_from=grpid,relation_to=uid,type='group:join:approve';
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `noactive`;
DELIMITER ;;
CREATE TRIGGER `noactive` BEFORE INSERT ON `ossn_users` FOR EACH ROW set  new.activation=''
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
