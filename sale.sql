/*
SQLyog Ultimate v12.3.1 (32 bit)
MySQL - 5.0.24-community-nt : Database - jb_sale
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jb_sale` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jb_sale`;

/*Table structure for table `odr_id` */

DROP TABLE IF EXISTS `odr_id`;

CREATE TABLE `odr_id` (
  `odr_id` int(4) NOT NULL auto_increment,
  `odr_customer_id` varchar(50) default NULL,
  `odr_date` datetime default NULL,
  `odr_addr` varchar(200) default NULL,
  `odr_status` char(1) default NULL COMMENT '状态(5: 已发货  6:已回款)',
  PRIMARY KEY  (`odr_id`),
  KEY `cust_id` (`odr_customer_id`),
  CONSTRAINT `cust_id` FOREIGN KEY (`odr_customer_id`) REFERENCES `jb_crm_team`.`cst_customer` (`cust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `odr_id` */

/*Table structure for table `orders_line` */

DROP TABLE IF EXISTS `orders_line`;

CREATE TABLE `orders_line` (
  `odd_id` int(4) NOT NULL auto_increment,
  `odd_order_id` int(4) NOT NULL,
  `odd_prod_id` int(4) NOT NULL,
  `odd_count` int(7) default NULL,
  `odd_unit` varchar(50) default NULL,
  `odd_price` double(10,2) default NULL,
  PRIMARY KEY  (`odd_id`),
  KEY `pro_id` (`odd_prod_id`),
  KEY `ord_id` (`odd_order_id`),
  CONSTRAINT `pro_id` FOREIGN KEY (`odd_prod_id`) REFERENCES `product` (`prod_id`),
  CONSTRAINT `ord_id` FOREIGN KEY (`odd_order_id`) REFERENCES `odr_id` (`odr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders_line` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `prod_id` int(4) NOT NULL auto_increment,
  `prod_name` varchar(200) default NULL,
  `prod_type` varchar(100) default NULL,
  `prod_batch` varchar(100) default NULL,
  `prod_unit` varchar(50) default NULL,
  `prod_price` double(10,2) default NULL,
  `prod_memo` varchar(200) default NULL,
  PRIMARY KEY  (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

/*Table structure for table `storage` */

DROP TABLE IF EXISTS `storage`;

CREATE TABLE `storage` (
  `stk_id` int(4) NOT NULL auto_increment,
  `stk_prod_id` int(4) default NULL,
  `stk_warehouse` varchar(50) default NULL,
  `stk_ware` varchar(50) default NULL,
  `stk_count` int(10) default NULL,
  `stk_memo` varchar(200) default NULL,
  PRIMARY KEY  (`stk_id`),
  KEY `por_id` (`stk_prod_id`),
  CONSTRAINT `por_id` FOREIGN KEY (`stk_prod_id`) REFERENCES `product` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `storage` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
