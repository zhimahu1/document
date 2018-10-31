/*
Navicat MySQL Data Transfer

Source Server         : airplane-base
Source Server Version : 50528
Source Host           : 192.168.146.42:3358
Source Database       : flight_base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-27 09:21:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airline
-- ----------------------------
DROP TABLE IF EXISTS `airline`;
CREATE TABLE `airline` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `aircorp_code` varchar(2) NOT NULL DEFAULT '' COMMENT '航空公司二字码',
  `dep_city_code` varchar(3) NOT NULL DEFAULT '' COMMENT '出发城市三字码',
  `arr_city_code` varchar(3) NOT NULL DEFAULT '' COMMENT '到达城市三字码',
  `distance` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '里程',
  `effect_date_begin` date DEFAULT NULL COMMENT '有效期起',
  `effect_date_end` date DEFAULT NULL COMMENT '有效期止',
  `cache_expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '默认缓存失效时间',
  `fd_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'FD航线类型  0-普通航线  1-热门航线',
  `nfd_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'NFD航线类型  0-普通航线  1-热门航线1(1~N)',
  `is_sell_baby_ticket` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否售婴儿票 0：否，1：是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态  1:启用/上线;0:停用/下线',
  `version` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14152 DEFAULT CHARSET=utf8 COMMENT='航线表';
