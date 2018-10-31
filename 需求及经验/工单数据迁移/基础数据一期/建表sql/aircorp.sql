/*
Navicat MySQL Data Transfer

Source Server         : airplane-base
Source Server Version : 50528
Source Host           : 192.168.146.42:3358
Source Database       : flight_base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-27 09:12:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aircorp
-- ----------------------------
DROP TABLE IF EXISTS `aircorp`;
CREATE TABLE `aircorp` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(2) NOT NULL DEFAULT '' COMMENT '航司二字码',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '航司全名',
  `simple_name` varchar(32) NOT NULL DEFAULT '' COMMENT '简称',
  `spell` varchar(64) NOT NULL DEFAULT '' COMMENT '全拼',
  `type` tinyint(2) unsigned zerofill NOT NULL DEFAULT '02' COMMENT '1 ：廉价航空  2 : 非廉价航空',
  `url` varchar(128) NOT NULL DEFAULT '' COMMENT '航司网址',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '航司电话',
  `channel` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '1：b2b  2：bsp 3：全关',
  `settlement_code` varchar(6) NOT NULL DEFAULT '' COMMENT '航司结算码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1:启用/上线;0:停用/下线',
  `version` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='航司表';
