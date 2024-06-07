/*
 Navicat Premium Data Transfer

 Source Server         : dev.xsitehub.com
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : dev.xsitehub.com:3306
 Source Schema         : bocat2

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 02/08/2021 14:30:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mac_user
-- ----------------------------
DROP TABLE IF EXISTS `mac_user`;
CREATE TABLE `mac_user`  (
  `user_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` smallint(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_qq` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_status` tinyint(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_portrait` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_portrait_thumb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_openid_qq` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_openid_weixin` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_points` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '推广积分',
  `user_points_froze` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '冻结积分',
  `user_reg_time` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_reg_ip` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_login_time` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_login_ip` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_last_login_time` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_last_login_ip` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_login_num` smallint(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_extend` smallint(0) UNSIGNED NOT NULL DEFAULT 0,
  `user_random` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_end_time` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员结束时间',
  `user_pid` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '三级',
  `user_pid_2` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '二级',
  `user_pid_3` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '一级',
  `user_end_time_syvfi` datetime(0) NULL DEFAULT NULL,
  `user_end_time_syvfi_date` date NULL DEFAULT NULL,
  `user_end_time_syvfi22` datetime(0) NULL DEFAULT NULL,
  `user_end_time_syvfi_date22` date NULL DEFAULT NULL,
  `user_end_time_syvfi33` datetime(0) NULL DEFAULT NULL,
  `user_end_time_syvfi_date44` date NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `type_id`(`group_id`) USING BTREE,
  INDEX `user_name`(`user_name`) USING BTREE,
  INDEX `user_reg_time`(`user_reg_time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4780 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Triggers structure for table mac_user
-- ----------------------------
DROP TRIGGER IF EXISTS `syvfeiTriggr`;
delimiter ;;
CREATE TRIGGER `syvfeiTriggr` BEFORE UPDATE ON `mac_user` FOR EACH ROW begin
if new.user_end_time!=old.user_end_time then
  set new.user_end_time_syvfi=now(), new.user_end_time_syvfi_date=now()  ;
end if;

end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
