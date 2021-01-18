/*
 Navicat MySQL Data Transfer

 Source Server         : locahost
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : graduate

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 17/01/2021 18:01:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键 无意的的uuid',
  `visit_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '访问时间',
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作者用户名',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问ip',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问资源的url',
  `execution_time` datetime(0) NOT NULL COMMENT '执行时间',
  `method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问方法',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `power` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id 号',
  `student_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `student_age` smallint(10) NOT NULL COMMENT '学生年龄',
  `student_gender` int(1) NOT NULL COMMENT '学生性别',
  `student_height` int(25) NOT NULL COMMENT '学生升高',
  `student_teacher` int(5) NOT NULL COMMENT '辅导员',
  `student_faculty` int(11) NULL DEFAULT NULL COMMENT '学生所在的院系',
  `student_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '学生入学校时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生基础信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `teacher_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师姓名',
  `teacher_gender` int(1) NOT NULL COMMENT '老师性别',
  `teacher_age` int(10) NOT NULL COMMENT '老师年龄',
  `teacher_height` int(25) NOT NULL COMMENT '老师升高',
  `teacher_faculty` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师所在的系',
  `teacher_class` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师所教的班级',
  `teacher_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '老师入职时间',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '老师的状态 0为上班 1为请假',
  `is_delete` int(1) NOT NULL DEFAULT 0 COMMENT '是否在职 0 为在职 1为辞职',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id号',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的真实姓名',
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的电话',
  `power` int(1) NOT NULL DEFAULT 1 COMMENT '用户权限 0 为游客 1 为普通用户 2 为vip 用户 3为root\r\n默认为1',
  `alias` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的别名',
  `register_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '用户注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '000000', '税家俊', '15730560197', 3, '超级管理员', '2020-12-15 17:32:12');
INSERT INTO `users` VALUES (2, 'guest', 'guest', '游客', '13608337700', 0, '游客', '2020-12-15 17:32:20');
INSERT INTO `users` VALUES (3, 'test', 'A!a123456', '测试', '18883259444', 0, '测试', '2020-12-29 16:43:15');

SET FOREIGN_KEY_CHECKS = 1;
