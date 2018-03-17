/*
SQLyog Ultimate v12.3.1 (32 bit)
MySQL - 5.0.24-community-nt : Database - jb_crm_team
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jb_crm_team` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jb_crm_team`;

/*Table structure for table `bas_dict` */

DROP TABLE IF EXISTS `bas_dict`;

CREATE TABLE `bas_dict` (
  `dict_id` int(4) NOT NULL auto_increment,
  `dict_type` varchar(50) NOT NULL,
  `dict_item` varchar(50) NOT NULL,
  `dict_value` varchar(50) NOT NULL,
  `dict_is_editable` int(4) NOT NULL,
  PRIMARY KEY  (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bas_dict` */

/*Table structure for table `cst_activity` */

DROP TABLE IF EXISTS `cst_activity`;

CREATE TABLE `cst_activity` (
  `atv_id` int(4) NOT NULL auto_increment,
  `atv_cust_no` varchar(50) default NULL,
  `atv_date` datetime NOT NULL,
  `atv_place` varchar(200) NOT NULL,
  `atv_title` varchar(500) NOT NULL,
  `atv_desc` varchar(2000) default NULL,
  PRIMARY KEY  (`atv_id`),
  KEY `atv_cust_no` (`atv_cust_no`),
  CONSTRAINT `cst_activity_ibfk_1` FOREIGN KEY (`atv_cust_no`) REFERENCES `cst_customer` (`cust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cst_activity` */

/*Table structure for table `cst_customer` */

DROP TABLE IF EXISTS `cst_customer`;

CREATE TABLE `cst_customer` (
  `cust_no` varchar(50) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_region` varchar(50) default NULL,
  `cust_manager_id` int(4) default NULL,
  `cust_level` int(4) default NULL,
  `cust_satisfy` int(4) default NULL,
  `cust_credit` int(4) default NULL,
  `cust_addr` varchar(300) default NULL,
  `cust_zip` varchar(10) default NULL,
  `cust_tel` varchar(50) default NULL,
  `cust_fax` varchar(50) default NULL,
  `cust_website` varchar(50) default NULL,
  `cust_licence_no` varchar(50) default NULL,
  `cust_chieftain` varchar(50) default NULL,
  `cust_bankroll` int(10) default NULL,
  `cust_turnover` int(10) default NULL,
  `cust_bank` varchar(200) default NULL,
  `cust_bank_account` varchar(50) default NULL,
  `cust_local_tax_no` varchar(50) default NULL,
  `cust_national_tax_no` varchar(50) default NULL,
  `cust_status` char(1) default NULL COMMENT '客户状态：1--正常；2--流失；3--删除',
  PRIMARY KEY  (`cust_no`),
  KEY `cust_manager_id` (`cust_manager_id`),
  CONSTRAINT `cst_customer_ibfk_1` FOREIGN KEY (`cust_manager_id`) REFERENCES `cst_linkman` (`lkm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cst_customer` */

/*Table structure for table `cst_linkman` */

DROP TABLE IF EXISTS `cst_linkman`;

CREATE TABLE `cst_linkman` (
  `lkm_id` int(4) NOT NULL auto_increment,
  `lkm_cust_no` varchar(50) NOT NULL,
  `lkm_cust_name` varchar(100) default NULL,
  `lkm_name` varchar(50) default NULL,
  `lkm_sex` varchar(5) default NULL,
  `lkm_postion` varchar(50) default NULL,
  `lkm_tel` varchar(50) NOT NULL,
  `lkm_mobile` varchar(50) default NULL,
  `lkm_memo` varchar(300) default NULL,
  PRIMARY KEY  (`lkm_id`),
  KEY `lkm_cust_no` (`lkm_cust_no`),
  CONSTRAINT `cst_linkman_ibfk_1` FOREIGN KEY (`lkm_cust_no`) REFERENCES `cst_customer` (`cust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cst_linkman` */

/*Table structure for table `cst_lost` */

DROP TABLE IF EXISTS `cst_lost`;

CREATE TABLE `cst_lost` (
  `lst_id` int(4) NOT NULL auto_increment,
  `lst_cust_no` varchar(50) default '',
  `lst_cust_manager_id` int(4) default NULL,
  `lst_last_order_date` datetime default NULL,
  `lst_lost_date` datetime default NULL,
  `lst_delay` varchar(4000) default NULL,
  `lst_reason` varchar(2000) default NULL,
  `lst_status` char(1) default NULL COMMENT '流失状态 1-警告，2-暂缓流失，3-已经流失',
  PRIMARY KEY  (`lst_id`),
  KEY `lst_cust_no` (`lst_cust_no`),
  CONSTRAINT `cst_lost_ibfk_1` FOREIGN KEY (`lst_cust_no`) REFERENCES `cst_customer` (`cust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cst_lost` */

/*Table structure for table `cst_service` */

DROP TABLE IF EXISTS `cst_service`;

CREATE TABLE `cst_service` (
  `svr_id` int(4) NOT NULL auto_increment,
  `svr_type` varchar(20) default NULL,
  `svr_title` varchar(500) default NULL,
  `svr_cust_no` varchar(50) default NULL,
  `svr_status` varchar(10) default NULL,
  `svr_request` varchar(3000) default NULL,
  `svr_create_id` int(4) default NULL,
  `svr_create_date` datetime default NULL,
  `svr_due_id` int(4) default NULL,
  `svr_due_date` datetime default NULL,
  `svr_deal` varchar(3000) default NULL,
  `svr_deal_id` int(4) default NULL,
  `svr_deal_date` datetime default NULL,
  `svr_result` varchar(500) default NULL,
  `svr_satisfy` int(4) default NULL,
  PRIMARY KEY  (`svr_id`),
  KEY `fk_team_customer` (`svr_cust_no`),
  KEY `svr_create_id` (`svr_create_id`),
  KEY `svr_due_id` (`svr_due_id`),
  KEY `svr_deal_id` (`svr_deal_id`),
  CONSTRAINT `cst_service_ibfk_1` FOREIGN KEY (`svr_create_id`) REFERENCES `cst_linkman` (`lkm_id`),
  CONSTRAINT `cst_service_ibfk_2` FOREIGN KEY (`svr_due_id`) REFERENCES `cst_linkman` (`lkm_id`),
  CONSTRAINT `cst_service_ibfk_3` FOREIGN KEY (`svr_deal_id`) REFERENCES `cst_linkman` (`lkm_id`),
  CONSTRAINT `fk_team_customer` FOREIGN KEY (`svr_cust_no`) REFERENCES `cst_customer` (`cust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cst_service` */

/*Table structure for table `sal_chance` */

DROP TABLE IF EXISTS `sal_chance`;

CREATE TABLE `sal_chance` (
  `chc_id` int(4) NOT NULL auto_increment COMMENT '主键自动增长（1，1）',
  `chc_source` varchar(50) default NULL COMMENT '机会来源',
  `chc_cust_name` varchar(100) NOT NULL COMMENT '客户名称',
  `chc_title` varchar(200) NOT NULL COMMENT '概要',
  `chc_rate` int(4) NOT NULL COMMENT '成功机率',
  `chc_linkman` varchar(50) default NULL COMMENT '联系人',
  `chc_tel` varchar(50) default NULL COMMENT '联系电话',
  `chc_desc` varchar(2000) NOT NULL default '' COMMENT '机会描述',
  `chc_create_id` int(4) NOT NULL COMMENT '创建人编号',
  `chc_create_date` datetime NOT NULL COMMENT '创建时间',
  `chc_due_id` int(4) default NULL COMMENT '指派给编号',
  `chc_due_date` datetime default NULL COMMENT '指派时间',
  `chc_status` char(10) NOT NULL default '' COMMENT '状态：1--未指派；2--已指派；3--开发成功；4--终止开发',
  PRIMARY KEY  (`chc_id`),
  KEY `chc_create_id` (`chc_create_id`),
  CONSTRAINT `sal_chance_ibfk_1` FOREIGN KEY (`chc_create_id`) REFERENCES `cst_linkman` (`lkm_id`),
  CONSTRAINT `sal_chance_ibfk_2` FOREIGN KEY (`chc_create_id`) REFERENCES `cst_linkman` (`lkm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sal_chance` */

/*Table structure for table `sal_plan` */

DROP TABLE IF EXISTS `sal_plan`;

CREATE TABLE `sal_plan` (
  `pla_id` int(4) NOT NULL auto_increment,
  `pla_chc_id` int(4) default NULL,
  `pla_date` datetime default NULL,
  `pla_todo` varchar(500) default NULL,
  `pla_result` varchar(500) default NULL,
  PRIMARY KEY  (`pla_id`),
  KEY `pla_chc_id` (`pla_chc_id`),
  CONSTRAINT `sal_plan_ibfk_1` FOREIGN KEY (`pla_chc_id`) REFERENCES `sal_chance` (`chc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sal_plan` */

/*Table structure for table `sys_right` */

DROP TABLE IF EXISTS `sys_right`;

CREATE TABLE `sys_right` (
  `right_code` varchar(50) NOT NULL COMMENT '权限编号(主键)',
  `right_parent_code` varchar(50) default NULL COMMENT '模块父编号',
  `right_type` varchar(20) default NULL COMMENT '权限类型',
  `right_text` varchar(50) default NULL COMMENT '权限名称',
  `right_url` varchar(100) default NULL COMMENT 'url(权限对应功能的访问url)',
  `right_tip` varchar(50) default NULL COMMENT '显示',
  PRIMARY KEY  (`right_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_right` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `Role_id` int(4) NOT NULL auto_increment COMMENT '角色编号',
  `Role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `Role_desc` varchar(50) default NULL COMMENT '角色权限',
  `Role_flag` int(4) default NULL COMMENT '角色状态',
  PRIMARY KEY  (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

/*Table structure for table `sys_role_right` */

DROP TABLE IF EXISTS `sys_role_right`;

CREATE TABLE `sys_role_right` (
  `rf_id` int(4) NOT NULL auto_increment COMMENT '编号',
  `rf_role_id` int(4) NOT NULL COMMENT '角色编号',
  `rf_right_code` varchar(50) NOT NULL COMMENT '权限编号',
  PRIMARY KEY  (`rf_id`),
  KEY `rf_role_id` (`rf_role_id`),
  KEY `rf_right_code` (`rf_right_code`),
  CONSTRAINT `sys_role_right_ibfk_1` FOREIGN KEY (`rf_role_id`) REFERENCES `sys_role` (`Role_id`),
  CONSTRAINT `sys_role_right_ibfk_2` FOREIGN KEY (`rf_right_code`) REFERENCES `sys_right` (`right_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_right` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `usr_id` int(4) NOT NULL auto_increment COMMENT '用户编号',
  `usr_name` varchar(50) NOT NULL COMMENT '用户名',
  `usr_password` varchar(50) NOT NULL COMMENT '用户密码',
  `Usr_role_id` int(4) default NULL COMMENT '用户角色id',
  `Usr_flag` int(1) NOT NULL COMMENT '状态(0:已删除,1:正常)',
  PRIMARY KEY  (`usr_id`),
  KEY `userrole_id` (`Usr_role_id`),
  CONSTRAINT `userrole_id` FOREIGN KEY (`Usr_role_id`) REFERENCES `sys_role` (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
