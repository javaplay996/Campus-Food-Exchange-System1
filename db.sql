/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2k04k
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2k04k` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2k04k`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876760247 DEFAULT CHARSET=utf8 COMMENT='网站建议';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-02-21 10:50:00',1,1,'提问1','回复1',1),(42,'2021-02-21 10:50:00',2,2,'提问2','回复2',2),(43,'2021-02-21 10:50:00',3,3,'提问3','回复3',3),(44,'2021-02-21 10:50:00',4,4,'提问4','回复4',4),(45,'2021-02-21 10:50:00',5,5,'提问5','回复5',5),(46,'2021-02-21 10:50:00',6,6,'提问6','回复6',6),(1613876554555,'2021-02-21 11:02:34',1613876449488,NULL,'这里可以给管理员发信息  一些建议之类',NULL,0),(1613876760246,'2021-02-21 11:05:59',1613876449488,1,NULL,'这里回复用户发的消息',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2k04k/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2k04k/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2k04k/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussmeishixinxi` */

DROP TABLE IF EXISTS `discussmeishixinxi`;

CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876483968 DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';

/*Data for the table `discussmeishixinxi` */

insert  into `discussmeishixinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (81,'2021-02-21 10:50:00',1,1,'评论内容1','回复内容1'),(82,'2021-02-21 10:50:00',2,2,'评论内容2','回复内容2'),(83,'2021-02-21 10:50:00',3,3,'评论内容3','回复内容3'),(84,'2021-02-21 10:50:00',4,4,'评论内容4','回复内容4'),(85,'2021-02-21 10:50:00',5,5,'评论内容5','回复内容5'),(86,'2021-02-21 10:50:00',6,6,'评论内容6','回复内容6'),(1613876483967,'2021-02-21 11:01:23',21,1613876449488,'用户登录后可以收藏  评论   发帖等操作','这里查看回复用户评论');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876538008 DEFAULT CHARSET=utf8 COMMENT='论坛中心';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1613876372049,'2021-02-21 10:59:32','“潮州菜师傅”特色美食交流活动火热进行','<p class=\"ql-align-justify\">本报讯 （记者 吴育杭）10月1日起，市区上东平路美食街示范段举行为期三天的“潮州菜师傅”特色美食交流活动。美食街上豆花、草粿、糖葱薄饼、卤味、红桃粿等美食展位一字排开，吸引了络绎不绝的市民和各方游客。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">本土特色美食是一张对外形象宣传的靓丽名片。对于此次特色美食交流活动，市民游客赞不绝口，不少人表示，希望继续举办此类活动，进一步推广潮州特色美食，助力旅游业发展更上一层楼。</p><p class=\"ql-align-justify\">市民蔡姨和她的老姐妹相约逛美食街，不一会儿，她手里便提着满满一袋美食。“国庆节孩子们都回来了，我打算买几样卤味回去加餐，一家人好好聚一聚。”蔡姨开心地说，“很久没见过这么热闹的情景。此次美食交流活动给市民提供了一个好去处，大家齐聚在此品尝美食，感受浓厚的节日气氛，真不错！希望以后多举办这类活动，我一定大力支持。”</p><p class=\"ql-align-justify\">大学生小陈已经连续两天赶来品尝美食。2日，她特意带上外婆前来感受节目的氛围。“平时在外上学，没机会吃到正宗的家乡美食，这个假期让我大饱口福。”小陈告诉记者。</p><p class=\"ql-align-justify\"><img src=\"../../../upload/1613876371472.png\">111</p>',0,31,'用户1','开放'),(1613876406601,'2021-02-21 11:00:06','促进中日传统文化理解与交流 日本美食讲座走进校园','<p style=\"margin: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">12月16日，由日本国驻沈阳总领事馆、辽宁省人民政府外事办公室、沈阳市人民政府外事办公室共同举办的&ldquo;日本美食大讲堂&rdquo;活动在沈阳大学成功举办。沈阳大学师生以及相关美食爱好者140余人参加了本次活动。</span></p>\n<div class=\"img-container\" style=\"margin-top: 30px; font-family: arial; font-size: 12px; background-color: #ffffff;\"><img src=\"../../../upload/1613876390337.jpg\" width=\"580\" height=\"386\" /></div>\n<div class=\"img-container\" style=\"margin-top: 30px; font-family: arial; font-size: 12px; background-color: #ffffff;\"><span style=\"color: #333333; font-size: 16px; text-align: justify;\">沈阳大学外语学院的学生以及国际教育学院的学生积极踊跃的参加了本次活动，大家对现场制作的日料赞不绝口，纷纷表示今后有机会要亲自尝试制作这些日料。</span></div>',0,31,'用户1','开放'),(1613876513859,'2021-02-21 11:01:53',NULL,'这里可以评论',1613876406601,1613876449488,'666',NULL),(1613876538007,'2021-02-21 11:02:17','这里可以发帖','<p>发帖</p>\n<p><img src=\"../../../upload/1613876533631.jpg\" width=\"170\" height=\"129\" /></p>',0,1613876449488,'666','开放');

/*Table structure for table `meishifenlei` */

DROP TABLE IF EXISTS `meishifenlei`;

CREATE TABLE `meishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876610904 DEFAULT CHARSET=utf8 COMMENT='美食分类';

