/*
Navicat MySQL Data Transfer

Source Server         : airplane-base
Source Server Version : 50528
Source Host           : 192.168.146.42:3358
Source Database       : flight_base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-07-08 18:57:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cabin_config
-- ----------------------------
DROP TABLE IF EXISTS `cabin_config`;
CREATE TABLE `cabin_config` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `aircorp_code` varchar(2) NOT NULL DEFAULT '' COMMENT '航司二字码',
  `aircorp_name` varchar(32) NOT NULL DEFAULT '' COMMENT '航司中文名',
  `adult_cabin_code` varchar(128) NOT NULL DEFAULT '' COMMENT '成人仓位代码',
  `child_cabin_code` varchar(128) NOT NULL DEFAULT '' COMMENT '儿童仓位代码',
  `baby_cabin_code` varchar(128) NOT NULL DEFAULT '' COMMENT '婴儿仓位代码',
  `army_cabin_code` varchar(128) NOT NULL DEFAULT '' COMMENT '军警残仓位代码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) NOT NULL,
  `version` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_aircorpcode` (`aircorp_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='航司舱位码配置表';
