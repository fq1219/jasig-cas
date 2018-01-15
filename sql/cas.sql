/*
SQLyog Ultimate v11.42 (64 bit)
MySQL - 5.6.21 : Database - jasig_cas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jasig_cas` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jasig_cas`;

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL DEFAULT '' COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL DEFAULT '' COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `salt` varchar(32) NOT NULL COMMENT '盐',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) NOT NULL DEFAULT '0' COMMENT '用户类型 0普通用户 1管理员',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `sys_user` */

LOCK TABLES `sys_user` WRITE;

insert  into `sys_user`(`id`,`company_id`,`office_id`,`login_name`,`password`,`salt`,`no`,`name`,`email`,`phone`,`mobile`,`user_type`,`photo`,`login_ip`,`login_date`,`login_flag`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','b4ec0ad7-d200-4fe9-82ae-35671ebdaed4','b4ec0ad7-d200-4fe9-82ae-35671ebdaed4','admin','1a6dc0b974ebf951d684453cb99267aa','fbc5d00a625883c0','0002','admin2',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'-1','2015-07-22 18:04:39','-1','2015-07-22 18:04:39',NULL,'0'),('115209a7-823c-455d-b29a-2f97a312e683','b4ec0ad7-d200-4fe9-82ae-35671ebdaed4','b4ec0ad7-d200-4fe9-82ae-35671ebdaed4','哈哈2','1a6dc0b974ebf951d684453cb99267aa','fbc5d00a625883c0',NULL,'webservice_test','haha@ccc.com',NULL,NULL,'0',NULL,NULL,NULL,NULL,'-1','2015-08-04 09:47:13','-1','2015-08-06 16:23:29',NULL,'0'),('98dcfa17-4a29-46d5-8652-c19341bea32d','','','itmuch','11b863cfab4ea4621a9c41ece0d807c4','8406497c8ee0fc1e',NULL,'','test@11.com',NULL,NULL,'0',NULL,NULL,NULL,NULL,'-1','2015-08-04 09:46:18','-1','2015-08-04 09:46:18',NULL,'0'),('b65a6337-d9c8-4911-a2aa-ba4aad7c51ff','b4ec0ad7-d200-4fe9-82ae-35671ebdaed4','b4ec0ad7-d200-4fe9-82ae-35671ebdaed4','eacdy','11111','6b603f18913da824','飒飒的士大夫','是的阿斯顿','haha@ccc.com',NULL,NULL,'','',NULL,NULL,NULL,'-1','2015-07-24 09:12:18','-1','2015-08-06 15:34:31',NULL,'0');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
