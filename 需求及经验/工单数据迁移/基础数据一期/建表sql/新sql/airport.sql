/*
Navicat MySQL Data Transfer

Source Server         : airplane-base
Source Server Version : 50528
Source Host           : 192.168.146.42:3358
Source Database       : flight_base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-07-09 10:17:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(3) NOT NULL DEFAULT '' COMMENT '机场三字码',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '机场中文名',
  `simple_name` varchar(32) NOT NULL DEFAULT '' COMMENT '机场简称',
  `spell` varchar(32) NOT NULL DEFAULT '' COMMENT '全拼',
  `simple_spell` varchar(32) NOT NULL DEFAULT '' COMMENT '短拼',
  `city_code` varchar(3) NOT NULL DEFAULT '' COMMENT '城市三字码',
  `city_name` varchar(32) NOT NULL DEFAULT '' COMMENT '城市中文名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1:启用/上线;0:停用/下线',
  `version` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='机场表';
