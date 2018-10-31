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
-- Table structure for table `rule_airline`
--

DROP TABLE IF EXISTS `rule_airline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_airline` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dep_city_code` char(3) NOT NULL DEFAULT '' COMMENT '出发城市三字码',
  `dep_city_name` varchar(32) NOT NULL DEFAULT '' COMMENT '出发城市中文名',
  `dep_airport_code` char(3) NOT NULL DEFAULT '' COMMENT '出发机场三字码',
  `dep_airport_name` varchar(32) NOT NULL DEFAULT '' COMMENT '出发机场中文名',
  `arr_city_code` char(3) NOT NULL DEFAULT '' COMMENT '到达城市三字码',
  `arr_city_name` varchar(32) NOT NULL DEFAULT '' COMMENT '到达城市中文名',
  `arr_airport_code` char(3) NOT NULL DEFAULT '' COMMENT '到达机场三字码',
  `arr_airport_name` varchar(32) NOT NULL DEFAULT '' COMMENT '到达机场中文名',
  `is_stop` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否经停,0->否,1->是',
  `stop_city_code` char(3) NOT NULL DEFAULT '' COMMENT '经停城市三字码',
  `stop_city_name` varchar(32) NOT NULL DEFAULT '' COMMENT '经停城市中文名',
  `mileage` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '里程数',
  `air_corp_code` char(2) NOT NULL DEFAULT '' COMMENT '航空公司代码 ',
  `air_corp_name` varchar(32) NOT NULL DEFAULT '' COMMENT '航空公司名称  ',
  `vender_id` varchar(32) NOT NULL DEFAULT '' COMMENT '商家ID',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1->正常,2->停用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:未删除;1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5096 DEFAULT CHARSET=utf8 COMMENT='航线表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 13:56:40
