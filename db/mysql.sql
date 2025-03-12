DROP DATABASE IF EXISTS ssm23uzf;

CREATE DATABASE ssm23uzf default character set utf8mb4 collate utf8mb4_general_ci;

USE ssm23uzf;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,shenfenzheng) VALUES('用户1','123456','姓名1','男','http://localhost:8080/ssm23uzf/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,shenfenzheng) VALUES('用户2','123456','姓名2','男','http://localhost:8080/ssm23uzf/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,shenfenzheng) VALUES('用户3','123456','姓名3','男','http://localhost:8080/ssm23uzf/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003');

DROP TABLE IF EXISTS `shetuanfuzeren`;

CREATE TABLE `shetuanfuzeren` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shetuanbianhao` varchar(200) NOT NULL UNIQUE   COMMENT '社团编号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团负责人';

INSERT INTO shetuanfuzeren(shetuanbianhao,mima,xingming,shetuanmingcheng,xingbie,touxiang,lianxidianhua,youxiang,shenfenzheng) VALUES('社团负责人1','123456','姓名1','社团名称1','男','http://localhost:8080/ssm23uzf/upload/shetuanfuzeren_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001');
INSERT INTO shetuanfuzeren(shetuanbianhao,mima,xingming,shetuanmingcheng,xingbie,touxiang,lianxidianhua,youxiang,shenfenzheng) VALUES('社团负责人2','123456','姓名2','社团名称2','男','http://localhost:8080/ssm23uzf/upload/shetuanfuzeren_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002');
INSERT INTO shetuanfuzeren(shetuanbianhao,mima,xingming,shetuanmingcheng,xingbie,touxiang,lianxidianhua,youxiang,shenfenzheng) VALUES('社团负责人3','123456','姓名3','社团名称3','男','http://localhost:8080/ssm23uzf/upload/shetuanfuzeren_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003');

DROP TABLE IF EXISTS `shetuanxinxi`;

CREATE TABLE `shetuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200) NOT NULL   COMMENT '社团名称',
	`fenlei` varchar(200)    COMMENT '分类',
	`tupian` varchar(200)    COMMENT '图片',
	`shetuanzongzhi` varchar(200)    COMMENT '社团宗旨',
	`chuangbanriqi` date    COMMENT '创办日期',
	`shetuandizhi` varchar(200)    COMMENT '社团地址',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shetuanfengcai` longtext    COMMENT '社团风采',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团信息';

INSERT INTO shetuanxinxi(shetuanbianhao,shetuanmingcheng,fenlei,tupian,shetuanzongzhi,chuangbanriqi,shetuandizhi,lianxidianhua,youxiang,shetuanfengcai) VALUES('社团编号1','社团名称1','分类1','http://localhost:8080/ssm23uzf/upload/shetuanxinxi_tupian1.jpg','社团宗旨1',CURRENT_TIMESTAMP,'社团地址1','联系电话1','邮箱1','社团风采1');
INSERT INTO shetuanxinxi(shetuanbianhao,shetuanmingcheng,fenlei,tupian,shetuanzongzhi,chuangbanriqi,shetuandizhi,lianxidianhua,youxiang,shetuanfengcai) VALUES('社团编号2','社团名称2','分类2','http://localhost:8080/ssm23uzf/upload/shetuanxinxi_tupian2.jpg','社团宗旨2',CURRENT_TIMESTAMP,'社团地址2','联系电话2','邮箱2','社团风采2');
INSERT INTO shetuanxinxi(shetuanbianhao,shetuanmingcheng,fenlei,tupian,shetuanzongzhi,chuangbanriqi,shetuandizhi,lianxidianhua,youxiang,shetuanfengcai) VALUES('社团编号3','社团名称3','分类3','http://localhost:8080/ssm23uzf/upload/shetuanxinxi_tupian3.jpg','社团宗旨3',CURRENT_TIMESTAMP,'社团地址3','联系电话3','邮箱3','社团风采3');

DROP TABLE IF EXISTS `shetuanfenlei`;

CREATE TABLE `shetuanfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`fenlei` varchar(200) NOT NULL UNIQUE   COMMENT '分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团分类';

