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
-- Table structure for table `dict_airport_building`
--

DROP TABLE IF EXISTS `dict_airport_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dict_airport_building` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ctrip_airport_building_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '航站楼信息id',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '航站楼中文名称',
  `name_en` varchar(128) NOT NULL DEFAULT '' COMMENT '航站楼英文名称',
  `short_name` varchar(64) NOT NULL DEFAULT '' COMMENT '航站楼短名称',
  `short_name_en` varchar(64) NOT NULL DEFAULT '' COMMENT '航站楼英文短名称',
  `airport_code` char(3) NOT NULL DEFAULT '' COMMENT '所属机场三字码',
  `city_code` char(3) NOT NULL DEFAULT '' COMMENT '所属城市三字码',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属城市信息id',
  `contact_addr` varchar(128) NOT NULL DEFAULT '' COMMENT '联系地址',
  `contact_addr_en` varchar(256) NOT NULL DEFAULT '' COMMENT '英文联系地址',
  `sms_name` varchar(32) NOT NULL DEFAULT '' COMMENT 'sms名称',
  `sms_name_en` varchar(32) NOT NULL DEFAULT '' COMMENT 'sms英文名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除  1:删除;0:不删除',
  PRIMARY KEY (`id`),
  KEY `idx_ctrip_airport_building_id` (`ctrip_airport_building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='携程航站楼信息表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 13:56:42
