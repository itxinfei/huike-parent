/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : huike_crm

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-05-25 14:37:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mybatis_review
-- ----------------------------
DROP TABLE IF EXISTS `mybatis_review`;
CREATE TABLE `mybatis_review` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `age` int NOT NULL COMMENT '年龄',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of mybatis_review
-- ----------------------------
INSERT INTO `mybatis_review` VALUES ('1', '张三', '18', '男', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('2', '李四', '19', '男', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('4', '王五', '20', '男', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('5', '赵六', '21', '男', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('6', '孙七', '22', '女', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('7', '周八', '23', '女', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('8', '吴九', '24', '女', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('9', '郑十', '25', '女', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('10', '刘一', '17', '女', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('11', '陈二', '16', '女', '1', '2022-04-17 18:53:09', '1', '2022-04-17 18:53:09');
INSERT INTO `mybatis_review` VALUES ('18', '吴思远', '18', '男', '1', '2022-04-17 23:42:26', '1', '2022-04-17 23:42:26');
INSERT INTO `mybatis_review` VALUES ('19', '吴思远', '18', '女', '1', '2022-04-17 23:52:10', '1', '2022-04-17 23:52:10');
INSERT INTO `mybatis_review` VALUES ('21', '吴思远', '18', '女', '1', '2022-04-18 00:14:12', '1', '2022-04-18 00:14:12');
INSERT INTO `mybatis_review` VALUES ('22', '吴思远', '18', '男', '1', '2022-04-18 18:27:24', '1', '2022-04-18 18:27:24');
INSERT INTO `mybatis_review` VALUES ('23', '吴思远', '18', '女', '1', '2022-04-18 18:27:30', '1', '2022-04-18 18:27:30');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-03-31 03:12:17', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-03-31 03:12:17', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-03-31 03:12:17', '', null, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NOT NULL DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `sys_dept_dept_name_uindex` (`dept_name`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '客达管家', '0', '李峰', '15888888888', 'lifeng@qq.com', '0', '0', 'admin', '2021-03-31 03:12:09', 'admin', '2023-06-13 23:55:08');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '北京总公司', '1', '李峰', '15888888888', 'lifeng@qq.com', '0', '0', 'admin', '2021-03-31 03:12:09', 'admin', '2023-06-13 23:55:08');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '2', '李峰', '15888888888', 'lifeng@qq.com', '0', '0', 'admin', '2021-03-31 03:12:09', 'admin', '2022-04-18 10:52:30');
INSERT INTO `sys_dept` VALUES ('214', '100', '0,100', '销售部门', '5', '张三', '15011111111', '511111111@qq.com', '0', '0', 'admin', '2021-11-23 15:48:25', 'admin', '2023-06-13 23:55:04');
INSERT INTO `sys_dept` VALUES ('215', '214', '0,100,214', '市场部（线索）', '6', '张三', '15777777777', 'zhangsan@qq.com', '0', '0', 'admin', '2022-04-18 10:51:50', 'admin', '2023-06-13 23:55:00');
INSERT INTO `sys_dept` VALUES ('216', '214', '0,100,214', '销售部（商机）', '7', '李四', '15666666666', 'lisi@qq.com', '0', '0', 'admin', '2022-04-18 10:52:25', 'admin', '2023-06-13 23:54:55');
INSERT INTO `sys_dept` VALUES ('217', '100', '0,100', '财务部门', '8', '金庸', '18809091212', 'jinyong@163.com', '0', '0', 'admin', '2023-05-16 00:36:04', 'admin', '2023-06-13 23:54:51');
INSERT INTO `sys_dept` VALUES ('218', '101', '0,100,101', '稽核部', '4', '张明生', '13456352736', 'zhangmingsheng@163.com', '0', '0', 'admin', '2023-06-13 23:54:39', 'admin', '2023-06-13 23:55:08');
INSERT INTO `sys_dept` VALUES ('219', '101', '0,100,101', '行政部', '3', '张毅名', '13509091212', 'zhangyiming@163.com', '0', '2', 'admin', '2023-06-13 23:55:44', 'admin', '2023-06-13 23:55:44');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-03-31 03:12:16', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-03-31 03:12:16', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-03-31 03:12:17', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-03-31 03:12:17', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '1', '线上活动', '0', 'clues_item', null, null, 'N', '0', 'admin', '2021-04-01 05:58:18', 'admin', '2021-04-02 01:50:30', '线上活动');
INSERT INTO `sys_dict_data` VALUES ('101', '1', '课程折扣', '1', 'channel_type', null, null, 'N', '0', 'admin', '2021-04-01 08:58:56', 'admin', '2021-04-02 01:56:31', null);
INSERT INTO `sys_dict_data` VALUES ('102', '2', '课程代金券', '2', 'channel_type', null, null, 'N', '0', 'admin', '2021-04-01 08:59:59', 'admin', '2021-04-02 01:56:41', null);
INSERT INTO `sys_dict_data` VALUES ('103', '2', '推广介绍', '1', 'clues_item', null, null, 'N', '0', 'admin', '2021-04-01 09:18:58', 'admin', '2021-04-02 01:50:39', '推广介绍');
INSERT INTO `sys_dict_data` VALUES ('104', '1', 'Java', '0', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:39:03', 'admin', '2021-05-11 09:49:12', 'Java');
INSERT INTO `sys_dict_data` VALUES ('105', '2', '前端', '1', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:39:36', 'admin', '2021-05-11 09:49:17', '前端');
INSERT INTO `sys_dict_data` VALUES ('106', '3', '人工智能', '2', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:41:04', 'admin', '2021-05-11 09:49:29', '人工智能');
INSERT INTO `sys_dict_data` VALUES ('107', '4', '大数据', '3', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:42:26', 'admin', '2021-05-11 09:49:35', '大数据');
INSERT INTO `sys_dict_data` VALUES ('108', '5', 'Python', '4', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:42:27', 'admin', '2021-05-11 09:49:39', 'Python');
INSERT INTO `sys_dict_data` VALUES ('109', '6', '测试', '6', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:45:30', 'admin', '2021-04-02 01:55:23', '测试');
INSERT INTO `sys_dict_data` VALUES ('110', '7', '新媒体', '7', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:55:21', 'admin', '2021-04-02 01:55:35', '新媒体');
INSERT INTO `sys_dict_data` VALUES ('111', '8', '产品经理', '8', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:56:46', 'admin', '2021-04-02 01:55:46', '产品经理');
INSERT INTO `sys_dict_data` VALUES ('112', '9', 'UI设计', '9', 'course_subject', null, null, 'N', '0', 'admin', '2021-04-01 09:57:22', 'admin', '2021-04-02 01:55:57', 'UI设计');
INSERT INTO `sys_dict_data` VALUES ('113', '1', '小白学员', '1', 'applicable_person', null, null, 'N', '0', 'admin', '2021-04-01 10:02:11', 'admin', '2021-04-02 01:52:32', '小白学员');
INSERT INTO `sys_dict_data` VALUES ('114', '2', '中级程序员', '2', 'applicable_person', null, null, 'N', '0', 'admin', '2021-04-01 10:02:38', 'admin', '2021-04-02 01:52:45', null);
INSERT INTO `sys_dict_data` VALUES ('115', '1', '近期学习', '0', 'clues_level', null, null, 'N', '0', 'admin', '2021-04-02 01:43:37', 'admin', '2021-05-11 09:47:01', '近期学习');
INSERT INTO `sys_dict_data` VALUES ('116', '2', '打算学，考虑中', '1', 'clues_level', null, null, 'N', '0', 'admin', '2021-04-02 01:44:22', 'admin', '2021-05-11 09:47:07', '打算学，考虑中');
INSERT INTO `sys_dict_data` VALUES ('117', '3', '进行了解', '2', 'clues_level', null, null, 'N', '0', 'admin', '2021-04-02 01:45:22', 'admin', '2021-05-11 09:47:15', '进行了解');
INSERT INTO `sys_dict_data` VALUES ('118', '4', '打酱油', '3', 'clues_level', null, null, 'N', '0', 'admin', '2021-04-02 01:46:24', 'admin', '2021-05-11 09:47:19', '打酱油,放弃');
INSERT INTO `sys_dict_data` VALUES ('120', '1', '待审核', '1', 'activity_status', null, null, 'N', '0', 'admin', '2021-04-02 02:14:33', '', null, '待审核');
INSERT INTO `sys_dict_data` VALUES ('121', '3', '已驳回', '3', 'activity_status', null, null, 'N', '0', 'admin', '2021-04-02 02:14:59', 'admin', '2021-04-26 07:05:37', '已驳回');
INSERT INTO `sys_dict_data` VALUES ('122', '2', '已通过', '2', 'activity_status', null, null, 'N', '0', 'admin', '2021-04-02 02:15:28', 'admin', '2021-04-26 07:05:45', '通过');
INSERT INTO `sys_dict_data` VALUES ('123', '1', '空号', '1', 'reasons_for_reporting', null, null, 'N', '0', 'admin', '2021-04-02 08:49:52', '', null, '空号');
INSERT INTO `sys_dict_data` VALUES ('124', '2', '已停机', '2', 'reasons_for_reporting', null, null, 'N', '0', 'admin', '2021-04-02 08:50:09', '', null, '已停机');
INSERT INTO `sys_dict_data` VALUES ('125', '3', '广告', '3', 'reasons_for_reporting', null, null, 'N', '0', 'admin', '2021-04-02 08:50:31', '', null, '广告');
INSERT INTO `sys_dict_data` VALUES ('126', '4', '竞品', '4', 'reasons_for_reporting', null, null, 'N', '0', 'admin', '2021-04-02 08:50:47', '', null, '竞品');
INSERT INTO `sys_dict_data` VALUES ('127', '5', '无法联系', '5', 'reasons_for_reporting', null, null, 'N', '0', 'admin', '2021-04-02 08:51:03', '', null, '无法联系');
INSERT INTO `sys_dict_data` VALUES ('128', '6', '其他', '6', 'reasons_for_reporting', null, null, 'N', '0', 'admin', '2021-04-02 08:51:26', '', null, '其他');
INSERT INTO `sys_dict_data` VALUES ('129', '1', '创建时间', 'createTime', 'clue_rule', null, null, 'N', '0', 'admin', '2021-04-08 03:19:48', 'admin', '2021-05-06 06:45:24', '创建时间');
INSERT INTO `sys_dict_data` VALUES ('130', '2', '渠道来源', 'channel', 'clue_rule', null, null, 'N', '0', 'admin', '2021-04-08 03:20:21', 'admin', '2021-04-08 03:25:51', '渠道来源');
INSERT INTO `sys_dict_data` VALUES ('131', '3', '线索意向级别', 'subject', 'clue_rule', null, null, 'N', '0', 'admin', '2021-04-08 03:21:08', 'admin', '2021-04-08 03:26:01', '线索意向级别');
INSERT INTO `sys_dict_data` VALUES ('132', '4', '意向等级', 'level', 'clue_rule', null, null, 'N', '0', 'admin', '2021-04-08 03:24:57', 'admin', '2021-04-08 03:26:12', '意向等级');
INSERT INTO `sys_dict_data` VALUES ('133', '0', '是', '==', 'clue_rule_createtime', null, null, 'N', '0', 'admin', '2021-04-08 03:28:37', 'admin', '2021-05-06 06:33:52', '是');
INSERT INTO `sys_dict_data` VALUES ('134', '1', '不是', '!=', 'clue_rule_createtime', null, null, 'N', '0', 'admin', '2021-04-08 03:28:55', '', null, '不是');
INSERT INTO `sys_dict_data` VALUES ('135', '3', '在之前', '<=', 'clue_rule_createtime', null, null, 'N', '0', 'admin', '2021-04-08 03:29:31', 'admin', '2021-06-22 06:26:19', '在之前');
INSERT INTO `sys_dict_data` VALUES ('136', '4', '在之后', '>=', 'clue_rule_createtime', null, null, 'N', '0', 'admin', '2021-04-08 03:29:51', 'admin', '2021-06-22 06:26:30', '在之后');
INSERT INTO `sys_dict_data` VALUES ('137', '5', '在之间', 'between', 'clue_rule_createtime', null, null, 'N', '0', 'admin', '2021-04-08 03:30:13', 'admin', '2021-04-08 03:30:32', '在之间');
INSERT INTO `sys_dict_data` VALUES ('138', '1', '是', '==', 'clue_rule_common', null, null, 'N', '0', 'admin', '2021-04-08 03:32:19', 'admin', '2021-04-21 10:22:14', '是');
INSERT INTO `sys_dict_data` VALUES ('139', '1', '不是', '!=', 'clue_rule_common', null, null, 'N', '0', 'admin', '2021-04-08 03:32:36', '', null, '不是');
INSERT INTO `sys_dict_data` VALUES ('140', '3', '包含', 'in', 'clue_rule_common', null, null, 'N', '0', 'admin', '2021-04-08 03:33:00', 'admin', '2021-04-12 10:27:36', '包含');
INSERT INTO `sys_dict_data` VALUES ('141', '4', '不包含', 'not in', 'clue_rule_common', null, null, 'N', '0', 'admin', '2021-04-08 03:33:21', 'admin', '2021-04-12 10:28:07', '不包含');
INSERT INTO `sys_dict_data` VALUES ('143', '2', '跟进中', '2', 'clue_status', null, null, 'N', '0', 'admin', '2021-04-12 10:05:33', 'admin', '2021-05-11 02:01:34', '已分配');
INSERT INTO `sys_dict_data` VALUES ('145', '0', '用户', '0', 'assign_type', null, null, 'N', '0', 'admin', '2021-04-14 08:00:12', '', null, '用户');
INSERT INTO `sys_dict_data` VALUES ('146', '1', '岗位', '1', 'assign_type', null, null, 'N', '0', 'admin', '2021-04-14 08:00:21', '', null, '岗位');
INSERT INTO `sys_dict_data` VALUES ('147', '2', '部门', '2', 'assign_type', null, null, 'N', '0', 'admin', '2021-04-14 08:00:30', '', null, '部门');
INSERT INTO `sys_dict_data` VALUES ('148', '0', '小时', '0', 'limit_time', null, null, 'N', '0', 'admin', '2021-04-16 07:21:09', 'admin', '2021-04-16 07:21:58', '小时');
INSERT INTO `sys_dict_data` VALUES ('149', '1', '天', '1', 'limit_time', null, null, 'N', '0', 'admin', '2021-04-16 07:21:45', 'admin', '2021-04-16 07:22:10', '天');
INSERT INTO `sys_dict_data` VALUES ('150', '2', '周', '2', 'limit_time', null, null, 'N', '0', 'admin', '2021-04-16 07:22:33', '', null, '周');
INSERT INTO `sys_dict_data` VALUES ('151', '0', '小时前', '0', 'warn_time', null, null, 'N', '0', 'admin', '2021-04-16 07:24:59', '', null, '小时前');
INSERT INTO `sys_dict_data` VALUES ('152', '1', '天前', '1', 'warn_time', null, null, 'N', '0', 'admin', '2021-04-16 07:25:21', '', null, '天前');
INSERT INTO `sys_dict_data` VALUES ('153', '2', '周前', '2', 'warn_time', null, null, 'N', '0', 'admin', '2021-04-16 07:25:42', '', null, '周前');
INSERT INTO `sys_dict_data` VALUES ('154', '1', '天以后', '1', 'repeat_get_time', null, null, 'N', '0', 'admin', '2021-04-16 07:27:19', 'admin', '2021-09-08 03:14:49', '天以后');
INSERT INTO `sys_dict_data` VALUES ('155', '1', '周以后', '2', 'repeat_get_time', null, null, 'N', '0', 'admin', '2021-04-16 07:27:40', 'admin', '2021-09-08 03:14:55', '周以后');
INSERT INTO `sys_dict_data` VALUES ('156', '2', '个月以后', '3', 'repeat_get_time', null, null, 'N', '0', 'admin', '2021-04-16 07:28:02', 'admin', '2021-09-08 03:14:58', '个月以后');
INSERT INTO `sys_dict_data` VALUES ('157', '1', '待跟进', '1', 'clue_status', null, null, 'N', '0', 'admin', '2021-04-20 10:07:08', '', null, '待跟进');
INSERT INTO `sys_dict_data` VALUES ('159', '4', '已结束', '4', 'activity_status', null, null, 'N', '0', 'admin', '2021-04-26 07:05:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('160', '1', '课程', '1', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:50:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('161', '2', '价格', '2', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:51:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('162', '3', '位置', '3', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:51:22', 'admin', '2021-04-28 07:52:55', null);
INSERT INTO `sys_dict_data` VALUES ('163', '4', '时间', '4', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:51:33', 'admin', '2021-04-28 07:52:37', null);
INSERT INTO `sys_dict_data` VALUES ('164', '5', '师资', '5', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:51:44', 'admin', '2021-04-28 07:55:58', null);
INSERT INTO `sys_dict_data` VALUES ('165', '6', '项目', '6', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:51:59', 'admin', '2021-04-28 07:56:12', null);
INSERT INTO `sys_dict_data` VALUES ('166', '7', '薪资', '7', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:57:12', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('167', '8', '职业', '8', 'communication_point', null, null, 'N', '0', 'admin', '2021-04-28 07:57:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('168', '0', '无', '1', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:38:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('169', '1', '技术', '2', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:39:09', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('170', '2', '产品', '3', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:39:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('171', '3', '设计', '4', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:39:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('172', '4', '运营', '5', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:39:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('173', '5', '市场', '6', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:39:48', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('174', '6', '人事/财务行政', '7', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:40:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('175', '7', '销售', '8', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:40:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('176', '8', '传媒', '9', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:40:29', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('177', '9', '金融', '10', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:40:42', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('178', '10', '教育培训', '11', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:40:54', 'admin', '2021-04-29 03:41:17', null);
INSERT INTO `sys_dict_data` VALUES ('179', '11', '医疗健康', '12', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:41:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('180', '13', '供应链/物流', '14', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:41:40', 'admin', '2021-04-29 03:41:50', null);
INSERT INTO `sys_dict_data` VALUES ('181', '12', '房地产/建筑', '13', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:42:00', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('182', '14', '采购/贸易', '15', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:42:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('183', '15', '咨询/翻译/法律', '16', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:42:26', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('184', '16', '旅游', '17', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:42:39', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('185', '17', '生成制作', '18', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:42:50', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('186', '18', '其他', '19', 'occupation', null, null, 'N', '0', 'admin', '2021-04-29 03:43:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('187', '0', '小学', '1', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:43:50', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('188', '1', '初中', '2', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:43:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('189', '2', '高中', '3', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:44:04', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('190', '3', '中专', '4', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:44:22', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('191', '4', '大专', '5', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:44:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('192', '5', '本科', '6', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:44:42', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('193', '6', '研究生', '7', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:44:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('194', '7', '博士', '8', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:45:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('195', '8', '其他', '9', 'education', null, null, 'N', '0', 'admin', '2021-04-29 03:45:15', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('196', '0', '哲学', '1', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:37:29', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('197', '1', '经济学', '2', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:37:39', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('198', '2', '法学', '3', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:37:48', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('199', '3', '教育学', '4', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:37:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('200', '4', '文学', '5', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:38:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('201', '5', '历史学', '6', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:38:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('202', '6', '理学', '7', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:38:23', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('203', '7', '工学', '8', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:38:33', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('204', '8', '农学', '9', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:38:41', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('205', '9', '医学', '10', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:38:51', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('206', '10', '管理学', '11', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:39:01', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('207', '11', '艺术学', '12', 'major', null, null, 'N', '0', 'admin', '2021-04-29 05:39:09', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('208', '0', '待业', '1', 'job', null, null, 'N', '0', 'admin', '2021-04-29 05:39:51', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('209', '1', '在职', '2', 'job', null, null, 'N', '0', 'admin', '2021-04-29 05:39:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('210', '2', '已离职', '3', 'job', null, null, 'N', '0', 'admin', '2021-04-29 05:40:06', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('211', '0', '1k-3k', '1', 'salary', null, null, 'N', '0', 'admin', '2021-04-29 05:40:51', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('212', '1', '3k-6k', '2', 'salary', null, null, 'N', '0', 'admin', '2021-04-29 05:40:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('213', '2', '6k-10k', '3', 'salary', null, null, 'N', '0', 'admin', '2021-04-29 05:41:04', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('214', '3', '10k-15k', '4', 'salary', null, null, 'N', '0', 'admin', '2021-04-29 05:41:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('215', '4', '15k-20k', '5', 'salary', null, null, 'N', '0', 'admin', '2021-04-29 05:41:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('216', '5', '20k+', '6', 'salary', null, null, 'N', '0', 'admin', '2021-04-29 05:41:27', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('217', '0', '接通', '1', 'track_status', null, null, 'N', '0', 'admin', '2021-04-29 05:42:50', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('218', '1', '拒绝', '2', 'track_status', null, null, 'N', '0', 'admin', '2021-04-29 05:42:56', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('219', '2', '无人接听', '3', 'track_status', null, null, 'N', '0', 'admin', '2021-04-29 05:43:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('220', '0', '用户已报名其他机构', '1', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:44:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('221', '1', '用户不感兴趣', '2', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:45:00', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('222', '2', '用户年龄不符', '3', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:45:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('223', '3', '用户暂时没有需求', '4', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:45:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('224', '4', '学费不满意', '5', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:45:26', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('225', '5', '距离不适合', '6', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:45:33', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('226', '6', '其他', '7', 'reasons_for_business_reporting', null, null, 'N', '0', 'admin', '2021-04-29 05:45:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('227', '0', '创建时间', 'createTime', 'business_rule', null, null, 'N', '0', 'admin', '2021-05-07 01:57:53', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('228', '1', '商机性质', 'status', 'business_rule', null, null, 'N', '0', 'admin', '2021-05-07 02:01:25', 'admin', '2021-05-07 02:02:11', null);
INSERT INTO `sys_dict_data` VALUES ('229', '2', '客户地区', 'region', 'business_rule', null, null, 'N', '0', 'admin', '2021-05-07 02:02:06', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('230', '3', '意向学科', 'subject', 'business_rule', null, null, 'N', '0', 'admin', '2021-05-07 02:02:50', 'admin', '2021-05-07 02:04:52', null);
INSERT INTO `sys_dict_data` VALUES ('231', '0', '新增', '1', 'business_status_rule', null, null, 'N', '0', 'admin', '2021-05-07 02:09:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('232', '2', '已回收', '3', 'business_status_rule', null, null, 'N', '0', 'admin', '2021-05-07 02:09:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('233', '3', '角色', '3', 'assign_type', null, null, 'N', '0', 'admin', '2021-05-25 03:47:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('237', '0', '未婚', '0', 'marriage22', null, null, 'N', '0', 'admin', '2023-05-17 10:38:59', 'admin', '2023-05-17 10:38:59', '未婚');
INSERT INTO `sys_dict_data` VALUES ('238', '0', '已婚', '1', 'marriage22', null, null, 'N', '0', 'admin', '2023-05-17 10:39:19', 'admin', '2023-05-17 10:39:19', '已婚');
INSERT INTO `sys_dict_data` VALUES ('239', '0', '未知', '2', 'marriage22', null, null, 'N', '0', 'admin', '2023-05-17 10:40:03', 'admin', '2023-05-17 10:40:03', '未知');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-03-31 03:12:16', 'admin', '2021-03-31 03:12:16', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '线索跟进项', 'clues_item', '0', 'admin', '2021-04-01 05:57:07', 'admin', '2021-04-01 05:57:07', '线索跟进项');
INSERT INTO `sys_dict_type` VALUES ('101', '活动类型', 'channel_type', '0', 'admin', '2021-04-01 08:57:57', 'admin', '2021-04-01 08:57:57', '活动类型');
INSERT INTO `sys_dict_type` VALUES ('102', '课程学科', 'course_subject', '0', 'admin', '2021-04-01 09:37:30', 'admin', '2021-04-01 09:37:30', '课程学科');
INSERT INTO `sys_dict_type` VALUES ('103', '适应人群', 'applicable_person', '0', 'admin', '2021-04-01 09:59:41', 'admin', '2021-04-01 09:59:41', '适应人群');
INSERT INTO `sys_dict_type` VALUES ('104', '线索意向级别', 'clues_level', '0', 'admin', '2021-04-02 01:42:10', 'admin', '2021-04-02 01:42:10', '线索意向级别');
INSERT INTO `sys_dict_type` VALUES ('105', '活动状态', 'activity_status', '0', 'admin', '2021-04-02 02:07:22', 'admin', '2021-04-02 02:07:22', '活动状态');
INSERT INTO `sys_dict_type` VALUES ('106', '伪线索上报说明', 'reasons_for_reporting', '0', 'admin', '2021-04-02 08:48:44', 'admin', '2021-04-02 08:48:44', '伪线索上报说明');
INSERT INTO `sys_dict_type` VALUES ('107', '线索规则', 'clue_rule', '0', 'admin', '2021-04-08 03:18:14', 'admin', '2021-04-08 03:18:14', '线索规则');
INSERT INTO `sys_dict_type` VALUES ('108', '线索创建时间表达式', 'clue_rule_createtime', '0', 'admin', '2021-04-08 03:27:42', 'admin', '2021-04-08 03:27:42', '线索创建时间表达式');
INSERT INTO `sys_dict_type` VALUES ('109', '线索通用表达式', 'clue_rule_common', '0', 'admin', '2021-04-08 03:31:30', 'admin', '2021-04-08 03:31:30', '线索通用表达式');
INSERT INTO `sys_dict_type` VALUES ('110', '线索状态', 'clue_status', '0', 'admin', '2021-04-12 10:04:58', 'admin', '2021-04-12 10:04:58', '线索状态');
INSERT INTO `sys_dict_type` VALUES ('111', '分配类型', 'assign_type', '0', 'admin', '2021-04-14 07:59:39', 'admin', '2021-04-14 07:59:39', '分配类型');
INSERT INTO `sys_dict_type` VALUES ('112', '回收时限', 'limit_time', '0', 'admin', '2021-04-16 07:20:17', 'admin', '2021-04-16 07:20:17', '回收时限');
INSERT INTO `sys_dict_type` VALUES ('113', '到期提醒', 'warn_time', '0', 'admin', '2021-04-16 07:24:22', 'admin', '2021-04-16 07:24:22', '到期提醒');
INSERT INTO `sys_dict_type` VALUES ('114', '重复捞取时间', 'repeat_get_time', '0', 'admin', '2021-04-16 07:26:32', 'admin', '2021-04-16 07:26:32', '重复捞取时间');
INSERT INTO `sys_dict_type` VALUES ('115', '沟通重点', 'communication_point', '0', 'admin', '2021-04-28 07:50:23', 'admin', '2021-04-28 07:50:23', '沟通重点');
INSERT INTO `sys_dict_type` VALUES ('116', '职业', 'occupation', '0', 'admin', '2021-04-29 03:38:06', 'admin', '2021-04-29 03:38:06', '职业');
INSERT INTO `sys_dict_type` VALUES ('117', '学历', 'education', '0', 'admin', '2021-04-29 03:43:37', 'admin', '2021-04-29 03:43:37', '学历');
INSERT INTO `sys_dict_type` VALUES ('118', '专业', 'major', '0', 'admin', '2021-04-29 05:37:15', 'admin', '2021-04-29 05:37:15', '专业');
INSERT INTO `sys_dict_type` VALUES ('119', '在职情况', 'job', '0', 'admin', '2021-04-29 05:39:42', 'admin', '2021-04-29 05:39:42', '在职情况');
INSERT INTO `sys_dict_type` VALUES ('120', '薪资', 'salary', '0', 'admin', '2021-04-29 05:40:40', 'admin', '2021-04-29 05:40:40', '薪资');
INSERT INTO `sys_dict_type` VALUES ('121', '跟进状态', 'track_status', '0', 'admin', '2021-04-29 05:42:36', 'admin', '2021-04-29 05:42:36', '跟进状态');
INSERT INTO `sys_dict_type` VALUES ('122', '踢回公海原因', 'reasons_for_business_reporting', '0', 'admin', '2021-04-29 05:44:32', 'admin', '2021-04-29 05:44:32', '踢回公海原因');
INSERT INTO `sys_dict_type` VALUES ('123', '商机规则', 'business_rule', '0', 'admin', '2021-05-07 01:53:52', 'admin', '2021-05-07 01:53:52', '商机规则');
INSERT INTO `sys_dict_type` VALUES ('124', '商机性质状态', 'business_status_rule', '0', 'admin', '2021-05-07 02:09:02', 'admin', '2021-05-07 02:09:02', '商机性质状态');
INSERT INTO `sys_dict_type` VALUES ('127', '婚姻情况', 'marriage22', '0', 'admin', '2023-05-17 10:35:01', 'admin', '2023-05-17 10:53:42', '婚姻情况');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4338 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('4026', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 09:16:23');
INSERT INTO `sys_logininfor` VALUES ('4027', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 10:43:16');
INSERT INTO `sys_logininfor` VALUES ('4028', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 10:54:09');
INSERT INTO `sys_logininfor` VALUES ('4029', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:42:28');
INSERT INTO `sys_logininfor` VALUES ('4030', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:42:37');
INSERT INTO `sys_logininfor` VALUES ('4031', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:44:05');
INSERT INTO `sys_logininfor` VALUES ('4032', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:44:09');
INSERT INTO `sys_logininfor` VALUES ('4033', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:44:13');
INSERT INTO `sys_logininfor` VALUES ('4034', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:44:14');
INSERT INTO `sys_logininfor` VALUES ('4035', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-18 11:44:20');
INSERT INTO `sys_logininfor` VALUES ('4036', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:44:22');
INSERT INTO `sys_logininfor` VALUES ('4037', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:44:24');
INSERT INTO `sys_logininfor` VALUES ('4038', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:44:25');
INSERT INTO `sys_logininfor` VALUES ('4039', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:45:25');
INSERT INTO `sys_logininfor` VALUES ('4040', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:45:32');
INSERT INTO `sys_logininfor` VALUES ('4041', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:45:44');
INSERT INTO `sys_logininfor` VALUES ('4042', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:45:51');
INSERT INTO `sys_logininfor` VALUES ('4043', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:45:52');
INSERT INTO `sys_logininfor` VALUES ('4044', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:46:08');
INSERT INTO `sys_logininfor` VALUES ('4045', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:46:12');
INSERT INTO `sys_logininfor` VALUES ('4046', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:47:48');
INSERT INTO `sys_logininfor` VALUES ('4047', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:47:59');
INSERT INTO `sys_logininfor` VALUES ('4048', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 11:48:01');
INSERT INTO `sys_logininfor` VALUES ('4049', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:48:03');
INSERT INTO `sys_logininfor` VALUES ('4050', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:48:22');
INSERT INTO `sys_logininfor` VALUES ('4051', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 11:48:27');
INSERT INTO `sys_logininfor` VALUES ('4052', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 11:49:36');
INSERT INTO `sys_logininfor` VALUES ('4053', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 17:53:02');
INSERT INTO `sys_logininfor` VALUES ('4054', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 17:55:01');
INSERT INTO `sys_logininfor` VALUES ('4055', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 18:05:34');
INSERT INTO `sys_logininfor` VALUES ('4056', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 18:31:13');
INSERT INTO `sys_logininfor` VALUES ('4057', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 18:31:23');
INSERT INTO `sys_logininfor` VALUES ('4058', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 18:34:23');
INSERT INTO `sys_logininfor` VALUES ('4059', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 18:34:25');
INSERT INTO `sys_logininfor` VALUES ('4060', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 18:49:20');
INSERT INTO `sys_logininfor` VALUES ('4061', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 18:49:23');
INSERT INTO `sys_logininfor` VALUES ('4062', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 18:49:35');
INSERT INTO `sys_logininfor` VALUES ('4063', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 18:49:41');
INSERT INTO `sys_logininfor` VALUES ('4064', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 20:51:42');
INSERT INTO `sys_logininfor` VALUES ('4065', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 20:52:40');
INSERT INTO `sys_logininfor` VALUES ('4066', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 20:52:52');
INSERT INTO `sys_logininfor` VALUES ('4067', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 20:55:22');
INSERT INTO `sys_logininfor` VALUES ('4068', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 20:55:28');
INSERT INTO `sys_logininfor` VALUES ('4069', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 21:02:35');
INSERT INTO `sys_logininfor` VALUES ('4070', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 21:02:39');
INSERT INTO `sys_logininfor` VALUES ('4071', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 21:08:30');
INSERT INTO `sys_logininfor` VALUES ('4072', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 21:08:35');
INSERT INTO `sys_logininfor` VALUES ('4073', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 21:08:40');
INSERT INTO `sys_logininfor` VALUES ('4074', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 21:42:46');
INSERT INTO `sys_logininfor` VALUES ('4075', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 21:43:29');
INSERT INTO `sys_logininfor` VALUES ('4076', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 21:43:38');
INSERT INTO `sys_logininfor` VALUES ('4077', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 21:52:34');
INSERT INTO `sys_logininfor` VALUES ('4078', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 21:52:41');
INSERT INTO `sys_logininfor` VALUES ('4079', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 21:58:25');
INSERT INTO `sys_logininfor` VALUES ('4080', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 21:58:27');
INSERT INTO `sys_logininfor` VALUES ('4081', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 22:08:18');
INSERT INTO `sys_logininfor` VALUES ('4082', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 22:08:23');
INSERT INTO `sys_logininfor` VALUES ('4083', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 22:08:28');
INSERT INTO `sys_logininfor` VALUES ('4084', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 22:09:10');
INSERT INTO `sys_logininfor` VALUES ('4085', 'shangji', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 22:09:20');
INSERT INTO `sys_logininfor` VALUES ('4086', 'shangji', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 22:09:24');
INSERT INTO `sys_logininfor` VALUES ('4087', 'shangji', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-18 22:09:28');
INSERT INTO `sys_logininfor` VALUES ('4088', 'shangji', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 22:09:32');
INSERT INTO `sys_logininfor` VALUES ('4089', 'shangji', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-18 22:09:44');
INSERT INTO `sys_logininfor` VALUES ('4090', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-18 22:09:56');
INSERT INTO `sys_logininfor` VALUES ('4091', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 22:09:58');
INSERT INTO `sys_logininfor` VALUES ('4092', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 22:14:26');
INSERT INTO `sys_logininfor` VALUES ('4093', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 22:14:30');
INSERT INTO `sys_logininfor` VALUES ('4094', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-18 22:43:24');
INSERT INTO `sys_logininfor` VALUES ('4095', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 22:43:26');
INSERT INTO `sys_logininfor` VALUES ('4096', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-18 23:35:51');
INSERT INTO `sys_logininfor` VALUES ('4097', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:25:38');
INSERT INTO `sys_logininfor` VALUES ('4098', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:26:48');
INSERT INTO `sys_logininfor` VALUES ('4099', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:27:00');
INSERT INTO `sys_logininfor` VALUES ('4100', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:35:49');
INSERT INTO `sys_logininfor` VALUES ('4101', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 01:35:53');
INSERT INTO `sys_logininfor` VALUES ('4102', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:35:57');
INSERT INTO `sys_logininfor` VALUES ('4103', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:36:29');
INSERT INTO `sys_logininfor` VALUES ('4104', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:36:31');
INSERT INTO `sys_logininfor` VALUES ('4105', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:36:34');
INSERT INTO `sys_logininfor` VALUES ('4106', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 01:36:40');
INSERT INTO `sys_logininfor` VALUES ('4107', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:36:44');
INSERT INTO `sys_logininfor` VALUES ('4108', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:37:49');
INSERT INTO `sys_logininfor` VALUES ('4109', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 01:37:57');
INSERT INTO `sys_logininfor` VALUES ('4110', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 01:38:00');
INSERT INTO `sys_logininfor` VALUES ('4111', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:38:03');
INSERT INTO `sys_logininfor` VALUES ('4112', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:38:04');
INSERT INTO `sys_logininfor` VALUES ('4113', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:38:14');
INSERT INTO `sys_logininfor` VALUES ('4114', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:38:27');
INSERT INTO `sys_logininfor` VALUES ('4115', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:38:34');
INSERT INTO `sys_logininfor` VALUES ('4116', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:39:07');
INSERT INTO `sys_logininfor` VALUES ('4117', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 01:39:11');
INSERT INTO `sys_logininfor` VALUES ('4118', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 01:43:51');
INSERT INTO `sys_logininfor` VALUES ('4119', 'admin', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 09:13:47');
INSERT INTO `sys_logininfor` VALUES ('4120', 'admin', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 09:16:08');
INSERT INTO `sys_logininfor` VALUES ('4121', 'zhangsan', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 09:16:17');
INSERT INTO `sys_logininfor` VALUES ('4122', 'zhangsan', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 09:16:19');
INSERT INTO `sys_logininfor` VALUES ('4123', 'lisi', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-04-19 09:17:48');
INSERT INTO `sys_logininfor` VALUES ('4124', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 09:45:39');
INSERT INTO `sys_logininfor` VALUES ('4125', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 09:49:31');
INSERT INTO `sys_logininfor` VALUES ('4126', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 09:49:36');
INSERT INTO `sys_logininfor` VALUES ('4127', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 09:50:36');
INSERT INTO `sys_logininfor` VALUES ('4128', 'lisi1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 09:50:42');
INSERT INTO `sys_logininfor` VALUES ('4129', 'lisi1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 09:54:56');
INSERT INTO `sys_logininfor` VALUES ('4130', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 09:54:59');
INSERT INTO `sys_logininfor` VALUES ('4131', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 10:29:15');
INSERT INTO `sys_logininfor` VALUES ('4132', 'lifneg', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 10:29:21');
INSERT INTO `sys_logininfor` VALUES ('4133', 'lifneg', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 10:29:24');
INSERT INTO `sys_logininfor` VALUES ('4134', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 10:29:32');
INSERT INTO `sys_logininfor` VALUES ('4135', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 10:29:54');
INSERT INTO `sys_logininfor` VALUES ('4136', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 10:29:57');
INSERT INTO `sys_logininfor` VALUES ('4137', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 10:30:02');
INSERT INTO `sys_logininfor` VALUES ('4138', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 10:30:08');
INSERT INTO `sys_logininfor` VALUES ('4139', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 10:31:02');
INSERT INTO `sys_logininfor` VALUES ('4140', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 10:31:05');
INSERT INTO `sys_logininfor` VALUES ('4141', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 10:31:07');
INSERT INTO `sys_logininfor` VALUES ('4142', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:08:49');
INSERT INTO `sys_logininfor` VALUES ('4143', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 11:42:22');
INSERT INTO `sys_logininfor` VALUES ('4144', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:42:25');
INSERT INTO `sys_logininfor` VALUES ('4145', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:42:37');
INSERT INTO `sys_logininfor` VALUES ('4146', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:42:42');
INSERT INTO `sys_logininfor` VALUES ('4147', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:42:58');
INSERT INTO `sys_logininfor` VALUES ('4148', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:43:01');
INSERT INTO `sys_logininfor` VALUES ('4149', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:43:40');
INSERT INTO `sys_logininfor` VALUES ('4150', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:44:35');
INSERT INTO `sys_logininfor` VALUES ('4151', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:44:49');
INSERT INTO `sys_logininfor` VALUES ('4152', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:44:54');
INSERT INTO `sys_logininfor` VALUES ('4153', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:45:45');
INSERT INTO `sys_logininfor` VALUES ('4154', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:45:50');
INSERT INTO `sys_logininfor` VALUES ('4155', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 11:49:19');
INSERT INTO `sys_logininfor` VALUES ('4156', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:49:36');
INSERT INTO `sys_logininfor` VALUES ('4157', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 11:56:32');
INSERT INTO `sys_logininfor` VALUES ('4158', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 11:56:35');
INSERT INTO `sys_logininfor` VALUES ('4159', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 12:01:19');
INSERT INTO `sys_logininfor` VALUES ('4160', 'xiansuo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 12:01:29');
INSERT INTO `sys_logininfor` VALUES ('4161', 'xiansuo', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 12:01:37');
INSERT INTO `sys_logininfor` VALUES ('4162', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 12:01:47');
INSERT INTO `sys_logininfor` VALUES ('4163', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:42:54');
INSERT INTO `sys_logininfor` VALUES ('4164', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 13:44:16');
INSERT INTO `sys_logininfor` VALUES ('4165', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 13:44:24');
INSERT INTO `sys_logininfor` VALUES ('4166', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:44:45');
INSERT INTO `sys_logininfor` VALUES ('4167', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 13:45:19');
INSERT INTO `sys_logininfor` VALUES ('4168', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:45:22');
INSERT INTO `sys_logininfor` VALUES ('4169', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 13:55:26');
INSERT INTO `sys_logininfor` VALUES ('4170', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 13:55:36');
INSERT INTO `sys_logininfor` VALUES ('4171', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 13:55:40');
INSERT INTO `sys_logininfor` VALUES ('4172', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:00:56');
INSERT INTO `sys_logininfor` VALUES ('4173', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:01:06');
INSERT INTO `sys_logininfor` VALUES ('4174', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:08:54');
INSERT INTO `sys_logininfor` VALUES ('4175', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:17:57');
INSERT INTO `sys_logininfor` VALUES ('4176', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 14:18:51');
INSERT INTO `sys_logininfor` VALUES ('4177', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:18:55');
INSERT INTO `sys_logininfor` VALUES ('4178', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:19:10');
INSERT INTO `sys_logininfor` VALUES ('4179', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:19:21');
INSERT INTO `sys_logininfor` VALUES ('4180', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:20:06');
INSERT INTO `sys_logininfor` VALUES ('4181', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:21:49');
INSERT INTO `sys_logininfor` VALUES ('4182', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:22:08');
INSERT INTO `sys_logininfor` VALUES ('4183', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:22:14');
INSERT INTO `sys_logininfor` VALUES ('4184', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:26:04');
INSERT INTO `sys_logininfor` VALUES ('4185', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:26:17');
INSERT INTO `sys_logininfor` VALUES ('4186', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:53:06');
INSERT INTO `sys_logininfor` VALUES ('4187', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:53:27');
INSERT INTO `sys_logininfor` VALUES ('4188', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:53:36');
INSERT INTO `sys_logininfor` VALUES ('4189', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:56:02');
INSERT INTO `sys_logininfor` VALUES ('4190', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:56:24');
INSERT INTO `sys_logininfor` VALUES ('4191', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 14:56:32');
INSERT INTO `sys_logininfor` VALUES ('4192', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 14:56:48');
INSERT INTO `sys_logininfor` VALUES ('4193', 'admin', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-04-19 15:15:40');
INSERT INTO `sys_logininfor` VALUES ('4194', 'admin', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '退出成功', '2022-04-19 15:16:42');
INSERT INTO `sys_logininfor` VALUES ('4195', 'zhangsan', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 15:16:51');
INSERT INTO `sys_logininfor` VALUES ('4196', 'zhangsan', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-04-19 15:16:54');
INSERT INTO `sys_logininfor` VALUES ('4197', 'lisi', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:18:32');
INSERT INTO `sys_logininfor` VALUES ('4198', 'lisi', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:20:46');
INSERT INTO `sys_logininfor` VALUES ('4199', 'admin', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:20:49');
INSERT INTO `sys_logininfor` VALUES ('4200', 'admin', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:21:22');
INSERT INTO `sys_logininfor` VALUES ('4201', 'lisi', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:21:30');
INSERT INTO `sys_logininfor` VALUES ('4202', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:23:03');
INSERT INTO `sys_logininfor` VALUES ('4203', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:23:30');
INSERT INTO `sys_logininfor` VALUES ('4204', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:23:34');
INSERT INTO `sys_logininfor` VALUES ('4205', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 15:23:45');
INSERT INTO `sys_logininfor` VALUES ('4206', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:23:49');
INSERT INTO `sys_logininfor` VALUES ('4207', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:24:20');
INSERT INTO `sys_logininfor` VALUES ('4208', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:24:48');
INSERT INTO `sys_logininfor` VALUES ('4209', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:24:54');
INSERT INTO `sys_logininfor` VALUES ('4210', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:41:26');
INSERT INTO `sys_logininfor` VALUES ('4211', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:41:32');
INSERT INTO `sys_logininfor` VALUES ('4212', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:42:04');
INSERT INTO `sys_logininfor` VALUES ('4213', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:42:13');
INSERT INTO `sys_logininfor` VALUES ('4214', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 15:42:25');
INSERT INTO `sys_logininfor` VALUES ('4215', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:42:28');
INSERT INTO `sys_logininfor` VALUES ('4216', 'zhangsan', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '退出成功', '2022-04-19 15:43:41');
INSERT INTO `sys_logininfor` VALUES ('4217', 'admin', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-04-19 15:43:45');
INSERT INTO `sys_logininfor` VALUES ('4218', 'admin', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '退出成功', '2022-04-19 15:44:24');
INSERT INTO `sys_logininfor` VALUES ('4219', 'zhangsan', '172.16.43.85', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-04-19 15:44:33');
INSERT INTO `sys_logininfor` VALUES ('4220', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 15:44:45');
INSERT INTO `sys_logininfor` VALUES ('4221', 'lisi', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 16:06:54');
INSERT INTO `sys_logininfor` VALUES ('4222', 'lisi1', '172.16.43.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 16:07:00');
INSERT INTO `sys_logininfor` VALUES ('4223', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 17:18:17');
INSERT INTO `sys_logininfor` VALUES ('4224', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 18:08:48');
INSERT INTO `sys_logininfor` VALUES ('4225', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 18:08:52');
INSERT INTO `sys_logininfor` VALUES ('4226', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 18:09:20');
INSERT INTO `sys_logininfor` VALUES ('4227', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 18:09:30');
INSERT INTO `sys_logininfor` VALUES ('4228', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 18:10:10');
INSERT INTO `sys_logininfor` VALUES ('4229', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 18:10:20');
INSERT INTO `sys_logininfor` VALUES ('4230', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 18:10:25');
INSERT INTO `sys_logininfor` VALUES ('4231', 'lisi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 18:17:01');
INSERT INTO `sys_logininfor` VALUES ('4232', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 18:17:04');
INSERT INTO `sys_logininfor` VALUES ('4233', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 21:24:11');
INSERT INTO `sys_logininfor` VALUES ('4234', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 21:25:59');
INSERT INTO `sys_logininfor` VALUES ('4235', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 21:35:33');
INSERT INTO `sys_logininfor` VALUES ('4236', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 21:35:38');
INSERT INTO `sys_logininfor` VALUES ('4237', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 21:35:41');
INSERT INTO `sys_logininfor` VALUES ('4238', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 23:40:53');
INSERT INTO `sys_logininfor` VALUES ('4239', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:40:57');
INSERT INTO `sys_logininfor` VALUES ('4240', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 23:41:07');
INSERT INTO `sys_logininfor` VALUES ('4241', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 23:41:15');
INSERT INTO `sys_logininfor` VALUES ('4242', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 23:41:18');
INSERT INTO `sys_logininfor` VALUES ('4243', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 23:41:21');
INSERT INTO `sys_logininfor` VALUES ('4244', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 23:41:26');
INSERT INTO `sys_logininfor` VALUES ('4245', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 23:41:30');
INSERT INTO `sys_logininfor` VALUES ('4246', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 23:41:36');
INSERT INTO `sys_logininfor` VALUES ('4247', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:41:38');
INSERT INTO `sys_logininfor` VALUES ('4248', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 23:42:31');
INSERT INTO `sys_logininfor` VALUES ('4249', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:42:39');
INSERT INTO `sys_logininfor` VALUES ('4250', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 23:45:32');
INSERT INTO `sys_logininfor` VALUES ('4251', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:45:40');
INSERT INTO `sys_logininfor` VALUES ('4252', 'zhangsan3', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 23:46:19');
INSERT INTO `sys_logininfor` VALUES ('4253', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 23:48:11');
INSERT INTO `sys_logininfor` VALUES ('4254', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 23:48:15');
INSERT INTO `sys_logininfor` VALUES ('4255', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 23:48:20');
INSERT INTO `sys_logininfor` VALUES ('4256', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-19 23:48:22');
INSERT INTO `sys_logininfor` VALUES ('4257', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:48:26');
INSERT INTO `sys_logininfor` VALUES ('4258', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 23:59:32');
INSERT INTO `sys_logininfor` VALUES ('4259', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:59:35');
INSERT INTO `sys_logininfor` VALUES ('4260', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:00:42');
INSERT INTO `sys_logininfor` VALUES ('4261', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:01:12');
INSERT INTO `sys_logininfor` VALUES ('4262', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:03:14');
INSERT INTO `sys_logininfor` VALUES ('4263', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:03:16');
INSERT INTO `sys_logininfor` VALUES ('4264', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:06:37');
INSERT INTO `sys_logininfor` VALUES ('4265', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:06:47');
INSERT INTO `sys_logininfor` VALUES ('4266', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:07:13');
INSERT INTO `sys_logininfor` VALUES ('4267', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-20 00:14:37');
INSERT INTO `sys_logininfor` VALUES ('4268', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-20 00:14:40');
INSERT INTO `sys_logininfor` VALUES ('4269', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:14:43');
INSERT INTO `sys_logininfor` VALUES ('4270', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:18:09');
INSERT INTO `sys_logininfor` VALUES ('4271', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:18:16');
INSERT INTO `sys_logininfor` VALUES ('4272', 'lifeng', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:37:53');
INSERT INTO `sys_logininfor` VALUES ('4273', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:38:03');
INSERT INTO `sys_logininfor` VALUES ('4274', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:44:00');
INSERT INTO `sys_logininfor` VALUES ('4275', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:44:05');
INSERT INTO `sys_logininfor` VALUES ('4276', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 00:45:45');
INSERT INTO `sys_logininfor` VALUES ('4277', 'zhangsan1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:45:56');
INSERT INTO `sys_logininfor` VALUES ('4278', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 20:26:08');
INSERT INTO `sys_logininfor` VALUES ('4279', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 20:26:13');
INSERT INTO `sys_logininfor` VALUES ('4280', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 20:32:38');
INSERT INTO `sys_logininfor` VALUES ('4281', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 20:32:43');
INSERT INTO `sys_logininfor` VALUES ('4282', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 20:56:54');
INSERT INTO `sys_logininfor` VALUES ('4283', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 20:56:58');
INSERT INTO `sys_logininfor` VALUES ('4284', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 09:24:21');
INSERT INTO `sys_logininfor` VALUES ('4285', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 09:26:24');
INSERT INTO `sys_logininfor` VALUES ('4286', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 09:26:33');
INSERT INTO `sys_logininfor` VALUES ('4287', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-04-29 09:26:43');
INSERT INTO `sys_logininfor` VALUES ('4288', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 09:28:05');
INSERT INTO `sys_logininfor` VALUES ('4289', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 09:32:53');
INSERT INTO `sys_logininfor` VALUES ('4290', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 09:37:34');
INSERT INTO `sys_logininfor` VALUES ('4291', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 09:44:36');
INSERT INTO `sys_logininfor` VALUES ('4292', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 10:02:00');
INSERT INTO `sys_logininfor` VALUES ('4293', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 10:02:15');
INSERT INTO `sys_logininfor` VALUES ('4294', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 10:14:32');
INSERT INTO `sys_logininfor` VALUES ('4295', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 10:50:59');
INSERT INTO `sys_logininfor` VALUES ('4296', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 11:39:44');
INSERT INTO `sys_logininfor` VALUES ('4297', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 12:05:38');
INSERT INTO `sys_logininfor` VALUES ('4298', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 14:12:25');
INSERT INTO `sys_logininfor` VALUES ('4299', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 14:49:19');
INSERT INTO `sys_logininfor` VALUES ('4300', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 15:43:37');
INSERT INTO `sys_logininfor` VALUES ('4301', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '1', '验证码已失效', '2023-04-29 15:44:45');
INSERT INTO `sys_logininfor` VALUES ('4302', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 15:47:12');
INSERT INTO `sys_logininfor` VALUES ('4303', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 15:52:21');
INSERT INTO `sys_logininfor` VALUES ('4304', 'lisi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-29 15:57:27');
INSERT INTO `sys_logininfor` VALUES ('4305', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:03:13');
INSERT INTO `sys_logininfor` VALUES ('4306', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-04-29 16:03:57');
INSERT INTO `sys_logininfor` VALUES ('4307', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:04:02');
INSERT INTO `sys_logininfor` VALUES ('4308', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:05:20');
INSERT INTO `sys_logininfor` VALUES ('4309', 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-04-29 16:08:12');
INSERT INTO `sys_logininfor` VALUES ('4310', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:17:27');
INSERT INTO `sys_logininfor` VALUES ('4311', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:33:23');
INSERT INTO `sys_logininfor` VALUES ('4312', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:37:00');
INSERT INTO `sys_logininfor` VALUES ('4313', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 16:37:00');
INSERT INTO `sys_logininfor` VALUES ('4314', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 16:37:24');
INSERT INTO `sys_logininfor` VALUES ('4315', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 16:37:24');
INSERT INTO `sys_logininfor` VALUES ('4316', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 18:55:45');
INSERT INTO `sys_logininfor` VALUES ('4317', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 18:55:45');
INSERT INTO `sys_logininfor` VALUES ('4318', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 18:58:11');
INSERT INTO `sys_logininfor` VALUES ('4319', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 18:58:11');
INSERT INTO `sys_logininfor` VALUES ('4320', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-04-29 18:58:33');
INSERT INTO `sys_logininfor` VALUES ('4321', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 18:58:49');
INSERT INTO `sys_logininfor` VALUES ('4322', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-04-29 18:58:50');
INSERT INTO `sys_logininfor` VALUES ('4323', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-29 19:00:56');
INSERT INTO `sys_logininfor` VALUES ('4324', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-02 00:38:04');
INSERT INTO `sys_logininfor` VALUES ('4325', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-05-02 00:57:18');
INSERT INTO `sys_logininfor` VALUES ('4326', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-02 00:57:23');
INSERT INTO `sys_logininfor` VALUES ('4327', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-05-02 01:06:04');
INSERT INTO `sys_logininfor` VALUES ('4328', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-02 01:06:16');
INSERT INTO `sys_logininfor` VALUES ('4329', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:39:22');
INSERT INTO `sys_logininfor` VALUES ('4330', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-05-15 10:39:38');
INSERT INTO `sys_logininfor` VALUES ('4331', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:40:07');
INSERT INTO `sys_logininfor` VALUES ('4332', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:40:51');
INSERT INTO `sys_logininfor` VALUES ('4333', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:44:57');
INSERT INTO `sys_logininfor` VALUES ('4334', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:45:10');
INSERT INTO `sys_logininfor` VALUES ('4335', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-05-15 10:45:18');
INSERT INTO `sys_logininfor` VALUES ('4336', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:45:47');
INSERT INTO `sys_logininfor` VALUES ('4337', 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-05-15 10:46:48');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2083 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '6', 'system', null, '1', '0', 'M', '0', '0', '', 'icon_menu_xtgl', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-15 06:10:52', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '2024', '1', 'user', 'system/user/index', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-13 02:28:18', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '2024', '2', 'role', 'system/role/index', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-13 02:28:31', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '2024', '3', 'menu', 'system/menu/index', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-13 02:28:46', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '2024', '4', 'dept', 'system/dept/index', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-13 02:29:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '3', 'dict', 'system/dict/index', '1', '0', 'C', '0', '0', 'system:dict:list', 'icon_menu_zdgl', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-13 03:34:47', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '1', '0', 'M', '1', '0', '', 'log', 'admin', '2021-03-31 03:12:10', 'admin', '2021-04-01 11:04:39', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '10', 'operlog', 'monitor/operlog/index', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-03-31 03:12:11', 'admin', '2021-04-13 02:41:56', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '11', 'logininfor', 'monitor/logininfor/index', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-03-31 03:12:11', 'admin', '2021-04-13 02:42:04', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-03-31 03:12:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-03-31 03:12:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2001', '商机管理', '0', '2', 'business', 'clues/business/index', '1', '0', 'C', '0', '0', 'business:business:list', 'icon_menu_sjgl', 'admin', '2021-03-31 09:39:34', 'admin', '2021-04-27 09:34:06', '');
INSERT INTO `sys_menu` VALUES ('2002', '合同管理', '0', '3', 'contract', 'clues/contract/index', '1', '0', 'C', '0', '0', 'contract:contract:list', 'icon_menu_htgl', 'admin', '2021-03-31 09:40:27', 'admin', '2021-05-21 07:35:07', '');
INSERT INTO `sys_menu` VALUES ('2003', '活动管理', '0', '4', 'activity', 'clues/activity/index', '1', '0', 'C', '0', '0', 'clues:activity:list', 'icon_menu_hdgl', 'admin', '2021-04-01 02:56:38', 'admin', '2021-04-27 03:21:08', '活动管理菜单');
INSERT INTO `sys_menu` VALUES ('2004', '活动管理查询', '2003', '1', '#', '', '1', '0', 'F', '0', '0', 'clues:activity:query', '#', 'admin', '2021-04-01 02:56:38', 'admin', '2021-04-01 03:08:39', '');
INSERT INTO `sys_menu` VALUES ('2005', '活动管理新增', '2003', '2', '#', '', '1', '0', 'F', '0', '0', 'clues:activity:add', '#', 'admin', '2021-04-01 02:56:38', 'admin', '2021-04-01 03:08:50', '');
INSERT INTO `sys_menu` VALUES ('2006', '活动管理修改', '2003', '3', '#', '', '1', '0', 'F', '0', '0', 'clues:activity:edit', '#', 'admin', '2021-04-01 02:56:38', 'admin', '2021-04-01 03:09:04', '');
INSERT INTO `sys_menu` VALUES ('2007', '活动管理删除', '2003', '4', '#', '', '1', '0', 'F', '0', '0', 'clues:activity:remove', '#', 'admin', '2021-04-01 02:56:38', 'admin', '2021-04-01 03:09:14', '');
INSERT INTO `sys_menu` VALUES ('2008', '活动管理导出', '2003', '5', '#', '', '1', '0', 'F', '0', '0', 'clues:activity:export', '#', 'admin', '2021-04-01 02:56:38', 'admin', '2021-04-01 03:09:31', '');
INSERT INTO `sys_menu` VALUES ('2009', '课程管理', '0', '4', 'course', 'clues/course/index', '1', '0', 'C', '0', '0', 'clues:course:list', 'icon_menu_kcgl', 'admin', '2021-04-01 10:14:16', 'admin', '2021-04-13 02:04:05', '课程管理菜单');
INSERT INTO `sys_menu` VALUES ('2010', '课程管理查询', '2009', '1', '#', '', '1', '0', 'F', '0', '0', 'clues:course:query', '#', 'admin', '2021-04-01 10:14:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '课程管理新增', '2009', '2', '#', '', '1', '0', 'F', '0', '0', 'clues:course:add', '#', 'admin', '2021-04-01 10:14:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '课程管理修改', '2009', '3', '#', '', '1', '0', 'F', '0', '0', 'clues:course:edit', '#', 'admin', '2021-04-01 10:14:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '课程管理删除', '2009', '4', '#', '', '1', '0', 'F', '0', '0', 'clues:course:remove', '#', 'admin', '2021-04-01 10:14:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '线索管理', '0', '1', 'clue', 'clues/clue/index', '1', '0', 'C', '0', '0', 'clues:clue:list', 'icon_menu_xsgl', 'admin', '2021-04-02 09:02:31', 'admin', '2023-06-10 18:32:41', '线索管理菜单');
INSERT INTO `sys_menu` VALUES ('2016', '线索管理查询', '2015', '1', '#', '', '1', '0', 'F', '0', '0', 'clues:clue:query', '#', 'admin', '2021-04-02 09:02:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '线索管理新增', '2015', '2', '#', '', '1', '0', 'F', '0', '0', 'clues:clue:add', '#', 'admin', '2021-04-02 09:02:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '线索管理跟进', '2015', '3', '#', '', '1', '0', 'F', '0', '0', 'clues:record:add', '#', 'admin', '2021-04-02 09:02:31', 'admin', '2021-05-19 09:28:18', '');
INSERT INTO `sys_menu` VALUES ('2019', '线索管理删除', '2015', '4', '#', '', '1', '0', 'F', '0', '0', 'clues:clue:remove', '#', 'admin', '2021-04-02 09:02:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '线索管理查看', '2015', '6', '', null, '1', '0', 'F', '0', '0', 'clues:clue:info', '#', 'admin', '2021-04-08 10:07:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '线索管理分配', '2015', '7', '', null, '1', '0', 'F', '0', '0', 'clues:clue:assignment', '#', 'admin', '2021-04-08 10:08:49', 'admin', '2021-05-19 09:27:49', '');
INSERT INTO `sys_menu` VALUES ('2024', '权限管理', '1', '2', 'permission', null, '1', '0', 'M', '0', '0', null, 'icon_menu_qxgl', 'admin', '2021-04-13 02:27:50', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '线索配置', '1', '4', 'clew', 'system/clew/index', '1', '0', 'C', '0', '0', 'system:clew:list', 'icon_menu_xspz', 'admin', '2021-04-13 03:11:34', 'admin', '2021-04-13 03:32:24', '');
INSERT INTO `sys_menu` VALUES ('2026', '商机配置', '1', '6', 'opportunity', 'system/opportunity/index', '1', '0', 'C', '0', '0', 'system:opportunity:list', 'icon_menu_sjpz', 'admin', '2021-04-13 03:34:06', 'admin', '2021-04-26 08:16:57', '');
INSERT INTO `sys_menu` VALUES ('2027', '统计分析', '0', '5', 'countAnalysis', 'clues/countAnalysis/index', '1', '0', 'C', '0', '0', 'clues:countAnalysis:list', 'icon_menu_tjfx', 'admin', '2021-04-15 06:06:56', 'admin', '2021-11-05 08:56:10', '');
INSERT INTO `sys_menu` VALUES ('2028', '商机管理查询', '2001', '1', '', null, '1', '0', 'F', '0', '0', 'business:business:query', '#', 'admin', '2021-04-26 05:40:08', 'admin', '2021-04-27 09:49:30', '');
INSERT INTO `sys_menu` VALUES ('2029', '商机管理新增', '2001', '2', '', null, '1', '0', 'F', '0', '0', 'business:business:add', '#', 'admin', '2021-04-26 05:40:46', 'admin', '2021-04-27 09:49:37', '');
INSERT INTO `sys_menu` VALUES ('2031', '商机管理查看', '2001', '4', '', null, '1', '0', 'F', '0', '0', 'business:business:info', '#', 'admin', '2021-04-26 05:42:03', 'admin', '2021-04-27 09:49:56', '');
INSERT INTO `sys_menu` VALUES ('2032', '商机管理分配', '2001', '5', '', null, '1', '0', 'F', '0', '0', 'business:business:assignment', '#', 'admin', '2021-04-26 05:42:29', 'admin', '2021-05-19 09:11:29', '');
INSERT INTO `sys_menu` VALUES ('2033', '活动管理通过', '2003', '6', '', null, '1', '0', 'F', '0', '0', 'clues:activity:pass', '#', 'admin', '2021-04-26 06:47:54', 'admin', '2021-05-31 10:25:41', '');
INSERT INTO `sys_menu` VALUES ('2034', '通知中心', '1', '8', 'noticeCenter', 'system/noticeCenter/index', '1', '0', 'C', '0', '0', 'system:noticeCenter:list', 'icon_menu_tzzx', 'admin', '2021-04-26 07:04:59', 'admin', '2021-04-26 07:05:33', '');
INSERT INTO `sys_menu` VALUES ('2035', '转派管理', '0', '5', 'transferManage', 'clues/transferManage/index', '1', '0', 'C', '0', '0', 'transfer:transfer:list', 'example', 'admin', '2021-04-26 10:09:13', 'admin', '2021-11-05 08:56:03', '');
INSERT INTO `sys_menu` VALUES ('2042', '系统日志', '1', '9', 'systemLog', 'system/systemLog/index', '1', '0', 'C', '0', '0', 'system:systemLog:list', 'icon_menu_xtrz', 'admin', '2021-04-28 10:04:59', 'admin', '2023-06-12 22:53:57', '');
INSERT INTO `sys_menu` VALUES ('2043', '商机跟进', '2001', '6', '', null, '1', '0', 'F', '0', '0', 'business:record:add', '#', 'admin', '2021-05-14 07:16:18', 'admin', '2021-05-14 07:18:29', '');
INSERT INTO `sys_menu` VALUES ('2044', '踢回公海', '2001', '8', '', null, '1', '0', 'F', '0', '0', 'business:business:back', '#', 'admin', '2021-05-14 07:18:11', 'admin', '2021-05-14 07:18:44', '');
INSERT INTO `sys_menu` VALUES ('2045', '查询公海池', '2001', '9', '', null, '1', '0', 'F', '0', '0', 'business:business:pool', '#', 'admin', '2021-05-14 07:26:41', 'admin', '2021-05-14 07:32:35', '');
INSERT INTO `sys_menu` VALUES ('2046', '线索池', '2015', '8', '', null, '1', '0', 'F', '0', '0', 'clues:clue:pool', '#', 'admin', '2021-05-14 07:32:07', 'admin', '2021-05-14 07:33:00', '');
INSERT INTO `sys_menu` VALUES ('2047', '线索跟进记录', '2015', '9', '', null, '1', '0', 'F', '0', '0', 'clues:record:list', '#', 'admin', '2021-05-17 02:47:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '线索管理批量添加', '2015', '10', '', null, '1', '0', 'F', '0', '0', 'clues:clue:batchAdd', '#', 'admin', '2021-05-19 09:04:37', 'admin', '2021-05-19 09:05:27', '');
INSERT INTO `sys_menu` VALUES ('2049', '商机捞取', '2001', '10', '', null, '1', '0', 'F', '0', '0', 'business:business:gain', '#', 'admin', '2021-05-19 09:13:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2051', '活动查看', '2001', '11', '', null, '1', '0', 'F', '0', '0', 'clues:activity:list', '#', 'admin', '2021-05-20 01:46:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '合同查询', '2002', '1', '', null, '1', '0', 'F', '0', '0', 'contract:contract:query', '#', 'admin', '2021-05-21 07:35:53', 'admin', '2021-05-21 07:36:30', '');
INSERT INTO `sys_menu` VALUES ('2053', '合同新增', '2002', '2', '', null, '1', '0', 'F', '0', '0', 'contract:contract:add', '#', 'admin', '2021-05-21 07:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '线索捞取', '2015', '11', 'clues:clue:gain', null, '1', '0', 'F', '0', '0', 'clues:clue:gain', '#', 'admin', '2021-05-25 06:19:10', 'admin', '2021-05-25 06:19:27', '');
INSERT INTO `sys_menu` VALUES ('2065', '活动管理驳回', '2003', '7', '', null, '1', '0', 'F', '0', '0', 'clues:activity:reject', '#', 'admin', '2021-05-31 10:26:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '商机转合同', '2001', '14', '', null, '1', '0', 'F', '0', '0', 'contract:contract:change', '#', 'admin', '2021-06-01 09:21:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '合同基本信息查看', '2002', '10', '', null, '1', '0', 'F', '0', '0', 'contract:contract:detail', '#', 'admin', '2021-06-02 07:44:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '首页', '0', '0', 'index', 'indexHome', '1', '0', 'C', '0', '0', 'indexHome:list', 'icon_menu_home', 'admin', '2021-06-23 08:34:29', 'admin', '2021-07-01 07:11:01', '');
INSERT INTO `sys_menu` VALUES ('2069', '首页基础数据查询', '2068', '1', '', null, '1', '0', 'F', '0', '0', 'indexHome:baseQuery', '#', 'admin', '2021-06-23 08:59:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '首页今日简报', '2068', '2', '', null, '1', '0', 'F', '0', '0', 'indexHome:todayQuery', '#', 'admin', '2021-06-23 09:00:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2071', '首页待办', '2068', '3', '', null, '1', '0', 'F', '0', '0', 'indexHome:todoQuery', '#', 'admin', '2021-06-23 09:01:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '首页漏斗图', '2068', '4', '', null, '1', '0', 'F', '0', '0', 'indexHome:funnelQuery', '#', 'admin', '2021-06-23 09:02:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '首页销售龙虎榜', '2068', '5', '', null, '1', '0', 'F', '0', '0', 'indexHome:saleQuery', '#', 'admin', '2021-06-23 09:02:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '首页商机龙虎榜', '2068', '6', '', null, '1', '0', 'F', '0', '0', 'indexHome:businessQuery', '#', 'admin', '2021-06-23 09:03:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '线索转商机', '2015', '12', 'clues:clue:changeBusiness', null, '1', '0', 'F', '0', '0', 'clues:clue:changeBusiness', '#', 'admin', '2021-06-23 09:03:32', 'admin', '2021-06-23 09:03:32', '线索转商机');
INSERT INTO `sys_menu` VALUES ('2078', '转派处理', '2035', '0', 'transfer:transfer:assignment', null, '1', '0', 'F', '0', '0', 'transfer:transfer:assignment', '#', 'admin', '2021-06-23 09:03:32', 'admin', '2021-06-23 09:03:32', '转派管理');
INSERT INTO `sys_menu` VALUES ('2079', '商机跟进记录列表查询', '2001', '6', 'business:record:list', null, '1', '0', 'F', '0', '0', 'business:record:list', '#', 'admin', '2021-06-23 09:02:48', '', null, '商机跟进记录');
INSERT INTO `sys_menu` VALUES ('2080', '合同详情预览', '2002', '6', 'contract:contract:info', null, '1', '0', 'F', '0', '0', 'contract:contract:info', '#', 'admin', '2021-06-23 09:02:48', 'admin', '2021-06-23 09:02:48', '合同详情');
INSERT INTO `sys_menu` VALUES ('2081', '退回公海', '2001', '11', 'business:business:back', null, '1', '0', 'F', '0', '0', 'business:business:back', '#', 'admin', '2021-06-23 09:02:48', 'admin', '2021-06-23 09:02:48', '退回公海');
INSERT INTO `sys_menu` VALUES ('2082', '伪线索', '2015', '8', 'clues:clue:false', null, '1', '0', 'F', '0', '0', 'clues:clue:false', '#', 'admin', '2021-06-23 09:02:48', 'admin', '2021-06-23 09:02:48', '伪线索');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `notice_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21441 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('21052', '角色管理', '1', 'com.huike.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":120,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:20:37');
INSERT INTO `sys_oper_log` VALUES ('21053', '角色管理', '1', 'com.huike.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":121,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:21:03');
INSERT INTO `sys_oper_log` VALUES ('21054', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":120,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:21:10');
INSERT INTO `sys_oper_log` VALUES ('21055', '角色管理', '1', 'com.huike.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":122,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zg\",\"roleName\":\"销售主管(管理所有销售)\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:21:29');
INSERT INTO `sys_oper_log` VALUES ('21056', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:23:15');
INSERT INTO `sys_oper_log` VALUES ('21057', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1650244863000,\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:23:19');
INSERT INTO `sys_oper_log` VALUES ('21058', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"menuCheckStrictly\":true,\"roleKey\":\"zg\",\"roleName\":\"销售主管(管理所有销售)\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:23:30');
INSERT INTO `sys_oper_log` VALUES ('21059', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1617131530000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[2015,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2022,2046,2047,2048,2059],\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员角色', '2022-04-18 09:24:43');
INSERT INTO `sys_oper_log` VALUES ('21060', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"menuIds\":[2015,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2022,2046,2047,2048,2059],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:25:09');
INSERT INTO `sys_oper_log` VALUES ('21061', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2022,2046,2047,2048,2059,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:25:26');
INSERT INTO `sys_oper_log` VALUES ('21062', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1650244863000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"menuIds\":[2001,2002,2068,2069,2070,2071,2072,2073,2074,2028,2029,2031,2043,2044,2045,2049,2051,2066,2052,2053,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 09:28:13');
INSERT INTO `sys_oper_log` VALUES ('21063', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:44:57');
INSERT INTO `sys_oper_log` VALUES ('21064', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1650244863000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"menuIds\":[2001,2002,1,2068,2069,2070,2071,2072,2073,2074,2028,2029,2031,2043,2044,2045,2049,2051,2066,2052,2053,2067,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:45:13');
INSERT INTO `sys_oper_log` VALUES ('21065', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[1,2068,2069,2070,2071,2072,2073,2074,2015,2016,2017,2018,2019,2022,2023,2046,2047,2048,2059,2001,2028,2029,2031,2032,2043,2044,2045,2049,2051,2066,2002,2052,2053,2054,2055,2056,2057,2058,2061,2062,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2014,2027,2035,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:46:25');
INSERT INTO `sys_oper_log` VALUES ('21066', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/202', '127.0.0.1', '内网IP', '{deptId=202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:46:53');
INSERT INTO `sys_oper_log` VALUES ('21067', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', '0', null, '2022-04-18 10:46:55');
INSERT INTO `sys_oper_log` VALUES ('21068', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/203', '127.0.0.1', '内网IP', '{deptId=203}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', '0', null, '2022-04-18 10:46:59');
INSERT INTO `sys_oper_log` VALUES ('21069', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:47:00');
INSERT INTO `sys_oper_log` VALUES ('21070', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:47:02');
INSERT INTO `sys_oper_log` VALUES ('21071', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/201', '127.0.0.1', '内网IP', '{deptId=201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:47:04');
INSERT INTO `sys_oper_log` VALUES ('21072', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', '0', null, '2022-04-18 10:47:07');
INSERT INTO `sys_oper_log` VALUES ('21073', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', '0', null, '2022-04-18 10:47:11');
INSERT INTO `sys_oper_log` VALUES ('21074', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1617131530000,\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"127.0.0.1\",\"email\":\"admin@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"李峰\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1617131530000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2022-04-18 10:49:09');
INSERT INTO `sys_oper_log` VALUES ('21075', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:49:31');
INSERT INTO `sys_oper_log` VALUES ('21076', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/213', '127.0.0.1', '内网IP', '{deptId=213}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:49:34');
INSERT INTO `sys_oper_log` VALUES ('21077', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/204', '127.0.0.1', '内网IP', '{deptId=204}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:49:39');
INSERT INTO `sys_oper_log` VALUES ('21078', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/205', '127.0.0.1', '内网IP', '{deptId=205}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:49:42');
INSERT INTO `sys_oper_log` VALUES ('21079', '部门管理', '3', 'com.huike.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/203', '127.0.0.1', '内网IP', '{deptId=203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:49:45');
INSERT INTO `sys_oper_log` VALUES ('21080', '部门管理', '2', 'com.huike.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"客源管家\",\"leader\":\"李峰\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1617131529000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"lifeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:50:35');
INSERT INTO `sys_oper_log` VALUES ('21081', '部门管理', '2', 'com.huike.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"北京总公司\",\"leader\":\"李峰\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1617131529000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"lifeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:50:54');
INSERT INTO `sys_oper_log` VALUES ('21082', '部门管理', '2', 'com.huike.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"研发部门\",\"leader\":\"李峰\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1617131529000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"lifeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:51:03');
INSERT INTO `sys_oper_log` VALUES ('21083', '部门管理', '1', 'com.huike.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"15777777777\",\"ancestors\":\"0,100,214\",\"email\":\"zhangsan@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:51:50');
INSERT INTO `sys_oper_log` VALUES ('21084', '部门管理', '1', 'com.huike.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"销售部（商机）\",\"leader\":\"李四\",\"orderNum\":\"5\",\"params\":{},\"parentId\":214,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"15666666666\",\"ancestors\":\"0,100,214\",\"email\":\"lisi@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:52:25');
INSERT INTO `sys_oper_log` VALUES ('21085', '部门管理', '2', 'com.huike.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"研发部门\",\"leader\":\"李峰\",\"deptId\":103,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1617131529000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"lifeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:52:31');
INSERT INTO `sys_oper_log` VALUES ('21086', '部门管理', '2', 'com.huike.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"销售部门\",\"leader\":\"张三\",\"deptId\":214,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1637653705000,\"phone\":\"15011111111\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"511111111@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:52:34');
INSERT INTO `sys_oper_log` VALUES ('21087', '部门管理', '2', 'com.huike.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"客达管家\",\"leader\":\"李峰\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1617131529000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"lifeng@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 10:54:38');
INSERT INTO `sys_oper_log` VALUES ('21088', '用户管理', '1', 'com.huike.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15777777777\",\"admin\":false,\"password\":\"$2a$10$LrJqsVulcZo9Ia.dHSt02.IiB/4u/W5D3e7kSvEuV1/rW0nDb3wOu\",\"email\":\"zhangsan@qq.com\",\"nickName\":\"zhangsan\",\"sex\":\"0\",\"deptId\":215,\"params\":{},\"userName\":\"zhangsan\",\"userId\":1022,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:29:20');
INSERT INTO `sys_oper_log` VALUES ('21089', '用户管理', '1', 'com.huike.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15666666666\",\"admin\":false,\"password\":\"$2a$10$3Fxg5AOywhh4MbgFLkYJE.i.QSA1VKSJVZbMI//pwsZ5boaqaRAf.\",\"email\":\"lisi@qq.com\",\"nickName\":\"lisi\",\"sex\":\"1\",\"deptId\":216,\"params\":{},\"userName\":\"lisi\",\"userId\":1023,\"createBy\":\"admin\",\"roleIds\":[3],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:30:18');
INSERT INTO `sys_oper_log` VALUES ('21090', '用户管理', '1', 'com.huike.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15555555555\",\"admin\":false,\"password\":\"$2a$10$iC36e6hFVpa1hGX.fTYJL.swWrrukDUCyv5Zl.Jl00tL1IXWQgCCy\",\"email\":\"lifeng@qq.com\",\"nickName\":\"lifeng\",\"sex\":\"0\",\"deptId\":214,\"params\":{},\"userName\":\"lifeng\",\"userId\":1024,\"createBy\":\"admin\",\"roleIds\":[4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:31:20');
INSERT INTO `sys_oper_log` VALUES ('21091', '用户管理', '1', 'com.huike.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15333333333\",\"admin\":false,\"password\":\"$2a$10$edSLagLw.q5QvLGTPP6nGulNR1ZWEQ4ar8BSCZNNwGeYfOyMKcLq6\",\"email\":\"zhangsan1@qq.com\",\"nickName\":\"zhangsan1\",\"sex\":\"0\",\"deptId\":215,\"params\":{},\"userName\":\"zhangsan1\",\"userId\":1025,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:32:21');
INSERT INTO `sys_oper_log` VALUES ('21092', '用户管理', '1', 'com.huike.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15444444444\",\"admin\":false,\"password\":\"$2a$10$foqej.Z0e.otPwinDGAtDOFu6HzEkPDesHjh76XNWQx52wGzD3uRy\",\"email\":\"lisi1@qq.com\",\"nickName\":\"lisi1\",\"sex\":\"0\",\"deptId\":216,\"params\":{},\"userName\":\"lisi1\",\"userId\":1026,\"createBy\":\"admin\",\"roleIds\":[3],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:33:28');
INSERT INTO `sys_oper_log` VALUES ('21093', '用户管理', '5', 'com.huike.web.controller.system.SysUserController.export()', 'GET', '1', 'admin', null, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"a974fb38-101b-4d75-9162-691098a8f90a_用户数据.xlsx\",\"code\":200}', '0', null, '2022-04-18 11:33:55');
INSERT INTO `sys_oper_log` VALUES ('21094', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15777777777\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"zhangsan@qq.com\",\"nickName\":\"zhangsan\",\"sex\":\"0\",\"deptId\":215,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zhangsan\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650252560000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:46:54');
INSERT INTO `sys_oper_log` VALUES ('21095', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15333333333\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"zhangsan1@qq.com\",\"nickName\":\"zhangsan1\",\"sex\":\"0\",\"deptId\":215,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zhangsan1\",\"userId\":3,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650252741000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:47:22');
INSERT INTO `sys_oper_log` VALUES ('21096', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15666666666\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"lisi@qq.com\",\"nickName\":\"lisi\",\"sex\":\"1\",\"deptId\":216,\"avatar\":\"\",\"dept\":{\"deptName\":\"销售部（商机）\",\"leader\":\"李四\",\"deptId\":216,\"orderNum\":\"5\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lisi\",\"userId\":4,\"createBy\":\"admin\",\"roleIds\":[3],\"createTime\":1650252618000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:47:28');
INSERT INTO `sys_oper_log` VALUES ('21097', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15444444444\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"lisi1@qq.com\",\"nickName\":\"lisi1\",\"sex\":\"0\",\"deptId\":216,\"avatar\":\"\",\"dept\":{\"deptName\":\"销售部（商机）\",\"leader\":\"李四\",\"deptId\":216,\"orderNum\":\"5\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lisi1\",\"userId\":5,\"createBy\":\"admin\",\"roleIds\":[3],\"createTime\":1650252808000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:47:32');
INSERT INTO `sys_oper_log` VALUES ('21098', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15555555555\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"lifeng@qq.com\",\"nickName\":\"lifeng\",\"sex\":\"0\",\"deptId\":214,\"avatar\":\"\",\"dept\":{\"deptName\":\"销售部门\",\"leader\":\"张三\",\"deptId\":214,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lifeng\",\"userId\":6,\"createBy\":\"admin\",\"roleIds\":[4],\"createTime\":1650252680000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:47:38');
INSERT INTO `sys_oper_log` VALUES ('21099', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2022,2046,2047,2059,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 11:49:08');
INSERT INTO `sys_oper_log` VALUES ('21100', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'zhangsan', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"1\",\"activityId\":78,\"id\":9088,\"createTimeStr\":\"2022-04-18\",\"sex\":\"0\",\"params\":{},\"createBy\":\"zhangsan\",\"createTime\":1650277969332,\"phone\":\"15011111111\",\"falseCount\":0,\"name\":\"张益达\",\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 18:32:49');
INSERT INTO `sys_oper_log` VALUES ('21101', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '127.0.0.1', '内网IP', '{\"level\":\"1\",\"nextTime\":1650340800000,\"subject\":\"0\",\"record\":\"电话接通，已确认身份，0基础，想学java\",\"sex\":\"0\",\"name\":\"张益达\",\"clueId\":9088,\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 18:34:10');
INSERT INTO `sys_oper_log` VALUES ('21102', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2022,2046,2047,2059,2077,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 18:49:15');
INSERT INTO `sys_oper_log` VALUES ('21103', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9088', '127.0.0.1', '内网IP', '9088', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 18:50:46');
INSERT INTO `sys_oper_log` VALUES ('21104', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'zhangsan', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"1\",\"activityId\":78,\"id\":9089,\"createTimeStr\":\"2022-04-18\",\"sex\":\"0\",\"params\":{},\"createBy\":\"zhangsan\",\"createTime\":1650280860272,\"phone\":\"15333232333\",\"falseCount\":0,\"name\":\"张三\",\"age\":20}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 19:21:00');
INSERT INTO `sys_oper_log` VALUES ('21105', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9089', '127.0.0.1', '内网IP', '9089', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 19:21:50');
INSERT INTO `sys_oper_log` VALUES ('21106', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9088', '127.0.0.1', '内网IP', '9088', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 19:23:44');
INSERT INTO `sys_oper_log` VALUES ('21107', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'zhangsan', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":79,\"id\":9090,\"createTimeStr\":\"2022-04-18\",\"sex\":\"0\",\"params\":{},\"createBy\":\"zhangsan\",\"createTime\":1650286662273,\"phone\":\"15221212121\",\"falseCount\":0,\"name\":\"张十一\",\"age\":22}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 20:57:42');
INSERT INTO `sys_oper_log` VALUES ('21108', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'admin', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":110,\"id\":9091,\"createTimeStr\":\"2022-04-18\",\"sex\":\"0\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1650287255456,\"phone\":\"15878787878\",\"falseCount\":0,\"name\":\"王五\",\"age\":22}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:07:35');
INSERT INTO `sys_oper_log` VALUES ('21109', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9091],\"userId\":2}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-18 21:07:57');
INSERT INTO `sys_oper_log` VALUES ('21110', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '127.0.0.1', '内网IP', '{\"level\":\"2\",\"nextTime\":1650340800000,\"subject\":\"0\",\"record\":\"了解\",\"sex\":\"0\",\"name\":\"王五\",\"clueId\":9091,\"age\":22}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:10:18');
INSERT INTO `sys_oper_log` VALUES ('21111', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9091', '127.0.0.1', '内网IP', '9091', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:10:28');
INSERT INTO `sys_oper_log` VALUES ('21112', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'admin', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":110,\"id\":9092,\"createTimeStr\":\"2022-04-18\",\"sex\":\"0\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1650289399317,\"phone\":\"13574545455\",\"falseCount\":0,\"name\":\"李三十\",\"age\":30}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:43:19');
INSERT INTO `sys_oper_log` VALUES ('21113', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9092],\"userId\":2}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-18 21:43:27');
INSERT INTO `sys_oper_log` VALUES ('21114', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9092', '127.0.0.1', '内网IP', '9092', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:45:38');
INSERT INTO `sys_oper_log` VALUES ('21115', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'zhangsan', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"1\",\"activityId\":78,\"id\":9093,\"createTimeStr\":\"2022-04-18\",\"sex\":\"0\",\"params\":{},\"createBy\":\"zhangsan\",\"createTime\":1650289636990,\"phone\":\"13545454555\",\"falseCount\":0,\"name\":\"李时体\",\"age\":22}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:47:17');
INSERT INTO `sys_oper_log` VALUES ('21116', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'zhangsan1', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":79,\"id\":9094,\"createTimeStr\":\"2022-04-18\",\"sex\":\"1\",\"params\":{},\"createBy\":\"zhangsan1\",\"createTime\":1650289990784,\"phone\":\"15021212121\",\"falseCount\":0,\"name\":\"丽丽\",\"age\":22}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:53:10');
INSERT INTO `sys_oper_log` VALUES ('21117', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/changeBusiness/9094', '127.0.0.1', '内网IP', '9094', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:53:22');
INSERT INTO `sys_oper_log` VALUES ('21118', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'zhangsan1', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"1\",\"activityId\":72,\"id\":9095,\"createTimeStr\":\"2022-04-18\",\"sex\":\"1\",\"params\":{},\"createBy\":\"zhangsan1\",\"createTime\":1650290109337,\"phone\":\"15321212121\",\"falseCount\":0,\"name\":\"楼江华\",\"age\":22}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 21:55:09');
INSERT INTO `sys_oper_log` VALUES ('21119', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/changeBusiness/9095', '127.0.0.1', '内网IP', '9095', 'null', '1', '', '2022-04-18 21:55:15');
INSERT INTO `sys_oper_log` VALUES ('21120', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/changeBusiness/9095', '127.0.0.1', '内网IP', '9095', 'null', '1', '', '2022-04-18 21:56:25');
INSERT INTO `sys_oper_log` VALUES ('21121', '线索管理', '1', 'com.huike.web.controller.clues.TbClueController.add()', 'POST', '1', 'admin', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":110,\"id\":9096,\"createTimeStr\":\"2022-04-18\",\"sex\":\"1\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1650290863160,\"phone\":\"13252454545\",\"falseCount\":0,\"name\":\"李丽宗\",\"age\":21}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 22:07:43');
INSERT INTO `sys_oper_log` VALUES ('21122', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9096],\"userId\":2}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-18 22:08:13');
INSERT INTO `sys_oper_log` VALUES ('21123', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9096', '127.0.0.1', '内网IP', '9096', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 22:08:57');
INSERT INTO `sys_oper_log` VALUES ('21124', '商机', '1', 'com.huike.web.controller.business.TbBusinessController.add()', 'POST', '1', 'admin', null, '/business', '127.0.0.1', '内网IP', '{\"city\":\"市辖区\",\"subject\":\"0\",\"channel\":\"0\",\"id\":3428,\"createTimeStr\":\"2022-04-18\",\"qq\":\"5055555\",\"provinces\":\"北京市\",\"sex\":\"1\",\"params\":{},\"createBy\":\"admin\",\"weixin\":\"wx12121\",\"createTime\":1650292958719,\"phone\":\"15011212121\",\"falseCount\":0,\"name\":\"张诗怡\",\"region\":\"北京市_市辖区\",\"age\":20}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-18 22:42:38');
INSERT INTO `sys_oper_log` VALUES ('21125', '用户管理', '1', 'com.huike.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15423333333\",\"admin\":false,\"password\":\"$2a$10$EEK41h4r3nclQblcCgjkPuivvDjaHrbzNHCmkcQTaBDRCDEDq4SY.\",\"email\":\"zhangsan3@qq.com\",\"nickName\":\"zhangsan3\",\"sex\":\"0\",\"deptId\":215,\"params\":{},\"userName\":\"zhangsan3\",\"userId\":1027,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:26:22');
INSERT INTO `sys_oper_log` VALUES ('21126', '上传线索', '6', 'com.huike.web.controller.clues.TbClueController.importData()', 'POST', '1', 'lifeng', null, '/clues/clue/importData', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"failureNum\":0,\"successNum\":499}}', '0', null, '2022-04-19 01:28:13');
INSERT INTO `sys_oper_log` VALUES ('21127', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'lifeng', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9585],\"userId\":2}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:28:40');
INSERT INTO `sys_oper_log` VALUES ('21128', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'lifeng', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9586],\"userId\":2}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:28:46');
INSERT INTO `sys_oper_log` VALUES ('21129', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2019,2022,2023,2046,2047,2048,2059,2001,2028,2029,2031,2032,2043,2044,2045,2049,2051,2066,2002,2052,2053,2054,2055,2056,2057,2058,2061,2062,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2014,2027,2035,2078,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:36:16');
INSERT INTO `sys_oper_log` VALUES ('21130', '转派处理', '2', 'com.huike.web.controller.contract.TransferController.assignment()', 'PUT', '1', 'lifeng', null, '/transfer/assignment/0/3/7', '127.0.0.1', '内网IP', '0 3 7', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{}}', '0', null, '2022-04-19 01:37:23');
INSERT INTO `sys_oper_log` VALUES ('21131', '用户管理', '2', 'com.huike.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15423333333\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"zhangsan3@qq.com\",\"nickName\":\"zhangsan3\",\"sex\":\"0\",\"deptId\":215,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zhangsan3\",\"userId\":7,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650302781000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:38:25');
INSERT INTO `sys_oper_log` VALUES ('21132', '转派处理', '2', 'com.huike.web.controller.contract.TransferController.assignment()', 'PUT', '1', 'admin', null, '/transfer/assignment/0/7/3', '127.0.0.1', '内网IP', '0 7 3', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{}}', '0', null, '2022-04-19 01:39:45');
INSERT INTO `sys_oper_log` VALUES ('21133', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9594],\"userId\":3}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:42:03');
INSERT INTO `sys_oper_log` VALUES ('21134', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9588],\"userId\":7}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:42:30');
INSERT INTO `sys_oper_log` VALUES ('21135', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9590],\"userId\":3}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:42:36');
INSERT INTO `sys_oper_log` VALUES ('21136', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9548],\"userId\":2}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:42:44');
INSERT INTO `sys_oper_log` VALUES ('21137', '批量分配', '2', 'com.huike.web.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9542],\"userId\":7}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 01:42:52');
INSERT INTO `sys_oper_log` VALUES ('21138', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650340800000,\"subject\":\"0\",\"record\":\"确认学习\",\"sex\":\"0\",\"name\":\"贺奇克\",\"clueId\":9585,\"age\":25}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 09:17:22');
INSERT INTO `sys_oper_log` VALUES ('21139', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9585', '172.16.43.85', '内网IP', '9585', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 09:17:25');
INSERT INTO `sys_oper_log` VALUES ('21140', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1650244863000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"menuIds\":[2001,2002,1,2068,2069,2070,2071,2072,2073,2074,2028,2029,2031,2043,2079,2044,2045,2049,2051,2066,2052,2053,2067,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 09:47:24');
INSERT INTO `sys_oper_log` VALUES ('21141', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2019,2022,2023,2046,2047,2048,2059,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2066,2002,2052,2053,2054,2055,2056,2057,2058,2061,2062,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2014,2027,2035,2078,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 09:48:00');
INSERT INTO `sys_oper_log` VALUES ('21142', '商机跟进记录', '1', 'com.huike.web.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '127.0.0.1', '内网IP', '{\"reasons\":\"高薪\",\"nextTime\":1650427200000,\"subject\":\"0\",\"businessId\":3429,\"keyItems\":\"2,4,6\",\"activityId\":35,\"record\":\"客户想要报名，担心自己学不会需要鼓励\",\"trackStatus\":\"1\",\"courseId\":48,\"level\":\"0\",\"otherIntention\":\"暂无\",\"sex\":\"0\",\"phone\":\"13816667158\",\"name\":\"贺奇克\",\"age\":25}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 09:50:30');
INSERT INTO `sys_oper_log` VALUES ('21143', '合同', '1', 'com.huike.web.controller.contract.TbContractController.add()', 'POST', '1', 'lifeng', null, '/contract', '127.0.0.1', '内网IP', '{\"fileName\":\"/huike-crm/2022/04/19/50aa791da4ee471ca43b45d370cdd768.pdf\",\"contractNo\":\"HTBH00001\",\"subject\":\"0\",\"channel\":\"0\",\"deptId\":214,\"params\":{},\"activityId\":110,\"createBy\":\"lifeng\",\"createTime\":1650335445560,\"phone\":\"15121212121\",\"coursePrice\":10.0,\"name\":\"张益达\",\"discountType\":\"课程折扣\",\"id\":\"69596443920499\",\"courseId\":50,\"order\":8.5,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 10:30:45');
INSERT INTO `sys_oper_log` VALUES ('21144', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2019,2022,2023,2046,2047,2048,2059,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2066,2002,2052,2053,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2027,2035,2078,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 13:43:29');
INSERT INTO `sys_oper_log` VALUES ('21145', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2019,2022,2023,2046,2047,2048,2059,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2066,2002,2052,2053,2080,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2027,2035,2078,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 14:56:20');
INSERT INTO `sys_oper_log` VALUES ('21146', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"秦伊\",\"clueId\":9595}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:17:22');
INSERT INTO `sys_oper_log` VALUES ('21147', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9595', '172.16.43.85', '内网IP', '9595', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:17:24');
INSERT INTO `sys_oper_log` VALUES ('21148', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9586', '172.16.43.85', '内网IP', '9586', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:17:32');
INSERT INTO `sys_oper_log` VALUES ('21149', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"郎蓉涵\",\"clueId\":9591}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:17:47');
INSERT INTO `sys_oper_log` VALUES ('21150', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9591', '172.16.43.85', '内网IP', '9591', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:17:49');
INSERT INTO `sys_oper_log` VALUES ('21151', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9592', '172.16.43.85', '内网IP', '9592', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:17:56');
INSERT INTO `sys_oper_log` VALUES ('21152', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9593', '172.16.43.85', '内网IP', '9593', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:18:01');
INSERT INTO `sys_oper_log` VALUES ('21153', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9578', '172.16.43.85', '内网IP', '9578', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:18:05');
INSERT INTO `sys_oper_log` VALUES ('21154', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"翰丽\",\"clueId\":9579}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:18:14');
INSERT INTO `sys_oper_log` VALUES ('21155', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9579', '172.16.43.85', '内网IP', '9579', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:18:18');
INSERT INTO `sys_oper_log` VALUES ('21156', '商机跟进记录', '1', 'com.huike.web.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '172.16.43.85', '内网IP', '{\"nextTime\":1650427200000,\"subject\":\"0\",\"businessId\":3436,\"keyItems\":\"1\",\"activityId\":35,\"record\":\"学习意向\",\"trackStatus\":\"1\",\"courseId\":51,\"level\":\"0\",\"otherIntention\":\"学习意向\",\"sex\":\"0\",\"phone\":\"13816667152\",\"name\":\"翰丽\",\"age\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:19:36');
INSERT INTO `sys_oper_log` VALUES ('21157', '商机转合同', '2', 'com.huike.web.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi', null, '/contract/changeContract/3436', '172.16.43.85', '内网IP', '3436 {\"fileName\":\"/huike-crm/2022/04/19/3304f6c3aed64cc4914a0eb67aadf7e1.pdf\",\"contractNo\":\"HTBH1234\",\"subject\":\"0\",\"businessId\":3436,\"channel\":\"0\",\"deptId\":216,\"params\":{},\"activityId\":35,\"createBy\":\"lisi\",\"createTime\":1650352807872,\"phone\":\"13816667152\",\"coursePrice\":5000.0,\"name\":\"翰丽\",\"discountType\":\"课程折扣\",\"id\":\"86959128252300\",\"courseId\":51,\"order\":150.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:20:07');
INSERT INTO `sys_oper_log` VALUES ('21158', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '172.16.43.85', '内网IP', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1650244889000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"zhuguan\",\"roleName\":\"销售主管(管理所有销售)\",\"menuIds\":[2015,2001,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2019,2022,2023,2046,2047,2048,2059,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2002,2052,2053,2080,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2027,2035,2078,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:21:10');
INSERT INTO `sys_oper_log` VALUES ('21159', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '172.16.43.85', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1650244863000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"menuIds\":[2001,1,2068,2069,2070,2071,2072,2073,2074,2028,2029,2031,2043,2079,2044,2045,2049,2051,2066,2002,2052,2053,2080,2067,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:21:18');
INSERT INTO `sys_oper_log` VALUES ('21160', '合同', '1', 'com.huike.web.controller.contract.TbContractController.add()', 'POST', '1', 'lisi', null, '/contract', '172.16.43.85', '内网IP', '{\"fileName\":\"/huike-crm/2022/04/19/a6d7bf65c3b34309ae28ed37321a1eed.pdf\",\"contractNo\":\"HTBH122\",\"subject\":\"0\",\"deptId\":216,\"params\":{},\"createBy\":\"lisi\",\"createTime\":1650352971588,\"phone\":\"13512345678\",\"coursePrice\":5000.0,\"name\":\"涨大盘\",\"discountType\":\"无\",\"id\":\"87122843020000\",\"courseId\":51,\"order\":5000.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:22:51');
INSERT INTO `sys_oper_log` VALUES ('21161', '合同', '1', 'com.huike.web.controller.contract.TbContractController.add()', 'POST', '1', 'lisi', null, '/contract', '172.16.43.85', '内网IP', '{\"fileName\":\"/huike-crm/2022/04/19/4a97e70fe85e4b0fa887195efa84b82f.pdf\",\"contractNo\":\"HTBH121\",\"subject\":\"1\",\"channel\":\"0\",\"deptId\":216,\"params\":{},\"createBy\":\"lisi\",\"createTime\":1650353033412,\"phone\":\"13212345665\",\"coursePrice\":1888.0,\"name\":\"张大鹏\",\"discountType\":\"无\",\"id\":\"87184667306500\",\"courseId\":47,\"order\":1888.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:23:53');
INSERT INTO `sys_oper_log` VALUES ('21162', '商机转合同', '2', 'com.huike.web.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi', null, '/contract/changeContract/3435', '172.16.43.85', '内网IP', '3435 {\"fileName\":\"/huike-crm/2022/04/19/752f99d458ab4bc885225a53ecdefa57.pdf\",\"contractNo\":\"HTBH120\",\"params\":{},\"phone\":\"13112345678\",\"coursePrice\":0.0,\"order\":0.0}', 'null', '1', '商机里面没有选择课程，无法转换客户合同', '2022-04-19 15:24:48');
INSERT INTO `sys_oper_log` VALUES ('21163', '商机跟进记录', '1', 'com.huike.web.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '172.16.43.85', '内网IP', '{\"nextTime\":1650353220000,\"subject\":\"0\",\"businessId\":3435,\"keyItems\":\"1\",\"activityId\":35,\"record\":\"13512345678\",\"trackStatus\":\"1\",\"courseId\":51,\"level\":\"2\",\"otherIntention\":\"13512345678\",\"sex\":\"0\",\"phone\":\"13816667151\",\"name\":\"高怡\",\"age\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:25:17');
INSERT INTO `sys_oper_log` VALUES ('21164', '商机转合同', '2', 'com.huike.web.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi', null, '/contract/changeContract/3435', '172.16.43.85', '内网IP', '3435 {\"fileName\":\"/huike-crm/2022/04/19/55619d086d4b4135917631ba8b3f5095.pdf\",\"contractNo\":\"HTBH199\",\"subject\":\"0\",\"businessId\":3435,\"channel\":\"0\",\"deptId\":216,\"params\":{},\"activityId\":35,\"createBy\":\"lisi\",\"createTime\":1650353130959,\"phone\":\"13816667151\",\"coursePrice\":5000.0,\"name\":\"高怡\",\"discountType\":\"课程折扣\",\"id\":\"87282214157700\",\"courseId\":51,\"order\":150.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:25:31');
INSERT INTO `sys_oper_log` VALUES ('21165', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"意向学习\",\"sex\":\"0\",\"name\":\"吴芸\",\"clueId\":9583}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:26:42');
INSERT INTO `sys_oper_log` VALUES ('21166', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9583', '172.16.43.85', '内网IP', '9583', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:26:48');
INSERT INTO `sys_oper_log` VALUES ('21167', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"意向学习\",\"sex\":\"0\",\"name\":\"安瑛毓\",\"clueId\":9581}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:27:03');
INSERT INTO `sys_oper_log` VALUES ('21168', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9581', '172.16.43.85', '内网IP', '9581', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:27:10');
INSERT INTO `sys_oper_log` VALUES ('21169', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9580', '172.16.43.85', '内网IP', '9580', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:27:27');
INSERT INTO `sys_oper_log` VALUES ('21170', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"意向学习\",\"sex\":\"0\",\"name\":\"薛纯\",\"clueId\":9582}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:28:46');
INSERT INTO `sys_oper_log` VALUES ('21171', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9582', '172.16.43.85', '内网IP', '9582', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:28:48');
INSERT INTO `sys_oper_log` VALUES ('21172', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"意向学习\",\"sex\":\"0\",\"name\":\"葛嫣昭\",\"clueId\":9565}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:28:59');
INSERT INTO `sys_oper_log` VALUES ('21173', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9565', '172.16.43.85', '内网IP', '9565', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:29:01');
INSERT INTO `sys_oper_log` VALUES ('21174', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"意向学习\",\"sex\":\"0\",\"name\":\"黄雅\",\"clueId\":9570}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:29:29');
INSERT INTO `sys_oper_log` VALUES ('21175', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9570', '172.16.43.85', '内网IP', '9570', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:29:32');
INSERT INTO `sys_oper_log` VALUES ('21176', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"意向学习\",\"sex\":\"0\",\"name\":\"江铭晶\",\"clueId\":9566}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:29:50');
INSERT INTO `sys_oper_log` VALUES ('21177', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9566', '172.16.43.85', '内网IP', '9566', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:29:52');
INSERT INTO `sys_oper_log` VALUES ('21178', '批量分配', '2', 'com.huike.web.controller.business.TbBusinessController.assignment()', 'PUT', '1', 'admin', null, '/business/assignment', '172.16.43.85', '内网IP', '{\"ids\":[3431],\"userId\":4}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2022-04-19 15:44:17');
INSERT INTO `sys_oper_log` VALUES ('21179', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"产品经理\",\"sex\":\"0\",\"name\":\"和之晗\",\"clueId\":9567}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:44:51');
INSERT INTO `sys_oper_log` VALUES ('21180', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9567', '172.16.43.85', '内网IP', '9567', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 15:44:54');
INSERT INTO `sys_oper_log` VALUES ('21181', '商机转合同', '2', 'com.huike.web.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi', null, '/contract/changeContract/3434', '172.16.43.85', '内网IP', '3434 {\"fileName\":\"/huike-crm/2022/04/19/cf047097417d48f7b87a2c7336fda4ac.pdf\",\"contractNo\":\"HTBH1234\",\"params\":{},\"phone\":\"13512314512\",\"coursePrice\":0.0,\"order\":0.0}', 'null', '1', '商机里面没有选择课程，无法转换客户合同', '2022-04-19 15:45:23');
INSERT INTO `sys_oper_log` VALUES ('21182', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"云玉\",\"clueId\":9568}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:01:36');
INSERT INTO `sys_oper_log` VALUES ('21183', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9568', '172.16.43.85', '内网IP', '9568', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:01:38');
INSERT INTO `sys_oper_log` VALUES ('21184', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"梅雪枝\",\"clueId\":9569}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:01:51');
INSERT INTO `sys_oper_log` VALUES ('21185', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9569', '172.16.43.85', '内网IP', '9569', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:01:57');
INSERT INTO `sys_oper_log` VALUES ('21186', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"邱萍怡\",\"clueId\":9552}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:02:38');
INSERT INTO `sys_oper_log` VALUES ('21187', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9552', '172.16.43.85', '内网IP', '9552', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:02:40');
INSERT INTO `sys_oper_log` VALUES ('21188', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"0\",\"nextTime\":1650427200000,\"subject\":\"0\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"麻卿依\",\"clueId\":9553}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:06:12');
INSERT INTO `sys_oper_log` VALUES ('21189', '线索转商机', '2', 'com.huike.web.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'zhangsan', null, '/clues/clue/changeBusiness/9553', '172.16.43.85', '内网IP', '9553', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:06:14');
INSERT INTO `sys_oper_log` VALUES ('21190', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '172.16.43.85', '内网IP', '{\"level\":\"1\",\"nextTime\":1650427200000,\"subject\":\"1\",\"record\":\"学习意向\",\"sex\":\"0\",\"name\":\"成策秀\",\"clueId\":9554}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 16:06:26');
INSERT INTO `sys_oper_log` VALUES ('21191', '线索跟进记录', '1', 'com.huike.web.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'zhangsan', null, '/clues/record', '127.0.0.1', '内网IP', '{\"level\":\"1\",\"nextTime\":1650513600000,\"subject\":\"1\",\"record\":\"新的跟进记录\",\"sex\":\"0\",\"name\":\"成策秀\",\"clueId\":9554}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 18:10:04');
INSERT INTO `sys_oper_log` VALUES ('21192', '商机跟进记录', '1', 'com.huike.web.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '127.0.0.1', '内网IP', '{\"nextTime\":1650427200000,\"subject\":\"0\",\"businessId\":3448,\"keyItems\":\"2,3\",\"activityId\":35,\"record\":\"客户咨询了机构相关的信息\",\"trackStatus\":\"1\",\"courseId\":51,\"level\":\"0\",\"otherIntention\":\"前端也想学习，想搞全栈\",\"sex\":\"0\",\"phone\":\"13816667126\",\"name\":\"麻卿依\",\"age\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 18:11:36');
INSERT INTO `sys_oper_log` VALUES ('21193', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650244837000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"menuIds\":[2015,1,2068,2069,2070,2071,2072,2073,2074,2016,2017,2018,2022,2046,2082,2047,2059,2077,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:42:05');
INSERT INTO `sys_oper_log` VALUES ('21194', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1650244863000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"shangji\",\"roleName\":\"销售专员(商机)\",\"menuIds\":[2001,1,2068,2069,2070,2071,2072,2073,2074,2028,2029,2031,2043,2079,2044,2045,2049,2051,2081,2066,2002,2052,2053,2080,2067,2034],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:42:28');
INSERT INTO `sys_oper_log` VALUES ('21195', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/false/9594', '127.0.0.1', '内网IP', '9594 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:42:53');
INSERT INTO `sys_oper_log` VALUES ('21196', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9594],\"userId\":3}', 'null', '1', '捞取失败！需要在 2022-04-20 01:42 后捞取', '2022-04-19 23:42:59');
INSERT INTO `sys_oper_log` VALUES ('21197', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9594],\"userId\":3}', 'null', '1', '捞取失败！需要在 2022-04-20 01:42 后捞取', '2022-04-19 23:43:14');
INSERT INTO `sys_oper_log` VALUES ('21198', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9594],\"userId\":3}', 'null', '1', '捞取失败！需要在 2022-04-20 01:42 后捞取', '2022-04-19 23:44:04');
INSERT INTO `sys_oper_log` VALUES ('21199', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9594],\"userId\":3}', 'null', '1', '捞取失败！需要在 2022-04-20 01:42 后捞取', '2022-04-19 23:44:41');
INSERT INTO `sys_oper_log` VALUES ('21200', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan3', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9594],\"userId\":7}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2022-04-19 23:45:46');
INSERT INTO `sys_oper_log` VALUES ('21201', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9541', '127.0.0.1', '内网IP', '9541 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:48:40');
INSERT INTO `sys_oper_log` VALUES ('21202', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":2}', 'null', '1', '捞取失败！需要在 2022-04-20 01:28 后捞取', '2022-04-19 23:48:44');
INSERT INTO `sys_oper_log` VALUES ('21203', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":2}', 'null', '1', '捞取失败！需要在 2022-04-20 01:28 后捞取', '2022-04-19 23:51:37');
INSERT INTO `sys_oper_log` VALUES ('21204', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":2}', 'null', '1', '捞取失败！需要在 2022-04-20 01:28 后捞取', '2022-04-19 23:52:08');
INSERT INTO `sys_oper_log` VALUES ('21205', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":2}', 'null', '1', '捞取失败！需要在 2022-04-20 01:28 后捞取', '2022-04-19 23:54:44');
INSERT INTO `sys_oper_log` VALUES ('21206', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":2}', 'null', '1', '捞取失败！需要在 2022-04-20 01:28 后捞取', '2022-04-19 23:57:22');
INSERT INTO `sys_oper_log` VALUES ('21207', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/false/9587', '127.0.0.1', '内网IP', '9587 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:01:25');
INSERT INTO `sys_oper_log` VALUES ('21208', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/false/9563', '127.0.0.1', '内网IP', '9563 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:01:44');
INSERT INTO `sys_oper_log` VALUES ('21209', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9563],\"userId\":3}', 'null', '1', '捞取失败！需要在 2022-04-20 01:39 后捞取', '2022-04-20 00:02:57');
INSERT INTO `sys_oper_log` VALUES ('21210', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'admin', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9563],\"userId\":1}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2022-04-20 00:05:48');
INSERT INTO `sys_oper_log` VALUES ('21211', '线索池规则', '2', 'com.huike.web.controller.rule.TbRulePoolController.edit()', 'PUT', '1', 'admin', null, '/rule/pool', '127.0.0.1', '内网IP', '{\"repeatGetTime\":1,\"repeatType\":\"1\",\"maxNunmber\":30,\"params\":{},\"type\":\"0\",\"warnTimeType\":\"0\",\"limitTimeType\":\"1\",\"limitTime\":3,\"warnTime\":1,\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:06:23');
INSERT INTO `sys_oper_log` VALUES ('21212', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'admin', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9587],\"userId\":1}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2022-04-20 00:06:30');
INSERT INTO `sys_oper_log` VALUES ('21213', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":2}', 'null', '1', '捞取失败！最大保有量(30)，剩余可以捞取0条线索', '2022-04-20 00:06:58');
INSERT INTO `sys_oper_log` VALUES ('21214', '上传线索', '6', 'com.huike.web.controller.clues.TbClueController.importData()', 'POST', '1', 'lifeng', null, '/clues/clue/importData', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"failureNum\":0,\"successNum\":104}}', '0', null, '2022-04-20 00:17:49');
INSERT INTO `sys_oper_log` VALUES ('21215', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'lifeng', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9541],\"userId\":6}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2022-04-20 00:37:43');
INSERT INTO `sys_oper_log` VALUES ('21216', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9656', '127.0.0.1', '内网IP', '9656 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:40:06');
INSERT INTO `sys_oper_log` VALUES ('21217', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9668', '127.0.0.1', '内网IP', '9668 {\"reason\":\"6\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:40:15');
INSERT INTO `sys_oper_log` VALUES ('21218', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9098', '127.0.0.1', '内网IP', '9098 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:40:29');
INSERT INTO `sys_oper_log` VALUES ('21219', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9695', '127.0.0.1', '内网IP', '9695 {\"reason\":\"5\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:40:37');
INSERT INTO `sys_oper_log` VALUES ('21220', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9696', '127.0.0.1', '内网IP', '9696 {\"reason\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:40:45');
INSERT INTO `sys_oper_log` VALUES ('21221', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9644', '127.0.0.1', '内网IP', '9644 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:40:56');
INSERT INTO `sys_oper_log` VALUES ('21222', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9100', '127.0.0.1', '内网IP', '9100 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:41:03');
INSERT INTO `sys_oper_log` VALUES ('21223', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9646', '127.0.0.1', '内网IP', '9646 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:41:14');
INSERT INTO `sys_oper_log` VALUES ('21224', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9633', '127.0.0.1', '内网IP', '9633 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:41:22');
INSERT INTO `sys_oper_log` VALUES ('21225', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9658', '127.0.0.1', '内网IP', '9658 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:41:30');
INSERT INTO `sys_oper_log` VALUES ('21226', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9540', '127.0.0.1', '内网IP', '9540 {\"reason\":\"5\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:41:38');
INSERT INTO `sys_oper_log` VALUES ('21227', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9619', '127.0.0.1', '内网IP', '9619 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:42:02');
INSERT INTO `sys_oper_log` VALUES ('21228', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9697', '127.0.0.1', '内网IP', '9697 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:42:08');
INSERT INTO `sys_oper_log` VALUES ('21229', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9526', '127.0.0.1', '内网IP', '9526 {\"reason\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:42:16');
INSERT INTO `sys_oper_log` VALUES ('21230', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9642', '127.0.0.1', '内网IP', '9642 {\"reason\":\"6\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:42:34');
INSERT INTO `sys_oper_log` VALUES ('21231', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9411', '127.0.0.1', '内网IP', '9411 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:42:43');
INSERT INTO `sys_oper_log` VALUES ('21232', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9669', '127.0.0.1', '内网IP', '9669 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:42:50');
INSERT INTO `sys_oper_log` VALUES ('21233', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9099', '127.0.0.1', '内网IP', '9099 {\"reason\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:43:03');
INSERT INTO `sys_oper_log` VALUES ('21234', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9618', '127.0.0.1', '内网IP', '9618 {\"reason\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:43:12');
INSERT INTO `sys_oper_log` VALUES ('21235', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9617', '127.0.0.1', '内网IP', '9617 {\"reason\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:43:20');
INSERT INTO `sys_oper_log` VALUES ('21236', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9436', '127.0.0.1', '内网IP', '9436 {\"reason\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:43:29');
INSERT INTO `sys_oper_log` VALUES ('21237', '伪线索', '2', 'com.huike.web.controller.clues.TbClueController.cluesFalse()', 'PUT', '1', 'zhangsan', null, '/clues/clue/false/9528', '127.0.0.1', '内网IP', '9528 {\"reason\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:43:38');
INSERT INTO `sys_oper_log` VALUES ('21238', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9098],\"userId\":3}', 'null', '1', '捞取失败！最大保有量(30)，剩余可以捞取-164条线索', '2022-04-20 00:46:03');
INSERT INTO `sys_oper_log` VALUES ('21239', '批量捞取', '2', 'com.huike.web.controller.clues.TbClueController.gain()', 'PUT', '1', 'zhangsan1', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9099],\"userId\":3}', 'null', '1', '捞取失败！最大保有量(30)，剩余可以捞取-164条线索', '2022-04-20 00:46:08');
INSERT INTO `sys_oper_log` VALUES ('21240', '角色管理', '1', 'com.huike.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"deptIds\":[],\"menuIds\":[2068,2069,2070,2071,2072,2073,2074,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2081,2066,2002,2052,2053,2080,2067,2003,2004,2005,2006,2007,2008,2033,2065,2009,2010,2011,2012,2013,2027,2035,2078],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-04-29 11:04:55');
INSERT INTO `sys_oper_log` VALUES ('21241', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-04-29 11:06:30');
INSERT INTO `sys_oper_log` VALUES ('21242', '角色管理', '2', 'com.huike.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-04-29 11:10:11');
INSERT INTO `sys_oper_log` VALUES ('21243', '部门管理', '1', 'com.huike.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"18809091212\",\"ancestors\":\"0,100\",\"email\":\"jinyong@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 00:36:04');
INSERT INTO `sys_oper_log` VALUES ('21244', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13309091234\",\"admin\":false,\"password\":\"123456\",\"email\":\"wangwu@163.com\",\"nickName\":\"wangwu1\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'wangwu\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2023-05-16 09:57:53');
INSERT INTO `sys_oper_log` VALUES ('21245', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13309091234\",\"admin\":false,\"password\":\"123456\",\"email\":\"wangwu@163.com\",\"nickName\":\"wangwu1\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'wangwu\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2023-05-16 10:00:08');
INSERT INTO `sys_oper_log` VALUES ('21246', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13309091234\",\"admin\":false,\"password\":\"123456\",\"email\":\"wangwu@163.com\",\"nickName\":\"wangwu1\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'wangwu\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2023-05-16 10:01:38');
INSERT INTO `sys_oper_log` VALUES ('21247', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15309280912\",\"admin\":false,\"password\":\"$2a$10$Xe2tRGoziWZB5K1liLggyuKFIFkPuX5RCLlHnH/2CF8YnqaaidKNm\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu\",\"userId\":1028,\"realName\":\"王五\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 10:37:07');
INSERT INTO `sys_oper_log` VALUES ('21248', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13998127873\",\"admin\":false,\"password\":\"$2a$10$gJtainO5nXyFjGl9Ko6HQuZV7UMVHDL9dJUwC5Q7iLRAEQ7GyG1d6\",\"updateBy\":\"admin\",\"email\":\"zhaoliu@163.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"zhaoliu\",\"userId\":1029,\"realName\":\"赵六\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 10:45:42');
INSERT INTO `sys_oper_log` VALUES ('21249', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15209091212\",\"admin\":false,\"password\":\"$2a$10$1PT2DRywoHvwBJjG00MZYOIjCOcCb6Q6Gbm/vHFk807VmDnRwCbPK\",\"updateBy\":\"admin\",\"email\":\"wangwu2@163.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu2\",\"userId\":1030,\"realName\":\"王五2\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 10:57:18');
INSERT INTO `sys_oper_log` VALUES ('21250', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13509091234\",\"admin\":false,\"remark\":\"财务部王五3\",\"password\":\"$2a$10$EwTQ/XvgHQP1ajRscPicXewkNw8O4bfwzSEu/lsPVz3T.sj8pMl0u\",\"updateBy\":\"admin\",\"email\":\"wangwu3@163.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu3\",\"userId\":1031,\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 10:59:30');
INSERT INTO `sys_oper_log` VALUES ('21251', '角色管理', '1', 'com.huike.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[],\"menuIds\":[2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2081,2066,2002,2052,2053,2080,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:01:59');
INSERT INTO `sys_oper_log` VALUES ('21252', '用户管理', '3', 'com.huike.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/1031', '127.0.0.1', '内网IP', '{userIds=1031}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:02:43');
INSERT INTO `sys_oper_log` VALUES ('21253', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13309092345\",\"admin\":false,\"remark\":\"财务稽查.\",\"password\":\"$2a$10$dTjOvPkdXt2yTql7xIrIv.12LaHHg.7eA19YOB7VPg/CKpuQr3Q32\",\"updateBy\":\"admin\",\"email\":\"wangwu3@163.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu3\",\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[124,2],\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'wangwu3\' for key \'sys_user.sys_user_user_name_uindex\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       user_name,       real_name,       email,             phonenumber,       sex,       password,       status,       create_by,       update_by,       remark,      create_time, update_time    )values(            ?,       ?,       ?,       ?,             ?,       ?,       ?,       ?,       ?,         ?,       ?,      sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'wangwu3\' for key \'sys_user.sys_user_user_name_uindex\'\n; Duplicate entry \'wangwu3\' for key \'sys_user.sys_user_user_name_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'wangwu3\' for key \'sys_user.sys_user_user_name_uindex\'', '2023-05-16 11:04:21');
INSERT INTO `sys_oper_log` VALUES ('21254', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13309092345\",\"admin\":false,\"remark\":\"财务稽查.\",\"password\":\"$2a$10$HBH90rLVCDi55cc.7IULAOqyttInGaNXBUz/XEiI0JrPL3FBCamnW\",\"updateBy\":\"admin\",\"email\":\"wangwu3@163.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"wangwu3\",\"userId\":1033,\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[124,2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:05:47');
INSERT INTO `sys_oper_log` VALUES ('21255', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15209091212\",\"admin\":false,\"remark\":\"财务部wangwu2\",\"delFlag\":\"0\",\"loginIp\":\"\",\"email\":\"wangwu2@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wangwu2\",\"userId\":1030,\"realName\":\"王五2\",\"createBy\":\"admin\",\"roleIds\":[124],\"createTime\":1684205838000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'wangwu2\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2023-05-16 11:11:23');
INSERT INTO `sys_oper_log` VALUES ('21256', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15209091212\",\"admin\":false,\"remark\":\"财务部wangwu2\",\"delFlag\":\"0\",\"loginIp\":\"\",\"email\":\"wangwu2@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wangwu2\",\"userId\":1030,\"realName\":\"王五2\",\"createBy\":\"admin\",\"roleIds\":[124],\"createTime\":1684205838000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'wangwu2\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2023-05-16 11:11:23');
INSERT INTO `sys_oper_log` VALUES ('21257', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"status\":\"0\"},{\"flag\":false,\"roleId\":124,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"status\":\"0\"}],\"phonenumber\":\"13309092345\",\"admin\":false,\"remark\":\"财务稽查\",\"delFlag\":\"0\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"wangwu3@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wangwu3\",\"userId\":1033,\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[2,124],\"createTime\":1684206344000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:21:29');
INSERT INTO `sys_oper_log` VALUES ('21258', '用户管理', '3', 'com.huike.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/1029', '127.0.0.1', '内网IP', '{userIds=1029}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:22:18');
INSERT INTO `sys_oper_log` VALUES ('21259', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15209091212\",\"admin\":false,\"delFlag\":\"0\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"wangwu2@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wangwu2\",\"userId\":1030,\"realName\":\"王五2\",\"createBy\":\"admin\",\"roleIds\":[124],\"createTime\":1684205838000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:22:27');
INSERT INTO `sys_oper_log` VALUES ('21260', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":124,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"status\":\"0\"}],\"phonenumber\":\"15209091212\",\"admin\":false,\"delFlag\":\"0\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"wangwu2@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wangwu2\",\"userId\":1030,\"realName\":\"王五2\",\"createBy\":\"admin\",\"roleIds\":[124],\"createTime\":1684205838000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:24:02');
INSERT INTO `sys_oper_log` VALUES ('21261', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13823456789\",\"admin\":false,\"remark\":\"测试\",\"password\":\"$2a$10$.PWYetNs4f.ouIzslpuMsu9i1ZOkIuUZY5iNIUNTNFii2bKIqQpi.\",\"updateBy\":\"admin\",\"email\":\"tianqi@163.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi\",\"userId\":1034,\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:25:29');
INSERT INTO `sys_oper_log` VALUES ('21262', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":124,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"status\":\"0\"}],\"phonenumber\":\"13823456789\",\"admin\":false,\"remark\":\"测试\",\"delFlag\":\"0\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"tianqi@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"tianqi\",\"userId\":1034,\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[124],\"createTime\":1684207528000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:26:16');
INSERT INTO `sys_oper_log` VALUES ('21263', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18909876543\",\"admin\":false,\"password\":\"$2a$10$XusmJo43GYjuwCyUcXIp3.03ZIo.vC217EgXyA5gd648l6DlnVbpW\",\"updateBy\":\"admin\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi2\",\"realName\":\"田七2\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       user_name,       real_name,                   phonenumber,       sex,       password,       status,       create_by,       update_by,            create_time, update_time    )values(            ?,       ?,       ?,                   ?,       ?,       ?,       ?,       ?,         ?,            sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'\n; Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'', '2023-05-16 11:33:14');
INSERT INTO `sys_oper_log` VALUES ('21264', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18909876543\",\"admin\":false,\"password\":\"$2a$10$pw6scizONlwGxLflPoLWFe5LN13cfOO7gu3fpLC2pISX8zlDUrgl6\",\"updateBy\":\"admin\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi2\",\"realName\":\"田七2\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       user_name,       real_name,                   phonenumber,       sex,       password,       status,       create_by,       update_by,            create_time, update_time    )values(            ?,       ?,       ?,                   ?,       ?,       ?,       ?,       ?,         ?,            sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'\n; Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'', '2023-05-16 11:33:20');
INSERT INTO `sys_oper_log` VALUES ('21265', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18909876543\",\"admin\":false,\"password\":\"$2a$10$ii9.aW09STXujT495ulAuO9nyp7gJqJ0YrJM5pHX2HnoP2..5XYXu\",\"updateBy\":\"admin\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi2\",\"realName\":\"田七2\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       user_name,       real_name,                   phonenumber,       sex,       password,       status,       create_by,       update_by,            create_time, update_time    )values(            ?,       ?,       ?,                   ?,       ?,       ?,       ?,       ?,         ?,            sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'\n; Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'\' for key \'sys_user.sys_user_email_uindex\'', '2023-05-16 11:33:20');
INSERT INTO `sys_oper_log` VALUES ('21266', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18909876543\",\"admin\":false,\"password\":\"$2a$10$KLiyLLT6/pjiNta/VixFf.y4fy28VXCw75vHtaFAVDwKNut/PO0pe\",\"updateBy\":\"admin\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi2\",\"userId\":1038,\"realName\":\"田七2\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:33:43');
INSERT INTO `sys_oper_log` VALUES ('21267', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13567890907\",\"admin\":false,\"password\":\"$2a$10$by6LWksXsfm2j6DJuE2zZeniCeisSbFRUPGzeW5k09PbcAqZbfC1u\",\"updateBy\":\"admin\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi3\",\"userId\":1039,\"realName\":\"田七3\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:44:11');
INSERT INTO `sys_oper_log` VALUES ('21268', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13898986789\",\"admin\":false,\"remark\":\"财务稽查\",\"password\":\"$2a$10$rM.4.rPHDH9jiSeNOzNWh.Owq86f3zMaV1c0ljNfJ4vbciZBS35w.\",\"updateBy\":\"admin\",\"email\":\"tianqi4@126.com\",\"sex\":\"0\",\"deptId\":217,\"params\":{},\"userName\":\"tianqi4\",\"userId\":1040,\"realName\":\"田七4\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:48:09');
INSERT INTO `sys_oper_log` VALUES ('21269', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"menuIds\":[2002,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2081,2066,2052,2080,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 11:57:57');
INSERT INTO `sys_oper_log` VALUES ('21270', '用户管理', '3', 'com.huike.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/1028', '127.0.0.1', '内网IP', '{userIds=1028}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 12:00:55');
INSERT INTO `sys_oper_log` VALUES ('21271', '用户管理', '2', 'com.huike.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userId\":1}', 'null', '1', '不允许操作超级管理员用户', '2023-05-16 12:08:11');
INSERT INTO `sys_oper_log` VALUES ('21272', '用户管理', '2', 'com.huike.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":true,\"password\":\"123456\",\"params\":{},\"userId\":1}', 'null', '1', '不允许操作超级管理员用户', '2023-05-16 12:08:18');
INSERT INTO `sys_oper_log` VALUES ('21273', '用户管理', '2', 'com.huike.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$bbTXTz.czdAWNCLU71.wh.fEGLA5VXBVAGhvY3mpvTIyx4C11lVIi\",\"updateBy\":\"admin\",\"params\":{},\"userId\":1038}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 12:09:28');
INSERT INTO `sys_oper_log` VALUES ('21274', '用户管理', '2', 'com.huike.controller.system.SysUserController.changeStatus()', 'PUT', '1', 'admin', null, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userId\":1,\"status\":\"1\"}', 'null', '1', '不允许操作超级管理员用户', '2023-05-16 12:09:57');
INSERT INTO `sys_oper_log` VALUES ('21275', '用户管理', '2', 'com.huike.controller.system.SysUserController.changeStatus()', 'PUT', '1', 'admin', null, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":1038,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 12:10:13');
INSERT INTO `sys_oper_log` VALUES ('21276', '用户管理', '2', 'com.huike.controller.system.SysUserController.changeStatus()', 'PUT', '1', 'admin', null, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":1038,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 12:11:22');
INSERT INTO `sys_oper_log` VALUES ('21277', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', '1', '很抱歉，导入失败！共 5 条数据格式不正确，错误如下：<br/>1、账号 wuji1 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'sys_user.PRIMARY\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(      user_id,       dept_id,       user_name,       real_name,       email,             phonenumber,             password,             create_by,                  create_time, update_time    )values(      ?,       ?,       ?,       ?,       ?,             ?,             ?,             ?,                    sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'sys_user.PRIMARY\'\n; Duplicate entry \'1\' for key \'sys_user.PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'sys_user.PRIMARY\'<br/>2、账号 wuji2 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'2\' for key \'sys_user.PRIMARY\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(      user_id,       dept_id,       user_name,       real_name,       email,             phonenumber,             password,             create_by,                  create_time, update_time    )values(      ?,       ?,       ?,       ?,       ?,             ?,             ?,             ?,                    sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'2\' for key \'sys_user.PRIMARY\'\n; ', '2023-05-16 15:24:45');
INSERT INTO `sys_oper_log` VALUES ('21278', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', '1', '很抱歉，导入失败！共 2 条数据格式不正确，错误如下：<br/>1、账号 wuji2 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13812345678\' for key \'sys_user.sys_user_phonenumber_uindex\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(      user_id,       dept_id,       user_name,       real_name,       email,             phonenumber,             password,             create_by,                  create_time, update_time    )values(      ?,       ?,       ?,       ?,       ?,             ?,             ?,             ?,                    sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13812345678\' for key \'sys_user.sys_user_phonenumber_uindex\'\n; Duplicate entry \'13812345678\' for key \'sys_user.sys_user_phonenumber_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13812345678\' for key \'sys_user.sys_user_phonenumber_uindex\'<br/>2、账号 null 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                                                      password,             create_by,                  create_time, update_time    )values(                                                      ?,             ?,                    sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_nam', '2023-05-16 15:25:57');
INSERT INTO `sys_oper_log` VALUES ('21279', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', '1', '很抱歉，导入失败！共 5 条数据格式不正确，错误如下：<br/>1、账号 wuji1 已存在<br/>2、账号 wuji2 已存在<br/>3、账号 wuji2 已存在<br/>4、账号 wuji4 已存在<br/>5、账号 wuji5 已存在', '2023-05-16 15:27:30');
INSERT INTO `sys_oper_log` VALUES ('21280', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'true', '{\"msg\":\"恭喜您，数据已全部导入成功！共 5 条，数据如下：<br/>1、账号 wuji1 更新成功<br/>2、账号 wuji2 更新成功<br/>3、账号 wuji2 更新成功<br/>4、账号 wuji4 更新成功<br/>5、账号 wuji5 更新成功\",\"code\":200}', '0', null, '2023-05-16 15:28:05');
INSERT INTO `sys_oper_log` VALUES ('21281', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'true', 'null', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 wuji3 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'10\' for key \'sys_user.PRIMARY\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysUserMapper.xml]\r\n### The error may involve com.huike.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(      user_id,       dept_id,       user_name,       real_name,       email,             phonenumber,             password,             create_by,                  create_time, update_time    )values(      ?,       ?,       ?,       ?,       ?,             ?,             ?,             ?,                    sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'10\' for key \'sys_user.PRIMARY\'\n; Duplicate entry \'10\' for key \'sys_user.PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'10\' for key \'sys_user.PRIMARY\'', '2023-05-16 15:28:43');
INSERT INTO `sys_oper_log` VALUES ('21282', '用户管理', '3', 'com.huike.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/8,10,11,12', '127.0.0.1', '内网IP', '{userIds=8,10,11,12}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 15:36:00');
INSERT INTO `sys_oper_log` VALUES ('21283', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'true', '{\"msg\":\"恭喜您，数据已全部导入成功！共 5 条，数据如下：<br/>1、账号 wuji1 导入成功<br/>2、账号 wuji2 导入成功<br/>3、账号 wuji3 导入成功<br/>4、账号 wuji4 导入成功<br/>5、账号 zhangsan3 更新成功\",\"code\":200}', '0', null, '2023-05-16 15:37:16');
INSERT INTO `sys_oper_log` VALUES ('21284', '用户管理', '6', 'com.huike.controller.system.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'true', '{\"msg\":\"恭喜您，数据已全部导入成功！共 5 条，数据如下：<br/>1、账号 wuji1 更新成功<br/>2、账号 wuji2 更新成功<br/>3、账号 wuji3 更新成功<br/>4、账号 wuji4 更新成功<br/>5、账号 zhangsan3 更新成功\",\"code\":200}', '0', null, '2023-05-16 15:42:01');
INSERT INTO `sys_oper_log` VALUES ('21285', '用户管理', '5', 'com.huike.controller.system.SysUserController.export()', 'GET', '1', 'admin', null, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"77f7daa4-6b73-4b0b-b649-6e2c2587b37a_用户数据.xlsx\",\"code\":200}', '0', null, '2023-05-16 15:42:36');
INSERT INTO `sys_oper_log` VALUES ('21286', '用户管理', '5', 'com.huike.controller.system.SysUserController.export()', 'GET', '1', 'admin', null, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"3b49641c-c608-4ae8-a558-afae846765d6_用户数据.xlsx\",\"code\":200}', '0', null, '2023-05-16 15:43:42');
INSERT INTO `sys_oper_log` VALUES ('21287', '用户管理', '5', 'com.huike.controller.system.SysUserController.export()', 'GET', '1', 'admin', null, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"24bd90b2-7260-4b74-9514-a6669a5c6299_用户数据.xlsx\",\"code\":200}', '0', null, '2023-05-16 15:59:51');
INSERT INTO `sys_oper_log` VALUES ('21288', '用户管理', '5', 'com.huike.controller.system.SysUserController.export()', 'GET', '1', 'admin', null, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"e906b0cf-234d-48cd-9895-9f13f02fdc54_用户数据.xlsx\",\"code\":200}', '0', null, '2023-05-16 16:05:16');
INSERT INTO `sys_oper_log` VALUES ('21289', '角色管理', '3', 'com.huike.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', null, '/system/role/1', '127.0.0.1', '内网IP', '{roleIds=1}', 'null', '1', '不允许操作超级管理员角色', '2023-05-16 16:22:47');
INSERT INTO `sys_oper_log` VALUES ('21290', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"menuIds\":[2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2081,2066,2002,2052,2053,2080,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 16:40:24');
INSERT INTO `sys_oper_log` VALUES ('21291', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"menuIds\":[2002,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2081,2066,2052,2080,2067],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 16:40:59');
INSERT INTO `sys_oper_log` VALUES ('21292', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 16:57:17');
INSERT INTO `sys_oper_log` VALUES ('21293', '角色管理', '5', 'com.huike.controller.system.SysRoleController.export()', 'GET', '1', 'admin', null, '/system/role/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"5e1e0671-3fcb-4fc7-8a82-c1af56a57244_角色数据.xlsx\",\"code\":200}', '0', null, '2023-05-16 17:02:54');
INSERT INTO `sys_oper_log` VALUES ('21294', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"deptIds\":[100,101,103],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 17:08:06');
INSERT INTO `sys_oper_log` VALUES ('21295', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 17:44:20');
INSERT INTO `sys_oper_log` VALUES ('21296', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 17:46:42');
INSERT INTO `sys_oper_log` VALUES ('21297', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"menuIds\":[2002,1,2024,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2043,2079,2044,2045,2049,2051,2081,2066,2052,2080,2067,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,103,1017,1018,1019,1020],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:02:28');
INSERT INTO `sys_oper_log` VALUES ('21298', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'tianqi2', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"status\":\"0\"},{\"flag\":false,\"roleId\":124,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"status\":\"0\"}],\"phonenumber\":\"13309092345\",\"admin\":false,\"remark\":\"财务稽查\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"tianqi2\",\"loginIp\":\"\",\"email\":\"wangwu3@163.com\",\"sex\":\"0\",\"deptId\":217,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wangwu3\",\"userId\":1033,\"realName\":\"王五3\",\"createBy\":\"admin\",\"roleIds\":[124],\"createTime\":1684206344000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:10:47');
INSERT INTO `sys_oper_log` VALUES ('21299', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:15:11');
INSERT INTO `sys_oper_log` VALUES ('21300', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[100,101,103,214,215,216,217],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:21:11');
INSERT INTO `sys_oper_log` VALUES ('21301', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":124,\"admin\":false,\"remark\":\"财务稽查使用\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1684206119000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"jicha\",\"roleName\":\"财务稽查\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:22:11');
INSERT INTO `sys_oper_log` VALUES ('21302', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/104', '127.0.0.1', '内网IP', '{menuId=104}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2023-05-16 18:24:32');
INSERT INTO `sys_oper_log` VALUES ('21303', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1025', '127.0.0.1', '内网IP', '{menuId=1025}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:29:55');
INSERT INTO `sys_oper_log` VALUES ('21304', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1024', '127.0.0.1', '内网IP', '{menuId=1024}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:29:58');
INSERT INTO `sys_oper_log` VALUES ('21305', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1023', '127.0.0.1', '内网IP', '{menuId=1023}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:30:01');
INSERT INTO `sys_oper_log` VALUES ('21306', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1022', '127.0.0.1', '内网IP', '{menuId=1022}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:30:03');
INSERT INTO `sys_oper_log` VALUES ('21307', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1021', '127.0.0.1', '内网IP', '{menuId=1021}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:30:06');
INSERT INTO `sys_oper_log` VALUES ('21308', '菜单管理', '3', 'com.huike.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/104', '127.0.0.1', '内网IP', '{menuId=104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 18:30:14');
INSERT INTO `sys_oper_log` VALUES ('21309', '字典类型', '1', 'com.huike.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"婚姻状况\",\"remark\":\"婚姻状况\",\"params\":{},\"dictType\":\"marriage\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:14:07');
INSERT INTO `sys_oper_log` VALUES ('21310', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"remark\":\"已婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"已婚\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:15:20');
INSERT INTO `sys_oper_log` VALUES ('21311', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"remark\":\"未婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未婚\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:15:31');
INSERT INTO `sys_oper_log` VALUES ('21312', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":0,\"remark\":\"未知\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未知\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:15:45');
INSERT INTO `sys_oper_log` VALUES ('21313', '字典数据', '2', 'com.huike.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":1,\"remark\":\"已婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"已婚\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1684239320000,\"dictCode\":234,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:16:11');
INSERT INTO `sys_oper_log` VALUES ('21314', '字典数据', '2', 'com.huike.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"remark\":\"未知\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未知\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1684239345000,\"dictCode\":236,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:16:27');
INSERT INTO `sys_oper_log` VALUES ('21315', '字典数据', '2', 'com.huike.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"remark\":\"未婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未婚\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1684239331000,\"dictCode\":235,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:16:44');
INSERT INTO `sys_oper_log` VALUES ('21316', '字典数据', '2', 'com.huike.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"remark\":\"未婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未婚\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1684239331000,\"dictCode\":235,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-16 20:16:52');
INSERT INTO `sys_oper_log` VALUES ('21317', '字典类型', '1', 'com.huike.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"updateBy\":\"admin\",\"dictName\":\"薪资等级\",\"remark\":\"薪资等级\",\"params\":{},\"dictType\":\"salary_grade\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:03:44');
INSERT INTO `sys_oper_log` VALUES ('21318', '字典类型', '3', 'com.huike.controller.system.SysDictTypeController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/type/126', '127.0.0.1', '内网IP', '{dictIds=126}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:25:16');
INSERT INTO `sys_oper_log` VALUES ('21319', '字典类型', '3', 'com.huike.controller.system.SysDictTypeController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/type/125', '127.0.0.1', '内网IP', '{dictIds=125}', 'null', '1', '婚姻状况已分配,不能删除', '2023-05-17 10:25:20');
INSERT INTO `sys_oper_log` VALUES ('21320', '字典类型', '9', 'com.huike.controller.system.SysDictTypeController.clearCache()', 'DELETE', '1', 'admin', null, '/system/dict/type/clearCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:25:45');
INSERT INTO `sys_oper_log` VALUES ('21321', '字典类型', '3', 'com.huike.controller.system.SysDictTypeController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/type/125', '127.0.0.1', '内网IP', '{dictIds=125}', 'null', '1', '婚姻状况已分配,不能删除', '2023-05-17 10:34:09');
INSERT INTO `sys_oper_log` VALUES ('21322', '字典类型', '3', 'com.huike.controller.system.SysDictDataController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/data/235,234,236', '127.0.0.1', '内网IP', '{dictCodes=235,234,236}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:34:18');
INSERT INTO `sys_oper_log` VALUES ('21323', '字典类型', '3', 'com.huike.controller.system.SysDictTypeController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/type/125', '127.0.0.1', '内网IP', '{dictIds=125}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:34:36');
INSERT INTO `sys_oper_log` VALUES ('21324', '字典类型', '1', 'com.huike.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"updateBy\":\"admin\",\"dictName\":\"婚姻情况\",\"remark\":\"婚姻情况\",\"params\":{},\"dictType\":\"marriage\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:35:01');
INSERT INTO `sys_oper_log` VALUES ('21325', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"remark\":\"未婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未婚\",\"createBy\":\"admin\",\"default\":false,\"updateBy\":\"admin\",\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'admin\' in \'field list\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysDictDataMapper.xml]\r\n### The error may involve com.huike.mapper.SysDictDataMapper.insertDictData-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_dict_data(      dict_sort,       dict_label,       dict_value,       dict_type,                         status,       remark,       create_by,       update_by,      create_time, update_time    )values(         ?,          ?,       ?,       ?,                         ?,       ?,       ?,      admin,      sysdate(), sysdate()    )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'admin\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'admin\' in \'field list\'', '2023-05-17 10:37:02');
INSERT INTO `sys_oper_log` VALUES ('21326', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"remark\":\"未婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未婚\",\"createBy\":\"admin\",\"default\":false,\"updateBy\":\"admin\",\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'admin\' in \'field list\'\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysDictDataMapper.xml]\r\n### The error may involve com.huike.mapper.SysDictDataMapper.insertDictData-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_dict_data(      dict_sort,       dict_label,       dict_value,       dict_type,                         status,       remark,       create_by,       update_by,      create_time, update_time    )values(         ?,          ?,       ?,       ?,                         ?,       ?,       ?,      admin,      sysdate(), sysdate()    )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'admin\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'admin\' in \'field list\'', '2023-05-17 10:37:07');
INSERT INTO `sys_oper_log` VALUES ('21327', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"remark\":\"未婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未婚\",\"createBy\":\"admin\",\"default\":false,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:38:59');
INSERT INTO `sys_oper_log` VALUES ('21328', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"remark\":\"已婚\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"已婚\",\"createBy\":\"admin\",\"default\":false,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:39:19');
INSERT INTO `sys_oper_log` VALUES ('21329', '字典数据', '1', 'com.huike.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":0,\"remark\":\"未知\",\"params\":{},\"dictType\":\"marriage\",\"dictLabel\":\"未知\",\"createBy\":\"admin\",\"default\":false,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:40:12');
INSERT INTO `sys_oper_log` VALUES ('21330', '字典类型', '2', 'com.huike.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1684290901000,\"updateBy\":\"admin\",\"dictName\":\"婚姻情况\",\"remark\":\"婚姻情况\",\"dictId\":127,\"params\":{},\"dictType\":\"marriage2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:40:31');
INSERT INTO `sys_oper_log` VALUES ('21331', '字典类型', '2', 'com.huike.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1684290901000,\"updateBy\":\"admin\",\"dictName\":\"婚姻情况\",\"remark\":\"婚姻情况\",\"dictId\":127,\"params\":{},\"dictType\":\"marriage3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:42:57');
INSERT INTO `sys_oper_log` VALUES ('21332', '字典类型', '2', 'com.huike.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1684290901000,\"updateBy\":\"admin\",\"dictName\":\"婚姻情况\",\"remark\":\"婚姻情况\",\"dictId\":127,\"params\":{},\"dictType\":\"marriage\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:43:35');
INSERT INTO `sys_oper_log` VALUES ('21333', '字典类型', '2', 'com.huike.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1684290901000,\"updateBy\":\"admin\",\"dictName\":\"婚姻情况\",\"remark\":\"婚姻情况\",\"dictId\":127,\"params\":{},\"dictType\":\"marriage2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:53:05');
INSERT INTO `sys_oper_log` VALUES ('21334', '字典类型', '2', 'com.huike.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1684290901000,\"updateBy\":\"admin\",\"dictName\":\"婚姻情况\",\"remark\":\"婚姻情况\",\"dictId\":127,\"params\":{},\"dictType\":\"marriage22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 10:53:42');
INSERT INTO `sys_oper_log` VALUES ('21335', '字典类型', '5', 'com.huike.controller.system.SysDictTypeController.export()', 'GET', '1', 'admin', null, '/system/dict/type/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"3086a551-c27c-4728-b90a-ad164f8bca5f_字典类型.xlsx\",\"code\":200}', '0', null, '2023-05-17 11:15:43');
INSERT INTO `sys_oper_log` VALUES ('21336', '课程管理', '2', 'com.huike.controller.clues.TbCourseController.edit()', 'PUT', '1', 'admin', null, '/clues/course', '127.0.0.1', '内网IP', '{\"code\":\"h9cga9c3\",\"subject\":\"6\",\"params\":{},\"createTime\":1636131950000,\"price\":88888,\"applicablePerson\":\"2\",\"name\":\"高级测试\",\"id\":45,\"info\":\"高级测试课程\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 12:19:11');
INSERT INTO `sys_oper_log` VALUES ('21337', '课程管理', '2', 'com.huike.controller.clues.TbCourseController.edit()', 'PUT', '1', 'admin', null, '/clues/course', '127.0.0.1', '内网IP', '{\"code\":\"vk25iaol\",\"subject\":\"6\",\"params\":{},\"createTime\":1636122022000,\"price\":5555,\"applicablePerson\":\"2\",\"name\":\"中级测试\",\"id\":44,\"info\":\"中级测试课程\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 12:19:19');
INSERT INTO `sys_oper_log` VALUES ('21338', '课程管理', '3', 'com.huike.controller.clues.TbCourseController.remove()', 'DELETE', '1', 'admin', null, '/clues/course/11,12', '127.0.0.1', '内网IP', '{ids=11,12}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 12:19:41');
INSERT INTO `sys_oper_log` VALUES ('21339', '课程管理', '1', 'com.huike.controller.clues.TbCourseController.add()', 'POST', '1', 'admin', null, '/clues/course', '127.0.0.1', '内网IP', '{\"code\":\"jncbmjym\",\"subject\":\"2\",\"params\":{},\"createTime\":1684297234737,\"price\":1099,\"applicablePerson\":\"1\",\"name\":\"ChatGPT应用\",\"id\":52,\"info\":\"ChatGPT应用课程\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 12:20:34');
INSERT INTO `sys_oper_log` VALUES ('21340', '活动管理', '1', 'com.huike.controller.clues.TbActivityController.add()', 'POST', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"JT4kTtkG\",\"channel\":\"0\",\"discount\":0.8,\"params\":{},\"type\":\"1\",\"createTime\":1684297972385,\"name\":\"17周年庆典回馈\",\"beginTime\":1684252800000,\"endTime\":1687017540000,\"id\":116,\"info\":\"17周年庆典回馈活动\",\"status\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 12:32:52');
INSERT INTO `sys_oper_log` VALUES ('21341', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"JT4kTtkG\",\"channel\":\"0\",\"discount\":0.8,\"params\":{},\"type\":\"1\",\"createTime\":1684297972000,\"name\":\"17周年庆典回馈\",\"beginTime\":1684252800000,\"endTime\":1687017540000,\"id\":116,\"info\":\"17周年庆典回馈活动\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 15:09:51');
INSERT INTO `sys_oper_log` VALUES ('21342', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"JT4kTtkG\",\"channel\":\"0\",\"discount\":0.8,\"params\":{},\"type\":\"1\",\"createTime\":1684297972000,\"name\":\"17周年庆典回馈\",\"beginTime\":1684512000000,\"endTime\":1687276740000,\"id\":116,\"info\":\"17周年庆典回馈活动\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 15:10:03');
INSERT INTO `sys_oper_log` VALUES ('21343', '活动管理', '1', 'com.huike.controller.clues.TbActivityController.add()', 'POST', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"z18Ss7v4\",\"channel\":\"1\",\"params\":{},\"type\":\"2\",\"vouchers\":880,\"createTime\":1684307743426,\"name\":\"毕业季招生推广活动\",\"beginTime\":1684944000000,\"endTime\":1687708740000,\"id\":117,\"info\":\"毕业季招生推广活动\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 15:15:44');
INSERT INTO `sys_oper_log` VALUES ('21344', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"3c3nechs\",\"channel\":\"0\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1637664598000,\"name\":\"双11打折\",\"beginTime\":1637596800000,\"endTime\":1640966340000,\"id\":110,\"info\":\"双11打折\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-05-17 15:24:10');
INSERT INTO `sys_oper_log` VALUES ('21345', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"3c3nechs\",\"channel\":\"0\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1637664598000,\"name\":\"双11打折\",\"beginTime\":1637596800000,\"endTime\":1640966340000,\"id\":110,\"info\":\"双11打折\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-05-17 15:24:12');
INSERT INTO `sys_oper_log` VALUES ('21346', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"3c3nechs\",\"channel\":\"0\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1637664598000,\"name\":\"双11打折\",\"beginTime\":1637596800000,\"endTime\":1640966340000,\"id\":110,\"info\":\"双11打折\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-05-17 15:24:13');
INSERT INTO `sys_oper_log` VALUES ('21347', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', null, '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"JT4kTtkG\",\"channel\":\"0\",\"discount\":0.8,\"params\":{},\"type\":\"1\",\"createTime\":1684297972000,\"name\":\"17周年庆典回馈\",\"beginTime\":1684512000000,\"endTime\":1687276740000,\"id\":116,\"info\":\"17周年庆典回馈活动\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 15:24:17');
INSERT INTO `sys_oper_log` VALUES ('21348', '线索管理', '1', 'com.huike.controller.clues.TbClueController.add()', 'POST', '1', 'admin', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":34,\"id\":9700,\"qq\":\"378278347\",\"sex\":\"0\",\"params\":{},\"createBy\":\"admin\",\"weixin\":\"zhangwuji\",\"createTime\":1684310113558,\"phone\":\"15809239012\",\"falseCount\":0,\"name\":\"张无忌\",\"age\":25}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 15:55:13');
INSERT INTO `sys_oper_log` VALUES ('21349', '线索跟进记录', '1', 'com.huike.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'admin', null, '/clues/record', '127.0.0.1', '内网IP', '{\"qq\":\"378278347\",\"weixin\":\"zhangwuji\",\"level\":\"0\",\"nextTime\":1684555200000,\"subject\":\"0\",\"record\":\"意向java学科, 零基础学员, 已经给了基础班的资料, 先尝试学习, 看看是否感兴趣 . \",\"sex\":\"0\",\"name\":\"张无忌\",\"clueId\":9700,\"age\":25}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 15:56:37');
INSERT INTO `sys_oper_log` VALUES ('21350', '线索管理', '1', 'com.huike.controller.clues.TbClueController.add()', 'POST', '1', 'admin', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":34,\"id\":9701,\"qq\":\"243545454\",\"sex\":\"0\",\"params\":{},\"createBy\":\"admin\",\"weixin\":\"zhangcuishan\",\"createTime\":1684315177905,\"phone\":\"15623456879\",\"falseCount\":0,\"name\":\"张翠山\",\"age\":32}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-17 17:19:37');
INSERT INTO `sys_oper_log` VALUES ('21351', '批量分配', '2', 'com.huike.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', null, '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9687],\"userId\":8}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2023-05-17 17:38:46');
INSERT INTO `sys_oper_log` VALUES ('21352', '上传线索', '6', 'com.huike.controller.clues.TbClueController.importData()', 'POST', '1', 'admin', null, '/clues/clue/importData', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"failureNum\":0,\"successNum\":3}}', '0', null, '2023-05-18 11:35:58');
INSERT INTO `sys_oper_log` VALUES ('21353', '批量捞取', '2', 'com.huike.controller.clues.TbClueController.gain()', 'PUT', '1', 'admin', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9098],\"userId\":1}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2023-05-18 11:46:39');
INSERT INTO `sys_oper_log` VALUES ('21354', '批量捞取', '2', 'com.huike.controller.clues.TbClueController.gain()', 'PUT', '1', 'admin', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9099],\"userId\":1}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2023-05-18 11:51:13');
INSERT INTO `sys_oper_log` VALUES ('21355', '批量捞取', '2', 'com.huike.controller.clues.TbClueController.gain()', 'PUT', '1', 'admin', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9100],\"userId\":1}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2023-05-18 11:51:47');
INSERT INTO `sys_oper_log` VALUES ('21356', '批量捞取', '2', 'com.huike.controller.clues.TbClueController.gain()', 'PUT', '1', 'admin', null, '/clues/clue/gain', '127.0.0.1', '内网IP', '{\"ids\":[9103],\"userId\":1}', '{\"msg\":\"全部捞取成功\",\"code\":200}', '0', null, '2023-05-18 11:52:40');
INSERT INTO `sys_oper_log` VALUES ('21357', '批量分配', '2', 'com.huike.controller.business.TbBusinessController.assignment()', 'PUT', '1', 'admin', null, '/business/assignment', '127.0.0.1', '内网IP', '{\"ids\":[3447],\"userId\":4}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2023-05-18 13:01:26');
INSERT INTO `sys_oper_log` VALUES ('21358', '商机', '1', 'com.huike.controller.business.TbBusinessController.add()', 'POST', '1', 'admin', null, '/business', '127.0.0.1', '内网IP', '{\"city\":\"市辖区\",\"subject\":\"0\",\"channel\":\"0\",\"remark\":\"准备报名学习java \",\"id\":3449,\"qq\":\"5467564545\",\"provinces\":\"北京市\",\"sex\":\"0\",\"params\":{},\"createBy\":\"admin\",\"weixin\":\"lilonger\",\"createTime\":1684386238160,\"phone\":\"13586943293\",\"falseCount\":0,\"name\":\"李龙儿\",\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 13:03:58');
INSERT INTO `sys_oper_log` VALUES ('21359', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'admin', null, '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"6\",\"reasons\":\"对编程比较感兴趣\",\"city\":\"市辖区\",\"nextTime\":1684555200000,\"subject\":\"0\",\"businessId\":3449,\"keyItems\":\"3\",\"remark\":\"准备报名学习java, 目前还有点犹豫\",\"salary\":\"3\",\"major\":\"8\",\"record\":\"已经沟通过了\",\"trackStatus\":\"1\",\"expectedSalary\":\"4\",\"courseId\":50,\"plan\":\"做软件开发\",\"qq\":\"5467564545\",\"provinces\":\"北京市\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"lilonger\",\"phone\":\"13586943293\",\"planTime\":1684944000000,\"name\":\"李龙儿\",\"job\":\"2\",\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 13:07:38');
INSERT INTO `sys_oper_log` VALUES ('21360', '商机转合同', '2', 'com.huike.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'admin', null, '/contract/changeContract/3449', '127.0.0.1', '内网IP', '3449 {\"fileName\":\"/huike-crm/2023/05/18/c34b22069a22409fb728c31dc318c8ec.pdf\",\"contractNo\":\"HTB1283928\",\"subject\":\"0\",\"businessId\":3449,\"channel\":\"0\",\"deptId\":103,\"params\":{},\"createBy\":\"admin\",\"createTime\":1684394150228,\"phone\":\"13586943293\",\"coursePrice\":10.0,\"name\":\"李龙儿\",\"discountType\":\"无\",\"id\":\"17386308256699\",\"courseId\":50,\"order\":10.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:15:50');
INSERT INTO `sys_oper_log` VALUES ('21361', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"13812345678\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"wuji1@163.com\",\"sex\":\"0\",\"deptId\":214,\"avatar\":\"\",\"dept\":{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"6\",\"params\":{},\"parentId\":100,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"wuji1\",\"userId\":8,\"realName\":\"无忌1\",\"createBy\":\"admin\",\"roleIds\":[123],\"createTime\":1684222635000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:26:03');
INSERT INTO `sys_oper_log` VALUES ('21362', '线索管理', '1', 'com.huike.controller.clues.TbClueController.add()', 'POST', '1', 'wuji1', null, '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":34,\"id\":9705,\"qq\":\"2335674543\",\"sex\":\"0\",\"params\":{},\"createBy\":\"wuji1\",\"weixin\":\"zhangqinquan\",\"createTime\":1684394846863,\"phone\":\"13223456789\",\"falseCount\":0,\"name\":\"张覃权\",\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:27:26');
INSERT INTO `sys_oper_log` VALUES ('21363', '角色管理', '2', 'com.huike.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:29:00');
INSERT INTO `sys_oper_log` VALUES ('21364', '线索跟进记录', '1', 'com.huike.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'wuji1', null, '/clues/record', '127.0.0.1', '内网IP', '{\"qq\":\"2335674543\",\"weixin\":\"zhangqinquan\",\"level\":\"2\",\"nextTime\":1684555200000,\"subject\":\"0\",\"record\":\"了解了各个学科之间的区别, 以及发展方向,  偏向于java学科.\",\"sex\":\"0\",\"name\":\"张覃权\",\"clueId\":9705,\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:30:28');
INSERT INTO `sys_oper_log` VALUES ('21365', '线索跟进记录', '1', 'com.huike.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'wuji1', null, '/clues/record', '127.0.0.1', '内网IP', '{\"qq\":\"2335674543\",\"weixin\":\"zhangqinquan\",\"level\":\"0\",\"nextTime\":1684728000000,\"subject\":\"0\",\"record\":\"毕业答辩完毕之后, 就进行学习\",\"sex\":\"0\",\"name\":\"张覃权\",\"clueId\":9705,\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:31:00');
INSERT INTO `sys_oper_log` VALUES ('21366', '线索转商机', '2', 'com.huike.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'wuji1', null, '/clues/clue/changeBusiness/9705', '127.0.0.1', '内网IP', '9705', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:31:15');
INSERT INTO `sys_oper_log` VALUES ('21367', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"6\",\"reasons\":\"不想做销售了, 想做技术开发\",\"city\":\"市辖区\",\"nextTime\":1684641600000,\"subject\":\"0\",\"businessId\":3450,\"keyItems\":\"6\",\"remark\":\"目前没有任何java的基础, 零基础入门\",\"salary\":\"3\",\"activityId\":34,\"major\":\"4\",\"record\":\"主要偏向于学习java\",\"trackStatus\":\"1\",\"expectedSalary\":\"4\",\"courseId\":50,\"plan\":\"软件开发\",\"qq\":\"2335674543\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"zhangqinquan\",\"phone\":\"13223456789\",\"planTime\":1684944000000,\"name\":\"张覃权\",\"job\":\"2\",\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:34:26');
INSERT INTO `sys_oper_log` VALUES ('21368', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"6\",\"reasons\":\"不想做销售了, 想做技术开发\",\"city\":\"市辖区\",\"nextTime\":1684728000000,\"subject\":\"0\",\"businessId\":3450,\"keyItems\":\"6\",\"remark\":\"目前没有任何java的基础, 零基础入门\",\"salary\":\"3\",\"activityId\":34,\"major\":\"4\",\"record\":\"无\",\"trackStatus\":\"3\",\"expectedSalary\":\"4\",\"courseId\":50,\"plan\":\"软件开发\",\"qq\":\"2335674543\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"zhangqinquan\",\"phone\":\"13223456789\",\"planTime\":1684944000000,\"name\":\"张覃权\",\"job\":\"2\",\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:34:43');
INSERT INTO `sys_oper_log` VALUES ('21369', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', null, '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"6\",\"reasons\":\"不想做销售了, 想做技术开发\",\"city\":\"市辖区\",\"nextTime\":1684814400000,\"subject\":\"0\",\"businessId\":3450,\"keyItems\":\"6\",\"remark\":\"目前没有任何java的基础, 零基础入门\",\"salary\":\"3\",\"activityId\":34,\"major\":\"4\",\"record\":\"没问题, 准备签合同了\",\"trackStatus\":\"1\",\"expectedSalary\":\"4\",\"courseId\":50,\"plan\":\"软件开发\",\"qq\":\"2335674543\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"zhangqinquan\",\"phone\":\"13223456789\",\"planTime\":1684944000000,\"name\":\"张覃权\",\"job\":\"2\",\"age\":26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:35:02');
INSERT INTO `sys_oper_log` VALUES ('21370', '商机转合同', '2', 'com.huike.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi', null, '/contract/changeContract/3450', '127.0.0.1', '内网IP', '3450 {\"fileName\":\"/huike-crm/2023/05/18/574db96b902740fd9b25030c486b0beb.pdf\",\"contractNo\":\"HTB28392839\",\"subject\":\"0\",\"businessId\":3450,\"channel\":\"0\",\"deptId\":216,\"params\":{},\"activityId\":34,\"createBy\":\"lisi\",\"createTime\":1684395385762,\"phone\":\"13223456789\",\"coursePrice\":10.0,\"name\":\"张覃权\",\"discountType\":\"代金券大于原课程50%,代金券不可用\",\"id\":\"18621842956600\",\"courseId\":50,\"order\":10.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:36:25');
INSERT INTO `sys_oper_log` VALUES ('21371', '用户管理', '5', 'com.huike.controller.system.SysUserController.export()', 'GET', '1', 'admin', null, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"05e6f6c0-c531-43e1-9a59-332cca2456c2_用户数据.xlsx\",\"code\":200}', '0', null, '2023-05-18 15:54:15');
INSERT INTO `sys_oper_log` VALUES ('21372', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi1', null, '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"13\",\"reasons\":\"对前端感兴趣\",\"city\":\"武汉市\",\"nextTime\":1684468800000,\"subject\":\"1\",\"businessId\":3446,\"keyItems\":\"3\",\"remark\":\"想转行做软件\",\"salary\":\"3\",\"activityId\":35,\"major\":\"8\",\"record\":\"无\",\"trackStatus\":\"1\",\"expectedSalary\":\"5\",\"courseId\":23,\"plan\":\"软件开发\",\"qq\":\"238984934\",\"provinces\":\"湖北省\",\"level\":\"1\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"meixuezhi\",\"phone\":\"13816667142\",\"planTime\":1684944000000,\"name\":\"梅雪枝\",\"job\":\"2\",\"age\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:57:25');
INSERT INTO `sys_oper_log` VALUES ('21373', '商机转合同', '2', 'com.huike.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi1', null, '/contract/changeContract/3446', '127.0.0.1', '内网IP', '3446 {\"fileName\":\"/huike-crm/2023/05/18/ee48b0490fb64bb0a7511f82ac1bef35.pdf\",\"contractNo\":\"HTB2389382\",\"subject\":\"1\",\"businessId\":3446,\"channel\":\"0\",\"deptId\":216,\"params\":{},\"activityId\":35,\"createBy\":\"lisi1\",\"createTime\":1684396665134,\"phone\":\"13816667142\",\"coursePrice\":33.0,\"name\":\"梅雪枝\",\"discountType\":\"课程折扣\",\"id\":\"19901214146600\",\"courseId\":23,\"order\":0.99,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-18 15:57:45');
INSERT INTO `sys_oper_log` VALUES ('21374', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"menuIds\":[2068,2069,2070,2071,2072,2073,2074,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2079,2043,2044,2045,2049,2081,2051,2066,2002,2052,2053,2080,2067,2009,2010,2011,2012,2013,2003,2004,2005,2006,2007,2008,2033,2065,2035,2078,2027],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 16:28:50');
INSERT INTO `sys_oper_log` VALUES ('21375', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"menuIds\":[2068,2069,2070,2071,2072,2073,2074,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2079,2043,2044,2045,2049,2081,2051,2066,2002,2052,2053,2080,2067,2009,2010,2011,2012,2013,2003,2004,2005,2006,2007,2008,2033,2065,2035,2078,2027],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 16:28:50');
INSERT INTO `sys_oper_log` VALUES ('21376', '角色管理', '2', 'com.huike.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":123,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1682737495000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"salesleader\",\"roleName\":\"销售总监\",\"menuIds\":[2068,2069,2070,2071,2072,2073,2074,2015,2016,2017,2018,2019,2022,2023,2046,2082,2047,2048,2059,2077,2001,2028,2029,2031,2032,2079,2043,2044,2045,2049,2081,2051,2066,2002,2052,2053,2080,2067,2009,2010,2011,2012,2013,2003,2004,2005,2006,2007,2008,2033,2065,2035,2078,2027],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 16:30:16');
INSERT INTO `sys_oper_log` VALUES ('21377', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', '销售部（商机）', '/business/record', '127.0.0.1', '内网IP', '{\"nextTime\":1686456000000,\"subject\":\"0\",\"businessId\":3433,\"keyItems\":\"4\",\"activityId\":35,\"record\":\"沟通了学习时间\",\"trackStatus\":\"1\",\"courseId\":51,\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"phone\":\"13816667165\",\"name\":\"于文瑛\",\"age\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 16:32:07');
INSERT INTO `sys_oper_log` VALUES ('21378', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"z18Ss7v4\",\"channel\":\"1\",\"params\":{},\"type\":\"2\",\"vouchers\":880,\"createTime\":1684307743000,\"name\":\"毕业季招生推广活动\",\"beginTime\":1684944000000,\"endTime\":1687708740000,\"id\":117,\"info\":\"毕业季招生推广活动\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-10 17:58:08');
INSERT INTO `sys_oper_log` VALUES ('21379', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"status\":\"0\"}],\"phonenumber\":\"15777777777\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"zhangsan@qq.com\",\"sex\":\"0\",\"deptId\":215,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zhangsan\",\"userId\":2,\"realName\":\"张三\",\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650252560000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 17:58:19');
INSERT INTO `sys_oper_log` VALUES ('21380', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"status\":\"0\"}],\"phonenumber\":\"15777777777\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"zhangsan@qq.com\",\"sex\":\"0\",\"deptId\":215,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zhangsan\",\"userId\":2,\"realName\":\"张三\",\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650252560000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 18:26:52');
INSERT INTO `sys_oper_log` VALUES ('21381', '用户管理', '2', 'com.huike.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"xiansuo\",\"roleName\":\"市场专员（线索）\",\"status\":\"0\"}],\"phonenumber\":\"15333333333\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"zhangsan1@qq.com\",\"sex\":\"0\",\"deptId\":215,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"4\",\"params\":{},\"parentId\":214,\"users\":[],\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"zhangsan1\",\"userId\":3,\"realName\":\"张三1\",\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650252741000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 18:28:48');
INSERT INTO `sys_oper_log` VALUES ('21382', '菜单管理', '2', 'com.huike.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"icon_menu_xsgl\",\"orderNum\":\"1\",\"menuName\":\"线索管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"clue\",\"component\":\"clues/clue/index\",\"children\":[],\"createTime\":1617325351000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2015,\"menuType\":\"C\",\"perms\":\"clues:clue:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 18:32:41');
INSERT INTO `sys_oper_log` VALUES ('21383', '菜单管理', '2', 'com.huike.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"icon_menu_xtrz\",\"orderNum\":\"9\",\"menuName\":\"系统日志\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"systemLog\",\"component\":\"system/systemLog/index\",\"children\":[],\"createTime\":1619575499000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"system:systemLog:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:53:33');
INSERT INTO `sys_oper_log` VALUES ('21384', '菜单管理', '2', 'com.huike.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"icon_menu_xtrz\",\"orderNum\":\"9\",\"menuName\":\"系统日志\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"systemLog\",\"component\":\"system/systemLog/index\",\"children\":[],\"createTime\":1619575499000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"system:systemLog:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:53:57');
INSERT INTO `sys_oper_log` VALUES ('21385', '课程管理', '1', 'com.huike.controller.clues.TbCourseController.add()', 'POST', '1', 'admin', '研发部门', '/clues/course', '127.0.0.1', '内网IP', '{\"code\":\"2l1ib3d4\",\"subject\":\"0\",\"params\":{},\"createTime\":1686642460886,\"price\":8800,\"applicablePerson\":\"1\",\"name\":\"Web开发-2023\",\"id\":53,\"info\":\"Web开发-2023最新版本淘汰过时技术\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 15:47:40');
INSERT INTO `sys_oper_log` VALUES ('21386', '课程管理', '2', 'com.huike.controller.clues.TbCourseController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/course', '127.0.0.1', '内网IP', '{\"code\":\"2l1ib3d4\",\"subject\":\"0\",\"params\":{},\"createTime\":1686642461000,\"price\":8800,\"applicablePerson\":\"1\",\"name\":\"Web开发-2023\",\"id\":53,\"info\":\"Web开发2023年最新版本淘汰过时技术\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 15:47:52');
INSERT INTO `sys_oper_log` VALUES ('21387', '课程管理', '1', 'com.huike.controller.clues.TbCourseController.add()', 'POST', '1', 'admin', '研发部门', '/clues/course', '127.0.0.1', '内网IP', '{\"code\":\"2v3xj2aa\",\"subject\":\"0\",\"params\":{},\"createTime\":1686642487207,\"price\":111,\"applicablePerson\":\"1\",\"name\":\"111\",\"id\":54,\"info\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 15:48:07');
INSERT INTO `sys_oper_log` VALUES ('21388', '课程管理', '3', 'com.huike.controller.clues.TbCourseController.remove()', 'DELETE', '1', 'admin', '研发部门', '/clues/course/54', '127.0.0.1', '内网IP', '{ids=54}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 15:48:09');
INSERT INTO `sys_oper_log` VALUES ('21389', '活动管理', '1', 'com.huike.controller.clues.TbActivityController.add()', 'POST', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"aQLjjgMF\",\"channel\":\"0\",\"params\":{},\"type\":\"2\",\"vouchers\":680,\"createTime\":1686651217931,\"name\":\"618福利日\",\"beginTime\":1686585600000,\"endTime\":1687276740000,\"id\":118,\"info\":\"618福利日\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:13:38');
INSERT INTO `sys_oper_log` VALUES ('21390', '活动管理', '1', 'com.huike.controller.clues.TbActivityController.add()', 'POST', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.0,\"params\":{},\"type\":\"1\",\"createTime\":1686651252538,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:14:12');
INSERT INTO `sys_oper_log` VALUES ('21391', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:23');
INSERT INTO `sys_oper_log` VALUES ('21392', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:24');
INSERT INTO `sys_oper_log` VALUES ('21393', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:25');
INSERT INTO `sys_oper_log` VALUES ('21394', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:25');
INSERT INTO `sys_oper_log` VALUES ('21395', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:26');
INSERT INTO `sys_oper_log` VALUES ('21396', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:34');
INSERT INTO `sys_oper_log` VALUES ('21397', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:34');
INSERT INTO `sys_oper_log` VALUES ('21398', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:34');
INSERT INTO `sys_oper_log` VALUES ('21399', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:34');
INSERT INTO `sys_oper_log` VALUES ('21400', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:35');
INSERT INTO `sys_oper_log` VALUES ('21401', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:39');
INSERT INTO `sys_oper_log` VALUES ('21402', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:50');
INSERT INTO `sys_oper_log` VALUES ('21403', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:50');
INSERT INTO `sys_oper_log` VALUES ('21404', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:50');
INSERT INTO `sys_oper_log` VALUES ('21405', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:51');
INSERT INTO `sys_oper_log` VALUES ('21406', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:14:51');
INSERT INTO `sys_oper_log` VALUES ('21407', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:15:27');
INSERT INTO `sys_oper_log` VALUES ('21408', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:16:27');
INSERT INTO `sys_oper_log` VALUES ('21409', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:18:36');
INSERT INTO `sys_oper_log` VALUES ('21410', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:18:38');
INSERT INTO `sys_oper_log` VALUES ('21411', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:18:39');
INSERT INTO `sys_oper_log` VALUES ('21412', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:18:39');
INSERT INTO `sys_oper_log` VALUES ('21413', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"VvOQjW84\",\"channel\":\"1\",\"discount\":8.5,\"params\":{},\"type\":\"1\",\"createTime\":1686651253000,\"name\":\"大学毕业季大礼包\",\"beginTime\":1686585600000,\"endTime\":1690819140000,\"id\":119,\"info\":\"大学毕业季大礼包\"}', 'null', '1', '活动已经开始, 不可以修改活动信息', '2023-06-13 18:19:18');
INSERT INTO `sys_oper_log` VALUES ('21414', '活动管理', '1', 'com.huike.controller.clues.TbActivityController.add()', 'POST', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"0FoMzJT9\",\"channel\":\"0\",\"params\":{},\"type\":\"2\",\"vouchers\":1280,\"createTime\":1686651627471,\"name\":\"金秋大礼包欢乐送不停\",\"beginTime\":1687190400000,\"endTime\":1693497540000,\"id\":120,\"info\":\"金秋大礼包欢乐送不停\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:20:28');
INSERT INTO `sys_oper_log` VALUES ('21415', '活动管理', '2', 'com.huike.controller.clues.TbActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"0FoMzJT9\",\"channel\":\"0\",\"params\":{},\"type\":\"2\",\"vouchers\":1280,\"createTime\":1686651627000,\"name\":\"金秋大礼包欢乐送不停\",\"beginTime\":1687276800000,\"endTime\":1696089540000,\"id\":120,\"info\":\"金秋大礼包欢乐送不停\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:20:49');
INSERT INTO `sys_oper_log` VALUES ('21416', '活动管理', '1', 'com.huike.controller.clues.TbActivityController.add()', 'POST', '1', 'admin', '研发部门', '/clues/activity', '127.0.0.1', '内网IP', '{\"code\":\"yPV1t2yW\",\"channel\":\"0\",\"discount\":1.0,\"params\":{},\"type\":\"1\",\"createTime\":1686651670815,\"name\":\"111\",\"beginTime\":1687536000000,\"endTime\":1690473540000,\"id\":121,\"info\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:21:10');
INSERT INTO `sys_oper_log` VALUES ('21417', '活动管理', '3', 'com.huike.controller.clues.TbActivityController.remove()', 'DELETE', '1', 'admin', '研发部门', '/clues/activity/121', '127.0.0.1', '内网IP', '{ids=121}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:21:13');
INSERT INTO `sys_oper_log` VALUES ('21418', '线索管理', '1', 'com.huike.controller.clues.TbClueController.add()', 'POST', '1', 'admin', '研发部门', '/clues/clue', '127.0.0.1', '内网IP', '{\"channel\":\"0\",\"activityId\":118,\"id\":9706,\"qq\":\"786433444\",\"sex\":\"0\",\"params\":{},\"createBy\":\"admin\",\"weixin\":\"shisan\",\"createTime\":1686652050530,\"phone\":\"13509239021\",\"falseCount\":0,\"name\":\"十三先生\",\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:27:30');
INSERT INTO `sys_oper_log` VALUES ('21419', '线索跟进记录', '1', 'com.huike.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'admin', '研发部门', '/clues/record', '127.0.0.1', '内网IP', '{\"qq\":\"786433444\",\"weixin\":\"shisan\",\"level\":\"2\",\"nextTime\":1687233600000,\"subject\":\"0\",\"record\":\"与学员进行了沟通,了解了java和前端学科,意向学科为java\",\"sex\":\"0\",\"name\":\"十三先生\",\"clueId\":9706,\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:29:46');
INSERT INTO `sys_oper_log` VALUES ('21420', '线索跟进记录', '1', 'com.huike.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'admin', '研发部门', '/clues/record', '127.0.0.1', '内网IP', '{\"qq\":\"786433444\",\"weixin\":\"shisan\",\"level\":\"0\",\"nextTime\":1687492800000,\"subject\":\"0\",\"record\":\"学员对比了一下,还是对java感兴趣, 近期准备学习\",\"sex\":\"0\",\"name\":\"十三先生\",\"clueId\":9706,\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:30:22');
INSERT INTO `sys_oper_log` VALUES ('21421', '线索跟进记录', '1', 'com.huike.controller.clues.TbClueTrackRecordController.add()', 'POST', '1', 'admin', '研发部门', '/clues/record', '127.0.0.1', '内网IP', '{\"qq\":\"243545454\",\"weixin\":\"zhangcuishan\",\"level\":\"1\",\"nextTime\":1687233600000,\"subject\":\"0\",\"record\":\"打算学习,正在考虑中,想学java\",\"sex\":\"0\",\"name\":\"张翠山\",\"clueId\":9701,\"age\":32}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:31:03');
INSERT INTO `sys_oper_log` VALUES ('21422', '线索转商机', '2', 'com.huike.controller.clues.TbClueController.changeBusiness()', 'PUT', '1', 'admin', '研发部门', '/clues/clue/changeBusiness/9706', '127.0.0.1', '内网IP', '9706', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:31:57');
INSERT INTO `sys_oper_log` VALUES ('21423', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', '销售部（商机）', '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"3\",\"reasons\":\"之前工作老是出差 , 薪资还不高. \",\"city\":\"市辖区\",\"nextTime\":1688097600000,\"subject\":\"0\",\"businessId\":3451,\"keyItems\":\"1,3,5\",\"remark\":\"之前是做工程的\",\"salary\":\"2\",\"activityId\":118,\"major\":\"8\",\"record\":\"已沟通, 初步计划7.5号过来\",\"trackStatus\":\"1\",\"expectedSalary\":\"4\",\"courseId\":51,\"plan\":\"软件开发架构方向\",\"qq\":\"786433444\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"shisan\",\"phone\":\"13509239021\",\"planTime\":1688486400000,\"name\":\"十三先生\",\"job\":\"2\",\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:38:09');
INSERT INTO `sys_oper_log` VALUES ('21424', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', '销售部（商机）', '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"3\",\"reasons\":\"之前工作老是出差 , 薪资还不高. \",\"city\":\"市辖区\",\"nextTime\":1687665600000,\"subject\":\"0\",\"businessId\":3451,\"keyItems\":\"1\",\"salary\":\"2\",\"activityId\":118,\"major\":\"8\",\"record\":\"已沟通, 初步计划7.5号过来\",\"trackStatus\":\"1\",\"expectedSalary\":\"4\",\"courseId\":51,\"plan\":\"软件开发架构方向\",\"qq\":\"786433444\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"shisan\",\"phone\":\"13509239021\",\"planTime\":1688486400000,\"name\":\"十三先生\",\"job\":\"2\",\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:38:42');
INSERT INTO `sys_oper_log` VALUES ('21425', '批量分配', '2', 'com.huike.controller.clues.TbClueController.assignment()', 'PUT', '1', 'admin', '研发部门', '/clues/clue/assignment', '127.0.0.1', '内网IP', '{\"ids\":[9703],\"userId\":1}', '{\"msg\":\"全部分配\",\"code\":200}', '0', null, '2023-06-13 18:41:48');
INSERT INTO `sys_oper_log` VALUES ('21426', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', '销售部（商机）', '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"3\",\"reasons\":\"之前工作老是出差 , 薪资还不高. \",\"city\":\"市辖区\",\"nextTime\":1687752000000,\"subject\":\"0\",\"businessId\":3451,\"keyItems\":\"4\",\"salary\":\"2\",\"activityId\":118,\"major\":\"8\",\"record\":\"未接通\",\"trackStatus\":\"2\",\"expectedSalary\":\"4\",\"courseId\":51,\"plan\":\"软件开发架构方向\",\"qq\":\"786433444\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"shisan\",\"phone\":\"13509239021\",\"planTime\":1688486400000,\"name\":\"十三先生\",\"job\":\"2\",\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:42:37');
INSERT INTO `sys_oper_log` VALUES ('21427', '商机跟进记录', '1', 'com.huike.controller.business.TbBusinessTrackRecordController.add()', 'POST', '1', 'lisi', '销售部（商机）', '/business/record', '127.0.0.1', '内网IP', '{\"education\":\"6\",\"occupation\":\"3\",\"reasons\":\"之前工作老是出差 , 薪资还不高. \",\"city\":\"市辖区\",\"nextTime\":1688529600000,\"subject\":\"0\",\"businessId\":3451,\"keyItems\":\"1,4,2\",\"salary\":\"2\",\"activityId\":118,\"major\":\"8\",\"record\":\"准备报名了\",\"trackStatus\":\"1\",\"expectedSalary\":\"4\",\"courseId\":51,\"plan\":\"软件开发架构方向\",\"qq\":\"786433444\",\"provinces\":\"北京市\",\"level\":\"0\",\"otherIntention\":\"无\",\"sex\":\"0\",\"weixin\":\"shisan\",\"phone\":\"13509239021\",\"planTime\":1688486400000,\"name\":\"十三先生\",\"job\":\"2\",\"age\":18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:44:17');
INSERT INTO `sys_oper_log` VALUES ('21428', '商机转合同', '2', 'com.huike.controller.contract.TbContractController.changeContract()', 'PUT', '1', 'lisi', '销售部（商机）', '/contract/changeContract/3451', '127.0.0.1', '内网IP', '3451 {\"fileName\":\"/huike-crm/2023/06/13/d7a028fa36d04410b62308026026fcd1.pdf\",\"contractNo\":\"09128232\",\"subject\":\"0\",\"businessId\":3451,\"channel\":\"0\",\"deptId\":216,\"params\":{},\"activityId\":118,\"createBy\":\"lisi\",\"createTime\":1686653581899,\"phone\":\"13509239021\",\"coursePrice\":5000.0,\"name\":\"十三先生\",\"discountType\":\"代金券\",\"id\":\"32265978862500\",\"courseId\":51,\"order\":4320.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 18:53:01');
INSERT INTO `sys_oper_log` VALUES ('21429', '合同', '1', 'com.huike.controller.contract.TbContractController.add()', 'POST', '1', 'admin', '研发部门', '/contract', '127.0.0.1', '内网IP', '{\"fileName\":\"/huike-crm/2023/06/13/72b87efb27744512a166dba182b93fca.pdf\",\"contractNo\":\"992039292\",\"subject\":\"0\",\"channel\":\"0\",\"deptId\":103,\"params\":{},\"activityId\":118,\"createBy\":\"admin\",\"createTime\":1686655384417,\"phone\":\"18309123453\",\"coursePrice\":9999.0,\"name\":\"陈皮皮\",\"discountType\":\"代金券\",\"id\":\"34068497183900\",\"courseId\":48,\"order\":9319.0,\"status\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 19:23:04');
INSERT INTO `sys_oper_log` VALUES ('21430', '部门管理', '1', 'com.huike.controller.system.SysDeptController.add()', 'POST', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"稽核部\",\"leader\":\"张明生\",\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"13456352736\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zhangmingsheng@163.com\",\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysDeptMapper.xml]\r\n### The error may involve com.huike.mapper.SysDeptMapper.insertDept-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_dept(            parent_id,       dept_name,       ancestors,       order_num,       leader,       phone,       email,       status,       create_by,       update_by,      create_time,update_time    )values(            ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,      sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-06-13 23:47:16');
INSERT INTO `sys_oper_log` VALUES ('21431', '部门管理', '1', 'com.huike.controller.system.SysDeptController.add()', 'POST', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"稽核部\",\"leader\":\"张明生\",\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"13456352736\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zhangmingsheng@163.com\",\"status\":\"0\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [E:\\idea_workspace_dawn\\huike-crm-wh-project\\huike-parent\\huike-admin\\target\\classes\\mapper\\SysDeptMapper.xml]\r\n### The error may involve com.huike.mapper.SysDeptMapper.insertDept-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_dept(            parent_id,       dept_name,       ancestors,       order_num,       leader,       phone,       email,       status,       create_by,       update_by,      create_time,update_time    )values(            ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,      sysdate(),sysdate()    )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-06-13 23:47:21');
INSERT INTO `sys_oper_log` VALUES ('21432', '部门管理', '1', 'com.huike.controller.system.SysDeptController.add()', 'POST', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"稽核部\",\"leader\":\"张明生\",\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"13456352736\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zhangmingsheng@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:54:39');
INSERT INTO `sys_oper_log` VALUES ('21433', '部门管理', '2', 'com.huike.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"财务部门\",\"leader\":\"金庸\",\"deptId\":217,\"orderNum\":\"8\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1684168564000,\"phone\":\"18809091212\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"jinyong@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:54:51');
INSERT INTO `sys_oper_log` VALUES ('21434', '部门管理', '2', 'com.huike.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"销售部（商机）\",\"leader\":\"李四\",\"deptId\":216,\"orderNum\":\"7\",\"delFlag\":\"0\",\"params\":{},\"parentId\":214,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1650250345000,\"phone\":\"15666666666\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,214\",\"email\":\"lisi@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:54:55');
INSERT INTO `sys_oper_log` VALUES ('21435', '部门管理', '2', 'com.huike.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"市场部（线索）\",\"leader\":\"张三\",\"deptId\":215,\"orderNum\":\"6\",\"delFlag\":\"0\",\"params\":{},\"parentId\":214,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1650250310000,\"phone\":\"15777777777\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,214\",\"email\":\"zhangsan@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:55:00');
INSERT INTO `sys_oper_log` VALUES ('21436', '部门管理', '2', 'com.huike.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"销售部门\",\"leader\":\"张三\",\"deptId\":214,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1637653705000,\"phone\":\"15011111111\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"511111111@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:55:04');
INSERT INTO `sys_oper_log` VALUES ('21437', '部门管理', '2', 'com.huike.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"稽核部\",\"leader\":\"张明生\",\"deptId\":218,\"orderNum\":\"4\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"createTime\":1686671679000,\"phone\":\"13456352736\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zhangmingsheng@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:55:08');
INSERT INTO `sys_oper_log` VALUES ('21438', '部门管理', '1', 'com.huike.controller.system.SysDeptController.add()', 'POST', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"行政部\",\"leader\":\"张毅名\",\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"users\":[],\"createBy\":\"admin\",\"children\":[],\"phone\":\"13509091212\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zhangyiming@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:55:44');
INSERT INTO `sys_oper_log` VALUES ('21439', '部门管理', '3', 'com.huike.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/dept/219', '127.0.0.1', '内网IP', '{deptId=219}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-13 23:55:50');
INSERT INTO `sys_oper_log` VALUES ('21440', '用户管理', '1', 'com.huike.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18809123920\",\"admin\":false,\"remark\":\"测试使用的\",\"password\":\"$2a$10$n3jEb9tHJaAWy09Ng5SUHulUzzl3.NBbFAzaIP57Q7jn7XQEzUEXu\",\"updateBy\":\"admin\",\"email\":\"xiexun@163.com\",\"sex\":\"0\",\"deptId\":218,\"params\":{},\"userName\":\"xiexun\",\"userId\":1041,\"realName\":\"谢逊\",\"createBy\":\"admin\",\"roleIds\":[124],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-14 00:10:40');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2021-03-31 03:12:10', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2021-03-31 03:12:10', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2021-03-31 03:12:10', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2021-03-31 03:12:10', 'admin', '2021-11-16 14:26:17', '');
INSERT INTO `sys_post` VALUES ('11', 'XYG001', '新员工', '5', '0', 'admin', '2021-11-19 16:15:48', '', null, null);
INSERT INTO `sys_post` VALUES ('12', 'XSBZG', '销售部主管', '10', '0', 'admin', '2021-11-23 15:55:44', '', null, null);
INSERT INTO `sys_post` VALUES ('13', 'XSBZY', '销售部专员', '13', '0', 'admin', '2021-11-23 15:56:10', '', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `sys_role_role_key_uindex` (`role_key`),
  UNIQUE KEY `sys_role_role_name_uindex` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2021-03-31 03:12:10', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '市场专员（线索）', 'xiansuo', '2', '5', '1', '1', '0', '0', 'admin', '2022-04-18 09:20:37', 'admin', '2022-04-19 23:42:05', null);
INSERT INTO `sys_role` VALUES ('3', '销售专员(商机)', 'shangji', '3', '5', '1', '1', '0', '0', 'admin', '2022-04-18 09:21:03', 'admin', '2022-04-19 23:42:28', null);
INSERT INTO `sys_role` VALUES ('4', '销售主管(管理所有销售)', 'zhuguan', '4', '4', '1', '1', '0', '0', 'admin', '2022-04-18 09:21:29', 'admin', '2022-04-19 15:21:09', null);
INSERT INTO `sys_role` VALUES ('123', '销售总监', 'salesleader', '0', '4', '1', '1', '0', '0', 'admin', '2023-04-29 11:04:55', 'admin', '2023-06-10 16:30:16', null);
INSERT INTO `sys_role` VALUES ('124', '财务稽查', 'jicha', '5', '4', '1', '1', '0', '0', 'admin', '2023-05-16 11:01:59', 'admin', '2023-05-16 18:22:11', '财务稽查使用');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2015');
INSERT INTO `sys_role_menu` VALUES ('2', '2016');
INSERT INTO `sys_role_menu` VALUES ('2', '2017');
INSERT INTO `sys_role_menu` VALUES ('2', '2018');
INSERT INTO `sys_role_menu` VALUES ('2', '2022');
INSERT INTO `sys_role_menu` VALUES ('2', '2034');
INSERT INTO `sys_role_menu` VALUES ('2', '2046');
INSERT INTO `sys_role_menu` VALUES ('2', '2047');
INSERT INTO `sys_role_menu` VALUES ('2', '2059');
INSERT INTO `sys_role_menu` VALUES ('2', '2068');
INSERT INTO `sys_role_menu` VALUES ('2', '2069');
INSERT INTO `sys_role_menu` VALUES ('2', '2070');
INSERT INTO `sys_role_menu` VALUES ('2', '2071');
INSERT INTO `sys_role_menu` VALUES ('2', '2072');
INSERT INTO `sys_role_menu` VALUES ('2', '2073');
INSERT INTO `sys_role_menu` VALUES ('2', '2074');
INSERT INTO `sys_role_menu` VALUES ('2', '2077');
INSERT INTO `sys_role_menu` VALUES ('2', '2082');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '2001');
INSERT INTO `sys_role_menu` VALUES ('3', '2002');
INSERT INTO `sys_role_menu` VALUES ('3', '2028');
INSERT INTO `sys_role_menu` VALUES ('3', '2029');
INSERT INTO `sys_role_menu` VALUES ('3', '2031');
INSERT INTO `sys_role_menu` VALUES ('3', '2034');
INSERT INTO `sys_role_menu` VALUES ('3', '2043');
INSERT INTO `sys_role_menu` VALUES ('3', '2044');
INSERT INTO `sys_role_menu` VALUES ('3', '2045');
INSERT INTO `sys_role_menu` VALUES ('3', '2049');
INSERT INTO `sys_role_menu` VALUES ('3', '2051');
INSERT INTO `sys_role_menu` VALUES ('3', '2052');
INSERT INTO `sys_role_menu` VALUES ('3', '2053');
INSERT INTO `sys_role_menu` VALUES ('3', '2066');
INSERT INTO `sys_role_menu` VALUES ('3', '2067');
INSERT INTO `sys_role_menu` VALUES ('3', '2068');
INSERT INTO `sys_role_menu` VALUES ('3', '2069');
INSERT INTO `sys_role_menu` VALUES ('3', '2070');
INSERT INTO `sys_role_menu` VALUES ('3', '2071');
INSERT INTO `sys_role_menu` VALUES ('3', '2072');
INSERT INTO `sys_role_menu` VALUES ('3', '2073');
INSERT INTO `sys_role_menu` VALUES ('3', '2074');
INSERT INTO `sys_role_menu` VALUES ('3', '2079');
INSERT INTO `sys_role_menu` VALUES ('3', '2080');
INSERT INTO `sys_role_menu` VALUES ('3', '2081');
INSERT INTO `sys_role_menu` VALUES ('4', '1');
INSERT INTO `sys_role_menu` VALUES ('4', '2001');
INSERT INTO `sys_role_menu` VALUES ('4', '2002');
INSERT INTO `sys_role_menu` VALUES ('4', '2003');
INSERT INTO `sys_role_menu` VALUES ('4', '2004');
INSERT INTO `sys_role_menu` VALUES ('4', '2005');
INSERT INTO `sys_role_menu` VALUES ('4', '2006');
INSERT INTO `sys_role_menu` VALUES ('4', '2007');
INSERT INTO `sys_role_menu` VALUES ('4', '2008');
INSERT INTO `sys_role_menu` VALUES ('4', '2009');
INSERT INTO `sys_role_menu` VALUES ('4', '2010');
INSERT INTO `sys_role_menu` VALUES ('4', '2011');
INSERT INTO `sys_role_menu` VALUES ('4', '2012');
INSERT INTO `sys_role_menu` VALUES ('4', '2013');
INSERT INTO `sys_role_menu` VALUES ('4', '2015');
INSERT INTO `sys_role_menu` VALUES ('4', '2016');
INSERT INTO `sys_role_menu` VALUES ('4', '2017');
INSERT INTO `sys_role_menu` VALUES ('4', '2018');
INSERT INTO `sys_role_menu` VALUES ('4', '2019');
INSERT INTO `sys_role_menu` VALUES ('4', '2022');
INSERT INTO `sys_role_menu` VALUES ('4', '2023');
INSERT INTO `sys_role_menu` VALUES ('4', '2027');
INSERT INTO `sys_role_menu` VALUES ('4', '2028');
INSERT INTO `sys_role_menu` VALUES ('4', '2029');
INSERT INTO `sys_role_menu` VALUES ('4', '2031');
INSERT INTO `sys_role_menu` VALUES ('4', '2032');
INSERT INTO `sys_role_menu` VALUES ('4', '2033');
INSERT INTO `sys_role_menu` VALUES ('4', '2034');
INSERT INTO `sys_role_menu` VALUES ('4', '2035');
INSERT INTO `sys_role_menu` VALUES ('4', '2043');
INSERT INTO `sys_role_menu` VALUES ('4', '2044');
INSERT INTO `sys_role_menu` VALUES ('4', '2045');
INSERT INTO `sys_role_menu` VALUES ('4', '2046');
INSERT INTO `sys_role_menu` VALUES ('4', '2047');
INSERT INTO `sys_role_menu` VALUES ('4', '2048');
INSERT INTO `sys_role_menu` VALUES ('4', '2049');
INSERT INTO `sys_role_menu` VALUES ('4', '2051');
INSERT INTO `sys_role_menu` VALUES ('4', '2052');
INSERT INTO `sys_role_menu` VALUES ('4', '2053');
INSERT INTO `sys_role_menu` VALUES ('4', '2059');
INSERT INTO `sys_role_menu` VALUES ('4', '2065');
INSERT INTO `sys_role_menu` VALUES ('4', '2067');
INSERT INTO `sys_role_menu` VALUES ('4', '2068');
INSERT INTO `sys_role_menu` VALUES ('4', '2069');
INSERT INTO `sys_role_menu` VALUES ('4', '2070');
INSERT INTO `sys_role_menu` VALUES ('4', '2071');
INSERT INTO `sys_role_menu` VALUES ('4', '2072');
INSERT INTO `sys_role_menu` VALUES ('4', '2073');
INSERT INTO `sys_role_menu` VALUES ('4', '2074');
INSERT INTO `sys_role_menu` VALUES ('4', '2078');
INSERT INTO `sys_role_menu` VALUES ('4', '2079');
INSERT INTO `sys_role_menu` VALUES ('4', '2080');
INSERT INTO `sys_role_menu` VALUES ('123', '2001');
INSERT INTO `sys_role_menu` VALUES ('123', '2002');
INSERT INTO `sys_role_menu` VALUES ('123', '2003');
INSERT INTO `sys_role_menu` VALUES ('123', '2004');
INSERT INTO `sys_role_menu` VALUES ('123', '2005');
INSERT INTO `sys_role_menu` VALUES ('123', '2006');
INSERT INTO `sys_role_menu` VALUES ('123', '2007');
INSERT INTO `sys_role_menu` VALUES ('123', '2008');
INSERT INTO `sys_role_menu` VALUES ('123', '2009');
INSERT INTO `sys_role_menu` VALUES ('123', '2010');
INSERT INTO `sys_role_menu` VALUES ('123', '2011');
INSERT INTO `sys_role_menu` VALUES ('123', '2012');
INSERT INTO `sys_role_menu` VALUES ('123', '2013');
INSERT INTO `sys_role_menu` VALUES ('123', '2015');
INSERT INTO `sys_role_menu` VALUES ('123', '2016');
INSERT INTO `sys_role_menu` VALUES ('123', '2017');
INSERT INTO `sys_role_menu` VALUES ('123', '2018');
INSERT INTO `sys_role_menu` VALUES ('123', '2019');
INSERT INTO `sys_role_menu` VALUES ('123', '2022');
INSERT INTO `sys_role_menu` VALUES ('123', '2023');
INSERT INTO `sys_role_menu` VALUES ('123', '2027');
INSERT INTO `sys_role_menu` VALUES ('123', '2028');
INSERT INTO `sys_role_menu` VALUES ('123', '2029');
INSERT INTO `sys_role_menu` VALUES ('123', '2031');
INSERT INTO `sys_role_menu` VALUES ('123', '2032');
INSERT INTO `sys_role_menu` VALUES ('123', '2033');
INSERT INTO `sys_role_menu` VALUES ('123', '2035');
INSERT INTO `sys_role_menu` VALUES ('123', '2043');
INSERT INTO `sys_role_menu` VALUES ('123', '2044');
INSERT INTO `sys_role_menu` VALUES ('123', '2045');
INSERT INTO `sys_role_menu` VALUES ('123', '2046');
INSERT INTO `sys_role_menu` VALUES ('123', '2047');
INSERT INTO `sys_role_menu` VALUES ('123', '2048');
INSERT INTO `sys_role_menu` VALUES ('123', '2049');
INSERT INTO `sys_role_menu` VALUES ('123', '2051');
INSERT INTO `sys_role_menu` VALUES ('123', '2052');
INSERT INTO `sys_role_menu` VALUES ('123', '2053');
INSERT INTO `sys_role_menu` VALUES ('123', '2059');
INSERT INTO `sys_role_menu` VALUES ('123', '2065');
INSERT INTO `sys_role_menu` VALUES ('123', '2066');
INSERT INTO `sys_role_menu` VALUES ('123', '2067');
INSERT INTO `sys_role_menu` VALUES ('123', '2068');
INSERT INTO `sys_role_menu` VALUES ('123', '2069');
INSERT INTO `sys_role_menu` VALUES ('123', '2070');
INSERT INTO `sys_role_menu` VALUES ('123', '2071');
INSERT INTO `sys_role_menu` VALUES ('123', '2072');
INSERT INTO `sys_role_menu` VALUES ('123', '2073');
INSERT INTO `sys_role_menu` VALUES ('123', '2074');
INSERT INTO `sys_role_menu` VALUES ('123', '2077');
INSERT INTO `sys_role_menu` VALUES ('123', '2078');
INSERT INTO `sys_role_menu` VALUES ('123', '2079');
INSERT INTO `sys_role_menu` VALUES ('123', '2080');
INSERT INTO `sys_role_menu` VALUES ('123', '2081');
INSERT INTO `sys_role_menu` VALUES ('123', '2082');
INSERT INTO `sys_role_menu` VALUES ('124', '1');
INSERT INTO `sys_role_menu` VALUES ('124', '100');
INSERT INTO `sys_role_menu` VALUES ('124', '101');
INSERT INTO `sys_role_menu` VALUES ('124', '103');
INSERT INTO `sys_role_menu` VALUES ('124', '1001');
INSERT INTO `sys_role_menu` VALUES ('124', '1002');
INSERT INTO `sys_role_menu` VALUES ('124', '1003');
INSERT INTO `sys_role_menu` VALUES ('124', '1004');
INSERT INTO `sys_role_menu` VALUES ('124', '1005');
INSERT INTO `sys_role_menu` VALUES ('124', '1006');
INSERT INTO `sys_role_menu` VALUES ('124', '1007');
INSERT INTO `sys_role_menu` VALUES ('124', '1008');
INSERT INTO `sys_role_menu` VALUES ('124', '1009');
INSERT INTO `sys_role_menu` VALUES ('124', '1010');
INSERT INTO `sys_role_menu` VALUES ('124', '1011');
INSERT INTO `sys_role_menu` VALUES ('124', '1012');
INSERT INTO `sys_role_menu` VALUES ('124', '1017');
INSERT INTO `sys_role_menu` VALUES ('124', '1018');
INSERT INTO `sys_role_menu` VALUES ('124', '1019');
INSERT INTO `sys_role_menu` VALUES ('124', '1020');
INSERT INTO `sys_role_menu` VALUES ('124', '2001');
INSERT INTO `sys_role_menu` VALUES ('124', '2002');
INSERT INTO `sys_role_menu` VALUES ('124', '2015');
INSERT INTO `sys_role_menu` VALUES ('124', '2016');
INSERT INTO `sys_role_menu` VALUES ('124', '2017');
INSERT INTO `sys_role_menu` VALUES ('124', '2018');
INSERT INTO `sys_role_menu` VALUES ('124', '2019');
INSERT INTO `sys_role_menu` VALUES ('124', '2022');
INSERT INTO `sys_role_menu` VALUES ('124', '2023');
INSERT INTO `sys_role_menu` VALUES ('124', '2024');
INSERT INTO `sys_role_menu` VALUES ('124', '2028');
INSERT INTO `sys_role_menu` VALUES ('124', '2029');
INSERT INTO `sys_role_menu` VALUES ('124', '2031');
INSERT INTO `sys_role_menu` VALUES ('124', '2032');
INSERT INTO `sys_role_menu` VALUES ('124', '2043');
INSERT INTO `sys_role_menu` VALUES ('124', '2044');
INSERT INTO `sys_role_menu` VALUES ('124', '2045');
INSERT INTO `sys_role_menu` VALUES ('124', '2046');
INSERT INTO `sys_role_menu` VALUES ('124', '2047');
INSERT INTO `sys_role_menu` VALUES ('124', '2048');
INSERT INTO `sys_role_menu` VALUES ('124', '2049');
INSERT INTO `sys_role_menu` VALUES ('124', '2051');
INSERT INTO `sys_role_menu` VALUES ('124', '2052');
INSERT INTO `sys_role_menu` VALUES ('124', '2059');
INSERT INTO `sys_role_menu` VALUES ('124', '2066');
INSERT INTO `sys_role_menu` VALUES ('124', '2067');
INSERT INTO `sys_role_menu` VALUES ('124', '2077');
INSERT INTO `sys_role_menu` VALUES ('124', '2079');
INSERT INTO `sys_role_menu` VALUES ('124', '2080');
INSERT INTO `sys_role_menu` VALUES ('124', '2081');
INSERT INTO `sys_role_menu` VALUES ('124', '2082');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户昵称',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `real_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `sys_user_phonenumber_uindex` (`phonenumber`),
  UNIQUE KEY `sys_user_user_name_uindex` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', null, 'admin', '系统管理员', '00', 'admin@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-03-31 03:12:10', 'admin', '2021-03-31 03:12:10', '', null, '管理员');
INSERT INTO `sys_user` VALUES ('2', '215', null, 'zhangsan', '张三', '00', 'zhangsan@qq.com', '15777777777', '0', '', '$2a$10$5RJVltp4fSM4H.5YCinn.e9U.hDtNUiuZnL0PtYAqvAXVZkRcBC6K', '0', '0', '', null, 'admin', '2022-04-18 11:29:20', 'admin', '2023-06-10 18:26:21', null);
INSERT INTO `sys_user` VALUES ('3', '215', null, 'zhangsan1', '张三1', '00', 'zhangsan1@qq.com', '15333333333', '0', '', '$2a$10$5RJVltp4fSM4H.5YCinn.e9U.hDtNUiuZnL0PtYAqvAXVZkRcBC6K', '0', '0', '', null, 'admin', '2022-04-18 11:32:21', 'admin', '2023-06-10 18:28:48', null);
INSERT INTO `sys_user` VALUES ('4', '216', null, 'lisi', '李四', '00', 'lisi@qq.com', '15666666666', '1', '', '$2a$10$5RJVltp4fSM4H.5YCinn.e9U.hDtNUiuZnL0PtYAqvAXVZkRcBC6K', '0', '0', '', null, 'admin', '2022-04-18 11:30:18', 'admin', '2022-04-18 11:47:28', null);
INSERT INTO `sys_user` VALUES ('5', '216', null, 'lisi1', '李四1', '00', 'lisi1@qq.com', '15444444444', '0', '', '$2a$10$5RJVltp4fSM4H.5YCinn.e9U.hDtNUiuZnL0PtYAqvAXVZkRcBC6K', '0', '0', '', null, 'admin', '2022-04-18 11:33:28', 'admin', '2022-04-18 11:47:32', null);
INSERT INTO `sys_user` VALUES ('6', '214', null, 'lifeng', '李峰', '00', 'lifeng@qq.com', '15555555555', '0', '', '$2a$10$5RJVltp4fSM4H.5YCinn.e9U.hDtNUiuZnL0PtYAqvAXVZkRcBC6K', '0', '0', '', null, 'admin', '2022-04-18 11:31:20', 'admin', '2022-04-18 11:47:38', null);
INSERT INTO `sys_user` VALUES ('7', '216', null, 'zhangsan3', '张三丰', '00', 'wuji5@163.com', '13852345678', '0', '', '$2a$10$5RJVltp4fSM4H.5YCinn.e9U.hDtNUiuZnL0PtYAqvAXVZkRcBC6K', '0', '0', '', null, 'admin', '2022-04-19 01:26:21', 'admin', '2023-05-16 15:42:01', null);
INSERT INTO `sys_user` VALUES ('8', '214', null, 'wuji1', '无忌1', '00', 'wuji1@163.com', '13812345678', '0', '', '$2a$10$HPOKZVJ.x6NmKz2Mxc0aj.UOxFjL8ZpnX.m1Uf87PVRwZlqJpL6BS', '0', '0', '', null, 'admin', '2023-05-16 15:37:15', 'admin', '2023-05-18 15:26:03', null);
INSERT INTO `sys_user` VALUES ('9', '217', null, 'wuji2', '无忌2', '00', 'wuji2@163.com', '13822345678', '0', '', '$2a$10$AzmyEosx/i.m9XaysEo8muGj7IXq4eC9mt7GubpmW2jXKDyG0GfX6', '0', '0', '', null, 'admin', '2023-05-16 15:37:16', 'admin', '2023-05-16 15:42:01', null);
INSERT INTO `sys_user` VALUES ('10', '217', null, 'wuji3', '无忌3', '00', 'wuji3@163.com', '13832345678', '0', '', '$2a$10$7YJBErXxKohPp4WPbg1eR.ifKErCwgDokKpYaKqQV3E378T0lAn0C', '0', '0', '', null, 'admin', '2023-05-16 15:37:16', 'admin', '2023-05-16 15:42:01', null);
INSERT INTO `sys_user` VALUES ('11', '217', null, 'wuji4', '无忌4', '00', 'wuji4@163.com', '13842345678', '0', '', '$2a$10$jnaJJBQsvxGkhMhOJHsk0Opy6U6dYvaxdboE9X5X08iWWAy81XfXG', '0', '0', '', null, 'admin', '2023-05-16 15:37:16', 'admin', '2023-05-16 15:42:01', null);
INSERT INTO `sys_user` VALUES ('1028', '217', null, 'wangwu', '王五', '00', '', '15309280912', '0', '', '$2a$10$Xe2tRGoziWZB5K1liLggyuKFIFkPuX5RCLlHnH/2CF8YnqaaidKNm', '0', '2', '', null, 'admin', '2023-05-16 10:37:07', '', null, null);
INSERT INTO `sys_user` VALUES ('1029', '217', null, 'zhaoliu', '赵六', '00', 'zhaoliu@163.com', '13998127873', '0', '', '$2a$10$gJtainO5nXyFjGl9Ko6HQuZV7UMVHDL9dJUwC5Q7iLRAEQ7GyG1d6', '0', '2', '', null, 'admin', '2023-05-16 10:45:42', '', '2023-05-16 10:45:42', null);
INSERT INTO `sys_user` VALUES ('1030', '217', null, 'wangwu2', '王五2', '00', 'wangwu2@163.com', '15209091212', '0', '', '$2a$10$1PT2DRywoHvwBJjG00MZYOIjCOcCb6Q6Gbm/vHFk807VmDnRwCbPK', '0', '0', '', null, 'admin', '2023-05-16 10:57:18', 'admin', '2023-05-16 11:24:02', null);
INSERT INTO `sys_user` VALUES ('1033', '217', null, 'wangwu3', '王五3', '00', 'wangwu3@163.com', '13309092345', '0', '', '$2a$10$HBH90rLVCDi55cc.7IULAOqyttInGaNXBUz/XEiI0JrPL3FBCamnW', '0', '0', '', null, 'admin', '2023-05-16 11:05:44', 'tianqi2', '2023-05-16 18:10:47', '财务稽查');
INSERT INTO `sys_user` VALUES ('1034', '217', null, 'tianqi', '王五3', '00', 'tianqi@163.com', '13823456789', '0', '', '$2a$10$.PWYetNs4f.ouIzslpuMsu9i1ZOkIuUZY5iNIUNTNFii2bKIqQpi.', '0', '0', '', null, 'admin', '2023-05-16 11:25:28', 'admin', '2023-05-16 11:26:16', '测试');
INSERT INTO `sys_user` VALUES ('1038', '217', null, 'tianqi2', '田七2', '00', '', '18909876543', '0', '', '$2a$10$bbTXTz.czdAWNCLU71.wh.fEGLA5VXBVAGhvY3mpvTIyx4C11lVIi', '0', '0', '', null, 'admin', '2023-05-16 11:33:43', 'admin', '2023-05-16 12:11:22', null);
INSERT INTO `sys_user` VALUES ('1039', '217', null, 'tianqi3', '田七3', '00', '', '13567890907', '0', '', '$2a$10$by6LWksXsfm2j6DJuE2zZeniCeisSbFRUPGzeW5k09PbcAqZbfC1u', '0', '0', '', null, 'admin', '2023-05-16 11:44:10', 'admin', '2023-05-16 11:44:10', null);
INSERT INTO `sys_user` VALUES ('1040', '217', null, 'tianqi4', '田七4', '00', 'tianqi4@126.com', '13898986789', '0', '', '$2a$10$rM.4.rPHDH9jiSeNOzNWh.Owq86f3zMaV1c0ljNfJ4vbciZBS35w.', '0', '0', '', null, 'admin', '2023-05-16 11:48:08', 'admin', '2023-05-16 11:48:08', '财务稽查');
INSERT INTO `sys_user` VALUES ('1041', '218', null, 'xiexun', '谢逊', '00', 'xiexun@163.com', '18809123920', '0', '', '$2a$10$n3jEb9tHJaAWy09Ng5SUHulUzzl3.NBbFAzaIP57Q7jn7XQEzUEXu', '0', '0', '', null, 'admin', '2023-06-14 00:10:40', 'admin', '2023-06-14 00:10:40', '测试使用的');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('5', '3');
INSERT INTO `sys_user_role` VALUES ('6', '4');
INSERT INTO `sys_user_role` VALUES ('8', '123');
INSERT INTO `sys_user_role` VALUES ('1022', '2');
INSERT INTO `sys_user_role` VALUES ('1023', '3');
INSERT INTO `sys_user_role` VALUES ('1024', '4');
INSERT INTO `sys_user_role` VALUES ('1025', '2');
INSERT INTO `sys_user_role` VALUES ('1026', '3');
INSERT INTO `sys_user_role` VALUES ('1027', '2');
INSERT INTO `sys_user_role` VALUES ('1030', '124');
INSERT INTO `sys_user_role` VALUES ('1033', '124');
INSERT INTO `sys_user_role` VALUES ('1034', '124');
INSERT INTO `sys_user_role` VALUES ('1038', '124');
INSERT INTO `sys_user_role` VALUES ('1039', '124');
INSERT INTO `sys_user_role` VALUES ('1040', '124');
INSERT INTO `sys_user_role` VALUES ('1041', '124');

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '活动名称',
  `code` char(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `channel` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '渠道来源',
  `info` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '活动简介',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '活动类型',
  `discount` float DEFAULT NULL COMMENT '课程折扣',
  `vouchers` int DEFAULT NULL COMMENT '课程代金券',
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `create_time` datetime DEFAULT NULL,
  `status` char(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='活动管理';

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES ('1', '51促销', 'z9xxq9bf', '0', '51促销', '1', '2', null, '2021-04-04 08:00:00', '2021-04-13 08:00:00', '2021-09-08 15:44:55', '1');
INSERT INTO `tb_activity` VALUES ('34', '高额代金券', 'tg7xbghc', '0', '高额代金券', '2', null, '999999', '2021-05-19 16:00:00', '2025-06-27 16:00:00', '2021-05-19 10:33:52', '1');
INSERT INTO `tb_activity` VALUES ('35', '折扣活动', 'jbzpq819', '0', '折扣活动', '1', '0.2', null, '2021-05-19 16:00:00', '2021-05-29 16:00:00', '2021-09-08 14:59:11', '1');
INSERT INTO `tb_activity` VALUES ('45', '1314活动月大一起', 'dy55emld', '1', '活动月', '1', '0.1', null, '2021-05-29 16:00:00', '2021-06-29 15:59:00', '2021-09-08 14:58:18', '1');
INSERT INTO `tb_activity` VALUES ('66', '双十二活动', 'mywgjau9', '0', '双十二大促', '2', null, '1000', '2021-11-02 08:00:00', '2021-12-01 07:59:00', '2021-11-02 16:06:17', '1');
INSERT INTO `tb_activity` VALUES ('67', '双十一打折', '28f1mi5l', '0', '双十一打折', '1', '0.3', null, '2021-11-03 08:00:00', '2021-12-01 07:59:00', '2021-11-03 10:10:43', '1');
INSERT INTO `tb_activity` VALUES ('69', '11月4日大促', 'ko981yxd', '0', '11月4日大促', '2', null, '1000', '2021-12-01 08:00:00', '2021-12-17 07:59:00', '2021-11-04 17:18:37', '1');
INSERT INTO `tb_activity` VALUES ('72', '推广拉新活动', 'fea1wzqg', '1', '拉新', '2', null, '20', '2021-11-05 08:00:00', '2022-01-01 07:59:00', '2021-11-05 11:06:28', '1');
INSERT INTO `tb_activity` VALUES ('73', '十一月五日', 'kxdao5xq', '0', '十一月五日', '1', '0.8', null, '2021-11-05 08:00:00', '2021-11-27 07:59:00', '2021-11-05 13:56:23', '1');
INSERT INTO `tb_activity` VALUES ('74', '正月十五促销活动', '95qv61bh', '0', '正月十五促销活动', '2', null, '222', '2021-11-05 08:00:00', '2021-11-27 07:59:00', '2021-11-05 13:59:26', '1');
INSERT INTO `tb_activity` VALUES ('75', '教师节活动', 'p8jpsl9g', '0', '教师节活动', '2', null, '333', '2021-11-05 08:00:00', '2021-11-27 07:59:00', '2021-11-05 22:02:22', '1');
INSERT INTO `tb_activity` VALUES ('77', '双十二快消活动', 'pa35elxs', '0', '快速拉取新客户', '2', null, '555', '2021-11-05 08:00:00', '2021-11-28 07:59:00', '2021-11-05 22:38:28', '1');
INSERT INTO `tb_activity` VALUES ('78', '新春大促活动0.1折', 'a1a2sj8o', '1', '新春天大促0.1折', '1', '0.1', null, '2022-01-04 08:00:00', '2022-03-01 07:59:00', '2021-11-08 22:17:04', '1');
INSERT INTO `tb_activity` VALUES ('79', '新春大促活动0.1', '8k17vaou', '0', '新春大促活动0.1', '1', '0.1', null, '2021-11-08 08:00:00', '2021-12-01 07:59:00', '2021-11-08 22:18:22', '1');
INSERT INTO `tb_activity` VALUES ('110', '双11打折', '3c3nechs', '0', '双11打折', '1', '8.5', null, '2021-11-23 00:00:00', '2021-12-31 23:59:00', '2021-11-23 18:49:58', '1');
INSERT INTO `tb_activity` VALUES ('116', '17周年庆典回馈', 'JT4kTtkG', '0', '17周年庆典回馈活动', '1', '0.8', null, '2023-05-20 00:00:00', '2023-06-20 23:59:00', '2023-05-17 12:32:52', '1');
INSERT INTO `tb_activity` VALUES ('117', '毕业季招生推广活动', 'z18Ss7v4', '1', '毕业季招生推广活动', '2', null, '880', '2023-05-25 00:00:00', '2023-06-25 23:59:00', '2023-05-17 15:15:43', '1');
INSERT INTO `tb_activity` VALUES ('118', '618福利日', 'aQLjjgMF', '0', '618福利日', '2', null, '680', '2023-06-13 00:00:00', '2023-06-20 23:59:00', '2023-06-13 18:13:38', '1');
INSERT INTO `tb_activity` VALUES ('119', '大学毕业季大礼包', 'VvOQjW84', '1', '大学毕业季大礼包', '1', '8', null, '2023-06-13 00:00:00', '2023-07-31 23:59:00', '2023-06-13 18:14:13', '1');
INSERT INTO `tb_activity` VALUES ('120', '金秋大礼包欢乐送不停', '0FoMzJT9', '0', '金秋大礼包欢乐送不停', '2', null, '1280', '2023-06-21 00:00:00', '2023-09-30 23:59:00', '2023-06-13 18:20:27', '1');

-- ----------------------------
-- Table structure for tb_assign_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_assign_record`;
CREATE TABLE `tb_assign_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `assign_id` bigint DEFAULT NULL COMMENT '关联id',
  `user_id` bigint DEFAULT NULL COMMENT '所属人用户id',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '所属人名称',
  `dept_id` bigint DEFAULT NULL COMMENT '所属人所属组织',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分配人',
  `latest` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '是否当前最新分配人',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '类型0 线索 1 商机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19564 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='分配记录表';

-- ----------------------------
-- Records of tb_assign_record
-- ----------------------------
INSERT INTO `tb_assign_record` VALUES ('19037', '9097', '2', 'zhangsan', '215', '2022-04-19 01:27:23', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19038', '9098', '2', 'zhangsan', '215', '2022-04-19 01:27:23', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19039', '9099', '2', 'zhangsan', '215', '2022-04-19 01:27:23', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19040', '9100', '2', 'zhangsan', '215', '2022-04-19 01:27:23', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19041', '9101', '2', 'zhangsan', '215', '2022-04-19 01:27:23', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19042', '9102', '2', 'zhangsan', '215', '2022-04-19 01:27:23', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19043', '9103', '3', 'zhangsan1', '215', '2022-04-19 01:39:29', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19044', '9106', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19045', '9107', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19046', '9108', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19047', '9109', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19048', '9110', '2', 'zhangsan', '215', '2022-04-19 01:27:24', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19049', '9111', '2', 'zhangsan', '215', '2022-04-19 01:27:24', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19050', '9112', '2', 'zhangsan', '215', '2022-04-19 01:27:24', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19051', '9113', '2', 'zhangsan', '215', '2022-04-19 01:27:24', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19052', '9114', '2', 'zhangsan', '215', '2022-04-19 01:27:24', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19053', '9115', '2', 'zhangsan', '215', '2022-04-19 01:27:25', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19054', '9116', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19055', '9119', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19056', '9120', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19057', '9121', '3', 'zhangsan1', '215', '2022-04-19 01:39:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19058', '9122', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19059', '9123', '2', 'zhangsan', '215', '2022-04-19 01:27:26', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19060', '9124', '2', 'zhangsan', '215', '2022-04-19 01:27:26', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19061', '9125', '2', 'zhangsan', '215', '2022-04-19 01:27:26', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19062', '9126', '2', 'zhangsan', '215', '2022-04-19 01:27:26', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19063', '9127', '2', 'zhangsan', '215', '2022-04-19 01:27:26', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19064', '9128', '2', 'zhangsan', '215', '2022-04-19 01:27:26', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19065', '9129', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19066', '9132', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19067', '9133', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19068', '9134', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19069', '9135', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19070', '9136', '2', 'zhangsan', '215', '2022-04-19 01:27:27', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19071', '9137', '2', 'zhangsan', '215', '2022-04-19 01:27:27', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19072', '9138', '2', 'zhangsan', '215', '2022-04-19 01:27:27', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19073', '9139', '2', 'zhangsan', '215', '2022-04-19 01:27:27', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19074', '9140', '2', 'zhangsan', '215', '2022-04-19 01:27:27', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19075', '9141', '2', 'zhangsan', '215', '2022-04-19 01:27:28', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19076', '9142', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19077', '9145', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19078', '9146', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19079', '9147', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19080', '9148', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19081', '9149', '2', 'zhangsan', '215', '2022-04-19 01:27:28', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19082', '9150', '2', 'zhangsan', '215', '2022-04-19 01:27:28', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19083', '9151', '2', 'zhangsan', '215', '2022-04-19 01:27:29', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19084', '9152', '2', 'zhangsan', '215', '2022-04-19 01:27:29', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19085', '9153', '2', 'zhangsan', '215', '2022-04-19 01:27:29', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19086', '9154', '2', 'zhangsan', '215', '2022-04-19 01:27:29', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19087', '9155', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19088', '9158', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19089', '9159', '3', 'zhangsan1', '215', '2022-04-19 01:39:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19090', '9160', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19091', '9161', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19092', '9162', '2', 'zhangsan', '215', '2022-04-19 01:27:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19093', '9163', '2', 'zhangsan', '215', '2022-04-19 01:27:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19094', '9164', '2', 'zhangsan', '215', '2022-04-19 01:27:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19095', '9165', '2', 'zhangsan', '215', '2022-04-19 01:27:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19096', '9166', '2', 'zhangsan', '215', '2022-04-19 01:27:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19097', '9167', '2', 'zhangsan', '215', '2022-04-19 01:27:30', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19098', '9168', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19099', '9171', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19100', '9172', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19101', '9173', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19102', '9174', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19103', '9175', '2', 'zhangsan', '215', '2022-04-19 01:27:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19104', '9176', '2', 'zhangsan', '215', '2022-04-19 01:27:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19105', '9177', '2', 'zhangsan', '215', '2022-04-19 01:27:31', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19106', '9178', '2', 'zhangsan', '215', '2022-04-19 01:27:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19107', '9179', '2', 'zhangsan', '215', '2022-04-19 01:27:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19108', '9180', '2', 'zhangsan', '215', '2022-04-19 01:27:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19109', '9181', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19110', '9184', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19111', '9185', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19112', '9186', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19113', '9187', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19114', '9188', '2', 'zhangsan', '215', '2022-04-19 01:27:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19115', '9189', '2', 'zhangsan', '215', '2022-04-19 01:27:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19116', '9190', '2', 'zhangsan', '215', '2022-04-19 01:27:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19117', '9191', '2', 'zhangsan', '215', '2022-04-19 01:27:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19118', '9192', '2', 'zhangsan', '215', '2022-04-19 01:27:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19119', '9193', '2', 'zhangsan', '215', '2022-04-19 01:27:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19120', '9194', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19121', '9197', '3', 'zhangsan1', '215', '2022-04-19 01:39:32', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19122', '9198', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19123', '9199', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19124', '9200', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19125', '9201', '2', 'zhangsan', '215', '2022-04-19 01:27:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19126', '9202', '2', 'zhangsan', '215', '2022-04-19 01:27:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19127', '9203', '2', 'zhangsan', '215', '2022-04-19 01:27:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19128', '9204', '2', 'zhangsan', '215', '2022-04-19 01:27:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19129', '9205', '2', 'zhangsan', '215', '2022-04-19 01:27:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19130', '9206', '2', 'zhangsan', '215', '2022-04-19 01:27:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19131', '9207', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19132', '9210', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19133', '9211', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19134', '9212', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19135', '9213', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19136', '9214', '2', 'zhangsan', '215', '2022-04-19 01:27:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19137', '9215', '2', 'zhangsan', '215', '2022-04-19 01:27:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19138', '9216', '2', 'zhangsan', '215', '2022-04-19 01:27:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19139', '9217', '2', 'zhangsan', '215', '2022-04-19 01:27:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19140', '9218', '2', 'zhangsan', '215', '2022-04-19 01:27:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19141', '9219', '2', 'zhangsan', '215', '2022-04-19 01:27:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19142', '9220', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19143', '9223', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19144', '9224', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19145', '9225', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19146', '9226', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19147', '9227', '2', 'zhangsan', '215', '2022-04-19 01:27:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19148', '9228', '2', 'zhangsan', '215', '2022-04-19 01:27:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19149', '9229', '2', 'zhangsan', '215', '2022-04-19 01:27:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19150', '9230', '2', 'zhangsan', '215', '2022-04-19 01:27:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19151', '9231', '2', 'zhangsan', '215', '2022-04-19 01:27:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19152', '9232', '2', 'zhangsan', '215', '2022-04-19 01:27:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19153', '9233', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19154', '9236', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19155', '9237', '3', 'zhangsan1', '215', '2022-04-19 01:39:33', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19156', '9238', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19157', '9239', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19158', '9240', '2', 'zhangsan', '215', '2022-04-19 01:27:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19159', '9241', '2', 'zhangsan', '215', '2022-04-19 01:27:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19160', '9242', '2', 'zhangsan', '215', '2022-04-19 01:27:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19161', '9243', '2', 'zhangsan', '215', '2022-04-19 01:27:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19162', '9244', '2', 'zhangsan', '215', '2022-04-19 01:27:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19163', '9245', '2', 'zhangsan', '215', '2022-04-19 01:27:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19164', '9246', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19165', '9249', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19166', '9250', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19167', '9251', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19168', '9252', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19169', '9253', '2', 'zhangsan', '215', '2022-04-19 01:27:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19170', '9254', '2', 'zhangsan', '215', '2022-04-19 01:27:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19171', '9255', '2', 'zhangsan', '215', '2022-04-19 01:27:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19172', '9256', '2', 'zhangsan', '215', '2022-04-19 01:27:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19173', '9257', '2', 'zhangsan', '215', '2022-04-19 01:27:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19174', '9258', '2', 'zhangsan', '215', '2022-04-19 01:27:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19175', '9259', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19176', '9262', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19177', '9263', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19178', '9264', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19179', '9265', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19180', '9266', '2', 'zhangsan', '215', '2022-04-19 01:27:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19181', '9267', '2', 'zhangsan', '215', '2022-04-19 01:27:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19182', '9268', '2', 'zhangsan', '215', '2022-04-19 01:27:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19183', '9269', '2', 'zhangsan', '215', '2022-04-19 01:27:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19184', '9270', '2', 'zhangsan', '215', '2022-04-19 01:27:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19185', '9271', '2', 'zhangsan', '215', '2022-04-19 01:27:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19186', '9272', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19187', '9275', '3', 'zhangsan1', '215', '2022-04-19 01:39:34', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19188', '9276', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19189', '9277', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19190', '9278', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19191', '9279', '2', 'zhangsan', '215', '2022-04-19 01:27:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19192', '9280', '2', 'zhangsan', '215', '2022-04-19 01:27:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19193', '9281', '2', 'zhangsan', '215', '2022-04-19 01:27:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19194', '9282', '2', 'zhangsan', '215', '2022-04-19 01:27:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19195', '9283', '2', 'zhangsan', '215', '2022-04-19 01:27:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19196', '9284', '2', 'zhangsan', '215', '2022-04-19 01:27:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19197', '9285', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19198', '9288', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19199', '9289', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19200', '9290', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19201', '9291', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19202', '9292', '2', 'zhangsan', '215', '2022-04-19 01:27:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19203', '9293', '2', 'zhangsan', '215', '2022-04-19 01:27:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19204', '9294', '2', 'zhangsan', '215', '2022-04-19 01:27:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19205', '9295', '2', 'zhangsan', '215', '2022-04-19 01:27:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19206', '9296', '2', 'zhangsan', '215', '2022-04-19 01:27:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19207', '9297', '2', 'zhangsan', '215', '2022-04-19 01:27:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19208', '9298', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19209', '9301', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19210', '9302', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19211', '9303', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19212', '9304', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19213', '9305', '2', 'zhangsan', '215', '2022-04-19 01:27:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19214', '9306', '2', 'zhangsan', '215', '2022-04-19 01:27:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19215', '9307', '2', 'zhangsan', '215', '2022-04-19 01:27:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19216', '9308', '2', 'zhangsan', '215', '2022-04-19 01:27:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19217', '9309', '2', 'zhangsan', '215', '2022-04-19 01:27:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19218', '9310', '2', 'zhangsan', '215', '2022-04-19 01:27:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19219', '9311', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19220', '9314', '3', 'zhangsan1', '215', '2022-04-19 01:39:35', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19221', '9315', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19222', '9316', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19223', '9317', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19224', '9318', '2', 'zhangsan', '215', '2022-04-19 01:27:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19225', '9319', '2', 'zhangsan', '215', '2022-04-19 01:27:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19226', '9320', '2', 'zhangsan', '215', '2022-04-19 01:27:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19227', '9321', '2', 'zhangsan', '215', '2022-04-19 01:27:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19228', '9322', '2', 'zhangsan', '215', '2022-04-19 01:27:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19229', '9323', '2', 'zhangsan', '215', '2022-04-19 01:27:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19230', '9324', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19231', '9327', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19232', '9328', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19233', '9329', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19234', '9330', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19235', '9331', '2', 'zhangsan', '215', '2022-04-19 01:27:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19236', '9332', '2', 'zhangsan', '215', '2022-04-19 01:27:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19237', '9333', '2', 'zhangsan', '215', '2022-04-19 01:27:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19238', '9334', '2', 'zhangsan', '215', '2022-04-19 01:27:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19239', '9335', '2', 'zhangsan', '215', '2022-04-19 01:27:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19240', '9336', '2', 'zhangsan', '215', '2022-04-19 01:27:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19241', '9337', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19242', '9340', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19243', '9341', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19244', '9342', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19245', '9343', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19246', '9344', '2', 'zhangsan', '215', '2022-04-19 01:27:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19247', '9345', '2', 'zhangsan', '215', '2022-04-19 01:27:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19248', '9346', '2', 'zhangsan', '215', '2022-04-19 01:27:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19249', '9347', '2', 'zhangsan', '215', '2022-04-19 01:27:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19250', '9348', '2', 'zhangsan', '215', '2022-04-19 01:27:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19251', '9349', '2', 'zhangsan', '215', '2022-04-19 01:27:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19252', '9350', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19253', '9353', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19254', '9354', '3', 'zhangsan1', '215', '2022-04-19 01:39:36', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19255', '9355', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19256', '9356', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19257', '9357', '2', 'zhangsan', '215', '2022-04-19 01:27:50', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19258', '9358', '2', 'zhangsan', '215', '2022-04-19 01:27:50', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19259', '9359', '2', 'zhangsan', '215', '2022-04-19 01:27:50', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19260', '9360', '2', 'zhangsan', '215', '2022-04-19 01:27:50', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19261', '9361', '2', 'zhangsan', '215', '2022-04-19 01:27:51', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19262', '9362', '2', 'zhangsan', '215', '2022-04-19 01:27:51', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19263', '9363', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19264', '9366', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19265', '9367', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19266', '9368', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19267', '9369', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19268', '9370', '2', 'zhangsan', '215', '2022-04-19 01:27:51', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19269', '9371', '2', 'zhangsan', '215', '2022-04-19 01:27:51', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19270', '9372', '2', 'zhangsan', '215', '2022-04-19 01:27:51', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19271', '9373', '2', 'zhangsan', '215', '2022-04-19 01:27:51', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19272', '9374', '2', 'zhangsan', '215', '2022-04-19 01:27:52', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19273', '9375', '2', 'zhangsan', '215', '2022-04-19 01:27:52', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19274', '9376', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19275', '9379', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19276', '9380', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19277', '9381', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19278', '9382', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19279', '9383', '2', 'zhangsan', '215', '2022-04-19 01:27:52', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19280', '9384', '2', 'zhangsan', '215', '2022-04-19 01:27:52', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19281', '9385', '2', 'zhangsan', '215', '2022-04-19 01:27:53', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19282', '9386', '2', 'zhangsan', '215', '2022-04-19 01:27:53', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19283', '9387', '2', 'zhangsan', '215', '2022-04-19 01:27:53', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19284', '9388', '2', 'zhangsan', '215', '2022-04-19 01:27:53', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19285', '9389', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19286', '9392', '3', 'zhangsan1', '215', '2022-04-19 01:39:37', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19287', '9393', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19288', '9394', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19289', '9395', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19290', '9396', '2', 'zhangsan', '215', '2022-04-19 01:27:54', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19291', '9397', '2', 'zhangsan', '215', '2022-04-19 01:27:54', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19292', '9398', '2', 'zhangsan', '215', '2022-04-19 01:27:54', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19293', '9399', '2', 'zhangsan', '215', '2022-04-19 01:27:54', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19294', '9400', '2', 'zhangsan', '215', '2022-04-19 01:27:54', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19295', '9401', '2', 'zhangsan', '215', '2022-04-19 01:27:54', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19296', '9402', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19297', '9405', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19298', '9406', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19299', '9407', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19300', '9408', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19301', '9409', '2', 'zhangsan', '215', '2022-04-19 01:27:55', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19302', '9410', '2', 'zhangsan', '215', '2022-04-19 01:27:55', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19303', '9411', '2', 'zhangsan', '215', '2022-04-19 01:27:55', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19304', '9412', '2', 'zhangsan', '215', '2022-04-19 01:27:55', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19305', '9413', '2', 'zhangsan', '215', '2022-04-19 01:27:55', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19306', '9414', '2', 'zhangsan', '215', '2022-04-19 01:27:56', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19307', '9415', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19308', '9418', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19309', '9419', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19310', '9420', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19311', '9421', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19312', '9422', '2', 'zhangsan', '215', '2022-04-19 01:27:57', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19313', '9423', '2', 'zhangsan', '215', '2022-04-19 01:27:57', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19314', '9424', '2', 'zhangsan', '215', '2022-04-19 01:27:57', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19315', '9425', '2', 'zhangsan', '215', '2022-04-19 01:27:57', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19316', '9426', '2', 'zhangsan', '215', '2022-04-19 01:27:57', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19317', '9427', '2', 'zhangsan', '215', '2022-04-19 01:27:57', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19318', '9428', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19319', '9431', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19320', '9432', '3', 'zhangsan1', '215', '2022-04-19 01:39:38', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19321', '9433', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19322', '9434', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19323', '9435', '2', 'zhangsan', '215', '2022-04-19 01:27:58', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19324', '9436', '2', 'zhangsan', '215', '2022-04-19 01:27:58', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19325', '9437', '2', 'zhangsan', '215', '2022-04-19 01:27:58', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19326', '9438', '2', 'zhangsan', '215', '2022-04-19 01:27:58', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19327', '9439', '2', 'zhangsan', '215', '2022-04-19 01:27:58', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19328', '9440', '2', 'zhangsan', '215', '2022-04-19 01:27:59', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19329', '9441', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19330', '9444', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19331', '9445', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19332', '9446', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19333', '9447', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19334', '9448', '2', 'zhangsan', '215', '2022-04-19 01:27:59', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19335', '9449', '2', 'zhangsan', '215', '2022-04-19 01:28:00', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19336', '9450', '2', 'zhangsan', '215', '2022-04-19 01:28:00', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19337', '9451', '2', 'zhangsan', '215', '2022-04-19 01:28:00', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19338', '9452', '2', 'zhangsan', '215', '2022-04-19 01:28:00', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19339', '9453', '2', 'zhangsan', '215', '2022-04-19 01:28:00', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19340', '9454', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19341', '9457', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19342', '9458', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19343', '9459', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19344', '9460', '3', 'zhangsan1', '215', '2022-04-19 01:39:39', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19345', '9461', '2', 'zhangsan', '215', '2022-04-19 01:28:01', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19346', '9462', '2', 'zhangsan', '215', '2022-04-19 01:28:01', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19347', '9463', '2', 'zhangsan', '215', '2022-04-19 01:28:01', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19348', '9464', '2', 'zhangsan', '215', '2022-04-19 01:28:01', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19349', '9465', '2', 'zhangsan', '215', '2022-04-19 01:28:01', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19350', '9466', '2', 'zhangsan', '215', '2022-04-19 01:28:02', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19351', '9467', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19352', '9470', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19353', '9471', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19354', '9472', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19355', '9473', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19356', '9474', '2', 'zhangsan', '215', '2022-04-19 01:28:02', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19357', '9475', '2', 'zhangsan', '215', '2022-04-19 01:28:02', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19358', '9476', '2', 'zhangsan', '215', '2022-04-19 01:28:02', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19359', '9477', '2', 'zhangsan', '215', '2022-04-19 01:28:02', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19360', '9478', '2', 'zhangsan', '215', '2022-04-19 01:28:03', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19361', '9479', '2', 'zhangsan', '215', '2022-04-19 01:28:03', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19362', '9480', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19363', '9483', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19364', '9484', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19365', '9485', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19366', '9486', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19367', '9487', '2', 'zhangsan', '215', '2022-04-19 01:28:03', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19368', '9488', '2', 'zhangsan', '215', '2022-04-19 01:28:04', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19369', '9489', '2', 'zhangsan', '215', '2022-04-19 01:28:04', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19370', '9490', '2', 'zhangsan', '215', '2022-04-19 01:28:04', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19371', '9491', '2', 'zhangsan', '215', '2022-04-19 01:28:04', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19372', '9492', '2', 'zhangsan', '215', '2022-04-19 01:28:04', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19373', '9493', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19374', '9496', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19375', '9497', '3', 'zhangsan1', '215', '2022-04-19 01:39:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19376', '9498', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19377', '9499', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19378', '9500', '2', 'zhangsan', '215', '2022-04-19 01:28:05', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19379', '9501', '2', 'zhangsan', '215', '2022-04-19 01:28:05', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19380', '9502', '2', 'zhangsan', '215', '2022-04-19 01:28:05', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19381', '9503', '2', 'zhangsan', '215', '2022-04-19 01:28:05', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19382', '9504', '2', 'zhangsan', '215', '2022-04-19 01:28:05', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19383', '9505', '2', 'zhangsan', '215', '2022-04-19 01:28:05', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19384', '9506', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19385', '9509', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19386', '9510', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19387', '9511', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19388', '9512', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19389', '9513', '2', 'zhangsan', '215', '2022-04-19 01:28:06', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19390', '9514', '2', 'zhangsan', '215', '2022-04-19 01:28:06', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19391', '9515', '2', 'zhangsan', '215', '2022-04-19 01:28:06', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19392', '9516', '2', 'zhangsan', '215', '2022-04-19 01:28:06', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19393', '9517', '2', 'zhangsan', '215', '2022-04-19 01:28:06', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19394', '9518', '2', 'zhangsan', '215', '2022-04-19 01:28:07', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19395', '9519', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19396', '9522', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19397', '9523', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19398', '9524', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19399', '9525', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19400', '9526', '2', 'zhangsan', '215', '2022-04-19 01:28:07', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19401', '9527', '2', 'zhangsan', '215', '2022-04-19 01:28:07', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19402', '9528', '2', 'zhangsan', '215', '2022-04-19 01:28:07', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19403', '9529', '2', 'zhangsan', '215', '2022-04-19 01:28:07', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19404', '9530', '2', 'zhangsan', '215', '2022-04-19 01:28:08', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19405', '9531', '2', 'zhangsan', '215', '2022-04-19 01:28:08', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19406', '9532', '3', 'zhangsan1', '215', '2022-04-19 01:39:41', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19407', '9535', '3', 'zhangsan1', '215', '2022-04-19 01:39:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19408', '9536', '3', 'zhangsan1', '215', '2022-04-19 01:39:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19409', '9537', '3', 'zhangsan1', '215', '2022-04-19 01:39:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19410', '9538', '3', 'zhangsan1', '215', '2022-04-19 01:39:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19411', '9539', '2', 'zhangsan', '215', '2022-04-19 01:28:08', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19412', '9540', '2', 'zhangsan', '215', '2022-04-19 01:28:08', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19413', '9541', '2', 'zhangsan', '215', '2022-04-19 01:28:09', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19414', '9542', '2', 'zhangsan', '215', '2022-04-19 01:28:09', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19415', '9543', '2', 'zhangsan', '215', '2022-04-19 01:28:09', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19416', '9544', '2', 'zhangsan', '215', '2022-04-19 01:28:09', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19417', '9545', '3', 'zhangsan1', '215', '2022-04-19 01:39:42', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19418', '9548', '3', 'zhangsan1', '215', '2022-04-19 01:39:42', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19419', '9549', '3', 'zhangsan1', '215', '2022-04-19 01:39:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19420', '9550', '3', 'zhangsan1', '215', '2022-04-19 01:39:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19421', '9551', '3', 'zhangsan1', '215', '2022-04-19 01:39:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19422', '9552', '2', 'zhangsan', '215', '2022-04-19 01:28:10', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19423', '9553', '2', 'zhangsan', '215', '2022-04-19 01:28:10', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19424', '9554', '2', 'zhangsan', '215', '2022-04-19 01:28:10', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19425', '9555', '2', 'zhangsan', '215', '2022-04-19 01:28:10', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19426', '9556', '2', 'zhangsan', '215', '2022-04-19 01:28:10', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19427', '9557', '2', 'zhangsan', '215', '2022-04-19 01:28:10', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19428', '9558', '3', 'zhangsan1', '215', '2022-04-19 01:39:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19429', '9561', '3', 'zhangsan1', '215', '2022-04-19 01:39:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19430', '9562', '3', 'zhangsan1', '215', '2022-04-19 01:39:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19431', '9563', '3', 'zhangsan1', '215', '2022-04-17 01:39:43', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19432', '9564', '3', 'zhangsan1', '215', '2022-04-19 01:39:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19433', '9565', '2', 'zhangsan', '215', '2022-04-19 01:28:11', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19434', '9566', '2', 'zhangsan', '215', '2022-04-19 01:28:11', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19435', '9567', '2', 'zhangsan', '215', '2022-04-19 01:28:11', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19436', '9568', '2', 'zhangsan', '215', '2022-04-19 01:28:11', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19437', '9569', '2', 'zhangsan', '215', '2022-04-19 01:28:11', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19438', '9570', '2', 'zhangsan', '215', '2022-04-19 01:28:11', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19439', '9571', '3', 'zhangsan1', '215', '2022-04-19 01:39:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19440', '9574', '3', 'zhangsan1', '215', '2022-04-19 01:39:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19441', '9575', '3', 'zhangsan1', '215', '2022-04-19 01:39:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19442', '9576', '3', 'zhangsan1', '215', '2022-04-19 01:39:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19443', '9577', '3', 'zhangsan1', '215', '2022-04-19 01:39:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19444', '9578', '2', 'zhangsan', '215', '2022-04-19 01:28:12', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19445', '9579', '2', 'zhangsan', '215', '2022-04-19 01:28:12', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19446', '9580', '2', 'zhangsan', '215', '2022-04-19 01:28:12', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19447', '9581', '2', 'zhangsan', '215', '2022-04-19 01:28:12', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19448', '9582', '2', 'zhangsan', '215', '2022-04-19 01:28:12', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19449', '9583', '2', 'zhangsan', '215', '2022-04-19 01:28:12', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19450', '9584', '3', 'zhangsan1', '215', '2022-04-19 01:39:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19451', '9587', '3', 'zhangsan1', '215', '2022-04-19 01:39:45', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19452', '9588', '3', 'zhangsan1', '215', '2022-04-19 01:39:45', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19453', '9589', '3', 'zhangsan1', '215', '2022-04-19 01:39:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19454', '9590', '3', 'zhangsan1', '215', '2022-04-19 01:39:45', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19455', '9591', '2', 'zhangsan', '215', '2022-04-19 01:28:13', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19456', '9592', '2', 'zhangsan', '215', '2022-04-19 01:28:13', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19457', '9593', '2', 'zhangsan', '215', '2022-04-19 01:28:13', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19458', '9594', '2', 'zhangsan', '215', '2022-04-19 01:28:14', 'lifeng', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19459', '9595', '2', 'zhangsan', '215', '2022-04-19 01:28:14', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19460', '9585', '2', 'zhangsan', '215', '2022-04-19 01:28:40', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19461', '9586', '2', 'zhangsan', '215', '2022-04-19 01:28:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19462', '9594', '3', 'zhangsan1', '215', '2022-04-19 01:42:03', 'admin', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19463', '9588', '7', 'zhangsan3', '215', '2022-04-19 01:42:30', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19464', '9590', '3', 'zhangsan1', '215', '2022-04-19 01:42:36', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19465', '9548', '2', 'zhangsan', '215', '2022-04-19 01:42:44', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19466', '9542', '7', 'zhangsan3', '215', '2022-04-19 01:42:52', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19467', '3429', '4', 'lisi', '216', '2022-04-19 09:17:26', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19468', '3430', '5', 'lisi1', '216', '2022-04-19 15:17:25', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19469', '3432', '5', 'lisi1', '216', '2022-04-19 15:17:49', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19470', '3433', '4', 'lisi', '216', '2022-04-19 15:17:57', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19471', '3434', '4', 'lisi', '216', '2022-04-19 15:18:01', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19472', '3435', '4', 'lisi', '216', '2022-04-19 15:18:05', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19473', '3436', '4', 'lisi', '216', '2022-04-19 15:18:18', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19474', '3437', '5', 'lisi1', '216', '2022-04-19 15:26:49', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19475', '3438', '5', 'lisi1', '216', '2022-04-19 15:27:10', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19476', '3439', '4', 'lisi', '216', '2022-04-19 15:27:28', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19477', '3440', '5', 'lisi1', '216', '2022-04-19 15:28:49', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19478', '3441', '4', 'lisi', '216', '2022-04-19 15:29:02', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19479', '3442', '5', 'lisi1', '216', '2022-04-19 15:29:32', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19480', '3443', '4', 'lisi', '216', '2022-04-19 15:29:52', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19481', '3431', '4', 'lisi', '216', '2022-04-19 15:44:17', 'admin', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19482', '3444', '4', 'lisi', '216', '2022-04-19 15:44:54', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19483', '3445', '4', 'lisi', '216', '2022-04-19 16:01:39', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19484', '3446', '5', 'lisi1', '216', '2022-04-19 16:01:58', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19485', '3447', '4', 'lisi', '216', '2022-04-19 16:02:40', 'zhangsan', '0', '1');
INSERT INTO `tb_assign_record` VALUES ('19486', '3448', '4', 'lisi', '216', '2022-04-19 16:06:15', 'zhangsan', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19487', '9594', '7', 'zhangsan3', '215', '2022-04-19 23:45:46', 'zhangsan3', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19488', '9563', '1', 'admin', '103', '2022-04-20 00:05:49', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19489', '9587', '1', 'admin', '103', '2022-04-20 00:06:30', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19490', '9602', '2', 'zhangsan', '215', '2022-04-20 00:17:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19491', '9603', '2', 'zhangsan', '215', '2022-04-20 00:17:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19492', '9604', '2', 'zhangsan', '215', '2022-04-20 00:17:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19493', '9605', '2', 'zhangsan', '215', '2022-04-20 00:17:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19494', '9606', '2', 'zhangsan', '215', '2022-04-20 00:17:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19495', '9607', '2', 'zhangsan', '215', '2022-04-20 00:17:43', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19496', '9608', '3', 'zhangsan1', '215', '2022-04-20 00:17:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19497', '9615', '2', 'zhangsan', '215', '2022-04-20 00:17:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19498', '9616', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19499', '9617', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19500', '9618', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19501', '9619', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19502', '9620', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19503', '9621', '3', 'zhangsan1', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19504', '9628', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19505', '9629', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19506', '9630', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19507', '9631', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19508', '9632', '2', 'zhangsan', '215', '2022-04-20 00:17:45', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19509', '9633', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19510', '9634', '3', 'zhangsan1', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19511', '9641', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19512', '9642', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19513', '9643', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19514', '9644', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19515', '9645', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19516', '9646', '2', 'zhangsan', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19517', '9647', '3', 'zhangsan1', '215', '2022-04-20 00:17:46', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19518', '9654', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19519', '9655', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19520', '9656', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19521', '9657', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19522', '9658', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19523', '9659', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19524', '9660', '3', 'zhangsan1', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19525', '9667', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19526', '9668', '2', 'zhangsan', '215', '2022-04-20 00:17:47', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19527', '9669', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19528', '9670', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19529', '9671', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19530', '9672', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19531', '9673', '3', 'zhangsan1', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19532', '9680', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19533', '9681', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19534', '9682', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19535', '9683', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19536', '9684', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19537', '9685', '2', 'zhangsan', '215', '2022-04-20 00:17:48', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19538', '9686', '3', 'zhangsan1', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19539', '9693', '2', 'zhangsan', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19540', '9694', '2', 'zhangsan', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19541', '9695', '2', 'zhangsan', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19542', '9696', '2', 'zhangsan', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19543', '9697', '2', 'zhangsan', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19544', '9698', '2', 'zhangsan', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19545', '9699', '3', 'zhangsan1', '215', '2022-04-20 00:17:49', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19546', '9541', '6', 'lifeng', '214', '2022-04-20 00:37:44', 'lifeng', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19547', '9700', '1', 'admin', '103', '2023-05-17 15:55:14', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19548', '9701', '1', 'admin', '103', '2023-05-17 17:19:38', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19549', '9687', '8', 'wuji1', '217', '2023-05-17 17:38:47', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19550', '9702', '2', 'zhangsan', '215', '2023-05-18 11:35:35', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19551', '9703', '3', 'zhangsan1', '215', '2023-05-18 11:35:58', 'admin', '0', '0');
INSERT INTO `tb_assign_record` VALUES ('19552', '9704', '2', 'zhangsan', '215', '2023-05-18 11:35:58', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19553', '9098', '1', 'admin', '103', '2023-05-18 11:46:40', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19554', '9099', '1', 'admin', '103', '2023-05-18 11:51:14', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19555', '9100', '1', 'admin', '103', '2023-05-18 11:51:48', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19556', '9103', '1', 'admin', '103', '2023-05-18 11:52:40', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19557', '3447', '4', 'lisi', '216', '2023-05-18 13:01:27', 'admin', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19558', '3449', '1', 'admin', '103', '2023-05-18 13:03:58', 'admin', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19559', '9705', '8', 'wuji1', '214', '2023-05-18 15:27:27', 'wuji1', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19560', '3450', '4', 'lisi', '216', '2023-05-18 15:31:16', 'wuji1', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19561', '9706', '1', 'admin', '103', '2023-06-13 18:27:31', 'admin', '1', '0');
INSERT INTO `tb_assign_record` VALUES ('19562', '3451', '4', 'lisi', '216', '2023-06-13 18:31:57', 'admin', '1', '1');
INSERT INTO `tb_assign_record` VALUES ('19563', '9703', '1', 'admin', '103', '2023-06-13 18:41:48', 'admin', '1', '0');

-- ----------------------------
-- Table structure for tb_business
-- ----------------------------
DROP TABLE IF EXISTS `tb_business`;
CREATE TABLE `tb_business` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商机id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `channel` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '渠道',
  `activity_id` bigint DEFAULT NULL COMMENT '活动id',
  `provinces` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '省',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '区',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '性別',
  `age` int DEFAULT NULL COMMENT '年龄',
  `weixin` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '微信',
  `qq` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'qq',
  `level` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向等级',
  `subject` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向学科',
  `course_id` bigint DEFAULT NULL COMMENT '课程',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `occupation` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '职业',
  `education` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `job` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '在职情况',
  `salary` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '薪资',
  `major` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `expected_salary` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '希望薪资',
  `reasons` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学习原因',
  `plan` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '职业计划',
  `plan_time` timestamp NULL DEFAULT NULL COMMENT '计划时间',
  `other_intention` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '其他意向',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '状态(已分配1  进行中2  回收3)',
  `next_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `clue_id` bigint DEFAULT NULL,
  `transfer` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '是否转派',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '回收时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3452 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='商机';

-- ----------------------------
-- Records of tb_business
-- ----------------------------
INSERT INTO `tb_business` VALUES ('3429', '贺奇克', '13816667158', '0', '35', null, null, '0', '25', null, null, '0', '0', '48', 'zhangsan', '2022-04-19 09:17:26', null, null, null, null, null, null, '高薪', null, null, '暂无', '2', '2022-04-20 12:00:00', '2022-04-19 09:50:30', '9585', '0', null, null);
INSERT INTO `tb_business` VALUES ('3430', '秦伊', '13816667168', '0', '35', null, null, '0', null, null, null, '1', '1', null, 'zhangsan', '2022-04-19 15:17:25', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9595', '0', null, null);
INSERT INTO `tb_business` VALUES ('3431', '冯琴炎', '13816667159', '0', '35', null, null, '0', null, null, null, null, '4', null, 'zhangsan', '2022-04-19 15:17:33', null, null, null, null, null, null, null, null, null, null, '3', null, '2022-04-19 21:24:10', '9586', '0', null, '2022-04-19 18:44:17');
INSERT INTO `tb_business` VALUES ('3432', '郎蓉涵', '13816667164', '0', '35', null, null, '0', null, null, null, '0', '1', null, 'zhangsan', '2022-04-19 15:17:49', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9591', '0', null, null);
INSERT INTO `tb_business` VALUES ('3433', '于文瑛', '13816667165', '0', '35', null, null, '0', '1', null, null, '0', '0', '51', 'zhangsan', '2022-04-19 15:17:56', null, null, null, null, null, null, null, null, null, '无', '2', '2023-06-11 12:00:00', '2023-06-10 16:32:07', '9592', '0', null, null);
INSERT INTO `tb_business` VALUES ('3434', '潘宇黛', '13816667166', '0', '35', null, null, '0', null, null, null, null, '0', null, 'zhangsan', '2022-04-19 15:18:01', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9593', '0', null, null);
INSERT INTO `tb_business` VALUES ('3435', '高怡', '13816667151', '0', '35', null, null, '0', '1', null, null, '2', '0', '51', 'zhangsan', '2022-04-19 15:18:05', null, null, null, null, null, null, null, null, null, '13512345678', '7', '2022-04-19 15:27:00', '2022-04-19 15:25:30', '9578', '0', null, null);
INSERT INTO `tb_business` VALUES ('3436', '翰丽', '13816667152', '0', '35', null, null, '0', '1', null, null, '0', '0', '51', 'zhangsan', '2022-04-19 15:18:18', null, null, null, null, null, null, null, null, null, '学习意向', '7', '2022-04-20 12:00:00', '2022-04-19 15:20:07', '9579', '0', null, null);
INSERT INTO `tb_business` VALUES ('3437', '吴芸', '13816667156', '0', '35', null, null, '0', null, null, null, '0', '1', null, 'zhangsan', '2022-04-19 15:26:49', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9583', '0', null, null);
INSERT INTO `tb_business` VALUES ('3438', '安瑛毓', '13816667154', '0', '35', null, null, '0', null, null, null, '1', '1', null, 'zhangsan', '2022-04-19 15:27:10', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9581', '0', null, null);
INSERT INTO `tb_business` VALUES ('3439', '邱丽宁', '13816667153', '0', '35', null, null, '0', null, null, null, '0', '0', null, 'zhangsan', '2022-04-19 15:27:28', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9580', '0', null, null);
INSERT INTO `tb_business` VALUES ('3440', '薛纯', '13816667155', '0', '35', null, null, '0', null, null, null, '0', '1', null, 'zhangsan', '2022-04-19 15:28:49', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9582', '0', null, null);
INSERT INTO `tb_business` VALUES ('3441', '葛嫣昭', '13816667138', '0', '35', null, null, '0', null, null, null, '1', '0', null, 'zhangsan', '2022-04-19 15:29:02', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9565', '0', null, null);
INSERT INTO `tb_business` VALUES ('3442', '黄雅', '13816667143', '0', '35', null, null, '0', null, null, null, '1', '1', null, 'zhangsan', '2022-04-19 15:29:32', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9570', '0', null, null);
INSERT INTO `tb_business` VALUES ('3443', '江铭晶', '13816667139', '0', '35', null, null, '0', null, null, null, '0', '0', null, 'zhangsan', '2022-04-19 15:29:52', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9566', '0', null, null);
INSERT INTO `tb_business` VALUES ('3444', '和之晗', '13816667140', '0', '35', null, null, '0', null, null, null, '0', '0', null, 'zhangsan', '2022-04-19 15:44:54', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9567', '0', null, null);
INSERT INTO `tb_business` VALUES ('3445', '云玉', '13816667141', '0', '35', null, null, '0', null, null, null, '0', '0', null, 'zhangsan', '2022-04-19 16:01:39', null, null, null, null, null, null, null, null, null, null, '1', null, null, '9568', '0', null, null);
INSERT INTO `tb_business` VALUES ('3446', '梅雪枝', '13816667142', '0', '35', '湖北省', '武汉市', '0', '1', 'meixuezhi', '238984934', '1', '1', '23', 'zhangsan', '2022-04-19 16:01:58', '13', '6', '2', '3', '8', '5', '对前端感兴趣', '软件开发', '2023-05-25 00:00:00', '无', '7', '2023-05-19 12:00:00', '2023-05-18 15:57:45', '9569', '0', null, null);
INSERT INTO `tb_business` VALUES ('3447', '邱萍怡', '13816667125', '0', '35', null, null, '0', null, null, null, '1', '0', null, 'zhangsan', '2022-04-19 16:02:40', null, null, null, null, null, null, null, null, null, null, '1', null, '2023-05-18 13:01:26', '9552', '0', null, '2023-05-18 16:01:27');
INSERT INTO `tb_business` VALUES ('3448', '麻卿依', '13816667126', '0', '35', null, null, '0', '1', null, null, '0', '0', '51', 'zhangsan', '2022-04-19 16:06:15', null, null, null, null, null, null, null, null, null, '前端也想学习，想搞全栈', '2', '2022-04-20 12:00:00', '2022-04-19 18:11:35', '9553', '0', null, null);
INSERT INTO `tb_business` VALUES ('3449', '李龙儿', '13586943293', '0', null, '北京市', '市辖区', '0', '26', 'lilonger', '5467564545', null, '0', '50', 'admin', '2023-05-18 13:03:58', '6', '6', '2', '3', '8', '4', '对编程比较感兴趣', '做软件开发', '2023-05-25 00:00:00', '无', '7', '2023-05-20 12:00:00', '2023-05-18 15:15:50', null, '0', null, '2023-05-18 16:03:58');
INSERT INTO `tb_business` VALUES ('3450', '张覃权', '13223456789', '0', '34', '北京市', '市辖区', '0', '26', 'zhangqinquan', '2335674543', '0', '0', '50', 'wuji1', '2023-05-18 15:31:16', '6', '6', '2', '3', '4', '4', '不想做销售了, 想做技术开发', '软件开发', '2023-05-25 00:00:00', '无', '7', '2023-05-23 12:00:00', '2023-05-18 15:36:25', '9705', '0', null, null);
INSERT INTO `tb_business` VALUES ('3451', '十三先生', '13509239021', '0', '118', '北京市', '市辖区', '0', '18', 'shisan', '786433444', '0', '0', '51', 'admin', '2023-06-13 18:31:57', '3', '6', '2', '2', '8', '4', '之前工作老是出差 , 薪资还不高. ', '软件开发架构方向', '2023-07-05 00:00:00', '无', '7', '2023-07-05 12:00:00', '2023-06-13 18:53:01', '9706', '0', null, null);

-- ----------------------------
-- Table structure for tb_business_track_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_business_track_record`;
CREATE TABLE `tb_business_track_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `business_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '线索id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '跟进人',
  `key_items` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '沟通重点',
  `record` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '沟通纪要',
  `create_time` timestamp NOT NULL COMMENT '跟进时间',
  `track_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '跟进状态',
  `next_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='商机跟进记录';

-- ----------------------------
-- Records of tb_business_track_record
-- ----------------------------
INSERT INTO `tb_business_track_record` VALUES ('1', '3449', 'admin', '3', '已经沟通过了', '2023-05-18 13:07:39', '1', '2023-05-20 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('2', '3450', 'lisi', '6', '主要偏向于学习java', '2023-05-18 15:34:27', '1', '2023-05-21 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('3', '3450', 'lisi', '6', '无', '2023-05-18 15:34:43', '3', '2023-05-22 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('4', '3450', 'lisi', '6', '没问题, 准备签合同了', '2023-05-18 15:35:02', '1', '2023-05-23 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('5', '3446', 'lisi1', '3', '无', '2023-05-18 15:57:26', '1', '2023-05-19 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('6', '3433', 'lisi', '4', '沟通了学习时间', '2023-06-10 16:32:07', '1', '2023-06-11 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('7', '3451', 'lisi', '1,3,5', '已沟通, 初步计划7.5号过来', '2023-06-13 18:38:10', '1', '2023-06-30 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('8', '3451', 'lisi', '1', '已沟通, 初步计划7.5号过来', '2023-06-13 18:38:42', '1', '2023-06-25 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('9', '3451', 'lisi', '4', '未接通', '2023-06-13 18:42:37', '2', '2023-06-26 12:00:00');
INSERT INTO `tb_business_track_record` VALUES ('10', '3451', 'lisi', '1,4,2', '准备报名了', '2023-06-13 18:44:18', '1', '2023-07-05 12:00:00');

-- ----------------------------
-- Table structure for tb_clue
-- ----------------------------
DROP TABLE IF EXISTS `tb_clue`;
CREATE TABLE `tb_clue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '线索id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `channel` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '渠道',
  `activity_id` bigint DEFAULT NULL COMMENT '活动id',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '1 男 0 女',
  `age` int DEFAULT NULL COMMENT '年龄',
  `weixin` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '微信',
  `qq` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'qq',
  `level` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向等级',
  `subject` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向学科',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '状态(已分配1  进行中2  回收3  伪线索4)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `false_count` int DEFAULT '0' COMMENT '伪线索失败次数(最大数3次)',
  `next_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `transfer` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '是否转派',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '线索失效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9707 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='线索';

-- ----------------------------
-- Records of tb_clue
-- ----------------------------
INSERT INTO `tb_clue` VALUES ('9097', '高妹', '13816666670', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:23', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9098', '周元', '13816666671', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:23', 'lifeng', '1', null, '2023-05-18 11:46:39', '0', '2023-05-21 11:46:40');
INSERT INTO `tb_clue` VALUES ('9099', '张言娜', '13816666672', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:23', 'lifeng', '1', null, '2023-05-18 11:51:13', '0', '2023-05-21 11:51:14');
INSERT INTO `tb_clue` VALUES ('9100', '成悦', '13816666673', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:23', 'lifeng', '1', null, '2023-05-18 11:51:47', '0', '2023-05-21 11:51:48');
INSERT INTO `tb_clue` VALUES ('9101', '宋栋', '13816666674', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:23', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9102', '湛娴月', '13816666675', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:23', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9103', '元锦言', '13816666676', '0', '1', null, null, null, null, null, '1', '1', '2022-04-19 01:27:23', 'lifeng', '0', null, '2023-05-18 11:52:40', '1', '2023-05-21 11:52:40');
INSERT INTO `tb_clue` VALUES ('9104', '杨菲启', '13816666677', '0', '1', null, null, null, null, null, null, '1', '2022-04-19 01:27:23', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9105', '酆珊锦', '13816666678', '0', '1', null, null, null, null, null, '4', '1', '2022-04-19 01:27:23', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9106', '湛皑晶', '13816666679', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:23', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9107', '和文', '13816666680', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:23', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9108', '戚蓉', '13816666681', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:24', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9109', '柯丹娴', '13816666682', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:24', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9110', '孟洁真', '13816666683', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:24', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9111', '华叶亨', '13816666684', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:24', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9112', '田妤', '13816666685', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:24', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9113', '霍娅悦', '13816666686', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:24', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9114', '马妤全', '13816666687', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:24', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9115', '葛翔姬', '13816666688', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:25', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9116', '华文奇', '13816666689', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:25', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9117', '蔡思悦', '13816666690', '0', '1', null, null, null, null, '2', null, '1', '2022-04-19 01:27:25', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9118', '贺元轮', '13816666691', '0', '1', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:25', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9119', '滕悦', '13816666692', '0', '1', null, null, null, null, '3', '1', '3', '2022-04-19 01:27:25', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9120', '姚琛霞', '13816666693', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:25', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9121', '徐若瑞', '13816666694', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:26', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:30');
INSERT INTO `tb_clue` VALUES ('9122', '管洁怡', '13816666695', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:26', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9123', '邱鸣悦', '13816666696', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:26', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9124', '孟可朋', '13816666697', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:26', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9125', '孙苑岚', '13816666698', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:26', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9126', '金佩晗', '13816666699', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:26', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9127', '夏佩', '13816666700', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:26', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9128', '乐镇固', '13816666701', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:26', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9129', '倪亚眉', '13816666702', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:26', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9130', '李珍兰', '13816666703', '0', '1', null, null, null, null, '0', null, '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9131', '曹琴', '13816666704', '0', '1', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9132', '平伯淇', '13816666705', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:27', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9133', '鲁泽', '13816666706', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:27', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9134', '姚炎以', '13816666707', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:27', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9135', '虞姣婷', '13816666708', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:27', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9136', '庞玲亨', '13816666709', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9137', '董克露', '13816666710', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9138', '常宏洁', '13816666711', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9139', '于枝行', '13816666712', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9140', '水凡', '13816666713', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:27', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9141', '孔芝慧', '13816666714', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:28', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9142', '顾和', '13816666715', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:28', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9143', '史翰霞', '13816666716', '0', '1', null, null, null, null, null, null, '1', '2022-04-19 01:27:28', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9144', '胡茜', '13816666717', '0', '1', null, null, null, null, null, '4', '1', '2022-04-19 01:27:28', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9145', '成君姬', '13816666718', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:28', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9146', '章云舒', '13816666719', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:28', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9147', '奚钧可', '13816666720', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:28', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9148', '鲍泓雁', '13816666721', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:28', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9149', '范翔', '13816666722', '0', '1', null, null, null, null, '3', '0', '1', '2022-04-19 01:27:28', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9150', '管泓荔', '13816666723', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:28', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9151', '酆洁', '13816666724', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:29', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9152', '成慧晶', '13816666725', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:29', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9153', '齐榕宏', '13816666726', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:29', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9154', '鲍菁梦', '13816666727', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:29', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9155', '俞寒', '13816666728', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:29', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9156', '姜泰艳', '13816666729', '0', '1', null, null, null, null, null, null, '1', '2022-04-19 01:27:29', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9157', '顾青蓉', '13816666730', '0', '1', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:29', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9158', '卢素欣', '13816666731', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:29', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9159', '梁飘妤', '13816666732', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:29', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:31');
INSERT INTO `tb_clue` VALUES ('9160', '苏梦先', '13816666733', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:29', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9161', '袁琳贞', '13816666734', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:30', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9162', '贝园', '13816666735', '0', '1', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:30', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9163', '马依寒', '13816666736', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:30', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9164', '强莹寒', '13816666737', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:30', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9165', '莫瑗', '13816666738', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:30', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9166', '陶宜玉', '13816666739', '0', '1', null, null, null, null, null, '0', '1', '2022-04-19 01:27:30', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9167', '姜宇若', '13816666740', '0', '1', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:30', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9168', '霍琰', '13816666741', '0', '1', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:30', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9169', '徐瑶', '13816666742', '0', '1', null, null, null, null, '2', null, '1', '2022-04-19 01:27:31', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9170', '谢弘锦', '13816666743', '0', '1', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:31', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9171', '云源鸣', '13816666744', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:31', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9172', '薛之君', '13816666745', '0', '1', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:31', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9173', '阮聪姬', '13816666746', '0', '1', null, null, null, null, null, '1', '3', '2022-04-19 01:27:31', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9174', '姚玲璐', '13816666747', '0', '66', null, null, null, null, null, '1', '3', '2022-04-19 01:27:31', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9175', '元乐宜', '13816666748', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:31', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9176', '高萱', '13816666749', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:31', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9177', '郎媛佩', '13816666750', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:31', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9178', '酆聪莹', '13816666751', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:32', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9179', '凌灵盛', '13816666752', '0', '66', null, null, null, null, '3', '0', '1', '2022-04-19 01:27:32', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9180', '邬亮', '13816666753', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:32', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9181', '苏泽珠', '13816666754', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:32', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9182', '祝茜镇', '13816666755', '0', '66', null, null, null, null, '2', null, '1', '2022-04-19 01:27:32', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9183', '韦雅', '13816666756', '0', '66', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:32', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9184', '元萍炎', '13816666757', '0', '66', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:32', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9185', '麻弘', '13816666758', '0', '66', null, null, null, null, null, '1', '3', '2022-04-19 01:27:32', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9186', '袁雅', '13816666759', '0', '66', null, null, null, null, null, '1', '3', '2022-04-19 01:27:32', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9187', '倪沫克', '13816666760', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:32', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9188', '罗美航', '13816666761', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:32', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9189', '袁茹乐', '13816666762', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9190', '余莹和', '13816666763', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9191', '刁欢莲', '13816666764', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9192', '俞榕', '13816666765', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9193', '元鹏眉', '13816666766', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9194', '贝夕珍', '13816666767', '0', '66', null, null, null, null, null, '1', '3', '2022-04-19 01:27:33', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9195', '齐勤莹', '13816666768', '0', '66', null, null, null, null, null, null, '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9196', '昌士', '13816666769', '0', '66', null, null, null, null, null, '4', '1', '2022-04-19 01:27:33', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9197', '虞梦', '13816666770', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:33', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:32');
INSERT INTO `tb_clue` VALUES ('9198', '锺盛宏', '13816666771', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:33', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9199', '支姬琦', '13816666772', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:33', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9200', '王荔瑞', '13816666773', '0', '66', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:33', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9201', '葛宜旭', '13816666774', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9202', '伏泽策', '13816666775', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9203', '柏腾萱', '13816666776', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9204', '方眉娅', '13816666777', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9205', '雷月', '13816666778', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9206', '雷铎菁', '13816666779', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9207', '马芝欢', '13816666780', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:34', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9208', '周子', '13816666781', '0', '66', null, null, null, null, '2', null, '1', '2022-04-19 01:27:34', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9209', '骆瑗瑶', '13816666782', '0', '66', null, null, null, null, '3', '4', '1', '2022-04-19 01:27:35', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9210', '齐丽琴', '13816666783', '0', '66', null, null, null, null, null, '1', '3', '2022-04-19 01:27:35', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9211', '秦洁渊', '13816666784', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:35', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9212', '秦淳镇', '13816666785', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:35', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9213', '皮瑶', '13816666786', '0', '66', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:35', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9214', '沈咏之', '13816666787', '0', '66', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:35', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9215', '梁楠梦', '13816666788', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:35', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9216', '强娅淳', '13816666789', '0', '66', null, null, null, null, null, '0', '1', '2022-04-19 01:27:35', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9217', '禹澜', '13816666790', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:35', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9218', '林园瑶', '13816666791', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:36', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9219', '熊冠艳', '13816666792', '0', '66', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:36', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9220', '章露柏', '13816666793', '0', '66', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:36', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9221', '汤克', '13816666794', '0', '66', null, null, null, null, '0', null, '1', '2022-04-19 01:27:36', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9222', '严月', '13816666795', '0', '66', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:36', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9223', '花翔希', '13816666796', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:36', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9224', '奚伯聪', '13816666797', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:36', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9225', '蔡亚萍', '13816666798', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:36', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9226', '臧佩', '13816666799', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:36', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9227', '郑倩丽', '13816666800', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:36', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9228', '韦冠雪', '13816666801', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9229', '张勤行', '13816666802', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9230', '邬秀晓', '13816666803', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9231', '祝启', '13816666804', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9232', '苗莉', '13816666805', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9233', '安维妍', '13816666806', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:37', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9234', '舒沫', '13816666807', '0', '72', null, null, null, null, null, null, '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9235', '王玉', '13816666808', '0', '72', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:37', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9236', '倪悦', '13816666809', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:37', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9237', '昌飘枝', '13816666810', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:37', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:33');
INSERT INTO `tb_clue` VALUES ('9238', '苗依育', '13816666811', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:37', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9239', '纪荷奇', '13816666812', '0', '72', null, null, null, null, '3', '1', '3', '2022-04-19 01:27:37', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9240', '昝舒茜', '13816666813', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9241', '纪菲伦', '13816666814', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9242', '危姣舒', '13816666815', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9243', '项洁允', '13816666816', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9244', '鲍妹枝', '13816666817', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9245', '柳依爱', '13816666818', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9246', '谈君铭', '13816666819', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:38', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9247', '魏枝倩', '13816666820', '0', '72', null, null, null, null, '2', null, '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9248', '葛晗纯', '13816666821', '0', '72', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:38', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9249', '锺悦允', '13816666822', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:38', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9250', '韩伯娟', '13816666823', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:38', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9251', '酆珍', '13816666824', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:39', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9252', '殷时萍', '13816666825', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:39', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9253', '褚荷琴', '13816666826', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9254', '席盛', '13816666827', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9255', '卢雪翔', '13816666828', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9256', '梅亮颖', '13816666829', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9257', '沈晴', '13816666830', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9258', '汪风若', '13816666831', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9259', '殷琪策', '13816666832', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:39', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9260', '酆德', '13816666833', '0', '72', null, null, null, null, '0', null, '1', '2022-04-19 01:27:39', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9261', '柯函', '13816666834', '0', '72', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:40', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9262', '吴荷', '13816666835', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:40', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9263', '郑珠美', '13816666836', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:40', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9264', '管钊', '13816666837', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:40', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9265', '黄园晨', '13816666838', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:40', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9266', '元眉灵', '13816666839', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:40', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9267', '蔡行清', '13816666840', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:40', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9268', '徐策君', '13816666841', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:40', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9269', '虞云', '13816666842', '0', '72', null, null, null, null, '3', '0', '1', '2022-04-19 01:27:40', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9270', '喻茹悦', '13816666843', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:40', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9271', '方云冠', '13816666844', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:41', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9272', '俞铎', '13816666845', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:41', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9273', '夏薇楠', '13816666846', '0', '72', null, null, null, null, '2', null, '1', '2022-04-19 01:27:41', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9274', '施怡瑶', '13816666847', '0', '72', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:41', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9275', '孔依轮', '13816666848', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:41', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:34');
INSERT INTO `tb_clue` VALUES ('9276', '安莉巧', '13816666849', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:41', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9277', '夏玉毓', '13816666850', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:41', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9278', '康珍', '13816666851', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:41', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9279', '卫琰源', '13816666852', '0', '72', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:41', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9280', '茅纯元', '13816666853', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:41', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9281', '汪萍德', '13816666854', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:41', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9282', '严瑶婷', '13816666855', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:42', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9283', '纪思莎', '13816666856', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:42', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9284', '祝寒仪', '13816666857', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:42', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9285', '颜美洁', '13816666858', '0', '72', null, null, null, null, null, '1', '3', '2022-04-19 01:27:43', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9286', '彭雪钊', '13816666859', '0', '72', null, null, null, null, null, null, '1', '2022-04-19 01:27:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9287', '蓝蕊慧', '13816666860', '0', '72', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9288', '杨沫仪', '13816666861', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:43', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9289', '任兰', '13816666862', '0', '72', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:43', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9290', '苗皑', '13816666863', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:43', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9291', '胡瑶柏', '13816666864', '0', '72', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:43', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9292', '禹馨瑛', '13816666865', '0', '72', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9293', '史荷晗', '13816666866', '0', '72', null, null, null, null, null, '0', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9294', '卢沫颖', '13816666867', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9295', '韦玲羽', '13816666868', '0', '75', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9296', '童育涵', '13816666869', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9297', '傅亮珍', '13816666870', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9298', '章颖', '13816666871', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:44', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9299', '邵雪', '13816666872', '0', '75', null, null, null, null, '3', null, '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9300', '伍聪欢', '13816666873', '0', '75', null, null, null, null, null, '4', '1', '2022-04-19 01:27:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9301', '支夕', '13816666874', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:44', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9302', '安泽珍', '13816666875', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:45', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9303', '傅先文', '13816666876', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:45', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9304', '谈晗冰', '13816666877', '0', '75', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:45', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9305', '袁璐', '13816666878', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9306', '湛珍涵', '13816666879', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9307', '和宜子', '13816666880', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9308', '卢建苑', '13816666881', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9309', '胡时茜', '13816666882', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9310', '梅怡', '13816666883', '0', '75', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9311', '顾晨荷', '13816666884', '0', '75', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:46', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9312', '柏树', '13816666885', '0', '75', null, null, null, null, '0', null, '1', '2022-04-19 01:27:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9313', '万盛茜', '13816666886', '0', '75', null, null, null, null, null, '4', '1', '2022-04-19 01:27:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9314', '华静蕊', '13816666887', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:46', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:35');
INSERT INTO `tb_clue` VALUES ('9315', '万茜', '13816666888', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:46', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9316', '廉璐维', '13816666889', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:46', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9317', '夏晨', '13816666890', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:46', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9318', '岑启', '13816666891', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9319', '夏盛姣', '13816666892', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9320', '李枫', '13816666893', '0', '75', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9321', '水瑞筠', '13816666894', '0', '75', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9322', '朱萱梦', '13816666895', '0', '75', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9323', '滕宁媛', '13816666896', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9324', '娄华妍', '13816666897', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:47', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9325', '窦伯', '13816666898', '0', '75', null, null, null, null, '0', null, '1', '2022-04-19 01:27:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9326', '危雪秀', '13816666899', '0', '75', null, null, null, null, null, '4', '1', '2022-04-19 01:27:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9327', '穆沫夕', '13816666900', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:47', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9328', '康芳铎', '13816666901', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:47', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9329', '臧蓉致', '13816666902', '0', '75', null, null, null, null, '3', '1', '3', '2022-04-19 01:27:47', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9330', '刁莹', '13816666903', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:47', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9331', '吕月育', '13816666904', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9332', '胡倩', '13816666905', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9333', '袁泓月', '13816666906', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9334', '昝炎育', '13816666907', '0', '75', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9335', '祝茜', '13816666908', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9336', '蔡钊', '13816666909', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9337', '彭可', '13816666910', '0', '75', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:48', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9338', '曹时栋', '13816666911', '0', '75', null, null, null, null, '2', null, '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9339', '马嘉策', '13816666912', '0', '75', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9340', '臧欣枝', '13816666913', '0', '75', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:48', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9341', '邬欢时', '13816666914', '0', '75', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:49', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9342', '马弘之', '13816666915', '0', '75', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:49', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9343', '皮玉梦', '13816666916', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:49', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9344', '吕薇莹', '13816666917', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9345', '严玉欣', '13816666918', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9346', '潘雪珠', '13816666919', '0', '75', null, null, null, null, null, '0', '1', '2022-04-19 01:27:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9347', '柳瑛琳', '13816666920', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9348', '喻克', '13816666921', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9349', '滕菁', '13816666922', '0', '75', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9350', '强瑶', '13816666923', '0', '75', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:49', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9351', '常妤勤', '13816666924', '0', '75', null, null, null, null, '0', null, '1', '2022-04-19 01:27:50', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9352', '鲁惠蕊', '13816666925', '0', '75', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:50', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9353', '江蓉萍', '13816666926', '0', '75', null, null, null, null, null, '1', '3', '2022-04-19 01:27:50', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9354', '娄芝', '13816666927', '0', '78', null, null, null, null, null, '1', '3', '2022-04-19 01:27:50', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:36');
INSERT INTO `tb_clue` VALUES ('9355', '周琪丽', '13816666928', '0', '78', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:50', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9356', '童育腾', '13816666929', '0', '78', null, null, null, null, null, '1', '3', '2022-04-19 01:27:50', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9357', '颜悦琛', '13816666930', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:50', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9358', '禹娅羽', '13816666931', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:50', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9359', '林莹', '13816666932', '0', '78', null, null, null, null, '3', '0', '1', '2022-04-19 01:27:50', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9360', '冯珍', '13816666933', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:50', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9361', '霍毓蓓', '13816666934', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9362', '成霄妍', '13816666935', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9363', '韩佳慧', '13816666936', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:51', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9364', '喻娟', '13816666937', '0', '78', null, null, null, null, '0', null, '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9365', '张若凝', '13816666938', '0', '78', null, null, null, null, null, '4', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9366', '路琛', '13816666939', '0', '78', null, null, null, null, null, '1', '3', '2022-04-19 01:27:51', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9367', '邱竹', '13816666940', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:51', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9368', '庞依铎', '13816666941', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:51', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9369', '李洁园', '13816666942', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:51', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9370', '沈策莹', '13816666943', '0', '78', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9371', '金子', '13816666944', '0', '78', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9372', '盛茜静', '13816666945', '0', '78', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9373', '昝艺', '13816666946', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:51', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9374', '高冰佳', '13816666947', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:52', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9375', '梁琳', '13816666948', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:52', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9376', '虞怡', '13816666949', '0', '78', null, null, null, null, null, '1', '3', '2022-04-19 01:27:52', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9377', '危树鸣', '13816666950', '0', '78', null, null, null, null, '2', null, '1', '2022-04-19 01:27:52', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9378', '唐霞眉', '13816666951', '0', '78', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:52', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9379', '贺希佩', '13816666952', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:52', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9380', '雷琴晨', '13816666953', '0', '78', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:52', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9381', '费娴宏', '13816666954', '0', '78', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:52', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9382', '卜朗娟', '13816666955', '0', '78', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:52', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9383', '和建伯', '13816666956', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:52', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9384', '乐香华', '13816666957', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:52', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9385', '朱颖怡', '13816666958', '0', '78', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:53', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9386', '和月露', '13816666959', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:53', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9387', '管伦', '13816666960', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:53', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9388', '齐韵', '13816666961', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:53', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9389', '纪锦枫', '13816666962', '0', '78', null, null, null, null, '3', '1', '3', '2022-04-19 01:27:53', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9390', '项真', '13816666963', '0', '78', null, null, null, null, null, null, '1', '2022-04-19 01:27:53', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9391', '傅凡雄', '13816666964', '0', '78', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:53', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9392', '凤婕和', '13816666965', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:53', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:37');
INSERT INTO `tb_clue` VALUES ('9393', '杨爱琳', '13816666966', '0', '78', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:53', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9394', '李芸', '13816666967', '0', '78', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:54', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9395', '章黛惠', '13816666968', '0', '78', null, null, null, null, null, '1', '3', '2022-04-19 01:27:54', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9396', '危渊娴', '13816666969', '0', '78', null, null, null, null, null, '0', '1', '2022-04-19 01:27:54', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9397', '康莹嫣', '13816666970', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:54', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9398', '凌淇', '13816666971', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:54', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9399', '史爽瑶', '13816666972', '0', '78', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:54', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9400', '钱亨', '13816666973', '0', '78', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:54', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9401', '戚美', '13816666974', '0', '110', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:54', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9402', '蔡时树', '13816666975', '0', '110', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:54', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9403', '姜梁一', '13816666976', '0', '110', null, null, null, null, null, null, '1', '2022-04-19 01:27:55', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9404', '穆飘凡', '13816666977', '0', '110', null, null, null, null, null, '4', '1', '2022-04-19 01:27:55', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9405', '郭雪', '13816666978', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:55', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9406', '朱璧', '13816666979', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:55', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9407', '湛楠芳', '13816666980', '0', '110', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:55', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9408', '傅雪雪', '13816666981', '0', '110', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:55', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9409', '狄眉', '13816666982', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:55', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9410', '娄玉翰', '13816666983', '0', '110', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:55', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9411', '酆清昭', '13816666984', '0', '110', null, null, null, null, '0', '0', '4', '2022-04-19 01:27:55', 'lifeng', '1', null, '2022-04-20 00:42:43', '0', null);
INSERT INTO `tb_clue` VALUES ('9412', '祁朋仪', '13816666985', '0', '110', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:55', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9413', '徐若雄', '13816666986', '0', '110', null, null, null, null, null, '0', '1', '2022-04-19 01:27:55', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9414', '舒淇晓', '13816666987', '0', '110', null, null, null, null, null, '0', '1', '2022-04-19 01:27:56', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9415', '胡弘固', '13816666988', '0', '110', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:56', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9416', '元育子', '13816666989', '0', '110', null, null, null, null, null, null, '1', '2022-04-19 01:27:56', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9417', '赵钧倩', '13816666990', '0', '110', null, null, null, null, '2', '4', '1', '2022-04-19 01:27:56', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9418', '尹菁', '13816666991', '0', '110', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:56', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9419', '黄滢', '13816666992', '0', '110', null, null, null, null, '3', '1', '3', '2022-04-19 01:27:56', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9420', '郭雨', '13816666993', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:56', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9421', '许琳吉', '13816666994', '0', '110', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:56', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9422', '韩苑', '13816666995', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9423', '季蕊榕', '13816666996', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9424', '姚吉', '13816666997', '0', '110', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9425', '戚伊时', '13816666998', '0', '110', null, null, null, null, null, '0', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9426', '梅伊静', '13816666999', '0', '110', null, null, null, null, null, '0', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9427', '韦欣环', '13816667000', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9428', '雷佩镇', '13816667001', '0', '110', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:57', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9429', '支珍青', '13816667002', '0', '110', null, null, null, null, '2', null, '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9430', '锺树', '13816667003', '0', '110', null, null, null, null, '0', '4', '1', '2022-04-19 01:27:57', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9431', '谈慧涵', '13816667004', '0', '110', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:57', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9432', '费鸣', '13816667005', '0', '110', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:58', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:38');
INSERT INTO `tb_clue` VALUES ('9433', '谢冰', '13816667006', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:58', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9434', '董芳', '13816667007', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:58', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9435', '水策洁', '13816667008', '0', '110', null, null, null, null, null, '0', '1', '2022-04-19 01:27:58', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9436', '沈怡', '13816667009', '0', '110', null, null, null, null, null, '0', '4', '2022-04-19 01:27:58', 'lifeng', '1', null, '2022-04-20 00:43:29', '0', null);
INSERT INTO `tb_clue` VALUES ('9437', '麻娅宇', '13816667010', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:58', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9438', '阮莉', '13816667011', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:58', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9439', '章风', '13816667012', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:58', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9440', '费伯茹', '13816667013', '0', '110', null, null, null, null, '0', '0', '1', '2022-04-19 01:27:59', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9441', '蔡莹梁', '13816667014', '0', '110', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:59', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9442', '韦珊', '13816667015', '0', '110', null, null, null, null, '0', null, '1', '2022-04-19 01:27:59', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9443', '褚瑶柏', '13816667016', '0', '110', null, null, null, null, null, '4', '1', '2022-04-19 01:27:59', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9444', '方瑗钊', '13816667017', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:59', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9445', '乐黛全', '13816667018', '0', '110', null, null, null, null, '0', '1', '3', '2022-04-19 01:27:59', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9446', '尤芳君', '13816667019', '0', '110', null, null, null, null, null, '1', '3', '2022-04-19 01:27:59', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9447', '胡瑶先', '13816667020', '0', '110', null, null, null, null, '2', '1', '3', '2022-04-19 01:27:59', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9448', '毕荷霭', '13816667021', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:27:59', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9449', '俞晴媛', '13816667022', '0', '110', null, null, null, null, '3', '0', '1', '2022-04-19 01:28:00', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9450', '颜憧娅', '13816667023', '0', '110', null, null, null, null, null, '0', '1', '2022-04-19 01:28:00', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9451', '麻娅嫣', '13816667024', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:00', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9452', '莫怡', '13816667025', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:00', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9453', '邱榕', '13816667026', '0', '110', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:00', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9454', '陶佩致', '13816667027', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:00', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9455', '薛雪', '13816667028', '0', '34', null, null, null, null, null, null, '1', '2022-04-19 01:28:00', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9456', '蓝夕怡', '13816667029', '0', '34', null, null, null, null, null, '4', '1', '2022-04-19 01:28:01', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9457', '童洁美', '13816667030', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:01', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9458', '窦滢月', '13816667031', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:01', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9459', '娄欣', '13816667032', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:01', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9460', '袁翰', '13816667033', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:01', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:39');
INSERT INTO `tb_clue` VALUES ('9461', '元启娟', '13816667034', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:01', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9462', '窦和飘', '13816667035', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:01', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9463', '乐克梦', '13816667036', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:01', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9464', '成佳钧', '13816667037', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:01', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9465', '郎爽', '13816667038', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:01', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9466', '方洁淳', '13816667039', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9467', '毛馨克', '13816667040', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:02', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9468', '冯盛清', '13816667041', '0', '34', null, null, null, null, '2', null, '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9469', '昝琦漩', '13816667042', '0', '34', null, null, null, null, '2', '4', '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9470', '黄源鹏', '13816667043', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:02', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9471', '江莲咏', '13816667044', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:02', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9472', '水伊卿', '13816667045', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:02', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9473', '茅晨', '13816667046', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:02', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9474', '薛和秋', '13816667047', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9475', '卜倩镇', '13816667048', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9476', '秦秀', '13816667049', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9477', '屈妤巧', '13816667050', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:02', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9478', '方秋', '13816667051', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:03', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9479', '林巧涵', '13816667052', '0', '34', null, null, null, null, '3', '0', '1', '2022-04-19 01:28:03', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9480', '骆玲妹', '13816667053', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:03', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9481', '项英艳', '13816667054', '0', '34', null, null, null, null, '2', null, '1', '2022-04-19 01:28:03', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9482', '童伦亨', '13816667055', '0', '34', null, null, null, null, '2', '4', '1', '2022-04-19 01:28:03', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9483', '平朋雁', '13816667056', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:03', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9484', '俞艺士', '13816667057', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:03', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9485', '屈函惠', '13816667058', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:03', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9486', '齐希真', '13816667059', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:03', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9487', '尹琳', '13816667060', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:03', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9488', '谢瑗', '13816667061', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9489', '姚融', '13816667062', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9490', '湛泓琛', '13816667063', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9491', '岑沫泓', '13816667064', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9492', '平弘贞', '13816667065', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9493', '张钧', '13816667066', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:04', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9494', '任榕育', '13816667067', '0', '34', null, null, null, null, null, null, '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9495', '邵函琳', '13816667068', '0', '34', null, null, null, null, null, '4', '1', '2022-04-19 01:28:04', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9496', '谈霭羽', '13816667069', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:04', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9497', '郑园依', '13816667070', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:05', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:40');
INSERT INTO `tb_clue` VALUES ('9498', '项轮', '13816667071', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:05', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9499', '郎奇琦', '13816667072', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:05', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9500', '卢奇漩', '13816667073', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9501', '朱家皑', '13816667074', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9502', '葛航', '13816667075', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9503', '王航茹', '13816667076', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9504', '穆茜', '13816667077', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9505', '夏钊凡', '13816667078', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9506', '康芳琰', '13816667079', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:05', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9507', '常悦克', '13816667080', '0', '34', null, null, null, null, '2', null, '1', '2022-04-19 01:28:05', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9508', '柏朗', '13816667081', '0', '34', null, null, null, null, '2', '4', '1', '2022-04-19 01:28:06', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9509', '安思', '13816667082', '0', '34', null, null, null, null, '3', '1', '3', '2022-04-19 01:28:06', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9510', '郑舒婷', '13816667083', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:06', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9511', '湛秋', '13816667084', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:06', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9512', '平盛宜', '13816667085', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:06', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9513', '蔡筠美', '13816667086', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:06', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9514', '苏函钧', '13816667087', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:06', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9515', '昝树', '13816667088', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:06', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9516', '和凤琴', '13816667089', '0', '34', null, null, null, null, null, '0', '1', '2022-04-19 01:28:06', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9517', '胡兰钊', '13816667090', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:06', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9518', '花琦', '13816667091', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:07', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9519', '莫淇', '13816667092', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:07', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9520', '狄德允', '13816667093', '0', '34', null, null, null, null, '0', null, '1', '2022-04-19 01:28:07', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9521', '梅依伊', '13816667094', '0', '34', null, null, null, null, '0', '4', '1', '2022-04-19 01:28:07', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9522', '庞瑶洁', '13816667095', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:07', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9523', '戴纨荣', '13816667096', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:07', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9524', '苏允泰', '13816667097', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:07', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9525', '奚淇', '13816667098', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:07', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9526', '邬婵枝', '13816667099', '0', '34', null, null, null, null, null, '0', '4', '2022-04-19 01:28:07', 'lifeng', '1', null, '2022-04-20 00:42:16', '0', null);
INSERT INTO `tb_clue` VALUES ('9527', '江雪珍', '13816667100', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:07', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9528', '贝晶露', '13816667101', '0', '34', null, null, null, null, '2', '0', '4', '2022-04-19 01:28:07', 'lifeng', '1', null, '2022-04-20 00:43:37', '0', null);
INSERT INTO `tb_clue` VALUES ('9529', '万家以', '13816667102', '0', '34', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:07', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9530', '田先鸣', '13816667103', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:08', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9531', '康莎', '13816667104', '0', '34', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:08', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9532', '花玲', '13816667105', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:08', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:41');
INSERT INTO `tb_clue` VALUES ('9533', '管宇航', '13816667106', '0', '34', null, null, null, null, null, null, '1', '2022-04-19 01:28:08', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9534', '沈琦', '13816667107', '0', '34', null, null, null, null, null, '4', '1', '2022-04-19 01:28:08', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9535', '殷士', '13816667108', '0', '34', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:08', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:42');
INSERT INTO `tb_clue` VALUES ('9536', '茅亨伯', '13816667109', '0', '34', null, null, null, null, null, '1', '3', '2022-04-19 01:28:08', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:42');
INSERT INTO `tb_clue` VALUES ('9537', '水行滢', '13816667110', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:08', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:42');
INSERT INTO `tb_clue` VALUES ('9538', '卢茗', '13816667111', '0', '34', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:08', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:42');
INSERT INTO `tb_clue` VALUES ('9539', '邬奇树', '13816667112', '0', '34', null, null, null, null, '3', '0', '1', '2022-04-19 01:28:08', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9540', '费勤岚', '13816667113', '0', '34', null, null, null, null, null, '0', '4', '2022-04-19 01:28:08', 'lifeng', '1', null, '2022-04-20 00:41:38', '0', null);
INSERT INTO `tb_clue` VALUES ('9541', '施宏斌', '13816667114', '0', '34', null, null, null, null, '2', '0', '3', '2022-04-19 01:28:09', 'lifeng', '1', null, '2023-05-02 06:00:00', '0', '2022-04-23 00:37:44');
INSERT INTO `tb_clue` VALUES ('9542', '季美静', '13816667115', '0', '35', null, null, null, null, '2', '0', '3', '2022-04-19 01:28:09', 'lifeng', '0', null, '2023-05-02 06:00:00', '0', '2022-04-22 01:42:52');
INSERT INTO `tb_clue` VALUES ('9543', '柳旭怡', '13816667116', '0', '35', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:09', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9544', '郑依芳', '13816667117', '0', '35', null, null, null, null, '0', '0', '1', '2022-04-19 01:28:09', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9545', '柏怡秀', '13816667118', '0', '35', null, null, null, null, null, '1', '3', '2022-04-19 01:28:09', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:42');
INSERT INTO `tb_clue` VALUES ('9546', '蔡晶树', '13816667119', '0', '35', null, null, null, null, null, null, '1', '2022-04-19 01:28:09', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9547', '卜渊飘', '13816667120', '0', '35', null, null, null, null, '2', '4', '1', '2022-04-19 01:28:09', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9548', '梅凡妹', '13816667121', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:09', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:42:44');
INSERT INTO `tb_clue` VALUES ('9549', '雷晓辰', '13816667122', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:09', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:43');
INSERT INTO `tb_clue` VALUES ('9550', '华雅', '13816667123', '0', '35', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:09', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:43');
INSERT INTO `tb_clue` VALUES ('9551', '万莹', '13816667124', '0', '35', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:10', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:43');
INSERT INTO `tb_clue` VALUES ('9552', '邱萍怡', '13816667125', '0', '35', '0', null, null, null, '1', '0', '6', '2022-04-19 01:28:10', 'lifeng', '0', null, '2022-04-19 16:02:39', '0', null);
INSERT INTO `tb_clue` VALUES ('9553', '麻卿依', '13816667126', '0', '35', '0', null, null, null, '0', '0', '6', '2022-04-19 01:28:10', 'lifeng', '0', null, '2022-04-19 16:06:14', '0', null);
INSERT INTO `tb_clue` VALUES ('9554', '成策秀', '13816667127', '0', '35', '0', null, null, null, '1', '1', '2', '2022-04-19 01:28:10', 'lifeng', '0', '2022-04-21 12:00:00', '2022-04-19 18:10:04', '0', null);
INSERT INTO `tb_clue` VALUES ('9555', '明文策', '13816667128', '0', '35', null, null, null, null, null, '0', '1', '2022-04-19 01:28:10', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9556', '谢憧', '13816667129', '0', '35', null, null, null, null, null, '0', '1', '2022-04-19 01:28:10', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9557', '支珠琬', '13816667130', '0', '35', null, null, null, null, '2', '0', '1', '2022-04-19 01:28:10', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9558', '郑莹雨', '13816667131', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:10', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:43');
INSERT INTO `tb_clue` VALUES ('9559', '曹维', '13816667132', '0', '35', null, null, null, null, '2', null, '1', '2022-04-19 01:28:10', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9560', '李琛嘉', '13816667133', '0', '35', null, null, null, null, '0', '4', '1', '2022-04-19 01:28:10', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9561', '安依晴', '13816667134', '0', '35', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:10', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:43');
INSERT INTO `tb_clue` VALUES ('9562', '元馨华', '13816667135', '0', '35', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:11', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:43');
INSERT INTO `tb_clue` VALUES ('9563', '于辰佩', '13816667136', '0', '35', null, null, null, null, null, '1', '3', '2022-04-19 01:28:11', 'lifeng', '1', null, '2023-05-02 06:00:00', '1', '2022-04-23 00:05:49');
INSERT INTO `tb_clue` VALUES ('9564', '喻先晴', '13816667137', '0', '35', null, null, null, null, null, '1', '3', '2022-04-19 01:28:11', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:44');
INSERT INTO `tb_clue` VALUES ('9565', '葛嫣昭', '13816667138', '0', '35', '0', null, null, null, '1', '0', '6', '2022-04-19 01:28:11', 'lifeng', '0', null, '2022-04-19 15:29:01', '0', null);
INSERT INTO `tb_clue` VALUES ('9566', '江铭晶', '13816667139', '0', '35', '0', null, null, null, '0', '0', '6', '2022-04-19 01:28:11', 'lifeng', '0', null, '2022-04-19 15:29:52', '0', null);
INSERT INTO `tb_clue` VALUES ('9567', '和之晗', '13816667140', '0', '35', '0', null, null, null, '0', '0', '6', '2022-04-19 01:28:11', 'lifeng', '0', null, '2022-04-19 15:44:53', '0', null);
INSERT INTO `tb_clue` VALUES ('9568', '云玉', '13816667141', '0', '35', '0', null, null, null, '0', '0', '6', '2022-04-19 01:28:11', 'lifeng', '0', null, '2022-04-19 16:01:38', '0', null);
INSERT INTO `tb_clue` VALUES ('9569', '梅雪枝', '13816667142', '0', '35', '0', null, null, null, '1', '1', '6', '2022-04-19 01:28:11', 'lifeng', '0', null, '2022-04-19 16:01:57', '0', null);
INSERT INTO `tb_clue` VALUES ('9570', '黄雅', '13816667143', '0', '35', '0', null, null, null, '1', '1', '6', '2022-04-19 01:28:11', 'lifeng', '0', null, '2022-04-19 15:29:32', '0', null);
INSERT INTO `tb_clue` VALUES ('9571', '酆泰冠', '13816667144', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:11', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:44');
INSERT INTO `tb_clue` VALUES ('9572', '祝青', '13816667145', '0', '35', null, null, null, null, '2', null, '1', '2022-04-19 01:28:11', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9573', '罗姣露', '13816667146', '0', '35', null, null, null, null, '2', '4', '1', '2022-04-19 01:28:11', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9574', '谢瑾', '13816667147', '0', '35', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:11', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:44');
INSERT INTO `tb_clue` VALUES ('9575', '颜霭竹', '13816667148', '0', '35', null, null, null, null, null, '1', '3', '2022-04-19 01:28:12', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:44');
INSERT INTO `tb_clue` VALUES ('9576', '马娴', '13816667149', '0', '35', null, null, null, null, null, '1', '3', '2022-04-19 01:28:12', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:44');
INSERT INTO `tb_clue` VALUES ('9577', '郎芳', '13816667150', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:12', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:45');
INSERT INTO `tb_clue` VALUES ('9578', '高怡', '13816667151', '0', '35', null, null, null, null, '2', '0', '6', '2022-04-19 01:28:12', 'lifeng', '0', null, '2022-04-19 15:18:05', '0', null);
INSERT INTO `tb_clue` VALUES ('9579', '翰丽', '13816667152', '0', '35', '0', null, null, null, '0', '0', '6', '2022-04-19 01:28:12', 'lifeng', '0', null, '2022-04-19 15:18:18', '0', null);
INSERT INTO `tb_clue` VALUES ('9580', '邱丽宁', '13816667153', '0', '35', null, null, null, null, '0', '0', '6', '2022-04-19 01:28:12', 'lifeng', '0', null, '2022-04-19 15:27:27', '0', null);
INSERT INTO `tb_clue` VALUES ('9581', '安瑛毓', '13816667154', '0', '35', '0', null, null, null, '1', '1', '6', '2022-04-19 01:28:12', 'lifeng', '0', null, '2022-04-19 15:27:09', '0', null);
INSERT INTO `tb_clue` VALUES ('9582', '薛纯', '13816667155', '0', '35', '0', null, null, null, '0', '1', '6', '2022-04-19 01:28:12', 'lifeng', '0', null, '2022-04-19 15:28:48', '0', null);
INSERT INTO `tb_clue` VALUES ('9583', '吴芸', '13816667156', '0', '35', '0', null, null, null, '0', '1', '6', '2022-04-19 01:28:12', 'lifeng', '0', null, '2022-04-19 15:26:48', '0', null);
INSERT INTO `tb_clue` VALUES ('9584', '冯澜', '13816667157', '0', '35', null, null, null, null, null, '1', '3', '2022-04-19 01:28:13', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:45');
INSERT INTO `tb_clue` VALUES ('9585', '贺奇克', '13816667158', '0', '35', '0', '25', null, null, '0', '0', '6', '2022-04-19 01:28:13', 'lifeng', '0', null, '2022-04-19 09:17:25', '0', '2022-04-22 01:28:40');
INSERT INTO `tb_clue` VALUES ('9586', '冯琴炎', '13816667159', '0', '35', null, null, null, null, null, '4', '6', '2022-04-19 01:28:13', 'lifeng', '0', null, '2022-04-19 15:17:32', '0', '2022-04-22 01:28:47');
INSERT INTO `tb_clue` VALUES ('9587', '明婷', '13816667160', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:13', 'lifeng', '1', null, '2023-05-02 06:00:00', '1', '2022-04-23 00:06:30');
INSERT INTO `tb_clue` VALUES ('9588', '路园纨', '13816667161', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:13', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:42:30');
INSERT INTO `tb_clue` VALUES ('9589', '郝翔岚', '13816667162', '0', '35', null, null, null, null, '2', '1', '3', '2022-04-19 01:28:13', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:39:45');
INSERT INTO `tb_clue` VALUES ('9590', '沈盛希', '13816667163', '0', '35', null, null, null, null, '0', '1', '3', '2022-04-19 01:28:13', 'lifeng', '0', null, '2023-05-02 06:00:00', '1', '2022-04-22 01:42:36');
INSERT INTO `tb_clue` VALUES ('9591', '郎蓉涵', '13816667164', '0', '35', '0', null, null, null, '0', '1', '6', '2022-04-19 01:28:13', 'lifeng', '0', null, '2022-04-19 15:17:49', '0', null);
INSERT INTO `tb_clue` VALUES ('9592', '于文瑛', '13816667165', '0', '35', null, null, null, null, '0', '0', '6', '2022-04-19 01:28:13', 'lifeng', '0', null, '2022-04-19 15:17:56', '0', null);
INSERT INTO `tb_clue` VALUES ('9593', '潘宇黛', '13816667166', '0', '35', null, null, null, null, null, '0', '6', '2022-04-19 01:28:13', 'lifeng', '0', null, '2022-04-19 15:18:00', '0', null);
INSERT INTO `tb_clue` VALUES ('9594', '卜锦泓', '13816667167', '0', '35', null, null, null, null, null, '0', '3', '2022-04-19 01:28:14', 'lifeng', '1', null, '2023-05-02 06:00:00', '0', '2022-04-22 23:45:46');
INSERT INTO `tb_clue` VALUES ('9595', '秦伊', '13816667168', '0', '35', '0', null, null, null, '1', '1', '6', '2022-04-19 01:28:14', 'lifeng', '0', null, '2022-04-19 15:17:24', '0', null);
INSERT INTO `tb_clue` VALUES ('9596', '卜梁瑾', '13816667275', '1', '45', null, null, null, null, '0', '3', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9597', '雷梦丹', '13816667276', '1', '45', null, null, null, null, null, '4', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9598', '葛凡琴', '13816667277', '1', '45', null, null, null, null, null, '2', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9599', '汤馨文', '13816667278', '1', '45', null, null, null, null, null, null, '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9600', '明飘钊', '13816667279', '1', '45', null, null, null, null, null, '6', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9601', '卫源婕', '13816667280', '1', '45', null, null, null, null, '2', '7', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9602', '汤镇', '13816667281', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9603', '潘洁冰', '13816667282', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9604', '柯巧', '13816667283', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9605', '祁琴冠', '13816667284', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9606', '云娟建', '13816667285', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9607', '孟秀', '13816667286', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:43', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9608', '陶媛', '13816667287', '1', '45', null, null, null, null, null, '1', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9609', '雷梦舒', '13816667288', '1', '45', null, null, null, null, '0', '3', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9610', '卜克芸', '13816667289', '1', '45', null, null, null, null, null, '4', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9611', '成鸣莹', '13816667290', '1', '45', null, null, null, null, '2', '2', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9612', '蔡芳', '13816667291', '1', '45', null, null, null, null, '2', null, '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9613', '安欣荔', '13816667292', '1', '45', null, null, null, null, '3', '6', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9614', '严育珊', '13816667293', '1', '45', null, null, null, null, null, '7', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9615', '颜妍宜', '13816667294', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:44', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9616', '尤蕊荣', '13816667295', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9617', '鲍若', '13816667296', '1', '45', null, null, null, null, '2', '0', '4', '2022-04-20 00:17:45', 'lifeng', '1', null, '2022-04-20 00:43:20', '0', null);
INSERT INTO `tb_clue` VALUES ('9618', '任英岚', '13816667297', '1', '45', null, null, null, null, '0', '0', '4', '2022-04-20 00:17:45', 'lifeng', '1', null, '2022-04-20 00:43:12', '0', null);
INSERT INTO `tb_clue` VALUES ('9619', '齐宜琴', '13816667298', '1', '45', null, null, null, null, null, '0', '4', '2022-04-20 00:17:45', 'lifeng', '1', null, '2022-04-20 00:42:02', '0', null);
INSERT INTO `tb_clue` VALUES ('9620', '臧仪', '13816667299', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9621', '俞娜', '13816667300', '1', '45', null, null, null, null, '2', '1', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9622', '邬瑛茗', '13816667301', '1', '45', null, null, null, null, '2', '3', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9623', '夏琳华', '13816667302', '1', '45', null, null, null, null, '2', '4', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9624', '庞一', '13816667303', '1', '45', null, null, null, null, '0', '2', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9625', '孙秀云', '13816667304', '1', '45', null, null, null, null, '0', null, '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9626', '李荔滢', '13816667305', '1', '45', null, null, null, null, '0', '6', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9627', '黄悦', '13816667306', '1', '45', null, null, null, null, null, '7', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9628', '安芳朋', '13816667307', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9629', '伍可', '13816667308', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9630', '庞婷弘', '13816667309', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9631', '邱文', '13816667310', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9632', '吕淇琴', '13816667311', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:45', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9633', '汤丽', '13816667312', '1', '45', null, null, null, null, '2', '0', '4', '2022-04-20 00:17:46', 'lifeng', '1', null, '2022-04-20 00:41:22', '0', null);
INSERT INTO `tb_clue` VALUES ('9634', '季云', '13816667313', '1', '45', null, null, null, null, '0', '1', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9635', '廉美真', '13816667314', '1', '45', null, null, null, null, '0', '3', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9636', '邱兰雪', '13816667315', '1', '45', null, null, null, null, '0', '4', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9637', '尤韵姣', '13816667316', '1', '45', null, null, null, null, null, '2', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9638', '云灵依', '13816667317', '1', '45', null, null, null, null, null, null, '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9639', '昌行瑶', '13816667318', '1', '45', null, null, null, null, '0', '6', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9640', '滕毓佩', '13816667319', '1', '45', null, null, null, null, null, '7', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9641', '盛荷浩', '13816667320', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9642', '姜卿怡', '13816667321', '1', '45', null, null, null, null, '2', '0', '4', '2022-04-20 00:17:46', 'lifeng', '1', null, '2022-04-20 00:42:33', '0', null);
INSERT INTO `tb_clue` VALUES ('9643', '凤翔', '13816667322', '1', '45', null, null, null, null, '3', '0', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9644', '喻凤妍', '13816667323', '1', '45', null, null, null, null, null, '0', '4', '2022-04-20 00:17:46', 'lifeng', '1', null, '2022-04-20 00:40:56', '0', null);
INSERT INTO `tb_clue` VALUES ('9645', '湛若', '13816667324', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9646', '禹琴冠', '13816667325', '1', '45', null, null, null, null, '2', '0', '4', '2022-04-20 00:17:46', 'lifeng', '1', null, '2022-04-20 00:41:14', '0', null);
INSERT INTO `tb_clue` VALUES ('9647', '卢园巧', '13816667326', '1', '45', null, null, null, null, '2', '1', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9648', '卫颖梦', '13816667327', '1', '45', null, null, null, null, '0', '3', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9649', '戚文', '13816667328', '1', '45', null, null, null, null, null, '4', '1', '2022-04-20 00:17:46', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9650', '危慧晗', '13816667329', '1', '45', null, null, null, null, null, '2', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9651', '纪淇', '13816667330', '1', '45', null, null, null, null, '2', null, '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9652', '于蓉瑶', '13816667331', '1', '45', null, null, null, null, '2', '6', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9653', '贺鹏秋', '13816667332', '1', '45', null, null, null, null, '2', '7', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9654', '徐宏', '13816667333', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9655', '皮秋', '13816667334', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9656', '任娟美', '13816667335', '1', '45', null, null, null, null, '0', '0', '4', '2022-04-20 00:17:47', 'lifeng', '1', null, '2022-04-20 00:40:06', '0', null);
INSERT INTO `tb_clue` VALUES ('9657', '罗镇', '13816667336', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9658', '苗韵锦', '13816667337', '1', '45', null, null, null, null, null, '0', '4', '2022-04-20 00:17:47', 'lifeng', '1', null, '2022-04-20 00:41:30', '0', null);
INSERT INTO `tb_clue` VALUES ('9659', '江丽娅', '13816667338', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9660', '伏薇娅', '13816667339', '1', '45', null, null, null, null, null, '1', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9661', '尹菲钧', '13816667340', '1', '45', null, null, null, null, '2', '3', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9662', '王莉辰', '13816667341', '1', '45', null, null, null, null, '2', '4', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9663', '米丽依', '13816667342', '1', '45', null, null, null, null, '2', '2', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9664', '汤纯嘉', '13816667343', '1', '45', null, null, null, null, '0', null, '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9665', '蓝元', '13816667344', '1', '45', null, null, null, null, '0', '6', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9666', '马希钧', '13816667345', '1', '45', null, null, null, null, '0', '7', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9667', '骆馨楠', '13816667346', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:47', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9668', '万玉时', '13816667347', '1', '45', null, null, null, null, null, '0', '4', '2022-04-20 00:17:47', 'lifeng', '1', null, '2022-04-20 00:40:15', '0', null);
INSERT INTO `tb_clue` VALUES ('9669', '水丽吉', '13816667348', '1', '45', null, null, null, null, '0', '0', '4', '2022-04-20 00:17:48', 'lifeng', '1', null, '2022-04-20 00:42:50', '0', null);
INSERT INTO `tb_clue` VALUES ('9670', '苗英怡', '13816667349', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9671', '倪寒泽', '13816667350', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9672', '酆夕伦', '13816667351', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9673', '酆凡', '13816667352', '1', '45', null, null, null, null, '3', '1', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9674', '林晨朗', '13816667353', '1', '45', null, null, null, null, null, '3', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9675', '乐芝', '13816667354', '1', '45', null, null, null, null, '2', '4', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9676', '管彤', '13816667355', '1', '45', null, null, null, null, '2', '2', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9677', '祁倩', '13816667356', '1', '45', null, null, null, null, '2', null, '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9678', '戚茜珍', '13816667357', '1', '45', null, null, null, null, '0', '6', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9679', '魏惠若', '13816667358', '1', '45', null, null, null, null, null, '7', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9680', '娄婵茹', '13816667359', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9681', '席滢', '13816667360', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9682', '尤竹', '13816667361', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9683', '秦勤浩', '13816667362', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9684', '王宇榕', '13816667363', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9685', '姜丽灵', '13816667364', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:48', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9686', '花子佳', '13816667365', '1', '45', null, null, null, null, '0', '1', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9687', '柳雁瑛', '13816667366', '1', '45', null, null, null, null, null, '3', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, '2023-05-17 17:38:46', '0', '2023-05-20 17:38:47');
INSERT INTO `tb_clue` VALUES ('9688', '孟鹏允', '13816667367', '1', '45', null, null, null, null, null, '4', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9689', '梁霭清', '13816667368', '1', '45', null, null, null, null, null, '2', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9690', '云娅', '13816667369', '1', '45', null, null, null, null, null, null, '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9691', '邬瑞慧', '13816667370', '1', '45', null, null, null, null, '2', '6', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9692', '邵建瑾', '13816667371', '1', '45', null, null, null, null, '2', '7', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9693', '郎旭奕', '13816667372', '1', '45', null, null, null, null, '2', '0', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9694', '霍叶清', '13816667373', '1', '45', null, null, null, null, '0', '0', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9695', '穆昭青', '13816667374', '1', '45', null, null, null, null, '0', '0', '4', '2022-04-20 00:17:49', 'lifeng', '1', null, '2022-04-20 00:40:37', '0', null);
INSERT INTO `tb_clue` VALUES ('9696', '郝镇', '13816667375', '1', '45', null, null, null, null, '0', '0', '4', '2022-04-20 00:17:49', 'lifeng', '1', null, '2022-04-20 00:40:45', '0', null);
INSERT INTO `tb_clue` VALUES ('9697', '倪娟悦', '13816667376', '1', '45', null, null, null, null, null, '0', '4', '2022-04-20 00:17:49', 'lifeng', '1', null, '2022-04-20 00:42:08', '0', null);
INSERT INTO `tb_clue` VALUES ('9698', '华柏悦', '13816667377', '1', '45', null, null, null, null, null, '0', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9699', '时源艺', '13816667378', '1', '45', null, null, null, null, '0', '1', '1', '2022-04-20 00:17:49', 'lifeng', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9700', '张无忌', '15809239012', '0', '34', '0', '25', 'zhangwuji', '378278347', '0', '0', '2', '2023-05-17 15:55:14', 'admin', '0', '2023-05-20 12:00:00', '2023-05-17 15:56:37', '0', '2023-05-20 15:55:14');
INSERT INTO `tb_clue` VALUES ('9701', '张翠山', '15623456879', '0', '34', '0', '32', 'zhangcuishan', '243545454', '1', '0', '2', '2023-05-17 17:19:38', 'admin', '0', '2023-06-20 12:00:00', '2023-06-13 18:31:03', '0', '2023-05-20 17:19:38');
INSERT INTO `tb_clue` VALUES ('9702', '张双', '18912345467', '0', '34', '0', null, null, null, '2', '0', '1', '2023-05-18 11:35:35', 'admin', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9703', '李武进', '18912375467', '0', '34', '0', null, null, null, '0', '1', '1', '2023-05-18 11:35:58', 'admin', '0', null, '2023-06-13 18:41:48', '0', '2023-06-16 18:41:48');
INSERT INTO `tb_clue` VALUES ('9704', '吴井路', '13912375467', '0', '34', '0', null, null, null, '0', '0', '1', '2023-05-18 11:35:58', 'admin', '0', null, null, '0', null);
INSERT INTO `tb_clue` VALUES ('9705', '张覃权', '13223456789', '0', '34', '0', '26', 'zhangqinquan', '2335674543', '0', '0', '6', '2023-05-18 15:27:27', 'wuji1', '0', null, '2023-05-18 15:31:15', '0', '2023-05-21 15:27:27');
INSERT INTO `tb_clue` VALUES ('9706', '十三先生', '13509239021', '0', '118', '0', '18', 'shisan', '786433444', '0', '0', '6', '2023-06-13 18:27:31', 'admin', '0', null, '2023-06-13 18:31:57', '0', '2023-06-16 18:27:31');

-- ----------------------------
-- Table structure for tb_clue_track_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_clue_track_record`;
CREATE TABLE `tb_clue_track_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `clue_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '线索id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '跟进人',
  `subject` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向学科',
  `record` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '跟进记录',
  `level` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向等级',
  `create_time` timestamp NOT NULL COMMENT '跟进时间',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '0 正常跟进记录 1 伪线索',
  `false_reason` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '原因',
  `next_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='线索跟进记录';

-- ----------------------------
-- Records of tb_clue_track_record
-- ----------------------------
INSERT INTO `tb_clue_track_record` VALUES ('1', '9700', 'admin', '0', '意向java学科, 零基础学员, 已经给了基础班的资料, 先尝试学习, 看看是否感兴趣 . ', '0', '2023-05-17 15:56:38', '0', null, '2023-05-20 12:00:00');
INSERT INTO `tb_clue_track_record` VALUES ('2', '9705', 'wuji1', '0', '了解了各个学科之间的区别, 以及发展方向,  偏向于java学科.', '2', '2023-05-18 15:30:28', '0', null, '2023-05-20 12:00:00');
INSERT INTO `tb_clue_track_record` VALUES ('3', '9705', 'wuji1', '0', '毕业答辩完毕之后, 就进行学习', '0', '2023-05-18 15:31:01', '0', null, '2023-05-22 12:00:00');
INSERT INTO `tb_clue_track_record` VALUES ('4', '9706', 'admin', '0', '与学员进行了沟通,了解了java和前端学科,意向学科为java', '2', '2023-06-13 18:29:46', '0', null, '2023-06-20 12:00:00');
INSERT INTO `tb_clue_track_record` VALUES ('5', '9706', 'admin', '0', '学员对比了一下,还是对java感兴趣, 近期准备学习', '0', '2023-06-13 18:30:23', '0', null, '2023-06-23 12:00:00');
INSERT INTO `tb_clue_track_record` VALUES ('6', '9701', 'admin', '0', '打算学习,正在考虑中,想学java', '1', '2023-06-13 18:31:04', '0', null, '2023-06-20 12:00:00');

-- ----------------------------
-- Table structure for tb_contract
-- ----------------------------
DROP TABLE IF EXISTS `tb_contract`;
CREATE TABLE `tb_contract` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '合同id',
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `contract_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '客户姓名',
  `subject` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '意向学科',
  `activity_id` bigint DEFAULT NULL COMMENT '活动id',
  `activity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '活动名称',
  `course_id` bigint DEFAULT NULL COMMENT '课程id',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '课程名称',
  `channel` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '状态(待审核1，已通过2，已驳回3 全部完成4)',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `dept_id` bigint DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `file_name` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文件名称',
  `contract_order` float DEFAULT NULL COMMENT '订单价格',
  `discount_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '折扣类型',
  `course_price` float DEFAULT NULL COMMENT '课程价格',
  `process_instance_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `business_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='合同';

-- ----------------------------
-- Records of tb_contract
-- ----------------------------
INSERT INTO `tb_contract` VALUES ('17386308256699', '13586943293', 'HTB1283928', '李龙儿', '0', null, null, '50', null, '0', '4', 'admin', '103', '2023-05-18 15:15:50', '/huike-crm/2023/05/18/c34b22069a22409fb728c31dc318c8ec.pdf', '10', '无', '10', null, '3449');
INSERT INTO `tb_contract` VALUES ('18621842956600', '13223456789', 'HTB28392839', '张覃权', '0', '34', null, '50', null, '0', '4', 'lisi', '216', '2023-05-18 15:36:26', '/huike-crm/2023/05/18/574db96b902740fd9b25030c486b0beb.pdf', '10', '代金券大于原课程50%,代金券不可用', '10', null, '3450');
INSERT INTO `tb_contract` VALUES ('19901214146600', '13816667142', 'HTB2389382', '梅雪枝', '1', '35', null, '23', null, '0', '4', 'lisi1', '216', '2023-05-18 15:57:45', '/huike-crm/2023/05/18/ee48b0490fb64bb0a7511f82ac1bef35.pdf', '0.99', '课程折扣', '33', null, '3446');
INSERT INTO `tb_contract` VALUES ('32265978862500', '13509239021', '09128232', '十三先生', '0', '118', null, '51', null, '0', '4', 'lisi', '216', '2023-06-13 18:53:02', '/huike-crm/2023/06/13/d7a028fa36d04410b62308026026fcd1.pdf', '4320', '代金券', '5000', null, '3451');
INSERT INTO `tb_contract` VALUES ('34068497183900', '18309123453', '992039292', '陈皮皮', '0', '118', null, '48', null, '0', '4', 'admin', '103', '2023-06-13 19:23:04', '/huike-crm/2023/06/13/72b87efb27744512a166dba182b93fca.pdf', '9319', '代金券', '9999', null, null);
INSERT INTO `tb_contract` VALUES ('69596443920499', '15121212121', 'HTBH00001', '张益达', '0', '110', null, '50', null, '0', '4', 'lifeng', '214', '2022-04-19 10:30:46', '/huike-crm/2022/04/19/50aa791da4ee471ca43b45d370cdd768.pdf', '8.5', '课程折扣', '10', null, null);
INSERT INTO `tb_contract` VALUES ('86959128252300', '13816667152', 'HTBH1234', '翰丽', '0', '35', null, '51', null, '0', '4', 'lisi', '216', '2022-04-19 15:20:08', '/huike-crm/2022/04/19/3304f6c3aed64cc4914a0eb67aadf7e1.pdf', '150', '课程折扣', '5000', null, '3436');
INSERT INTO `tb_contract` VALUES ('87122843020000', '13512345678', 'HTBH122', '涨大盘', '0', null, null, '51', null, null, '4', 'lisi', '216', '2022-04-19 15:22:52', '/huike-crm/2022/04/19/a6d7bf65c3b34309ae28ed37321a1eed.pdf', '5000', '无', '5000', null, null);
INSERT INTO `tb_contract` VALUES ('87184667306500', '13212345665', 'HTBH121', '张大鹏', '1', null, null, '47', null, '0', '4', 'lisi', '216', '2022-04-19 15:23:53', '/huike-crm/2022/04/19/4a97e70fe85e4b0fa887195efa84b82f.pdf', '1888', '无', '1888', null, null);
INSERT INTO `tb_contract` VALUES ('87282214157700', '13816667151', 'HTBH199', '高怡', '0', '35', null, '51', null, '0', '4', 'lisi', '216', '2022-04-19 15:25:31', '/huike-crm/2022/04/19/55619d086d4b4135917631ba8b3f5095.pdf', '150', '课程折扣', '5000', null, '3435');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `code` char(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '课程编号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `subject` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学科',
  `price` int DEFAULT NULL COMMENT '价格',
  `applicable_person` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `info` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '课程描述信息',
  `create_time` datetime DEFAULT NULL,
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 1 是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='课程管理';

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES ('15', 'c1yf5xyo', '这是UI设计的课程啊', '9', '99999', '2', 'UI设计学科', '2021-05-19 17:56:38', '0');
INSERT INTO `tb_course` VALUES ('16', '2tsayypg', '产品惊了的课程', '8', '3333', '2', '产品从无到有', '2021-05-19 17:58:50', '0');
INSERT INTO `tb_course` VALUES ('17', 'ulfcqgtz', '大数据', '3', '2220', '2', '大数据正在走进你', '2021-05-19 18:01:56', '0');
INSERT INTO `tb_course` VALUES ('18', 'l3v9o7hp', 'Python', '4', '4399', '1', '编程语言的希望', '2021-05-19 18:02:11', '0');
INSERT INTO `tb_course` VALUES ('19', 'gczn6949', '测试', '6', '2333', '2', '从需求入手', '2021-05-19 18:02:24', '0');
INSERT INTO `tb_course` VALUES ('20', '2dwlh4wa', '新媒体', '7', '1299', '1', '新媒体运营', '2021-05-19 18:02:42', '0');
INSERT INTO `tb_course` VALUES ('21', 'behkx8cj', '测试学科', '6', '1399', '2', '从黑盒到白盒', '2021-05-19 18:02:56', '0');
INSERT INTO `tb_course` VALUES ('23', '86n74nj8', '前端中级', '1', '33', '1', '中级前端必学课', '2021-05-19 18:03:20', '1');
INSERT INTO `tb_course` VALUES ('25', '4kjnb3n3', '主管课程1', '0', '3333', '1', '11212111111222222222', '2021-05-20 00:42:06', '1');
INSERT INTO `tb_course` VALUES ('28', 'y8c6n6zy', 'Java进阶课程', '0', '8000', '1', '进阶高级开发你就差一步', '2021-05-20 19:12:12', '0');
INSERT INTO `tb_course` VALUES ('30', '9qd138kq', '初级Java', '0', '10000', '1', '初级Java从小白开始', '2021-06-02 18:19:58', '0');
INSERT INTO `tb_course` VALUES ('31', '99vhgujw', 'Java基础班', '0', '10001', '2', '基础班', '2021-06-02 18:22:21', '0');
INSERT INTO `tb_course` VALUES ('32', '1bxepowu', 'Java从小白到大神', '0', '10005', '1', '从小白到大神的进阶之路', '2021-06-02 18:24:45', '0');
INSERT INTO `tb_course` VALUES ('37', 'sd2e9xow', 'UI设计课程新课程', '9', '99999', '1', 'UI设计课程新课程', '2021-06-03 17:29:24', '0');
INSERT INTO `tb_course` VALUES ('38', 'vnezu9st', '人工智能6月', '2', '3999', '2', '人工智能6月', '2021-06-03 17:38:42', '0');
INSERT INTO `tb_course` VALUES ('39', '3vssua42', 'UI课程一', '9', '99999', '1', '文强文强文强为请问请问', '2021-06-03 17:57:35', '0');
INSERT INTO `tb_course` VALUES ('40', 'pddu2qcz', '新媒体测试', '7', '1888', '1', '新媒体测试新媒体测试', '2021-07-15 23:05:50', '0');
INSERT INTO `tb_course` VALUES ('44', 'vk25iaol', '中级测试', '6', '5555', '2', '中级测试课程', '2021-11-05 22:20:22', '1');
INSERT INTO `tb_course` VALUES ('45', 'h9cga9c3', '高级测试', '6', '88888', '2', '高级测试课程', '2021-11-06 01:05:50', '1');
INSERT INTO `tb_course` VALUES ('46', '9h9oqstg', 'UI设计快人一步', '9', '88888', '1', '小白快速上手完成独立完成任务', '2021-11-08 22:28:21', '0');
INSERT INTO `tb_course` VALUES ('47', '96u9u5mv', '高级前端课程', '1', '1888', '2', '高级前端课程', '2021-11-10 13:56:44', '0');
INSERT INTO `tb_course` VALUES ('48', 'p7m47cko', 'Java高级课程', '0', '9999', '2', 'Java高级课程', '2021-11-15 14:58:37', '0');
INSERT INTO `tb_course` VALUES ('50', 'b8w71sfy', 'JAVASE', '0', '10', '1', '适用于0基础人群的java基础课程', '2021-11-23 17:20:41', '0');
INSERT INTO `tb_course` VALUES ('51', '9gozk4jz', 'JAVAEE', '0', '5000', '2', 'javaWEB开发', '2021-11-23 17:32:51', '0');
INSERT INTO `tb_course` VALUES ('52', 'jncbmjym', 'ChatGPT应用', '2', '1099', '1', 'ChatGPT应用课程', '2023-05-17 12:20:35', '0');
INSERT INTO `tb_course` VALUES ('53', '2l1ib3d4', 'Web开发-2023', '0', '8800', '1', 'Web开发2023年最新版本淘汰过时技术', '2023-06-13 15:47:41', '0');

-- ----------------------------
-- Table structure for tb_rule_pool
-- ----------------------------
DROP TABLE IF EXISTS `tb_rule_pool`;
CREATE TABLE `tb_rule_pool` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '线程池规则',
  `limit_time` int DEFAULT NULL COMMENT '回收时限',
  `limit_time_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '回收时限字典',
  `warn_time` int DEFAULT NULL COMMENT '警告时间',
  `warn_time_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警告时间字典单位类型',
  `repeat_get_time` int DEFAULT NULL COMMENT '重复捞取时间',
  `repeat_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '重复捞取时间字典',
  `max_nunmber` int DEFAULT NULL COMMENT '最大保有量',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '0 线索 1 商机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='线索池规则';

-- ----------------------------
-- Records of tb_rule_pool
-- ----------------------------
INSERT INTO `tb_rule_pool` VALUES ('1', '3', '1', '1', '0', '0', '1', '30', '0');
INSERT INTO `tb_rule_pool` VALUES ('2', '3', '0', '1', '0', '1', '1', '30', '1');
