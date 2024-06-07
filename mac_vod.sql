/*
 Navicat MySQL Data Transfer

 Source Server         : dev.xsitehub.com
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : dev.xsitehub.com:3306
 Source Schema         : bocat2

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 02/09/2021 14:11:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mac_vod
-- ----------------------------
DROP TABLE IF EXISTS `mac_vod`;
CREATE TABLE `mac_vod`  (
  `vod_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` smallint NOT NULL DEFAULT 0,
  `type_id_1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `group_id` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vod_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_sub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_en` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_status` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `vod_letter` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_color` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pic_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pic_slide` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_actor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_writer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_behind` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_blurb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pubdate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_total` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_serial` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `vod_tv` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_weekday` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_year` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_version` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_state` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_author` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_jumpurl` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_tpl` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_tpl_play` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_tpl_down` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_isend` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `vod_lock` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `vod_level` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `vod_copyright` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `vod_points` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vod_points_play` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vod_points_down` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vod_hits` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_hits_day` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_hits_week` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_hits_month` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_duration` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `duration` decimal(10, 2) NULL DEFAULT 0.00,
  `vod_up` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_down` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_score` decimal(3, 1) UNSIGNED NOT NULL DEFAULT 0.0,
  `vod_score_all` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_score_num` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `vod_time` int UNSIGNED NOT NULL DEFAULT 0,
  `vod_time_add` int UNSIGNED NOT NULL DEFAULT 0,
  `vod_time_hits` int UNSIGNED NOT NULL DEFAULT 0,
  `vod_time_make` int UNSIGNED NOT NULL DEFAULT 0,
  `vod_trysee` smallint UNSIGNED NOT NULL DEFAULT 0,
  `vod_douban_id` int UNSIGNED NOT NULL DEFAULT 0,
  `vod_douban_score` decimal(3, 1) UNSIGNED NOT NULL DEFAULT 0.0,
  `vod_reurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_rel_vod` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_rel_art` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pwd` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pwd_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pwd_play` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pwd_play_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pwd_down` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_pwd_down_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vod_play_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_play_server` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_play_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_play_url` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vod_down_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_down_server` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_down_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vod_down_url` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vod_plot` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `vod_plot_name` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vod_plot_detail` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vod_star` mediumint NULL DEFAULT NULL COMMENT '视频打分分数1-5分最低3分',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vod_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频目录名字',
  `vod_topic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'kafka的topic',
  `star` int NULL DEFAULT NULL,
  PRIMARY KEY (`vod_id`) USING BTREE,
  UNIQUE INDEX `uniq`(`type_id`, `vod_name`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  INDEX `type_id_1`(`type_id_1`) USING BTREE,
  INDEX `vod_level`(`vod_level`) USING BTREE,
  INDEX `vod_hits`(`vod_hits`) USING BTREE,
  INDEX `vod_letter`(`vod_letter`) USING BTREE,
  INDEX `vod_name`(`vod_name`) USING BTREE,
  INDEX `vod_year`(`vod_year`) USING BTREE,
  INDEX `vod_area`(`vod_area`) USING BTREE,
  INDEX `vod_lang`(`vod_lang`) USING BTREE,
  INDEX `vod_tag`(`vod_tag`) USING BTREE,
  INDEX `vod_class`(`vod_class`) USING BTREE,
  INDEX `vod_lock`(`vod_lock`) USING BTREE,
  INDEX `vod_up`(`vod_up`) USING BTREE,
  INDEX `vod_down`(`vod_down`) USING BTREE,
  INDEX `vod_hits_day`(`vod_hits_day`) USING BTREE,
  INDEX `vod_hits_week`(`vod_hits_week`) USING BTREE,
  INDEX `vod_hits_month`(`vod_hits_month`) USING BTREE,
  INDEX `vod_plot`(`vod_plot`) USING BTREE,
  INDEX `vod_points_play`(`vod_points_play`) USING BTREE,
  INDEX `vod_points_down`(`vod_points_down`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `vod_time_add`(`vod_time_add`) USING BTREE,
  INDEX `vod_time`(`vod_time`) USING BTREE,
  INDEX `vod_time_make`(`vod_time_make`) USING BTREE,
  INDEX `vod_actor`(`vod_actor`) USING BTREE,
  INDEX `vod_director`(`vod_director`) USING BTREE,
  INDEX `vod_score_all`(`vod_score_all`) USING BTREE,
  INDEX `vod_score_num`(`vod_score_num`) USING BTREE,
  INDEX `vod_total`(`vod_total`) USING BTREE,
  INDEX `vod_score`(`vod_score`) USING BTREE,
  INDEX `vod_version`(`vod_version`) USING BTREE,
  INDEX `vod_state`(`vod_state`) USING BTREE,
  INDEX `vod_isend`(`vod_isend`) USING BTREE,
  FULLTEXT INDEX `vod_pic`(`vod_pic`)
) ENGINE = MyISAM AUTO_INCREMENT = 198812 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Triggers structure for table mac_vod
-- ----------------------------
DROP TRIGGER IF EXISTS `小编推荐`;
delimiter ;;
CREATE TRIGGER `小编推荐` BEFORE UPDATE ON `mac_vod` FOR EACH ROW begin
set new.vod_time_add=UNIX_TIMESTAMP(now());

end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
