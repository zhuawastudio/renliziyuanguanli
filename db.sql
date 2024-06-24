/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - renliziyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renliziyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `renliziyuanguanli`;

/*Table structure for table `bumen` */

DROP TABLE IF EXISTS `bumen`;

CREATE TABLE `bumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bumen_name` varchar(200) DEFAULT NULL COMMENT '部门名称 Search111 ',
  `bumen_number` int(11) DEFAULT NULL COMMENT '部门人数',
  `bumen_zhize` varchar(200) DEFAULT NULL COMMENT '部门职责',
  `bumen_content` text COMMENT '部门介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `bumen` */

insert  into `bumen`(`id`,`bumen_name`,`bumen_number`,`bumen_zhize`,`bumen_content`,`insert_time`,`create_time`) values (1,'部门名称1',235,'部门职责1','部门介绍1','2022-02-22 13:05:01','2022-02-22 13:05:01'),(2,'部门名称2',38,'部门职责2','部门介绍2','2022-02-22 13:05:01','2022-02-22 13:05:01'),(3,'部门名称3',176,'部门职责3','部门介绍3','2022-02-22 13:05:01','2022-02-22 13:05:01'),(4,'部门名称4',172,'部门职责4','部门介绍4','2022-02-22 13:05:01','2022-02-22 13:05:01'),(5,'部门名称5',116,'部门职责5','部门介绍5','2022-02-22 13:05:01','2022-02-22 13:05:01'),(6,'部门名称6',92,'部门职责6','部门介绍6','2022-02-22 13:05:01','2022-02-22 13:05:01'),(7,'部门名称7',179,'部门职责7','部门介绍7','2022-02-22 13:05:01','2022-02-22 13:05:01'),(8,'部门名称8',252,'部门职责8','部门介绍8','2022-02-22 13:05:01','2022-02-22 13:05:01'),(9,'部门名称9',166,'部门职责9','部门介绍9','2022-02-22 13:05:01','2022-02-22 13:05:01'),(10,'部门名称10',360,'部门职责10','部门介绍10','2022-02-22 13:05:01','2022-02-22 13:05:01'),(11,'部门名称11',68,'部门职责119','<p>部门介绍119</p>','2022-02-22 13:05:01','2022-02-22 13:05:01');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-22 13:03:59'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-22 13:03:59'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-02-22 13:03:59'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-02-22 13:03:59'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2022-02-22 13:03:59'),(6,'zhaopinxinxi_types','招聘类型',1,'社会招聘',NULL,NULL,'2022-02-22 13:03:59'),(7,'zhaopinxinxi_types','招聘类型',2,'校园招聘',NULL,NULL,'2022-02-22 13:03:59'),(8,'mianshi_types','是否已面试',1,'已面试',NULL,NULL,'2022-02-22 13:03:59'),(9,'mianshi_types','是否已面试',2,'未面试',NULL,NULL,'2022-02-22 13:03:59'),(10,'mianshi_jieguo_types','面试结果',1,'待面试',NULL,NULL,'2022-02-22 13:03:59'),(11,'mianshi_jieguo_types','面试结果',2,'通过',NULL,NULL,'2022-02-22 13:03:59'),(12,'mianshi_jieguo_types','面试结果',3,'不通过',NULL,NULL,'2022-02-22 13:03:59');

/*Table structure for table `gongzi` */

DROP TABLE IF EXISTS `gongzi`;

CREATE TABLE `gongzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `gongzi_name` varchar(200) DEFAULT NULL COMMENT '工资名称 Search111 ',
  `gongzi_time` varchar(200) DEFAULT NULL COMMENT '发放月份 Search111 ',
  `jiben_gongzi` decimal(10,2) DEFAULT NULL COMMENT '基本工资 ',
  `jiangjin_gongzi` decimal(10,2) DEFAULT NULL COMMENT '奖金 ',
  `shifa_gongzi` decimal(10,2) DEFAULT NULL COMMENT '实发工资 ',
  `gongzi_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='工资';

/*Data for the table `gongzi` */

insert  into `gongzi`(`id`,`yuangong_id`,`gongzi_name`,`gongzi_time`,`jiben_gongzi`,`jiangjin_gongzi`,`shifa_gongzi`,`gongzi_content`,`insert_time`,`create_time`) values (1,2,'2022年1月份工资','2022-01-22','753.42','358.54','1111.96','<p>备注1</p>','2022-02-22 13:05:01','2022-02-22 13:05:01'),(2,1,'2022年1月份工资','2022-01-22','87.98','603.22','691.20','<p>备注2</p>','2022-02-22 13:05:01','2022-02-22 13:05:01'),(11,3,'2022年1月份工资','2022-01-22','702.73','365.80','1068.53','<p>备注11</p>','2022-02-22 13:05:01','2022-02-22 13:05:01'),(12,2,'2022年2月工资','2022-02','300.00','200.00','500.00','<p>无</p>','2022-02-22 14:21:06','2022-02-22 14:21:06'),(13,1,'2022年2月工资','2022-02','900.00','420.96','1320.96','<p>无</p>','2022-02-22 14:26:20','2022-02-22 14:26:20');

