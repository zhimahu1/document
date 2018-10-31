-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 192.168.146.42    Database: jipiaoapp_gw
-- ------------------------------------------------------
-- Server version	5.5.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rule_coupon_activity`
--

DROP TABLE IF EXISTS `rule_coupon_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_coupon_activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券类型 0-普通,1-新用户券,2-商家券',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0-下架,1-上架,9-删除',
  `encry_key` varchar(48) NOT NULL COMMENT '领券加密key',
  `begin_time` datetime NOT NULL COMMENT '活动开始日期',
  `end_time` datetime NOT NULL COMMENT '活动结束时间',
  `batch_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '批次-对应优惠券的数量',
  `batch_id` bigint(20) unsigned NOT NULL COMMENT '批次号',
  `discount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠金额 （单位分存储）',
  `quota` int(10) unsigned NOT NULL DEFAULT '1000' COMMENT '限额（单位分存储）',
  `add_days` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '相对(领取时间)有效天数',
  `vender_id` varchar(32) NOT NULL DEFAULT '' COMMENT '商家id（仅商家券使用)',
  `del_reason` varchar(128) NOT NULL DEFAULT '' COMMENT '删券原因',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色id,优惠券服务提供',
  `batch_key` varchar(32) NOT NULL DEFAULT '' COMMENT '批次key',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modifier_name` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='优惠券配置表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 13:56:41
