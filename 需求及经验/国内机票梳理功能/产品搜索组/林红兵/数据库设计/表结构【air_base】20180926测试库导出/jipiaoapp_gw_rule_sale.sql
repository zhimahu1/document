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
-- Table structure for table `rule_sale`
--

DROP TABLE IF EXISTS `rule_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_sale` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `air_sale_activity_id` bigint(20) NOT NULL COMMENT '销售活动Id',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `vender_id` varchar(128) NOT NULL DEFAULT '' COMMENT '商家id',
  `air_corp_code` varchar(32) NOT NULL DEFAULT '' COMMENT '航空公司二字码',
  `dep_city_code` varchar(128) NOT NULL DEFAULT '' COMMENT '出发城市三字码',
  `arr_city_code` varchar(128) NOT NULL DEFAULT '' COMMENT '到达城市三字码',
  `flight_no` varchar(128) NOT NULL DEFAULT '' COMMENT '多个航班号，隔开',
  `seat_codes` varchar(32) NOT NULL DEFAULT '' COMMENT '舱位',
  `flight_start_time` datetime NOT NULL COMMENT '航班起飞时间',
  `flight_end_time` datetime NOT NULL COMMENT '航班结束时间',
  `stock` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `dimension` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '维度  1:订单;2:乘机人',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态  0:下线;1:上线',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `modifier_name` varchar(32) NOT NULL DEFAULT '' COMMENT '修改人',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0未删除   1已删除',
  `ora_stock_warning` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存橙色预警',
  `red_stock_warning` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存红色预警',
  `sale_start_time` datetime NOT NULL COMMENT '销售开始时间',
  `sale_end_time` datetime NOT NULL COMMENT '销售结束时间',
  `pre_sale_days_limit` int(8) NOT NULL DEFAULT '0' COMMENT '提前预售天数限制',
  `passenger_type` tinyint(2) unsigned NOT NULL DEFAULT '7' COMMENT ' 买赠活动支持的乘客类型1.成人 2.儿童 3.婴儿 4.成人+儿童 5.成人+婴儿 6.儿童+婴儿 7.成人+儿童+婴儿',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COMMENT='销售规则表';
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
