/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : j2eedb

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 09/09/2022 11:43:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cal_holiday
-- ----------------------------
DROP TABLE IF EXISTS `cal_holiday`;
CREATE TABLE `cal_holiday`  (
  `holiday_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `the_day` datetime NULL DEFAULT NULL COMMENT '日期',
  `holiday_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日期类型',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`holiday_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '节假日设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_holiday
-- ----------------------------
INSERT INTO `cal_holiday` VALUES (200, '2022-09-10 00:00:00', 'WORKDAY', '2022-09-09 00:15:27', '2022-09-09 23:15:27', '', NULL, NULL, 0, 0, '', '2022-09-09 09:18:59', '', '2022-09-09 10:15:29');
INSERT INTO `cal_holiday` VALUES (201, '2022-09-11 00:00:00', 'HOLIDAY', '2022-09-09 00:19:02', '2022-09-09 23:19:02', '', NULL, NULL, 0, 0, '', '2022-09-09 09:19:03', '', NULL);
INSERT INTO `cal_holiday` VALUES (202, '2022-09-12 00:00:00', 'HOLIDAY', '2022-09-09 00:19:05', '2022-09-09 23:19:05', '', NULL, NULL, 0, 0, '', '2022-09-09 09:19:07', '', NULL);

-- ----------------------------
-- Table structure for cal_plan
-- ----------------------------
DROP TABLE IF EXISTS `cal_plan`;
CREATE TABLE `cal_plan`  (
  `plan_id` bigint NOT NULL AUTO_INCREMENT COMMENT '计划ID',
  `plan_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '计划编号',
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '计划名称',
  `calendar_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班组类型',
  `start_date` datetime NOT NULL COMMENT '开始日期',
  `end_date` datetime NOT NULL COMMENT '结束日期',
  `shift_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '轮班方式',
  `shift_method` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '倒班方式',
  `shift_count` int NULL DEFAULT NULL COMMENT '数',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PREPARE' COMMENT '状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '排班计划表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_plan
-- ----------------------------
INSERT INTO `cal_plan` VALUES (200, 'PLAN2022001', 'PlanA', 'ZS', '2022-09-09 00:00:00', '2022-09-09 00:00:00', 'SHIFT_THREE', 'MONTH', 1, 'CONFIRMED', '', NULL, NULL, 0, 0, '', '2022-09-09 09:25:05', '', '2022-09-09 09:55:45');
INSERT INTO `cal_plan` VALUES (201, 'PLAN2022002', '组装', 'ZZ', '2022-09-08 00:00:00', '2022-09-10 00:00:00', 'SHIFT_THREE', 'MONTH', 1, 'CONFIRMED', '', NULL, NULL, 0, 0, '', '2022-09-09 10:01:56', '', '2022-09-09 10:12:49');

-- ----------------------------
-- Table structure for cal_plan_team
-- ----------------------------
DROP TABLE IF EXISTS `cal_plan_team`;
CREATE TABLE `cal_plan_team`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `plan_id` bigint NOT NULL COMMENT '计划ID',
  `team_id` bigint NOT NULL COMMENT '班组ID',
  `team_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班组编号',
  `team_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班组名称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '计划班组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_plan_team
-- ----------------------------
INSERT INTO `cal_plan_team` VALUES (200, 200, 200, 'T001', '一班', '', NULL, NULL, 0, 0, '', '2022-09-09 09:55:26', '', NULL);
INSERT INTO `cal_plan_team` VALUES (201, 201, 201, 'T002', '二班', '', NULL, NULL, 0, 0, '', '2022-09-09 10:12:44', '', NULL);

-- ----------------------------
-- Table structure for cal_shift
-- ----------------------------
DROP TABLE IF EXISTS `cal_shift`;
CREATE TABLE `cal_shift`  (
  `shift_id` bigint NOT NULL AUTO_INCREMENT COMMENT '班次ID',
  `plan_id` bigint NOT NULL COMMENT '计划ID',
  `order_num` int NOT NULL COMMENT '序号',
  `shift_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班次名称',
  `start_time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '开始时间',
  `end_time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '结束时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`shift_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '计划班次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_shift
-- ----------------------------
INSERT INTO `cal_shift` VALUES (200, 200, 1, '白班', '8:00', '16:00', '', NULL, NULL, 0, 0, '', NULL, '', NULL);
INSERT INTO `cal_shift` VALUES (201, 200, 2, '中班', '16:00', '24:00', '', NULL, NULL, 0, 0, '', NULL, '', NULL);
INSERT INTO `cal_shift` VALUES (202, 200, 3, '夜班', '00:00', '8:00', '', NULL, NULL, 0, 0, '', NULL, '', NULL);
INSERT INTO `cal_shift` VALUES (203, 201, 1, '白班', '8:00', '16:00', '', NULL, NULL, 0, 0, '', NULL, '', NULL);
INSERT INTO `cal_shift` VALUES (204, 201, 2, '中班', '16:00', '24:00', '', NULL, NULL, 0, 0, '', NULL, '', NULL);
INSERT INTO `cal_shift` VALUES (205, 201, 3, '夜班', '00:00', '8:00', '', NULL, NULL, 0, 0, '', NULL, '', NULL);

-- ----------------------------
-- Table structure for cal_team
-- ----------------------------
DROP TABLE IF EXISTS `cal_team`;
CREATE TABLE `cal_team`  (
  `team_id` bigint NOT NULL AUTO_INCREMENT COMMENT '班组ID',
  `team_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班组编号',
  `team_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班组名称',
  `calendar_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班组类型',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '班组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_team
-- ----------------------------
INSERT INTO `cal_team` VALUES (200, 'T001', '一班', 'ZS', '', NULL, NULL, 0, 0, '', '2022-09-09 09:17:30', '', '2022-09-09 09:17:39');
INSERT INTO `cal_team` VALUES (201, 'T002', '二班', 'CK', '', NULL, NULL, 0, 0, '', '2022-09-09 09:18:06', '', '2022-09-09 09:18:19');

-- ----------------------------
-- Table structure for cal_team_member
-- ----------------------------
DROP TABLE IF EXISTS `cal_team_member`;
CREATE TABLE `cal_team_member`  (
  `member_id` bigint NOT NULL AUTO_INCREMENT COMMENT '班组成员ID',
  `team_id` bigint NOT NULL COMMENT '班组ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '班组成员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_team_member
-- ----------------------------
INSERT INTO `cal_team_member` VALUES (200, 200, 2, 'zs', '张三', '15666666666', '', NULL, NULL, 0, 0, '', '2022-09-09 09:17:38', '', NULL);
INSERT INTO `cal_team_member` VALUES (201, 201, 1, 'admin', '管理员', '15888888888', '', NULL, NULL, 0, 0, '', '2022-09-09 09:18:17', '', NULL);

-- ----------------------------
-- Table structure for cal_teamshift
-- ----------------------------
DROP TABLE IF EXISTS `cal_teamshift`;
CREATE TABLE `cal_teamshift`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `the_day` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日期',
  `team_id` bigint NOT NULL COMMENT '班组ID',
  `team_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班组名称',
  `shift_id` bigint NOT NULL COMMENT '班次ID',
  `shift_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班次名称',
  `order_num` int NULL DEFAULT NULL COMMENT '序号',
  `plan_id` bigint NULL DEFAULT NULL COMMENT '计划ID',
  `calendar_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班组类型',
  `shift_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '轮班方式',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '班组排班表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cal_teamshift
-- ----------------------------
INSERT INTO `cal_teamshift` VALUES (200, '2022-09-08', 201, '二班', 203, '白班', 1, 201, 'ZZ', 'SHIFT_THREE', '', NULL, NULL, 0, 0, '', NULL, '', NULL);

-- ----------------------------
-- Table structure for dv_check_machinery
-- ----------------------------
DROP TABLE IF EXISTS `dv_check_machinery`;
CREATE TABLE `dv_check_machinery`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `plan_id` bigint NOT NULL COMMENT '计划ID',
  `machinery_id` bigint NOT NULL COMMENT '设备ID',
  `machinery_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备编码',
  `machinery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备名称',
  `machinery_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `machinery_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '点检设备表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_check_machinery
-- ----------------------------
INSERT INTO `dv_check_machinery` VALUES (200, 200, 201, 'M0002', '组装M0002', '1', '1', '1', NULL, NULL, 0, 0, '', '2022-09-08 15:38:12', '', '2022-09-07 15:06:51');

-- ----------------------------
-- Table structure for dv_check_plan
-- ----------------------------
DROP TABLE IF EXISTS `dv_check_plan`;
CREATE TABLE `dv_check_plan`  (
  `plan_id` bigint NOT NULL AUTO_INCREMENT COMMENT '计划ID',
  `plan_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '计划编码',
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '计划名称',
  `plan_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '计划类型',
  `start_date` datetime NULL DEFAULT NULL COMMENT '开始日期',
  `end_date` datetime NULL DEFAULT NULL COMMENT '结束日期',
  `cycle_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '频率',
  `cycle_count` int NULL DEFAULT NULL COMMENT '次数',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备点检保养计划头表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_check_plan
-- ----------------------------
INSERT INTO `dv_check_plan` VALUES (200, 'PLAN2022001', '2022年注塑机保养计划', 'MAINTEN', '2022-01-01 00:00:00', '2022-12-31 00:00:00', 'MONTH', 1, 'FINISHED', '', NULL, NULL, 0, 0, '', '2022-09-08 15:38:00', '', '2022-09-08 15:40:06');

-- ----------------------------
-- Table structure for dv_check_subject
-- ----------------------------
DROP TABLE IF EXISTS `dv_check_subject`;
CREATE TABLE `dv_check_subject`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `plan_id` bigint NOT NULL COMMENT '计划ID',
  `subject_id` bigint NOT NULL COMMENT '项目ID',
  `subject_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编码',
  `subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目名称',
  `subject_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目类型',
  `subject_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目内容',
  `subject_standard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标准',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '点检项目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_check_subject
-- ----------------------------
INSERT INTO `dv_check_subject` VALUES (200, 200, 200, 'SUB001', '润滑', 'MAINTEN', '冲床无明显摩擦声', NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 15:39:58', '', NULL);

-- ----------------------------
-- Table structure for dv_machinery
-- ----------------------------
DROP TABLE IF EXISTS `dv_machinery`;
CREATE TABLE `dv_machinery`  (
  `machinery_id` bigint NOT NULL AUTO_INCREMENT COMMENT '设备类型ID',
  `machinery_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备类型编码',
  `machinery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备类型名称',
  `machinery_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `machinery_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `machinery_type_id` bigint NOT NULL COMMENT '设备类型ID',
  `machinery_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备类型编码',
  `machinery_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备类型名称',
  `workshop_id` bigint NOT NULL COMMENT '所属车间ID',
  `workshop_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属车间编码',
  `workshop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属车间名称',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'STOP' COMMENT '设备状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`machinery_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_machinery
-- ----------------------------
INSERT INTO `dv_machinery` VALUES (200, 'M0001', '清洗M0001', '1', '1', 203, NULL, NULL, 200, NULL, NULL, 'STOP', '1', NULL, NULL, 0, 0, '', '2022-09-07 15:06:06', '', '2022-09-08 11:08:59');
INSERT INTO `dv_machinery` VALUES (201, 'M0002', '组装M0002', '1', '1', 201, NULL, NULL, 200, NULL, NULL, 'STOP', '1', NULL, NULL, 0, 0, '', '2022-09-07 15:06:30', '', '2022-09-07 15:06:51');
INSERT INTO `dv_machinery` VALUES (202, 'M0003', '组装M0003', '1', '1', 202, NULL, NULL, 200, NULL, NULL, 'STOP', '', NULL, NULL, 0, 0, '', '2022-09-08 11:08:45', '', '2022-09-08 11:08:54');
INSERT INTO `dv_machinery` VALUES (203, 'M0004', '消毒M0004', '1', '1', 204, NULL, NULL, 200, NULL, NULL, 'STOP', '', NULL, NULL, 0, 0, '', '2022-09-08 16:18:40', '', '2022-09-08 16:18:44');

-- ----------------------------
-- Table structure for dv_machinery_type
-- ----------------------------
DROP TABLE IF EXISTS `dv_machinery_type`;
CREATE TABLE `dv_machinery_type`  (
  `machinery_type_id` bigint NOT NULL AUTO_INCREMENT COMMENT '设备类型ID',
  `machinery_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备类型编码',
  `machinery_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备类型名称',
  `parent_type_id` bigint NULL DEFAULT 0 COMMENT '父类型ID',
  `ancestors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所有父节点ID',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`machinery_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_machinery_type
-- ----------------------------
INSERT INTO `dv_machinery_type` VALUES (1, 'M_TYPE_000', '设备分类', 0, '0', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 14:45:14', '', NULL);
INSERT INTO `dv_machinery_type` VALUES (200, 'M_TYPE_006', '组装机', 1, '0,1', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 15:03:09', '', NULL);
INSERT INTO `dv_machinery_type` VALUES (201, 'M_TYPE_007', '大型组装机', 200, '0,1,200', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 15:03:22', '', NULL);
INSERT INTO `dv_machinery_type` VALUES (202, 'M_TYPE_008', '中型组装机', 200, '0,1,200', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 15:03:33', '', NULL);
INSERT INTO `dv_machinery_type` VALUES (203, 'M_TYPE_009', '清洗机', 1, '0,1', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 15:03:53', '', NULL);
INSERT INTO `dv_machinery_type` VALUES (204, 'M_TYPE_010', '消毒机', 1, '0,1', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 16:18:07', '', NULL);

-- ----------------------------
-- Table structure for dv_repair
-- ----------------------------
DROP TABLE IF EXISTS `dv_repair`;
CREATE TABLE `dv_repair`  (
  `repair_id` bigint NOT NULL AUTO_INCREMENT COMMENT '维修单ID',
  `repair_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维修单编号',
  `repair_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修单名称',
  `machinery_id` bigint NOT NULL COMMENT '设备ID',
  `machinery_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备编码',
  `machinery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设备名称',
  `machinery_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `machinery_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `machinery_type_id` bigint NOT NULL COMMENT '设备类型ID',
  `require_date` datetime NULL DEFAULT NULL COMMENT '报修日期',
  `finish_date` datetime NULL DEFAULT NULL COMMENT '维修完成日期',
  `confirm_date` datetime NULL DEFAULT NULL COMMENT '验收日期',
  `repair_result` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修结果',
  `accepted_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修人员',
  `confirm_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '验收人员',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PREPARE' COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`repair_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备维修单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_repair
-- ----------------------------

-- ----------------------------
-- Table structure for dv_repair_line
-- ----------------------------
DROP TABLE IF EXISTS `dv_repair_line`;
CREATE TABLE `dv_repair_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '行ID',
  `repair_id` bigint NOT NULL COMMENT '维修单ID',
  `subject_id` bigint NOT NULL COMMENT '项目ID',
  `subject_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编码',
  `subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目名称',
  `subject_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目类型',
  `subject_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目内容',
  `subject_standard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标准',
  `malfunction` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '故障描述',
  `malfunction_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '故障描述资源',
  `repair_des` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维修情况',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备维修单行' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_repair_line
-- ----------------------------

-- ----------------------------
-- Table structure for dv_subject
-- ----------------------------
DROP TABLE IF EXISTS `dv_subject`;
CREATE TABLE `dv_subject`  (
  `subject_id` bigint NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `subject_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编码',
  `subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目名称',
  `subject_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '项目类型',
  `subject_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目内容',
  `subject_standard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标准',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`subject_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备点检保养项目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dv_subject
-- ----------------------------
INSERT INTO `dv_subject` VALUES (200, 'SUB001', '润滑', 'MAINTEN', '冲床无明显摩擦声', NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 15:35:04', '', NULL);
INSERT INTO `dv_subject` VALUES (201, 'SUB002', '测试', 'CHECK', '这是一个测试', NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 15:40:37', '', NULL);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for md_client
-- ----------------------------
DROP TABLE IF EXISTS `md_client`;
CREATE TABLE `md_client`  (
  `client_id` bigint NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户名称',
  `client_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户简称',
  `client_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户英文名称',
  `client_des` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户简介',
  `client_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户LOGO地址',
  `client_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'ENTERPRISE' COMMENT '客户类型',
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户地址',
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户官网地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户邮箱地址',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户电话',
  `contact1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人1',
  `contact1_tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人1-电话',
  `contact1_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人1-邮箱',
  `contact2` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人2',
  `contact2_tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人2-电话',
  `contact2_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人2-邮箱',
  `credit_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '客户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_client
-- ----------------------------
INSERT INTO `md_client` VALUES (200, 'J22490712', '比亚迪股份有限公司', '比亚迪', 'BYD', '比亚迪品牌诞生于深圳，于1995年成立，业务横跨汽车、轨道交通、新能源和电子四大产业。', 'logo', 'ENTERPRISE', '深圳南山区无名路12号', 'https://www.bydglobal.com/cn/index.html', 'salse@bydglobal.com', '123432222', '张三', '122212312', 's1@bydglobal.com', '李四', '1132323232', 's2@bydglobal.com', '11212121', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:50:48', '', NULL);

-- ----------------------------
-- Table structure for md_item
-- ----------------------------
DROP TABLE IF EXISTS `md_item`;
CREATE TABLE `md_item`  (
  `item_id` bigint NOT NULL AUTO_INCREMENT COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料标识',
  `item_type_id` bigint NULL DEFAULT 0 COMMENT '物料类型ID',
  `item_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '物料类型编码',
  `item_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '物料类型名称',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `safe_stock_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否设置安全库存',
  `min_stock` double(12, 4) NULL DEFAULT 0.0000 COMMENT '最低库存量',
  `max_stock` double(12, 4) NULL DEFAULT 0.0000 COMMENT '最大库存量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物料产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_item
-- ----------------------------
INSERT INTO `md_item` VALUES (200, 'IFTT2022090851', '基础接地摞柱', NULL, 'piece', 'ITEM', 201, 'jxz00002', 'A型1号', 'Y', 'N', 0.0000, 0.0000, '', NULL, NULL, 0, 0, 'admin', '2022-09-08 10:42:31', '', NULL);
INSERT INTO `md_item` VALUES (201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 'ITEM', 201, 'jxz00002', 'A型1号', 'Y', 'N', 0.0000, 0.0000, '', NULL, NULL, 0, 0, 'admin', '2022-09-08 10:43:17', 'admin', '2022-09-08 10:45:30');
INSERT INTO `md_item` VALUES (202, 'IFTT2022090842', 'A型螺柱+螺丝扣', NULL, 'piece', 'PRODUCT', 200, 'jxz00001', 'A型', 'Y', 'N', 0.0000, 0.0000, '', NULL, NULL, 0, 0, 'admin', '2022-09-08 10:45:59', 'admin', '2022-09-08 10:46:13');

-- ----------------------------
-- Table structure for md_item_type
-- ----------------------------
DROP TABLE IF EXISTS `md_item_type`;
CREATE TABLE `md_item_type`  (
  `item_type_id` bigint NOT NULL AUTO_INCREMENT COMMENT '产品物料类型ID',
  `item_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料类型编码',
  `item_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料类型名称',
  `parent_type_id` bigint NOT NULL DEFAULT 0 COMMENT '父类型ID',
  `ancestors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所有层级父节点',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料标识',
  `order_num` int NULL DEFAULT 1 COMMENT '排列顺序',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`item_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物料产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_item_type
-- ----------------------------
INSERT INTO `md_item_type` VALUES (1, 'A1', '产品', 0, '0', 'PRODUCT', 1, 'Y', '无', NULL, NULL, 0, 0, 'admin', '2022-09-06 17:20:00', 'admin', '2022-09-07 17:14:15');
INSERT INTO `md_item_type` VALUES (200, 'jxz00001', 'A型', 1, '0,1', 'PRODUCT', 1, 'Y', '', NULL, NULL, 0, 0, 'admin', '2022-09-07 08:55:37', 'admin', '2022-09-07 17:13:38');
INSERT INTO `md_item_type` VALUES (201, 'jxz00002', 'A型1号', 200, '0,1,200', 'ITEM', 1, 'Y', '', NULL, NULL, 0, 0, 'admin', '2022-09-07 11:49:00', '', NULL);
INSERT INTO `md_item_type` VALUES (202, 'jxz00003', 'A型2号', 200, '0,1,200', 'ITEM', 2, 'Y', '', NULL, NULL, 0, 0, 'admin', '2022-09-07 11:49:17', '', NULL);
INSERT INTO `md_item_type` VALUES (203, 'jxz00004', 'B型', 1, '0,1', 'PRODUCT', 2, 'Y', '', NULL, NULL, 0, 0, 'admin', '2022-09-07 11:49:28', 'admin', '2022-09-07 17:13:42');
INSERT INTO `md_item_type` VALUES (204, 'jxz00005', 'B型1号', 203, '0,1,203', 'ITEM', 1, 'Y', '', NULL, NULL, 0, 0, 'admin', '2022-09-07 11:49:39', '', NULL);

-- ----------------------------
-- Table structure for md_product_bom
-- ----------------------------
DROP TABLE IF EXISTS `md_product_bom`;
CREATE TABLE `md_product_bom`  (
  `bom_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `item_id` bigint NOT NULL COMMENT '物料产品ID',
  `bom_item_id` bigint NOT NULL COMMENT 'BOM物料ID',
  `bom_item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料编码',
  `bom_item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料名称',
  `bom_item_spec` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'BOM物料规格',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料单位',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料标识',
  `quantity` double(12, 4) NOT NULL DEFAULT 0.0000 COMMENT '物料使用比例',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`bom_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '产品BOM关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_product_bom
-- ----------------------------
INSERT INTO `md_product_bom` VALUES (200, 202, 200, 'IFTT2022090851', '基础接地摞柱', NULL, 'piece', 'ITEM', 1.0000, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 10:46:11', '', NULL);
INSERT INTO `md_product_bom` VALUES (201, 202, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 'ITEM', 1.0000, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 10:46:11', '', NULL);

-- ----------------------------
-- Table structure for md_product_sop
-- ----------------------------
DROP TABLE IF EXISTS `md_product_sop`;
CREATE TABLE `md_product_sop`  (
  `sop_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `item_id` bigint NOT NULL COMMENT '物料产品ID',
  `order_num` int NULL DEFAULT NULL COMMENT '排列顺序',
  `process_id` bigint NULL DEFAULT NULL COMMENT '对应的工序',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编号',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `sop_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `sop_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详细描述',
  `sop_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`sop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '产品SOP表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_product_sop
-- ----------------------------

-- ----------------------------
-- Table structure for md_unit_measure
-- ----------------------------
DROP TABLE IF EXISTS `md_unit_measure`;
CREATE TABLE `md_unit_measure`  (
  `measure_id` bigint NOT NULL AUTO_INCREMENT COMMENT '单位ID',
  `measure_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位编码',
  `measure_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位名称',
  `primary_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否是主单位',
  `primary_id` bigint NULL DEFAULT NULL COMMENT '主单位ID',
  `change_rate` double(12, 4) NULL DEFAULT NULL COMMENT '与主单位换算比例',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`measure_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_unit_measure
-- ----------------------------
INSERT INTO `md_unit_measure` VALUES (200, 'g', '克', 'N', 201, 1000.0000, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:35:57', '', '2022-09-07 13:36:15');
INSERT INTO `md_unit_measure` VALUES (201, 'kg', '千克', 'Y', NULL, NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:36:07', '', NULL);
INSERT INTO `md_unit_measure` VALUES (202, 'piece', '个', 'Y', NULL, NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:38:04', '', NULL);
INSERT INTO `md_unit_measure` VALUES (203, 'box', '箱', 'Y', NULL, NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:38:55', '', NULL);

-- ----------------------------
-- Table structure for md_vendor
-- ----------------------------
DROP TABLE IF EXISTS `md_vendor`;
CREATE TABLE `md_vendor`  (
  `vendor_id` bigint NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商编码',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商名称',
  `vendor_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `vendor_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商英文名称',
  `vendor_des` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简介',
  `vendor_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商LOGO地址',
  `vendor_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商等级',
  `vendor_score` int NULL DEFAULT NULL COMMENT '供应商评分',
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商地址',
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商官网地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商邮箱地址',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商电话',
  `contact1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人1',
  `contact1_tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人1-电话',
  `contact1_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人1-邮箱',
  `contact2` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人2',
  `contact2_tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人2-电话',
  `contact2_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人2-邮箱',
  `credit_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`vendor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '供应商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_vendor
-- ----------------------------
INSERT INTO `md_vendor` VALUES (200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', NULL, NULL, NULL, 'B', 6, NULL, NULL, NULL, '15212345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:56:11', '', '2022-09-07 13:56:40');

-- ----------------------------
-- Table structure for md_workshop
-- ----------------------------
DROP TABLE IF EXISTS `md_workshop`;
CREATE TABLE `md_workshop`  (
  `workshop_id` bigint NOT NULL AUTO_INCREMENT COMMENT '车间ID',
  `workshop_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车间编码',
  `workshop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车间名称',
  `area` double(12, 2) NULL DEFAULT NULL COMMENT '面积',
  `charge` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`workshop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '车间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_workshop
-- ----------------------------
INSERT INTO `md_workshop` VALUES (200, 'WS001', '注塑车间', 500.00, '王五', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 13:59:33', '', NULL);

-- ----------------------------
-- Table structure for md_workstation
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation`;
CREATE TABLE `md_workstation`  (
  `workstation_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站编码',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站名称',
  `workstation_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站地点',
  `workshop_id` bigint NULL DEFAULT NULL COMMENT '所在车间ID',
  `workshop_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在车间编码',
  `workshop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在车间名称',
  `process_id` bigint NULL DEFAULT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`workstation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工作站表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_workstation
-- ----------------------------
INSERT INTO `md_workstation` VALUES (200, 'WS0004', '组装工装台#01', 'A车间角落', 200, 'WS001', '注塑车间', 200, 'PROCESS001', '组装', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 14:26:21', '', '2022-09-08 16:19:38');
INSERT INTO `md_workstation` VALUES (201, 'WS0005', '清洗工作台#02', 'A车间角落', 200, 'WS001', '注塑车间', 201, 'PROCESS002', '清洗', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 14:27:08', '', '2022-09-08 16:19:29');
INSERT INTO `md_workstation` VALUES (202, 'WS0008', '消毒工作台#03', 'A车间角落', 200, 'WS001', '注塑车间', 202, 'PROCESS003', '消毒', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 16:17:21', '', '2022-09-08 16:19:15');

-- ----------------------------
-- Table structure for md_workstation_machine
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation_machine`;
CREATE TABLE `md_workstation_machine`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `machinery_id` bigint NOT NULL COMMENT '设备ID',
  `machinery_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备编码',
  `machinery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备名称',
  `quantity` int NULL DEFAULT 1 COMMENT '数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_workstation_machine
-- ----------------------------
INSERT INTO `md_workstation_machine` VALUES (201, 200, 201, 'M0002', '组装M0002', 1, '1', NULL, NULL, 0, 0, '', '2022-09-07 15:29:33', '', '2022-09-07 15:06:51');
INSERT INTO `md_workstation_machine` VALUES (202, 201, 200, 'M0001', '清洗M0001', 1, '1', NULL, NULL, 0, 0, '', '2022-09-07 15:29:50', '', '2022-09-07 15:06:44');
INSERT INTO `md_workstation_machine` VALUES (203, 202, 203, 'M0004', '消毒M0004', 1, '', NULL, NULL, 0, 0, '', '2022-09-08 16:18:57', '', '2022-09-08 16:18:44');

-- ----------------------------
-- Table structure for md_workstation_tool
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation_tool`;
CREATE TABLE `md_workstation_tool`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `tool_type_id` bigint NOT NULL COMMENT '工装夹具类型ID',
  `tool_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型编码',
  `tool_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型名称',
  `quantity` int NOT NULL DEFAULT 1 COMMENT '数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工装夹具资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_workstation_tool
-- ----------------------------
INSERT INTO `md_workstation_tool` VALUES (200, 201, 200, 'TT001', '刀具', 1, '', NULL, NULL, 0, 0, '', '2022-09-08 16:19:27', '', NULL);
INSERT INTO `md_workstation_tool` VALUES (201, 200, 201, 'TT002', '夹具', 1, '', NULL, NULL, 0, 0, '', '2022-09-08 16:19:36', '', NULL);

-- ----------------------------
-- Table structure for md_workstation_worker
-- ----------------------------
DROP TABLE IF EXISTS `md_workstation_worker`;
CREATE TABLE `md_workstation_worker`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岗位编码',
  `post_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `quantity` int NOT NULL DEFAULT 1 COMMENT '数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '人力资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_workstation_worker
-- ----------------------------
INSERT INTO `md_workstation_worker` VALUES (200, 200, 4, 'user', '普通员工', 2, '', NULL, NULL, 0, 0, '', '2022-09-07 14:29:12', '', NULL);
INSERT INTO `md_workstation_worker` VALUES (201, 201, 4, 'user', '普通员工', 1, '', NULL, NULL, 0, 0, '', '2022-09-07 14:30:02', '', NULL);
INSERT INTO `md_workstation_worker` VALUES (202, 202, 4, 'user', '普通员工', 1, '', NULL, NULL, 0, 0, '', '2022-09-08 16:19:03', '', NULL);

-- ----------------------------
-- Table structure for pro_feedback
-- ----------------------------
DROP TABLE IF EXISTS `pro_feedback`;
CREATE TABLE `pro_feedback`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站名称',
  `workorder_id` bigint NOT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产工单编号',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产工单名称',
  `task_id` bigint NULL DEFAULT NULL COMMENT '生产任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产任务编号',
  `quantity` double(14, 2) NULL DEFAULT NULL COMMENT '排产数量',
  `quantity_feedback` double(14, 2) NULL DEFAULT NULL COMMENT '本次报工数量',
  `quantity_qualified` double(14, 2) NULL DEFAULT NULL COMMENT '合格品数量',
  `quantity_unquanlified` double(14, 2) NULL DEFAULT NULL COMMENT '不良品数量',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报工用户名',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `feedback_channel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报工途径',
  `feedback_time` datetime NULL DEFAULT NULL COMMENT '报工时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产报工记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for pro_process
-- ----------------------------
DROP TABLE IF EXISTS `pro_process`;
CREATE TABLE `pro_process`  (
  `process_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工序名称',
  `attention` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工艺要求',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`process_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产工序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_process
-- ----------------------------
INSERT INTO `pro_process` VALUES (200, 'PROCESS001', '组装', NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 14:14:14', '', '2022-09-07 14:15:03');
INSERT INTO `pro_process` VALUES (201, 'PROCESS002', '清洗', NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 14:15:34', '', '2022-09-07 14:15:48');
INSERT INTO `pro_process` VALUES (202, 'PROCESS003', '消毒', NULL, 'Y', '', NULL, NULL, 0, 0, '', '2022-09-07 14:16:11', '', '2022-09-07 14:16:18');

-- ----------------------------
-- Table structure for pro_process_content
-- ----------------------------
DROP TABLE IF EXISTS `pro_process_content`;
CREATE TABLE `pro_process_content`  (
  `content_id` bigint NOT NULL AUTO_INCREMENT COMMENT '内容ID',
  `process_id` bigint NOT NULL COMMENT '工序ID',
  `order_num` int NULL DEFAULT 0 COMMENT '顺序编号',
  `content_text` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容说明',
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '辅助设备',
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '辅助材料',
  `doc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '材料URL',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产工序内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_process_content
-- ----------------------------
INSERT INTO `pro_process_content` VALUES (200, 200, 1, '111', '111', '111', '111', '', NULL, NULL, 0, 0, '', '2022-09-07 14:14:53', '', NULL);
INSERT INTO `pro_process_content` VALUES (201, 200, 2, '222', '222', '222', '222', '', NULL, NULL, 0, 0, '', '2022-09-07 14:15:00', '', NULL);
INSERT INTO `pro_process_content` VALUES (202, 201, 1, '1', '1', '1', '1', '', NULL, NULL, 0, 0, '', '2022-09-07 14:15:47', '', NULL);
INSERT INTO `pro_process_content` VALUES (203, 202, 1, '11', '11', '11', '11', '', NULL, NULL, 0, 0, '', '2022-09-07 14:16:17', '', NULL);

-- ----------------------------
-- Table structure for pro_route
-- ----------------------------
DROP TABLE IF EXISTS `pro_route`;
CREATE TABLE `pro_route`  (
  `route_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工艺路线ID',
  `route_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工艺路线编号',
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工艺路线名称',
  `route_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工艺路线说明',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`route_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工艺路线表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_route
-- ----------------------------
INSERT INTO `pro_route` VALUES (200, 'R1000', '测试工艺路线', '测试工艺路线', 'Y', '', NULL, NULL, 0, 0, '', '2022-09-08 15:57:52', '', '2022-09-08 16:01:04');

-- ----------------------------
-- Table structure for pro_route_process
-- ----------------------------
DROP TABLE IF EXISTS `pro_route_process`;
CREATE TABLE `pro_route_process`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `route_id` bigint NOT NULL COMMENT '工艺路线ID',
  `process_id` bigint NOT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `order_num` int NULL DEFAULT 1 COMMENT '序号',
  `next_process_id` bigint NOT NULL COMMENT '工序ID',
  `next_process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编码',
  `next_process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `link_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'SS' COMMENT '与下一道工序关系',
  `default_pre_time` int NULL DEFAULT 0 COMMENT '准备时间',
  `default_suf_time` int NULL DEFAULT 0 COMMENT '等待时间',
  `color_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#00AEF3' COMMENT '甘特图显示颜色',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工艺组成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_route_process
-- ----------------------------
INSERT INTO `pro_route_process` VALUES (200, 200, 200, 'PROCESS001', '组装', 1, 201, 'PROCESS002', '清洗', 'FS', 1, 1, '#00AEF3', '', NULL, NULL, 0, 0, '', '2022-09-08 15:58:53', '', '2022-09-08 15:59:17');
INSERT INTO `pro_route_process` VALUES (201, 200, 201, 'PROCESS002', '清洗', 2, 202, 'PROCESS003', '消毒', 'FS', 1, 1, '#F3D700', '', NULL, NULL, 0, 0, '', '2022-09-08 15:59:17', '', '2022-09-08 15:59:48');
INSERT INTO `pro_route_process` VALUES (202, 200, 202, 'PROCESS003', '消毒', 3, 0, NULL, '无', 'FS', 3, 0, '#1400F3', '', NULL, NULL, 0, 0, '', '2022-09-08 15:59:48', '', NULL);

-- ----------------------------
-- Table structure for pro_route_product
-- ----------------------------
DROP TABLE IF EXISTS `pro_route_product`;
CREATE TABLE `pro_route_product`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `route_id` bigint NOT NULL COMMENT '工艺路线ID',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` int NULL DEFAULT 1 COMMENT '生产数量',
  `production_time` double(12, 2) NULL DEFAULT 1.00 COMMENT '生产用时',
  `time_unit_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'MINUTE' COMMENT '时间单位',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '产品制程' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_route_product
-- ----------------------------
INSERT INTO `pro_route_product` VALUES (200, 200, 202, 'IFTT2022090842', 'A型螺柱+螺丝扣', NULL, 'piece', 1, 1.00, 'MINUTE', '', NULL, NULL, 0, 0, '', '2022-09-08 16:00:30', '', NULL);

-- ----------------------------
-- Table structure for pro_task
-- ----------------------------
DROP TABLE IF EXISTS `pro_task`;
CREATE TABLE `pro_task`  (
  `task_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务编号',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `workorder_id` bigint NOT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '生产工单编号',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工单名称',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工作站名称',
  `process_id` bigint NOT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` double(14, 2) NOT NULL DEFAULT 1.00 COMMENT '排产数量',
  `quantity_produced` double(14, 2) NULL DEFAULT 0.00 COMMENT '已生产数量',
  `quantity_quanlify` double(14, 2) NULL DEFAULT 0.00 COMMENT '合格品数量',
  `quantity_unquanlify` double(14, 2) NULL DEFAULT 0.00 COMMENT '不良品数量',
  `quantity_changed` double(14, 2) NULL DEFAULT 0.00 COMMENT '调整数量',
  `client_id` bigint NOT NULL COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户名称',
  `client_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户简称',
  `start_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始生产时间',
  `duration` int NULL DEFAULT 1 COMMENT '生产时长',
  `end_time` datetime NULL DEFAULT NULL COMMENT '完成生产时间',
  `color_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#00AEF3' COMMENT '甘特图显示颜色',
  `request_date` datetime NULL DEFAULT NULL COMMENT '需求日期',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'NORMARL' COMMENT '生产状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_task
-- ----------------------------
INSERT INTO `pro_task` VALUES (200, 'TASK20220001', 'A型螺柱+螺丝扣【3000】piece', 200, 'MO202209080001', '【A型螺柱+螺丝扣】10000个', 200, 'WS0004', '去浇口工装台#01', 200, 'PROCESS001', '组装', 202, 'IFTT2022090842', 'A型螺柱+螺丝扣', '黑色', 'piece', 3000.00, 0.00, 0.00, 0.00, 0.00, 200, 'J22490712', '比亚迪股份有限公司', NULL, '2022-09-08 16:00:00', 6, '2022-09-10 16:00:00', '#00AEF3', NULL, 'NORMARL', '', NULL, NULL, 0, 0, '', '2022-09-08 16:06:32', '', '2022-09-08 16:08:50');
INSERT INTO `pro_task` VALUES (201, 'TASK20220002', 'A型螺柱+螺丝扣【1】piece', 200, 'MO202209080001', '【A型螺柱+螺丝扣】10000个', 201, 'WS0005', '去浇口工作台#02', 201, 'PROCESS002', '清洗', 202, 'IFTT2022090842', 'A型螺柱+螺丝扣', '黑色', 'piece', 3000.00, 0.00, 0.00, 0.00, 0.00, 200, 'J22490712', '比亚迪股份有限公司', NULL, '2022-09-10 08:00:00', 1, '2022-09-10 16:00:00', '#F3D700', NULL, 'NORMARL', '', NULL, NULL, 0, 0, '', '2022-09-08 16:07:26', '', '2022-09-08 16:20:20');
INSERT INTO `pro_task` VALUES (202, 'TASK20220003', 'A型螺柱+螺丝扣【1】piece', 200, 'MO202209080001', '【A型螺柱+螺丝扣】10000个', 202, 'WS0008', '消毒工作台#03', 202, 'PROCESS003', '消毒', 202, 'IFTT2022090842', 'A型螺柱+螺丝扣', '黑色', 'piece', 3000.00, 0.00, 0.00, 0.00, 0.00, 200, 'J22490712', '比亚迪股份有限公司', NULL, '2022-09-10 16:00:00', 1, '2022-09-11 00:00:00', '#1400F3', NULL, 'NORMARL', '', NULL, NULL, 0, 0, '', '2022-09-08 16:20:05', '', '2022-09-08 16:20:46');

-- ----------------------------
-- Table structure for pro_task_issue
-- ----------------------------
DROP TABLE IF EXISTS `pro_task_issue`;
CREATE TABLE `pro_task_issue`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `task_id` bigint NOT NULL COMMENT '生产任务ID',
  `workorder_id` bigint NULL DEFAULT NULL COMMENT '生产工单ID',
  `workstation_id` bigint NULL DEFAULT NULL COMMENT '工作站ID',
  `source_doc_id` bigint NOT NULL COMMENT '单据ID',
  `source_doc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单据编号',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '投料批次',
  `source_line_id` bigint NULL DEFAULT NULL COMMENT '行ID',
  `item_id` bigint NULL DEFAULT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity_issued` double(12, 2) NULL DEFAULT NULL COMMENT '总的投料数量',
  `quantity_available` double(12, 2) NULL DEFAULT NULL COMMENT '当前可用数量',
  `quantity_used` double(12, 2) NULL DEFAULT NULL COMMENT '当前使用数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产任务投料表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_task_issue
-- ----------------------------

-- ----------------------------
-- Table structure for pro_trans_consume
-- ----------------------------
DROP TABLE IF EXISTS `pro_trans_consume`;
CREATE TABLE `pro_trans_consume`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `trans_order_id` bigint NULL DEFAULT NULL COMMENT '流转单ID',
  `trans_order_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流转单编号',
  `task_id` bigint NOT NULL COMMENT '生产任务ID',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `process_id` bigint NULL DEFAULT NULL COMMENT '工序ID',
  `workorder_id` bigint NULL DEFAULT NULL COMMENT '生产工单ID',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批次号',
  `source_doc_id` bigint NULL DEFAULT NULL COMMENT '被消耗单据ID',
  `source_doc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被消耗单据编号',
  `source_doc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被消耗单据类型',
  `source_line_id` bigint NULL DEFAULT NULL COMMENT '被消耗单据行ID',
  `source_batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被消耗物料批次号',
  `item_id` bigint NULL DEFAULT NULL COMMENT '被消耗产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被消耗产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被消耗产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity_consumed` double(12, 2) NULL DEFAULT NULL COMMENT '消耗数量',
  `consume_date` datetime NULL DEFAULT NULL COMMENT '消耗时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物料消耗记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_trans_consume
-- ----------------------------

-- ----------------------------
-- Table structure for pro_trans_order
-- ----------------------------
DROP TABLE IF EXISTS `pro_trans_order`;
CREATE TABLE `pro_trans_order`  (
  `trans_order_id` bigint NOT NULL AUTO_INCREMENT COMMENT '流转单ID',
  `trans_order_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流转单编号',
  `task_id` bigint NOT NULL COMMENT '生产任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产任务编号',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站名称',
  `process_id` bigint NULL DEFAULT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编号',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `workorder_id` bigint NULL DEFAULT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产工单编号',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产工单名称',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批次号',
  `item_id` bigint NULL DEFAULT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity_transfered` double(12, 2) NULL DEFAULT NULL COMMENT '流转数量',
  `produce_date` datetime NULL DEFAULT NULL COMMENT '生产日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`trans_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流转单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_trans_order
-- ----------------------------

-- ----------------------------
-- Table structure for pro_workorder
-- ----------------------------
DROP TABLE IF EXISTS `pro_workorder`;
CREATE TABLE `pro_workorder`  (
  `workorder_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工单编码',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工单名称',
  `order_source` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来源类型',
  `source_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源单据',
  `product_id` bigint NOT NULL COMMENT '产品ID',
  `product_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品编号',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产品名称',
  `product_spc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `quantity` double(14, 2) NOT NULL DEFAULT 0.00 COMMENT '生产数量',
  `quantity_produced` double(14, 2) NULL DEFAULT 0.00 COMMENT '已生产数量',
  `quantity_changed` double(14, 2) NULL DEFAULT 0.00 COMMENT '调整数量',
  `quantity_scheduled` double(14, 2) NULL DEFAULT 0.00 COMMENT '已排产数量',
  `client_id` bigint NULL DEFAULT NULL COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户名称',
  `request_date` datetime NOT NULL COMMENT '需求日期',
  `parent_id` bigint NOT NULL DEFAULT 0 COMMENT '父工单',
  `ancestors` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所有父节点ID',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PREPARE' COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`workorder_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_workorder
-- ----------------------------
INSERT INTO `pro_workorder` VALUES (200, 'MO202209080001', '【A型螺柱+螺丝扣】10000个', 'ORDER', 'PO202205101001', 202, 'IFTT2022090842', 'A型螺柱+螺丝扣', '黑色', 'piece', 10000.00, 0.00, 0.00, 0.00, 200, 'J22490712', '比亚迪股份有限公司', '2022-09-15 00:00:00', 0, '0', 'CONFIRMED', '', NULL, NULL, 0, 0, '', '2022-09-08 15:45:36', '', '2022-09-08 15:54:03');

-- ----------------------------
-- Table structure for pro_workorder_bom
-- ----------------------------
DROP TABLE IF EXISTS `pro_workorder_bom`;
CREATE TABLE `pro_workorder_bom`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '行ID',
  `workorder_id` bigint NOT NULL COMMENT '生产工单ID',
  `item_id` bigint NOT NULL COMMENT 'BOM物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料编号',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'BOM物料名称',
  `item_spc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单位',
  `item_or_product` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物料产品标识',
  `quantity` double(14, 2) NOT NULL DEFAULT 0.00 COMMENT '预计使用量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产工单BOM组成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_workorder_bom
-- ----------------------------
INSERT INTO `pro_workorder_bom` VALUES (200, 200, 200, 'IFTT2022090851', '基础接地摞柱', NULL, 'piece', 'ITEM', 10000.00, '', NULL, NULL, 0, 0, '', '2022-09-08 15:45:36', '', NULL);
INSERT INTO `pro_workorder_bom` VALUES (201, 200, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 'ITEM', 10000.00, '', NULL, NULL, 0, 0, '', '2022-09-08 15:45:36', '', NULL);

-- ----------------------------
-- Table structure for qc_defect
-- ----------------------------
DROP TABLE IF EXISTS `qc_defect`;
CREATE TABLE `qc_defect`  (
  `defect_id` bigint NOT NULL AUTO_INCREMENT COMMENT '缺陷ID',
  `defect_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缺陷编码',
  `defect_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缺陷描述',
  `index_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项类型',
  `defect_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缺陷等级',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`defect_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '常见缺陷表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_defect
-- ----------------------------
INSERT INTO `qc_defect` VALUES (200, 'DF001', '颜色轻微差别', 'APPEARANCE', 'MIN', '', NULL, NULL, 0, 0, '', '2022-09-08 16:37:19', '', '2022-09-08 16:37:47');
INSERT INTO `qc_defect` VALUES (201, 'DF002', '裂纹', 'APPEARANCE', 'MAJ', '', NULL, NULL, 0, 0, '', '2022-09-08 16:37:55', '', NULL);
INSERT INTO `qc_defect` VALUES (202, 'DF003', '未焊透', 'APPEARANCE', 'CR', '', NULL, NULL, 0, 0, '', '2022-09-08 16:38:08', '', NULL);
INSERT INTO `qc_defect` VALUES (203, 'DF004', '尺寸不良，外观不良', 'SIZE', 'MIN', '', NULL, NULL, 0, 0, '', '2022-09-08 16:38:28', '', NULL);

-- ----------------------------
-- Table structure for qc_defect_record
-- ----------------------------
DROP TABLE IF EXISTS `qc_defect_record`;
CREATE TABLE `qc_defect_record`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '缺陷ID',
  `qc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检验单类型',
  `qc_id` bigint NOT NULL COMMENT '检验单ID',
  `line_id` bigint NOT NULL COMMENT '检验单行ID',
  `defect_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缺陷描述',
  `defect_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缺陷等级',
  `defect_quantity` int NULL DEFAULT 1 COMMENT '缺陷数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '检验单缺陷记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_defect_record
-- ----------------------------
INSERT INTO `qc_defect_record` VALUES (200, 'IQC', 200, 200, '5个轻微缺陷', 'MIN', 5, '', NULL, NULL, 0, 0, '', '2022-09-09 09:13:52', '', NULL);

-- ----------------------------
-- Table structure for qc_index
-- ----------------------------
DROP TABLE IF EXISTS `qc_index`;
CREATE TABLE `qc_index`  (
  `index_id` bigint NOT NULL AUTO_INCREMENT COMMENT '检测项ID',
  `index_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项编码',
  `index_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项名称',
  `index_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项类型',
  `qc_tool` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测工具',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`index_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '检测项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_index
-- ----------------------------
INSERT INTO `qc_index` VALUES (200, 'I0001', '是否破损', 'APPEARANCE', '目视', '', NULL, NULL, 0, 0, '', '2022-09-08 17:24:09', '', NULL);
INSERT INTO `qc_index` VALUES (201, 'I0002', '毛重', 'WEIGHT', '电子秤', '', NULL, NULL, 0, 0, '', '2022-09-08 17:24:29', '', NULL);
INSERT INTO `qc_index` VALUES (202, 'I0003', '净重', 'WEIGHT', '电子秤', '', NULL, NULL, 0, 0, '', '2022-09-08 17:24:43', '', NULL);
INSERT INTO `qc_index` VALUES (203, 'I0005', '外径', 'SIZE', '卡尺', '', NULL, NULL, 0, 0, '', '2022-09-08 17:25:23', '', NULL);
INSERT INTO `qc_index` VALUES (204, 'I0006', '内径', 'SIZE', '卡尺', '', NULL, NULL, 0, 0, '', '2022-09-08 17:25:33', '', NULL);

-- ----------------------------
-- Table structure for qc_ipqc
-- ----------------------------
DROP TABLE IF EXISTS `qc_ipqc`;
CREATE TABLE `qc_ipqc`  (
  `ipqc_id` bigint NOT NULL AUTO_INCREMENT COMMENT '检验单ID',
  `ipqc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检验单编号',
  `ipqc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检验单名称',
  `ipqc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检验类型',
  `template_id` bigint NOT NULL COMMENT '检验模板ID',
  `workorder_id` bigint NOT NULL COMMENT '工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单编码',
  `workorder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单名称',
  `task_id` bigint NULL DEFAULT NULL COMMENT '任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务编号',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `workstation_id` bigint NOT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站名称',
  `process_id` bigint NULL DEFAULT NULL COMMENT '工序ID',
  `process_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序编码',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工序名称',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_check` double(12, 4) NULL DEFAULT 1.0000 COMMENT '检测数量',
  `quantity_unqualified` double(12, 4) NULL DEFAULT 0.0000 COMMENT '不合格数',
  `quantity_qualified` double(12, 4) NULL DEFAULT NULL COMMENT '合格品数量',
  `cr_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '致命缺陷率',
  `maj_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '严重缺陷率',
  `min_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '轻微缺陷率',
  `cr_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '致命缺陷数量',
  `maj_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '严重缺陷数量',
  `min_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '轻微缺陷数量',
  `check_result` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测结果',
  `inspect_date` datetime NULL DEFAULT NULL COMMENT '检测日期',
  `inspector` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测人员',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ipqc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '过程检验单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_ipqc
-- ----------------------------

-- ----------------------------
-- Table structure for qc_ipqc_line
-- ----------------------------
DROP TABLE IF EXISTS `qc_ipqc_line`;
CREATE TABLE `qc_ipqc_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `ipqc_id` bigint NOT NULL COMMENT '检验单ID',
  `index_id` bigint NOT NULL COMMENT '检测项ID',
  `index_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项编码',
  `index_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项名称',
  `index_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项类型',
  `qc_tool` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测工具',
  `check_method` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测要求',
  `stander_val` double(12, 4) NULL DEFAULT NULL COMMENT '标准值',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `threshold_max` double(12, 4) NULL DEFAULT NULL COMMENT '误差上限',
  `threshold_min` double(12, 4) NULL DEFAULT NULL COMMENT '误差下限',
  `cr_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '致命缺陷数量',
  `maj_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '严重缺陷数量',
  `min_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '轻微缺陷数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '过程检验单行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_ipqc_line
-- ----------------------------

-- ----------------------------
-- Table structure for qc_iqc
-- ----------------------------
DROP TABLE IF EXISTS `qc_iqc`;
CREATE TABLE `qc_iqc`  (
  `iqc_id` bigint NOT NULL AUTO_INCREMENT COMMENT '来料检验单ID',
  `iqc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来料检验单编号',
  `iqc_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来料检验单名称',
  `template_id` bigint NOT NULL COMMENT '检验模板ID',
  `vendor_id` bigint NOT NULL COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商编码',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '供应商名称',
  `vendor_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `vendor_batch` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商批次号',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_min_check` int NULL DEFAULT 1 COMMENT '最低检测数',
  `quantity_max_unqualified` int NULL DEFAULT 0 COMMENT '最大不合格数',
  `quantity_recived` double(12, 2) NOT NULL COMMENT '本次接收数量',
  `quantity_check` int NOT NULL COMMENT '本次检测数量',
  `quantity_unqualified` int NULL DEFAULT 0 COMMENT '不合格数',
  `cr_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '致命缺陷率',
  `maj_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '严重缺陷率',
  `min_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '轻微缺陷率',
  `cr_quantity` int NULL DEFAULT 0 COMMENT '致命缺陷数量',
  `maj_quantity` int NULL DEFAULT 0 COMMENT '严重缺陷数量',
  `min_quantity` int NULL DEFAULT 0 COMMENT '轻微缺陷数量',
  `check_result` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测结果',
  `recive_date` datetime NULL DEFAULT NULL COMMENT '来料日期',
  `inspect_date` datetime NULL DEFAULT NULL COMMENT '检测日期',
  `inspector` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测人员',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`iqc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '来料检验单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_iqc
-- ----------------------------
INSERT INTO `qc_iqc` VALUES (200, 'IQC20220909001', '螺丝扣检验', 200, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', NULL, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 1, 0, 1000.00, 1000, 5, 0.00, 0.00, 0.50, 0, 0, 5, 'ACCEPT', '2022-09-09 00:00:00', '2022-09-09 00:00:00', 'admin', 'CONFIRMED', '', NULL, NULL, 0, 0, '', '2022-09-09 09:13:31', '', '2022-09-09 09:14:15');

-- ----------------------------
-- Table structure for qc_iqc_line
-- ----------------------------
DROP TABLE IF EXISTS `qc_iqc_line`;
CREATE TABLE `qc_iqc_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `iqc_id` bigint NOT NULL COMMENT '检验单ID',
  `index_id` bigint NOT NULL COMMENT '检测项ID',
  `index_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项编码',
  `index_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项名称',
  `index_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项类型',
  `qc_tool` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测工具',
  `check_method` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测要求',
  `stander_val` double(12, 4) NULL DEFAULT NULL COMMENT '标准值',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `threshold_max` double(12, 4) NULL DEFAULT NULL COMMENT '误差上限',
  `threshold_min` double(12, 4) NULL DEFAULT NULL COMMENT '误差下限',
  `cr_quantity` int NULL DEFAULT 0 COMMENT '致命缺陷数量',
  `maj_quantity` int NULL DEFAULT 0 COMMENT '严重缺陷数量',
  `min_quantity` int NULL DEFAULT 0 COMMENT '轻微缺陷数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '来料检验单行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_iqc_line
-- ----------------------------
INSERT INTO `qc_iqc_line` VALUES (200, 200, 200, 'I0001', '是否破损', 'APPEARANCE', '目视', '质量合格', 8.0000, 'g', 3.0000, 0.0000, 0, 0, 5, '', NULL, NULL, 0, 0, '', '2022-09-09 09:13:31', '', NULL);

-- ----------------------------
-- Table structure for qc_oqc
-- ----------------------------
DROP TABLE IF EXISTS `qc_oqc`;
CREATE TABLE `qc_oqc`  (
  `oqc_id` bigint NOT NULL AUTO_INCREMENT COMMENT '出货检验单ID',
  `oqc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出货检验单编号',
  `oqc_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出货检验单名称',
  `template_id` bigint NOT NULL COMMENT '检验模板ID',
  `client_id` bigint NOT NULL COMMENT '客户ID',
  `client_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户编码',
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户名称',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批次号',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_min_check` double(12, 4) NULL DEFAULT 1.0000 COMMENT '最低检测数',
  `quantity_max_unqualified` double(12, 4) NULL DEFAULT 0.0000 COMMENT '最大不合格数',
  `quantity_out` double(12, 4) NOT NULL COMMENT '发货数量',
  `quantity_check` double(12, 4) NOT NULL COMMENT '本次检测数量',
  `quantity_unqualified` double(12, 4) NULL DEFAULT 0.0000 COMMENT '不合格数',
  `quantity_quanlified` double(12, 4) NULL DEFAULT 0.0000 COMMENT '合格数量',
  `cr_rate` double(12, 4) NULL DEFAULT 0.0000 COMMENT '致命缺陷率',
  `maj_rate` double(12, 4) NULL DEFAULT 0.0000 COMMENT '严重缺陷率',
  `min_rate` double(12, 4) NULL DEFAULT 0.0000 COMMENT '轻微缺陷率',
  `cr_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '致命缺陷数量',
  `maj_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '严重缺陷数量',
  `min_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '轻微缺陷数量',
  `check_result` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测结果',
  `out_date` datetime NULL DEFAULT NULL COMMENT '出货日期',
  `inspect_date` datetime NULL DEFAULT NULL COMMENT '检测日期',
  `inspector` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测人员',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`oqc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '出货检验单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_oqc
-- ----------------------------

-- ----------------------------
-- Table structure for qc_oqc_line
-- ----------------------------
DROP TABLE IF EXISTS `qc_oqc_line`;
CREATE TABLE `qc_oqc_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `oqc_id` bigint NOT NULL COMMENT '检验单ID',
  `index_id` bigint NOT NULL COMMENT '检测项ID',
  `index_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项编码',
  `index_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项名称',
  `index_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测项类型',
  `qc_tool` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测工具',
  `check_method` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测要求',
  `stander_val` double(12, 4) NULL DEFAULT NULL COMMENT '标准值',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `threshold_max` double(12, 4) NULL DEFAULT NULL COMMENT '误差上限',
  `threshold_min` double(12, 4) NULL DEFAULT NULL COMMENT '误差下限',
  `cr_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '致命缺陷数量',
  `maj_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '严重缺陷数量',
  `min_quantity` double(12, 4) NULL DEFAULT 0.0000 COMMENT '轻微缺陷数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '出货检验单行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_oqc_line
-- ----------------------------

-- ----------------------------
-- Table structure for qc_template
-- ----------------------------
DROP TABLE IF EXISTS `qc_template`;
CREATE TABLE `qc_template`  (
  `template_id` bigint NOT NULL AUTO_INCREMENT COMMENT '检测模板ID',
  `template_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测模板编号',
  `template_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测模板名称',
  `qc_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测种类',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`template_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '检测模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_template
-- ----------------------------
INSERT INTO `qc_template` VALUES (200, 'QCT2022001', '检验螺丝扣', 'IQC,OQC,FIRST_CHECK,FINAL_CHECK,REGULAR_CHECK,FQC', 'Y', '检验质量', NULL, NULL, 0, 0, '', '2022-09-08 17:29:25', '', '2022-09-08 17:31:39');

-- ----------------------------
-- Table structure for qc_template_index
-- ----------------------------
DROP TABLE IF EXISTS `qc_template_index`;
CREATE TABLE `qc_template_index`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `template_id` bigint NOT NULL COMMENT '检测模板ID',
  `index_id` bigint NOT NULL COMMENT '检测项ID',
  `index_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项编码',
  `index_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项名称',
  `index_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '检测项类型',
  `qc_tool` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测工具',
  `check_method` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检测要求',
  `stander_val` double(12, 4) NULL DEFAULT NULL COMMENT '标准值',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `threshold_max` double(12, 4) NULL DEFAULT NULL COMMENT '误差上限',
  `threshold_min` double(12, 4) NULL DEFAULT NULL COMMENT '误差下限',
  `doc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '说明图',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '检测模板-检测项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_template_index
-- ----------------------------
INSERT INTO `qc_template_index` VALUES (200, 200, 200, 'I0001', '是否破损', 'APPEARANCE', '目视', '质量合格', 8.0000, 'g', 3.0000, 0.0000, '螺丝扣', '检查螺丝扣是否破损', NULL, NULL, 0, 0, '', '2022-09-08 17:30:26', '', NULL);

-- ----------------------------
-- Table structure for qc_template_product
-- ----------------------------
DROP TABLE IF EXISTS `qc_template_product`;
CREATE TABLE `qc_template_product`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `template_id` bigint NOT NULL COMMENT '检测模板ID',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_check` int NULL DEFAULT 1 COMMENT '最低检测数',
  `quantity_unqualified` int NULL DEFAULT 0 COMMENT '最大不合格数',
  `cr_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '最大致命缺陷率',
  `maj_rate` double(12, 2) NULL DEFAULT 0.00 COMMENT '最大严重缺陷率',
  `min_rate` double(12, 2) NULL DEFAULT 100.00 COMMENT '最大轻微缺陷率',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '检测模板-产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qc_template_product
-- ----------------------------
INSERT INTO `qc_template_product` VALUES (200, 200, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 1, 1, 1.00, 1.00, 5.00, '', NULL, NULL, 0, 0, '', '2022-09-08 17:31:14', '', '2022-09-08 17:31:37');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment`  (
  `attachment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `source_doc_id` bigint NULL DEFAULT NULL COMMENT '关联的业务单据ID',
  `source_doc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务单据类型',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '访问URL',
  `base_path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '域名',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名',
  `orignal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原来的文件名',
  `file_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件类型',
  `file_size` double(12, 2) NULL DEFAULT NULL COMMENT '文件大小',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`attachment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auto_code_part
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_part`;
CREATE TABLE `sys_auto_code_part`  (
  `part_id` bigint NOT NULL AUTO_INCREMENT COMMENT '分段ID',
  `rule_id` bigint NOT NULL COMMENT '规则ID',
  `part_index` int NOT NULL COMMENT '分段序号',
  `part_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分段类型，INPUTCHAR：输入字符，NOWDATE：当前日期时间，FIXCHAR：固定字符，SERIALNO：流水号',
  `part_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分段编号',
  `part_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分段名称',
  `part_length` int NOT NULL COMMENT '分段长度',
  `date_format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日期时间格式',
  `input_character` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '输入字符',
  `fix_character` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '固定字符',
  `seria_start_no` int NULL DEFAULT NULL COMMENT '流水号起始值',
  `seria_step` int NULL DEFAULT NULL COMMENT '流水号步长',
  `seria_now_no` int NULL DEFAULT NULL COMMENT '流水号当前值',
  `cycle_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流水号是否循环',
  `cycle_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '循环方式，YEAR：按年，MONTH：按月，DAY：按天，HOUR：按小时，MINITE：按分钟，OTHER：按传入字符变',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`part_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 259 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '编码生成规则组成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auto_code_part
-- ----------------------------
INSERT INTO `sys_auto_code_part` VALUES (200, 200, 1, 'FIXCHAR', 'P1', '前缀', 3, NULL, NULL, 'jxz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 08:53:58', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (201, 200, 5, 'SERIALNO', 'P5', '流水号', 5, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'MONTH', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 08:54:57', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (202, 201, 1, 'FIXCHAR', '前缀', '固定字符', 2, NULL, NULL, 'IFTT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 09:06:01', 'admin', '2022-09-07 09:07:46');
INSERT INTO `sys_auto_code_part` VALUES (203, 201, 2, 'NOWDATE', '后缀', '固定字段', 8, 'yyyyMMddss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 09:06:34', 'admin', '2022-09-07 10:58:28');
INSERT INTO `sys_auto_code_part` VALUES (204, 202, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'J', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:45:32', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (205, 202, 2, 'NOWDATE', 'MIDDLE', '中间', 6, 'yymmdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:46:19', 'admin', '2022-09-07 13:47:43');
INSERT INTO `sys_auto_code_part` VALUES (206, 202, 3, 'SERIALNO', 'NUMBER', '序号', 2, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'MONTH', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:47:34', 'admin', '2022-09-07 13:47:47');
INSERT INTO `sys_auto_code_part` VALUES (207, 203, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:54:05', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (208, 203, 2, 'SERIALNO', 'SERIAL', '流水号', 5, NULL, NULL, NULL, 1, 1, NULL, 'N', 'MONTH', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:54:38', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (209, 204, 1, 'FIXCHAR', 'PREFIX', '	 前缀', 2, NULL, NULL, 'WS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:58:21', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (210, 204, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:58:53', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (211, 205, 1, 'FIXCHAR', 'PREFIX', '前缀', 2, NULL, NULL, 'WS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:00:37', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (212, 205, 2, 'SERIALNO', 'SERIAL', '流水号', 4, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:01:01', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (213, 206, 1, 'FIXCHAR', 'PREFIX', '前缀', 7, NULL, NULL, 'PROCESS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:13:18', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (214, 206, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:13:42', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (215, 207, 1, 'FIXCHAR', 'PREFIX', '前缀', 7, NULL, NULL, 'M_TYPE_', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:44:32', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (216, 207, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:44:54', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (217, 208, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:05:12', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (218, 208, 2, 'SERIALNO', 'SERIAL', '流水号', 4, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:05:36', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (219, 209, 1, 'FIXCHAR', 'PREFIX', '前缀', 2, NULL, NULL, 'WH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:16:46', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (220, 209, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:17:10', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (221, 210, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:20:34', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (222, 210, 2, 'NOWDATE', 'DATE', '日期', 8, 'yyyyMMdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:20:57', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (223, 210, 3, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'MONTH', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:21:20', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (224, 211, 1, 'FIXCHAR', 'PREFIX', '前缀', 2, NULL, NULL, 'TT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 16:12:21', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (225, 211, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 16:12:39', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (226, 212, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 16:33:03', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (227, 212, 2, 'SERIALNO', 'SERIAL', '流水号', 5, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 16:33:22', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (228, 213, 1, 'FIXCHAR', 'PREFIX', '前缀', 3, NULL, NULL, 'RTV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 11:11:25', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (229, 213, 2, 'NOWDATE', 'DATE', '日期', 8, 'yyyyMMdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 11:11:43', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (230, 213, 3, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 11:12:09', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (231, 214, 1, 'FIXCHAR', 'PREFIX', '固定前缀', 3, NULL, NULL, 'SUB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:25:08', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (232, 214, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:25:30', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (233, 215, 1, 'FIXCHAR', 'PREFIX', '前缀', 4, NULL, NULL, 'PLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:36:25', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (234, 215, 2, 'NOWDATE', 'YEAR', '年份', 4, 'yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:36:42', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (235, 215, 3, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'YEAR', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:37:05', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (236, 216, 1, 'FIXCHAR', 'PREFIX', '前缀', 2, NULL, NULL, 'MO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:42:35', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (237, 216, 2, 'NOWDATE', 'DATEPART', '年月日', 8, 'yyyyMMdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:42:56', 'admin', '2022-09-08 15:43:25');
INSERT INTO `sys_auto_code_part` VALUES (238, 216, 3, 'SERIALNO', 'SERIAL', '流水号', 4, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'DAY', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:43:22', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (239, 217, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:56:58', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (240, 217, 2, 'SERIALNO', 'SERIAL', '流水号', 4, NULL, NULL, NULL, 1000, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:57:27', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (241, 218, 1, 'FIXCHAR', 'PREFIX', '固定前缀', 4, NULL, NULL, 'TASK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:05:13', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (242, 218, 2, 'NOWDATE', 'YEAR', '年份', 4, 'yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:05:29', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (243, 218, 3, 'SERIALNO', 'SERIAL', '流水号', 4, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'YEAR', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:05:49', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (244, 219, 1, 'FIXCHAR', 'PREFIX', '前缀', 2, NULL, NULL, 'DF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:36:44', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (245, 219, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:37:04', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (246, 220, 1, 'FIXCHAR', 'PREFIX', '前缀', 1, NULL, NULL, 'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:22:18', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (247, 220, 2, 'SERIALNO', 'SERIAL', '流水号', 4, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:22:37', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (248, 221, 1, 'FIXCHAR', 'PREFIX', '前缀', 3, NULL, NULL, 'QCT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:27:59', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (249, 221, 2, 'NOWDATE', 'YEAR', '年份', 4, 'yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:28:15', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (250, 221, 3, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'YEAR', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:28:37', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (251, 222, 1, 'FIXCHAR', 'PREFIX', '前缀', 3, NULL, NULL, 'IQC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:04:36', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (252, 222, 2, 'NOWDATE', 'DATE', '年月日', 8, 'yyyyMMdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:04:55', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (253, 222, 3, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'DAY', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:12:09', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (254, 223, 1, 'FIXCHAR', 'PREFIX', '固定前缀', 1, NULL, NULL, 'T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:16:26', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (255, 223, 2, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'N', NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:16:44', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (256, 224, 1, 'FIXCHAR', 'PREFIX', '前缀', 4, NULL, NULL, 'PLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:23:38', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (257, 224, 2, 'NOWDATE', 'YEAR', '年', 4, 'yyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:23:53', '', NULL);
INSERT INTO `sys_auto_code_part` VALUES (258, 224, 3, 'SERIALNO', 'SERIAL', '流水号', 3, NULL, NULL, NULL, 1, 1, NULL, 'Y', 'YEAR', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:24:17', '', NULL);

-- ----------------------------
-- Table structure for sys_auto_code_result
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_result`;
CREATE TABLE `sys_auto_code_result`  (
  `code_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `rule_id` bigint NOT NULL COMMENT '规则ID',
  `gen_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '生成日期时间',
  `gen_index` int NULL DEFAULT NULL COMMENT '最后产生的序号',
  `last_result` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后产生的值',
  `last_serial_no` int NULL DEFAULT NULL COMMENT '最后产生的流水号',
  `last_input_char` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后传入的参数',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`code_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '编码生成记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auto_code_result
-- ----------------------------
INSERT INTO `sys_auto_code_result` VALUES (200, 200, '20220907114939', 5, 'jxz00005', 5, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 08:55:37', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (201, 202, '20220907171817', 14, 'J22180714', 14, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 13:47:54', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (202, 203, '20220908092414', 6, 'V00006', 6, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 13:54:45', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (203, 204, '20220907135901', 1, 'WS001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 13:59:01', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (204, 205, '20220908161657', 8, 'WS0008', 8, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 14:01:06', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (205, 206, '20220907141607', 3, 'PROCESS003', 3, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 14:13:48', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (206, 207, '20220908161807', 10, 'M_TYPE_010', 10, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 14:45:06', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (207, 208, '20220908161825', 4, 'M0004', 4, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 15:05:40', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (208, 209, '20220907151719', 1, 'WH001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 15:17:19', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (209, 210, '20220908105845', 3, 'R20220908003', 3, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 15:21:25', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (210, 211, '20220907161348', 2, 'TT002', 2, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 16:12:48', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (211, 212, '20220907163328', 1, 'T00001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-07 16:33:28', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (214, 201, '20220908104542', 4, 'IFTT2022090842', 0, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 09:53:03', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (215, 213, '20220908111224', 1, 'RTV20220908001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 11:12:24', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (216, 214, '20220908154030', 2, 'SUB002', 2, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 15:25:36', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (217, 215, '20220908153714', 1, 'PLAN2022001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 15:37:14', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (218, 216, '20220908154331', 1, 'MO202209080001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 15:43:31', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (219, 217, '20220908155733', 1, 'R1000', 1000, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 15:57:33', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (220, 218, '20220908162004', 3, 'TASK20220003', 3, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 16:06:31', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (221, 219, '20220908163828', 4, 'DF004', 4, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 16:37:18', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (222, 220, '20220908172513', 4, 'I0004', 4, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 17:22:43', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (223, 220, '20220908172528', 2, 'I0006', 6, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 17:25:14', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (224, 221, '20220908172842', 1, 'QCT2022001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 17:28:42', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (225, 222, '20220909091220', 1, 'IQC20220909001', 1, NULL, '', NULL, NULL, 0, 0, '', '2022-09-09 09:12:20', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (226, 223, '20220909091751', 2, 'T002', 2, NULL, '', NULL, NULL, 0, 0, '', '2022-09-09 09:17:07', '', NULL);
INSERT INTO `sys_auto_code_result` VALUES (227, 224, '20220909100132', 2, 'PLAN2022002', 2, NULL, '', NULL, NULL, 0, 0, '', '2022-09-09 09:24:29', '', NULL);

-- ----------------------------
-- Table structure for sys_auto_code_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_rule`;
CREATE TABLE `sys_auto_code_rule`  (
  `rule_id` bigint NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `rule_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则编码',
  `rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则名称',
  `rule_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `max_length` int NULL DEFAULT NULL COMMENT '最大长度',
  `is_padded` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否补齐',
  `padded_char` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '补齐字符',
  `padded_method` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'L' COMMENT '补齐方式',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`rule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '编码生成规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auto_code_rule
-- ----------------------------
INSERT INTO `sys_auto_code_rule` VALUES (200, 'ITEM_TYPE_CODE', '物料分类编码', NULL, 14, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-06 17:36:43', 'admin', '2022-09-07 08:50:35');
INSERT INTO `sys_auto_code_rule` VALUES (201, 'ITEM_CODE', '物料规则', NULL, 10, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 09:04:26', 'admin', '2022-09-08 09:19:19');
INSERT INTO `sys_auto_code_rule` VALUES (202, 'CLIENT_CODE', '客户编码规则', NULL, 7, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:44:52', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (203, 'VENDOR_CODE', '供应商编码规则', NULL, 6, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:53:32', 'admin', '2022-09-08 09:16:24');
INSERT INTO `sys_auto_code_rule` VALUES (204, 'WORKSHOP_CODE', '车间编码生成规则', NULL, 5, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 13:57:50', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (205, 'WORKSTATION_CODE', '工作站编码规则', NULL, 6, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:00:14', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (206, 'PROCESS_CODE', '工序编码规则', NULL, 10, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:12:42', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (207, 'MACHINERY_TYPE_CODE', '设备类型编码规则', NULL, 10, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 14:44:04', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (208, 'MACHINERY_CODE', '设备编码规则', NULL, 13, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:04:28', 'admin', '2022-09-07 15:04:52');
INSERT INTO `sys_auto_code_rule` VALUES (209, 'WAREHOUSE_CODE', '仓库编码规则', NULL, 5, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:16:22', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (210, 'ITEMRECPT_CODE', '物料入库单编码规则', NULL, 12, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 15:20:09', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (211, 'TOOL_TYPE_CODE', '工装夹具类型编码', NULL, 5, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 16:12:01', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (212, 'TOOL_CODE', '工装夹具编码规则', NULL, 6, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-07 16:32:39', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (213, 'WM_RTVENDOR_CODE', '供应商退货单编码', NULL, 14, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 11:11:03', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (214, 'SUBJECT_CODE', '设备点检保养项目编码', NULL, 6, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:24:43', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (215, 'CHECKPLAN_CODE', '点检编码规则', NULL, 11, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:36:00', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (216, 'WORKORDER_CODE', '生产工单编码规则', NULL, 14, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:42:13', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (217, 'ROUTE_CODE', '工艺流程编码规则', NULL, 5, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 15:56:41', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (218, 'TASK_CODE', '生产任务编码规则', NULL, 12, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:04:48', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (219, 'DEFECT_CODE', '常见缺陷编码', NULL, 5, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 16:36:27', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (220, 'QC_INDEX_CODE', '检测项编码规则', NULL, 5, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:21:56', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (221, 'QC_TEMPLATE_CODE', '检测模板编码规则', NULL, 10, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-08 17:27:40', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (222, 'QC_IQC_CODE', '来料检验单编码规则', NULL, 14, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:04:16', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (223, 'CAL_TEAM_CODE', '班组编码规则', NULL, 4, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:16:06', '', NULL);
INSERT INTO `sys_auto_code_rule` VALUES (224, 'CAL_PLAN_CODE', '排班计划编号', NULL, 11, 'N', NULL, 'L', 'Y', NULL, NULL, NULL, 0, 0, 'admin', '2022-09-09 09:23:12', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-09-06 09:52:05', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-09-06 09:52:05', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-09-06 09:52:05', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'false', 'Y', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 16:56:03', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 16:57:11', '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '精新泽', 0, 'jxz', '15888888888', 'jxz@163.com', '0', '0', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 15:56:08');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '广州总公司', 1, 'jxzz', '15888888888', 'jxzz@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 15:56:57');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '上海分公司', 2, 'jxzf', '15888888888', 'jxzf@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 15:57:11');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'jxzz', '15888888888', 'jxzz@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'jxzz', '15888888888', 'jxzz@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'jxzz', '15888888888', 'jxzz@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'jxzz', '15888888888', 'jxzz@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'jxzz', '15888888888', 'jxzz@qq.com', '1', '0', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 15:59:57');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'jxzf', '15888888888', 'jxzf@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'jxzf', '15888888888', 'jxzf@qq.com', '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 101, '0,100,101', '设计部门', 0, 'jxzz', '15888888888', 'jxzz@qq.com', '0', '0', 'admin', '2022-09-06 15:59:39', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '物料', 'ITEM', 'mes_item_product', NULL, 'default', 'N', '0', 'admin', '2022-04-16 16:34:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '产品', 'PRODUCT', 'mes_item_product', NULL, 'default', 'N', '0', 'admin', '2022-04-16 16:35:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '输入字符', 'INPUTCHAR', 'sys_autocode_parttype', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:33:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '当前日期时间', 'NOWDATE', 'sys_autocode_parttype', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:34:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 3, '固定字符', 'FIXCHAR', 'sys_autocode_parttype', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:34:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 4, '流水号', 'SERIALNO', 'sys_autocode_parttype', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:34:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '按年', 'YEAR', 'sys_autocode_cyclemethod', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:35:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '按月', 'MONTH', 'sys_autocode_cyclemethod', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:35:29', 'admin', '2022-04-26 15:35:55', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 3, '按天', 'DAY', 'sys_autocode_cyclemethod', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:36:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 4, '按小时', 'HOUR', 'sys_autocode_cyclemethod', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:36:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 5, '按分钟', 'MINUTE', 'sys_autocode_cyclemethod', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:36:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 6, '按传入字符', 'OTHER', 'sys_autocode_cyclemethod', NULL, 'default', 'N', '0', 'admin', '2022-04-26 15:37:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 1, '企业客户', 'ENTERPRISE', 'mes_client_type', NULL, 'default', 'N', '0', 'admin', '2022-05-06 20:54:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 2, '个人', 'PERSON', 'mes_client_type', NULL, 'default', 'N', '0', 'admin', '2022-05-06 20:55:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 1, '优质供应商', 'A', 'mes_vendor_level', NULL, 'default', 'N', '0', 'admin', '2022-05-06 22:45:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 2, '正常', 'B', 'mes_vendor_level', NULL, 'default', 'N', '0', 'admin', '2022-05-06 22:46:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 3, '重点关注', 'C', 'mes_vendor_level', NULL, 'default', 'N', '0', 'admin', '2022-05-06 22:46:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 4, '劣质供应商', 'D', 'mes_vendor_level', NULL, 'default', 'N', '0', 'admin', '2022-05-06 22:46:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 5, '黑名单', 'E', 'mes_vendor_level', NULL, 'default', 'N', '0', 'admin', '2022-05-06 22:46:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 1, '草稿', 'PREPARE', 'mes_order_status', NULL, 'default', 'N', '0', 'admin', '2022-05-09 10:35:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 2, '已确认', 'CONFIRMED', 'mes_order_status', NULL, 'default', 'N', '0', 'admin', '2022-05-09 10:36:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 3, '审批中', 'APPROVING', 'mes_order_status', NULL, 'default', 'N', '0', 'admin', '2022-05-09 10:39:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 4, '已审批', 'APPROVED', 'mes_order_status', NULL, 'default', 'N', '0', 'admin', '2022-05-09 10:39:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 5, '已完成', 'FINISHED', 'mes_order_status', NULL, 'default', 'N', '0', 'admin', '2022-05-09 10:40:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 1, '客户订单', 'ORDER', 'mes_workorder_sourcetype', NULL, 'default', 'N', '0', 'admin', '2022-05-09 11:23:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (125, 2, '库存备货', 'STORE', 'mes_workorder_sourcetype', NULL, 'default', 'N', '0', 'admin', '2022-05-09 11:24:04', 'admin', '2022-05-09 11:24:24', NULL);
INSERT INTO `sys_dict_data` VALUES (126, 1, '定期维护', 'REGULAR', 'mes_mainten_type', NULL, 'default', 'N', '0', 'admin', '2022-05-10 23:40:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (127, 2, '按使用次数维护', 'USAGE', 'mes_mainten_type', NULL, 'default', 'N', '0', 'admin', '2022-05-10 23:41:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (128, 1, '在库', 'STORE', 'mes_tool_status', NULL, 'default', 'N', '0', 'admin', '2022-05-11 20:51:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (129, 2, '被领用', 'ISSUE', 'mes_tool_status', NULL, 'default', 'N', '0', 'admin', '2022-05-11 20:51:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (130, 3, '报废', 'SCRAP', 'mes_tool_status', NULL, 'default', 'N', '0', 'admin', '2022-05-11 20:52:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (131, 4, '维修中', 'REPARE', 'mes_tool_status', NULL, 'default', 'N', '0', 'admin', '2022-05-11 20:52:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (132, 1, 'S-to-S', 'SS', 'mes_link_type', NULL, 'default', 'N', '0', 'admin', '2022-05-13 21:51:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (133, 2, 'F-to-F', 'FF', 'mes_link_type', NULL, 'default', 'N', '0', 'admin', '2022-05-13 21:51:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (134, 3, 'S-to-F', 'SF', 'mes_link_type', NULL, 'default', 'N', '0', 'admin', '2022-05-13 21:52:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (135, 4, 'F-to-S', 'FS', 'mes_link_type', NULL, 'default', 'N', '0', 'admin', '2022-05-13 21:52:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (136, 1, '秒', 'SECOND', 'mes_time_type', NULL, 'default', 'N', '0', 'admin', '2022-05-14 08:41:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (137, 2, '分钟', 'MINUTE', 'mes_time_type', NULL, 'default', 'N', '0', 'admin', '2022-05-14 08:41:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (138, 3, '小时', 'HOUR', 'mes_time_type', NULL, 'default', 'N', '0', 'admin', '2022-05-14 08:41:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (139, 4, '天', 'DAY', 'mes_time_type', NULL, 'default', 'N', '0', 'admin', '2022-05-14 08:41:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (140, 5, '周', 'WEEK', 'mes_time_type', NULL, 'default', 'N', '0', 'admin', '2022-05-14 08:42:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (141, 6, '月', 'MONTH', 'mes_time_type', NULL, 'default', 'N', '0', 'admin', '2022-05-14 08:42:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (142, 1, '尺寸', 'SIZE', 'mes_index_type', NULL, 'default', 'N', '0', 'admin', '2022-05-17 21:26:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (143, 2, '外观', 'APPEARANCE', 'mes_index_type', NULL, 'default', 'N', '0', 'admin', '2022-05-17 21:28:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (144, 3, '重量', 'WEIGHT', 'mes_index_type', NULL, 'default', 'N', '0', 'admin', '2022-05-17 21:28:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (145, 4, '性能', 'PERFORMANCE', 'mes_index_type', NULL, 'default', 'N', '0', 'admin', '2022-05-17 21:29:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (146, 5, '成分', 'COMPONENT', 'mes_index_type', NULL, 'default', 'N', '0', 'admin', '2022-05-17 21:30:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (147, 1, '[来料检验]', 'IQC', 'mes_qc_type', NULL, 'default', 'N', '0', 'admin', '2022-05-18 09:38:58', 'admin', '2022-05-18 10:38:43', NULL);
INSERT INTO `sys_dict_data` VALUES (148, 2, '[首检]', 'FIRST_CHECK', 'mes_qc_type', NULL, 'default', 'N', '0', 'admin', '2022-05-18 09:39:19', 'admin', '2022-05-18 10:38:50', NULL);
INSERT INTO `sys_dict_data` VALUES (149, 3, '[末检]', 'FINAL_CHECK', 'mes_qc_type', NULL, 'default', 'N', '0', 'admin', '2022-05-18 09:39:46', 'admin', '2022-05-18 10:38:57', NULL);
INSERT INTO `sys_dict_data` VALUES (150, 4, '[巡检]', 'REGULAR_CHECK', 'mes_qc_type', NULL, 'default', 'N', '0', 'admin', '2022-05-18 09:40:05', 'admin', '2022-05-18 10:39:02', NULL);
INSERT INTO `sys_dict_data` VALUES (151, 5, '[成品检验]', 'FQC', 'mes_qc_type', NULL, 'default', 'N', '0', 'admin', '2022-05-18 09:40:27', 'admin', '2022-05-18 10:39:08', NULL);
INSERT INTO `sys_dict_data` VALUES (152, 6, '[发货检验]', 'OQC', 'mes_qc_type', NULL, 'default', 'N', '0', 'admin', '2022-05-18 09:40:52', 'admin', '2022-05-18 10:39:14', NULL);
INSERT INTO `sys_dict_data` VALUES (153, 1, '致命缺陷', 'CR', 'mes_defect_level', NULL, 'default', 'N', '0', 'admin', '2022-05-19 10:24:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (154, 2, '严重缺陷', 'MAJ', 'mes_defect_level', NULL, 'default', 'N', '0', 'admin', '2022-05-19 10:24:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (155, 3, '轻微缺陷', 'MIN', 'mes_defect_level', NULL, 'default', 'N', '0', 'admin', '2022-05-19 10:24:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (156, 1, '检验通过', 'ACCEPT', 'mes_qc_result', NULL, 'default', 'N', '0', 'admin', '2022-05-19 16:38:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (157, 2, '检验不通过', 'REJECT', 'mes_qc_result', NULL, 'default', 'N', '0', 'admin', '2022-05-19 16:38:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (159, 1, '白班', 'SINGLE', 'mes_shift_type', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:33:56', 'admin', '2022-06-06 21:35:05', NULL);
INSERT INTO `sys_dict_data` VALUES (160, 2, '两班倒', 'SHIFT_TWO', 'mes_shift_type', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:34:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (161, 3, '三班倒', 'SHIFT_THREE', 'mes_shift_type', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:34:38', 'admin', '2022-06-06 21:34:45', NULL);
INSERT INTO `sys_dict_data` VALUES (162, 1, '按天', 'DAY', 'mes_shift_method', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:39:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (163, 2, '按周', 'WEEK', 'mes_shift_method', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:40:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (164, 3, '按月', 'MONTH', 'mes_shift_method', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:40:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (165, 4, '按季度', 'QUARTER', 'mes_shift_method', NULL, 'default', 'N', '0', 'admin', '2022-06-06 21:40:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (166, 1, '注塑', 'ZS', 'mes_calendar_type', NULL, 'default', 'N', '0', 'admin', '2022-06-08 13:27:23', 'admin', '2022-06-11 21:05:57', NULL);
INSERT INTO `sys_dict_data` VALUES (167, 2, '机加工', 'CNC', 'mes_calendar_type', NULL, 'default', 'N', '0', 'admin', '2022-06-08 13:27:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (168, 3, '组装', 'ZZ', 'mes_calendar_type', NULL, 'default', 'N', '0', 'admin', '2022-06-08 13:27:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (169, 4, '仓库', 'CK', 'mes_calendar_type', NULL, 'default', 'N', '0', 'admin', '2022-06-08 13:28:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (170, 1, '设备点检', 'CHECK', 'mes_dvsubject_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 16:50:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (171, 2, '设备保养', 'MAINTEN', 'mes_dvsubject_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 16:51:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (172, 1, '小时', 'HOUR', 'mes_cycle_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 20:47:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (173, 2, '天', 'DAY', 'mes_cycle_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 20:49:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (174, 3, '周', 'WEEK', 'mes_cycle_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 20:49:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (175, 4, '月', 'MONTH', 'mes_cycle_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 20:49:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (176, 5, '季度', 'QUARTER', 'mes_cycle_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 20:50:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (177, 6, '年', 'YEAR', 'mes_cycle_type', NULL, 'default', 'N', '0', 'admin', '2022-06-16 20:50:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (178, 1, '设备点检计划', 'CHECK', 'dv_plan_type', NULL, 'default', 'N', '0', 'admin', '2022-06-19 17:03:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (179, 2, '设备保养计划', 'MAINTEN', 'dv_plan_type', NULL, 'default', 'N', '0', 'admin', '2022-06-19 17:03:56', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-04-07 00:29:32', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '物料or产品', 'mes_item_product', '0', 'admin', '2022-04-16 16:34:20', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '编码规则组成类型', 'sys_autocode_parttype', '0', 'admin', '2022-04-26 15:32:42', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '编码规则组成循环方式', 'sys_autocode_cyclemethod', '0', 'admin', '2022-04-26 15:33:02', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '客户类型', 'mes_client_type', '0', 'admin', '2022-05-06 20:53:28', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '供应商级别', 'mes_vendor_level', '0', 'admin', '2022-05-06 22:44:56', 'admin', '2022-05-06 22:45:35', NULL);
INSERT INTO `sys_dict_type` VALUES (105, '单据状态【通用】', 'mes_order_status', '0', 'admin', '2022-05-09 10:34:41', 'admin', '2022-05-09 10:35:10', NULL);
INSERT INTO `sys_dict_type` VALUES (106, '生产工单来源', 'mes_workorder_sourcetype', '0', 'admin', '2022-05-09 11:23:22', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (107, '维护类型表', 'mes_mainten_type', '0', 'admin', '2022-05-10 23:40:36', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (108, '工装夹具状态', 'mes_tool_status', '0', 'admin', '2022-05-11 20:50:46', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (109, '工序关系类型', 'mes_link_type', '0', 'admin', '2022-05-13 21:50:44', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (110, '时间单位', 'mes_time_type', '0', 'admin', '2022-05-14 08:40:53', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (111, '检测项类型', 'mes_index_type', '0', 'admin', '2022-05-17 21:26:05', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (112, '检测类型', 'mes_qc_type', '0', 'admin', '2022-05-18 09:38:32', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (113, '缺陷等级', 'mes_defect_level', '0', 'admin', '2022-05-19 10:23:38', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (114, '检验结果', 'mes_qc_result', '0', 'admin', '2022-05-19 16:37:45', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (116, '倒班方式', 'mes_shift_type', '0', 'admin', '2022-06-06 21:33:17', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (117, '轮班方式', 'mes_shift_method', '0', 'admin', '2022-06-06 21:39:26', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (118, '排班类型', 'mes_calendar_type', '0', 'admin', '2022-06-08 13:26:56', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (119, '设备点检保养项目类型', 'mes_dvsubject_type', '0', 'admin', '2022-06-16 16:50:14', 'admin', '2022-06-16 16:50:29', NULL);
INSERT INTO `sys_dict_type` VALUES (120, '设备点检频率', 'mes_cycle_type', '0', 'admin', '2022-06-16 20:47:19', 'admin', '2022-06-16 20:51:22', NULL);
INSERT INTO `sys_dict_type` VALUES (121, '设备点检保养计划类型', 'dv_plan_type', '0', 'admin', '2022-06-19 17:03:18', 'admin', '2022-06-19 17:04:17', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-09-06 09:52:05', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-09-06 09:52:05', '', '2022-09-07 08:04:06', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-09-06 09:52:05', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-09-06 11:34:13');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-09-06 15:05:24');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-09-06 15:05:31');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 15:05:46');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-09-06 15:35:37');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 15:49:55');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-09-06 16:06:42');
INSERT INTO `sys_logininfor` VALUES (107, 'zs', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 16:06:56');
INSERT INTO `sys_logininfor` VALUES (108, 'zs', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-09-06 16:07:42');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 16:07:47');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 16:53:45');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-09-06 16:56:26');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 16:56:31');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-09-06 16:56:56');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-06 16:57:00');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 07:59:47');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 08:39:39');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 09:36:21');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 10:22:00');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 11:46:56');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 13:32:42');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 16:11:23');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-07 17:10:54');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-08 08:30:09');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-08 09:05:46');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-08 10:41:30');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-08 15:08:50');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-08 17:21:18');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-09 08:56:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2197 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-04-07 00:29:31', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-04-07 00:29:31', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-04-07 00:29:31', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-04-07 00:29:31', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-04-07 00:29:31', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-04-07 00:29:31', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-04-07 00:29:31', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-04-07 00:29:31', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-04-07 00:29:31', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-04-07 00:29:31', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-04-07 00:29:31', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-04-07 00:29:31', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-04-07 00:29:31', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-04-07 00:29:31', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-04-07 00:29:31', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-04-07 00:29:31', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-04-07 00:29:31', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-04-07 00:29:31', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-04-07 00:29:31', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-04-07 00:29:31', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-04-07 00:29:31', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-04-07 00:29:31', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-04-07 00:29:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '主数据', 0, 4, 'mes/md', NULL, NULL, 1, 0, 'M', '0', '0', '', 'documentation', 'admin', '2022-04-16 14:41:55', 'admin', '2022-04-16 14:49:44', '');
INSERT INTO `sys_menu` VALUES (2001, '物料产品管理', 2000, 1, 'mditem', 'mes/md/mditem/index', NULL, 1, 0, 'C', '0', '0', 'ms:md:mditem', 'excel', 'admin', '2022-04-16 14:44:00', 'admin', '2022-05-04 18:13:08', '');
INSERT INTO `sys_menu` VALUES (2002, '物料产品分类', 2000, 2, 'itemtype', 'mes/md/itemtype/index', NULL, 1, 0, 'C', '0', '0', 'mes:md:itemtype', 'nested', 'admin', '2022-04-16 16:03:18', 'admin', '2022-04-16 16:05:56', '');
INSERT INTO `sys_menu` VALUES (2003, '编码规则', 1, 10, 'autocodeRule', 'system/autocode/index', NULL, 1, 0, 'C', '0', '0', 'system:autocode:rule', 'code', 'admin', '2022-04-24 21:43:28', 'admin', '2022-04-24 21:49:31', '');
INSERT INTO `sys_menu` VALUES (2004, '编码规则查询', 2003, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:autocode:rule:list', '#', 'admin', '2022-04-24 21:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '编码规则新增', 2003, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:autocode:rule:add', '#', 'admin', '2022-04-24 21:46:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '编码规则更新', 2003, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:autocode:rule:edit', '#', 'admin', '2022-04-24 21:46:59', 'admin', '2022-04-24 21:47:42', '');
INSERT INTO `sys_menu` VALUES (2007, '编码规则删除', 2003, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:autocode:rule:remove', '#', 'admin', '2022-04-24 21:47:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '新增物料分类', 2002, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:itemtype:add', '#', 'admin', '2022-04-27 16:46:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '更新物料分类', 2002, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:itemtype:edit', '#', 'admin', '2022-04-27 16:46:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '删除物料分类', 2002, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:itemtype:remove', '#', 'admin', '2022-04-27 16:47:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '新增物料产品', 2001, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:mditem:add', '#', 'admin', '2022-04-27 16:47:46', 'admin', '2022-05-04 18:05:32', '');
INSERT INTO `sys_menu` VALUES (2012, '更新物料产品', 2001, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:mditem:edit', '#', 'admin', '2022-04-27 16:48:11', 'admin', '2022-05-04 18:05:40', '');
INSERT INTO `sys_menu` VALUES (2013, '删除物料产品', 2001, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:mditem:remove', '#', 'admin', '2022-04-27 16:48:36', 'admin', '2022-05-04 18:05:55', '');
INSERT INTO `sys_menu` VALUES (2014, '计量单位', 2000, 3, 'unitmeasure', 'mes/md/unitmeasure/index', NULL, 1, 0, 'C', '0', '0', 'mes:md:unitmeasure', 'tab', 'admin', '2022-04-27 18:08:08', 'admin', '2022-04-27 21:27:43', '');
INSERT INTO `sys_menu` VALUES (2015, '新增单位', 2014, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:unitmeasure:add', '#', 'admin', '2022-04-27 18:14:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '更新单位', 2014, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:unitmeasure:edit', '#', 'admin', '2022-04-27 18:14:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '删除单位', 2014, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:unitmeasure:remove', '#', 'admin', '2022-04-27 18:14:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '物料明细查看', 2001, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:mditem:query', '#', 'admin', '2022-05-04 17:51:19', 'admin', '2022-05-04 18:06:04', '');
INSERT INTO `sys_menu` VALUES (2019, '物料分类明细', 2002, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:itemtype:query', '#', 'admin', '2022-05-04 17:52:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '单位明细', 2014, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:unitmeasure:query', '#', 'admin', '2022-05-04 17:54:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '物料产品列表查询', 2001, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:mditem:list', '#', 'admin', '2022-05-04 18:04:36', 'admin', '2022-05-04 18:05:23', '');
INSERT INTO `sys_menu` VALUES (2022, '物料分类列表查询', 2002, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:itemtype:list', '#', 'admin', '2022-05-04 18:08:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '单位列表查询', 2014, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:unitmeasure:list', '#', 'admin', '2022-05-04 18:09:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '客户管理', 2000, 4, 'client', 'mes/md/client/index', NULL, 1, 0, 'C', '0', '0', 'mes:md:client', 'people', 'admin', '2022-05-06 20:37:28', 'admin', '2022-05-06 20:43:03', '');
INSERT INTO `sys_menu` VALUES (2025, '客户列表查询', 2024, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:client:list', '#', 'admin', '2022-05-06 20:38:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '客户新增', 2024, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:client:add', '#', 'admin', '2022-05-06 20:38:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '客户编辑', 2024, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:client:edit', '#', 'admin', '2022-05-06 20:38:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '客户明细', 2024, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:client:query', '#', 'admin', '2022-05-06 20:39:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '客户删除', 2024, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:client:remove', '#', 'admin', '2022-05-06 20:39:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '供应商管理', 2000, 5, 'vendor', 'mes/md/vendor/index', NULL, 1, 0, 'C', '0', '0', 'mes:md:vendor', 'peoples', 'admin', '2022-05-06 22:34:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '供应商列表查询', 2030, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:vendor:list', '#', 'admin', '2022-05-06 22:34:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '供应商查看', 2030, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:vendor:query', '#', 'admin', '2022-05-06 22:35:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '供应商新增', 2030, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:vendor:add', '#', 'admin', '2022-05-06 22:35:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '供应商编辑', 2030, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:vendor:edit', '#', 'admin', '2022-05-06 22:35:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '供应商删除', 2030, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:vendor:remove', '#', 'admin', '2022-05-06 22:36:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '车间设置', 2000, 6, 'workshop', 'mes/md/workshop/index', NULL, 1, 0, 'C', '0', '0', 'mes:md:workshop', 'zip', 'admin', '2022-05-07 16:40:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '车间列表查询', 2036, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workshop:list', '#', 'admin', '2022-05-07 16:41:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '车间查看', 2036, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workshop:query', '#', 'admin', '2022-05-07 16:41:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '车间新增', 2036, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workshop:add', '#', 'admin', '2022-05-07 16:41:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '车间修改', 2036, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workshop:edit', '#', 'admin', '2022-05-07 16:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '车间删除', 2036, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workshop:remove', '#', 'admin', '2022-05-07 16:42:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '仓储管理', 0, 5, 'mes/wm', NULL, NULL, 1, 0, 'M', '0', '0', '', 'component', 'admin', '2022-05-07 21:06:28', 'admin', '2022-05-07 21:06:45', '');
INSERT INTO `sys_menu` VALUES (2043, '仓库设置', 2042, 1, 'warehouse', 'mes/wm/warehouse/index', NULL, 1, 0, 'C', '0', '0', 'mes:wm:warehouse', 'dict', 'admin', '2022-05-07 21:07:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '仓库清单查询', 2043, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:warehouse:list', '#', 'admin', '2022-05-07 21:08:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '仓库查看', 2043, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:warehouse:query', '#', 'admin', '2022-05-07 21:08:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '仓库新增', 2043, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:warehouse:add', '#', 'admin', '2022-05-07 21:09:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '仓库编辑', 2043, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:warehouse:edit', '#', 'admin', '2022-05-07 21:09:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '仓库删除', 2043, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:warehouse:remove', '#', 'admin', '2022-05-07 21:10:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '库区列表查询', 2043, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:location:list', '#', 'admin', '2022-05-08 18:19:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '库区查看', 2043, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:location:query', '#', 'admin', '2022-05-08 18:20:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '库区新增', 2043, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:location:add', '#', 'admin', '2022-05-08 18:20:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '库区编辑', 2043, 9, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:location:edit', '#', 'admin', '2022-05-08 18:21:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '库区删除', 2043, 10, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:location:remove', '#', 'admin', '2022-05-08 18:21:57', 'admin', '2022-05-08 18:24:34', '');
INSERT INTO `sys_menu` VALUES (2054, '库位列表查询', 2043, 11, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:area:list', '#', 'admin', '2022-05-08 18:22:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '库位查看', 2043, 12, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:area:query', '#', 'admin', '2022-05-08 18:22:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '库位新增', 2043, 13, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:area:add', '#', 'admin', '2022-05-08 18:23:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '库位编辑', 2043, 14, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:area:edit', '#', 'admin', '2022-05-08 18:23:43', 'admin', '2022-05-08 18:23:53', '');
INSERT INTO `sys_menu` VALUES (2058, '库位删除', 2043, 15, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:area:remove', '#', 'admin', '2022-05-08 18:24:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '设备管理', 0, 6, 'mes/dv', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'redis', 'admin', '2022-05-08 19:10:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '设备类型设置', 2059, 1, 'machinerytype', 'mes/dv/machinerytype/index', NULL, 1, 0, 'C', '0', '0', 'mes:dv:machinerytype', 'swagger', 'admin', '2022-05-08 19:11:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '设备类型列表', 2060, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinerytype:list', '#', 'admin', '2022-05-08 19:12:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '设备类型查看', 2060, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinerytype:query', '#', 'admin', '2022-05-08 19:12:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '设备类型新增', 2060, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinerytype:add', '#', 'admin', '2022-05-08 19:13:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '设备类型编辑', 2060, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinerytype:edit', '#', 'admin', '2022-05-08 19:13:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '设备类型删除', 2060, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinerytype:remove', '#', 'admin', '2022-05-08 19:13:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '设备台账', 2059, 2, 'machinery', 'mes/dv/machinery/index', NULL, 1, 0, 'C', '0', '0', 'mes:dv:machinery', 'system', 'admin', '2022-05-08 21:28:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '设备列表查询', 2066, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinery:list', '#', 'admin', '2022-05-08 21:29:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '设备查看', 2066, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinery:query', '#', 'admin', '2022-05-08 21:29:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '设备新增', 2066, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinery:add', '#', 'admin', '2022-05-08 21:30:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '设备编辑', 2066, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinery:edit', '#', 'admin', '2022-05-08 21:30:16', 'admin', '2022-05-08 21:30:40', '');
INSERT INTO `sys_menu` VALUES (2071, '设备删除', 2066, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:machinery:remove', '#', 'admin', '2022-05-08 21:30:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '生产管理', 0, 8, 'mes/pro', NULL, NULL, 1, 0, 'M', '0', '0', '', 'switch', 'admin', '2022-05-09 10:58:07', 'admin', '2022-05-11 00:07:21', '');
INSERT INTO `sys_menu` VALUES (2073, '生产工单', 2072, 1, 'workorder', 'mes/pro/workorder/index', NULL, 1, 0, 'C', '0', '0', 'mes:pro:workorder', 'log', 'admin', '2022-05-09 10:59:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2074, '工单列表查询', 2073, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorder:list', '#', 'admin', '2022-05-09 11:00:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '工单查看', 2073, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorder:query', '#', 'admin', '2022-05-09 11:00:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2076, '工单新增', 2073, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorder:add', '#', 'admin', '2022-05-09 11:00:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2077, '工单编辑', 2073, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorder:edit', '#', 'admin', '2022-05-09 11:01:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2078, '工单删除', 2073, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorder:remove', '#', 'admin', '2022-05-09 11:01:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2079, 'BOM列表查询', 2001, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:bom:list', '#', 'admin', '2022-05-10 10:17:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2080, 'BOM查看', 2001, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:bom:query', '#', 'admin', '2022-05-10 10:17:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, 'BOM新增', 2001, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:bom:add', '#', 'admin', '2022-05-10 10:18:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2082, 'BOM编辑', 2001, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:bom:edit', '#', 'admin', '2022-05-10 10:18:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2083, 'BOM删除', 2001, 9, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:bom:remove', '#', 'admin', '2022-05-10 10:19:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2084, '工单BOM列表查询', 2073, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorderbom:list', '#', 'admin', '2022-05-10 16:17:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2085, '工单BOM查看', 2073, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorderbom:query', '#', 'admin', '2022-05-10 16:17:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2086, '工单BOM编辑', 2073, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorderbom:edit', '#', 'admin', '2022-05-10 16:18:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2087, '工单BOM删除', 2073, 9, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:workorderbom:remove', '#', 'admin', '2022-05-10 16:18:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2088, '工作站', 2000, 7, 'workstation', 'mes/md/workstation/index', NULL, 1, 0, 'C', '0', '0', 'mes:md:workstation', 'job', 'admin', '2022-05-10 21:44:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '工作站列表查询', 2088, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workstation:list', '#', 'admin', '2022-05-10 21:45:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2090, '工作站查看', 2088, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workstation:query', '#', 'admin', '2022-05-10 21:45:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2091, '工作站新增', 2088, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workstation:add', '#', 'admin', '2022-05-10 21:45:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2092, '工作站编辑', 2088, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workstation:edit', '#', 'admin', '2022-05-10 21:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2093, '工作站删除', 2088, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workstation:remove', '#', 'admin', '2022-05-10 21:46:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2094, '工作站导出', 2088, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:md:workstation:export', '#', 'admin', '2022-05-10 21:47:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2095, '工装夹具管理', 0, 7, 'tm', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'lock', 'admin', '2022-05-11 00:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2096, '类型设置', 2095, 1, 'tooltype', 'mes/tm/tooltype/index', NULL, 1, 0, 'C', '0', '0', 'mes:tm:tooltype', 'tree', 'admin', '2022-05-11 00:08:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2097, '类型列表查询', 2096, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tooltype:list', '#', 'admin', '2022-05-11 00:09:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2098, '类型查看', 2096, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tooltype:query', '#', 'admin', '2022-05-11 00:09:27', 'admin', '2022-05-11 00:09:48', '');
INSERT INTO `sys_menu` VALUES (2099, '类型新增', 2096, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tooltype:add', '#', 'admin', '2022-05-11 00:10:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2100, '类型编辑', 2096, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tooltype:edit', '#', 'admin', '2022-05-11 00:10:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '类型删除', 2096, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tooltype:remove', '#', 'admin', '2022-05-11 00:10:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2102, '工装夹具台账', 2095, 2, 'tool', 'mes/tm/tool/index', NULL, 1, 0, 'C', '0', '0', 'mes:tm:tool', 'date-range', 'admin', '2022-05-11 21:23:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '工装夹具列表查询', 2102, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tool:list', '#', 'admin', '2022-05-11 21:23:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2104, '工装夹具查看', 2102, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tool:query', '#', 'admin', '2022-05-11 21:24:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '工装夹具新增', 2102, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tool:add', '#', 'admin', '2022-05-11 21:24:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2106, '工装夹具编辑', 2102, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tool:edit', '#', 'admin', '2022-05-11 21:24:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '工装夹具删除', 2102, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tool:remove', '#', 'admin', '2022-05-11 21:25:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2108, '工装夹具导出', 2102, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:tm:tool:export', '#', 'admin', '2022-05-11 21:25:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '工序设置', 2072, 2, 'process', 'mes/pro/process/index', NULL, 1, 0, 'C', '0', '0', 'mes:pro:process', 'druid', 'admin', '2022-05-12 00:03:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2110, '工序列表查询', 2109, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:process:list', '#', 'admin', '2022-05-12 00:04:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2111, '工序查看', 2109, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:process:query', '#', 'admin', '2022-05-12 00:04:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2112, '工序新增', 2109, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:process:add', '#', 'admin', '2022-05-12 00:04:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2113, '工序编辑', 2109, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:process:edit', '#', 'admin', '2022-05-12 00:05:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2114, '工序删除', 2109, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:process:remove', '#', 'admin', '2022-05-12 00:05:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2115, '工序导出', 2109, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:process:export', '#', 'admin', '2022-05-12 00:05:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2116, '工艺流程', 2072, 3, 'proroute', 'mes/pro/proroute/index', NULL, 1, 0, 'C', '0', '0', 'mes:pro:proroute', 'nested', 'admin', '2022-05-12 23:08:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2117, '工艺流程列表查询', 2116, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:proroute:list', '#', 'admin', '2022-05-12 23:08:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2118, '工艺流程查看', 2116, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:proroute:query', '#', 'admin', '2022-05-12 23:09:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2119, '工艺流程新增', 2116, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:proroute:add', '#', 'admin', '2022-05-12 23:09:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2120, '工艺流程编辑', 2116, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:proroute:edit', '#', 'admin', '2022-05-12 23:09:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2121, '工艺流程删除', 2116, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:proroute:remove', '#', 'admin', '2022-05-12 23:10:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2122, '工艺流程导出', 2116, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:pro:proroute:export', '#', 'admin', '2022-05-12 23:10:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2123, '生产排产', 2072, 4, 'proschedule', 'mes/pro/schedule/index', NULL, 1, 0, 'C', '0', '0', 'mes:pro:schedule', 'build', 'admin', '2022-05-15 15:01:21', 'admin', '2022-05-15 15:01:36', '');
INSERT INTO `sys_menu` VALUES (2124, '质量管理', 0, 9, 'mes/qc', NULL, NULL, 1, 0, 'M', '0', '0', '', 'eye', 'admin', '2022-05-17 21:51:23', 'admin', '2022-05-17 21:51:39', '');
INSERT INTO `sys_menu` VALUES (2125, '检测项设置', 2124, 2, 'qcindex', 'mes/qc/qcindex/index', NULL, 1, 0, 'C', '0', '0', 'mes:qc:qcindex', 'checkbox', 'admin', '2022-05-17 21:52:33', 'admin', '2022-05-19 11:26:35', '');
INSERT INTO `sys_menu` VALUES (2126, '检测项列表查询', 2125, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcindex:list', '#', 'admin', '2022-05-17 21:53:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2127, '检测项查看', 2125, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcindex:query', '#', 'admin', '2022-05-17 21:53:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2128, '检测项新增', 2125, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcindex:add', '#', 'admin', '2022-05-17 21:54:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2129, '检测项编辑', 2125, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcindex:edit', '#', 'admin', '2022-05-17 21:54:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2130, '检测项删除', 2125, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcindex:remove', '#', 'admin', '2022-05-17 21:54:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2131, '检测项导出', 2125, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcindex:export', '#', 'admin', '2022-05-17 21:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2132, '检测模板', 2124, 3, 'qctemplate', 'mes/qc/qctemplate/index', NULL, 1, 0, 'C', '0', '0', 'mes:qc:qctemplate', 'example', 'admin', '2022-05-17 22:23:48', 'admin', '2022-05-19 11:26:41', '');
INSERT INTO `sys_menu` VALUES (2133, '检测模板列表查询', 2132, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qctemplate:list', '#', 'admin', '2022-05-17 22:24:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2134, '检测模板查看', 2132, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qctemplate:query', '#', 'admin', '2022-05-17 22:24:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2135, '检测模板新增', 2132, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qctemplate:add', '#', 'admin', '2022-05-17 22:24:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2136, '检测模板编辑', 2132, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qctemplate:edit', '#', 'admin', '2022-05-17 22:25:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2137, '检测模板删除', 2132, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qctemplate:remove', '#', 'admin', '2022-05-17 22:25:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2138, '常见缺陷', 2124, 1, 'qcdefect', 'mes/qc/qcdefect/index', NULL, 1, 0, 'C', '0', '0', 'mes:qc:qcdefect', 'bug', 'admin', '2022-05-19 11:26:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2139, '缺陷列表查询', 2138, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcdefect:list', '#', 'admin', '2022-05-19 11:27:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2140, '缺陷查看', 2138, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcdefect:query', '#', 'admin', '2022-05-19 11:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2141, '缺陷新增', 2138, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcdefect:add', '#', 'admin', '2022-05-19 11:27:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2142, '缺陷编辑', 2138, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcdefect:edit', '#', 'admin', '2022-05-19 11:28:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2143, '缺陷删除', 2138, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:qcdefect:remove', '#', 'admin', '2022-05-19 11:28:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2144, '来料检验', 2124, 4, 'iqc', 'mes/qc/iqc/iqc', NULL, 1, 0, 'C', '0', '0', 'mes:qc:iqc', 'edit', 'admin', '2022-05-19 16:32:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2145, '来料检验单列表查询', 2144, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:iqc:list', '#', 'admin', '2022-05-19 16:33:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2146, '来料检验单查看', 2144, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:iqc:query', '#', 'admin', '2022-05-19 16:33:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2147, '来料检验单新增', 2144, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:iqc:add', '#', 'admin', '2022-05-19 16:34:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2148, '来料检验单编辑', 2144, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:iqc:edit', '#', 'admin', '2022-05-19 16:34:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2149, '来料检验单删除', 2144, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:iqc:remove', '#', 'admin', '2022-05-19 16:34:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2150, '来料检验单导出', 2144, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:qc:iqc:export', '#', 'admin', '2022-05-19 16:34:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2151, '物料入库单', 2042, 3, 'itemrecpt', 'mes/wm/itemrecpt/index', NULL, 1, 0, 'C', '0', '0', 'mes:wm:itemrecpt', 'form', 'admin', '2022-05-22 17:35:11', 'admin', '2022-06-14 16:22:12', '');
INSERT INTO `sys_menu` VALUES (2152, '物料入库单列表查询', 2151, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:itemrecpt:list', '#', 'admin', '2022-05-22 17:35:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2153, '物料入库单查看', 2151, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:itemrecpt:query', '#', 'admin', '2022-05-22 17:35:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2154, '物料入库单新增', 2151, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:itemrecpt:add', '#', 'admin', '2022-05-22 17:36:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2155, '物料入库单编辑', 2151, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:itemrecpt:edit', '#', 'admin', '2022-05-22 17:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2156, '物料入库单删除', 2151, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:itemrecpt:remove', '#', 'admin', '2022-05-22 17:36:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2157, '库存现有量', 2042, 2, 'wmstock', 'mes/wm/wmstock/index', NULL, 1, 0, 'C', '0', '0', 'mes:wm:wmstock', 'chart', 'admin', '2022-05-30 23:36:40', 'admin', '2022-06-14 16:22:19', '');
INSERT INTO `sys_menu` VALUES (2158, '库存现有量列表查询', 2157, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:wmstock:list', '#', 'admin', '2022-05-30 23:37:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2159, '库存现有量导出', 2157, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:wmstock:export', '#', 'admin', '2022-05-30 23:37:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2160, '排班管理', 0, 10, 'cal', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2022-06-05 21:52:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2161, '班组设置    ', 2160, 1, 'team', 'mes/cal/team/index', NULL, 1, 0, 'C', '0', '0', 'mes:cal:team', 'peoples', 'admin', '2022-06-05 21:53:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2162, '班组列表查看', 2161, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:team:list', '#', 'admin', '2022-06-05 21:56:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2163, '班组查看', 2161, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:team:query', '#', 'admin', '2022-06-05 21:57:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2164, '班组新增', 2161, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:team:add', '#', 'admin', '2022-06-05 21:57:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2165, '班组编辑', 2161, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:team:edit', '#', 'admin', '2022-06-05 21:57:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2166, '班组删除', 2161, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:team:remove', '#', 'admin', '2022-06-05 21:58:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2167, '班组数据导出', 2161, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:team:export', '#', 'admin', '2022-06-05 21:58:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2168, '排班计划', 2160, 2, 'plan', 'mes/cal/plan/index', NULL, 1, 0, 'C', '0', '0', 'mes:cal:plan', 'build', 'admin', '2022-06-06 21:47:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2169, '排班计划列表查询', 2168, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:plan:list', '#', 'admin', '2022-06-06 21:47:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2170, '排班计划查看', 2168, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:plan:query', '#', 'admin', '2022-06-06 21:47:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2171, '排班计划新增', 2168, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:plan:add', '#', 'admin', '2022-06-06 21:48:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2172, '排班计划编辑', 2168, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:plan:edit', '#', 'admin', '2022-06-06 21:48:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2173, '排班计划删除', 2168, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:plan:remove', '#', 'admin', '2022-06-06 21:48:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2174, '节假日设置', 2160, 3, 'holiday', 'mes/cal/holiday/index', NULL, 1, 0, 'C', '0', '0', 'mes:cal:holiday', 'date', 'admin', '2022-06-07 23:25:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2175, '节假日查看', 2174, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:holiday:query', '#', 'admin', '2022-06-07 23:26:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2176, '节假日设置', 2174, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:holiday:edit', '#', 'admin', '2022-06-07 23:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2177, '排班日历', 2160, 4, 'calendar', 'mes/cal/calendar/index', NULL, 1, 0, 'C', '0', '0', 'mes:cal:calendar', 'date-range', 'admin', '2022-06-09 21:08:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2178, '查看排班日历', 2177, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:cal:calendar:list', '#', 'admin', '2022-06-09 21:08:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2179, '供应商退货', 2042, 4, 'rtvendor', 'mes/wm/rtvendor/index', NULL, 1, 0, 'C', '0', '0', 'mes:wm:rtvendor', 'link', 'admin', '2022-06-13 15:29:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2180, '退货单列表查询', 2179, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:rtvendor:list', '#', 'admin', '2022-06-13 15:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2181, '退货单信息查看', 2179, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:rtvendor:query', '#', 'admin', '2022-06-13 15:31:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2182, '退货单新增', 2179, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:rtvendor:add', '#', 'admin', '2022-06-13 15:31:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2183, '退货单编辑', 2179, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:rtvendor:edit', '#', 'admin', '2022-06-13 15:31:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2184, '退货单删除', 2179, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:wm:rtvendor:remove', '#', 'admin', '2022-06-13 15:32:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2185, '点检保养项目', 2059, 3, 'dvsubject', 'mes/dv/subject/index', NULL, 1, 0, 'C', '0', '0', 'mes:dv:dvsubject', 'cascader', 'admin', '2022-06-16 20:17:37', 'admin', '2022-06-16 20:20:44', '');
INSERT INTO `sys_menu` VALUES (2186, '项目列表查询', 2185, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:dvsubject:list', '#', 'admin', '2022-06-16 20:18:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2187, '项目信息查看', 2185, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:dvsubject:query', '#', 'admin', '2022-06-16 20:18:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2188, '项目信息新增', 2185, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:dvsubject:add', '#', 'admin', '2022-06-16 20:18:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2189, '项目信息编辑', 2185, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:dvsubject:edit', '#', 'admin', '2022-06-16 20:19:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2190, '项目删除', 2185, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:dvsubject:remove', '#', 'admin', '2022-06-16 20:19:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2191, '点检计划', 2059, 4, 'checkplan', 'mes/dv/checkplan/index', NULL, 1, 0, 'C', '0', '0', 'mes:dv:checkplan', 'build', 'admin', '2022-06-16 21:35:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2192, '点检计划列表查询', 2191, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:checkplan:list', '#', 'admin', '2022-06-16 21:36:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2193, '点检计划查看', 2191, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:checkplan:query', '#', 'admin', '2022-06-16 21:36:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2194, '点检计划新增', 2191, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:checkplan:add', '#', 'admin', '2022-06-16 21:36:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2195, '点检计划编辑', 2191, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:checkplan:edit', '#', 'admin', '2022-06-16 21:37:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2196, '点检计划删除', 2191, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'mes:dv:checkplan:remove', '#', 'admin', '2022-06-16 21:37:35', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-09-06 09:52:06', 'admin', '2022-09-06 16:57:43', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：系统凌晨维护', '1', 0x3C703EE7BBB4E68AA4E58685E5AEB93C2F703E, '0', 'admin', '2022-09-06 09:52:06', 'admin', '2022-09-06 16:57:49', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 589 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '用户管理', 2, 'com.ktg.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1662450596000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"gly@163.com\",\"nickName\":\"管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[],\"createTime\":1662429125000,\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员用户', '2022-09-06 15:52:11');
INSERT INTO `sys_oper_log` VALUES (101, '用户管理', 2, 'com.ktg.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1662450596000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"gly@163.com\",\"nickName\":\"管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[],\"createTime\":1662429125000,\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员用户', '2022-09-06 15:52:12');
INSERT INTO `sys_oper_log` VALUES (102, '用户管理', 2, 'com.ktg.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1662450596000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"gly@163.com\",\"nickName\":\"管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[],\"createTime\":1662429125000,\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员用户', '2022-09-06 15:52:13');
INSERT INTO `sys_oper_log` VALUES (103, '用户管理', 2, 'com.ktg.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1662429125000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"张三\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1662429125000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:52:56');
INSERT INTO `sys_oper_log` VALUES (104, '用户管理', 2, 'com.ktg.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1662429125000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"zs@qq.com\",\"nickName\":\"张三\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1662429125000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:53:03');
INSERT INTO `sys_oper_log` VALUES (105, '角色管理', 2, 'com.ktg.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1662429125000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2003,2004,2005,2006,2007,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,2000,2001,2021,2011,2012,2013,2018,2079,2080,2081,2082,2083,2002,2022,2008,2009,2010,2019,2014,2023,2015,2016,2017,2020,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2088,2089,2090,2091,2092,2093,2094,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2157,2158,2159,2151,2152,2153,2154,2155,2156,2179,2180,2181,2182,2183,2184,2059,2060,2061,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2185,2186,2187,2188,2189,2190,2191,2192,2193,2194,2195,2196,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108,2072,2073,2074,2075,2076,2077,2078,2084,2085,2086,2087,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2138,2139,2140,2141,2142,2143,2125,2126,2127,2128,2129,2130,2131,2132,2133,2134,2135,2136,2137,2144,2145,2146,2147,2148,2149,2150,2160,2161,2162,2163,2164,2165,2166,2167,2168,2169,2170,2171,2172,2173,2174,2175,2176,2177,2178],\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员角色', '2022-09-06 15:54:37');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 2, 'com.ktg.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1662429125000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:54:59');
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 2, 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"精新泽\",\"leader\":\"jxz\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662429125000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"jxz@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:56:08');
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 2, 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"广州总公司\",\"leader\":\"jxzz\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662429125000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"jxzz@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:56:57');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"上海分公司\",\"leader\":\"jxzf\",\"deptId\":102,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662429125000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"jxzf@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:57:11');
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 1, 'com.ktg.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"设计部门\",\"leader\":\"jxzz\",\"orderNum\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15888888888\",\"ancestors\":\"0,100,101\",\"email\":\"jxzz@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:59:39');
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 2, 'com.ktg.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"运维部门\",\"leader\":\"jxzz\",\"deptId\":107,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662429125000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"jxzz@qq.com\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 15:59:58');
INSERT INTO `sys_oper_log` VALUES (112, '字典类型', 9, 'com.ktg.web.controller.system.SysDictTypeController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:00:16');
INSERT INTO `sys_oper_log` VALUES (113, '角色管理', 2, 'com.ktg.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1662429125000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,101,102,103,104,105,106,107,108,500,501,2003,2,109,110,1001,1005,1007,1008,1012,1013,1017,1021,1025,1026,1030,1031,1035,1036,1040,1042,1043,1045,2004,1046,1049,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:05:16');
INSERT INTO `sys_oper_log` VALUES (114, '个人信息', 2, 'com.ktg.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'admin123 123456', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:06:25');
INSERT INTO `sys_oper_log` VALUES (115, '个人信息', 2, 'com.ktg.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'zs', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'admin123 123456', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:07:14');
INSERT INTO `sys_oper_log` VALUES (116, '参数管理', 2, 'com.ktg.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-验证码开关\",\"configKey\":\"sys.account.captchaOnOff\",\"createBy\":\"admin\",\"createTime\":1662429125000,\"updateBy\":\"admin\",\"configId\":4,\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"configType\":\"Y\",\"configValue\":\"false\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:56:03');
INSERT INTO `sys_oper_log` VALUES (117, '参数管理', 2, 'com.ktg.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-是否开启用户注册功能\",\"configKey\":\"sys.account.registerUser\",\"createBy\":\"admin\",\"createTime\":1662429125000,\"updateBy\":\"admin\",\"configId\":5,\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"configType\":\"Y\",\"configValue\":\"true\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:56:23');
INSERT INTO `sys_oper_log` VALUES (118, '参数管理', 2, 'com.ktg.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-是否开启用户注册功能\",\"configKey\":\"sys.account.registerUser\",\"createBy\":\"admin\",\"createTime\":1662429125000,\"updateBy\":\"admin\",\"configId\":5,\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateTime\":1662454583000,\"configType\":\"Y\",\"configValue\":\"false\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:57:11');
INSERT INTO `sys_oper_log` VALUES (119, '通知公告', 2, 'com.ktg.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"新版本内容\",\"createBy\":\"admin\",\"createTime\":1662429126000,\"updateBy\":\"admin\",\"noticeType\":\"2\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":1,\"noticeTitle\":\"温馨提醒：新版本发布啦\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:57:43');
INSERT INTO `sys_oper_log` VALUES (120, '通知公告', 2, 'com.ktg.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>维护内容</p>\",\"createBy\":\"admin\",\"createTime\":1662429126000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 16:57:49');
INSERT INTO `sys_oper_log` VALUES (121, '定时任务', 2, 'com.ktg.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":2,\"misfirePolicy\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 17:01:26');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 6, 'com.ktg.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dept', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 17:03:40');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 8, 'com.ktg.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-09-06 17:03:44');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 8, 'com.ktg.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-09-06 17:03:48');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 3, 'com.ktg.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 17:04:17');
INSERT INTO `sys_oper_log` VALUES (126, '角色管理', 2, 'com.ktg.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1662429125000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2003,2004,2005,2006,2007,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,2000,2001,2021,2011,2012,2013,2018,2079,2080,2081,2082,2083,2002,2022,2008,2009,2010,2019,2014,2023,2015,2016,2017,2020,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2088,2089,2090,2091,2092,2093,2094,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2157,2158,2159,2151,2152,2153,2154,2155,2156,2179,2180,2181,2182,2183,2184,2059,2060,2061,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2185,2186,2187,2188,2189,2190,2191,2192,2193,2194,2195,2196,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108,2072,2073,2074,2075,2076,2077,2078,2084,2085,2086,2087,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2138,2139,2140,2141,2142,2143,2125,2126,2127,2128,2129,2130,2131,2132,2133,2134,2135,2136,2137,2144,2145,2146,2147,2148,2149,2150,2160,2161,2162,2163,2164,2165,2166,2167,2168,2169,2170,2171,2172,2173,2174,2175,2176,2177,2178],\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员角色', '2022-09-06 17:15:04');
INSERT INTO `sys_oper_log` VALUES (127, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型1号\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-06 17:22:51');
INSERT INTO `sys_oper_log` VALUES (128, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型1号\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-06 17:23:12');
INSERT INTO `sys_oper_log` VALUES (129, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型1号\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-06 17:23:20');
INSERT INTO `sys_oper_log` VALUES (130, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-06 17:23:40');
INSERT INTO `sys_oper_log` VALUES (131, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:09');
INSERT INTO `sys_oper_log` VALUES (132, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:09');
INSERT INTO `sys_oper_log` VALUES (133, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:10');
INSERT INTO `sys_oper_log` VALUES (134, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:10');
INSERT INTO `sys_oper_log` VALUES (135, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:14');
INSERT INTO `sys_oper_log` VALUES (136, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:14');
INSERT INTO `sys_oper_log` VALUES (137, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:18');
INSERT INTO `sys_oper_log` VALUES (138, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:18');
INSERT INTO `sys_oper_log` VALUES (139, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:43');
INSERT INTO `sys_oper_log` VALUES (140, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:24:43');
INSERT INTO `sys_oper_log` VALUES (141, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:15');
INSERT INTO `sys_oper_log` VALUES (142, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:15');
INSERT INTO `sys_oper_log` VALUES (143, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":2,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:19');
INSERT INTO `sys_oper_log` VALUES (144, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:19');
INSERT INTO `sys_oper_log` VALUES (145, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":2,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"N\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:21');
INSERT INTO `sys_oper_log` VALUES (146, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:21');
INSERT INTO `sys_oper_log` VALUES (147, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:43');
INSERT INTO `sys_oper_log` VALUES (148, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":2,\"params\":{},\"children\":[],\"itemTypeName\":\"A型1号\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:25:43');
INSERT INTO `sys_oper_log` VALUES (149, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-06 17:25:47');
INSERT INTO `sys_oper_log` VALUES (150, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"1\",\"createBy\":\"admin\",\"ruleName\":\"一号\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-06 17:36:43');
INSERT INTO `sys_oper_log` VALUES (151, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A1\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:37:00');
INSERT INTO `sys_oper_log` VALUES (152, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:37:00');
INSERT INTO `sys_oper_log` VALUES (153, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:37:04');
INSERT INTO `sys_oper_log` VALUES (154, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"orderNum\":1,\"params\":{},\"children\":[],\"itemTypeName\":\"A1\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', NULL, 1, '未获取到指定类型:[ITEM_TYPE_CODE]的业务编码生成规则', '2022-09-06 17:37:04');
INSERT INTO `sys_oper_log` VALUES (155, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_TYPE_CODE\",\"createBy\":\"admin\",\"createTime\":1662457003000,\"updateBy\":\"admin\",\"ruleName\":\"物料分类编码\",\"ruleId\":200,\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:01:47');
INSERT INTO `sys_oper_log` VALUES (156, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_TYPE_CODE\",\"createBy\":\"admin\",\"createTime\":1662457003000,\"updateBy\":\"admin\",\"ruleName\":\"物料分类编码\",\"ruleId\":200,\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:02:15');
INSERT INTO `sys_oper_log` VALUES (157, '定时任务', 2, 'com.ktg.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":2,\"misfirePolicy\":\"0\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:04:06');
INSERT INTO `sys_oper_log` VALUES (158, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"2\",\"createBy\":\"admin\",\"createTime\":1662457003000,\"updateBy\":\"admin\",\"ruleName\":\"物料分类编码\",\"ruleId\":200,\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:41:41');
INSERT INTO `sys_oper_log` VALUES (159, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_TYPE_CODE\",\"createBy\":\"admin\",\"createTime\":1662457003000,\"updateBy\":\"admin\",\"ruleName\":\"物料分类编码\",\"ruleId\":200,\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:50:35');
INSERT INTO `sys_oper_log` VALUES (160, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"fixCharacter\":\"jxz\",\"partCode\":\"P1\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":200,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:53:58');
INSERT INTO `sys_oper_log` VALUES (161, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":5,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"P5\",\"params\":{},\"partIndex\":5,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":200,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 08:54:57');
INSERT INTO `sys_oper_log` VALUES (162, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"jxz00001\"', 0, NULL, '2022-09-07 08:55:37');
INSERT INTO `sys_oper_log` VALUES (163, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"itemTypeCode\":\"jxz00001\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"A型1号\",\"ancestors\":\"0,1\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 08:55:37');
INSERT INTO `sys_oper_log` VALUES (164, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未获取到指定类型:[ITEM_CODE]的业务编码生成规则', '2022-09-07 08:57:07');
INSERT INTO `sys_oper_log` VALUES (165, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未获取到指定类型:[ITEM_CODE]的业务编码生成规则', '2022-09-07 08:57:12');
INSERT INTO `sys_oper_log` VALUES (166, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未获取到指定类型:[ITEM_CODE]的业务编码生成规则', '2022-09-07 09:03:38');
INSERT INTO `sys_oper_log` VALUES (167, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"ITEM_CODE\",\"createBy\":\"admin\",\"ruleName\":\"物料规则\",\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 09:04:26');
INSERT INTO `sys_oper_log` VALUES (168, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"jxz\",\"partCode\":\"前缀\",\"params\":{},\"partIndex\":1,\"partName\":\"固定字符\",\"createBy\":\"admin\",\"ruleId\":201,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 09:06:01');
INSERT INTO `sys_oper_log` VALUES (169, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMddss\",\"partCode\":\"后缀\",\"params\":{},\"partIndex\":2,\"partName\":\"固定字段\",\"createBy\":\"admin\",\"ruleId\":201,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 09:06:34');
INSERT INTO `sys_oper_log` VALUES (170, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 09:06:39');
INSERT INTO `sys_oper_log` VALUES (171, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 09:06:42');
INSERT INTO `sys_oper_log` VALUES (172, '更新物料编码', 2, 'com.ktg.web.controller.system.SysAutoCodePartController.update()', 'PUT', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"IFTT\",\"partId\":202,\"partCode\":\"前缀\",\"params\":{},\"partIndex\":1,\"partName\":\"固定字符\",\"createBy\":\"admin\",\"createTime\":1662512761000,\"updateBy\":\"admin\",\"ruleId\":201,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 09:07:46');
INSERT INTO `sys_oper_log` VALUES (173, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 09:07:55');
INSERT INTO `sys_oper_log` VALUES (174, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 09:08:04');
INSERT INTO `sys_oper_log` VALUES (175, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 09:08:12');
INSERT INTO `sys_oper_log` VALUES (176, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 09:36:28');
INSERT INTO `sys_oper_log` VALUES (177, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_CODE2\",\"createBy\":\"admin\",\"createTime\":1662512666000,\"updateBy\":\"admin\",\"ruleName\":\"物料规则\",\"ruleId\":201,\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 10:22:11');
INSERT INTO `sys_oper_log` VALUES (178, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未获取到指定类型:[ITEM_CODE]的业务编码生成规则', '2022-09-07 10:22:31');
INSERT INTO `sys_oper_log` VALUES (179, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_CODE\",\"createBy\":\"admin\",\"createTime\":1662512666000,\"updateBy\":\"admin\",\"ruleName\":\"物料规则\",\"ruleId\":201,\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 10:22:39');
INSERT INTO `sys_oper_log` VALUES (180, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 10:22:44');
INSERT INTO `sys_oper_log` VALUES (181, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 10:22:56');
INSERT INTO `sys_oper_log` VALUES (182, '更新物料编码', 2, 'com.ktg.web.controller.system.SysAutoCodePartController.update()', 'PUT', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMddHHmmss\",\"partId\":203,\"partCode\":\"后缀\",\"params\":{},\"partIndex\":2,\"partName\":\"固定字段\",\"createBy\":\"admin\",\"createTime\":1662512794000,\"updateBy\":\"admin\",\"ruleId\":201,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 10:57:51');
INSERT INTO `sys_oper_log` VALUES (183, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 10:57:56');
INSERT INTO `sys_oper_log` VALUES (184, '更新物料编码', 2, 'com.ktg.web.controller.system.SysAutoCodePartController.update()', 'PUT', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMddss\",\"partId\":203,\"updateTime\":1662519470000,\"partCode\":\"后缀\",\"params\":{},\"partIndex\":2,\"partName\":\"固定字段\",\"createBy\":\"admin\",\"createTime\":1662512794000,\"updateBy\":\"admin\",\"ruleId\":201,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 10:58:28');
INSERT INTO `sys_oper_log` VALUES (185, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"产品\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 11:48:31');
INSERT INTO `sys_oper_log` VALUES (186, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"itemTypeCode\":\"jxz00001\",\"orderNum\":1,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662512137000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型\",\"ancestors\":\"0,1\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 11:48:46');
INSERT INTO `sys_oper_log` VALUES (187, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"jxz00002\"', 0, NULL, '2022-09-07 11:49:00');
INSERT INTO `sys_oper_log` VALUES (188, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":200,\"itemTypeCode\":\"jxz00002\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"A型1号\",\"ancestors\":\"0,1,200\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 11:49:00');
INSERT INTO `sys_oper_log` VALUES (189, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"jxz00003\"', 0, NULL, '2022-09-07 11:49:17');
INSERT INTO `sys_oper_log` VALUES (190, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":200,\"itemTypeCode\":\"jxz00003\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"A型2号\",\"ancestors\":\"0,1,200\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 11:49:17');
INSERT INTO `sys_oper_log` VALUES (191, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"jxz00004\"', 0, NULL, '2022-09-07 11:49:28');
INSERT INTO `sys_oper_log` VALUES (192, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"itemTypeCode\":\"jxz00004\",\"orderNum\":2,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"B型\",\"ancestors\":\"0,1\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 11:49:28');
INSERT INTO `sys_oper_log` VALUES (193, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', 'ITEM_TYPE_CODE', '\"jxz00005\"', 0, NULL, '2022-09-07 11:49:39');
INSERT INTO `sys_oper_log` VALUES (194, '新增物料产品分类信息', 1, 'com.ktg.mes.md.controller.ItemTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":203,\"itemTypeCode\":\"jxz00005\",\"orderNum\":1,\"params\":{},\"createBy\":\"admin\",\"children\":[],\"itemTypeName\":\"B型1号\",\"ancestors\":\"0,1,203\",\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 11:49:39');
INSERT INTO `sys_oper_log` VALUES (195, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 11:49:58');
INSERT INTO `sys_oper_log` VALUES (196, '单位', 1, 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', 1, 'admin', NULL, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":200,\"params\":{},\"measureName\":\"克\",\"primaryFlag\":\"N\",\"measureCode\":\"g\",\"createTime\":1662528956595,\"changeRate\":0,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:35:56');
INSERT INTO `sys_oper_log` VALUES (197, '单位', 1, 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', 1, 'admin', NULL, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":201,\"params\":{},\"measureName\":\"千克\",\"primaryFlag\":\"Y\",\"measureCode\":\"kg\",\"createTime\":1662528966702,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:36:06');
INSERT INTO `sys_oper_log` VALUES (198, '单位', 2, 'com.ktg.mes.md.controller.MdUnitMeasureController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":200,\"remark\":\"\",\"updateTime\":1662528974630,\"params\":{},\"primaryId\":201,\"measureName\":\"克\",\"primaryFlag\":\"N\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"measureCode\":\"g\",\"createTime\":1662528957000,\"updateBy\":\"\",\"changeRate\":1000,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:36:14');
INSERT INTO `sys_oper_log` VALUES (199, '单位', 1, 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', 1, 'admin', NULL, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":202,\"params\":{},\"measureName\":\"个\",\"primaryFlag\":\"Y\",\"measureCode\":\"piece\",\"createTime\":1662529083627,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:38:03');
INSERT INTO `sys_oper_log` VALUES (200, '单位', 1, 'com.ktg.mes.md.controller.MdUnitMeasureController.add()', 'POST', 1, 'admin', NULL, '/mes/md/unitmeasure', '127.0.0.1', '内网IP', '{\"measureId\":203,\"params\":{},\"measureName\":\"箱\",\"primaryFlag\":\"Y\",\"measureCode\":\"box\",\"createTime\":1662529135351,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:38:55');
INSERT INTO `sys_oper_log` VALUES (201, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 13:39:20');
INSERT INTO `sys_oper_log` VALUES (202, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', NULL, 1, '未获取到指定类型:[CLIENT_CODE]的业务编码生成规则', '2022-09-07 13:44:10');
INSERT INTO `sys_oper_log` VALUES (203, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"CLIENT_CODE\",\"createBy\":\"admin\",\"ruleName\":\"客户编码规则\",\"enableFlag\":\"Y\",\"maxLength\":7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:44:52');
INSERT INTO `sys_oper_log` VALUES (204, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"J\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":202,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:45:32');
INSERT INTO `sys_oper_log` VALUES (205, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":6,\"dateFormat\":\"yymmdd\",\"partCode\":\"MIDDLE\",\"params\":{},\"partIndex\":3,\"partName\":\"中间\",\"createBy\":\"admin\",\"ruleId\":202,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:46:19');
INSERT INTO `sys_oper_log` VALUES (206, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"NUMBER\",\"params\":{},\"partIndex\":3,\"partName\":\"序号\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":202,\"partType\":\"SERIALNO\"}', '{\"msg\":\"规则组成不唯一，清检查组成编码、组成名称、组成序号\",\"code\":500}', 0, NULL, '2022-09-07 13:47:11');
INSERT INTO `sys_oper_log` VALUES (207, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"NUMBER\",\"params\":{},\"partIndex\":3,\"partName\":\"序号\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":202,\"partType\":\"SERIALNO\"}', '{\"msg\":\"规则组成不唯一，清检查组成编码、组成名称、组成序号\",\"code\":500}', 0, NULL, '2022-09-07 13:47:15');
INSERT INTO `sys_oper_log` VALUES (208, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"NUMBER\",\"params\":{},\"partIndex\":3,\"partName\":\"序号\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":202,\"partType\":\"SERIALNO\"}', '{\"msg\":\"规则组成不唯一，清检查组成编码、组成名称、组成序号\",\"code\":500}', 0, NULL, '2022-09-07 13:47:17');
INSERT INTO `sys_oper_log` VALUES (209, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"NUMBER\",\"params\":{},\"partIndex\":3,\"partName\":\"序号\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":202,\"partType\":\"SERIALNO\"}', '{\"msg\":\"规则组成不唯一，清检查组成编码、组成名称、组成序号\",\"code\":500}', 0, NULL, '2022-09-07 13:47:19');
INSERT INTO `sys_oper_log` VALUES (210, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"NUMBER\",\"params\":{},\"partIndex\":4,\"partName\":\"序号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":202,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:47:34');
INSERT INTO `sys_oper_log` VALUES (211, '更新物料编码', 2, 'com.ktg.web.controller.system.SysAutoCodePartController.update()', 'PUT', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":6,\"dateFormat\":\"yymmdd\",\"partId\":205,\"partCode\":\"MIDDLE\",\"params\":{},\"partIndex\":2,\"partName\":\"中间\",\"createBy\":\"admin\",\"createTime\":1662529579000,\"updateBy\":\"admin\",\"ruleId\":202,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:47:43');
INSERT INTO `sys_oper_log` VALUES (212, '更新物料编码', 2, 'com.ktg.web.controller.system.SysAutoCodePartController.update()', 'PUT', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"seriaStep\":1,\"partId\":206,\"seriaStartNo\":1,\"partCode\":\"NUMBER\",\"params\":{},\"partIndex\":3,\"partName\":\"序号\",\"createBy\":\"admin\",\"createTime\":1662529654000,\"updateBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":202,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:47:47');
INSERT INTO `sys_oper_log` VALUES (213, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22470701\"', 0, NULL, '2022-09-07 13:47:54');
INSERT INTO `sys_oper_log` VALUES (214, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22470702\"', 0, NULL, '2022-09-07 13:47:57');
INSERT INTO `sys_oper_log` VALUES (215, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480703\"', 0, NULL, '2022-09-07 13:48:00');
INSERT INTO `sys_oper_log` VALUES (216, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480704\"', 0, NULL, '2022-09-07 13:48:01');
INSERT INTO `sys_oper_log` VALUES (217, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480705\"', 0, NULL, '2022-09-07 13:48:02');
INSERT INTO `sys_oper_log` VALUES (218, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480706\"', 0, NULL, '2022-09-07 13:48:03');
INSERT INTO `sys_oper_log` VALUES (219, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480707\"', 0, NULL, '2022-09-07 13:48:04');
INSERT INTO `sys_oper_log` VALUES (220, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480708\"', 0, NULL, '2022-09-07 13:48:05');
INSERT INTO `sys_oper_log` VALUES (221, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480709\"', 0, NULL, '2022-09-07 13:48:06');
INSERT INTO `sys_oper_log` VALUES (222, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22480710\"', 0, NULL, '2022-09-07 13:48:07');
INSERT INTO `sys_oper_log` VALUES (223, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22490711\"', 0, NULL, '2022-09-07 13:49:06');
INSERT INTO `sys_oper_log` VALUES (224, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22490712\"', 0, NULL, '2022-09-07 13:49:17');
INSERT INTO `sys_oper_log` VALUES (225, '客户', 1, 'com.ktg.mes.md.controller.MdClientController.add()', 'POST', 1, 'admin', NULL, '/mes/md/client', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"clientDes\":\"比亚迪品牌诞生于深圳，于1995年成立，业务横跨汽车、轨道交通、新能源和电子四大产业。\",\"contact2Tel\":\"1132323232\",\"contact2Email\":\"s2@bydglobal.com\",\"clientType\":\"ENTERPRISE\",\"creditCode\":\"11212121\",\"contact1Tel\":\"122212312\",\"tel\":\"123432222\",\"enableFlag\":\"Y\",\"email\":\"salse@bydglobal.com\",\"website\":\"https://www.bydglobal.com/cn/index.html\",\"address\":\"深圳南山区无名路12号\",\"clientId\":200,\"clientLogo\":\"logo\",\"params\":{},\"clientEn\":\"BYD\",\"createTime\":1662529848060,\"clientCode\":\"J22490712\",\"contact1Email\":\"s1@bydglobal.com\",\"contact1\":\"张三\",\"clientNick\":\"比亚迪\",\"contact2\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:50:48');
INSERT INTO `sys_oper_log` VALUES (226, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', NULL, 1, '未获取到指定类型:[VENDOR_CODE]的业务编码生成规则', '2022-09-07 13:53:05');
INSERT INTO `sys_oper_log` VALUES (227, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"VENDOR_CODE\",\"createBy\":\"admin\",\"ruleName\":\"供应商编码规则\",\"enableFlag\":\"Y\",\"maxLength\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:53:32');
INSERT INTO `sys_oper_log` VALUES (228, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"V\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":203,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:54:05');
INSERT INTO `sys_oper_log` VALUES (229, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":5,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"cycleMethod\":\"MONTH\",\"ruleId\":203,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:54:38');
INSERT INTO `sys_oper_log` VALUES (230, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00001\"', 0, NULL, '2022-09-07 13:54:45');
INSERT INTO `sys_oper_log` VALUES (231, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00002\"', 0, NULL, '2022-09-07 13:54:47');
INSERT INTO `sys_oper_log` VALUES (232, '供应商', 1, 'com.ktg.mes.md.controller.MdVendorController.add()', 'POST', 1, 'admin', NULL, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"createTime\":1662530170649,\"vendorScore\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:56:10');
INSERT INTO `sys_oper_log` VALUES (233, '供应商', 2, 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"updateBy\":\"\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"updateTime\":1662530178929,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662530171000,\"vendorScore\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:56:18');
INSERT INTO `sys_oper_log` VALUES (234, '供应商', 2, 'com.ktg.mes.md.controller.MdVendorController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/vendor', '127.0.0.1', '内网IP', '{\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"updateBy\":\"\",\"tel\":\"15212345678\",\"enableFlag\":\"Y\",\"vendorLevel\":\"B\",\"updateTime\":1662530199897,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662530171000,\"vendorScore\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:56:39');
INSERT INTO `sys_oper_log` VALUES (235, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSHOP_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSHOP_CODE}', NULL, 1, '未获取到指定类型:[WORKSHOP_CODE]的业务编码生成规则', '2022-09-07 13:57:24');
INSERT INTO `sys_oper_log` VALUES (236, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"WORKSHOP_CODE\",\"createBy\":\"admin\",\"ruleName\":\"车间编码生成规则\",\"enableFlag\":\"Y\",\"maxLength\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:57:50');
INSERT INTO `sys_oper_log` VALUES (237, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"WS\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"\\t 前缀\",\"createBy\":\"admin\",\"ruleId\":204,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:58:21');
INSERT INTO `sys_oper_log` VALUES (238, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":204,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:58:53');
INSERT INTO `sys_oper_log` VALUES (239, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSHOP_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSHOP_CODE}', '\"WS001\"', 0, NULL, '2022-09-07 13:59:01');
INSERT INTO `sys_oper_log` VALUES (240, '车间', 1, 'com.ktg.mes.md.controller.MdWorkshopController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workshop', '127.0.0.1', '内网IP', '{\"area\":500,\"charge\":\"王五\",\"workshopName\":\"注塑车间\",\"params\":{},\"createTime\":1662530372964,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 13:59:32');
INSERT INTO `sys_oper_log` VALUES (241, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', NULL, 1, '未获取到指定类型:[WORKSTATION_CODE]的业务编码生成规则', '2022-09-07 13:59:49');
INSERT INTO `sys_oper_log` VALUES (242, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"WORKSTATION_CODE\",\"createBy\":\"admin\",\"ruleName\":\"工作站编码规则\",\"enableFlag\":\"Y\",\"maxLength\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:00:14');
INSERT INTO `sys_oper_log` VALUES (243, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"WS\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":205,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:00:37');
INSERT INTO `sys_oper_log` VALUES (244, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":205,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:01:01');
INSERT INTO `sys_oper_log` VALUES (245, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0001\"', 0, NULL, '2022-09-07 14:01:06');
INSERT INTO `sys_oper_log` VALUES (246, '工作站', 1, 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"workstationCode\":\"WS0001\",\"workshopId\":200,\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', NULL, 1, 'Cannot invoke \"com.ktg.mes.pro.domain.ProProcess.getProcessCode()\" because \"process\" is null', '2022-09-07 14:01:46');
INSERT INTO `sys_oper_log` VALUES (247, '工作站', 1, 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"workstationCode\":\"WS0001\",\"workshopId\":200,\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', NULL, 1, 'Cannot invoke \"com.ktg.mes.pro.domain.ProProcess.getProcessCode()\" because \"process\" is null', '2022-09-07 14:01:47');
INSERT INTO `sys_oper_log` VALUES (248, '工作站', 1, 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"workstationCode\":\"WS0001\",\"workshopId\":200,\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', NULL, 1, 'Cannot invoke \"com.ktg.mes.pro.domain.ProProcess.getProcessCode()\" because \"process\" is null', '2022-09-07 14:01:49');
INSERT INTO `sys_oper_log` VALUES (249, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0002\"', 0, NULL, '2022-09-07 14:11:34');
INSERT INTO `sys_oper_log` VALUES (250, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/PROCESS_CODE', '127.0.0.1', '内网IP', '{ruleCode=PROCESS_CODE}', NULL, 1, '未获取到指定类型:[PROCESS_CODE]的业务编码生成规则', '2022-09-07 14:12:03');
INSERT INTO `sys_oper_log` VALUES (251, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"PROCESS_CODE\",\"createBy\":\"admin\",\"ruleName\":\"工序编码规则\",\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:12:42');
INSERT INTO `sys_oper_log` VALUES (252, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":7,\"fixCharacter\":\"PROCESS\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":206,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:13:18');
INSERT INTO `sys_oper_log` VALUES (253, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":206,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:13:42');
INSERT INTO `sys_oper_log` VALUES (254, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/PROCESS_CODE', '127.0.0.1', '内网IP', '{ruleCode=PROCESS_CODE}', '\"PROCESS001\"', 0, NULL, '2022-09-07 14:13:48');
INSERT INTO `sys_oper_log` VALUES (255, '生产工序', 1, 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1662531254076,\"processId\":200,\"processName\":\"组装\",\"processCode\":\"PROCESS001\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:14:14');
INSERT INTO `sys_oper_log` VALUES (256, '生产工序内容', 1, 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":200,\"contentText\":\"111\",\"orderNum\":1,\"params\":{},\"material\":\"111\",\"createTime\":1662531293413,\"processId\":200,\"docUrl\":\"111\",\"device\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:14:53');
INSERT INTO `sys_oper_log` VALUES (257, '生产工序内容', 1, 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":201,\"contentText\":\"222\",\"orderNum\":2,\"params\":{},\"material\":\"222\",\"createTime\":1662531300451,\"processId\":200,\"docUrl\":\"222\",\"device\":\"222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:15:00');
INSERT INTO `sys_oper_log` VALUES (258, '生产工序', 2, 'com.ktg.mes.pro.controller.ProProcessController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1662531302744,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662531254000,\"processId\":200,\"processName\":\"组装\",\"updateBy\":\"\",\"processCode\":\"PROCESS001\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:15:02');
INSERT INTO `sys_oper_log` VALUES (259, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/PROCESS_CODE', '127.0.0.1', '内网IP', '{ruleCode=PROCESS_CODE}', '\"PROCESS002\"', 0, NULL, '2022-09-07 14:15:31');
INSERT INTO `sys_oper_log` VALUES (260, '生产工序', 1, 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1662531334280,\"processId\":201,\"processName\":\"清洗\",\"processCode\":\"PROCESS002\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:15:34');
INSERT INTO `sys_oper_log` VALUES (261, '生产工序内容', 1, 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":202,\"contentText\":\"1\",\"orderNum\":1,\"params\":{},\"material\":\"1\",\"createTime\":1662531346676,\"processId\":201,\"docUrl\":\"1\",\"device\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:15:46');
INSERT INTO `sys_oper_log` VALUES (262, '生产工序', 2, 'com.ktg.mes.pro.controller.ProProcessController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1662531347540,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662531334000,\"processId\":201,\"processName\":\"清洗\",\"updateBy\":\"\",\"processCode\":\"PROCESS002\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:15:47');
INSERT INTO `sys_oper_log` VALUES (263, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/PROCESS_CODE', '127.0.0.1', '内网IP', '{ruleCode=PROCESS_CODE}', '\"PROCESS003\"', 0, NULL, '2022-09-07 14:16:07');
INSERT INTO `sys_oper_log` VALUES (264, '生产工序', 1, 'com.ktg.mes.pro.controller.ProProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"params\":{},\"createTime\":1662531370617,\"processId\":202,\"processName\":\"消毒\",\"processCode\":\"PROCESS003\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:16:10');
INSERT INTO `sys_oper_log` VALUES (265, '生产工序内容', 1, 'com.ktg.mes.pro.controller.ProProcessContentController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/processcontent', '127.0.0.1', '内网IP', '{\"contentId\":203,\"contentText\":\"11\",\"orderNum\":1,\"params\":{},\"material\":\"11\",\"createTime\":1662531377010,\"processId\":202,\"docUrl\":\"11\",\"device\":\"11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:16:17');
INSERT INTO `sys_oper_log` VALUES (266, '生产工序', 2, 'com.ktg.mes.pro.controller.ProProcessController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/process', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1662531378185,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662531371000,\"processId\":202,\"processName\":\"消毒\",\"updateBy\":\"\",\"processCode\":\"PROCESS003\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:16:18');
INSERT INTO `sys_oper_log` VALUES (267, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0003\"', 0, NULL, '2022-09-07 14:16:33');
INSERT INTO `sys_oper_log` VALUES (268, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0004\"', 0, NULL, '2022-09-07 14:26:13');
INSERT INTO `sys_oper_log` VALUES (269, '工作站', 1, 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"workstationCode\":\"WS0004\",\"createTime\":1662531981429,\"processId\":200,\"processName\":\"组装\",\"processCode\":\"PROCESS001\",\"workstationId\":200,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:26:21');
INSERT INTO `sys_oper_log` VALUES (270, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0005\"', 0, NULL, '2022-09-07 14:26:58');
INSERT INTO `sys_oper_log` VALUES (271, '工作站', 1, 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"去浇口工作台#02\",\"params\":{},\"workstationCode\":\"WS0005\",\"createTime\":1662532027713,\"processId\":201,\"processName\":\"清洗\",\"processCode\":\"PROCESS002\",\"workstationId\":201,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:27:07');
INSERT INTO `sys_oper_log` VALUES (272, '人力资源', 1, 'com.ktg.mes.md.controller.MdWorkstationWorkerController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationworker', '127.0.0.1', '内网IP', '{\"quantity\":2,\"postId\":4,\"params\":{},\"recordId\":200,\"createTime\":1662532152393,\"postName\":\"普通员工\",\"workstationId\":200,\"postCode\":\"user\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:29:12');
INSERT INTO `sys_oper_log` VALUES (273, '人力资源', 1, 'com.ktg.mes.md.controller.MdWorkstationWorkerController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationworker', '127.0.0.1', '内网IP', '{\"quantity\":1,\"postId\":4,\"params\":{},\"recordId\":201,\"createTime\":1662532202352,\"postName\":\"普通员工\",\"workstationId\":201,\"postCode\":\"user\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:30:02');
INSERT INTO `sys_oper_log` VALUES (274, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"去浇口工作台#02\",\"remark\":\"\",\"updateTime\":1662532204110,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0005\",\"createTime\":1662532028000,\"processId\":201,\"processName\":\"清洗\",\"updateBy\":\"\",\"processCode\":\"PROCESS002\",\"workstationId\":201,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:30:04');
INSERT INTO `sys_oper_log` VALUES (275, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', NULL, 1, '未获取到指定类型:[MACHINERY_TYPE_CODE]的业务编码生成规则', '2022-09-07 14:43:22');
INSERT INTO `sys_oper_log` VALUES (276, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '未获取到指定类型:[MACHINERY_TYPE_CODE]的业务编码生成规则', '2022-09-07 14:43:22');
INSERT INTO `sys_oper_log` VALUES (277, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '未获取到指定类型:[MACHINERY_TYPE_CODE]的业务编码生成规则', '2022-09-07 14:43:26');
INSERT INTO `sys_oper_log` VALUES (278, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', NULL, 1, '未获取到指定类型:[MACHINERY_TYPE_CODE]的业务编码生成规则', '2022-09-07 14:43:26');
INSERT INTO `sys_oper_log` VALUES (279, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '未获取到指定类型:[MACHINERY_TYPE_CODE]的业务编码生成规则', '2022-09-07 14:43:29');
INSERT INTO `sys_oper_log` VALUES (280, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', NULL, 1, '未获取到指定类型:[MACHINERY_TYPE_CODE]的业务编码生成规则', '2022-09-07 14:43:29');
INSERT INTO `sys_oper_log` VALUES (281, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"MACHINERY_TYPE_CODE\",\"createBy\":\"admin\",\"ruleName\":\"设备类型编码规则\",\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:44:04');
INSERT INTO `sys_oper_log` VALUES (282, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":7,\"fixCharacter\":\"M_TYPE_\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":207,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:44:32');
INSERT INTO `sys_oper_log` VALUES (283, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":207,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 14:44:54');
INSERT INTO `sys_oper_log` VALUES (284, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_001\"', 0, NULL, '2022-09-07 14:45:06');
INSERT INTO `sys_oper_log` VALUES (285, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"createTime\":1662533106014,\"machineryTypeCode\":\"M_TYPE_001\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\dv\\DvMachineryTypeMapper.xml]\r\n### The error may involve com.ktg.mes.dv.mapper.DvMachineryTypeMapper.insertDvMachineryType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into dv_machinery_type          ( machinery_type_code,             machinery_type_name,             parent_type_id,                          enable_flag,                                                                                           create_time )           values ( ?,             ?,             ?,                          ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\n; Field \'ancestors\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value', '2022-09-07 14:45:06');
INSERT INTO `sys_oper_log` VALUES (286, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_002\"', 0, NULL, '2022-09-07 14:45:14');
INSERT INTO `sys_oper_log` VALUES (287, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"createTime\":1662533114471,\"machineryTypeCode\":\"M_TYPE_002\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\dv\\DvMachineryTypeMapper.xml]\r\n### The error may involve com.ktg.mes.dv.mapper.DvMachineryTypeMapper.insertDvMachineryType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into dv_machinery_type          ( machinery_type_code,             machinery_type_name,             parent_type_id,                          enable_flag,                                                                                           create_time )           values ( ?,             ?,             ?,                          ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\n; Field \'ancestors\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value', '2022-09-07 14:45:14');
INSERT INTO `sys_oper_log` VALUES (288, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_003\"', 0, NULL, '2022-09-07 14:59:27');
INSERT INTO `sys_oper_log` VALUES (289, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"createTime\":1662533967675,\"machineryTypeCode\":\"M_TYPE_003\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\dv\\DvMachineryTypeMapper.xml]\r\n### The error may involve com.ktg.mes.dv.mapper.DvMachineryTypeMapper.insertDvMachineryType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into dv_machinery_type          ( machinery_type_code,             machinery_type_name,             parent_type_id,                          enable_flag,                                                                                           create_time )           values ( ?,             ?,             ?,                          ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\n; Field \'ancestors\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value', '2022-09-07 14:59:27');
INSERT INTO `sys_oper_log` VALUES (290, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_004\"', 0, NULL, '2022-09-07 14:59:31');
INSERT INTO `sys_oper_log` VALUES (291, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"createTime\":1662533971625,\"machineryTypeCode\":\"M_TYPE_004\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"设备分类\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\dv\\DvMachineryTypeMapper.xml]\r\n### The error may involve com.ktg.mes.dv.mapper.DvMachineryTypeMapper.insertDvMachineryType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into dv_machinery_type          ( machinery_type_code,             machinery_type_name,             parent_type_id,                          enable_flag,                                                                                           create_time )           values ( ?,             ?,             ?,                          ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\n; Field \'ancestors\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value', '2022-09-07 14:59:31');
INSERT INTO `sys_oper_log` VALUES (292, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_005\"', 0, NULL, '2022-09-07 15:02:12');
INSERT INTO `sys_oper_log` VALUES (293, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"params\":{},\"children\":[],\"createTime\":1662534132380,\"machineryTypeCode\":\"M_TYPE_005\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"是\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\dv\\DvMachineryTypeMapper.xml]\r\n### The error may involve com.ktg.mes.dv.mapper.DvMachineryTypeMapper.insertDvMachineryType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into dv_machinery_type          ( machinery_type_code,             machinery_type_name,             parent_type_id,                          enable_flag,                                                                                           create_time )           values ( ?,             ?,             ?,                          ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value\n; Field \'ancestors\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ancestors\' doesn\'t have a default value', '2022-09-07 15:02:12');
INSERT INTO `sys_oper_log` VALUES (294, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_006\"', 0, NULL, '2022-09-07 15:03:09');
INSERT INTO `sys_oper_log` VALUES (295, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"params\":{},\"children\":[],\"createTime\":1662534189039,\"machineryTypeId\":200,\"ancestors\":\"0,1\",\"machineryTypeCode\":\"M_TYPE_006\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"组装机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:03:09');
INSERT INTO `sys_oper_log` VALUES (296, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_007\"', 0, NULL, '2022-09-07 15:03:22');
INSERT INTO `sys_oper_log` VALUES (297, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":200,\"params\":{},\"children\":[],\"createTime\":1662534202457,\"machineryTypeId\":201,\"ancestors\":\"0,1,200\",\"machineryTypeCode\":\"M_TYPE_007\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"大型组装机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:03:22');
INSERT INTO `sys_oper_log` VALUES (298, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_008\"', 0, NULL, '2022-09-07 15:03:33');
INSERT INTO `sys_oper_log` VALUES (299, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":200,\"params\":{},\"children\":[],\"createTime\":1662534213099,\"machineryTypeId\":202,\"ancestors\":\"0,1,200\",\"machineryTypeCode\":\"M_TYPE_008\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"中型组装机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:03:33');
INSERT INTO `sys_oper_log` VALUES (300, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_009\"', 0, NULL, '2022-09-07 15:03:53');
INSERT INTO `sys_oper_log` VALUES (301, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"params\":{},\"children\":[],\"createTime\":1662534233172,\"machineryTypeId\":203,\"ancestors\":\"0,1\",\"machineryTypeCode\":\"M_TYPE_009\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"清洗机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:03:53');
INSERT INTO `sys_oper_log` VALUES (302, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/MACHINERY_CODE', '127.0.0.1', '内网IP', '{ruleCode=MACHINERY_CODE}', NULL, 1, '未获取到指定类型:[MACHINERY_CODE]的业务编码生成规则', '2022-09-07 15:04:04');
INSERT INTO `sys_oper_log` VALUES (303, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"MACHINERY_CODE\",\"createBy\":\"admin\",\"ruleName\":\"设备编码规则\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:04:28');
INSERT INTO `sys_oper_log` VALUES (304, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"MACHINERY_CODE\",\"createBy\":\"admin\",\"createTime\":1662534268000,\"updateBy\":\"admin\",\"ruleName\":\"设备编码规则\",\"ruleId\":208,\"enableFlag\":\"Y\",\"maxLength\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:04:52');
INSERT INTO `sys_oper_log` VALUES (305, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"M\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":208,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:05:12');
INSERT INTO `sys_oper_log` VALUES (306, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":208,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:05:36');
INSERT INTO `sys_oper_log` VALUES (307, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/MACHINERY_CODE', '127.0.0.1', '内网IP', '{ruleCode=MACHINERY_CODE}', '\"M0001\"', 0, NULL, '2022-09-07 15:05:40');
INSERT INTO `sys_oper_log` VALUES (308, '设备', 1, 'com.ktg.mes.dv.controller.DvMachineryController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0001\",\"machineryId\":200,\"machineryName\":\"清洗\",\"machinerySpec\":\"1\",\"remark\":\"1\",\"params\":{},\"createTime\":1662534365950,\"machineryTypeId\":203,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:06:05');
INSERT INTO `sys_oper_log` VALUES (309, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/MACHINERY_CODE', '127.0.0.1', '内网IP', '{ruleCode=MACHINERY_CODE}', '\"M0002\"', 0, NULL, '2022-09-07 15:06:10');
INSERT INTO `sys_oper_log` VALUES (310, '设备', 1, 'com.ktg.mes.dv.controller.DvMachineryController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0002\",\"machineryId\":201,\"machineryName\":\"组装\",\"machinerySpec\":\"1\",\"remark\":\"1\",\"params\":{},\"createTime\":1662534390159,\"machineryTypeId\":201,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:06:30');
INSERT INTO `sys_oper_log` VALUES (311, '设备', 2, 'com.ktg.mes.dv.controller.DvMachineryController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0001\",\"machineryId\":200,\"machineryName\":\"清洗M0001\",\"machinerySpec\":\"1\",\"remark\":\"1\",\"updateTime\":1662534404268,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662534366000,\"updateBy\":\"\",\"machineryTypeId\":203,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:06:44');
INSERT INTO `sys_oper_log` VALUES (312, '设备', 2, 'com.ktg.mes.dv.controller.DvMachineryController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0002\",\"machineryId\":201,\"machineryName\":\"组装M0002\",\"machinerySpec\":\"1\",\"remark\":\"1\",\"updateTime\":1662534410711,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662534390000,\"updateBy\":\"\",\"machineryTypeId\":201,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:06:50');
INSERT INTO `sys_oper_log` VALUES (313, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WAREHOUSE_CODE', '127.0.0.1', '内网IP', '{ruleCode=WAREHOUSE_CODE}', NULL, 1, '未获取到指定类型:[WAREHOUSE_CODE]的业务编码生成规则', '2022-09-07 15:15:48');
INSERT INTO `sys_oper_log` VALUES (314, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"WAREHOUSE_CODE\",\"createBy\":\"admin\",\"ruleName\":\"仓库编码规则\",\"enableFlag\":\"Y\",\"maxLength\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:16:22');
INSERT INTO `sys_oper_log` VALUES (315, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"WH\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":209,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:16:46');
INSERT INTO `sys_oper_log` VALUES (316, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":209,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:17:10');
INSERT INTO `sys_oper_log` VALUES (317, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WAREHOUSE_CODE', '127.0.0.1', '内网IP', '{ruleCode=WAREHOUSE_CODE}', '\"WH001\"', 0, NULL, '2022-09-07 15:17:19');
INSERT INTO `sys_oper_log` VALUES (318, '仓库设置', 1, 'com.ktg.mes.wm.controller.WmWarehouseController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/warehouse', '127.0.0.1', '内网IP', '{\"area\":300,\"charge\":\"小明\",\"params\":{},\"warehouseName\":\"中央仓库\",\"warehouseCode\":\"WH001\",\"createTime\":1662535084415,\"warehouseId\":200,\"location\":\"center\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:18:04');
INSERT INTO `sys_oper_log` VALUES (319, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', NULL, 1, '未获取到指定类型:[ITEMRECPT_CODE]的业务编码生成规则', '2022-09-07 15:19:04');
INSERT INTO `sys_oper_log` VALUES (320, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', NULL, 1, '未获取到指定类型:[ITEMRECPT_CODE]的业务编码生成规则', '2022-09-07 15:19:23');
INSERT INTO `sys_oper_log` VALUES (321, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"ITEMRECPT_CODE\",\"createBy\":\"admin\",\"ruleName\":\"物料入库单编码规则\",\"enableFlag\":\"Y\",\"maxLength\":12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:20:09');
INSERT INTO `sys_oper_log` VALUES (322, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"R\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":210,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:20:34');
INSERT INTO `sys_oper_log` VALUES (323, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMdd\",\"partCode\":\"DATE\",\"params\":{},\"partIndex\":2,\"partName\":\"日期\",\"createBy\":\"admin\",\"ruleId\":210,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:20:57');
INSERT INTO `sys_oper_log` VALUES (324, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"MONTH\",\"ruleId\":210,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:21:20');
INSERT INTO `sys_oper_log` VALUES (325, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20220907001\"', 0, NULL, '2022-09-07 15:21:25');
INSERT INTO `sys_oper_log` VALUES (326, '物料入库单', 1, 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"20220907一号单\",\"recptId\":200,\"poCode\":\"111\",\"recptDate\":1662480000000,\"recptCode\":\"R20220907001\",\"params\":{},\"createTime\":1662535337658,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:22:17');
INSERT INTO `sys_oper_log` VALUES (327, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"20220907一号单\",\"recptId\":200,\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"updateBy\":\"\",\"poCode\":\"111\",\"recptDate\":1662480000000,\"recptCode\":\"R20220907001\",\"updateTime\":1662535374742,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662535338000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:22:54');
INSERT INTO `sys_oper_log` VALUES (328, '设备资源', 1, 'com.ktg.mes.md.controller.MdWorkstationMachineController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationmachine', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0001\",\"machineryId\":200,\"machineryName\":\"清洗M0001\",\"remark\":\"1\",\"updateTime\":1662534404000,\"params\":{},\"attr4\":0,\"attr3\":0,\"recordId\":200,\"createBy\":\"\",\"createTime\":1662535770308,\"updateBy\":\"\",\"workstationId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:29:30');
INSERT INTO `sys_oper_log` VALUES (329, '设备资源', 1, 'com.ktg.mes.md.controller.MdWorkstationMachineController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationmachine', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0002\",\"machineryId\":201,\"machineryName\":\"组装M0002\",\"remark\":\"1\",\"updateTime\":1662534411000,\"params\":{},\"attr4\":0,\"attr3\":0,\"recordId\":201,\"createBy\":\"\",\"createTime\":1662535773487,\"updateBy\":\"\",\"workstationId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:29:33');
INSERT INTO `sys_oper_log` VALUES (330, '设备资源', 3, 'com.ktg.mes.md.controller.MdWorkstationMachineController.remove()', 'DELETE', 1, 'admin', NULL, '/mes/md/workstationmachine/200', '127.0.0.1', '内网IP', '{recordIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:29:40');
INSERT INTO `sys_oper_log` VALUES (331, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"去浇口工装台#01\",\"remark\":\"\",\"updateTime\":1662535784818,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0004\",\"createTime\":1662531981000,\"processId\":200,\"processName\":\"组装\",\"updateBy\":\"\",\"processCode\":\"PROCESS001\",\"workstationId\":200,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:29:44');
INSERT INTO `sys_oper_log` VALUES (332, '设备资源', 1, 'com.ktg.mes.md.controller.MdWorkstationMachineController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationmachine', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0001\",\"machineryId\":200,\"machineryName\":\"清洗M0001\",\"remark\":\"1\",\"updateTime\":1662534404000,\"params\":{},\"attr4\":0,\"attr3\":0,\"recordId\":202,\"createBy\":\"\",\"createTime\":1662535790337,\"updateBy\":\"\",\"workstationId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:29:50');
INSERT INTO `sys_oper_log` VALUES (333, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"去浇口工作台#02\",\"remark\":\"\",\"updateTime\":1662535792282,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0005\",\"createTime\":1662532028000,\"processId\":201,\"processName\":\"清洗\",\"updateBy\":\"\",\"processCode\":\"PROCESS002\",\"workstationId\":201,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 15:29:52');
INSERT INTO `sys_oper_log` VALUES (334, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/TOOL_TYPE_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_TYPE_CODE}', NULL, 1, '未获取到指定类型:[TOOL_TYPE_CODE]的业务编码生成规则', '2022-09-07 15:30:02');
INSERT INTO `sys_oper_log` VALUES (335, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"TOOL_TYPE_CODE\",\"createBy\":\"admin\",\"ruleName\":\"工装夹具类型编码\",\"enableFlag\":\"Y\",\"maxLength\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:12:01');
INSERT INTO `sys_oper_log` VALUES (336, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"TT\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":211,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:12:21');
INSERT INTO `sys_oper_log` VALUES (337, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":211,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:12:39');
INSERT INTO `sys_oper_log` VALUES (338, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/TOOL_TYPE_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_TYPE_CODE}', '\"TT001\"', 0, NULL, '2022-09-07 16:12:48');
INSERT INTO `sys_oper_log` VALUES (339, '工装夹具类型', 1, 'com.ktg.mes.tm.controller.TmToolTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/tm/tooltype', '127.0.0.1', '内网IP', '{\"maintenPeriod\":100000,\"codeFlag\":\"Y\",\"toolTypeId\":200,\"params\":{},\"createTime\":1662538411961,\"maintenType\":\"USAGE\",\"toolTypeName\":\"刀具\",\"toolTypeCode\":\"TT001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:13:31');
INSERT INTO `sys_oper_log` VALUES (340, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/TOOL_TYPE_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_TYPE_CODE}', '\"TT002\"', 0, NULL, '2022-09-07 16:13:48');
INSERT INTO `sys_oper_log` VALUES (341, '工装夹具类型', 1, 'com.ktg.mes.tm.controller.TmToolTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/tm/tooltype', '127.0.0.1', '内网IP', '{\"maintenPeriod\":30,\"codeFlag\":\"Y\",\"toolTypeId\":201,\"params\":{},\"createTime\":1662538436752,\"maintenType\":\"REGULAR\",\"toolTypeName\":\"夹具\",\"toolTypeCode\":\"TT002\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:13:56');
INSERT INTO `sys_oper_log` VALUES (342, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/TOOL_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_CODE}', NULL, 1, '未获取到指定类型:[TOOL_CODE]的业务编码生成规则', '2022-09-07 16:14:23');
INSERT INTO `sys_oper_log` VALUES (343, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"TOOL_CODE\",\"createBy\":\"admin\",\"ruleName\":\"工装夹具编码规则\",\"enableFlag\":\"Y\",\"maxLength\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:32:39');
INSERT INTO `sys_oper_log` VALUES (344, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"T\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":212,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:33:03');
INSERT INTO `sys_oper_log` VALUES (345, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":5,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":212,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:33:22');
INSERT INTO `sys_oper_log` VALUES (346, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/TOOL_CODE', '127.0.0.1', '内网IP', '{ruleCode=TOOL_CODE}', '\"T00001\"', 0, NULL, '2022-09-07 16:33:28');
INSERT INTO `sys_oper_log` VALUES (347, '工装夹具清单', 1, 'com.ktg.mes.tm.controller.TmToolController.add()', 'POST', 1, 'admin', NULL, '/mes/tm/tool', '127.0.0.1', '内网IP', '{\"codeFlag\":\"Y\",\"toolTypeId\":200,\"toolId\":200,\"quantityAvail\":1,\"toolTypeCode\":\"TT001\",\"toolName\":\"铣刀\",\"quantity\":1,\"params\":{},\"toolCode\":\"T00001\",\"createTime\":1662539641332,\"maintenType\":\"REGULAR\",\"toolTypeName\":\"刀具\",\"status\":\"STORE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-07 16:34:01');
INSERT INTO `sys_oper_log` VALUES (348, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 16:35:31');
INSERT INTO `sys_oper_log` VALUES (349, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 16:35:38');
INSERT INTO `sys_oper_log` VALUES (350, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 17:12:56');
INSERT INTO `sys_oper_log` VALUES (351, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"itemTypeCode\":\"jxz00001\",\"orderNum\":1,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662512137000,\"updateBy\":\"admin\",\"itemTypeName\":\"A型\",\"ancestors\":\"0,1\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 17:13:38');
INSERT INTO `sys_oper_log` VALUES (352, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"itemTypeCode\":\"jxz00004\",\"orderNum\":2,\"remark\":\"\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662522568000,\"updateBy\":\"admin\",\"itemTypeName\":\"B型\",\"ancestors\":\"0,1\",\"itemTypeId\":203,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 17:13:42');
INSERT INTO `sys_oper_log` VALUES (353, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"产品\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"N\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 17:13:51');
INSERT INTO `sys_oper_log` VALUES (354, '更新物料产品分类', 2, 'com.ktg.mes.md.controller.ItemTypeController.update()', 'PUT', 1, 'admin', NULL, '/mes/md/itemtype', '127.0.0.1', '内网IP', '{\"parentTypeId\":0,\"itemTypeCode\":\"A1\",\"orderNum\":1,\"remark\":\"无\",\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1662456000000,\"updateBy\":\"admin\",\"itemTypeName\":\"产品\",\"ancestors\":\"0\",\"itemTypeId\":1,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2022-09-07 17:14:15');
INSERT INTO `sys_oper_log` VALUES (355, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22170713\"', 0, NULL, '2022-09-07 17:17:51');
INSERT INTO `sys_oper_log` VALUES (356, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CLIENT_CODE', '127.0.0.1', '内网IP', '{ruleCode=CLIENT_CODE}', '\"J22180714\"', 0, NULL, '2022-09-07 17:18:17');
INSERT INTO `sys_oper_log` VALUES (357, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0006\"', 0, NULL, '2022-09-07 17:19:15');
INSERT INTO `sys_oper_log` VALUES (358, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0007\"', 0, NULL, '2022-09-07 17:19:34');
INSERT INTO `sys_oper_log` VALUES (359, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-07 17:20:22');
INSERT INTO `sys_oper_log` VALUES (360, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-08 09:05:59');
INSERT INTO `sys_oper_log` VALUES (361, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00003\"', 0, NULL, '2022-09-08 09:07:04');
INSERT INTO `sys_oper_log` VALUES (362, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-08 09:07:29');
INSERT INTO `sys_oper_log` VALUES (363, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-08 09:07:47');
INSERT INTO `sys_oper_log` VALUES (364, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00004\"', 0, NULL, '2022-09-08 09:08:24');
INSERT INTO `sys_oper_log` VALUES (365, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"VENDOR_CODE1\",\"createBy\":\"admin\",\"createTime\":1662530012000,\"updateBy\":\"admin\",\"ruleName\":\"供应商编码规则\",\"ruleId\":203,\"enableFlag\":\"Y\",\"maxLength\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 09:15:57');
INSERT INTO `sys_oper_log` VALUES (366, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', NULL, 1, '未获取到指定类型:[VENDOR_CODE]的业务编码生成规则', '2022-09-08 09:16:09');
INSERT INTO `sys_oper_log` VALUES (367, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"VENDOR_CODE\",\"createBy\":\"admin\",\"createTime\":1662530012000,\"updateBy\":\"admin\",\"ruleName\":\"供应商编码规则\",\"ruleId\":203,\"enableFlag\":\"Y\",\"maxLength\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 09:16:24');
INSERT INTO `sys_oper_log` VALUES (368, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00005\"', 0, NULL, '2022-09-08 09:16:28');
INSERT INTO `sys_oper_log` VALUES (369, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未查询到规则{[]}对应的结果记录', '2022-09-08 09:18:32');
INSERT INTO `sys_oper_log` VALUES (370, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_CODE1\",\"createBy\":\"admin\",\"createTime\":1662512666000,\"updateBy\":\"admin\",\"ruleName\":\"物料规则\",\"ruleId\":201,\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 09:18:58');
INSERT INTO `sys_oper_log` VALUES (371, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, '未获取到指定类型:[ITEM_CODE]的业务编码生成规则', '2022-09-08 09:19:01');
INSERT INTO `sys_oper_log` VALUES (372, '更新自动编码规则', 2, 'com.ktg.web.controller.system.SysAutoCodeRuleController.updateInfo()', 'PUT', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"paddedMethod\":\"L\",\"ruleCode\":\"ITEM_CODE\",\"createBy\":\"admin\",\"createTime\":1662512666000,\"updateBy\":\"admin\",\"ruleName\":\"物料规则\",\"ruleId\":201,\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 09:19:19');
INSERT INTO `sys_oper_log` VALUES (373, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00006\"', 0, NULL, '2022-09-08 09:24:14');
INSERT INTO `sys_oper_log` VALUES (374, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00001\"', 0, NULL, '2022-09-08 09:36:10');
INSERT INTO `sys_oper_log` VALUES (375, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/VENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=VENDOR_CODE}', '\"V00001\"', 0, NULL, '2022-09-08 09:38:35');
INSERT INTO `sys_oper_log` VALUES (376, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, 'Cannot parse null string', '2022-09-08 09:45:56');
INSERT INTO `sys_oper_log` VALUES (377, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, 'Cannot parse null string', '2022-09-08 09:45:58');
INSERT INTO `sys_oper_log` VALUES (378, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IFTT2022090803\"', 0, NULL, '2022-09-08 09:53:03');
INSERT INTO `sys_oper_log` VALUES (379, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', NULL, 1, 'Cannot parse null string', '2022-09-08 09:53:28');
INSERT INTO `sys_oper_log` VALUES (380, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IFTT2022090851\"', 0, NULL, '2022-09-08 10:41:51');
INSERT INTO `sys_oper_log` VALUES (381, '物料管理', 1, 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', 1, 'admin', NULL, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090851\",\"itemTypeCode\":\"jxz00002\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":200,\"createBy\":\"admin\",\"itemName\":\"基础接地摞柱\",\"maxStock\":0.0,\"itemTypeName\":\"A型1号\",\"itemTypeId\":201,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:42:31');
INSERT INTO `sys_oper_log` VALUES (382, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IFTT2022090805\"', 0, NULL, '2022-09-08 10:43:05');
INSERT INTO `sys_oper_log` VALUES (383, '物料管理', 1, 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', 1, 'admin', NULL, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090805\",\"itemTypeCode\":\"jxz00002\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":201,\"createBy\":\"admin\",\"itemName\":\"螺丝扣\",\"maxStock\":0.0,\"itemTypeName\":\"A型1号\",\"itemTypeId\":201,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:43:17');
INSERT INTO `sys_oper_log` VALUES (384, '物料管理', 2, 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090805\",\"itemTypeCode\":\"jxz00003\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":201,\"createBy\":\"admin\",\"itemName\":\"螺丝扣\",\"createTime\":1662604997000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"A型2号\",\"itemTypeId\":202,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:45:30');
INSERT INTO `sys_oper_log` VALUES (385, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEM_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEM_CODE}', '\"IFTT2022090842\"', 0, NULL, '2022-09-08 10:45:42');
INSERT INTO `sys_oper_log` VALUES (386, '物料管理', 1, 'com.ktg.mes.md.controller.MdItemController.add()', 'POST', 1, 'admin', NULL, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090842\",\"itemTypeCode\":\"jxz00001\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":202,\"createBy\":\"admin\",\"itemName\":\"A型螺柱+螺丝扣\",\"maxStock\":0.0,\"itemTypeName\":\"A型\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:45:59');
INSERT INTO `sys_oper_log` VALUES (387, '产品BOM关系', 1, 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', 1, 'admin', NULL, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":200,\"quantity\":1,\"unitOfMeasure\":\"piece\",\"bomItemCode\":\"IFTT2022090851\",\"params\":{},\"bomItemId\":200,\"bomItemName\":\"基础接地摞柱\",\"itemId\":202,\"createTime\":1662605171184,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:46:11');
INSERT INTO `sys_oper_log` VALUES (388, '产品BOM关系', 1, 'com.ktg.mes.md.controller.MdProductBomController.add()', 'POST', 1, 'admin', NULL, '/mes/md/bom', '127.0.0.1', '内网IP', '{\"bomId\":201,\"quantity\":1,\"unitOfMeasure\":\"piece\",\"bomItemCode\":\"IFTT2022090805\",\"params\":{},\"bomItemId\":201,\"bomItemName\":\"螺丝扣\",\"itemId\":202,\"createTime\":1662605171184,\"enableFlag\":\"Y\",\"itemOrProduct\":\"ITEM\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:46:11');
INSERT INTO `sys_oper_log` VALUES (389, '物料管理', 2, 'com.ktg.mes.md.controller.MdItemController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/mditem', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090842\",\"itemTypeCode\":\"jxz00001\",\"remark\":\"\",\"params\":{},\"minStock\":0.0,\"safeStockFlag\":\"N\",\"itemId\":202,\"createBy\":\"admin\",\"itemName\":\"A型螺柱+螺丝扣\",\"createTime\":1662605159000,\"updateBy\":\"admin\",\"maxStock\":0.0,\"itemTypeName\":\"A型\",\"itemTypeId\":200,\"enableFlag\":\"Y\",\"itemOrProduct\":\"PRODUCT\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:46:13');
INSERT INTO `sys_oper_log` VALUES (390, '物料入库单行', 1, 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IFTT2022090851\",\"recptId\":200,\"quantityRecived\":10,\"itemName\":\"基础接地摞柱\",\"unitOfMeasure\":\"piece\",\"lineId\":200,\"params\":{},\"itemId\":200,\"createTime\":1662605669037}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:54:29');
INSERT INTO `sys_oper_log` VALUES (391, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"20220907一号单\",\"recptId\":200,\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"updateBy\":\"\",\"poCode\":\"111\",\"recptDate\":1662480000000,\"recptCode\":\"R20220907001\",\"updateTime\":1662605677350,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662535338000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:54:37');
INSERT INTO `sys_oper_log` VALUES (392, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"20220907一号单\",\"recptId\":200,\"vendorId\":200,\"remark\":\"\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"updateBy\":\"\",\"poCode\":\"111\",\"recptDate\":1662480000000,\"recptCode\":\"R20220907001\",\"updateTime\":1662605686535,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662535338000,\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:54:46');
INSERT INTO `sys_oper_log` VALUES (393, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt/200', '127.0.0.1', '内网IP', '200', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'warehouse_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\wm\\WmMaterialStockMapper.xml]\r\n### The error may involve com.ktg.mes.wm.mapper.WmMaterialStockMapper.insertWmMaterialStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wm_material_stock          ( item_type_id,             item_id,             item_code,             item_name,                          unit_of_measure,                                                                                                                                               vendor_id,             vendor_code,             vendor_name,             vendor_nick,             quantity_onhand )           values ( ?,             ?,             ?,             ?,                          ?,                                                                                                                                               ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'warehouse_id\' doesn\'t have a default value\n; Field \'warehouse_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'warehouse_id\' doesn\'t have a default value', '2022-09-08 10:55:00');
INSERT INTO `sys_oper_log` VALUES (394, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt/200', '127.0.0.1', '内网IP', '200', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'warehouse_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\resource\\eclipse-workspace\\ktg-mes-master\\ktg-mes\\target\\classes\\mapper\\wm\\WmMaterialStockMapper.xml]\r\n### The error may involve com.ktg.mes.wm.mapper.WmMaterialStockMapper.insertWmMaterialStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wm_material_stock          ( item_type_id,             item_id,             item_code,             item_name,                          unit_of_measure,                                                                                                                                               vendor_id,             vendor_code,             vendor_name,             vendor_nick,             quantity_onhand )           values ( ?,             ?,             ?,             ?,                          ?,                                                                                                                                               ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'warehouse_id\' doesn\'t have a default value\n; Field \'warehouse_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'warehouse_id\' doesn\'t have a default value', '2022-09-08 10:57:13');
INSERT INTO `sys_oper_log` VALUES (395, '物料入库单行', 3, 'com.ktg.mes.wm.controller.WmItemRecptLineController.remove()', 'DELETE', 1, 'admin', NULL, '/mes/wm/itemrecptline/200', '127.0.0.1', '内网IP', '{lineIds=200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:57:31');
INSERT INTO `sys_oper_log` VALUES (396, '物料入库单行', 1, 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IFTT2022090851\",\"recptId\":200,\"warehouseName\":\"中央仓库\",\"quantityRecived\":10,\"warehouseCode\":\"WH001\",\"itemName\":\"基础接地摞柱\",\"unitOfMeasure\":\"piece\",\"lineId\":201,\"params\":{},\"itemId\":200,\"createTime\":1662605870701,\"warehouseId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:57:50');
INSERT INTO `sys_oper_log` VALUES (397, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:58:00');
INSERT INTO `sys_oper_log` VALUES (398, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20220908002\"', 0, NULL, '2022-09-08 10:58:37');
INSERT INTO `sys_oper_log` VALUES (399, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ITEMRECPT_CODE', '127.0.0.1', '内网IP', '{ruleCode=ITEMRECPT_CODE}', '\"R20220908003\"', 0, NULL, '2022-09-08 10:58:45');
INSERT INTO `sys_oper_log` VALUES (400, '物料入库单', 1, 'com.ktg.mes.wm.controller.WmItemRecptController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"20220908三号单\",\"recptId\":201,\"vendorId\":200,\"warehouseName\":\"中央仓库\",\"warehouseCode\":\"WH001\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"recptDate\":1662566400000,\"recptCode\":\"R20220908003\",\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"createTime\":1662605953875,\"warehouseId\":200,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:59:13');
INSERT INTO `sys_oper_log` VALUES (401, '物料入库单行', 1, 'com.ktg.mes.wm.controller.WmItemRecptLineController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/itemrecptline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IFTT2022090805\",\"recptId\":201,\"warehouseName\":\"中央仓库\",\"quantityRecived\":10,\"warehouseCode\":\"WH001\",\"itemName\":\"螺丝扣\",\"unitOfMeasure\":\"piece\",\"lineId\":202,\"params\":{},\"itemId\":201,\"createTime\":1662605968806,\"warehouseId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:59:28');
INSERT INTO `sys_oper_log` VALUES (402, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.edit()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt', '127.0.0.1', '内网IP', '{\"recptName\":\"20220908三号单\",\"recptId\":201,\"vendorId\":200,\"remark\":\"\",\"warehouseName\":\"中央仓库\",\"warehouseCode\":\"WH001\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"updateBy\":\"\",\"recptDate\":1662566400000,\"recptCode\":\"R20220908003\",\"updateTime\":1662605973616,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662605954000,\"warehouseId\":200,\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:59:33');
INSERT INTO `sys_oper_log` VALUES (403, '物料入库单', 2, 'com.ktg.mes.wm.controller.WmItemRecptController.execute()', 'PUT', 1, 'admin', NULL, '/mes/wm/itemrecpt/201', '127.0.0.1', '内网IP', '201', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 10:59:36');
INSERT INTO `sys_oper_log` VALUES (404, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WM_RTVENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=WM_RTVENDOR_CODE}', NULL, 1, '未获取到指定类型:[WM_RTVENDOR_CODE]的业务编码生成规则', '2022-09-08 10:59:52');
INSERT INTO `sys_oper_log` VALUES (405, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/MACHINERY_CODE', '127.0.0.1', '内网IP', '{ruleCode=MACHINERY_CODE}', '\"M0003\"', 0, NULL, '2022-09-08 11:08:33');
INSERT INTO `sys_oper_log` VALUES (406, '设备', 1, 'com.ktg.mes.dv.controller.DvMachineryController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0003\",\"machineryId\":202,\"machineryName\":\"组装M0003\",\"params\":{},\"createTime\":1662606524974,\"machineryTypeId\":202,\"workshopId\":200,\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:08:44');
INSERT INTO `sys_oper_log` VALUES (407, '设备', 2, 'com.ktg.mes.dv.controller.DvMachineryController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0003\",\"machineryId\":202,\"machineryName\":\"组装M0003\",\"machinerySpec\":\"1\",\"remark\":\"\",\"updateTime\":1662606529675,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662606525000,\"updateBy\":\"\",\"machineryTypeId\":202,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:08:49');
INSERT INTO `sys_oper_log` VALUES (408, '设备', 2, 'com.ktg.mes.dv.controller.DvMachineryController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0003\",\"machineryId\":202,\"machineryName\":\"组装M0003\",\"machinerySpec\":\"1\",\"remark\":\"\",\"updateTime\":1662606534334,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662606525000,\"updateBy\":\"\",\"machineryTypeId\":202,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:08:54');
INSERT INTO `sys_oper_log` VALUES (409, '设备', 2, 'com.ktg.mes.dv.controller.DvMachineryController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0001\",\"machineryId\":200,\"machineryName\":\"清洗M0001\",\"machinerySpec\":\"1\",\"remark\":\"1\",\"updateTime\":1662606538934,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662534366000,\"updateBy\":\"\",\"machineryTypeId\":203,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:08:58');
INSERT INTO `sys_oper_log` VALUES (410, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/SUBJECT_CODE', '127.0.0.1', '内网IP', '{ruleCode=SUBJECT_CODE}', NULL, 1, '未获取到指定类型:[SUBJECT_CODE]的业务编码生成规则', '2022-09-08 11:09:30');
INSERT INTO `sys_oper_log` VALUES (411, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WM_RTVENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=WM_RTVENDOR_CODE}', NULL, 1, '未获取到指定类型:[WM_RTVENDOR_CODE]的业务编码生成规则', '2022-09-08 11:10:12');
INSERT INTO `sys_oper_log` VALUES (412, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"WM_RTVENDOR_CODE\",\"createBy\":\"admin\",\"ruleName\":\"供应商退货单编码\",\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:11:03');
INSERT INTO `sys_oper_log` VALUES (413, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"fixCharacter\":\"RTV\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":213,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:11:25');
INSERT INTO `sys_oper_log` VALUES (414, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMdd\",\"partCode\":\"DATE\",\"params\":{},\"partIndex\":2,\"partName\":\"日期\",\"createBy\":\"admin\",\"ruleId\":213,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:11:43');
INSERT INTO `sys_oper_log` VALUES (415, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":213,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:12:09');
INSERT INTO `sys_oper_log` VALUES (416, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WM_RTVENDOR_CODE', '127.0.0.1', '内网IP', '{ruleCode=WM_RTVENDOR_CODE}', '\"RTV20220908001\"', 0, NULL, '2022-09-08 11:12:24');
INSERT INTO `sys_oper_log` VALUES (417, '供应商退货', 1, 'com.ktg.mes.wm.controller.WmRtVendorController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/rtvendor', '127.0.0.1', '内网IP', '{\"rtCode\":\"RTV20220908001\",\"rtId\":200,\"vendorId\":200,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"vendorCode\":\"V00002\",\"vendorNick\":\"南通XXX\",\"createTime\":1662606791388,\"rtDate\":1662566400000,\"rtName\":\"螺丝扣退货\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:13:11');
INSERT INTO `sys_oper_log` VALUES (418, '供应商退货行', 1, 'com.ktg.mes.wm.controller.WmRtVendorLineController.add()', 'POST', 1, 'admin', NULL, '/mes/wm/rtvendorline', '127.0.0.1', '内网IP', '{\"itemCode\":\"IFTT2022090805\",\"rtId\":200,\"warehouseName\":\"中央仓库\",\"warehouseCode\":\"WH001\",\"itemName\":\"螺丝扣\",\"materialStockId\":201,\"unitOfMeasure\":\"piece\",\"quantityRted\":5,\"lineId\":200,\"params\":{},\"itemId\":201,\"createTime\":1662606814975,\"warehouseId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:13:35');
INSERT INTO `sys_oper_log` VALUES (419, '供应商退货', 2, 'com.ktg.mes.wm.controller.WmRtVendorController.edit()', 'PUT', 1, 'admin', NULL, '/mes/wm/rtvendor', '127.0.0.1', '内网IP', '{\"rtCode\":\"RTV20220908001\",\"rtId\":200,\"vendorId\":200,\"remark\":\"\",\"updateTime\":1662606820122,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"attr4\":0,\"attr3\":0,\"vendorCode\":\"V00002\",\"createBy\":\"\",\"vendorNick\":\"南通XXX\",\"createTime\":1662606791000,\"updateBy\":\"\",\"rtDate\":1662566400000,\"rtName\":\"螺丝扣退货\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:13:40');
INSERT INTO `sys_oper_log` VALUES (420, '供应商退货单', 2, 'com.ktg.mes.wm.controller.WmRtVendorController.execute()', 'PUT', 1, 'admin', NULL, '/mes/wm/rtvendor/200', '127.0.0.1', '内网IP', '200', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 11:13:43');
INSERT INTO `sys_oper_log` VALUES (421, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/SUBJECT_CODE', '127.0.0.1', '内网IP', '{ruleCode=SUBJECT_CODE}', NULL, 1, '未获取到指定类型:[SUBJECT_CODE]的业务编码生成规则', '2022-09-08 11:16:03');
INSERT INTO `sys_oper_log` VALUES (422, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/SUBJECT_CODE', '127.0.0.1', '内网IP', '{ruleCode=SUBJECT_CODE}', NULL, 1, '未获取到指定类型:[SUBJECT_CODE]的业务编码生成规则', '2022-09-08 11:50:24');
INSERT INTO `sys_oper_log` VALUES (423, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/SUBJECT_CODE', '127.0.0.1', '内网IP', '{ruleCode=SUBJECT_CODE}', NULL, 1, '未获取到指定类型:[SUBJECT_CODE]的业务编码生成规则', '2022-09-08 15:24:10');
INSERT INTO `sys_oper_log` VALUES (424, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"SUBJECT_CODE\",\"createBy\":\"admin\",\"ruleName\":\"设备点检保养项目编码\",\"enableFlag\":\"Y\",\"maxLength\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:24:43');
INSERT INTO `sys_oper_log` VALUES (425, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"fixCharacter\":\"SUB\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"固定前缀\",\"createBy\":\"admin\",\"ruleId\":214,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:25:08');
INSERT INTO `sys_oper_log` VALUES (426, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":214,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:25:30');
INSERT INTO `sys_oper_log` VALUES (427, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/SUBJECT_CODE', '127.0.0.1', '内网IP', '{ruleCode=SUBJECT_CODE}', '\"SUB001\"', 0, NULL, '2022-09-08 15:25:36');
INSERT INTO `sys_oper_log` VALUES (428, '设备点检保养项目', 1, 'com.ktg.mes.dv.controller.DvSubjectController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/dvsubject', '127.0.0.1', '内网IP', '{\"params\":{},\"subjectType\":\"MAINTEN\",\"subjectId\":200,\"subjectContent\":\"冲床无明显摩擦声\",\"createTime\":1662622504372,\"enableFlag\":\"Y\",\"subjectCode\":\"SUB001\",\"subjectName\":\"润滑\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:35:04');
INSERT INTO `sys_oper_log` VALUES (429, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CHECKPLAN_CODE', '127.0.0.1', '内网IP', '{ruleCode=CHECKPLAN_CODE}', NULL, 1, '未获取到指定类型:[CHECKPLAN_CODE]的业务编码生成规则', '2022-09-08 15:35:23');
INSERT INTO `sys_oper_log` VALUES (430, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"CHECKPLAN_CODE\",\"createBy\":\"admin\",\"ruleName\":\"点检编码规则\",\"enableFlag\":\"Y\",\"maxLength\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:36:00');
INSERT INTO `sys_oper_log` VALUES (431, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"fixCharacter\":\"PLAN\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":215,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:36:25');
INSERT INTO `sys_oper_log` VALUES (432, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"dateFormat\":\"yyyy\",\"partCode\":\"YEAR\",\"params\":{},\"partIndex\":2,\"partName\":\"年份\",\"createBy\":\"admin\",\"ruleId\":215,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:36:42');
INSERT INTO `sys_oper_log` VALUES (433, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"YEAR\",\"ruleId\":215,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:37:05');
INSERT INTO `sys_oper_log` VALUES (434, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CHECKPLAN_CODE', '127.0.0.1', '内网IP', '{ruleCode=CHECKPLAN_CODE}', '\"PLAN2022001\"', 0, NULL, '2022-09-08 15:37:14');
INSERT INTO `sys_oper_log` VALUES (435, '设备点检计划头', 1, 'com.ktg.mes.dv.controller.DvCheckPlanController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/checkplan', '127.0.0.1', '内网IP', '{\"planType\":\"MAINTEN\",\"endDate\":1672416000000,\"planName\":\"2022年注塑机保养计划\",\"params\":{},\"planCode\":\"PLAN2022001\",\"cycleType\":\"MONTH\",\"createTime\":1662622680243,\"planId\":200,\"cycleCount\":1,\"startDate\":1640966400000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:38:00');
INSERT INTO `sys_oper_log` VALUES (436, '点检设备', 1, 'com.ktg.mes.dv.controller.DvCheckMachineryController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/checkmachinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0002\",\"machineryId\":201,\"machineryName\":\"组装M0002\",\"machinerySpec\":\"1\",\"remark\":\"1\",\"updateTime\":1662534411000,\"params\":{},\"attr4\":0,\"attr3\":0,\"recordId\":200,\"createBy\":\"\",\"createTime\":1662622691933,\"updateBy\":\"\",\"planId\":200,\"machineryBrand\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:38:11');
INSERT INTO `sys_oper_log` VALUES (437, '设备点检计划头', 2, 'com.ktg.mes.dv.controller.DvCheckPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/checkplan', '127.0.0.1', '内网IP', '{\"planType\":\"MAINTEN\",\"endDate\":1672416000000,\"planName\":\"2022年注塑机保养计划\",\"remark\":\"\",\"updateTime\":1662622704323,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022001\",\"attr3\":0,\"cycleType\":\"MONTH\",\"createBy\":\"\",\"createTime\":1662622680000,\"updateBy\":\"\",\"planId\":200,\"cycleCount\":1,\"startDate\":1640966400000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:38:24');
INSERT INTO `sys_oper_log` VALUES (438, '点检项目', 1, 'com.ktg.mes.dv.controller.DvCheckSubjectController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/checksubject', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"params\":{},\"subjectType\":\"MAINTEN\",\"attr4\":0,\"subjectId\":200,\"attr3\":0,\"recordId\":200,\"createBy\":\"\",\"subjectContent\":\"冲床无明显摩擦声\",\"createTime\":1662622797894,\"updateBy\":\"\",\"planId\":200,\"subjectCode\":\"SUB001\",\"subjectName\":\"润滑\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:39:57');
INSERT INTO `sys_oper_log` VALUES (439, '设备点检计划头', 2, 'com.ktg.mes.dv.controller.DvCheckPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/checkplan', '127.0.0.1', '内网IP', '{\"planType\":\"MAINTEN\",\"endDate\":1672416000000,\"planName\":\"2022年注塑机保养计划\",\"remark\":\"\",\"updateTime\":1662622802941,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022001\",\"attr3\":0,\"cycleType\":\"MONTH\",\"createBy\":\"\",\"createTime\":1662622680000,\"updateBy\":\"\",\"planId\":200,\"cycleCount\":1,\"startDate\":1640966400000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:40:02');
INSERT INTO `sys_oper_log` VALUES (440, '设备点检计划头', 2, 'com.ktg.mes.dv.controller.DvCheckPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/checkplan', '127.0.0.1', '内网IP', '{\"planType\":\"MAINTEN\",\"endDate\":1672416000000,\"planName\":\"2022年注塑机保养计划\",\"remark\":\"\",\"updateTime\":1662622805985,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022001\",\"attr3\":0,\"cycleType\":\"MONTH\",\"createBy\":\"\",\"createTime\":1662622680000,\"updateBy\":\"\",\"planId\":200,\"cycleCount\":1,\"startDate\":1640966400000,\"status\":\"FINISHED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:40:06');
INSERT INTO `sys_oper_log` VALUES (441, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/SUBJECT_CODE', '127.0.0.1', '内网IP', '{ruleCode=SUBJECT_CODE}', '\"SUB002\"', 0, NULL, '2022-09-08 15:40:30');
INSERT INTO `sys_oper_log` VALUES (442, '设备点检保养项目', 1, 'com.ktg.mes.dv.controller.DvSubjectController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/dvsubject', '127.0.0.1', '内网IP', '{\"params\":{},\"subjectType\":\"CHECK\",\"subjectId\":201,\"subjectContent\":\"这是一个测试\",\"createTime\":1662622837418,\"enableFlag\":\"Y\",\"subjectCode\":\"SUB002\",\"subjectName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:40:37');
INSERT INTO `sys_oper_log` VALUES (443, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', NULL, 1, '未获取到指定类型:[WORKORDER_CODE]的业务编码生成规则', '2022-09-08 15:41:39');
INSERT INTO `sys_oper_log` VALUES (444, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"WORKORDER_CODE\",\"createBy\":\"admin\",\"ruleName\":\"生产工单编码规则\",\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:42:13');
INSERT INTO `sys_oper_log` VALUES (445, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"MO\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":216,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:42:35');
INSERT INTO `sys_oper_log` VALUES (446, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMdd\",\"partCode\":\"DATEPART\",\"params\":{},\"partIndex\":2,\"partName\":\"年月日部分\",\"createBy\":\"admin\",\"ruleId\":216,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:42:56');
INSERT INTO `sys_oper_log` VALUES (447, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"DAY\",\"ruleId\":216,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:43:22');
INSERT INTO `sys_oper_log` VALUES (448, '更新物料编码', 2, 'com.ktg.web.controller.system.SysAutoCodePartController.update()', 'PUT', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMdd\",\"partId\":237,\"partCode\":\"DATEPART\",\"params\":{},\"partIndex\":2,\"partName\":\"年月日\",\"createBy\":\"admin\",\"createTime\":1662622976000,\"updateBy\":\"admin\",\"ruleId\":216,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:43:25');
INSERT INTO `sys_oper_log` VALUES (449, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKORDER_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKORDER_CODE}', '\"MO202209080001\"', 0, NULL, '2022-09-08 15:43:31');
INSERT INTO `sys_oper_log` VALUES (450, '生产工单', 1, 'com.ktg.mes.pro.controller.ProWorkorderController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"productSpc\":\"黑色\",\"productName\":\"A型螺柱+螺丝扣\",\"sourceCode\":\"PO202205101001\",\"workorderId\":200,\"children\":[],\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"requestDate\":1662566400000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":10000,\"productId\":202,\"unitOfMeasure\":\"piece\",\"params\":{},\"parentId\":0,\"productCode\":\"IFTT2022090842\",\"workorderCode\":\"MO202209080001\",\"createTime\":1662623135920,\"clientCode\":\"J22490712\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', 0, NULL, '2022-09-08 15:45:35');
INSERT INTO `sys_oper_log` VALUES (451, '生产工单', 2, 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"productSpc\":\"黑色\",\"productName\":\"A型螺柱+螺丝扣\",\"sourceCode\":\"PO202205101001\",\"workorderId\":200,\"children\":[],\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"requestDate\":1662566400000,\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":10000,\"productId\":202,\"unitOfMeasure\":\"piece\",\"updateTime\":1662623152481,\"params\":{},\"parentId\":0,\"productCode\":\"IFTT2022090842\",\"workorderCode\":\"MO202209080001\",\"clientCode\":\"J22490712\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:45:52');
INSERT INTO `sys_oper_log` VALUES (452, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ROUTE_CODE', '127.0.0.1', '内网IP', '{ruleCode=ROUTE_CODE}', NULL, 1, '未获取到指定类型:[ROUTE_CODE]的业务编码生成规则', '2022-09-08 15:46:36');
INSERT INTO `sys_oper_log` VALUES (453, '生产工单', 2, 'com.ktg.mes.pro.controller.ProWorkorderController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/workorder', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"remark\":\"\",\"productSpc\":\"黑色\",\"productName\":\"A型螺柱+螺丝扣\",\"sourceCode\":\"PO202205101001\",\"workorderId\":200,\"children\":[],\"updateBy\":\"\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"requestDate\":1663171200000,\"ancestors\":\"0\",\"orderSource\":\"ORDER\",\"clientId\":200,\"quantity\":10000,\"productId\":202,\"unitOfMeasure\":\"piece\",\"updateTime\":1662623642634,\"params\":{},\"attr4\":0,\"parentId\":0,\"attr3\":0,\"createBy\":\"\",\"productCode\":\"IFTT2022090842\",\"workorderCode\":\"MO202209080001\",\"createTime\":1662623136000,\"clientCode\":\"J22490712\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:54:02');
INSERT INTO `sys_oper_log` VALUES (454, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ROUTE_CODE', '127.0.0.1', '内网IP', '{ruleCode=ROUTE_CODE}', NULL, 1, '未获取到指定类型:[ROUTE_CODE]的业务编码生成规则', '2022-09-08 15:55:42');
INSERT INTO `sys_oper_log` VALUES (455, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"ROUTE_CODE\",\"createBy\":\"admin\",\"ruleName\":\"工艺流程编码规则\",\"enableFlag\":\"Y\",\"maxLength\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:56:41');
INSERT INTO `sys_oper_log` VALUES (456, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"R\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":217,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:56:58');
INSERT INTO `sys_oper_log` VALUES (457, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"seriaStep\":1,\"seriaStartNo\":1000,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":217,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:57:27');
INSERT INTO `sys_oper_log` VALUES (458, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/ROUTE_CODE', '127.0.0.1', '内网IP', '{ruleCode=ROUTE_CODE}', '\"R1000\"', 0, NULL, '2022-09-08 15:57:33');
INSERT INTO `sys_oper_log` VALUES (459, '工艺路线', 1, 'com.ktg.mes.pro.controller.ProRouteController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"R1000\",\"params\":{},\"routeDesc\":\"测试工艺路线\",\"routeName\":\"测试工艺路线\",\"routeId\":200,\"createTime\":1662623872477,\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:57:52');
INSERT INTO `sys_oper_log` VALUES (460, '工艺组成', 1, 'com.ktg.mes.pro.controller.ProRouteProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":1,\"orderNum\":1,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":200,\"routeId\":200,\"createTime\":1662623933095,\"processId\":200,\"processName\":\"组装\",\"processCode\":\"PROCESS001\",\"nextProcessId\":0,\"colorCode\":\"#00AEF3\",\"linkType\":\"FS\",\"defaultSufTime\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:58:53');
INSERT INTO `sys_oper_log` VALUES (461, '工艺组成', 1, 'com.ktg.mes.pro.controller.ProRouteProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":1,\"orderNum\":2,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":201,\"routeId\":200,\"createTime\":1662623956784,\"processId\":201,\"processName\":\"清洗\",\"processCode\":\"PROCESS002\",\"nextProcessId\":0,\"colorCode\":\"#F3D700\",\"linkType\":\"FS\",\"defaultSufTime\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:59:16');
INSERT INTO `sys_oper_log` VALUES (462, '工艺组成', 1, 'com.ktg.mes.pro.controller.ProRouteProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":3,\"orderNum\":1,\"params\":{},\"routeId\":200,\"processId\":202,\"colorCode\":\"#1400F3\",\"linkType\":\"FS\",\"defaultSufTime\":0}', '{\"msg\":\"序号已存在！\",\"code\":500}', 0, NULL, '2022-09-08 15:59:44');
INSERT INTO `sys_oper_log` VALUES (463, '工艺组成', 1, 'com.ktg.mes.pro.controller.ProRouteProcessController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeprocess', '127.0.0.1', '内网IP', '{\"defaultPreTime\":3,\"orderNum\":3,\"nextProcessName\":\"无\",\"params\":{},\"recordId\":202,\"routeId\":200,\"createTime\":1662623987618,\"processId\":202,\"processName\":\"消毒\",\"processCode\":\"PROCESS003\",\"nextProcessId\":0,\"colorCode\":\"#1400F3\",\"linkType\":\"FS\",\"defaultSufTime\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 15:59:47');
INSERT INTO `sys_oper_log` VALUES (464, '产品制程', 1, 'com.ktg.mes.pro.controller.ProRouteProductController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090842\",\"params\":{},\"recordId\":200,\"itemId\":202,\"itemName\":\"A型螺柱+螺丝扣\",\"routeId\":200,\"createTime\":1662624029991}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:00:30');
INSERT INTO `sys_oper_log` VALUES (465, '产品制程', 1, 'com.ktg.mes.pro.controller.ProRouteProductController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090851\",\"params\":{},\"recordId\":201,\"itemId\":200,\"itemName\":\"基础接地摞柱\",\"routeId\":200,\"createTime\":1662624043599}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:00:43');
INSERT INTO `sys_oper_log` VALUES (466, '产品制程', 1, 'com.ktg.mes.pro.controller.ProRouteProductController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/routeproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090805\",\"params\":{},\"recordId\":202,\"itemId\":201,\"itemName\":\"螺丝扣\",\"routeId\":200,\"createTime\":1662624049424}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:00:49');
INSERT INTO `sys_oper_log` VALUES (467, '产品制程', 3, 'com.ktg.mes.pro.controller.ProRouteProductController.remove()', 'DELETE', 1, 'admin', NULL, '/mes/pro/routeproduct/201', '127.0.0.1', '内网IP', '{recordIds=201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:01:00');
INSERT INTO `sys_oper_log` VALUES (468, '产品制程', 3, 'com.ktg.mes.pro.controller.ProRouteProductController.remove()', 'DELETE', 1, 'admin', NULL, '/mes/pro/routeproduct/202', '127.0.0.1', '内网IP', '{recordIds=202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:01:02');
INSERT INTO `sys_oper_log` VALUES (469, '工艺路线', 2, 'com.ktg.mes.pro.controller.ProRouteController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/proroute', '127.0.0.1', '内网IP', '{\"routeCode\":\"R1000\",\"remark\":\"\",\"updateTime\":1662624063975,\"params\":{},\"routeDesc\":\"测试工艺路线\",\"attr4\":0,\"attr3\":0,\"routeName\":\"测试工艺路线\",\"createBy\":\"\",\"routeId\":200,\"createTime\":1662623872000,\"updateBy\":\"\",\"enableFlag\":\"Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:01:03');
INSERT INTO `sys_oper_log` VALUES (470, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', NULL, 1, '未获取到指定类型:[TASK_CODE]的业务编码生成规则', '2022-09-08 16:04:00');
INSERT INTO `sys_oper_log` VALUES (471, '生产任务', 1, 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"duration\":6,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0004\",\"workorderId\":200,\"processId\":200,\"processName\":\"组装\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":200,\"startTime\":1662624000000,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"specification\":\"黑色\",\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"itemId\":202,\"workorderCode\":\"MO202209080001\",\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS001\",\"colorCode\":\"#00AEF3\",\"endTime\":1662796800000}', NULL, 1, '未获取到指定类型:[TASK_CODE]的业务编码生成规则', '2022-09-08 16:04:00');
INSERT INTO `sys_oper_log` VALUES (472, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', NULL, 1, '未获取到指定类型:[TASK_CODE]的业务编码生成规则', '2022-09-08 16:04:04');
INSERT INTO `sys_oper_log` VALUES (473, '生产任务', 1, 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"duration\":6,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0004\",\"workorderId\":200,\"processId\":200,\"processName\":\"组装\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":200,\"startTime\":1662624000000,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"specification\":\"黑色\",\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"itemId\":202,\"workorderCode\":\"MO202209080001\",\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS001\",\"colorCode\":\"#00AEF3\",\"endTime\":1662796800000}', NULL, 1, '未获取到指定类型:[TASK_CODE]的业务编码生成规则', '2022-09-08 16:04:04');
INSERT INTO `sys_oper_log` VALUES (474, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', NULL, 1, '未获取到指定类型:[TASK_CODE]的业务编码生成规则', '2022-09-08 16:04:30');
INSERT INTO `sys_oper_log` VALUES (475, '生产任务', 1, 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"duration\":6,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0004\",\"workorderId\":200,\"processId\":200,\"processName\":\"组装\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":200,\"startTime\":1662624000000,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"specification\":\"黑色\",\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"itemId\":202,\"workorderCode\":\"MO202209080001\",\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS001\",\"colorCode\":\"#00AEF3\",\"endTime\":1662796800000}', NULL, 1, '未获取到指定类型:[TASK_CODE]的业务编码生成规则', '2022-09-08 16:04:30');
INSERT INTO `sys_oper_log` VALUES (476, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"TASK_CODE\",\"createBy\":\"admin\",\"ruleName\":\"生产任务编码规则\",\"enableFlag\":\"Y\",\"maxLength\":12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:04:48');
INSERT INTO `sys_oper_log` VALUES (477, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"fixCharacter\":\"TASK\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"固定前缀\",\"createBy\":\"admin\",\"ruleId\":218,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:05:13');
INSERT INTO `sys_oper_log` VALUES (478, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"dateFormat\":\"yyyy\",\"partCode\":\"YEAR\",\"params\":{},\"partIndex\":2,\"partName\":\"年份\",\"createBy\":\"admin\",\"ruleId\":218,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:05:29');
INSERT INTO `sys_oper_log` VALUES (479, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"YEAR\",\"ruleId\":218,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:05:49');
INSERT INTO `sys_oper_log` VALUES (480, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20220001\"', 0, NULL, '2022-09-08 16:06:31');
INSERT INTO `sys_oper_log` VALUES (481, '生产任务', 1, 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"duration\":6,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0004\",\"workorderId\":200,\"taskCode\":\"TASK20220001\",\"processId\":200,\"processName\":\"组装\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":200,\"startTime\":1662624000000,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"specification\":\"黑色\",\"workstationName\":\"去浇口工装台#01\",\"params\":{},\"itemId\":202,\"workorderCode\":\"MO202209080001\",\"createTime\":1662624391808,\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS001\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A型螺柱+螺丝扣【3000】piece\",\"endTime\":1662796800000,\"taskId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:06:31');
INSERT INTO `sys_oper_log` VALUES (482, '生产任务', 2, 'com.ktg.mes.pro.controller.ProTaskController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"remark\":\"\",\"quantityChanged\":0,\"duration\":6,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0004\",\"workorderId\":200,\"taskCode\":\"TASK20220001\",\"processId\":200,\"processName\":\"组装\",\"updateBy\":\"\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":200,\"startTime\":1662624000000,\"quantityProduced\":0,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"quantityQuanlify\":0,\"specification\":\"黑色\",\"workstationName\":\"去浇口工装台#01\",\"updateTime\":1662624403672,\"params\":{},\"attr4\":0,\"attr3\":0,\"itemId\":202,\"createBy\":\"\",\"quantityUnquanlify\":0,\"workorderCode\":\"MO202209080001\",\"createTime\":1662624392000,\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS001\",\"colorCode\":\"#00AEF3\",\"taskName\":\"A型螺柱+螺丝扣【3000】piece\",\"endTime\":1662796800000,\"taskId\":200,\"status\":\"NORMARL\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:06:43');
INSERT INTO `sys_oper_log` VALUES (483, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20220002\"', 0, NULL, '2022-09-08 16:07:26');
INSERT INTO `sys_oper_log` VALUES (484, '生产任务', 1, 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"duration\":1,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0005\",\"workorderId\":200,\"taskCode\":\"TASK20220002\",\"processId\":201,\"processName\":\"清洗\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":201,\"startTime\":1662739200000,\"clientId\":200,\"quantity\":1,\"unitOfMeasure\":\"piece\",\"specification\":\"黑色\",\"workstationName\":\"去浇口工作台#02\",\"params\":{},\"itemId\":202,\"workorderCode\":\"MO202209080001\",\"createTime\":1662624446445,\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS002\",\"colorCode\":\"#F3D700\",\"taskName\":\"A型螺柱+螺丝扣【1】piece\",\"endTime\":1662768000000,\"taskId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:07:26');
INSERT INTO `sys_oper_log` VALUES (485, '生产任务', 2, 'com.ktg.mes.pro.controller.ProTaskController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"duration\":6,\"startTime\":1662624000000,\"updateTime\":1662624529634,\"params\":{},\"endTime\":1662796800000,\"taskId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:08:49');
INSERT INTO `sys_oper_log` VALUES (486, '生产任务', 2, 'com.ktg.mes.pro.controller.ProTaskController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"duration\":1,\"startTime\":1662768000000,\"updateTime\":1662624529634,\"params\":{},\"endTime\":1662796800000,\"taskId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:08:49');
INSERT INTO `sys_oper_log` VALUES (487, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/WORKSTATION_CODE', '127.0.0.1', '内网IP', '{ruleCode=WORKSTATION_CODE}', '\"WS0008\"', 0, NULL, '2022-09-08 16:16:57');
INSERT INTO `sys_oper_log` VALUES (488, '工作站', 1, 'com.ktg.mes.md.controller.MdWorkstationController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"消毒工作台#03\",\"params\":{},\"workstationCode\":\"WS0008\",\"createTime\":1662625041187,\"processId\":202,\"processName\":\"消毒\",\"processCode\":\"PROCESS003\",\"workstationId\":202,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:17:21');
INSERT INTO `sys_oper_log` VALUES (489, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"清洗工作台#02\",\"remark\":\"\",\"updateTime\":1662625052524,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0005\",\"createTime\":1662532028000,\"processId\":201,\"processName\":\"清洗\",\"updateBy\":\"\",\"processCode\":\"PROCESS002\",\"workstationId\":201,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:17:32');
INSERT INTO `sys_oper_log` VALUES (490, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"组装工装台#01\",\"remark\":\"\",\"updateTime\":1662625057823,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0004\",\"createTime\":1662531981000,\"processId\":200,\"processName\":\"组装\",\"updateBy\":\"\",\"processCode\":\"PROCESS001\",\"workstationId\":200,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:17:37');
INSERT INTO `sys_oper_log` VALUES (491, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', 'MACHINERY_TYPE_CODE', '\"M_TYPE_010\"', 0, NULL, '2022-09-08 16:18:07');
INSERT INTO `sys_oper_log` VALUES (492, '设备类型', 1, 'com.ktg.mes.dv.controller.DvMachineryTypeController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinerytype', '127.0.0.1', '内网IP', '{\"parentTypeId\":1,\"params\":{},\"children\":[],\"createTime\":1662625087395,\"machineryTypeId\":204,\"ancestors\":\"0,1\",\"machineryTypeCode\":\"M_TYPE_010\",\"enableFlag\":\"Y\",\"machineryTypeName\":\"消毒机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:18:07');
INSERT INTO `sys_oper_log` VALUES (493, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/MACHINERY_CODE', '127.0.0.1', '内网IP', '{ruleCode=MACHINERY_CODE}', '\"M0004\"', 0, NULL, '2022-09-08 16:18:25');
INSERT INTO `sys_oper_log` VALUES (494, '设备', 1, 'com.ktg.mes.dv.controller.DvMachineryController.add()', 'POST', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0004\",\"machineryId\":203,\"machineryName\":\"消毒M0004\",\"params\":{},\"createTime\":1662625120408,\"machineryTypeId\":204,\"workshopId\":200,\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:18:40');
INSERT INTO `sys_oper_log` VALUES (495, '设备', 2, 'com.ktg.mes.dv.controller.DvMachineryController.edit()', 'PUT', 1, 'admin', NULL, '/mes/dv/machinery', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0004\",\"machineryId\":203,\"machineryName\":\"消毒M0004\",\"machinerySpec\":\"1\",\"remark\":\"\",\"updateTime\":1662625124319,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662625120000,\"updateBy\":\"\",\"machineryTypeId\":204,\"workshopId\":200,\"machineryBrand\":\"1\",\"status\":\"STOP\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:18:44');
INSERT INTO `sys_oper_log` VALUES (496, '设备资源', 1, 'com.ktg.mes.md.controller.MdWorkstationMachineController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationmachine', '127.0.0.1', '内网IP', '{\"machineryCode\":\"M0004\",\"machineryId\":203,\"machineryName\":\"消毒M0004\",\"remark\":\"\",\"updateTime\":1662625124000,\"params\":{},\"attr4\":0,\"attr3\":0,\"recordId\":203,\"createBy\":\"\",\"createTime\":1662625136556,\"updateBy\":\"\",\"workstationId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:18:56');
INSERT INTO `sys_oper_log` VALUES (497, '人力资源', 1, 'com.ktg.mes.md.controller.MdWorkstationWorkerController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationworker', '127.0.0.1', '内网IP', '{\"quantity\":1,\"postId\":4,\"params\":{},\"recordId\":202,\"createTime\":1662625142524,\"postName\":\"普通员工\",\"workstationId\":202,\"postCode\":\"user\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:19:02');
INSERT INTO `sys_oper_log` VALUES (498, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"消毒工作台#03\",\"remark\":\"\",\"updateTime\":1662625155299,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0008\",\"createTime\":1662625041000,\"processId\":202,\"processName\":\"消毒\",\"updateBy\":\"\",\"processCode\":\"PROCESS003\",\"workstationId\":202,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:19:15');
INSERT INTO `sys_oper_log` VALUES (499, '工装夹具资源', 1, 'com.ktg.mes.md.controller.MdWorkstationToolController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationtool', '127.0.0.1', '内网IP', '{\"quantity\":1,\"toolTypeId\":200,\"params\":{},\"recordId\":200,\"createTime\":1662625167467,\"workstationId\":201,\"toolTypeName\":\"刀具\",\"toolTypeCode\":\"TT001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:19:27');
INSERT INTO `sys_oper_log` VALUES (500, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"清洗工作台#02\",\"remark\":\"\",\"updateTime\":1662625168798,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0005\",\"createTime\":1662532028000,\"processId\":201,\"processName\":\"清洗\",\"updateBy\":\"\",\"processCode\":\"PROCESS002\",\"workstationId\":201,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:19:28');
INSERT INTO `sys_oper_log` VALUES (501, '工装夹具资源', 1, 'com.ktg.mes.md.controller.MdWorkstationToolController.add()', 'POST', 1, 'admin', NULL, '/mes/md/workstationtool', '127.0.0.1', '内网IP', '{\"quantity\":1,\"toolTypeId\":201,\"params\":{},\"recordId\":201,\"createTime\":1662625176224,\"workstationId\":200,\"toolTypeName\":\"夹具\",\"toolTypeCode\":\"TT002\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:19:36');
INSERT INTO `sys_oper_log` VALUES (502, '工作站', 2, 'com.ktg.mes.md.controller.MdWorkstationController.edit()', 'PUT', 1, 'admin', NULL, '/mes/md/workstation', '127.0.0.1', '内网IP', '{\"workshopName\":\"注塑车间\",\"workstationName\":\"组装工装台#01\",\"remark\":\"\",\"updateTime\":1662625177562,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"workstationCode\":\"WS0004\",\"createTime\":1662531981000,\"processId\":200,\"processName\":\"组装\",\"updateBy\":\"\",\"processCode\":\"PROCESS001\",\"workstationId\":200,\"workshopId\":200,\"workshopCode\":\"WS001\",\"enableFlag\":\"Y\",\"workstationAddress\":\"A车间角落\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:19:37');
INSERT INTO `sys_oper_log` VALUES (503, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', 'TASK_CODE', '\"TASK20220003\"', 0, NULL, '2022-09-08 16:20:04');
INSERT INTO `sys_oper_log` VALUES (504, '生产任务', 1, 'com.ktg.mes.pro.controller.ProTaskController.add()', 'POST', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"duration\":1,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0008\",\"workorderId\":200,\"taskCode\":\"TASK20220003\",\"processId\":202,\"processName\":\"消毒\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":202,\"startTime\":1662652800000,\"clientId\":200,\"quantity\":1,\"unitOfMeasure\":\"piece\",\"specification\":\"黑色\",\"workstationName\":\"消毒工作台#03\",\"params\":{},\"itemId\":202,\"workorderCode\":\"MO202209080001\",\"createTime\":1662625204895,\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS003\",\"colorCode\":\"#1400F3\",\"taskName\":\"A型螺柱+螺丝扣【1】piece\",\"endTime\":1662681600000,\"taskId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:20:04');
INSERT INTO `sys_oper_log` VALUES (505, '生产任务', 2, 'com.ktg.mes.pro.controller.ProTaskController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"remark\":\"\",\"quantityChanged\":0,\"duration\":1,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0005\",\"workorderId\":200,\"taskCode\":\"TASK20220002\",\"processId\":201,\"processName\":\"清洗\",\"updateBy\":\"\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":201,\"startTime\":1662768000000,\"quantityProduced\":0,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"quantityQuanlify\":0,\"specification\":\"黑色\",\"workstationName\":\"去浇口工作台#02\",\"updateTime\":1662625220320,\"params\":{},\"attr4\":0,\"attr3\":0,\"itemId\":202,\"createBy\":\"\",\"quantityUnquanlify\":0,\"workorderCode\":\"MO202209080001\",\"createTime\":1662624446000,\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS002\",\"colorCode\":\"#F3D700\",\"taskName\":\"A型螺柱+螺丝扣【1】piece\",\"endTime\":1662796800000,\"taskId\":201,\"status\":\"NORMARL\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:20:20');
INSERT INTO `sys_oper_log` VALUES (506, '生产任务', 2, 'com.ktg.mes.pro.controller.ProTaskController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"clientName\":\"比亚迪股份有限公司\",\"itemCode\":\"IFTT2022090842\",\"remark\":\"\",\"quantityChanged\":0,\"duration\":1,\"itemName\":\"A型螺柱+螺丝扣\",\"workstationCode\":\"WS0008\",\"workorderId\":200,\"taskCode\":\"TASK20220003\",\"processId\":202,\"processName\":\"消毒\",\"updateBy\":\"\",\"workorderName\":\"【A型螺柱+螺丝扣】10000个\",\"workstationId\":202,\"startTime\":1662652800000,\"quantityProduced\":0,\"clientId\":200,\"quantity\":3000,\"unitOfMeasure\":\"piece\",\"quantityQuanlify\":0,\"specification\":\"黑色\",\"workstationName\":\"消毒工作台#03\",\"updateTime\":1662625226254,\"params\":{},\"attr4\":0,\"attr3\":0,\"itemId\":202,\"createBy\":\"\",\"quantityUnquanlify\":0,\"workorderCode\":\"MO202209080001\",\"createTime\":1662625205000,\"clientCode\":\"J22490712\",\"processCode\":\"PROCESS003\",\"colorCode\":\"#1400F3\",\"taskName\":\"A型螺柱+螺丝扣【1】piece\",\"endTime\":1662681600000,\"taskId\":202,\"status\":\"NORMARL\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:20:26');
INSERT INTO `sys_oper_log` VALUES (507, '生产任务', 2, 'com.ktg.mes.pro.controller.ProTaskController.edit()', 'PUT', 1, 'admin', NULL, '/mes/pro/protask', '127.0.0.1', '内网IP', '{\"duration\":1,\"startTime\":1662796800000,\"updateTime\":1662625245584,\"params\":{},\"endTime\":1662825600000,\"taskId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:20:45');
INSERT INTO `sys_oper_log` VALUES (508, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', 'DEFECT_CODE', NULL, 1, '未获取到指定类型:[DEFECT_CODE]的业务编码生成规则', '2022-09-08 16:35:45');
INSERT INTO `sys_oper_log` VALUES (509, '常见缺陷', 1, 'com.ktg.mes.qc.controller.QcDefectController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', '{\"defectName\":\"外观缺陷\",\"params\":{},\"indexType\":\"APPEARANCE\",\"defectLevel\":\"MIN\"}', NULL, 1, '未获取到指定类型:[DEFECT_CODE]的业务编码生成规则', '2022-09-08 16:35:45');
INSERT INTO `sys_oper_log` VALUES (510, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"DEFECT_CODE\",\"createBy\":\"admin\",\"ruleName\":\"常见缺陷编码\",\"enableFlag\":\"Y\",\"maxLength\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:36:27');
INSERT INTO `sys_oper_log` VALUES (511, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":2,\"fixCharacter\":\"DF\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":219,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:36:44');
INSERT INTO `sys_oper_log` VALUES (512, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":219,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:37:04');
INSERT INTO `sys_oper_log` VALUES (513, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', 'DEFECT_CODE', '\"DF001\"', 0, NULL, '2022-09-08 16:37:18');
INSERT INTO `sys_oper_log` VALUES (514, '常见缺陷', 1, 'com.ktg.mes.qc.controller.QcDefectController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', '{\"defectName\":\"外观缺陷\",\"params\":{},\"defectCode\":\"DF001\",\"indexType\":\"APPEARANCE\",\"createTime\":1662626238975,\"defectLevel\":\"MIN\",\"defectId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:37:19');
INSERT INTO `sys_oper_log` VALUES (515, '常见缺陷', 2, 'com.ktg.mes.qc.controller.QcDefectController.edit()', 'PUT', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', '{\"defectName\":\"颜色轻微差别\",\"remark\":\"\",\"updateTime\":1662626267429,\"params\":{},\"attr4\":0,\"attr3\":0,\"defectCode\":\"DF001\",\"createBy\":\"\",\"indexType\":\"APPEARANCE\",\"createTime\":1662626239000,\"updateBy\":\"\",\"defectLevel\":\"MIN\",\"defectId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:37:47');
INSERT INTO `sys_oper_log` VALUES (516, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', 'DEFECT_CODE', '\"DF002\"', 0, NULL, '2022-09-08 16:37:55');
INSERT INTO `sys_oper_log` VALUES (517, '常见缺陷', 1, 'com.ktg.mes.qc.controller.QcDefectController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', '{\"defectName\":\"裂纹\",\"params\":{},\"defectCode\":\"DF002\",\"indexType\":\"APPEARANCE\",\"createTime\":1662626275418,\"defectLevel\":\"MAJ\",\"defectId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:37:55');
INSERT INTO `sys_oper_log` VALUES (518, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', 'DEFECT_CODE', '\"DF003\"', 0, NULL, '2022-09-08 16:38:07');
INSERT INTO `sys_oper_log` VALUES (519, '常见缺陷', 1, 'com.ktg.mes.qc.controller.QcDefectController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', '{\"defectName\":\"未焊透\",\"params\":{},\"defectCode\":\"DF003\",\"indexType\":\"APPEARANCE\",\"createTime\":1662626287741,\"defectLevel\":\"CR\",\"defectId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:38:07');
INSERT INTO `sys_oper_log` VALUES (520, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', 'DEFECT_CODE', '\"DF004\"', 0, NULL, '2022-09-08 16:38:28');
INSERT INTO `sys_oper_log` VALUES (521, '常见缺陷', 1, 'com.ktg.mes.qc.controller.QcDefectController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcdefect', '127.0.0.1', '内网IP', '{\"defectName\":\"尺寸不良，外观不良\",\"params\":{},\"defectCode\":\"DF004\",\"indexType\":\"SIZE\",\"createTime\":1662626308345,\"defectLevel\":\"MIN\",\"defectId\":203}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 16:38:28');
INSERT INTO `sys_oper_log` VALUES (522, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', NULL, 1, '未获取到指定类型:[QC_INDEX_CODE]的业务编码生成规则', '2022-09-08 16:38:32');
INSERT INTO `sys_oper_log` VALUES (523, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"QC_INDEX_CODE\",\"createBy\":\"admin\",\"ruleName\":\"检测项编码规则\",\"enableFlag\":\"Y\",\"maxLength\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:21:56');
INSERT INTO `sys_oper_log` VALUES (524, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"I\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":220,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:22:18');
INSERT INTO `sys_oper_log` VALUES (525, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":220,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:22:37');
INSERT INTO `sys_oper_log` VALUES (526, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', '\"I0001\"', 0, NULL, '2022-09-08 17:22:43');
INSERT INTO `sys_oper_log` VALUES (527, '检测项', 1, 'com.ktg.mes.qc.controller.QcIndexController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcindex', '127.0.0.1', '内网IP', '{\"qcTool\":\"目视\",\"indexName\":\"是否破损\",\"indexCode\":\"I0001\",\"params\":{},\"indexType\":\"APPEARANCE\",\"createTime\":1662629049089,\"indexId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:24:09');
INSERT INTO `sys_oper_log` VALUES (528, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', '\"I0002\"', 0, NULL, '2022-09-08 17:24:22');
INSERT INTO `sys_oper_log` VALUES (529, '检测项', 1, 'com.ktg.mes.qc.controller.QcIndexController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcindex', '127.0.0.1', '内网IP', '{\"qcTool\":\"电子秤\",\"indexName\":\"毛重\",\"indexCode\":\"I0002\",\"params\":{},\"indexType\":\"WEIGHT\",\"createTime\":1662629069056,\"indexId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:24:29');
INSERT INTO `sys_oper_log` VALUES (530, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', '\"I0003\"', 0, NULL, '2022-09-08 17:24:36');
INSERT INTO `sys_oper_log` VALUES (531, '检测项', 1, 'com.ktg.mes.qc.controller.QcIndexController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcindex', '127.0.0.1', '内网IP', '{\"qcTool\":\"电子秤\",\"indexName\":\"净重\",\"indexCode\":\"I0003\",\"params\":{},\"indexType\":\"WEIGHT\",\"createTime\":1662629082625,\"indexId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:24:42');
INSERT INTO `sys_oper_log` VALUES (532, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', '\"I0004\"', 0, NULL, '2022-09-08 17:25:13');
INSERT INTO `sys_oper_log` VALUES (533, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', '\"I0005\"', 0, NULL, '2022-09-08 17:25:14');
INSERT INTO `sys_oper_log` VALUES (534, '检测项', 1, 'com.ktg.mes.qc.controller.QcIndexController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcindex', '127.0.0.1', '内网IP', '{\"qcTool\":\"卡尺\",\"indexName\":\"外径\",\"indexCode\":\"I0005\",\"params\":{},\"indexType\":\"SIZE\",\"createTime\":1662629123256,\"indexId\":203}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:25:23');
INSERT INTO `sys_oper_log` VALUES (535, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_INDEX_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_INDEX_CODE}', '\"I0006\"', 0, NULL, '2022-09-08 17:25:28');
INSERT INTO `sys_oper_log` VALUES (536, '检测项', 1, 'com.ktg.mes.qc.controller.QcIndexController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qcindex', '127.0.0.1', '内网IP', '{\"qcTool\":\"卡尺\",\"indexName\":\"内径\",\"indexCode\":\"I0006\",\"params\":{},\"indexType\":\"SIZE\",\"createTime\":1662629133033,\"indexId\":204}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:25:33');
INSERT INTO `sys_oper_log` VALUES (537, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_TEMPLATE_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_TEMPLATE_CODE}', NULL, 1, '未获取到指定类型:[QC_TEMPLATE_CODE]的业务编码生成规则', '2022-09-08 17:27:09');
INSERT INTO `sys_oper_log` VALUES (538, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"QC_TEMPLATE_CODE\",\"createBy\":\"admin\",\"ruleName\":\"检测模板编码规则\",\"enableFlag\":\"Y\",\"maxLength\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:27:40');
INSERT INTO `sys_oper_log` VALUES (539, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"fixCharacter\":\"QCT\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":221,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:27:59');
INSERT INTO `sys_oper_log` VALUES (540, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"dateFormat\":\"yyyy\",\"partCode\":\"YEAR\",\"params\":{},\"partIndex\":2,\"partName\":\"年份\",\"createBy\":\"admin\",\"ruleId\":221,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:28:15');
INSERT INTO `sys_oper_log` VALUES (541, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"YEAR\",\"ruleId\":221,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:28:37');
INSERT INTO `sys_oper_log` VALUES (542, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_TEMPLATE_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_TEMPLATE_CODE}', '\"QCT2022001\"', 0, NULL, '2022-09-08 17:28:42');
INSERT INTO `sys_oper_log` VALUES (543, '检测模板', 1, 'com.ktg.mes.qc.controller.QcTemplateController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/qctemplate', '127.0.0.1', '内网IP', '{\"remark\":\"检验质量\",\"templateCode\":\"QCT2022001\",\"params\":{},\"templateId\":200,\"qcTypes\":\"IQC,OQC,FIRST_CHECK,FINAL_CHECK,REGULAR_CHECK,FQC\",\"createTime\":1662629364978,\"templateName\":\"检验螺丝扣\",\"enableFlag\":\"Y\",\"qcTypesParam\":[\"IQC\",\"OQC\",\"FIRST_CHECK\",\"FINAL_CHECK\",\"REGULAR_CHECK\",\"FQC\"]}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:29:25');
INSERT INTO `sys_oper_log` VALUES (544, '检测模板-检测项', 1, 'com.ktg.mes.qc.controller.QcTemplateIndexController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/templateindex', '127.0.0.1', '内网IP', '{\"qcTool\":\"目视\",\"unitOfMeasure\":\"g\",\"indexName\":\"是否破损\",\"checkMethod\":\"质量合格\",\"indexCode\":\"I0001\",\"remark\":\"检查螺丝扣是否破损\",\"params\":{},\"templateId\":200,\"thresholdMax\":3,\"recordId\":200,\"indexType\":\"APPEARANCE\",\"thresholdMin\":0,\"createTime\":1662629425676,\"standerVal\":8,\"docUrl\":\"螺丝扣\",\"indexId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:30:25');
INSERT INTO `sys_oper_log` VALUES (545, '检测模板-产品', 1, 'com.ktg.mes.qc.controller.QcTemplateProductController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/templateproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090805\",\"params\":{},\"templateId\":200,\"recordId\":200,\"itemId\":201,\"itemName\":\"螺丝扣\",\"crRate\":1,\"createTime\":1662629474472,\"quantityCheck\":1,\"quantityUnqualified\":1,\"minRate\":100,\"majRate\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:31:14');
INSERT INTO `sys_oper_log` VALUES (546, '检测模板-产品', 2, 'com.ktg.mes.qc.controller.QcTemplateProductController.edit()', 'PUT', 1, 'admin', NULL, '/mes/qc/templateproduct', '127.0.0.1', '内网IP', '{\"unitOfMeasure\":\"piece\",\"itemCode\":\"IFTT2022090805\",\"remark\":\"\",\"updateTime\":1662629497336,\"params\":{},\"templateId\":200,\"attr4\":0,\"attr3\":0,\"recordId\":200,\"itemId\":201,\"createBy\":\"\",\"itemName\":\"螺丝扣\",\"crRate\":1,\"createTime\":1662629474000,\"quantityCheck\":1,\"updateBy\":\"\",\"quantityUnqualified\":1,\"minRate\":5,\"majRate\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:31:37');
INSERT INTO `sys_oper_log` VALUES (547, '检测模板', 2, 'com.ktg.mes.qc.controller.QcTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/mes/qc/qctemplate', '127.0.0.1', '内网IP', '{\"remark\":\"检验质量\",\"updateTime\":1662629499064,\"templateCode\":\"QCT2022001\",\"params\":{},\"templateId\":200,\"attr4\":0,\"attr3\":0,\"qcTypes\":\"IQC,OQC,FIRST_CHECK,FINAL_CHECK,REGULAR_CHECK,FQC\",\"createBy\":\"\",\"createTime\":1662629365000,\"templateName\":\"检验螺丝扣\",\"updateBy\":\"\",\"enableFlag\":\"Y\",\"qcTypesParam\":[\"IQC\",\"OQC\",\"FIRST_CHECK\",\"FINAL_CHECK\",\"REGULAR_CHECK\",\"FQC\"]}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-08 17:31:39');
INSERT INTO `sys_oper_log` VALUES (548, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_IQC_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_IQC_CODE}', NULL, 1, '未获取到指定类型:[QC_IQC_CODE]的业务编码生成规则', '2022-09-09 09:03:43');
INSERT INTO `sys_oper_log` VALUES (549, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"QC_IQC_CODE\",\"createBy\":\"admin\",\"ruleName\":\"来料检验单编码规则\",\"enableFlag\":\"Y\",\"maxLength\":14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:04:16');
INSERT INTO `sys_oper_log` VALUES (550, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"fixCharacter\":\"IQC\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":222,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:04:36');
INSERT INTO `sys_oper_log` VALUES (551, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":8,\"dateFormat\":\"yyyyMMdd\",\"partCode\":\"DATE\",\"params\":{},\"partIndex\":2,\"partName\":\"年月日\",\"createBy\":\"admin\",\"ruleId\":222,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:04:55');
INSERT INTO `sys_oper_log` VALUES (552, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"DAY\",\"ruleId\":222,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:12:09');
INSERT INTO `sys_oper_log` VALUES (553, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/QC_IQC_CODE', '127.0.0.1', '内网IP', '{ruleCode=QC_IQC_CODE}', '\"IQC20220909001\"', 0, NULL, '2022-09-09 09:12:20');
INSERT INTO `sys_oper_log` VALUES (554, '来料检验单', 1, 'com.ktg.mes.qc.controller.QcIqcController.add()', 'POST', 1, 'admin', NULL, '/mes/qc/iqc', '127.0.0.1', '内网IP', '{\"inspectDate\":1662652800000,\"itemCode\":\"IFTT2022090805\",\"vendorId\":200,\"iqcId\":200,\"templateId\":200,\"checkResult\":\"ACCEPT\",\"quantityRecived\":1000,\"vendorCode\":\"V00002\",\"itemName\":\"螺丝扣\",\"reciveDate\":1662652800000,\"vendorNick\":\"南通XXX\",\"quantityUnqualified\":5,\"iqcCode\":\"IQC20220909001\",\"unitOfMeasure\":\"piece\",\"inspector\":\"admin\",\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"itemId\":201,\"createTime\":1662686011225,\"quantityCheck\":1000,\"iqcName\":\"螺丝扣检验\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":200}', 0, NULL, '2022-09-09 09:13:31');
INSERT INTO `sys_oper_log` VALUES (555, '检验单缺陷记录', 2, 'com.ktg.mes.qc.controller.QcDefectRecordController.updateList()', 'PUT', 1, 'admin', NULL, '/mes/qc/defectrecord', '127.0.0.1', '内网IP', '[{\"qcType\":\"IQC\",\"defectName\":\"5个轻微缺陷\",\"lineId\":200,\"params\":{},\"recordId\":200,\"createTime\":1662686032369,\"defectLevel\":\"MIN\",\"qcId\":200,\"defectQuantity\":5}]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:13:52');
INSERT INTO `sys_oper_log` VALUES (556, '来料检验单', 2, 'com.ktg.mes.qc.controller.QcIqcController.edit()', 'PUT', 1, 'admin', NULL, '/mes/qc/iqc', '127.0.0.1', '内网IP', '{\"inspectDate\":1662652800000,\"itemCode\":\"IFTT2022090805\",\"vendorId\":200,\"iqcId\":200,\"checkResult\":\"ACCEPT\",\"quantityRecived\":1000,\"vendorCode\":\"V00002\",\"itemName\":\"螺丝扣\",\"reciveDate\":1662652800000,\"vendorNick\":\"南通XXX\",\"quantityUnqualified\":5,\"iqcCode\":\"IQC20220909001\",\"unitOfMeasure\":\"piece\",\"updateTime\":1662686041177,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"itemId\":201,\"quantityCheck\":1000,\"iqcName\":\"螺丝扣检验\",\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:14:01');
INSERT INTO `sys_oper_log` VALUES (557, '来料检验单', 2, 'com.ktg.mes.qc.controller.QcIqcController.edit()', 'PUT', 1, 'admin', NULL, '/mes/qc/iqc', '127.0.0.1', '内网IP', '{\"inspectDate\":1662652800000,\"itemCode\":\"IFTT2022090805\",\"vendorId\":200,\"iqcId\":200,\"checkResult\":\"ACCEPT\",\"quantityRecived\":1000,\"vendorCode\":\"V00002\",\"itemName\":\"螺丝扣\",\"reciveDate\":1662652800000,\"vendorNick\":\"南通XXX\",\"quantityUnqualified\":5,\"iqcCode\":\"IQC20220909001\",\"unitOfMeasure\":\"piece\",\"updateTime\":1662686054618,\"params\":{},\"vendorName\":\"江苏南通XXX塑料制品有限公司\",\"itemId\":201,\"quantityCheck\":1000,\"iqcName\":\"螺丝扣检验\",\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:14:14');
INSERT INTO `sys_oper_log` VALUES (558, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CAL_TEAM_CODE', '127.0.0.1', '内网IP', '{ruleCode=CAL_TEAM_CODE}', NULL, 1, '未获取到指定类型:[CAL_TEAM_CODE]的业务编码生成规则', '2022-09-09 09:15:37');
INSERT INTO `sys_oper_log` VALUES (559, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"CAL_TEAM_CODE\",\"createBy\":\"admin\",\"ruleName\":\"班组编码规则\",\"enableFlag\":\"Y\",\"maxLength\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:16:06');
INSERT INTO `sys_oper_log` VALUES (560, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":1,\"fixCharacter\":\"T\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"固定前缀\",\"createBy\":\"admin\",\"ruleId\":223,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:16:26');
INSERT INTO `sys_oper_log` VALUES (561, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":2,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"N\",\"ruleId\":223,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:16:44');
INSERT INTO `sys_oper_log` VALUES (562, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CAL_TEAM_CODE', '127.0.0.1', '内网IP', '{ruleCode=CAL_TEAM_CODE}', '\"T001\"', 0, NULL, '2022-09-09 09:17:07');
INSERT INTO `sys_oper_log` VALUES (563, '班组', 1, 'com.ktg.mes.cal.controller.CalTeamController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/team', '127.0.0.1', '内网IP', '{\"teamName\":\"一班\",\"calendarType\":\"ZS\",\"teamCode\":\"T001\",\"params\":{},\"createTime\":1662686250426,\"teamId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:17:30');
INSERT INTO `sys_oper_log` VALUES (564, '班组成员', 1, 'com.ktg.mes.cal.controller.CalTeamMemberController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/teammember', '127.0.0.1', '内网IP', '{\"nickName\":\"张三\",\"params\":{},\"userName\":\"zs\",\"userId\":2,\"createTime\":1662686257784,\"teamId\":200,\"tel\":\"15666666666\",\"memberId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:17:37');
INSERT INTO `sys_oper_log` VALUES (565, '班组', 2, 'com.ktg.mes.cal.controller.CalTeamController.edit()', 'PUT', 1, 'admin', NULL, '/mes/cal/team', '127.0.0.1', '内网IP', '{\"teamName\":\"一班\",\"calendarType\":\"ZS\",\"teamCode\":\"T001\",\"remark\":\"\",\"updateTime\":1662686259143,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662686250000,\"updateBy\":\"\",\"teamId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:17:39');
INSERT INTO `sys_oper_log` VALUES (566, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CAL_TEAM_CODE', '127.0.0.1', '内网IP', '{ruleCode=CAL_TEAM_CODE}', '\"T002\"', 0, NULL, '2022-09-09 09:17:51');
INSERT INTO `sys_oper_log` VALUES (567, '班组', 1, 'com.ktg.mes.cal.controller.CalTeamController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/team', '127.0.0.1', '内网IP', '{\"teamName\":\"二班\",\"calendarType\":\"CK\",\"teamCode\":\"T002\",\"params\":{},\"createTime\":1662686286241,\"teamId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:18:06');
INSERT INTO `sys_oper_log` VALUES (568, '班组成员', 1, 'com.ktg.mes.cal.controller.CalTeamMemberController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/teammember', '127.0.0.1', '内网IP', '{\"nickName\":\"管理员\",\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createTime\":1662686296568,\"teamId\":201,\"tel\":\"15888888888\",\"memberId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:18:16');
INSERT INTO `sys_oper_log` VALUES (569, '班组', 2, 'com.ktg.mes.cal.controller.CalTeamController.edit()', 'PUT', 1, 'admin', NULL, '/mes/cal/team', '127.0.0.1', '内网IP', '{\"teamName\":\"二班\",\"calendarType\":\"CK\",\"teamCode\":\"T002\",\"remark\":\"\",\"updateTime\":1662686298752,\"params\":{},\"attr4\":0,\"attr3\":0,\"createBy\":\"\",\"createTime\":1662686286000,\"updateBy\":\"\",\"teamId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:18:18');
INSERT INTO `sys_oper_log` VALUES (570, '节假日设置', 1, 'com.ktg.mes.cal.controller.CalHolidayController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/calholiday', '127.0.0.1', '内网IP', '{\"params\":{},\"theDay\":1662739200000,\"holidayType\":\"HOLIDAY\",\"createTime\":1662686339490,\"startTime\":1662653937575,\"endTime\":1662736737575,\"holidayId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:18:59');
INSERT INTO `sys_oper_log` VALUES (571, '节假日设置', 1, 'com.ktg.mes.cal.controller.CalHolidayController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/calholiday', '127.0.0.1', '内网IP', '{\"params\":{},\"theDay\":1662825600000,\"holidayType\":\"HOLIDAY\",\"createTime\":1662686343224,\"startTime\":1662653941597,\"endTime\":1662736741597,\"holidayId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:19:03');
INSERT INTO `sys_oper_log` VALUES (572, '节假日设置', 1, 'com.ktg.mes.cal.controller.CalHolidayController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/calholiday', '127.0.0.1', '内网IP', '{\"params\":{},\"theDay\":1662912000000,\"holidayType\":\"HOLIDAY\",\"createTime\":1662686346657,\"startTime\":1662653944758,\"endTime\":1662736744758,\"holidayId\":202}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:19:06');
INSERT INTO `sys_oper_log` VALUES (573, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CAL_PLAN_CODE', '127.0.0.1', '内网IP', '{ruleCode=CAL_PLAN_CODE}', NULL, 1, '未获取到指定类型:[CAL_PLAN_CODE]的业务编码生成规则', '2022-09-09 09:22:45');
INSERT INTO `sys_oper_log` VALUES (574, '新增自动编码规则', 1, 'com.ktg.web.controller.system.SysAutoCodeRuleController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/rule', '127.0.0.1', '内网IP', '{\"isPadded\":\"N\",\"params\":{},\"ruleCode\":\"CAL_PLAN_CODE\",\"createBy\":\"admin\",\"ruleName\":\"排班计划编号\",\"enableFlag\":\"Y\",\"maxLength\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:23:12');
INSERT INTO `sys_oper_log` VALUES (575, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"fixCharacter\":\"PLAN\",\"partCode\":\"PREFIX\",\"params\":{},\"partIndex\":1,\"partName\":\"前缀\",\"createBy\":\"admin\",\"ruleId\":224,\"partType\":\"FIXCHAR\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:23:38');
INSERT INTO `sys_oper_log` VALUES (576, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":4,\"dateFormat\":\"yyyy\",\"partCode\":\"YEAR\",\"params\":{},\"partIndex\":2,\"partName\":\"年\",\"createBy\":\"admin\",\"ruleId\":224,\"partType\":\"NOWDATE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:23:53');
INSERT INTO `sys_oper_log` VALUES (577, '新增编码生产规则组成部分', 1, 'com.ktg.web.controller.system.SysAutoCodePartController.add()', 'POST', 1, 'admin', NULL, '/system/autocode/part', '127.0.0.1', '内网IP', '{\"partLength\":3,\"seriaStep\":1,\"seriaStartNo\":1,\"partCode\":\"SERIAL\",\"params\":{},\"partIndex\":3,\"partName\":\"流水号\",\"createBy\":\"admin\",\"cycleFlag\":\"Y\",\"cycleMethod\":\"YEAR\",\"ruleId\":224,\"partType\":\"SERIALNO\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:24:17');
INSERT INTO `sys_oper_log` VALUES (578, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CAL_PLAN_CODE', '127.0.0.1', '内网IP', '{ruleCode=CAL_PLAN_CODE}', '\"PLAN2022001\"', 0, NULL, '2022-09-09 09:24:29');
INSERT INTO `sys_oper_log` VALUES (579, '排班计划', 1, 'com.ktg.mes.cal.controller.CalPlanController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/calplan', '127.0.0.1', '内网IP', '{\"calendarType\":\"ZS\",\"shiftType\":\"SHIFT_THREE\",\"endDate\":1662652800000,\"planName\":\"PlanA\",\"params\":{},\"planCode\":\"PLAN2022001\",\"createTime\":1662686705135,\"shiftCount\":1,\"planId\":200,\"shiftMethod\":\"MONTH\",\"startDate\":1662652800000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:25:05');
INSERT INTO `sys_oper_log` VALUES (580, '计划班组', 1, 'com.ktg.mes.cal.controller.CalPlanTeamController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/planteam', '127.0.0.1', '内网IP', '{\"teamName\":\"一班\",\"teamCode\":\"T001\",\"params\":{},\"recordId\":200,\"createTime\":1662688525772,\"teamId\":200,\"planId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:55:25');
INSERT INTO `sys_oper_log` VALUES (581, '排班计划', 2, 'com.ktg.mes.cal.controller.CalPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/cal/calplan', '127.0.0.1', '内网IP', '{\"calendarType\":\"ZS\",\"shiftType\":\"SHIFT_THREE\",\"endDate\":1662652800000,\"planName\":\"PlanA\",\"remark\":\"\",\"updateTime\":1662688529118,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022001\",\"attr3\":0,\"createBy\":\"\",\"createTime\":1662686705000,\"shiftCount\":1,\"updateBy\":\"\",\"planId\":200,\"shiftMethod\":\"MONTH\",\"startDate\":1662652800000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:55:29');
INSERT INTO `sys_oper_log` VALUES (582, '排班计划', 2, 'com.ktg.mes.cal.controller.CalPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/cal/calplan', '127.0.0.1', '内网IP', '{\"calendarType\":\"ZS\",\"shiftType\":\"SHIFT_THREE\",\"endDate\":1662652800000,\"planName\":\"PlanA\",\"remark\":\"\",\"updateTime\":1662688539804,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022001\",\"attr3\":0,\"createBy\":\"\",\"createTime\":1662686705000,\"shiftCount\":1,\"updateBy\":\"\",\"planId\":200,\"shiftMethod\":\"MONTH\",\"startDate\":1662652800000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:55:39');
INSERT INTO `sys_oper_log` VALUES (583, '排班计划', 2, 'com.ktg.mes.cal.controller.CalPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/cal/calplan', '127.0.0.1', '内网IP', '{\"calendarType\":\"ZS\",\"shiftType\":\"SHIFT_THREE\",\"endDate\":1662652800000,\"planName\":\"PlanA\",\"remark\":\"\",\"updateTime\":1662688544998,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022001\",\"attr3\":0,\"createBy\":\"\",\"createTime\":1662686705000,\"shiftCount\":1,\"updateBy\":\"\",\"planId\":200,\"shiftMethod\":\"MONTH\",\"startDate\":1662652800000,\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 09:55:45');
INSERT INTO `sys_oper_log` VALUES (584, '生成业务编号', 1, 'com.ktg.system.strategy.AutoCodeUtil.genSerialCode()', 'GET', 1, 'admin', NULL, '/system/autocode/get/CAL_PLAN_CODE', '127.0.0.1', '内网IP', '{ruleCode=CAL_PLAN_CODE}', '\"PLAN2022002\"', 0, NULL, '2022-09-09 10:01:32');
INSERT INTO `sys_oper_log` VALUES (585, '排班计划', 1, 'com.ktg.mes.cal.controller.CalPlanController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/calplan', '127.0.0.1', '内网IP', '{\"calendarType\":\"ZZ\",\"shiftType\":\"SHIFT_THREE\",\"endDate\":1662739200000,\"planName\":\"组装\",\"params\":{},\"planCode\":\"PLAN2022002\",\"createTime\":1662688915627,\"shiftCount\":1,\"planId\":201,\"shiftMethod\":\"MONTH\",\"startDate\":1662566400000,\"status\":\"PREPARE\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 10:01:55');
INSERT INTO `sys_oper_log` VALUES (586, '计划班组', 1, 'com.ktg.mes.cal.controller.CalPlanTeamController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/planteam', '127.0.0.1', '内网IP', '{\"teamName\":\"二班\",\"teamCode\":\"T002\",\"params\":{},\"recordId\":201,\"createTime\":1662689564186,\"teamId\":201,\"planId\":201}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 10:12:44');
INSERT INTO `sys_oper_log` VALUES (587, '排班计划', 2, 'com.ktg.mes.cal.controller.CalPlanController.edit()', 'PUT', 1, 'admin', NULL, '/mes/cal/calplan', '127.0.0.1', '内网IP', '{\"calendarType\":\"ZZ\",\"shiftType\":\"SHIFT_THREE\",\"endDate\":1662739200000,\"planName\":\"组装\",\"remark\":\"\",\"updateTime\":1662689569138,\"params\":{},\"attr4\":0,\"planCode\":\"PLAN2022002\",\"attr3\":0,\"createBy\":\"\",\"createTime\":1662688916000,\"shiftCount\":1,\"updateBy\":\"\",\"planId\":201,\"shiftMethod\":\"MONTH\",\"startDate\":1662566400000,\"status\":\"CONFIRMED\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 10:12:49');
INSERT INTO `sys_oper_log` VALUES (588, '节假日设置', 1, 'com.ktg.mes.cal.controller.CalHolidayController.add()', 'POST', 1, 'admin', NULL, '/mes/cal/calholiday', '127.0.0.1', '内网IP', '{\"updateTime\":1662689729498,\"params\":{},\"theDay\":1662739200000,\"holidayType\":\"WORKDAY\",\"startTime\":1662653726711,\"endTime\":1662736526711,\"holidayId\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-09 10:15:29');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-09-06 09:52:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-09-06 09:52:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-09-06 09:52:05', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-09-06 09:52:05', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-09-06 09:52:05', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 16:05:16', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'gly@163.com', '15888888888', '1', '', '$2a$10$qxGdf5QeqECsIAG1/x9rJeKiEmEmMLcYvOJYtmC2zd.jY5uTltnzO', '0', '0', '127.0.0.1', '2022-09-09 08:56:02', 'admin', '2022-09-06 09:52:05', '', '2022-09-09 08:56:01', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'zs', '张三', '00', 'zs@qq.com', '15666666666', '1', '', '$2a$10$VZ4GytFwrp9g6QMnN99qj.OJomdbMMYFpBfIFlAxiu/uPU8Fp3P02', '0', '0', '127.0.0.1', '2022-09-06 16:06:57', 'admin', '2022-09-06 09:52:05', 'admin', '2022-09-06 16:06:56', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tm_tool
-- ----------------------------
DROP TABLE IF EXISTS `tm_tool`;
CREATE TABLE `tm_tool`  (
  `tool_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工装夹具ID',
  `tool_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工装夹具编码',
  `tool_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工装夹具名称',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '型号',
  `tool_type_id` bigint NOT NULL COMMENT '工装夹具类型ID',
  `tool_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工装夹具类型编码',
  `tool_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工装夹具类型名称',
  `code_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否单独编码管理',
  `quantity` int NOT NULL DEFAULT 1 COMMENT '数量',
  `quantity_avail` int NULL DEFAULT 1 COMMENT '可用数量',
  `mainten_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '保养维护类型',
  `next_mainten_period` int NULL DEFAULT NULL COMMENT '下一次保养周期',
  `next_mainten_date` datetime NULL DEFAULT NULL COMMENT '下一次保养日期',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'STORE' COMMENT '状态[MES_TOOL_STATUS]',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`tool_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工装夹具清单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tm_tool
-- ----------------------------
INSERT INTO `tm_tool` VALUES (200, 'T00001', '铣刀', NULL, NULL, 200, 'TT001', '刀具', 'Y', 1, 1, 'REGULAR', NULL, NULL, 'STORE', '', NULL, NULL, 0, 0, '', '2022-09-07 16:34:01', '', NULL);

-- ----------------------------
-- Table structure for tm_tool_type
-- ----------------------------
DROP TABLE IF EXISTS `tm_tool_type`;
CREATE TABLE `tm_tool_type`  (
  `tool_type_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工装夹具类型ID',
  `tool_type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型编码',
  `tool_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型名称',
  `code_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Y' COMMENT '是否编码管理',
  `mainten_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '保养维护类型',
  `mainten_period` int NULL DEFAULT NULL COMMENT '保养周期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`tool_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工装夹具类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tm_tool_type
-- ----------------------------
INSERT INTO `tm_tool_type` VALUES (200, 'TT001', '刀具', 'Y', 'USAGE', 100000, '', NULL, NULL, 0, 0, '', '2022-09-07 16:13:32', '', NULL);
INSERT INTO `tm_tool_type` VALUES (201, 'TT002', '夹具', 'Y', 'REGULAR', 30, '', NULL, NULL, 0, 0, '', '2022-09-07 16:13:57', '', NULL);

-- ----------------------------
-- Table structure for wm_barcode
-- ----------------------------
DROP TABLE IF EXISTS `wm_barcode`;
CREATE TABLE `wm_barcode`  (
  `barcode_id` bigint NOT NULL AUTO_INCREMENT COMMENT '条码ID',
  `barcode_formart` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '条码格式',
  `barcode_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '条码类型',
  `barcode_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '条码内容',
  `bussiness_id` bigint NOT NULL COMMENT '业务ID',
  `bussiness_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务编码',
  `bussiness_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务名称',
  `barcode_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '条码地址',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Y' COMMENT '是否生效',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`barcode_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '条码清单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_barcode
-- ----------------------------

-- ----------------------------
-- Table structure for wm_issue_header
-- ----------------------------
DROP TABLE IF EXISTS `wm_issue_header`;
CREATE TABLE `wm_issue_header`  (
  `issue_id` bigint NOT NULL AUTO_INCREMENT COMMENT '领料单ID',
  `issue_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '领料单编号',
  `issue_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '领料单名称',
  `workstation_id` bigint NULL DEFAULT NULL COMMENT '工作站ID',
  `workstation_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站编号',
  `workstation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作站名称',
  `workorder_id` bigint NULL DEFAULT NULL COMMENT '生产工单ID',
  `workorder_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产工单编码',
  `task_id` bigint NULL DEFAULT NULL COMMENT '生产任务ID',
  `task_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生产任务编码',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `issue_date` datetime NULL DEFAULT NULL COMMENT '领料日期',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PREPARE' COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`issue_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产领料单头表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_issue_header
-- ----------------------------

-- ----------------------------
-- Table structure for wm_issue_line
-- ----------------------------
DROP TABLE IF EXISTS `wm_issue_line`;
CREATE TABLE `wm_issue_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '行ID',
  `issue_id` bigint NULL DEFAULT NULL COMMENT '领料单ID',
  `material_stock_id` bigint NULL DEFAULT NULL COMMENT '库存ID',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_issued` double(12, 2) NOT NULL COMMENT '领料数量',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领料批次号',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '生产领料单行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_issue_line
-- ----------------------------

-- ----------------------------
-- Table structure for wm_item_recpt
-- ----------------------------
DROP TABLE IF EXISTS `wm_item_recpt`;
CREATE TABLE `wm_item_recpt`  (
  `recpt_id` bigint NOT NULL AUTO_INCREMENT COMMENT '入库单ID',
  `recpt_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '入库单编号',
  `recpt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '入库单名称',
  `iqc_id` bigint NULL DEFAULT NULL COMMENT '来料检验单ID',
  `iqc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来料检验单编号',
  `po_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `vendor_id` bigint NULL DEFAULT NULL COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `vendor_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `recpt_date` datetime NULL DEFAULT NULL COMMENT '入库日期',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PREPARE' COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`recpt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物料入库单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_item_recpt
-- ----------------------------
INSERT INTO `wm_item_recpt` VALUES (200, 'R20220907001', '20220907一号单', NULL, NULL, '111', 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 00:00:00', 'FINISHED', '', NULL, NULL, 0, 0, '', '2022-09-07 15:22:18', '', '2022-09-08 10:58:00');
INSERT INTO `wm_item_recpt` VALUES (201, 'R20220908003', '20220908三号单', NULL, NULL, NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 00:00:00', 'FINISHED', '', NULL, NULL, 0, 0, '', '2022-09-08 10:59:14', '', '2022-09-08 10:59:36');

-- ----------------------------
-- Table structure for wm_item_recpt_line
-- ----------------------------
DROP TABLE IF EXISTS `wm_item_recpt_line`;
CREATE TABLE `wm_item_recpt_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '行ID',
  `recpt_id` bigint NULL DEFAULT NULL COMMENT '入库单ID',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_recived` double(12, 2) NOT NULL COMMENT '入库数量',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入库批次号',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `expire_date` datetime NULL DEFAULT NULL COMMENT '有效期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物料入库单行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_item_recpt_line
-- ----------------------------
INSERT INTO `wm_item_recpt_line` VALUES (201, 200, 200, 'IFTT2022090851', '基础接地摞柱', NULL, 'piece', 10.00, NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 10:57:51', '', NULL);
INSERT INTO `wm_item_recpt_line` VALUES (202, 201, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 10.00, NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 10:59:29', '', NULL);

-- ----------------------------
-- Table structure for wm_material_stock
-- ----------------------------
DROP TABLE IF EXISTS `wm_material_stock`;
CREATE TABLE `wm_material_stock`  (
  `material_stock_id` bigint NOT NULL AUTO_INCREMENT COMMENT '事务ID',
  `item_type_id` bigint NULL DEFAULT NULL COMMENT '物料类型ID',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入库批次号',
  `warehouse_id` bigint NOT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `vendor_id` bigint NULL DEFAULT NULL COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商编号',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `vendor_nick` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `quantity_onhand` double(12, 2) NULL DEFAULT NULL COMMENT '在库数量',
  `expire_date` datetime NULL DEFAULT NULL COMMENT '库存有效期',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`material_stock_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_material_stock
-- ----------------------------
INSERT INTO `wm_material_stock` VALUES (200, 201, 200, 'IFTT2022090851', '基础接地摞柱', NULL, 'piece', NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', 10.00, NULL, NULL, NULL, 0, 0, '', NULL, '', NULL);
INSERT INTO `wm_material_stock` VALUES (201, 201, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', 5.00, NULL, NULL, NULL, 0, 0, '', NULL, '', NULL);

-- ----------------------------
-- Table structure for wm_rt_vendor
-- ----------------------------
DROP TABLE IF EXISTS `wm_rt_vendor`;
CREATE TABLE `wm_rt_vendor`  (
  `rt_id` bigint NOT NULL AUTO_INCREMENT COMMENT '退货单ID',
  `rt_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退货单编号',
  `rt_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退货单名称',
  `po_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `vendor_id` bigint NULL DEFAULT NULL COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `vendor_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批次号',
  `rt_date` datetime NULL DEFAULT NULL COMMENT '退货日期',
  `status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PREPARE' COMMENT '单据状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`rt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '供应商退货表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_rt_vendor
-- ----------------------------
INSERT INTO `wm_rt_vendor` VALUES (200, 'RTV20220908001', '螺丝扣退货', NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', NULL, '2022-09-08 00:00:00', 'FINISHED', '', NULL, NULL, 0, 0, '', '2022-09-08 11:13:11', '', '2022-09-08 11:13:43');

-- ----------------------------
-- Table structure for wm_rt_vendor_line
-- ----------------------------
DROP TABLE IF EXISTS `wm_rt_vendor_line`;
CREATE TABLE `wm_rt_vendor_line`  (
  `line_id` bigint NOT NULL AUTO_INCREMENT COMMENT '行ID',
  `rt_id` bigint NULL DEFAULT NULL COMMENT '退货单ID',
  `material_stock_id` bigint NULL DEFAULT NULL COMMENT '库存记录ID',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `quantity_rted` double(12, 2) NOT NULL COMMENT '退货数量',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批次号',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`line_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '供应商退货行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_rt_vendor_line
-- ----------------------------
INSERT INTO `wm_rt_vendor_line` VALUES (200, 200, 201, 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', 5.00, NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, '', '2022-09-08 11:13:35', '', NULL);

-- ----------------------------
-- Table structure for wm_storage_area
-- ----------------------------
DROP TABLE IF EXISTS `wm_storage_area`;
CREATE TABLE `wm_storage_area`  (
  `area_id` bigint NOT NULL AUTO_INCREMENT COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '库位名称',
  `location_id` bigint NOT NULL COMMENT '库区ID',
  `area` double(8, 2) NULL DEFAULT NULL COMMENT '面积',
  `max_loa` double(8, 2) NULL DEFAULT NULL COMMENT '最大载重量',
  `position_x` int NULL DEFAULT NULL COMMENT '库位位置X',
  `position_y` int NULL DEFAULT NULL COMMENT '库位位置y',
  `position_z` int NULL DEFAULT NULL COMMENT '库位位置z',
  `enable_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否启用',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_storage_area
-- ----------------------------

-- ----------------------------
-- Table structure for wm_storage_location
-- ----------------------------
DROP TABLE IF EXISTS `wm_storage_location`;
CREATE TABLE `wm_storage_location`  (
  `location_id` bigint NOT NULL AUTO_INCREMENT COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '库区名称',
  `warehouse_id` bigint NOT NULL COMMENT '仓库ID',
  `area` double(12, 2) NULL DEFAULT NULL COMMENT '面积',
  `area_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否开启库位管理',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`location_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_storage_location
-- ----------------------------

-- ----------------------------
-- Table structure for wm_transaction
-- ----------------------------
DROP TABLE IF EXISTS `wm_transaction`;
CREATE TABLE `wm_transaction`  (
  `transaction_id` bigint NOT NULL AUTO_INCREMENT COMMENT '事务ID',
  `transaction_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '事务类型',
  `item_id` bigint NOT NULL COMMENT '产品物料ID',
  `item_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料编码',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品物料名称',
  `specification` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit_of_measure` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入库批次号',
  `warehouse_id` bigint NOT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `location_id` bigint NULL DEFAULT NULL COMMENT '库区ID',
  `location_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区编码',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库区名称',
  `area_id` bigint NULL DEFAULT NULL COMMENT '库位ID',
  `area_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位编码',
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库位名称',
  `vendor_id` bigint NULL DEFAULT NULL COMMENT '供应商ID',
  `vendor_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商编号',
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `vendor_nick` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `source_doc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单据类型',
  `source_doc_id` bigint NULL DEFAULT NULL COMMENT '单据ID',
  `source_doc_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单据编号',
  `source_doc_line_id` bigint NULL DEFAULT NULL COMMENT '单据行ID',
  `material_stock_id` bigint NOT NULL COMMENT '库存记录ID',
  `transaction_flag` int NULL DEFAULT 1 COMMENT '库存方向',
  `transaction_quantity` double(12, 2) NULL DEFAULT NULL COMMENT '事务数量',
  `transaction_date` datetime NULL DEFAULT NULL COMMENT '事务日期',
  `related_transaction_id` bigint NULL DEFAULT NULL COMMENT '关联的事务ID',
  `erp_date` datetime NULL DEFAULT NULL COMMENT 'ERP账期',
  `expire_date` datetime NULL DEFAULT NULL COMMENT '库存有效期',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`transaction_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '库存事务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_transaction
-- ----------------------------
INSERT INTO `wm_transaction` VALUES (200, 'ITEM_RECPT', 200, 'IFTT2022090851', '基础接地摞柱', NULL, 'piece', NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', 'IR', 200, 'R20220907001', 201, 200, 1, 10.00, '2022-09-08 10:58:00', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '2022-09-07 15:22:18', '', '2022-09-08 10:54:47');
INSERT INTO `wm_transaction` VALUES (201, 'ITEM_RECPT', 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', 'IR', 201, 'R20220908003', 202, 201, 1, 10.00, '2022-09-08 10:59:36', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '2022-09-08 10:59:14', '', '2022-09-08 10:59:34');
INSERT INTO `wm_transaction` VALUES (202, 'ITEM_RTV', 201, 'IFTT2022090805', '螺丝扣', NULL, 'piece', NULL, 200, 'WH001', '中央仓库', NULL, NULL, NULL, NULL, NULL, NULL, 200, 'V00002', '江苏南通XXX塑料制品有限公司', '南通XXX', 'RTV', 200, 'RTV20220908001', 200, 201, -1, -5.00, '2022-09-08 11:13:43', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '2022-09-08 11:13:11', '', '2022-09-08 11:13:40');

-- ----------------------------
-- Table structure for wm_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `wm_warehouse`;
CREATE TABLE `wm_warehouse`  (
  `warehouse_id` bigint NOT NULL AUTO_INCREMENT COMMENT '仓库ID',
  `warehouse_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '仓库编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '仓库名称',
  `location` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '位置',
  `area` double(12, 2) NULL DEFAULT NULL COMMENT '面积',
  `charge` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `attr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `attr3` int NULL DEFAULT 0 COMMENT '预留字段3',
  `attr4` int NULL DEFAULT 0 COMMENT '预留字段4',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '仓库表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_warehouse
-- ----------------------------
INSERT INTO `wm_warehouse` VALUES (200, 'WH001', '中央仓库', 'center', 300.00, '小明', '', NULL, NULL, 0, 0, '', '2022-09-07 15:18:04', '', NULL);

SET FOREIGN_KEY_CHECKS = 1;