/*Table structure for table `renshidiaopei` */

DROP TABLE IF EXISTS `renshidiaopei`;

CREATE TABLE `renshidiaopei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `renshidiaopei_name` varchar(200) DEFAULT NULL COMMENT '人事调配名称 Search111 ',
  `renshidiaopei_content` text COMMENT '调配详情',
  `diaopei_time` timestamp NULL DEFAULT NULL COMMENT '调配时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='人事调配';

/*Data for the table `renshidiaopei` */

insert  into `renshidiaopei`(`id`,`yuangong_id`,`renshidiaopei_name`,`renshidiaopei_content`,`diaopei_time`,`insert_time`,`create_time`) values (1,3,'人事调配名称1','调配详情1','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(2,2,'人事调配名称2','调配详情2','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(3,3,'人事调配名称3','调配详情3','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(4,3,'人事调配名称4','调配详情4','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(5,2,'人事调配名称5','调配详情5','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(6,2,'人事调配名称6','调配详情6','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(7,3,'人事调配名称7','调配详情7','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(8,1,'人事调配名称8','调配详情8','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(9,3,'人事调配名称9','调配详情9','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(10,3,'人事调配名称10','调配详情10','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(11,2,'人事调配名称11','调配详情11','2022-02-22 13:05:01','2022-02-22 13:05:01','2022-02-22 13:05:01'),(12,3,'人事调配宿舍','<p>宿舍奥德赛</p>','2022-02-14 00:00:00','2022-02-22 14:26:53','2022-02-22 14:26:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','vs01tm2d5euhk3ihbxgi151ku3uzulcs','2022-02-22 13:19:18','2022-02-22 15:29:09'),(2,1,'a1','yuangong','员工','dg2r6haau1we9bmkqdxxg23wisc3qqjg','2022-02-22 14:22:31','2022-02-22 15:24:45'),(3,6,'a9','yuangong','员工','qhh7w248v2zefqqs7llnxuxquovmldxw','2022-02-22 14:24:08','2022-02-22 15:24:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `yingpinjilu` */

DROP TABLE IF EXISTS `yingpinjilu`;

CREATE TABLE `yingpinjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopinxinxi_id` int(11) DEFAULT NULL COMMENT '招聘信息',
  `yingpinjilu_name` varchar(200) DEFAULT NULL COMMENT '应聘人员姓名 Search111 ',
  `yingpinjilu_phone` varchar(200) DEFAULT NULL COMMENT '应聘人员手机号',
  `yingpinjilu_id_number` varchar(200) DEFAULT NULL COMMENT '应聘人员身份证号',
  `jiaoyu_content` text COMMENT '教育情况',
  `gongzuo_content` text COMMENT '工作经历',
  `geren_content` text COMMENT '个人介绍',
  `yingpin_time` timestamp NULL DEFAULT NULL COMMENT '应聘时间',
  `mianshi_types` int(11) DEFAULT NULL COMMENT '是否已面试',
  `mianshi_jieguo_types` int(11) DEFAULT NULL COMMENT '面试结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='应聘记录';

/*Data for the table `yingpinjilu` */

insert  into `yingpinjilu`(`id`,`zhaopinxinxi_id`,`yingpinjilu_name`,`yingpinjilu_phone`,`yingpinjilu_id_number`,`jiaoyu_content`,`gongzuo_content`,`geren_content`,`yingpin_time`,`mianshi_types`,`mianshi_jieguo_types`,`insert_time`,`create_time`) values (1,1,'应聘人员姓名1','17703786901','410224199610232001','教育情况1','工作经历1','个人介绍1','2022-02-22 13:05:01',2,1,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(2,2,'应聘人员姓名2','17703786902','410224199610232002','教育情况2','工作经历2','个人介绍2','2022-02-22 13:05:01',2,1,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(3,3,'应聘人员姓名3','17703786903','410224199610232003','教育情况3','工作经历3','个人介绍3','2022-02-22 13:05:01',2,1,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(4,4,'应聘人员姓名4','17703786904','410224199610232004','教育情况4','工作经历4','个人介绍4','2022-02-22 13:05:01',2,2,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(5,5,'应聘人员姓名5','17703786905','410224199610232005','教育情况5','工作经历5','个人介绍5','2022-02-22 13:05:01',1,2,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(6,6,'应聘人员姓名6','17703786906','410224199610232006','教育情况6','工作经历6','个人介绍6','2022-02-22 13:05:01',1,3,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(7,7,'应聘人员姓名7','17703786907','410224199610232007','教育情况7','工作经历7','个人介绍7','2022-02-22 13:05:01',2,2,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(8,8,'应聘人员姓名8','17703786908','410224199610232008','教育情况8','工作经历8','个人介绍8','2022-02-22 13:05:01',2,3,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(9,9,'应聘人员姓名9','17703786909','410224199610232009','教育情况9','工作经历9','个人介绍9','2022-02-22 13:05:01',1,3,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(10,10,'应聘人员姓名10','17703786910','410224199610232010','教育情况10','工作经历10','个人介绍10','2022-02-22 13:05:01',1,2,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(11,11,'应聘人员姓名11','17703786911','410224199610232011','教育情况11','工作经历11','个人介绍11','2022-02-22 13:05:01',1,3,'2022-02-22 13:05:01','2022-02-22 13:05:01'),(12,12,'张99','17703786969','410224199610232009','<p>张99的教育经历</p>','<p>张99的工作经历</p>','<p>张99的个人介绍</p>','2022-02-23 09:02:00',1,2,'2022-02-22 14:28:16','2022-02-22 14:28:16');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `bumen_id` int(11) DEFAULT NULL COMMENT '部门',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`bumen_id`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`zhiwei`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456',1,'16455063017139','员工姓名1','17703786901','410224199610232001','http://localhost:8080/renliziyuanguanli/upload/yuangong1.jpg','职位1',2,'1@qq.com','2022-02-22 13:05:01'),(2,'a2','123456',2,'16455063017138','员工姓名2','17703786902','410224199610232002','http://localhost:8080/renliziyuanguanli/upload/yuangong2.jpg','职位2',1,'2@qq.com','2022-02-22 13:05:01'),(3,'a3','123456',3,'16455063017137','员工姓名3','17703786903','410224199610232003','http://localhost:8080/renliziyuanguanli/upload/yuangong3.jpg','职位3',1,'3@qq.com','2022-02-22 13:05:01'),(6,'a9','123456',10,'999','张9','17703786969','410224199610232009','http://localhost:8080/renliziyuanguanli/upload/1645511066304.jpg','职位9',1,'99@qq.com','2022-02-22 13:05:01');

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopinxinxi_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称 Search111 ',
  `zhaopinxinxi_types` int(11) DEFAULT NULL COMMENT '招聘类型',
  `zhaopinxinxi_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopinxinxi_content` text COMMENT '招聘详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`zhaopinxinxi_name`,`zhaopinxinxi_types`,`zhaopinxinxi_number`,`zhaopinxinxi_content`,`insert_time`,`create_time`) values (1,'招聘信息名称1',2,127,'招聘详情1','2022-02-22 13:05:01','2022-02-22 13:05:01'),(2,'招聘信息名称2',2,291,'招聘详情2','2022-02-22 13:05:01','2022-02-22 13:05:01'),(3,'招聘信息名称3',1,66,'招聘详情3','2022-02-22 13:05:01','2022-02-22 13:05:01'),(4,'招聘信息名称4',1,447,'招聘详情4','2022-02-22 13:05:01','2022-02-22 13:05:01'),(5,'招聘信息名称5',2,403,'招聘详情5','2022-02-22 13:05:01','2022-02-22 13:05:01'),(6,'招聘信息名称6',1,151,'招聘详情6','2022-02-22 13:05:01','2022-02-22 13:05:01'),(7,'招聘信息名称7',2,34,'招聘详情7','2022-02-22 13:05:01','2022-02-22 13:05:01'),(8,'招聘信息名称8',2,417,'招聘详情8','2022-02-22 13:05:01','2022-02-22 13:05:01'),(9,'招聘信息名称9',1,89,'招聘详情9','2022-02-22 13:05:01','2022-02-22 13:05:01'),(10,'招聘信息名称10',1,190,'招聘详情10','2022-02-22 13:05:01','2022-02-22 13:05:01'),(11,'招聘信息名称11',1,430,'招聘详情11','2022-02-22 13:05:01','2022-02-22 13:05:01'),(12,'招聘99',2,40,'<p>招聘详情99</p>','2022-02-22 14:27:23','2022-02-22 14:27:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