/*Data for the table `meishifenlei` */

insert  into `meishifenlei`(`id`,`addtime`,`fenlei`) values (11,'2021-02-21 10:50:00','粤菜'),(12,'2021-02-21 10:50:00','湘菜'),(13,'2021-02-21 10:50:00','鲁菜'),(14,'2021-02-21 10:50:00','浙菜'),(15,'2021-02-21 10:50:00','徽菜'),(1613876610903,'2021-02-21 11:03:30','这里添加美食分类');

/*Table structure for table `meishixinxi` */

DROP TABLE IF EXISTS `meishixinxi`;

CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `tese` varchar(200) DEFAULT NULL COMMENT '特色',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876687514 DEFAULT CHARSET=utf8 COMMENT='美食信息';

/*Data for the table `meishixinxi` */

insert  into `meishixinxi`(`id`,`addtime`,`meishimingcheng`,`fenlei`,`tupian`,`kouwei`,`tese`,`shipin`,`xiangqing`,`clicktime`,`clicknum`) values (21,'2021-02-21 10:50:00','美食名称1','徽菜','http://localhost:8080/ssm2k04k/upload/meishixinxi_tupian1.jpg','口味1','特色1','http://localhost:8080/ssm2k04k/upload/1613876189627.mp4','<p>详情1</p>','2021-02-21 11:06:39',6),(23,'2021-02-21 10:50:00','美食名称3','湘菜','http://localhost:8080/ssm2k04k/upload/meishixinxi_tupian3.jpg','口味3','特色3','http://localhost:8080/ssm2k04k/upload/1613876202002.mp4','<p>详情3</p>','2021-02-21 10:56:37',4),(24,'2021-02-21 10:50:00','美食名称4','分类4','http://localhost:8080/ssm2k04k/upload/meishixinxi_tupian4.jpg','口味4','特色4','','详情4','2021-02-21 10:50:00',4),(25,'2021-02-21 10:50:00','美食名称5','分类5','http://localhost:8080/ssm2k04k/upload/meishixinxi_tupian5.jpg','口味5','特色5','','详情5','2021-02-21 10:50:00',5),(26,'2021-02-21 10:50:00','美食名称6','分类6','http://localhost:8080/ssm2k04k/upload/meishixinxi_tupian6.jpg','口味6','特色6','','详情6','2021-02-21 10:50:00',6),(1613876687513,'2021-02-21 11:04:47','这里添加美食信息','湘菜','http://localhost:8080/ssm2k04k/upload/1613876647190.jpg','酸甜','AA','http://localhost:8080/ssm2k04k/upload/1613876660130.mp4','<p>视频可以上传mp4格式文件   视频可以放一些该美食的一些做法之类	</p><p><br></p>','2021-02-21 11:04:52',1);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876792299 DEFAULT CHARSET=utf8 COMMENT='美食资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-02-21 10:50:00','广州：以美食为媒 加强中日文化交流','1月13日，“正佳中日文化艺术节”收官之作——“料事渔神·中日美食文化对话”暨第三届广东花式刺身姿造大赛在广州天河区正佳万豪酒店举办。','http://localhost:8080/ssm2k04k/upload/news_picture1.jpg','<p class=\"ql-align-justify\">“料事渔神·中日美食文化对话”论坛现场 正佳集团供图</p><p class=\"ql-align-justify\">本次活动旨在通过美食架起中日文化交流桥梁，为市民游客带来精彩纷呈的美食文化盛宴，通过文化商业旅游的有机组合，擦亮广州“美食之都”招牌，提振商圈文化和旅游经济。活动中，来自广东各地的40多位日本料理厨师同台切磋技艺，饮食界的企业代表、专家和学者以“融合”为关键词，通过对话交流的形式，深入讨论中日美食在文化传承、跨国界融合创新、城市发展中发挥的作用及未来发展趋势。</p><p><br></p>'),(72,'2021-02-21 10:50:00','赏雪景 享美食 荔星传媒“星美食”自媒体创作交流沙龙圆满收官','余秋雨说：“别的故都，把历史浓缩到宫殿；而南京，把历史溶解于自然。”雪后的金陵，银装素裹，美得不可方物。','http://localhost:8080/ssm2k04k/upload/news_picture2.jpg','<p class=\"ql-align-justify\">窗外是美景，窗内是生活，一样都不能缺席。</p><p><img src=\"http://localhost:8080/ssm2k04k/upload/1613876271717.jpeg\"></p>'),(73,'2021-02-21 10:50:00','唯爱与美食不可辜负，荔星传媒“星美食”自媒体创作交流沙龙来啦！','　时光从日历上一页一页飘落，转眼又来到岁末年尾。辞旧迎新的日子里，皑皑白雪作伴，为分享创作经验、交流品牌合作案例','http://localhost:8080/ssm2k04k/upload/news_picture3.jpg','<p><strong style=\"background-color: rgb(255, 204, 0); color: rgb(255, 255, 255);\">江苏广电荔星传媒MCN将于明天（12月30日）下午3:30在肯德基长江路店举办荔星传媒“星美食”自媒体创作交流沙龙活动</strong>，届时众多江苏省内的美食界达人、品牌主将齐聚一堂，共同探讨传统餐饮与自媒体如何更好地融合，展望行业发展前景！啥都不说了，俩字：<strong style=\"color: rgb(153, 51, 0);\">期！待！</strong></p><p class=\"ql-align-center\"><img src=\"http://static.jstv.com/img/2020/12/29/202012291609225342933_245.jpg\"></p><p><br></p>'),(74,'2021-02-21 10:50:00','“两宋”美食交流品鉴会在杭州举办 开封美食深受杭州市民追捧','　近日，第五届两宋论坛“美食品鉴会”“两宋民间小吃”暨余杭特色美食展在杭州举办。此次活动共设立“两宋民间小吃点心”“两宋美食品鉴”“开封北宋名点名小吃”“杭州南宋名点名小吃”“余杭特色美食”“非遗技艺”“杭帮菜品鉴”七大展区，集合多种多样的南北宋民间小吃，以展现两宋独特的文化风韵为主题，让杭州市民以食为媒，走近两宋，感受浓浓的新中式国风。','http://localhost:8080/ssm2k04k/upload/news_picture4.jpg','<p>在“美食品鉴会”上，历史悠久、家喻户晓的桶子鸡、灌汤包、炸八块、高炉烧饼、锅贴豆腐等开封美食深受杭州市民追捧。在这次“两宋民间小吃展”上，有很多源自南北宋的名点名小吃展示供杭州市民购买。北宋名点名小吃展区有松糯香甜的开封白记花生糕、外皮酥软的晋阳豫包公饼、非物质文化技艺酿造出的红薯醋、汴梁八景新中式糕点、非遗保护的楚记卫东酱鸭和开封张氏传统八大碗、尉氏开心仁坚果、祥符区泓洋食品公司的五谷杂粮、范村嘴啦啦的麻辣花生、兰考曲大姐的中式糕点等让杭州市民一口品味最传统、最地道的北宋味道。南宋名点名小吃展区有肥而不腻的东坡肉、香脆微甜的杭州熏鱼、荷香四溢的叫花鸡等杭州名菜半成品，还有定胜糕、荷花酥等精致名点。</p><p>除了开封、杭州两地美食，两地非遗技艺匠人还将带来非遗技艺展示，开封的百年白记、杭州的法根糕点、百年复昌，为市民呈现独具开封、杭州两地特色的非遗内容，吸引众多围观者。</p><p><img src=\"http://localhost:8080/ssm2k04k/upload/1613876306800.jpg\"></p>'),(1613876792298,'2021-02-21 11:06:31','这里添加美食资讯','1212','http://localhost:8080/ssm2k04k/upload/1613876783866.jpeg','<p><img src=\"http://localhost:8080/ssm2k04k/upload/1613876788293.jpeg\"></p>');