INSERT INTO shetuanfenlei(fenlei) VALUES('分类1');
INSERT INTO shetuanfenlei(fenlei) VALUES('分类2');
INSERT INTO shetuanfenlei(fenlei) VALUES('分类3');

DROP TABLE IF EXISTS `shetuanxinwen`;

CREATE TABLE `shetuanxinwen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`leixing` varchar(200)    COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`neirong` longtext    COMMENT '内容',
	`faburiqi` date    COMMENT '发布日期',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团新闻';

INSERT INTO shetuanxinwen(biaoti,leixing,tupian,neirong,faburiqi,shetuanbianhao,shetuanmingcheng) VALUES('标题1','类型1','http://localhost:8080/ssm23uzf/upload/shetuanxinwen_tupian1.jpg','内容1',CURRENT_TIMESTAMP,'社团编号1','社团名称1');
INSERT INTO shetuanxinwen(biaoti,leixing,tupian,neirong,faburiqi,shetuanbianhao,shetuanmingcheng) VALUES('标题2','类型2','http://localhost:8080/ssm23uzf/upload/shetuanxinwen_tupian2.jpg','内容2',CURRENT_TIMESTAMP,'社团编号2','社团名称2');
INSERT INTO shetuanxinwen(biaoti,leixing,tupian,neirong,faburiqi,shetuanbianhao,shetuanmingcheng) VALUES('标题3','类型3','http://localhost:8080/ssm23uzf/upload/shetuanxinwen_tupian3.jpg','内容3',CURRENT_TIMESTAMP,'社团编号3','社团名称3');

DROP TABLE IF EXISTS `yonghuzixun`;

CREATE TABLE `yonghuzixun` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	`tupian` varchar(200)    COMMENT '图片',
	`zixunneirong` longtext    COMMENT '咨询内容',
	`liuyanriqi` date    COMMENT '留言日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户咨询';

INSERT INTO yonghuzixun(shetuanbianhao,shetuanmingcheng,tupian,zixunneirong,liuyanriqi,beizhu,yonghuming,shouji,sfsh,shhf) VALUES('社团编号1','社团名称1','http://localhost:8080/ssm23uzf/upload/yonghuzixun_tupian1.jpg','咨询内容1',CURRENT_TIMESTAMP,'备注1','用户名1','手机1','否','');
INSERT INTO yonghuzixun(shetuanbianhao,shetuanmingcheng,tupian,zixunneirong,liuyanriqi,beizhu,yonghuming,shouji,sfsh,shhf) VALUES('社团编号2','社团名称2','http://localhost:8080/ssm23uzf/upload/yonghuzixun_tupian2.jpg','咨询内容2',CURRENT_TIMESTAMP,'备注2','用户名2','手机2','否','');
INSERT INTO yonghuzixun(shetuanbianhao,shetuanmingcheng,tupian,zixunneirong,liuyanriqi,beizhu,yonghuming,shouji,sfsh,shhf) VALUES('社团编号3','社团名称3','http://localhost:8080/ssm23uzf/upload/yonghuzixun_tupian3.jpg','咨询内容3',CURRENT_TIMESTAMP,'备注3','用户名3','手机3','否','');

DROP TABLE IF EXISTS `shetuanhuodong`;

CREATE TABLE `shetuanhuodong` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`huodongmingcheng` varchar(200) NOT NULL   COMMENT '活动名称',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`huodongriqi` date    COMMENT '活动日期',
	`huodongdidian` varchar(200)    COMMENT '活动地点',
	`huodongneirong` longtext    COMMENT '活动内容',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团活动';

INSERT INTO shetuanhuodong(huodongmingcheng,leixing,tupian,huodongriqi,huodongdidian,huodongneirong,shetuanbianhao,shetuanmingcheng,lianxidianhua) VALUES('活动名称1','类型1','http://localhost:8080/ssm23uzf/upload/shetuanhuodong_tupian1.jpg',CURRENT_TIMESTAMP,'活动地点1','活动内容1','社团编号1','社团名称1','联系电话1');
INSERT INTO shetuanhuodong(huodongmingcheng,leixing,tupian,huodongriqi,huodongdidian,huodongneirong,shetuanbianhao,shetuanmingcheng,lianxidianhua) VALUES('活动名称2','类型2','http://localhost:8080/ssm23uzf/upload/shetuanhuodong_tupian2.jpg',CURRENT_TIMESTAMP,'活动地点2','活动内容2','社团编号2','社团名称2','联系电话2');
INSERT INTO shetuanhuodong(huodongmingcheng,leixing,tupian,huodongriqi,huodongdidian,huodongneirong,shetuanbianhao,shetuanmingcheng,lianxidianhua) VALUES('活动名称3','类型3','http://localhost:8080/ssm23uzf/upload/shetuanhuodong_tupian3.jpg',CURRENT_TIMESTAMP,'活动地点3','活动内容3','社团编号3','社团名称3','联系电话3');

DROP TABLE IF EXISTS `shetuanchengyuan`;

CREATE TABLE `shetuanchengyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	`fenlei` varchar(200)    COMMENT '分类',
	`tupian` varchar(200)    COMMENT '图片',
	`shenqingneirong` varchar(200) NOT NULL   COMMENT '申请内容',
	`shenqingriqi` date    COMMENT '申请日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团成员';

