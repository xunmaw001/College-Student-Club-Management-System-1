/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : ssm23uzf

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-26 09:22:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssm23uzf/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssm23uzf/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssm23uzf/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssm23uzf/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssm23uzf/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for discussshetuanhuodong
-- ----------------------------
DROP TABLE IF EXISTS `discussshetuanhuodong`;
CREATE TABLE `discussshetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='社团活动评论表';

-- ----------------------------
-- Records of discussshetuanhuodong
-- ----------------------------
INSERT INTO `discussshetuanhuodong` VALUES ('1', '2020-11-26 08:48:08', '1', '评论内容1', '1');
INSERT INTO `discussshetuanhuodong` VALUES ('2', '2020-11-26 08:48:08', '2', '评论内容2', '2');
INSERT INTO `discussshetuanhuodong` VALUES ('3', '2020-11-26 08:48:08', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for discussshetuanxinwen
-- ----------------------------
DROP TABLE IF EXISTS `discussshetuanxinwen`;
CREATE TABLE `discussshetuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606353506719 DEFAULT CHARSET=utf8 COMMENT='社团新闻评论表';

-- ----------------------------
-- Records of discussshetuanxinwen
-- ----------------------------
INSERT INTO `discussshetuanxinwen` VALUES ('1', '2020-11-26 08:48:08', '1', '评论内容1', '1');
INSERT INTO `discussshetuanxinwen` VALUES ('2', '2020-11-26 08:48:08', '2', '评论内容2', '2');
INSERT INTO `discussshetuanxinwen` VALUES ('3', '2020-11-26 08:48:08', '3', '评论内容3', '3');
INSERT INTO `discussshetuanxinwen` VALUES ('1606353506718', '2020-11-26 09:18:26', '1606352249951', '11', '1606353463334');

-- ----------------------------
-- Table structure for discussshetuanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshetuanxinxi`;
CREATE TABLE `discussshetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='社团信息评论表';