/*Table structure for table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=1613876573405 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1613876573404,'2021-02-21 11:02:53',1613876449488,21,'meishixinxi','美食名称1','http://localhost:8080/ssm2k04k/upload/meishixinxi_tupian1.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','h48i229q1n8k0jj2r0kzzlclgaca9d8v','2021-02-21 10:52:09','2021-02-21 12:03:03'),(2,31,'用户1','yonghu','用户','nsou0va9n7xg57yyzjs5x6ypaztaqlji','2021-02-21 10:59:07','2021-02-21 11:59:07'),(3,1613876449488,'666','yonghu','用户','1y3ptf147v5w24dv1exw6oslefuvrvxi','2021-02-21 11:00:55','2021-02-21 12:00:55');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-21 10:50:00'),(2,'000','000','管理员','2021-02-21 11:05:20');

/*Table structure for table `yonghu` */

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1613876449489 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (31,'2021-02-21 10:50:00','用户1','123456','姓名1','男','http://localhost:8080/ssm2k04k/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(32,'2021-02-21 10:50:00','用户2','123456','姓名2','男','http://localhost:8080/ssm2k04k/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(33,'2021-02-21 10:50:00','用户3','123456','姓名3','男','http://localhost:8080/ssm2k04k/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(34,'2021-02-21 10:50:00','用户4','123456','姓名4','男','http://localhost:8080/ssm2k04k/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(35,'2021-02-21 10:50:00','用户5','123456','姓名5','男','http://localhost:8080/ssm2k04k/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(36,'2021-02-21 10:50:00','用户6','123456','姓名6','男','http://localhost:8080/ssm2k04k/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1613876449488,'2021-02-21 11:00:49','666','666','小李','女','http://localhost:8080/ssm2k04k/upload/1613876459776.png','16459878982','162@123.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