INSERT INTO shetuanchengyuan(shetuanbianhao,shetuanmingcheng,fenlei,tupian,shenqingneirong,shenqingriqi,beizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES('社团编号1','社团名称1','分类1','http://localhost:8080/ssm23uzf/upload/shetuanchengyuan_tupian1.jpg','申请内容1',CURRENT_TIMESTAMP,'备注1','用户名1','姓名1','手机1','否','');
INSERT INTO shetuanchengyuan(shetuanbianhao,shetuanmingcheng,fenlei,tupian,shenqingneirong,shenqingriqi,beizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES('社团编号2','社团名称2','分类2','http://localhost:8080/ssm23uzf/upload/shetuanchengyuan_tupian2.jpg','申请内容2',CURRENT_TIMESTAMP,'备注2','用户名2','姓名2','手机2','否','');
INSERT INTO shetuanchengyuan(shetuanbianhao,shetuanmingcheng,fenlei,tupian,shenqingneirong,shenqingriqi,beizhu,yonghuming,xingming,shouji,sfsh,shhf) VALUES('社团编号3','社团名称3','分类3','http://localhost:8080/ssm23uzf/upload/shetuanchengyuan_tupian3.jpg','申请内容3',CURRENT_TIMESTAMP,'备注3','用户名3','姓名3','手机3','否','');

DROP TABLE IF EXISTS `shetuanjingfei`;

CREATE TABLE `shetuanjingfei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jingfeimingcheng` varchar(200) NOT NULL   COMMENT '经费名称',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	`shiyongzhuangtai` varchar(200)    COMMENT '使用状态',
	`feiyong` int NOT NULL   COMMENT '费用',
	`dengjiriqi` date    COMMENT '登记日期',
	`jingfeineirong` longtext    COMMENT '经费内容',
	`beizhu` varchar(200)    COMMENT '备注',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团经费';

INSERT INTO shetuanjingfei(jingfeimingcheng,shetuanbianhao,shetuanmingcheng,shiyongzhuangtai,feiyong,dengjiriqi,jingfeineirong,beizhu) VALUES('经费名称1','社团编号1','社团名称1','收入',1,CURRENT_TIMESTAMP,'经费内容1','备注1');
INSERT INTO shetuanjingfei(jingfeimingcheng,shetuanbianhao,shetuanmingcheng,shiyongzhuangtai,feiyong,dengjiriqi,jingfeineirong,beizhu) VALUES('经费名称2','社团编号2','社团名称2','收入',2,CURRENT_TIMESTAMP,'经费内容2','备注2');
INSERT INTO shetuanjingfei(jingfeimingcheng,shetuanbianhao,shetuanmingcheng,shiyongzhuangtai,feiyong,dengjiriqi,jingfeineirong,beizhu) VALUES('经费名称3','社团编号3','社团名称3','收入',3,CURRENT_TIMESTAMP,'经费内容3','备注3');

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`huodongmingcheng` varchar(200)    COMMENT '活动名称',
	`shetuanbianhao` varchar(200)    COMMENT '社团编号',
	`shetuanmingcheng` varchar(200)    COMMENT '社团名称',
	`leixing` varchar(200)    COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`huodongriqi` varchar(200)    COMMENT '活动日期',
	`huodongdidian` varchar(200)    COMMENT '活动地点',
	`shenqingneirong` varchar(200)    COMMENT '申请内容',
	`baomingriqi` date    COMMENT '报名日期',
	`qita` varchar(200)    COMMENT '其它',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动报名';

INSERT INTO huodongbaoming(huodongmingcheng,shetuanbianhao,shetuanmingcheng,leixing,tupian,huodongriqi,huodongdidian,shenqingneirong,baomingriqi,qita,yonghuming,xingming,shouji,sfsh,shhf) VALUES('活动名称1','社团编号1','社团名称1','类型1','http://localhost:8080/ssm23uzf/upload/huodongbaoming_tupian1.jpg','活动日期1','活动地点1','申请内容1',CURRENT_TIMESTAMP,'其它1','用户名1','姓名1','手机1','否','');
INSERT INTO huodongbaoming(huodongmingcheng,shetuanbianhao,shetuanmingcheng,leixing,tupian,huodongriqi,huodongdidian,shenqingneirong,baomingriqi,qita,yonghuming,xingming,shouji,sfsh,shhf) VALUES('活动名称2','社团编号2','社团名称2','类型2','http://localhost:8080/ssm23uzf/upload/huodongbaoming_tupian2.jpg','活动日期2','活动地点2','申请内容2',CURRENT_TIMESTAMP,'其它2','用户名2','姓名2','手机2','否','');
INSERT INTO huodongbaoming(huodongmingcheng,shetuanbianhao,shetuanmingcheng,leixing,tupian,huodongriqi,huodongdidian,shenqingneirong,baomingriqi,qita,yonghuming,xingming,shouji,sfsh,shhf) VALUES('活动名称3','社团编号3','社团名称3','类型3','http://localhost:8080/ssm23uzf/upload/huodongbaoming_tupian3.jpg','活动日期3','活动地点3','申请内容3',CURRENT_TIMESTAMP,'其它3','用户名3','姓名3','手机3','否','');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/ssm23uzf/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/ssm23uzf/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/ssm23uzf/upload/storeup_picture3.jpg');

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(userid,username,content,reply) VALUES(1,'用户名1','留言内容1','回复内容1');
INSERT INTO messages(userid,username,content,reply) VALUES(2,'用户名2','留言内容2','回复内容2');
INSERT INTO messages(userid,username,content,reply) VALUES(3,'用户名3','留言内容3','回复内容3');

DROP TABLE IF EXISTS `discussshetuanxinxi`;

CREATE TABLE `discussshetuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团信息评论表';

INSERT INTO discussshetuanxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussshetuanxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussshetuanxinxi(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discussshetuanxinwen`;

CREATE TABLE `discussshetuanxinwen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团新闻评论表';

INSERT INTO discussshetuanxinwen(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussshetuanxinwen(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussshetuanxinwen(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discussshetuanhuodong`;

CREATE TABLE `discussshetuanhuodong` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社团活动评论表';

INSERT INTO discussshetuanhuodong(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussshetuanhuodong(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussshetuanhuodong(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssm23uzf/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssm23uzf/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssm23uzf/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssm23uzf/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssm23uzf/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

