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
-- Table structure for table `rule_promotion_activitysku_201806`
--

DROP TABLE IF EXISTS `rule_promotion_activitysku_201806`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_promotion_activitysku_201806` (
  `id` bigint(20) unsigned NOT NULL COMMENT '主键',
  `promotion_activity_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '活动id',
  `vender_id` varchar(32) NOT NULL DEFAULT '' COMMENT '商家id',
  `flight_code` char(8) NOT NULL DEFAULT '' COMMENT '航班号',
  `class_code` char(2) NOT NULL DEFAULT '' COMMENT '舱位码',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '票面价',
  `promotion_sku_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'rule_promotion_sku表id',
  `promotion_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '促销id,与实物购物车的促销id',
  `reduce_price` decimal(6,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `promotion_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '促销价',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态,0->注销，1->在用,2->停用',
  `promotion_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'act_user_type用户类型:0->所有用户立减,1->新用户首单立减, 2-> 返京豆',
  `beans_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '京豆数量',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `version_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除  1:删除;0:不删除',
  `dep_airportCode` varchar(3) NOT NULL DEFAULT '' COMMENT '出发机场三字码',
  `arr_airportCode` varchar(3) NOT NULL DEFAULT '' COMMENT '到达机场三字码',
  PRIMARY KEY (`id`),
  KEY `idx_flightcode_classcode` (`flight_code`,`class_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规则促销SKU关联表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 13:56:37
