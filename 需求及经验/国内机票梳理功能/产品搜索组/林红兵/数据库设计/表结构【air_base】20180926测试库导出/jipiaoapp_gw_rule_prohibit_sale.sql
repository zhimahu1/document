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
-- Table structure for table `rule_prohibit_sale`
--

DROP TABLE IF EXISTS `rule_prohibit_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_prohibit_sale` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '不可售规则主键',
  `agent_id` int(11) unsigned NOT NULL COMMENT '代理商ID',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态位( 0:关闭 ,1:开启)',
  `source_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '销售渠道,0:全渠道,1:pc端,2:移动端',
  `aircorp_code` varchar(10) NOT NULL COMMENT '受限航空公司代码',
  `airline` varchar(7) NOT NULL DEFAULT 'ALL' COMMENT '受限航线',
  `flight_num` varchar(6) NOT NULL DEFAULT 'ALL' COMMENT '受限航班',
  `class_nos` varchar(40) NOT NULL DEFAULT 'ALL' COMMENT '受限舱位',
  `start_date` datetime NOT NULL COMMENT '受限起始时间',
  `end_date` datetime NOT NULL COMMENT '受限终止时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0:未删除   1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3233 DEFAULT CHARSET=utf8 COMMENT='不可售航班规则表';
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
