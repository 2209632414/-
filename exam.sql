/*
 Navicat MySQL Data Transfer

 Source Server         : GIN
 Source Server Type    : MySQL
 Source Server Version : 80300
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 80300
 File Encoding         : 65001

 Date: 20/08/2024 09:57:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `dept_id` int NOT NULL,
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '技术部');
INSERT INTO `department` VALUES (2, '客服部');
INSERT INTO `department` VALUES (3, '行政部');

-- ----------------------------
-- Table structure for work_order
-- ----------------------------
DROP TABLE IF EXISTS `work_order`;
CREATE TABLE `work_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `order_type` tinyint NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `handle_dept_id` int NULL DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `fenpai_time` datetime NULL DEFAULT NULL,
  `is_overdue` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_order
-- ----------------------------
INSERT INTO `work_order` VALUES (4, 'ORD20230819002', 0, '再次修复故障', '办公室内的网络无法连接，需要尽快处理。', 2, '2024-07-01 00:43:48', NULL, 0);
INSERT INTO `work_order` VALUES (5, 'ORD20230819003', 0, '11再次修复故障', '办公室内的网络无法连接，需要尽快处理。', 2, '2024-07-12 00:43:52', NULL, 0);
INSERT INTO `work_order` VALUES (6, 'ORD20230819005', 1, '修复网络故障', '办公室内的网络无法连接，需要尽快处理。', 1, '2024-07-05 01:22:05', '2024-08-20 02:35:42', 0);
INSERT INTO `work_order` VALUES (7, 'ORD20230819006', 1, '修复网络故障', '办公室内的网络无法连接，需要尽快处理。', 2, '2024-07-26 01:22:07', NULL, 0);
INSERT INTO `work_order` VALUES (8, 'ORD20230819007', 1, '修复网络故障', '办公室内的网络无法连接，需要尽快处理。', 2, '2024-07-20 01:22:19', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
