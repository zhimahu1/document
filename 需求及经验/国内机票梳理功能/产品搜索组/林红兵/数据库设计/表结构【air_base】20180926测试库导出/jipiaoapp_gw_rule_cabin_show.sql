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
-- Table structure for table `rule_cabin_show`
--

DROP TABLE IF EXISTS `rule_cabin_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_cabin_show` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vender_id` varchar(32) NOT NULL DEFAULT '' COMMENT '商家Id',
  `air_corp_code` varchar(2) NOT NULL DEFAULT '',
  `dep_airport_code` varchar(3) NOT NULL DEFAULT '' COMMENT '出发城市三字码',
  `arr_airport_code` varchar(3) NOT NULL DEFAULT '' COMMENT '到达城市三字码',
  `flight_no` varchar(128) NOT NULL DEFAULT 'ALL' COMMENT '航班号',
  `seat_codes` varchar(16) NOT NULL DEFAULT '' COMMENT '舱位代码',
  `flight_start_time` datetime NOT NULL COMMENT '航班起飞时间',
  `flight_end_time` datetime NOT NULL COMMENT '航班结束时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0：停用',
  `promotion_code` varchar(32) NOT NULL DEFAULT '' COMMENT '舱位促销代码',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '优先级',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `modifier_name` varchar(32) NOT NULL DEFAULT '' COMMENT '修改人',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除;0未删除   1已删除',
  PRIMARY KEY (`id`),
  KEY `idx_venderid_depcode` (`vender_id`,`dep_airport_code`),
  KEY `idx_flight_start_time` (`flight_start_time`),
  KEY `idx_depcode_arrcode` (`dep_airport_code`,`arr_airport_code`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='舱位展示规则';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 13:56:38
