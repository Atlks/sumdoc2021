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

 Date: 18/08/2021 17:40:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for click_log
-- ----------------------------
DROP TABLE IF EXISTS `click_log`;
CREATE TABLE `click_log`  (
  `wd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dtm` datetime(6) NULL DEFAULT NULL,
  `dt` date NULL DEFAULT NULL,
  `xx` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
