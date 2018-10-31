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
-- Table structure for table `rule_promotion_discount`
--

DROP TABLE IF EXISTS `rule_promotion_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_promotion_discount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'B促销主键',
  `keyword` varchar(500) NOT NULL COMMENT 'B用户促销是userPin 航线促销是出发城市-到达城市',
  `agent_id` int(11) unsigned NOT NULL COMMENT '代理商ID',
  `discount_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '促销类型(1:B用户促销 2:航线促销 3:不可售航司 4:商家航司特殊折扣 6:未知)',
  `discount_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销利率',
  `policy_start_date` datetime NOT NULL COMMENT '政策开始时间',
  `policy_end_date` datetime NOT NULL COMMENT '政策结束时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态位(0:关闭 1:开启 -9:删除)',
  `is_original_price_sale` tinyint(2) DEFAULT '0' COMMENT '是否票面价销售,1:是,0:否',
  `source_type` tinyint(2) DEFAULT '0' COMMENT '销售渠道,0:全渠道,1:pc端,2:移动端',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多维度促销表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 13:56:39
