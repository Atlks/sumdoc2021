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

 Date: 18/08/2021 17:38:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cfg
-- ----------------------------
DROP TABLE IF EXISTS `cfg`;
CREATE TABLE `cfg`  (
  `k` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `typ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`k`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