-- ----------------------------
-- Records of discussshetuanxinxi
-- ----------------------------
INSERT INTO `discussshetuanxinxi` VALUES ('1', '2020-11-26 08:48:08', '1', '评论内容1', '1');
INSERT INTO `discussshetuanxinxi` VALUES ('2', '2020-11-26 08:48:08', '2', '评论内容2', '2');
INSERT INTO `discussshetuanxinxi` VALUES ('3', '2020-11-26 08:48:08', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for huodongbaoming
-- ----------------------------
DROP TABLE IF EXISTS `huodongbaoming`;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huodongriqi` varchar(200) DEFAULT NULL COMMENT '活动日期',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `shenqingneirong` varchar(200) DEFAULT NULL COMMENT '申请内容',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `qita` varchar(200) DEFAULT NULL COMMENT '其它',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606352381504 DEFAULT CHARSET=utf8 COMMENT='活动报名';

-- ----------------------------
-- Records of huodongbaoming
-- ----------------------------
INSERT INTO `huodongbaoming` VALUES ('1', '2020-11-26 08:48:08', '活动名称1', '社团编号1', '社团名称1', '类型1', 'http://localhost:8080/ssm23uzf/upload/huodongbaoming_tupian1.jpg', '活动日期1', '活动地点1', '申请内容1', '2020-11-26', '其它1', '用户名1', '姓名1', '手机1', '否', '');
INSERT INTO `huodongbaoming` VALUES ('2', '2020-11-26 08:48:08', '活动名称2', '社团编号2', '社团名称2', '类型2', 'http://localhost:8080/ssm23uzf/upload/huodongbaoming_tupian2.jpg', '活动日期2', '活动地点2', '申请内容2', '2020-11-26', '其它2', '用户名2', '姓名2', '手机2', '否', '');
INSERT INTO `huodongbaoming` VALUES ('3', '2020-11-26 08:48:08', '活动名称3', '社团编号3', '社团名称3', '类型3', 'http://localhost:8080/ssm23uzf/upload/huodongbaoming_tupian3.jpg', '活动日期3', '活动地点3', '申请内容3', '2020-11-26', '其它3', '用户名3', '姓名3', '手机3', '否', '');
INSERT INTO `huodongbaoming` VALUES ('1606352381503', '2020-11-26 08:59:40', '瑜伽体验', '001', '舞蹈协会', '体验类', 'http://localhost:8080/ssm23uzf/upload/1606352276593.jpg', '2020-12-02', '校体操室', '11', '2020-12-12', '', '用户1', '姓名1', '13823888881', '是', null);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606353531555 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '2020-11-26 08:48:08', '1', '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES ('2', '2020-11-26 08:48:08', '2', '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES ('3', '2020-11-26 08:48:08', '3', '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES ('1606353241742', '2020-11-26 09:14:01', '1', '用户1', '我要留言', '这里可以回复用户的留言');
INSERT INTO `messages` VALUES ('1606353519825', '2020-11-26 09:18:39', '1606353463334', '000', '这里添加留言', null);
INSERT INTO `messages` VALUES ('1606353531554', '2020-11-26 09:18:50', '1606353463334', '000', '管理员回复后会在这里显示', null);

-- ----------------------------
-- Table structure for shetuanchengyuan
-- ----------------------------
DROP TABLE IF EXISTS `shetuanchengyuan`;
CREATE TABLE `shetuanchengyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shenqingneirong` varchar(200) NOT NULL COMMENT '申请内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606352389049 DEFAULT CHARSET=utf8 COMMENT='社团成员';

-- ----------------------------
-- Records of shetuanchengyuan
-- ----------------------------
INSERT INTO `shetuanchengyuan` VALUES ('1', '2020-11-26 08:48:08', '社团编号1', '社团名称1', '分类1', 'http://localhost:8080/ssm23uzf/upload/shetuanchengyuan_tupian1.jpg', '申请内容1', '2020-11-26', '备注1', '用户名1', '姓名1', '手机1', '否', '');
INSERT INTO `shetuanchengyuan` VALUES ('2', '2020-11-26 08:48:08', '社团编号2', '社团名称2', '分类2', 'http://localhost:8080/ssm23uzf/upload/shetuanchengyuan_tupian2.jpg', '申请内容2', '2020-11-26', '备注2', '用户名2', '姓名2', '手机2', '否', '');
INSERT INTO `shetuanchengyuan` VALUES ('3', '2020-11-26 08:48:08', '社团编号3', '社团名称3', '分类3', 'http://localhost:8080/ssm23uzf/upload/shetuanchengyuan_tupian3.jpg', '申请内容3', '2020-11-26', '备注3', '用户名3', '姓名3', '手机3', '否', '');
INSERT INTO `shetuanchengyuan` VALUES ('1606352389048', '2020-11-26 08:59:48', '001', '舞蹈协会', '文艺类', 'http://localhost:8080/ssm23uzf/upload/1606352145310.jpg', '1111', '2020-12-08', '', '用户1', '姓名1', '13823888881', '是', '1');

-- ----------------------------
-- Table structure for shetuanfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shetuanfenlei`;
CREATE TABLE `shetuanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='社团分类';

-- ----------------------------
-- Records of shetuanfenlei
-- ----------------------------
INSERT INTO `shetuanfenlei` VALUES ('1', '2020-11-26 08:48:08', '文艺类');
INSERT INTO `shetuanfenlei` VALUES ('2', '2020-11-26 08:48:08', '体育类');
INSERT INTO `shetuanfenlei` VALUES ('3', '2020-11-26 08:48:08', '公益类');

-- ----------------------------
-- Table structure for shetuanfuzeren
-- ----------------------------
DROP TABLE IF EXISTS `shetuanfuzeren`;
CREATE TABLE `shetuanfuzeren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) NOT NULL COMMENT '社团编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shetuanbianhao` (`shetuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='社团负责人';

-- ----------------------------
-- Records of shetuanfuzeren
-- ----------------------------
INSERT INTO `shetuanfuzeren` VALUES ('1', '2020-11-26 08:48:08', '001', '001', '小叶', '舞蹈协会', '女', 'http://localhost:8080/ssm23uzf/upload/shetuanfuzeren_touxiang1.jpg', '13823888881', '773890001@qq.com', '440300199101010001');
INSERT INTO `shetuanfuzeren` VALUES ('2', '2020-11-26 08:48:08', '社团负责人2', '123456', '姓名2', '社团名称2', '男', 'http://localhost:8080/ssm23uzf/upload/shetuanfuzeren_touxiang2.jpg', '13823888882', '773890002@qq.com', '440300199202020002');
INSERT INTO `shetuanfuzeren` VALUES ('3', '2020-11-26 08:48:08', '社团负责人3', '123456', '姓名3', '社团名称3', '男', 'http://localhost:8080/ssm23uzf/upload/shetuanfuzeren_touxiang3.jpg', '13823888883', '773890003@qq.com', '440300199303030003');

