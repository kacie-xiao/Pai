/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost:3306
 Source Schema         : react_admin

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 16/11/2023 09:50:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `m_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_m_id` int(8) NULL DEFAULT NULL COMMENT '父菜单id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `keep_alive` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '页面是否保持状态',
  `order` int(8) NOT NULL COMMENT '菜单排序',
  `show` enum('true','false') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否显示在菜单上',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, NULL, '系统管理', '/power', 'icon_set', 'true', 10000, 'true');
INSERT INTO `menu` VALUES (2, NULL, '列表页', '/list', 'icon_list', 'true', 1, 'true');
INSERT INTO `menu` VALUES (3, NULL, '结果页', '/result', 'icon_voiceprint', 'true', 5, 'true');
INSERT INTO `menu` VALUES (4, NULL, '表单页', '/form', 'icon_form', 'true', 3, 'true');
INSERT INTO `menu` VALUES (5, NULL, '详情页', '/details', 'icon_edit', 'true', 3, 'true');
INSERT INTO `menu` VALUES (6, NULL, '统计', '/statistics', 'icon_MTR', 'true', 4, 'true');
INSERT INTO `menu` VALUES (7, NULL, '图标库', '/icons', 'icon_bluray', 'true', 10, 'true');
INSERT INTO `menu` VALUES (8, 1, '菜单管理', '/menu', 'icon_menu', 'true', 1475, 'true');
INSERT INTO `menu` VALUES (9, 1, '权限类别', '/type', 'icon_safety', 'true', 12, 'true');
INSERT INTO `menu` VALUES (10, 1, '用户管理', '/user', 'icon_infopersonal', 'true', 1593, 'true');
INSERT INTO `menu` VALUES (11, 6, '访客统计', '/visitor', 'icon_addresslist', 'true', 2, 'true');
INSERT INTO `menu` VALUES (12, 6, '反馈统计', '/feedback', 'icon_feeding', 'true', 1, 'true');
INSERT INTO `menu` VALUES (13, 2, '卡片列表', '/card', NULL, 'false', 5485, 'true');
INSERT INTO `menu` VALUES (14, 2, '查询列表', '/search', NULL, 'false', 9588, 'true');
INSERT INTO `menu` VALUES (15, 3, '403', '/403', 'icon_locking', 'false', 0, 'true');
INSERT INTO `menu` VALUES (16, 3, '404', '/404', 'icon_close', 'false', 1, 'true');
INSERT INTO `menu` VALUES (17, 3, '500', '/500', 'icon_privacy_closed', 'false', 4568, 'true');
INSERT INTO `menu` VALUES (18, 5, '个人中心', '/person', 'icon_infopersonal', 'false', 9998, 'true');
INSERT INTO `menu` VALUES (19, 4, '基础表单', '/index', NULL, 'false', 9654, 'true');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `m_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息描述词',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `add_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '第一条消息', '我创建的第一天消息', '超级管理员', '2021-04-20 17:01:09');
INSERT INTO `message` VALUES (2, 'RegExp', 'RegExp 对象表示正则表达式,它是对字符串执行模式匹配的强大工具。 ', '超级管理员', '2021-04-20 17:48:42');
INSERT INTO `message` VALUES (3, 'Ant Design', 'antd 是基于 Ant Design 设计体系的 React UI 组件库，主要用于研发企业级中后台产品。', '超级管理员', '2021-04-20 17:46:44');
INSERT INTO `message` VALUES (4, 'react-ant-admin', '此框架使用与二次开发，前端框架使用react，UI框架使用ant-design，全局数据状态管理使用redux，ajax使用库为axios。用于快速搭建中后台页面。', '超级管理员', '2021-04-20 17:28:45');

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power`  (
  `type_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限简称',
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示菜单列表id',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES (1, '超级管理员', '2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18,19,9,1');
INSERT INTO `power` VALUES (2, '用户', '11,2,7,6,17,18,16,3,4,5,13,14,15,19,12');
INSERT INTO `power` VALUES (3, '游客', '2,7,18,13,14,5');
INSERT INTO `power` VALUES (4, '低权游客', '2,13,14,7');

-- ----------------------------
-- Table structure for statistics
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics`  (
  `s_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '请求序号',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ip地址',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求地址',
  `time` datetime NULL DEFAULT NULL COMMENT '请求时间',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'http状态码',
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of statistics
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `pswd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `type_id` int(4) NOT NULL COMMENT '用户权限',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uq_account`(`account`) USING BTREE,
  INDEX `fk_type`(`type_id`) USING BTREE,
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `power` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '张同学', 'admin', 'admin123', 1);
INSERT INTO `user_info` VALUES (2, '王五', 'user', 'user123', 2);
INSERT INTO `user_info` VALUES (4, '李四', 'qq123456', 'qq123456', 3);
INSERT INTO `user_info` VALUES (5, '路过的老鼠', 'jake', 'jake123', 4);

SET FOREIGN_KEY_CHECKS = 1;
