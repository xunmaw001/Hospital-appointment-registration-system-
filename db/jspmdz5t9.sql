-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmdz5t9
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chuzhenxinxi`
--

DROP TABLE IF EXISTS `chuzhenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `chuzhenshijian` date DEFAULT NULL COMMENT '出诊时间',
  `keyuerenshu` int(11) DEFAULT NULL COMMENT '可约人数',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344594928 DEFAULT CHARSET=utf8 COMMENT='出诊信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuzhenxinxi`
--

LOCK TABLES `chuzhenxinxi` WRITE;
/*!40000 ALTER TABLE `chuzhenxinxi` DISABLE KEYS */;
INSERT INTO `chuzhenxinxi` VALUES (41,'2021-03-10 02:26:57','医生工号1','医生姓名1','职称1','http://localhost:8080/jspmdz5t9/upload/chuzhenxinxi_zhaopian1.jpg','科室1','擅长1','2021-03-10',1,1,'2021-03-10 10:26:57',1),(42,'2021-03-10 02:26:57','医生工号2','医生姓名2','职称2','http://localhost:8080/jspmdz5t9/upload/chuzhenxinxi_zhaopian2.jpg','科室2','擅长2','2021-03-10',2,2,'2021-03-10 10:26:57',2),(43,'2021-03-10 02:26:57','医生工号3','医生姓名3','职称3','http://localhost:8080/jspmdz5t9/upload/chuzhenxinxi_zhaopian3.jpg','科室3','擅长3','2021-03-10',3,3,'2021-03-10 10:26:57',3),(44,'2021-03-10 02:26:57','医生工号4','医生姓名4','职称4','http://localhost:8080/jspmdz5t9/upload/chuzhenxinxi_zhaopian4.jpg','科室4','擅长4','2021-03-10',4,4,'2021-03-10 10:26:57',4),(45,'2021-03-10 02:26:57','医生工号5','医生姓名5','职称5','http://localhost:8080/jspmdz5t9/upload/chuzhenxinxi_zhaopian5.jpg','科室5','擅长5','2021-03-10',5,5,'2021-03-10 10:51:06',9),(46,'2021-03-10 02:26:57','医生工号6','医生姓名6','职称6','http://localhost:8080/jspmdz5t9/upload/chuzhenxinxi_zhaopian6.jpg','科室6','擅长6','2021-03-10',6,6,'2021-03-10 10:26:57',6),(1615344594927,'2021-03-10 02:49:54','1','陈月','副主任医师','http://localhost:8080/jspmdz5t9/upload/1615344584806.png','皮肤科','擅长过敏性皮炎的诊断与治疗','2021-03-11',30,30,'2021-03-10 10:52:59',2);
/*!40000 ALTER TABLE `chuzhenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmdz5t9/upload/1615344516532.jpg'),(2,'picture2','http://localhost:8080/jspmdz5t9/upload/1615344523275.jpg'),(3,'picture3','http://localhost:8080/jspmdz5t9/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschuzhenxinxi`
--

DROP TABLE IF EXISTS `discusschuzhenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='出诊信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschuzhenxinxi`
--

LOCK TABLES `discusschuzhenxinxi` WRITE;
/*!40000 ALTER TABLE `discusschuzhenxinxi` DISABLE KEYS */;
INSERT INTO `discusschuzhenxinxi` VALUES (121,'2021-03-10 02:26:57',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-10 02:26:57',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-10 02:26:57',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-10 02:26:57',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-10 02:26:57',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-10 02:26:57',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschuzhenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskeshixinxi`
--

DROP TABLE IF EXISTS `discusskeshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskeshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344705260 DEFAULT CHARSET=utf8 COMMENT='科室信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskeshixinxi`
--

LOCK TABLES `discusskeshixinxi` WRITE;
/*!40000 ALTER TABLE `discusskeshixinxi` DISABLE KEYS */;
INSERT INTO `discusskeshixinxi` VALUES (111,'2021-03-10 02:26:57',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-10 02:26:57',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-10 02:26:57',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-10 02:26:57',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-10 02:26:57',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-10 02:26:57',6,6,'用户名6','评论内容6','回复内容6'),(1615344705259,'2021-03-10 02:51:44',1615344457524,1615344633997,NULL,'很不错的科室',NULL);
/*!40000 ALTER TABLE `discusskeshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guahaoyuyue`
--

DROP TABLE IF EXISTS `guahaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guahaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `jiuzhenmiaoshu` varchar(200) DEFAULT NULL COMMENT '就诊描述',
  `tiwen` float DEFAULT NULL COMMENT '体温',
  `jiankangma` varchar(200) DEFAULT NULL COMMENT '健康码',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344777547 DEFAULT CHARSET=utf8 COMMENT='挂号预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guahaoyuyue`
--

LOCK TABLES `guahaoyuyue` WRITE;
/*!40000 ALTER TABLE `guahaoyuyue` DISABLE KEYS */;
INSERT INTO `guahaoyuyue` VALUES (61,'2021-03-10 02:26:57','医生工号1','医生姓名1','http://localhost:8080/jspmdz5t9/upload/1615344995928.jpg','职称1','科室1','挂号费1','出诊时间1','时间段1','就诊描述1',1,'http://localhost:8080/jspmdz5t9/upload/1615345012159.jpg','用户名1','姓名1','身份证1','是','','未支付'),(62,'2021-03-10 02:26:57','医生工号2','医生姓名2','http://localhost:8080/jspmdz5t9/upload/guahaoyuyue_zhaopian2.jpg','职称2','科室2','挂号费2','出诊时间2','时间段2','就诊描述2',2,'http://localhost:8080/jspmdz5t9/upload/1615345020057.jpg','用户名2','姓名2','身份证2','是','','未支付'),(63,'2021-03-10 02:26:57','医生工号3','医生姓名3','http://localhost:8080/jspmdz5t9/upload/guahaoyuyue_zhaopian3.jpg','职称3','科室3','挂号费3','出诊时间3','时间段3','就诊描述3',3,'http://localhost:8080/jspmdz5t9/upload/1615345028487.png','用户名3','姓名3','身份证3','是','','未支付'),(64,'2021-03-10 02:26:57','医生工号4','医生姓名4','http://localhost:8080/jspmdz5t9/upload/guahaoyuyue_zhaopian4.jpg','职称4','科室4','挂号费4','出诊时间4','时间段4','就诊描述4',4,'http://localhost:8080/jspmdz5t9/upload/1615345041038.jpg','用户名4','姓名4','身份证4','是','','未支付'),(65,'2021-03-10 02:26:57','医生工号5','医生姓名5','http://localhost:8080/jspmdz5t9/upload/guahaoyuyue_zhaopian5.jpg','职称5','科室5','挂号费5','出诊时间5','时间段5','就诊描述5',5,'http://localhost:8080/jspmdz5t9/upload/1615345048713.jpg','用户名5','姓名5','身份证5','是','','未支付'),(66,'2021-03-10 02:26:57','医生工号6','医生姓名6','http://localhost:8080/jspmdz5t9/upload/guahaoyuyue_zhaopian6.jpg','职称6','科室6','挂号费6','出诊时间6','时间段6','就诊描述6',6,'http://localhost:8080/jspmdz5t9/upload/1615345056591.jpg','用户名6','姓名6','身份证6','是','','未支付'),(1615344777546,'2021-03-10 02:52:56','1','陈月','http://localhost:8080/jspmdz5t9/upload/1615344584806.png','副主任医师','皮肤科','30','2021-03-11','9:30-10:00','皮肤过敏',36.5,'http://localhost:8080/jspmdz5t9/upload/1615344774796.jpg','2','陈一','123456789789456123','是','ok','已支付');
/*!40000 ALTER TABLE `guahaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshixinxi`
--

DROP TABLE IF EXISTS `keshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `keshijieshao` longtext COMMENT '科室介绍',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344457525 DEFAULT CHARSET=utf8 COMMENT='科室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshixinxi`
--

LOCK TABLES `keshixinxi` WRITE;
/*!40000 ALTER TABLE `keshixinxi` DISABLE KEYS */;
INSERT INTO `keshixinxi` VALUES (21,'2021-03-10 02:26:57','科室1','http://localhost:8080/jspmdz5t9/upload/1615344360012.jpg','科室介绍1','科室位置1'),(22,'2021-03-10 02:26:57','科室2','http://localhost:8080/jspmdz5t9/upload/1615344365965.jpg','科室介绍2','科室位置2'),(23,'2021-03-10 02:26:57','科室3','http://localhost:8080/jspmdz5t9/upload/1615344374074.jpg','科室介绍3','科室位置3'),(24,'2021-03-10 02:26:57','科室4','http://localhost:8080/jspmdz5t9/upload/1615344380877.jpg','科室介绍4','科室位置4'),(25,'2021-03-10 02:26:57','科室5','http://localhost:8080/jspmdz5t9/upload/1615344388701.jpg','科室介绍5','科室位置5'),(26,'2021-03-10 02:26:57','科室6','http://localhost:8080/jspmdz5t9/upload/1615344395326.jpg','科室介绍6','科室位置6'),(1615344457524,'2021-03-10 02:47:36','皮肤科','http://localhost:8080/jspmdz5t9/upload/1615344447870.jpg','成立于2006年，本科室设备先进,技术力量雄厚，科室共有医护人员7名，主治医师2名、医师2名、美容技师1名、护士2名。','门诊大楼2楼');
/*!40000 ALTER TABLE `keshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344562515 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-10 02:26:57','标题1','简介1','http://localhost:8080/jspmdz5t9/upload/news_picture1.jpg','内容1'),(102,'2021-03-10 02:26:57','标题2','简介2','http://localhost:8080/jspmdz5t9/upload/news_picture2.jpg','内容2'),(103,'2021-03-10 02:26:57','标题3','简介3','http://localhost:8080/jspmdz5t9/upload/news_picture3.jpg','内容3'),(104,'2021-03-10 02:26:57','标题4','简介4','http://localhost:8080/jspmdz5t9/upload/news_picture4.jpg','内容4'),(105,'2021-03-10 02:26:57','标题5','简介5','http://localhost:8080/jspmdz5t9/upload/news_picture5.jpg','内容5'),(106,'2021-03-10 02:26:57','标题6','简介6','http://localhost:8080/jspmdz5t9/upload/news_picture6.jpg','内容6'),(1615344562514,'2021-03-10 02:49:22','预约指南','预约指南','http://localhost:8080/jspmdz5t9/upload/1615344543133.jpg','1）用户首次预约必须注册就诊人的真实有效基本信息，包括就诊人员的真实姓名、有效证件号(身份证、军官证、护照、港澳通行证、台胞证)、性别、电话、手机号码等基本信息。\r\n2）可选择相应科室，医生进行挂号预约，支付挂号费预约后，需要医生审核，审核通过方式预约成功\r\n3）成功预约挂号后，系统将自动保存用户预约记录\r\n\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344756770 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615344756769,'2021-03-10 02:52:35',1615344633997,1615344594927,'chuzhenxinxi','陈月','http://localhost:8080/jspmdz5t9/upload/1615344584806.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','wgjmdyzdeuickjoh3gkta97xskn0jdth','2021-03-10 02:45:25','2021-03-10 03:57:44'),(2,1615344493586,'1','yisheng','医生','l2cmn7m8jqwsm2vtatn3bw5s8s2d2029','2021-03-10 02:49:34','2021-03-10 03:54:45'),(3,1615344633997,'2','yonghu','用户','5bxbvvelwugg6n0tk01a6ugeptqkgn4x','2021-03-10 02:50:39','2021-03-10 03:55:33');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-10 02:26:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wentifankui`
--

DROP TABLE IF EXISTS `wentifankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wentifankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `wentifankui` varchar(200) DEFAULT NULL COMMENT '问题反馈',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344874806 DEFAULT CHARSET=utf8 COMMENT='问题反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wentifankui`
--

LOCK TABLES `wentifankui` WRITE;
/*!40000 ALTER TABLE `wentifankui` DISABLE KEYS */;
INSERT INTO `wentifankui` VALUES (71,'2021-03-10 02:26:57','医生工号1','医生姓名1','职称1','科室1','出诊时间1','时间段1','问题反馈1','2021-03-10 10:26:57','用户名1','姓名1','是',''),(72,'2021-03-10 02:26:57','医生工号2','医生姓名2','职称2','科室2','出诊时间2','时间段2','问题反馈2','2021-03-10 10:26:57','用户名2','姓名2','是',''),(73,'2021-03-10 02:26:57','医生工号3','医生姓名3','职称3','科室3','出诊时间3','时间段3','问题反馈3','2021-03-10 10:26:57','用户名3','姓名3','是',''),(74,'2021-03-10 02:26:57','医生工号4','医生姓名4','职称4','科室4','出诊时间4','时间段4','问题反馈4','2021-03-10 10:26:57','用户名4','姓名4','是',''),(75,'2021-03-10 02:26:57','医生工号5','医生姓名5','职称5','科室5','出诊时间5','时间段5','问题反馈5','2021-03-10 10:26:57','用户名5','姓名5','是',''),(76,'2021-03-10 02:26:57','医生工号6','医生姓名6','职称6','科室6','出诊时间6','时间段6','问题反馈6','2021-03-10 10:26:57','用户名6','姓名6','是',''),(1615344874805,'2021-03-10 02:54:34','1','陈月','副主任医师','皮肤科','2021-03-11','9:30-10:00','用药后皮肤还是过敏，瘙痒','2021-03-10 10:10:10','2','陈一','是','');
/*!40000 ALTER TABLE `wentifankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wentijieda`
--

DROP TABLE IF EXISTS `wentijieda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wentijieda` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `wentijieda` longtext COMMENT '问题解答',
  `jiedashijian` datetime DEFAULT NULL COMMENT '解答时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344922902 DEFAULT CHARSET=utf8 COMMENT='问题解答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wentijieda`
--

LOCK TABLES `wentijieda` WRITE;
/*!40000 ALTER TABLE `wentijieda` DISABLE KEYS */;
INSERT INTO `wentijieda` VALUES (81,'2021-03-10 02:26:57','医生工号1','医生姓名1','职称1','科室1','问题解答1','2021-03-10 10:26:57','用户名1','姓名1'),(82,'2021-03-10 02:26:57','医生工号2','医生姓名2','职称2','科室2','问题解答2','2021-03-10 10:26:57','用户名2','姓名2'),(83,'2021-03-10 02:26:57','医生工号3','医生姓名3','职称3','科室3','问题解答3','2021-03-10 10:26:57','用户名3','姓名3'),(84,'2021-03-10 02:26:57','医生工号4','医生姓名4','职称4','科室4','问题解答4','2021-03-10 10:26:57','用户名4','姓名4'),(85,'2021-03-10 02:26:57','医生工号5','医生姓名5','职称5','科室5','问题解答5','2021-03-10 10:26:57','用户名5','姓名5'),(86,'2021-03-10 02:26:57','医生工号6','医生姓名6','职称6','科室6','问题解答6','2021-03-10 10:26:57','用户名6','姓名6'),(1615344922901,'2021-03-10 02:55:22','1','陈月','副主任医师','皮肤科','短期内是正常现象，慢慢的就会好的','2021-03-11 10:14:54','2','陈一');
/*!40000 ALTER TABLE `wentijieda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344493587 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (31,'2021-03-10 02:26:57','医生1','123456','医生姓名1','男','http://localhost:8080/jspmdz5t9/upload/yisheng_zhaopian1.jpg','医师','科室1','擅长1','13823888881'),(32,'2021-03-10 02:26:57','医生2','123456','医生姓名2','男','http://localhost:8080/jspmdz5t9/upload/yisheng_zhaopian2.jpg','医师','科室2','擅长2','13823888882'),(33,'2021-03-10 02:26:57','医生3','123456','医生姓名3','男','http://localhost:8080/jspmdz5t9/upload/yisheng_zhaopian3.jpg','医师','科室3','擅长3','13823888883'),(34,'2021-03-10 02:26:57','医生4','123456','医生姓名4','男','http://localhost:8080/jspmdz5t9/upload/yisheng_zhaopian4.jpg','医师','科室4','擅长4','13823888884'),(35,'2021-03-10 02:26:57','医生5','123456','医生姓名5','男','http://localhost:8080/jspmdz5t9/upload/yisheng_zhaopian5.jpg','医师','科室5','擅长5','13823888885'),(36,'2021-03-10 02:26:57','医生6','123456','医生姓名6','男','http://localhost:8080/jspmdz5t9/upload/yisheng_zhaopian6.jpg','医师','科室6','擅长6','13823888886'),(1615344493586,'2021-03-10 02:48:13','1','1','陈月','女','http://localhost:8080/jspmdz5t9/upload/1615344471714.png','副主任医师','皮肤科','擅长过敏性皮炎的诊断与治疗','13812312312');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344633998 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-10 02:26:57','用户1','123456','姓名1','男','http://localhost:8080/jspmdz5t9/upload/yonghu_touxiang1.jpg','13823888881','440300199101010001'),(12,'2021-03-10 02:26:57','用户2','123456','姓名2','男','http://localhost:8080/jspmdz5t9/upload/yonghu_touxiang2.jpg','13823888882','440300199202020002'),(13,'2021-03-10 02:26:57','用户3','123456','姓名3','男','http://localhost:8080/jspmdz5t9/upload/yonghu_touxiang3.jpg','13823888883','440300199303030003'),(14,'2021-03-10 02:26:57','用户4','123456','姓名4','男','http://localhost:8080/jspmdz5t9/upload/yonghu_touxiang4.jpg','13823888884','440300199404040004'),(15,'2021-03-10 02:26:57','用户5','123456','姓名5','男','http://localhost:8080/jspmdz5t9/upload/yonghu_touxiang5.jpg','13823888885','440300199505050005'),(16,'2021-03-10 02:26:57','用户6','123456','姓名6','男','http://localhost:8080/jspmdz5t9/upload/yonghu_touxiang6.jpg','13823888886','440300199606060006'),(1615344633997,'2021-03-10 02:50:34','2','2','陈一','女','http://localhost:8080/jspmdz5t9/upload/1615344650367.jpg','12312312312','123456789789456123');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueshijianduan`
--

DROP TABLE IF EXISTS `yuyueshijianduan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueshijianduan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianduan` varchar(200) NOT NULL COMMENT '时间段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shijianduan` (`shijianduan`)
) ENGINE=InnoDB AUTO_INCREMENT=1615344507465 DEFAULT CHARSET=utf8 COMMENT='预约时间段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueshijianduan`
--

LOCK TABLES `yuyueshijianduan` WRITE;
/*!40000 ALTER TABLE `yuyueshijianduan` DISABLE KEYS */;
INSERT INTO `yuyueshijianduan` VALUES (51,'2021-03-10 02:26:57','时间段1'),(52,'2021-03-10 02:26:57','时间段2'),(53,'2021-03-10 02:26:57','时间段3'),(54,'2021-03-10 02:26:57','时间段4'),(55,'2021-03-10 02:26:57','时间段5'),(56,'2021-03-10 02:26:57','时间段6'),(1615344507464,'2021-03-10 02:48:26','9:30-10:00');
/*!40000 ALTER TABLE `yuyueshijianduan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 20:35:57