-- ----------------------------
-- Table structure for shetuanhuodong
-- ----------------------------
DROP TABLE IF EXISTS `shetuanhuodong`;
CREATE TABLE `shetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huodongriqi` date DEFAULT NULL COMMENT '活动日期',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongneirong` longtext COMMENT '活动内容',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606352303616 DEFAULT CHARSET=utf8 COMMENT='社团活动';

-- ----------------------------
-- Records of shetuanhuodong
-- ----------------------------
INSERT INTO `shetuanhuodong` VALUES ('1', '2020-11-26 08:48:08', '活动名称1', '类型1', 'http://localhost:8080/ssm23uzf/upload/shetuanhuodong_tupian1.jpg', '2020-11-26', '活动地点1', '活动内容1', '社团编号1', '社团名称1', '联系电话1');
INSERT INTO `shetuanhuodong` VALUES ('2', '2020-11-26 08:48:08', '活动名称2', '类型2', 'http://localhost:8080/ssm23uzf/upload/shetuanhuodong_tupian2.jpg', '2020-11-26', '活动地点2', '活动内容2', '社团编号2', '社团名称2', '联系电话2');
INSERT INTO `shetuanhuodong` VALUES ('3', '2020-11-26 08:48:08', '活动名称3', '类型3', 'http://localhost:8080/ssm23uzf/upload/shetuanhuodong_tupian3.jpg', '2020-11-26', '活动地点3', '活动内容3', '社团编号3', '社团名称3', '联系电话3');
INSERT INTO `shetuanhuodong` VALUES ('1606352303615', '2020-11-26 08:58:23', '瑜伽体验', '体验类', 'http://localhost:8080/ssm23uzf/upload/1606352276593.jpg', '2020-12-02', '校体操室', '<p><img src=\"http://localhost:8080/ssm23uzf/upload/1606352302109.jpg\"></p>', '001', '舞蹈协会', '13823888881');

-- ----------------------------
-- Table structure for shetuanjingfei
-- ----------------------------
DROP TABLE IF EXISTS `shetuanjingfei`;
CREATE TABLE `shetuanjingfei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingfeimingcheng` varchar(200) NOT NULL COMMENT '经费名称',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shiyongzhuangtai` varchar(200) DEFAULT NULL COMMENT '使用状态',
  `feiyong` int(11) NOT NULL COMMENT '费用',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `jingfeineirong` longtext COMMENT '经费内容',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606352319800 DEFAULT CHARSET=utf8 COMMENT='社团经费';

-- ----------------------------
-- Records of shetuanjingfei
-- ----------------------------
INSERT INTO `shetuanjingfei` VALUES ('1', '2020-11-26 08:48:08', '经费名称1', '社团编号1', '社团名称1', '收入', '1', '2020-11-26', '经费内容1', '备注1');
INSERT INTO `shetuanjingfei` VALUES ('2', '2020-11-26 08:48:08', '经费名称2', '社团编号2', '社团名称2', '收入', '2', '2020-11-26', '经费内容2', '备注2');
INSERT INTO `shetuanjingfei` VALUES ('3', '2020-11-26 08:48:08', '经费名称3', '社团编号3', '社团名称3', '收入', '3', '2020-11-26', '经费内容3', '备注3');
INSERT INTO `shetuanjingfei` VALUES ('1606352319799', '2020-11-26 08:58:38', '经费', '001', '舞蹈协会', '支出', '100', '2020-11-24', '<p>租场地</p>', '');

-- ----------------------------
-- Table structure for shetuanxinwen
-- ----------------------------
DROP TABLE IF EXISTS `shetuanxinwen`;
CREATE TABLE `shetuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606352249952 DEFAULT CHARSET=utf8 COMMENT='社团新闻';

-- ----------------------------
-- Records of shetuanxinwen
-- ----------------------------
INSERT INTO `shetuanxinwen` VALUES ('1', '2020-11-26 08:48:08', '标题1', '类型1', 'http://localhost:8080/ssm23uzf/upload/shetuanxinwen_tupian1.jpg', '内容1', '2020-11-26', '社团编号1', '社团名称1');
INSERT INTO `shetuanxinwen` VALUES ('2', '2020-11-26 08:48:08', '标题2', '类型2', 'http://localhost:8080/ssm23uzf/upload/shetuanxinwen_tupian2.jpg', '内容2', '2020-11-26', '社团编号2', '社团名称2');
INSERT INTO `shetuanxinwen` VALUES ('3', '2020-11-26 08:48:08', '标题3', '类型3', 'http://localhost:8080/ssm23uzf/upload/shetuanxinwen_tupian3.jpg', '内容3', '2020-11-26', '社团编号3', '社团名称3');
INSERT INTO `shetuanxinwen` VALUES ('1606352249951', '2020-11-26 08:57:29', '舞蹈协会新闻', '新闻资讯', 'http://localhost:8080/ssm23uzf/upload/1606352243173.jpg', '<p><img src=\"http://localhost:8080/ssm23uzf/upload/1606352248317.jpg\"></p>', '2020-11-15', '001', '舞蹈协会');

-- ----------------------------
-- Table structure for shetuanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shetuanxinxi`;
CREATE TABLE `shetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shetuanzongzhi` varchar(200) DEFAULT NULL COMMENT '社团宗旨',
  `chuangbanriqi` date DEFAULT NULL COMMENT '创办日期',
  `shetuandizhi` varchar(200) DEFAULT NULL COMMENT '社团地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shetuanfengcai` longtext COMMENT '社团风采',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='社团信息';

