/*
Navicat MySQL Data Transfer

Source Server         : BM
Source Server Version : 50642
Source Host           : 106.12.209.189:3306
Source Database       : RMS

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-02-14 08:48:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `code` varchar(64) NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `pid` bigint(19) DEFAULT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '总经办', '', '01', 'define-depart', null, '0', '2014-02-19 01:00:00');
INSERT INTO `organization` VALUES ('3', '技术部', '', '02', 'define-depart', null, '1', '2015-10-01 13:10:42');
INSERT INTO `organization` VALUES ('5', '产品部', '', '03', 'define-depart', null, '2', '2015-12-06 12:15:30');
INSERT INTO `organization` VALUES ('6', '测试组', 'www.baidu.com', '04', 'define-group', '3', '0', '2015-12-06 13:12:18');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `pid` bigint(19) DEFAULT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `resourcetype` tinyint(2) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '系统管理', '', null, '系统管理', 'icon-xitongguanli', null, '3', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('11', '资源管理', '/resource/manager', null, '资源管理', 'icon-ziyuanguanli1', '223', '3', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('12', '角色管理', '/role/manager', null, '角色管理', 'icon-jiaoseguanli', '223', '2', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('13', '用户信息管理', '/user/manager', null, '用户管理', 'icon-untitled85', '223', '1', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('14', '部门资源', '/organization/manager', null, '部门管理', 'icon-bumen1', '223', '4', '0', '0', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('111', '列表', '/resource/treeGrid', 'resource:list', '资源列表', 'define-list', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('112', '添加', '/resource/add', 'resource:add', '资源添加', 'define-add', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('113', '编辑', '/resource/edit', 'resource:edit', '资源编辑', 'define-edit', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('114', '删除', '/resource/delete', 'resource:delete', '资源删除', 'define-del', '11', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('121', '列表', '/role/dataGrid', 'role:list', '角色列表', 'define-list', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('122', '添加', '/role/add', 'role:add', '角色添加', 'define-add', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('123', '编辑', '/role/edit', 'role:edit', '角色编辑', 'define-edit', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('124', '删除', '/role/delete', 'role:delete', '角色删除', 'define-del', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('125', '授权', '/role/grant', 'role:grant', '角色授权', 'define-true', '12', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('131', '列表', '/user/dataGrid', 'user:list', '用户列表', 'define-list', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('132', '添加', '/user/add', 'user:add', '用户添加', 'define-add', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('133', '编辑', '/user/edit', 'user:edit', '用户编辑', 'define-edit', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('134', '删除', '/user/delete', 'user:delete', '用户删除', 'define-del', '13', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('141', '列表', '/organization/treeGrid', 'organization:list', '用户列表', 'define-list', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('142', '添加', '/organization/add', 'organization:add', '部门添加', 'define-add', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('143', '编辑', '/organization/edit', 'organization:edit', '部门编辑', 'define-edit', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('144', '删除', '/organization/delete', 'organization:delete', '部门删除', 'define-del', '14', '0', '0', '1', '2014-02-19 01:00:00');
INSERT INTO `resource` VALUES ('221', '日志管理', '/log/manager', null, null, 'icon-rizhiguanli', '1', '1', '0', '0', '2015-12-01 11:44:20');
INSERT INTO `resource` VALUES ('222', '后台首页', '/main', '', null, 'icon-houtai', null, '0', '0', '0', '2019-01-11 10:16:17');
INSERT INTO `resource` VALUES ('223', '管理员管理', '', null, null, 'icon-guanliyuan', null, '1', '0', '0', '2019-01-11 11:06:20');
INSERT INTO `resource` VALUES ('224', '字典管理', '/log/manager', null, null, 'icon-rizhiguanli1', '1', '0', '0', '0', '2019-01-23 09:43:19');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '0', '超级管理员', '0');
INSERT INTO `role` VALUES ('2', '技术部经理', '0', '技术部经理', '1');
INSERT INTO `role` VALUES ('8', '测试账户', '0', '测试账户', '0');
INSERT INTO `role` VALUES ('10', '部门管理员', '0', '管理相关部门', '0');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) NOT NULL,
  `resource_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8 COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('824', '2', '1');
INSERT INTO `role_resource` VALUES ('825', '2', '12');
INSERT INTO `role_resource` VALUES ('826', '2', '121');
INSERT INTO `role_resource` VALUES ('827', '2', '122');
INSERT INTO `role_resource` VALUES ('828', '2', '123');
INSERT INTO `role_resource` VALUES ('829', '2', '124');
INSERT INTO `role_resource` VALUES ('830', '2', '125');
INSERT INTO `role_resource` VALUES ('831', '2', '13');
INSERT INTO `role_resource` VALUES ('832', '2', '131');
INSERT INTO `role_resource` VALUES ('833', '2', '132');
INSERT INTO `role_resource` VALUES ('834', '2', '133');
INSERT INTO `role_resource` VALUES ('835', '2', '134');
INSERT INTO `role_resource` VALUES ('836', '2', '14');
INSERT INTO `role_resource` VALUES ('837', '2', '221');
INSERT INTO `role_resource` VALUES ('881', '10', '222');
INSERT INTO `role_resource` VALUES ('882', '10', '223');
INSERT INTO `role_resource` VALUES ('883', '10', '13');
INSERT INTO `role_resource` VALUES ('884', '10', '131');
INSERT INTO `role_resource` VALUES ('885', '10', '1');
INSERT INTO `role_resource` VALUES ('886', '10', '221');
INSERT INTO `role_resource` VALUES ('949', '1', '222');
INSERT INTO `role_resource` VALUES ('950', '1', '223');
INSERT INTO `role_resource` VALUES ('951', '1', '13');
INSERT INTO `role_resource` VALUES ('952', '1', '131');
INSERT INTO `role_resource` VALUES ('953', '1', '132');
INSERT INTO `role_resource` VALUES ('954', '1', '133');
INSERT INTO `role_resource` VALUES ('955', '1', '134');
INSERT INTO `role_resource` VALUES ('956', '1', '12');
INSERT INTO `role_resource` VALUES ('957', '1', '121');
INSERT INTO `role_resource` VALUES ('958', '1', '122');
INSERT INTO `role_resource` VALUES ('959', '1', '123');
INSERT INTO `role_resource` VALUES ('960', '1', '124');
INSERT INTO `role_resource` VALUES ('961', '1', '125');
INSERT INTO `role_resource` VALUES ('962', '1', '11');
INSERT INTO `role_resource` VALUES ('963', '1', '111');
INSERT INTO `role_resource` VALUES ('964', '1', '112');
INSERT INTO `role_resource` VALUES ('965', '1', '113');
INSERT INTO `role_resource` VALUES ('966', '1', '114');
INSERT INTO `role_resource` VALUES ('967', '1', '14');
INSERT INTO `role_resource` VALUES ('968', '1', '141');
INSERT INTO `role_resource` VALUES ('969', '1', '142');
INSERT INTO `role_resource` VALUES ('970', '1', '143');
INSERT INTO `role_resource` VALUES ('971', '1', '144');
INSERT INTO `role_resource` VALUES ('972', '1', '1');
INSERT INTO `role_resource` VALUES ('973', '1', '224');
INSERT INTO `role_resource` VALUES ('974', '1', '221');
INSERT INTO `role_resource` VALUES ('1001', '8', '222');
INSERT INTO `role_resource` VALUES ('1002', '8', '223');
INSERT INTO `role_resource` VALUES ('1003', '8', '13');
INSERT INTO `role_resource` VALUES ('1004', '8', '131');
INSERT INTO `role_resource` VALUES ('1005', '8', '12');
INSERT INTO `role_resource` VALUES ('1006', '8', '121');
INSERT INTO `role_resource` VALUES ('1007', '8', '11');
INSERT INTO `role_resource` VALUES ('1008', '8', '111');
INSERT INTO `role_resource` VALUES ('1009', '8', '14');
INSERT INTO `role_resource` VALUES ('1010', '8', '141');
INSERT INTO `role_resource` VALUES ('1011', '8', '1');
INSERT INTO `role_resource` VALUES ('1012', '8', '224');
INSERT INTO `role_resource` VALUES ('1013', '8', '221');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `age` tinyint(2) DEFAULT '0',
  `usertype` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `organization_id` varchar(100) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('14', 'feng', 'yongfeng.L', 'ada1be43ad606a0131b74c44b88c2dd2', '1', '25', '1', '0', '6', '2018-12-29 17:40:18', '18707173376');
INSERT INTO `user` VALUES ('15', 'test', '测试账户', 'b0ce72ed0b24728785094ef90b6d00c3', '0', '25', '1', '0', '6', '2019-01-21 15:21:19', '18707173376');
INSERT INTO `user` VALUES ('16', 'admin', 'yongfeng.L', 'ac77580d5690fbd251e6ca594c9846a6', '0', '21', '1', '0', '1', '2019-01-23 16:41:36', '18296633676');
INSERT INTO `user` VALUES ('18', 'test2', '测试账户2', '123a7f8e59ceb15019279d1deba9ac06', '1', '20', '1', '0', '3', '2019-01-24 10:50:04', '12306');
INSERT INTO `user` VALUES ('19', 'test3', '测试账户3', '326f03ff1f335b2583041c6239c25777', '0', '14', '1', '0', '5', '2019-01-24 10:51:00', '12345609');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) NOT NULL,
  `role_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('163', '15', '8');
INSERT INTO `user_role` VALUES ('164', '18', '8');
INSERT INTO `user_role` VALUES ('170', '16', '1');
INSERT INTO `user_role` VALUES ('171', '16', '2');
INSERT INTO `user_role` VALUES ('172', '16', '8');
INSERT INTO `user_role` VALUES ('173', '16', '10');
INSERT INTO `user_role` VALUES ('174', '19', '8');
INSERT INTO `user_role` VALUES ('175', '14', '2');
