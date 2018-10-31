/*
Navicat MySQL Data Transfer

Source Server         : airplane-base
Source Server Version : 50528
Source Host           : 192.168.146.42:3358
Source Database       : flight_base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-27 10:36:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cabin
-- ----------------------------
DROP TABLE IF EXISTS `cabin`;
CREATE TABLE `cabin` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `aircorp_code` varchar(2) NOT NULL DEFAULT '''''' COMMENT '航司二字码',
  `adult_code` varchar(2) NOT NULL DEFAULT '''''' COMMENT '舱位代码',
  `child_code` varchar(2) DEFAULT NULL COMMENT '儿童舱位代码',
  `baby_code` varchar(2) DEFAULT NULL COMMENT '婴儿舱位代码',
  `army_code` varchar(2) DEFAULT NULL COMMENT '军警残舱位代码',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '舱位类型  1-经济舱  2-商务舱  3-头等舱  4-高端经济舱......',
  `level` varchar(2) NOT NULL DEFAULT '''''' COMMENT '舱位等级  Y-经济舱   C-商务舱   F-头等舱',
  `is_refund_quickly` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否急速退票，0：否，1：是',
  `is_special_seat` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0-普通FD舱   1-特殊NFD舱',
  `is_need_child_build_fuel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '儿童票是否需要基建燃油，0：不需要，1需要',
  `text` varchar(300) DEFAULT NULL COMMENT '文案',
  `effect_date_begin` date DEFAULT NULL COMMENT '销售开始时间',
  `effect_date_end` date DEFAULT NULL COMMENT '销售结束时间',
  `takeoff_date_begin` date DEFAULT NULL COMMENT '起飞开始时间',
  `takeoff_date_end` date DEFAULT NULL COMMENT '起飞结束时间',
  `is_upgradeprice_more` tinyint(1) unsigned DEFAULT NULL COMMENT '是否要求升舱费大于改期费 0：否，1：是',
  `is_only_upgradeprice` tinyint(1) unsigned DEFAULT NULL COMMENT '升舱费大于改期费时，是否只收取升舱费  0：，否 1：是',
  `discount` float(10,2) unsigned DEFAULT NULL COMMENT '折扣 例：0.85；1.50',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1:启用/上线;0:停用/下线',
  `version` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='仓位表';