-- ----------------------------
-- Records of shetuanxinxi
-- ----------------------------
INSERT INTO `shetuanxinxi` VALUES ('1', '2020-11-26 08:48:08', '001', '舞蹈协会', '文艺类', 'http://localhost:8080/ssm23uzf/upload/1606352145310.jpg', '社团宗旨1', '2019-11-10', '社团地址1', '16549878988', '163235@1563.com', '<p><img src=\"http://localhost:8080/ssm23uzf/upload/1606352170875.jpg\"></p>');
INSERT INTO `shetuanxinxi` VALUES ('2', '2020-11-26 08:48:08', '社团编号2', '社团名称2', '分类2', 'http://localhost:8080/ssm23uzf/upload/shetuanxinxi_tupian2.jpg', '社团宗旨2', '2020-11-26', '社团地址2', '联系电话2', '邮箱2', '社团风采2');
INSERT INTO `shetuanxinxi` VALUES ('3', '2020-11-26 08:48:08', '社团编号3', '社团名称3', '分类3', 'http://localhost:8080/ssm23uzf/upload/shetuanxinxi_tupian3.jpg', '社团宗旨3', '2020-11-26', '社团地址3', '联系电话3', '邮箱3', '社团风采3');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606353502859 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('2', '2020-11-26 08:48:08', '2', '2', '表名2', '收藏名称2', 'http://localhost:8080/ssm23uzf/upload/storeup_picture2.jpg');
INSERT INTO `storeup` VALUES ('3', '2020-11-26 08:48:08', '3', '3', '表名3', '收藏名称3', 'http://localhost:8080/ssm23uzf/upload/storeup_picture3.jpg');
INSERT INTO `storeup` VALUES ('1606352339743', '2020-11-26 08:58:58', '1', '1606352249951', 'shetuanxinwen', '舞蹈协会新闻', 'http://localhost:8080/ssm23uzf/upload/1606352243173.jpg');
INSERT INTO `storeup` VALUES ('1606353502858', '2020-11-26 09:18:22', '1606353463334', '2', 'shetuanxinxi', '社团名称2', 'http://localhost:8080/ssm23uzf/upload/shetuanxinxi_tupian2.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'u5ig12laqtbgrydk40fc8w4z7s4xluhw', '2020-11-26 08:51:38', '2020-11-26 10:14:29');
INSERT INTO `token` VALUES ('2', '1', '001', 'shetuanfuzeren', '社团负责人', '4mp2gygp8w2j56igu3usrz2xgbxx9rtb', '2020-11-26 08:56:24', '2020-11-26 10:16:23');
INSERT INTO `token` VALUES ('3', '1', '用户1', 'yonghu', '用户', 'h4m6p3csrj9it2hpimjxcoqk7292ux9l', '2020-11-26 08:58:53', '2020-11-26 10:19:13');
INSERT INTO `token` VALUES ('4', '1606353463334', '000', 'yonghu', '用户', 'ihimlbibt5o6ldw3wwjnui9spfugk2n4', '2020-11-26 09:17:47', '2020-11-26 10:17:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-11-26 08:48:08');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1606353463335 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-11-26 08:48:08', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/ssm23uzf/upload/yonghu_touxiang1.jpg', '13823888881', '773890001@qq.com', '440300199101010001');
INSERT INTO `yonghu` VALUES ('2', '2020-11-26 08:48:08', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/ssm23uzf/upload/yonghu_touxiang2.jpg', '13823888882', '773890002@qq.com', '440300199202020002');
INSERT INTO `yonghu` VALUES ('3', '2020-11-26 08:48:08', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/ssm23uzf/upload/yonghu_touxiang3.jpg', '13823888883', '773890003@qq.com', '440300199303030003');
INSERT INTO `yonghu` VALUES ('1606353463334', '2020-11-26 09:17:43', '000', '000', '小刘', null, null, '16549878988', '1623@153.com', '654512326545987898');

-- ----------------------------
-- Table structure for yonghuzixun
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzixun`;
CREATE TABLE `yonghuzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanbianhao` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zixunneirong` longtext COMMENT '咨询内容',
  `liuyanriqi` date DEFAULT NULL COMMENT '留言日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606352369773 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

-- ----------------------------
-- Records of yonghuzixun
-- ----------------------------
INSERT INTO `yonghuzixun` VALUES ('1606352369772', '2020-11-26 08:59:29', '001', '舞蹈协会', 'http://localhost:8080/ssm23uzf/upload/1606352145310.jpg', '<p>咨询</p>', '2020-12-11', '', '用户1', '13823888881', '是', '111这里回复用户咨询');
