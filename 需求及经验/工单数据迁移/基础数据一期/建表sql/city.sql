/*
Navicat MySQL Data Transfer

Source Server         : airplane-base
Source Server Version : 50528
Source Host           : 192.168.146.42:3358
Source Database       : flight_base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-27 09:27:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL DEFAULT '' COMMENT '城市三字码',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '城市中文名',
  `spell` varchar(32) NOT NULL DEFAULT '' COMMENT '全拼',
  `simple_spell` varchar(32) NOT NULL DEFAULT '' COMMENT '短拼',
  `keyword` varchar(256) NOT NULL DEFAULT '' COMMENT '高搜词',
  `province_id` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '省Id',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为热门城市,1：是；0：不是',
  `priority` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '优先级',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1:启用/上线;0:停用/下线',
  `version` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='城市表';
