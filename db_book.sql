/*
Navicat MySQL Data Transfer

Source Server         : pro
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : web

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-08-29 13:28:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_book`
-- ----------------------------
DROP TABLE IF EXISTS `db_book`;
CREATE TABLE `db_book` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '留言人',
  `content` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容',
  `time` varchar(11) DEFAULT NULL COMMENT '时间',
  `tel` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_book
-- ----------------------------
INSERT INTO `db_book` VALUES ('1', '12', '12', '1503652821', '23658144');
INSERT INTO `db_book` VALUES ('5', 'dxzcs', 'dxccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '1503652821', '1234567896');
INSERT INTO `db_book` VALUES ('34', 'fdt', 'cfdxg', '1503652821', 'dsfgrtc');
INSERT INTO `db_book` VALUES ('123', 'dsf', 'cdfg', '1503652821', '264584751');
INSERT INTO `db_book` VALUES ('124', 'qweqwe', 'qweqweqwe', '1503652821', '111111');
INSERT INTO `db_book` VALUES ('125', '4444', '44444', '1503652821', '444');
INSERT INTO `db_book` VALUES ('126', '56', '74565', '1503652821', '62565');
INSERT INTO `db_book` VALUES ('128', '啊啊', '啊啊啊啊啊啊', '1503880474', '啊啊');
INSERT INTO `db_book` VALUES ('130', '啊啊11', '啊啊11', '1503881124', '啊啊11');
INSERT INTO `db_book` VALUES ('131', '啊啊11', '啊啊11', '1503905398', '啊啊11');
INSERT INTO `db_book` VALUES ('132', '啊啊11', '啊啊11', '1503905414', '啊啊11');

-- ----------------------------
-- Table structure for `db_manage`
-- ----------------------------
DROP TABLE IF EXISTS `db_manage`;
CREATE TABLE `db_manage` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `account` varchar(20) NOT NULL COMMENT '管理员',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `login_count` int(50) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `login_time` varchar(50) NOT NULL COMMENT '登陆时间',
  `login_ip` varchar(50) NOT NULL COMMENT '登陆IP',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `enclosure` varchar(50) DEFAULT NULL COMMENT '头像路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of db_manage
-- ----------------------------
INSERT INTO `db_manage` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '101', '1503972515', '0.0.0.0', '1', null);
INSERT INTO `db_manage` VALUES ('5', 'hhh', 'a3aca2964e72000eea4c56cb341002a4', '0', '1491352963', '0.0.0.0', '0', null);
INSERT INTO `db_manage` VALUES ('11', 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', '0', '1491373376', '0.0.0.0', '0', null);
INSERT INTO `db_manage` VALUES ('12', 'sss', '9f6e6800cfae7749eb6c486619254b9c', '0', '1491373386', '0.0.0.0', '0', null);
INSERT INTO `db_manage` VALUES ('13', 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '0', '1491373394', '0.0.0.0', '0', null);
INSERT INTO `db_manage` VALUES ('14', 'fff', '343d9040a671c45832ee5381860e2996', '0', '1491373405', '0.0.0.0', '0', null);
INSERT INTO `db_manage` VALUES ('19', 'a', 'd41d8cd98f00b204e9800998ecf8427e', '0', '1491442633', '0.0.0.0', '0', null);
INSERT INTO `db_manage` VALUES ('23', 'qq', '099b3b060154898840f0ebdfb46ec78f', '0', '1491465381', '0.0.0.0', '0', '/uploads/2017-04-06/58e5f4a552850.jpg');
INSERT INTO `db_manage` VALUES ('24', 'dddd', '11ddbaf3386aea1f2974eee984542152', '0', '1491466593', '0.0.0.0', '0', '/uploads/2017-04-06/58e5f96152080.jpg');
INSERT INTO `db_manage` VALUES ('25', 'asd', '7815696ecbf1c96e6894b779456d330e', '0', '1491466835', '0.0.0.0', '0', '/uploads/2017-04-06/58e5fa537c448.jpg');
INSERT INTO `db_manage` VALUES ('26', '333', '310dcbbf4cce62f762a2aaa148d556bd', '0', '1491891498', '0.0.0.0', '0', '/uploads/2017-04-11/58ec752a43d28.jpg');
INSERT INTO `db_manage` VALUES ('27', '热热热', '698d51a19d8a121ce581499d7b701668', '0', '1491891513', '0.0.0.0', '0', '/uploads/2017-04-11/58ec7539df570.jpg');
INSERT INTO `db_manage` VALUES ('28', 'rr', '514f1b439f404f86f77090fa9edc96ce', '0', '1491971170', '0.0.0.0', '0', '/uploads/2017-04-12/58edac62d65b0.jpg');
INSERT INTO `db_manage` VALUES ('29', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '0', '1491971375', '0.0.0.0', '0', '/uploads/2017-04-12/58edad2f24dd8.jpg');
INSERT INTO `db_manage` VALUES ('32', 'sss', '698d51a19d8a121ce581499d7b701668', '1', '1491982689', '0.0.0.0', '1', '/uploads/2017-04-12/58edae03320c8.jpg');
INSERT INTO `db_manage` VALUES ('33', '666', 'fae0b27c451c728867a567e8c1bb4e53', '8', '1492497120', '0.0.0.0', '1', '/uploads/2017-04-12/58edae4f73f78.jpg');
INSERT INTO `db_manage` VALUES ('34', 'mmm', '9aee390f19345028f03bb16c588550e1', '1', '1492147601', '0.0.0.0', '1', '/uploads/2017-04-14/58f02292eef79.jpg');

-- ----------------------------
-- Table structure for `db_manage_role`
-- ----------------------------
DROP TABLE IF EXISTS `db_manage_role`;
CREATE TABLE `db_manage_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `manage_id` int(20) DEFAULT NULL COMMENT '管理员的id',
  `role_id` int(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_manage_role
-- ----------------------------
INSERT INTO `db_manage_role` VALUES ('2', '28', '2');
INSERT INTO `db_manage_role` VALUES ('6', '31', '24');
INSERT INTO `db_manage_role` VALUES ('13', '32', '6');
INSERT INTO `db_manage_role` VALUES ('20', '33', '9');
INSERT INTO `db_manage_role` VALUES ('21', '34', '20');

-- ----------------------------
-- Table structure for `db_news`
-- ----------------------------
DROP TABLE IF EXISTS `db_news`;
CREATE TABLE `db_news` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '对应导航栏id',
  `title` varchar(225) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `time` varchar(20) DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_news
-- ----------------------------
INSERT INTO `db_news` VALUES ('29', '1', 'df', '1503638792', '');
INSERT INTO `db_news` VALUES ('30', '2', 'dvgs', '1503638792', '');
INSERT INTO `db_news` VALUES ('31', '3', 'sdfc', '1503638792', 'safdrg');
INSERT INTO `db_news` VALUES ('35', '5', 'saDFa', '1503638792', 'edrfsc');
INSERT INTO `db_news` VALUES ('36', '6', 'szdfrgt', '1503638792', 'gdrtfy');
INSERT INTO `db_news` VALUES ('37', '1', 'adesrfdtg', '1503638792', 'frd');
INSERT INTO `db_news` VALUES ('38', '2', 'llmkj', '1503638792', 'fdrg');
INSERT INTO `db_news` VALUES ('39', '3', '?????', '1503638792', '?????');
INSERT INTO `db_news` VALUES ('51', '4', 'fdgdfg', '1503638792', '');
INSERT INTO `db_news` VALUES ('52', '5', '23333', '1503638792', '');
INSERT INTO `db_news` VALUES ('54', '6', 'dgdfgf', '1503638792', null);
INSERT INTO `db_news` VALUES ('56', '1', 'jhgbk', '1503638792', null);
INSERT INTO `db_news` VALUES ('57', '2', '11111111111111', '1503638792', null);
INSERT INTO `db_news` VALUES ('58', '3', '123456789', '1503638792', null);
INSERT INTO `db_news` VALUES ('59', '4', '反对法国风格和规范化', '1503638792', null);
INSERT INTO `db_news` VALUES ('61', '5', '111111111111111', '1503638792', null);
INSERT INTO `db_news` VALUES ('62', '6', '奋斗个非官方', '1503638792', null);
INSERT INTO `db_news` VALUES ('78', '1', 'aaaa', '1503638792', '<p style=\"text-align: left;\"><img src=\"http://localhost/web/Public/Admin/ueditor/php/upload1/20170825/1503638703815753.jpg\" title=\"1000.jpg\" style=\"width: 209px; height: 196px;\"/></p><p style=\"text-align: left;\">怎么样啊啊啊啊啊啊啊</p><p style=\"text-align: left;\"><img src=\"http://localhost/web/Public/Admin/ueditor/php/upload1/20170825/1503638763504074.jpg\" title=\"QQ图片20170816164919.jpg\" style=\"width: 172px; height: 168px;\"/></p>');
INSERT INTO `db_news` VALUES ('79', '4', 'fdgdfgfd', '1503914422', '<p>gdfgfdgdfg</p>');

-- ----------------------------
-- Table structure for `db_news_picture`
-- ----------------------------
DROP TABLE IF EXISTS `db_news_picture`;
CREATE TABLE `db_news_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `news_id` int(10) DEFAULT NULL COMMENT '新闻ID',
  `pic_url` varchar(50) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_news_picture
-- ----------------------------
INSERT INTO `db_news_picture` VALUES ('1', '5', '/uploads/2017-04-19/58f6e4b4cc0db.jpg');
INSERT INTO `db_news_picture` VALUES ('2', '5', '/uploads/2017-04-19/58f6e4b4cd84b.jpg');
INSERT INTO `db_news_picture` VALUES ('3', '5', '/uploads/2017-04-19/58f6e4b4cebd3.jpg');
INSERT INTO `db_news_picture` VALUES ('9', '61', '/uploads/2017-04-19/58f6f3f6b038b.jpg');
INSERT INTO `db_news_picture` VALUES ('21', '62', '/uploads/2017-04-20/58f85541a33bc.jpg');
INSERT INTO `db_news_picture` VALUES ('22', '62', '/uploads/2017-04-20/58f85541a4744.jpg');
INSERT INTO `db_news_picture` VALUES ('23', '63', '/uploads/2017-04-20/58f85d403cb1c.jpg');
INSERT INTO `db_news_picture` VALUES ('24', '63', '/uploads/2017-04-20/58f85d403dea4.jpg');
INSERT INTO `db_news_picture` VALUES ('25', '63', '/uploads/2017-04-20/58f85d403e674.jpg');
INSERT INTO `db_news_picture` VALUES ('26', '63', '/uploads/2017-04-20/58f85d403f22c.jpg');
INSERT INTO `db_news_picture` VALUES ('27', '74', '/uploads/2017-04-26/59006088ad958.jpg');
INSERT INTO `db_news_picture` VALUES ('28', '74', '/uploads/2017-04-26/59006088aece0.jpg');
INSERT INTO `db_news_picture` VALUES ('29', null, '/uploads/2017-08-24/150354459367950.jpg');
INSERT INTO `db_news_picture` VALUES ('30', null, '/uploads/2017-08-24/150354459978752.png');

-- ----------------------------
-- Table structure for `db_news_type`
-- ----------------------------
DROP TABLE IF EXISTS `db_news_type`;
CREATE TABLE `db_news_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_news_type
-- ----------------------------
INSERT INTO `db_news_type` VALUES ('1', '新闻资讯');
INSERT INTO `db_news_type` VALUES ('2', '企业动态');
INSERT INTO `db_news_type` VALUES ('3', '最新资讯');
INSERT INTO `db_news_type` VALUES ('4', '资讯中心');
INSERT INTO `db_news_type` VALUES ('5', '新闻动态');
INSERT INTO `db_news_type` VALUES ('6', '公司新闻');

-- ----------------------------
-- Table structure for `db_picture`
-- ----------------------------
DROP TABLE IF EXISTS `db_picture`;
CREATE TABLE `db_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `pic_url` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `pic_describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `pic_type` varchar(50) DEFAULT NULL COMMENT '类别：1、banner图，2、主题分区图，3、生态图',
  `pic_time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_picture
-- ----------------------------
INSERT INTO `db_picture` VALUES ('1', 'sdsd', '06/58e5f4a552850.jpg', 'sdfdsfd', '1', '2017-04-08 15:06:23');
INSERT INTO `db_picture` VALUES ('4', '给东方股份', '/uploads/', '梵蒂冈地方干豆腐干豆腐', '2', '1491786985');
INSERT INTO `db_picture` VALUES ('5', '对方水电费', '/uploads/', '对地方打工', '2', '1491787059');
INSERT INTO `db_picture` VALUES ('6', '多少分地方', '/uploads/2017-04-10/58eadd6871868.jpg', '丰东股份电饭锅', '3', '1491787112');
INSERT INTO `db_picture` VALUES ('7', '的非官方大哥', '/uploads/2017-04-10/58eae649d84f0.jpg', '<p>电饭锅电饭锅复古风格<br/></p>', '3', '1491789385');
INSERT INTO `db_picture` VALUES ('10', '4444', '/uploads/2017-04-10/58eb330e8aac0.jpg', '&lt;p&gt;&amp;lt;p&amp;gt;44444444&amp;lt;br/&amp;gt;&amp;lt;/p&amp;gt;&lt;/p&gt;', '1', '1491809038');
INSERT INTO `db_picture` VALUES ('11', 'fffff', '/uploads/2017-04-14/58f07a483aca9.jpg', '&lt;p&gt;fdddddddddfgfdgdf&lt;br/&gt;&lt;/p&gt;', '2', '1492154952');
INSERT INTO `db_picture` VALUES ('12', 'ewrere', '/uploads/2017-04-14/58f07be027bf9.jpg', '&lt;p&gt;5555555555555555&lt;br/&gt;&lt;/p&gt;', '2', '1492155360');
INSERT INTO `db_picture` VALUES ('13', '11111111111111', '/uploads/2017-04-14/58f07dafbfd91.jpg', '&lt;p&gt;1111111111111222222222&lt;br/&gt;&lt;/p&gt;', '2', '1492155823');
INSERT INTO `db_picture` VALUES ('14', '555555', '/uploads/2017-04-14/58f07ea435aa1.jpg', '&lt;p&gt;阿斯顿发斯蒂芬&lt;/p&gt;&lt;p&gt;阿斯顿发斯蒂芬&lt;/p&gt;&lt;p&gt;阿斯蒂芬&lt;br/&gt;&lt;/p&gt;', '3', '1492156068');
INSERT INTO `db_picture` VALUES ('15', '阿斯蒂芬', '/uploads/2017-04-14/58f0830904591.jpg', '&lt;p&gt;阿斯蒂芬&lt;/p&gt;&lt;p&gt;阿斯蒂芬三分&lt;/p&gt;&lt;p&gt;阿斯蒂芬&lt;br/&gt;&lt;/p&gt;', '1', '1492157193');
INSERT INTO `db_picture` VALUES ('16', '阿斯蒂芬', '/uploads/2017-04-14/58f083473b861.jpg', '&lt;p&gt;erwwerq&lt;/p&gt;&lt;p&gt;、qwerw&lt;/p&gt;&lt;p&gt;qwer&lt;br/&gt;&lt;/p&gt;', '2', '1492157255');
INSERT INTO `db_picture` VALUES ('17', '54654', '/uploads/2017-04-14/58f0856b7b7d1.jpg', '<p>鬼地方个非官方</p><p>fdgfdgfgddfgfd</p><p>的法规规定发给</p><p>鬼地方个梵蒂冈</p><p><br/></p>', '2', '1492157803');
INSERT INTO `db_picture` VALUES ('18', '54654', null, '<p>鬼地方个非官方</p><p>fdgfdgfgddfgfd</p><p>的法规规定发给</p><p>鬼地方个梵蒂冈</p><p>dfdddgdfg</p><p>vcxvdf<br/></p><p><br/></p>', '3', '1492157821');
INSERT INTO `db_picture` VALUES ('19', '东港股份', '/uploads/2017-04-14/58f0860789291.jpg', '<p>丰东股份</p><p>fdfgdfg个地方官</p><p>fgf <br/></p><p>丰东股份</p><p><br/></p>', '1', '1492157959');
INSERT INTO `db_picture` VALUES ('20', '东港股份', null, '<p>丰东股份</p><p>fdfgdfg个地方官</p><p>fgf <br/></p><p>丰东股份</p><p>电饭锅电饭锅<br/></p>', '1', '1492157969');
INSERT INTO `db_picture` VALUES ('22', '12345', '/uploads/2017-04-14/58f086f8e62d9.jpg', '<p>多少分蛋糕</p><p>dgdfg地方规定规范</p><p>dfgdf地方个地方</p><p>发的个地方化工<br/></p>', '2', '1492158200');
INSERT INTO `db_picture` VALUES ('23', '12345', '/uploads/2017-04-14/58f086f8e62d9.jpg', '<p>多少分蛋糕</p><p>dgdfg地方规定规范</p><p>dfgdf地方个地方</p><p>发的个地方化工</p><p>6546546<br/></p>', '3', '1492158216');
INSERT INTO `db_picture` VALUES ('24', '12345', '/uploads/2017-04-14/58f086f8e62d9.jpg', '<p>多少分蛋糕</p><p>dgdfg地方规定规范</p><p>dfgdf地方个地方</p><p>发的个地方化工</p><p>6546546</p><p>地方个梵蒂冈</p><p>4345435</p><p>非得粉身碎骨<br/></p>', '1', '1492159788');
INSERT INTO `db_picture` VALUES ('25', '速度是多少', '/uploads/2017-04-18/58f55ee065c23.jpg', '<p>上的放松放松<br/></p>', '2', '1492475616');

-- ----------------------------
-- Table structure for `db_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `db_privilege`;
CREATE TABLE `db_privilege` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pri_name` varchar(50) NOT NULL COMMENT '权限名称',
  `pri_pid` int(10) DEFAULT NULL COMMENT '上级权限的ID，0：代表顶级权限',
  `pri_url` varchar(50) DEFAULT NULL COMMENT '路径',
  `pri_module_name` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `pri_controller_name` varchar(20) DEFAULT NULL COMMENT '控制器名称',
  `pri_action_name` varchar(20) DEFAULT NULL COMMENT '方法名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_privilege
-- ----------------------------
INSERT INTO `db_privilege` VALUES ('1000', '基本设置', '0', null, 'Admin', null, null);
INSERT INTO `db_privilege` VALUES ('1001', '权限管理', '1000', 'Manage/Privilege/index', 'Admin', 'Privilege', 'index');
INSERT INTO `db_privilege` VALUES ('1002', '角色管理', '1000', 'Manage/Role/index', 'Admin', 'Role', 'index');
INSERT INTO `db_privilege` VALUES ('1003', '管理员管理', '1000', 'Manage/Admin/index', 'Admin', 'Admin', 'index');
INSERT INTO `db_privilege` VALUES ('2000', '栏目管理', '0', null, 'Admin', null, null);
INSERT INTO `db_privilege` VALUES ('2002', '新闻管理', '2000', 'Manage/News/index', 'Admin', 'News', 'index');
INSERT INTO `db_privilege` VALUES ('2003', '产品管理', '2000', 'Manage/Product/index', 'Admin', 'Product', 'index');
INSERT INTO `db_privilege` VALUES ('2004', '视频管理', '2000', 'Manage/Video/index', 'Admin', 'Video', 'index');
INSERT INTO `db_privilege` VALUES ('2006', '留言管理', '2000', 'Manage/Message/index', 'Admin', 'Message', 'index');

-- ----------------------------
-- Table structure for `db_product_content`
-- ----------------------------
DROP TABLE IF EXISTS `db_product_content`;
CREATE TABLE `db_product_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product_content
-- ----------------------------
INSERT INTO `db_product_content` VALUES ('1', '2', '地瓜粉', '更符合法规和法国南方姑娘', '1503638792');
INSERT INTO `db_product_content` VALUES ('2', '2', 'dfdgd', '<p>fsdfsfdsf</p>', '1503914699');

-- ----------------------------
-- Table structure for `db_product_type`
-- ----------------------------
DROP TABLE IF EXISTS `db_product_type`;
CREATE TABLE `db_product_type` (
  `id` int(10) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product_type
-- ----------------------------
INSERT INTO `db_product_type` VALUES ('1', '产品介绍');
INSERT INTO `db_product_type` VALUES ('2', '成功案例');
INSERT INTO `db_product_type` VALUES ('3', '案例展示');

-- ----------------------------
-- Table structure for `db_role`
-- ----------------------------
DROP TABLE IF EXISTS `db_role`;
CREATE TABLE `db_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_role
-- ----------------------------
INSERT INTO `db_role` VALUES ('1', '管理员');
INSERT INTO `db_role` VALUES ('2', '热热');
INSERT INTO `db_role` VALUES ('3', '1234');
INSERT INTO `db_role` VALUES ('4', '234');
INSERT INTO `db_role` VALUES ('5', '111');
INSERT INTO `db_role` VALUES ('6', '都是第三方');
INSERT INTO `db_role` VALUES ('7', '嘎嘎嘎');
INSERT INTO `db_role` VALUES ('9', '666');
INSERT INTO `db_role` VALUES ('10', '1');
INSERT INTO `db_role` VALUES ('11', 'ddd');
INSERT INTO `db_role` VALUES ('13', '丰东股份');
INSERT INTO `db_role` VALUES ('14', 'sss');
INSERT INTO `db_role` VALUES ('15', 'ccc');
INSERT INTO `db_role` VALUES ('16', 'dd');
INSERT INTO `db_role` VALUES ('17', 'a');
INSERT INTO `db_role` VALUES ('18', 'z');
INSERT INTO `db_role` VALUES ('19', 'x');
INSERT INTO `db_role` VALUES ('20', 'a');
INSERT INTO `db_role` VALUES ('24', 'mm');

-- ----------------------------
-- Table structure for `db_role_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `db_role_privilege`;
CREATE TABLE `db_role_privilege` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL COMMENT '角色ID',
  `pri_id` int(20) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_role_privilege
-- ----------------------------
INSERT INTO `db_role_privilege` VALUES ('64', '24', '1000');
INSERT INTO `db_role_privilege` VALUES ('65', '24', '1001');
INSERT INTO `db_role_privilege` VALUES ('66', '24', '1003');
INSERT INTO `db_role_privilege` VALUES ('67', '24', '2000');
INSERT INTO `db_role_privilege` VALUES ('68', '24', '2001');
INSERT INTO `db_role_privilege` VALUES ('69', '24', '2002');
INSERT INTO `db_role_privilege` VALUES ('70', '24', '2003');
INSERT INTO `db_role_privilege` VALUES ('71', '9', '2000');
INSERT INTO `db_role_privilege` VALUES ('72', '9', '2001');
INSERT INTO `db_role_privilege` VALUES ('73', '9', '2002');
INSERT INTO `db_role_privilege` VALUES ('74', '9', '2003');

-- ----------------------------
-- Table structure for `db_video`
-- ----------------------------
DROP TABLE IF EXISTS `db_video`;
CREATE TABLE `db_video` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_video
-- ----------------------------
INSERT INTO `db_video` VALUES ('1', '视频', 'https://v.qq.com/iframe/player.html?vid=c0347v9gdw0&tiny=0&auto=0', '1503974721', '<p>sdfdgdf<br/></p>');
