/*
Navicat MySQL Data Transfer

Source Server         : pro
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : web

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-10-25 12:41:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_about_content`
-- ----------------------------
DROP TABLE IF EXISTS `db_about_content`;
CREATE TABLE `db_about_content` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) DEFAULT NULL,
  `pid` int(5) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_about_content
-- ----------------------------
INSERT INTO `db_about_content` VALUES ('1', '<p style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;text-indent:40px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:200%\"><span style=\";font-family:宋体;font-weight:normal;font-size:16px\"><span style=\"font-family:宋体\">睿诚财务管理咨询（吉林）有限公司成立于</span>2017年8月10日，公司注册资本200万元，公司注册地址在吉林省长春市南关区人民大街10606号东北亚国际金融中心2号楼406号，是腾讯研究院互联网+创业中心平台企业(吉林省智城智家科技有限公司)一部分，公司集多方英才汇聚一堂，在财务领域有多名资深会计人员，行业涉及建筑业、房地产业、工业、商业等领域；在涉税邻域秉承实质重于形式的原则，具体问题具体分析，严格执行税法，履行纳税人的责任及义务。</span></p><p style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;text-indent:37px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:200%\"><span style=\";font-family:宋体;font-weight:normal;font-size:16px\"><span style=\"font-family:宋体\">睿诚人的企业文化：诚信创新、传承品质、厚积薄发，为社会立足点滴、从我做起。愿与各方朋友齐聚一堂，愿我们的服务得到您的点赞。睿诚的经营范围：企业财务管理；企业管理内控设计；企业重组、兼并；企业纳税筹划；企业管理培训、财税培训、财务代理、代理记账、财务咨询；税务代理、税务咨询；财务软件营销、应用、咨询、财务专用办公用品；财务信息咨询。</span></span></p><p style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;text-indent:40px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:200%\"><span style=\";font-family:宋体;font-weight:normal;font-size:16px\"><span style=\"font-family:宋体\">睿诚总部设于在吉林省长春市南关区人民大街</span>10606号东北亚国际金融中心2号楼4层；电话：13689825302或0431-81115490；<span style=\"font-family:宋体\">睿诚第一分部设于吉林省长春市南关区临河街三环中海国际广场</span>A座8楼 电话：13304336233或0431-81807186</span></p><p><br/></p>', '1', '公司简介', '1508382429', '/uploads/2017-09-07/59b0a32fc3da6.png');
INSERT INTO `db_about_content` VALUES ('2', '<p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚财务管理咨询（吉林）有限公司成立于</span>2017<span style=\"font-family:宋体\">年</span><span style=\"font-family:Calibri\">8</span><span style=\"font-family:宋体\">月</span><span style=\"font-family:Calibri\">10</span><span style=\"font-family:宋体\">日，公司注册资本</span><span style=\"font-family:Calibri\">200</span><span style=\"font-family:宋体\">万元，公司注册地址在吉林省长春市南关区人民大街</span><span style=\"font-family:Calibri\">10606</span><span style=\"font-family:宋体\">号东北亚国际金融中心</span><span style=\"font-family:Calibri\">2</span><span style=\"font-family:宋体\">号楼</span><span style=\"font-family:Calibri\">406</span><span style=\"font-family:宋体\">号，是腾讯研究院互联网</span><span style=\"font-family:Calibri\">+</span><span style=\"font-family:宋体\">创业中心平台企业</span><span style=\"font-family:Calibri\">(</span><span style=\"font-family:宋体\">吉林省智城智家科技有限公司</span><span style=\"font-family:Calibri\">)</span><span style=\"font-family:宋体\">一部分，公司集多方英才汇聚一堂，在财务领域有多名资深会计人员，行业涉及建筑业、房地产业、工业、商业等领域；在涉税邻域秉承实质重于形式的原则，具体问题具体分析，严格执行税法，履行纳税人的责任及义务。</span></span></p><p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚人的企业文化：诚信创新、传承品质、厚积薄发。为社会服务敢为天下先，立足点滴、小我大我；不奢谈高大尚。愿与各方朋友齐聚一堂，愿我们的服务得到您的点赞。</span></span></p><p style=\"margin-right:0;margin-left:0;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚的经营范围：企业财务管理；企业管理内控设计；企业重组、兼并；企业纳税筹划；企业管理培训、财税培训、财务代理、代理记账、财务咨询；税务代理、税务咨询；财务软件营销、应用、咨询、财务专用办公用品；财务信息咨询。</span></span></p><p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚总部设于在吉林省长春市南关区人民大街</span>10606<span style=\"font-family:宋体\">号东北亚国际金融中心</span><span style=\"font-family:Calibri\">2</span><span style=\"font-family:宋体\">号楼</span><span style=\"font-family:Calibri\">4</span><span style=\"font-family:宋体\">层；电话：</span><span style=\"font-family:Calibri\">13689825302</span><span style=\"font-family:宋体\">或</span><span style=\"font-family:Calibri\">0431-81115490</span></span></p><p><br/></p>', '2', '企业文化', '1504748390', '/uploads/2017-09-07/59b0a366ca976.png');
INSERT INTO `db_about_content` VALUES ('3', '<p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚财务管理咨询（吉林）有限公司成立于</span>2017<span style=\"font-family:宋体\">年</span><span style=\"font-family:Calibri\">8</span><span style=\"font-family:宋体\">月</span><span style=\"font-family:Calibri\">10</span><span style=\"font-family:宋体\">日，公司注册资本</span><span style=\"font-family:Calibri\">200</span><span style=\"font-family:宋体\">万元，公司注册地址在吉林省长春市南关区人民大街</span><span style=\"font-family:Calibri\">10606</span><span style=\"font-family:宋体\">号东北亚国际金融中心</span><span style=\"font-family:Calibri\">2</span><span style=\"font-family:宋体\">号楼</span><span style=\"font-family:Calibri\">406</span><span style=\"font-family:宋体\">号，是腾讯研究院互联网</span><span style=\"font-family:Calibri\">+</span><span style=\"font-family:宋体\">创业中心平台企业</span><span style=\"font-family:Calibri\">(</span><span style=\"font-family:宋体\">吉林省智城智家科技有限公司</span><span style=\"font-family:Calibri\">)</span><span style=\"font-family:宋体\">一部分，公司集多方英才汇聚一堂，在财务领域有多名资深会计人员，行业涉及建筑业、房地产业、工业、商业等领域；在涉税邻域秉承实质重于形式的原则，具体问题具体分析，严格执行税法，履行纳税人的责任及义务。</span></span></p><p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚人的企业文化：诚信创新、传承品质、厚积薄发。为社会服务敢为天下先，立足点滴、小我大我；不奢谈高大尚。愿与各方朋友齐聚一堂，愿我们的服务得到您的点赞。</span></span></p><p style=\"margin-right:0;margin-left:0;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚的经营范围：企业财务管理；企业管理内控设计；企业重组、兼并；企业纳税筹划；企业管理培训、财税培训、财务代理、代理记账、财务咨询；税务代理、税务咨询；财务软件营销、应用、咨询、财务专用办公用品；财务信息咨询。</span></span></p><p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;line-height:27px\"><span style=\";font-family:宋体;font-size:16px\"><span style=\"font-family:宋体\">睿诚总部设于在吉林省长春市南关区人民大街</span>10606<span style=\"font-family:宋体\">号东北亚国际金融中心</span><span style=\"font-family:Calibri\">2</span><span style=\"font-family:宋体\">号楼</span><span style=\"font-family:Calibri\">4</span><span style=\"font-family:宋体\">层；电话：</span><span style=\"font-family:Calibri\">13689825302</span><span style=\"font-family:宋体\">或</span><span style=\"font-family:Calibri\">0431-81115490</span></span></p><p><br/></p>', '3', '行业资质', '1504748486', '/uploads/2017-09-07/59b0a3c6b59eb.png');

-- ----------------------------
-- Table structure for `db_about_us`
-- ----------------------------
DROP TABLE IF EXISTS `db_about_us`;
CREATE TABLE `db_about_us` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of db_about_us
-- ----------------------------
INSERT INTO `db_about_us` VALUES ('1', '公司简介');
INSERT INTO `db_about_us` VALUES ('2', '企业文化');
INSERT INTO `db_about_us` VALUES ('3', '行业资质');

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
-- Table structure for `db_daili`
-- ----------------------------
DROP TABLE IF EXISTS `db_daili`;
CREATE TABLE `db_daili` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_daili
-- ----------------------------
INSERT INTO `db_daili` VALUES ('1', '小规模企业代理记账（内资）', '200', '资深会计师向小规模企业提供包括财务核算、税务申报、出具报表、年末装订总账明细账等 服务资深会计师向小规模企业提供包括财务核算、税务申报、出具报表、年末装订总账明细账等服务', '1508906173');
INSERT INTO `db_daili` VALUES ('2', '一般纳税人企业代理记账（内资）', '500', '向一般纳税人企业提供记账、财务核算等服务，并负责日常的财税咨询及建议， 每年帮企业节约10~15万运营及人工成本。 ', '1508906314');
INSERT INTO `db_daili` VALUES ('3', '一般纳税人企业代理记账（外资、合资）', '900', '向一般纳税人企业提供记账、财务核算等服务，并负责日常的财税咨询及建议， 每年帮企业节约10~15万运营及人工成本。', '1508906323');
INSERT INTO `db_daili` VALUES ('4', '小规模企业代理记账（外资、合资）', '600', '资深会计师向小规模企业提供包括财务核算、税务申报、出具报表、年末装订总账明细账等 服务资深会计师向小规模企业提供包括财务核算、税务申报、出具报表、年末装订总账明细账等服务', '1508906332');

-- ----------------------------
-- Table structure for `db_job`
-- ----------------------------
DROP TABLE IF EXISTS `db_job`;
CREATE TABLE `db_job` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_job
-- ----------------------------
INSERT INTO `db_job` VALUES ('3', '会计', '<p>岗位职责：<br/>1、审批财务收支，审阅财务专题报告和会计报表，对重大的财务收支计划、经济合同进行会签；<br/>2、编制预算和执行预算，参与拟订资金筹措和使用方案，确保资金的有效使用；<br/>任职资格：<br/>1、会计相关专业<br/>2、2年以上工作经验，有一般纳税人企业工作经验者优先；<br/>3、认真细致，爱岗敬业，吃苦耐劳，有良好的职业操守；<br/>4、思维敏捷，接受能力强，能独立思考，善于总结工作经验；<br/>5、熟练应用财务及Office办公软件，对金蝶、用友等财务系统有实际操作者优先；<br/>6、具有良好的沟通能力；<br/>7、有会计从业资格证书，同时具备会计初级资格证者优先考虑。</p>', '1508309852');
INSERT INTO `db_job` VALUES ('4', '出纳', '<p>岗位职责<br/>1.负责办公室的文秘、信息、机要和保密工作，做好办公室档案收集、整理工作<br/>2.文书、印信、档案、宣传栏、文件报纸收发<br/>3.负责总经理办公室的清洁卫生<br/>4.复印机、传真机的管理和使用<br/>任职要求<br/>1、性别不限（必须身份证上满18）<br/>2.人品端正，性格开朗，工作认真仔细，有耐心；<br/>3.良好的逻辑思维能力、洞察力和沟通能力；<br/>4、欢迎应届、历届毕业生投递简历</p>', '1508311657');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of db_manage
-- ----------------------------
INSERT INTO `db_manage` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '118', '1508901210', '0.0.0.0', '1', null);

-- ----------------------------
-- Table structure for `db_manage_role`
-- ----------------------------
DROP TABLE IF EXISTS `db_manage_role`;
CREATE TABLE `db_manage_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `manage_id` int(20) DEFAULT NULL COMMENT '管理员的id',
  `role_id` int(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_manage_role
-- ----------------------------
INSERT INTO `db_manage_role` VALUES ('6', '31', '24');
INSERT INTO `db_manage_role` VALUES ('13', '32', '6');

-- ----------------------------
-- Table structure for `db_news`
-- ----------------------------
DROP TABLE IF EXISTS `db_news`;
CREATE TABLE `db_news` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '对应导航栏id',
  `title` varchar(225) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `time` varchar(20) DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容',
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_news
-- ----------------------------
INSERT INTO `db_news` VALUES ('81', '1', '小规模企业优惠政策', '1508232262', '<p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">1、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">增值税</span></span><span style=\";font-family:Calibri;font-size:19px\"><span style=\"font-family:宋体\">减免：</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">增值税小规模纳税人销售货物，提供加工、修理修配劳务的月销售额不超过</span>3<span style=\"font-family:宋体\">万元（按季纳税</span><span style=\"font-family:Calibri\">9</span><span style=\"font-family:宋体\">万元），销售服务、无形资产月销售额不超过</span><span style=\"font-family:Calibri\">3</span><span style=\"font-family:宋体\">万元（按季纳税</span><span style=\"font-family:Calibri\">9</span><span style=\"font-family:宋体\">万元），自</span><span style=\"font-family:Calibri\">2016</span><span style=\"font-family:宋体\">年</span><span style=\"font-family:Calibri\">5</span><span style=\"font-family:宋体\">月</span><span style=\"font-family:Calibri\">1</span><span style=\"font-family:宋体\">日起至</span><span style=\"font-family:Calibri\">2017</span><span style=\"font-family:宋体\">年</span><span style=\"font-family:Calibri\">12</span><span style=\"font-family:宋体\">月</span><span style=\"font-family:Calibri\">31</span><span style=\"font-family:宋体\">日，可分别享受小微企业免征增值税政策的销售额度。</span></span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">2、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">文化事业建设费</span></span><span style=\";font-family:Calibri;font-size:19px\"><span style=\"font-family:宋体\">减免：</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">自</span>2015<span style=\"font-family:宋体\">年</span><span style=\"font-family:Calibri\">1</span><span style=\"font-family:宋体\">月</span><span style=\"font-family:Calibri\">1</span><span style=\"font-family:宋体\">日起至</span><span style=\"font-family:Calibri\">2017</span><span style=\"font-family:宋体\">年</span><span style=\"font-family:Calibri\">12</span><span style=\"font-family:宋体\">月</span><span style=\"font-family:Calibri\">31</span><span style=\"font-family:宋体\">日，对按月纳税的月销售额不超过</span><span style=\"font-family:Calibri\">3</span><span style=\"font-family:宋体\">万元（含</span><span style=\"font-family:Calibri\">3</span><span style=\"font-family:宋体\">万元），以及按季销售额不超过</span><span style=\"font-family:Calibri\">9</span><span style=\"font-family:宋体\">万（含</span><span style=\"font-family:Calibri\">9</span><span style=\"font-family:宋体\">万元）的纳税义务人，免征文化事业建设费。</span></span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">3、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">教育费附加、地方教育费附加、水利建设基金减免：按月纳税的月销售额或营业额不超过</span>10<span style=\"font-family:宋体\">万元（按季纳税的季度销售额或营业额不超过</span><span style=\"font-family:Calibri\">30</span><span style=\"font-family:宋体\">万元）免征教育费附加、地方教育费附加、水利建设基金。</span></span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">4、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">企业</span></span><span style=\";font-family:Calibri;font-size:19px\"><span style=\"font-family:宋体\">所得税减免：</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">对年应纳税所得额低于</span>50<span style=\"font-family:宋体\">万元（含</span><span style=\"font-family:Calibri\">50</span><span style=\"font-family:宋体\">万元）的小型微利企业，在进行年度所得税申报时，可以先将所得减按</span><span style=\"font-family:Calibri\">50%</span><span style=\"font-family:宋体\">计入所得税，随后减按</span><span style=\"font-family:Calibri\">20%</span><span style=\"font-family:宋体\">的税率进行所得税计算和缴纳。</span></span></p><p><br/></p>', null);
INSERT INTO `db_news` VALUES ('83', '2', '新税法动态', '1508478325', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\"></span></span><strong><span style=\";font-family:宋体;font-weight:bold;font-size:19px\"><span style=\"font-family:宋体\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于地方水利建设基金有关征收问题的通知</span></span></strong></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">各市（州）、县（市、区）财政局、地方税务局，省局直属税务局：</span></span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:宋体\">为贯彻落实《省财政厅</span> <span style=\"font-family:宋体\">省住建厅</span> <span style=\"font-family:宋体\">省物价局</span> <span style=\"font-family:宋体\">省水利厅、省地税局</span> <span style=\"font-family:宋体\">人民银行长春中心支行关于</span>“十三五”期间调整部分政府性基金有关政策的通知》（吉财税﹝2017﹞549号）精神，现就征收地方水利建设基金（以下简称“水利基金”）的有关问题通知如下：</span></p><p style=\"text-indent:35px;line-height:27px\"><strong><span style=\";font-family:宋体;font-weight:bold;font-size:14px\"><span style=\"font-family:宋体\">一、</span>2017年度应缴水利基金的计算问题</span></strong></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">2017年度水利基金征缴实行分段计算，计算方法如下：</span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">2017年全年缴水利基金=2016年度销售收入或营业收入×50%×1‰+2016年度销售收入或营业收入×50%×0.6‰。</span></p><p style=\"text-indent:28px;line-height:27px\"><strong><span style=\";font-family:宋体;font-weight:bold;font-size:14px\"><span style=\"font-family:宋体\">二、</span></span></strong><strong><span style=\";font-family:宋体;font-weight:bold;font-size:14px\"><span style=\"font-family:宋体\">需明确的问题</span></span></strong></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">1.各主管地税机关应及时对缴纳义务人水利基金申报缴纳期限和费率进行调整，确保征缴工作顺利开展。</span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">2.对缴纳义务人多缴纳的水利基金款项，由缴纳义务人向主管地税机关申请，自行选择采取退库或抵顶方式予以处理。多缴水利基金款的退付工作，按照《省财政厅 省国税局 省地税局 人民银行长春中心支行关于对﹤吉林省财政厅关于非税收入退库有关问题的通知﹥的补充通知》（吉财税﹝2017﹞550号）要求执行。</span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">3.</span><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">缴纳义务人</span></span><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">享受增值税全额减免、即征即退、先征后退、先征后返等税收优惠政策的，不同步减免水利基金。</span></span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">4.水利</span><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">基金是地方税务部门实施税务稽查和纳税评估的必查必评项目。地方税务部门和同级财政部门应落实好水利基金欠缴信息的定期交换制度。</span></span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\";font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">吉林省财政厅</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:宋体\">吉林省地方税务</span></span></p><p style=\"text-indent:371px;line-height:27px\"><span style=\";font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年8月15日</span></p><p><br/></p>', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_news_type
-- ----------------------------
INSERT INTO `db_news_type` VALUES ('1', '小规模企业优惠政策');
INSERT INTO `db_news_type` VALUES ('2', '新税法动态');

-- ----------------------------
-- Table structure for `db_peixun`
-- ----------------------------
DROP TABLE IF EXISTS `db_peixun`;
CREATE TABLE `db_peixun` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_peixun
-- ----------------------------
INSERT INTO `db_peixun` VALUES ('2', '财税培训', '<p style=\"line-height:27px\"><strong><span style=\";font-family:宋体;font-weight:bold;font-size:19px\">1、财务实操培训：</span></strong></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>1）培训时间11月1日开始；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）财务实操培训（起价60元</span><strong><span style=\"text-decoration:underline;\"><span style=\";font-family:宋体;font-weight:bold;text-underline:single;font-size:19px\"><span style=\"font-family:宋体\">详见首页产品展示第二类培训类</span></span></span></strong><span style=\";font-family:宋体;font-size:19px\">1，套餐目录七类套餐，工业商业双套餐2600元，同时赠送报税培训及开发票培训；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）联系电话：13689825302\\0431-81115490；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>4）时间安排：培训时间为三个月，同时赠送报税及开发票培训（国税、地税、个税）每周六周日培训，上午2.5课时、下午3课时（每课时为45分钟）。报名时间为每月的1至5号，报名电话：13689825302\\0431-81115490</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>5）培训内容安排：大类为商业类、工业类、建筑类、现代服务等10种中行业；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>6）培训的具体内容：包括手工记账；财务软件应用、建账、针对行业特点成本线的设计、会计科目的设立、会计凭证录入、审核、记账、结账、会计报表；会计分类核算等。</span></p><p style=\"line-height:27px\"><strong><span style=\";font-family:宋体;font-weight:bold;font-size:19px\">2、会计职称初级班考前培训（高中学历即可报考）：</span></strong></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">报名电话：</span>13689825302\\0431-81115490</span></p><p style=\"text-indent:19px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>1）保过培训费680元；</span></p><p style=\"text-indent:19px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）提供新版题库一套电子版免费，纸质题库30元一套；</span></p><p style=\"text-indent:19px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）考前绝密押题纸质；</span></p><p style=\"text-indent:19px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>4）签署保过协议（保过协议要点：题库模拟考场，模块自测，最后十次测试的均值在70分以上，一、如果不满足条件，没通过考试，我们会给你，免费续期，直到您考试通过为止。二、如果满足条件，正式考试未通过，给您退款。）。</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">注：</span>Ⅰ、初级会计实物、经济法基础（要求一个考试年度通过）；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅱ、初级职称提示报名时间11月1</span><span style=\";font-family:宋体;font-size:19px\">—</span><span style=\";font-family:宋体;font-size:19px\">15日，</span></p><p style=\"margin-left:93px;text-indent:75px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">报名网址：</span>www.jlzkb.com</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅲ、初级职称考试时间：2018年5月13</span><span style=\";font-family:宋体;font-size:19px\">—</span><span style=\";font-family:宋体;font-size:19px\">16日；</span></p><p style=\"margin-left:93px;text-indent:75px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">中级职称考试时间：</span>2018年9月9</span><span style=\";font-family:宋体;font-size:19px\">—</span><span style=\";font-family:宋体;font-size:19px\">10日。</span></p><p style=\"line-height:27px\"><strong><span style=\";font-family:宋体;font-weight:bold;font-size:19px\">3、会计职称中级班考前培训（待定）：</span></strong></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">报名电话：</span>13689825302\\0431-81115490</span></p><p><span style=\";font-family:宋体;font-size:19px\">&nbsp;</span></p><p><br/></p>', '1508723502');

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
) ENGINE=InnoDB AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_privilege
-- ----------------------------
INSERT INTO `db_privilege` VALUES ('1000', '基本设置', '0', null, 'Admin', null, null);
INSERT INTO `db_privilege` VALUES ('1001', '权限管理', '1000', 'Manage/Privilege/index', 'Admin', 'Privilege', 'index');
INSERT INTO `db_privilege` VALUES ('1002', '角色管理', '1000', 'Manage/Role/index', 'Admin', 'Role', 'index');
INSERT INTO `db_privilege` VALUES ('1003', '管理员管理', '1000', 'Manage/Admin/index', 'Admin', 'Admin', 'index');
INSERT INTO `db_privilege` VALUES ('2000', '栏目管理', '0', null, 'Admin', null, null);
INSERT INTO `db_privilege` VALUES ('2002', '财税中心', '2000', 'Manage/News/index', 'Admin', 'News', 'index');
INSERT INTO `db_privilege` VALUES ('2003', '产品展示', '2000', 'Manage/Product/index', 'Admin', 'Product', 'index');
INSERT INTO `db_privilege` VALUES ('2006', '首页管理', '2000', 'Manage/Our/index', 'Admin', 'Our', 'index');
INSERT INTO `db_privilege` VALUES ('2007', '人才招聘', '2000', 'Manage/Job/index', 'Admin', 'Job', 'index');
INSERT INTO `db_privilege` VALUES ('2008', '工商注册', '2000', 'Manage/Zhuce/index', 'Admin', 'Zhuce', 'index');
INSERT INTO `db_privilege` VALUES ('2009', '财务代理', '2000', 'Manage/Daili/index', 'Admin', 'Daili', 'index');
INSERT INTO `db_privilege` VALUES ('3000', '财税培训', '2000', 'Manage/Peixun/index', 'Admin', 'Peixun', 'index');

-- ----------------------------
-- Table structure for `db_product`
-- ----------------------------
DROP TABLE IF EXISTS `db_product`;
CREATE TABLE `db_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `introduce` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product
-- ----------------------------
INSERT INTO `db_product` VALUES ('1', '工商注册', '第一类', '1508736132', '', '（1）核名：零元起步，免费核名。\r\n（2）内资工商注册有经营场所600起；\r\n（3）内资工商注册指定经营场所议价；\r\n（4）注册公司有关资料的提交');
INSERT INTO `db_product` VALUES ('2', '财务代理', '第一类', '1508736233', '', '（1）、代理记账（2）、代理记账报税（3）、代理记账年末汇算');
INSERT INTO `db_product` VALUES ('3', '企业注销', '第一类', '1508736265', '<p><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%85%AC%E5%8F%B8%E6%B3%A8%E9%94%80\"></a></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">1）注销程序：先注销国税，再注销地税；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）税务注销收费标准：经营3年以内收入50万以内，收费1000元到5000元；经营3年以内收入50万至200万元以内，收费5000元到20000元；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）最后办理工商注销</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）疑难注销议价。</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">注：</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">税务注销需提供的资料</span></span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">①营业执照副本原件及复印件</span><span style=\";font-family:宋体;color:rgb(255,0,0);font-size:19px\"><span style=\"font-family:宋体\">；股东会决议及委托书（委托经办人）</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">或终止生产经营证明文件，如分公司注销需总公司出决议或证明文件等；</span>②增值税：当年的季度报、年报、清算申报；③企业所得税：当年的季度报、年报、清算申报；④工商营业执照被吊销的应提交工商行政管理部门发出的吊销决定原件及复印件；⑤非居民企业应提供项目完工证明，验收证明等相关文件原件及复印件；⑥附：公章、法人章。空白发票、税控盘、发票领购簿、UK。</span></p><p><br/></p><p><br/></p>', '（1）注销程序：先注销国税，再注销地税；\r\n（2）税务注销收费标准：经营3年以内收入50万以内，收费1000元到5000元；经营3年以内收入50万至200万元以内，收费5000元到20000元；\r\n（3）最后办理工商注销\r\n（3）疑难注销议价。');
INSERT INTO `db_product` VALUES ('4', '税务申报', '第一类', '1508740091', '<p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">(1)、国税申报：增值税、企业所得税、文化事业建设费（娱乐业及广告业征收），小规模企业季报、一般纳税人企业月报；</span></span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">(2)、地税申报：城建税、教育附加税、地方教育附加税，小规模企业季报、一般纳税人企业月报；</span></span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">(3)、个人所得税申报（地税）：小规模企业月报、一般纳税人企业月报；</span></span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">(4)、其他税种（地税）：如水利基金、残疾人保障金、工会经费、房产税、印花税等季报或年报。</span></span></p><p><br/></p>', '（1）国税申报：增值税、企业所得税、文化事业建设费（娱乐业及广告业征收），小规模企业季报、一般纳税人企业月报；（2）地税申报：城建税、教育附加税、地方教育附加税，小规模企业季报、一般纳税人企业月报；（3）个人所得税申报（地税）：小规模企业月报、一般纳税人企业月报；（4）其他税种（地税）：如水利基金等');
INSERT INTO `db_product` VALUES ('5', '一般纳税人认定', '第一类', '1508740109', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>1）起价100元办理一般纳税人；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）提交一般纳税人认定申请，办理一般纳税人认定，取得税务机关批复一般纳税人认定书。</span></p><p><br/></p>', '（1）起价100元办理一般纳税人；\r\n（2）提交一般纳税人认定申请，办理一般纳税人认定，取得税务机关批复一般纳税人认定书。');
INSERT INTO `db_product` VALUES ('6', '社保代理', '第一类', '1508740124', '<p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">(1)、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">五险</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">社保</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">医保）</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">办理内容：开户</span>500起，10人以内按月收费300元起；10人以上按人头每人每月收费20元起；</span></p><p><span style=\";font-family:宋体;font-size:19px\">(2)、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">五险一金</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">社保医保公积金</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">）</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">办理内容：开户</span>500起，10人以内按月收费</span><span style=\";font-family:宋体;font-size:19px\">300</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">元起；</span>10人以上按人头每人每月收费</span><span style=\";font-family:宋体;font-size:19px\">40</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">元起；</span></span></p>', '(1)、五险（社保医保）办理内容：开户500起，10人以内按月收费300元起；10人以上按人头每人每月收费20元起；\r\n(2)、五险一金（社保医保公积金）办理内容：开户500起，10人以内按月收费300元起；10人以上按人头每人每月收费40元起；');
INSERT INTO `db_product` VALUES ('7', '公司变更', '第一类', '1508740133', '<p style=\"line-height: 27px;\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">公司办理变更事宜，收费</span>500元起价；变更股东收费议价。</span></p>', '公司办理变更事宜，收费500元起价；变更股东收费议价。');
INSERT INTO `db_product` VALUES ('8', '执照年检', '第一类', '1508740141', '<p><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">公司办理年检代办</span>300元起价。</span></p>', '公司办理年检代办300元起价。');
INSERT INTO `db_product` VALUES ('9', '商标注册', '第一类', '1508740159', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">(1)、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">商标</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">设计</span></span><span style=\";font-family:宋体;font-size:19px\">1000元</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">起；</span></span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">(2)、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">注册费用按类别</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">按个数收取，每类每个商标费用：</span></span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">①一般商标每件</span><span style=\";font-family:宋体;font-size:19px\">1500</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">元</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">十年</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">有效期，含十年的费用，国内公司或个人）</span></span><span style=\";font-family:宋体;font-size:19px\">;</span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">②集体商标和</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">证明商标每件</span></span><span style=\";font-family:宋体;font-size:19px\">3000元</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">十年</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">有效期，含十年的费用，国内公司或个人</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">）</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">。</span></span></p><p><br/></p>', '(1)、商标设计1000元起；\r\n(2)、注册费用按类别按个数收取，每类每个商标费用：\r\n①一般商标每件1500元（十年有效期，含十年的费用，国内公司或个人）;\r\n②集体商标和证明商标每件3000元（十年有效期，含十年的费用，国内公司或个人）。');
INSERT INTO `db_product` VALUES ('10', '双软注册', '第一类', '1508740192', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">（1）办理双软企业服务费起价35000元；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）双软企业作用</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">①税收优惠：双软认证企业，自获利年度起，第一和第二年免征企业所得税，第三至第五年减半征收企业所得税，即免二减三，第六年享受科技企业所得税率15%。</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">②政策支持：地方政府对于科研专项基金，税收减免科技计划、资金奖励等多种政策措施逐渐在信息科技领域倾斜，政策支持力度空前。</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">③扩大市场：双软认证具有经营，销售软件产品的特定权限，有助于企业承接工程项目，参加投标，促进项目成交和市场营销，扩大市场。</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）双软认定所需资料</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">①企业开发销售的主要软件产品列表或技术服务列表；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">主营业务为软件产品开发的企业，提供至少一个主要产品的软件著作权，或专利权等自主知识产权的有效证明文件，以及第三方检测机构提供的软件产品测试报告（附检测试机构名单备选）。</span></span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">②主营业务仅为技术服务的企业提供核心技术说明; </span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">企业职工人数、学历结构、研究开发人员及其占企业职工总数的比例说明，以及汇算清缴年度最后一个月社会保险缴纳证明等相关证明材料</span>;</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">经具有资质的中介机构鉴证的企业财务会计报告，包括会计报表会计报表附注和财务情况说明书</span>) 以及软件产品开发销售（营业）收入、软件产品自主开发销售（营业）收入、研究开发费用、境内研究开发费用等情况说明；</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">与主要客户签订的一至两份代表性的软件产品销售合同或技术服务合同复印件；</span></span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">企业开发环境相关证明材料（软件开发办公环境照片；电脑、服务器购置发票）；</span></span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">税务机关要求出具的其他材料。</span></span></p><p><br/></p>', '（1）办理双软企业服务费起价35000元；\r\n（2）双软企业作用\r\n（3）双软认定所需资料');
INSERT INTO `db_product` VALUES ('11', 'IOS质量认证', '第一类', '1508740204', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>1）ISO9000质量保证体系列认证起价20000元；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）三位一体化体系认证，起价50000元；</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">①&nbsp;</span><span style=\";font-family:宋体;font-size:19px\">ISO9000系列认证：质量保证体系认证；</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">②&nbsp;</span><span style=\";font-family:宋体;font-size:19px\">ISO114000系列认证：环境保护体系认证；</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">③&nbsp;</span><span style=\";font-family:宋体;font-size:19px\">OHSA18000系列认证：职业健康卫生认证。</span></p><p style=\"text-indent: 37px; line-height: 27px;\"><span style=\";font-family:宋体;font-size:19px\">①②③三者都认证并形成一个整体，就是三位一体化体系认证。</span></p>', '（1）ISO9000质量保证体系列认证起价20000元；\r\n（2）三位一体化体系认证，起价50000元；');
INSERT INTO `db_product` VALUES ('12', '建筑业资质代办', '第一类', '1508740229', '<p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:0;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（一）公路工程类：</span></span></p><p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:28px;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>1）公路工程总承包三级资质，服务费起价30000元；</span></p><p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:28px;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）公路工程总承包二级资质，服务费起价50000元；</span></p><p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:28px;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）公路工程总承包一级资质，服务费起价200000元。</span></p><p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:0;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（二）市政工程类：参照（一）公路工程类标准办理。</span></span></p><p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:0;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（三）装饰装修工程类：二级资质服务费起价</span>20000元。</span></p><p style=\"margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-indent:0;text-autospace:ideograph-numeric;text-align:left;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（四）建筑类其他小类：资质办理议价。</span></span></p><p><br/></p>', '（一）公路工程类：（1）公路工程总承包三级资质，服务费起价30000元；（2）公路工程总承包二级资质，服务费起价50000元；（3）公路工程总承包一级资质，服务费起价200000元。\r\n（二）市政工程类：参照（一）公路工程类标准办理。\r\n（三）装饰装修工程类：二级资质服务费起价20000');
INSERT INTO `db_product` VALUES ('13', '装饰装潢资质代办', '第一类', '1508740328', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;font-size:19px\">1）例如办理建筑装修装饰工程专业承包二级资质，服务费起价20000元；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）相关资料及培训：</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">①人员要求：建造师（二级建筑专业）三人；职称人员，建筑相关专业五人；施工现场人员，质量员、施工员、安全员、材料员机械员、资料员等十人；中级工、机械设备安装工、电工、焊工、管道工、通风等15人，组织上述人员，培训考试。</span></p><p style=\"text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">②技术负责人，要求五年以上从事施工技术管理工作经历，完成过本类别资质二级以上要求，业绩不少于两项。</span></p><p><span style=\";font-family:宋体;font-size:19px\">&nbsp;&nbsp; ③安全许可证办理，对13名现场人员培训考试，12项安全生产相关资料准备代办完成。</span></p><p><span style=\";font-family:宋体;font-size:19px\">&nbsp;&nbsp; ④最后完成三个证书，建筑装饰装修工程专业承包二级资质证书、安全生产许可证书、质量体系证书。</span></p>', '（1）例如办理建筑装修装饰工程专业承包二级资质，服务费起价20000元；\r\n（2）相关资料及培训');
INSERT INTO `db_product` VALUES ('14', '财务人才推荐', '第一类', '1503638792', null, null);
INSERT INTO `db_product` VALUES ('15', '财务实操培训', '第二类', '1508740463', '<p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">①&nbsp;套餐价格：</span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">&nbsp;&nbsp;&nbsp;非套餐类：开发票培训60元； 报税培训180元；</span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">&nbsp;&nbsp;&nbsp;套餐1：（商业和工业）2600元、资料费200元（赠送报税培训及开发票培训）；</span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">&nbsp;&nbsp;&nbsp;套餐2现代服务类800元、资料费200元（赠送报税培训及开发票培训）；</span></p><p style=\"margin-left:0;text-indent:56px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">套餐</span>3：定制类财务实操1600元、资料费200元（赠送报税培训及开发票培训）；</span></p><p style=\"margin-left:0;text-indent:56px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">套餐</span>4：商业类1600元、资料费200元（赠送报税培训及开发票培训）；</span></p><p style=\"margin-left:0;text-indent:56px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">套餐</span>5：工业类1600元、资料费200元（赠送报税培训及开发票培训）；</span></p><p style=\"margin-left:0;text-indent:56px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">套餐</span>6：建筑类1600元、资料费200元（赠送报税培训及开发票培训）；</span></p><p style=\"margin-left:0;text-indent:56px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">套餐</span>7：其他类议价。</span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">②时间安排：培训时间为三个月，同时赠送报税及开发票培训（国税、地税、个税）每周六周日培训，上午2.5课时、下午3课时（每课时为45分钟）。报名时间为每月的1至5号，报名电话:13689825302或0431-81115490；</span></p><p style=\";line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">③培训内容安排：大类为商业类、工业类、建筑类、现代服务等10种行业。</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">①&nbsp;培训的具体内容，包括：</span></p><p style=\"margin-left:0;text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅰ、手工记账：原始凭证粘贴、编制会计凭证、编制科目汇总表、设置账户、记账、结账、编制会计报表；</span></p><p style=\"margin-left:0;text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅱ、财务软件应用、建账、针对行业特点成本线的设计、会计科目的设立、会计凭证录入、审核、记账、结账、会计报表；</span></p><p style=\"margin-left:0;text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅲ、会计分类核算案例等。</span></p><p><span style=\";font-size:16px\">&nbsp;</span></p><p><strong><span style=\";font-family:宋体;font-weight:bold;font-size:19px\">&nbsp;</span></strong></p><p><br/></p>', '① 套餐价格：非套餐类：开发票培训60元； 报税培训180元；套餐1：（商业和工业）2600元、资料费200元（赠送报税培训及开发票培训）；套餐2现代服务类800元、资料费200元（赠送报税培训及开发票培训）；套餐3：定制类财务实操1600元、资料费200元（赠送报税培训及开发票培训）；');
INSERT INTO `db_product` VALUES ('16', '用友软件应用培训', '第二类', '1508740497', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>1）案例选择（商业、工业、建筑等）；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>2）建账：前期准备工作为针对行业特点进行成本线的设计，选用会计科目；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>3）会计凭证录入（又称记账凭证录入）；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>4）会计凭证审核；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>5）记账；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>6）结帐；</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>7）会计报表。</span></p><p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span>8）其他常用操作：对账、结账激活操作。</span></p><p><br/></p>', '（1）案例选择（商业、工业、建筑等）；（2）建账：前期准备工作为针对行业特点进行成本线的设计，选用会计科目；\r\n（3）会计凭证录入（又称记账凭证录入）；（4）会计凭证审核；\r\n（5）记账；（6）结帐；（7）会计报表。\r\n（8）其他常用操作：对账、结账激活操作。');
INSERT INTO `db_product` VALUES ('17', '会计初中级考前培训', '第二类', '1508740529', '<p style=\"line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;font-size:19px\">1）初级会计职称班（高中学历即可报考）：</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">①&nbsp;</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">保过培训费</span>680元；</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">②&nbsp;</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">提供新版题库一套电子版免费，纸质题库</span>30元一套；</span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">③&nbsp;</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">考前绝密押题纸质；</span></span></p><p style=\"margin-left:24px;line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">④&nbsp;</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">签署保过协议（保过协议要点：题库模拟考场，模块自测，最后十次测试的均值在</span>70分以上，一、如果不满足条件，没通过考试，我们会给你，免费续期，直到您考试通过为止。二、如果满足条件，正式考试未通过，给您退款。）。</span></p><p style=\"margin-left:93px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">注：</span>Ⅰ、初级会计实物、经济法基础（要求一个考试年度通过）；</span></p><p style=\"margin-left:93px;text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅱ、初级职称提示报名时间11月1</span><span style=\";font-family:宋体;font-size:19px\">—</span><span style=\";font-family:宋体;font-size:19px\">15日，</span></p><p style=\"margin-left:93px;text-indent:75px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">报名网址：</span>www.jlzkb.com</span></p><p style=\"margin-left:93px;text-indent:37px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\">Ⅲ、初级职称考试时间：2018年5月13</span><span style=\";font-family:宋体;font-size:19px\">—</span><span style=\";font-family:宋体;font-size:19px\">16日；</span></p><p style=\"margin-left: 93px; text-indent: 75px; line-height: 27px;\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">中级职称考试时间：</span>2018年9月9</span><span style=\";font-family:宋体;font-size:19px\">—</span><span style=\";font-family:宋体;font-size:19px\">10日。</span></p>', '（1）初级会计职称班（高中学历即可报考）：① 保过培训费680元；② 提供新版题库一套电子版免费，纸质题库30元一套；③ 考前绝密押题纸质；④ 签署保过协议（保过协议要点：题库模拟考场，模块自测，最后十次测试的均值在70分以上，一、如果不满足条件，没通过考试，我们会给你，免费续期，直到您考试通过为止');
INSERT INTO `db_product` VALUES ('18', '报税及开发票培训', '第二类', '1503638792', null, null);
INSERT INTO `db_product` VALUES ('19', '资质维护培训', '第二类', '1503638792', null, null);

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
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product_content
-- ----------------------------
INSERT INTO `db_product_content` VALUES ('1', '1', '产品天地', '<p><span style=\"font-family: 宋体; text-align: justify; text-indent: 32px;\">&nbsp; 本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></p>', '1503638792', '/uploads/2017-09-07/59b0a8e383b82.png');
INSERT INTO `db_product_content` VALUES ('2', '2', '成功案例', '<p><span style=\"font-family: 宋体; text-align: justify; text-indent: 32px;\">&nbsp; 本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></p>', '1503914699', '/uploads/2017-09-07/59b0a8ca138fa.png');
INSERT INTO `db_product_content` VALUES ('3', '3', '产品系列', '<p><span style=\"font-family: 宋体; text-align: justify; text-indent: 32px;\">&nbsp; 本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></p>', '1504063964', '/uploads/2017-09-07/59b0a8b0a9382.png');
INSERT INTO `db_product_content` VALUES ('4', '4', '案例分享', '<p><span style=\"font-family: 宋体; text-align: justify; text-indent: 32px;\">&nbsp; 本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></p>', null, '/uploads/2017-09-07/59b0a875c8399.png');
INSERT INTO `db_product_content` VALUES ('5', '5', '案例展示', '<p><span style=\"font-family: 宋体; text-align: justify; text-indent: 32px;\">&nbsp; 本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></p>', null, '/uploads/2017-09-07/59b0a86148af9.png');
INSERT INTO `db_product_content` VALUES ('6', '6', '客户案例', '<p><span style=\"font-family: 宋体; text-align: justify; text-indent: 32px;\">&nbsp; 本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></p>', null, '/uploads/2017-09-07/59b0a837cb729.png');
INSERT INTO `db_product_content` VALUES ('7', '7', '产品介绍', '<p style=\"margin-right:0;margin-left:0;text-indent:32px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:27px\"><span style=\";font-family:Calibri;font-size:16px\"><span style=\"font-family:宋体\">本公司为企业登记注册提供一条龙服务，包括公司名称核准、公司注册登记、公司章程起草、验资报告、刻制上网专用印章、办理组织机构代码证书、各大银行开户、国地税税务登记、代理成都市各区工商年检、变更、增资、代理记帐、网站建设、商标、专利申请、高新双软企业认证等多项服务。公司本着诚信、专业、高效、合理收费的原则，竭诚为广大创业者提供全方位的便捷服务，让您无忧无虑开创您的事业，解决注册资金、提供注册地址等企业疑难问题。</span></span></p><p><br/></p>', '1504063964', '/uploads/2017-09-07/59b0a7f1ed3c9.png');

-- ----------------------------
-- Table structure for `db_role`
-- ----------------------------
DROP TABLE IF EXISTS `db_role`;
CREATE TABLE `db_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_role
-- ----------------------------
INSERT INTO `db_role` VALUES ('1', '管理员');

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
  `content` varchar(5000) DEFAULT NULL,
  `state` varbinary(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_video
-- ----------------------------
INSERT INTO `db_video` VALUES ('1', '视频', 'https://v.qq.com/iframe/player.html?vid=c0347v9gdw0&tiny=0&auto=0', '1503974721', '<p>sdfdgdf<br/></p>', 0x31);
INSERT INTO `db_video` VALUES ('2', '测试', 'https://v.qq.com/iframe/player.html?vid=c0347v9gdw0&tiny=0&auto=0', '1504771063', '<p style=\"text-indent: 2em; text-align: justify;\">睿诚财务管理咨询（吉林）有限公司成立于2017年8月10日，公司注册资本200万元，公司注册地址在吉林省长春市南关区人民大街10606号东北亚国际金融中心2号楼406号，是腾讯研究院互联网+创业中心平台企业(吉林省智城智家科技有限公司)一部分，公司集多方英才汇聚一堂，在财务领域有多名资深会计人员，行业涉及建筑业、房地产业、工业、商业等领域；在涉税邻域秉承实质重于形式的原则，具体问题具体分析，严格执行税法，履行纳税人的责任及义务。</p><p style=\"text-indent: 2em; text-align: justify;\">睿诚人的企业文化：诚信创新、传承品质、厚积薄发。为社会服务敢为天下先，立足点滴、小我大我；不奢谈高大尚。愿与各方朋友齐聚一堂，愿我们的服务得到您的点赞。</p><p><br/></p>', 0x31);

-- ----------------------------
-- Table structure for `db_zhuce`
-- ----------------------------
DROP TABLE IF EXISTS `db_zhuce`;
CREATE TABLE `db_zhuce` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_zhuce
-- ----------------------------
INSERT INTO `db_zhuce` VALUES ('2', '工商注册', '<p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">1、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">核名</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">：</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">零元起步，免费核名。</span></span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">2、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">内资工商注册</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">有经营</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">场所</span>600起；</span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">3、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">内资工商注册指定</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">经营</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">场所议价；</span></span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">4、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">注册公司有关资料</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">的提交</span></span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">自然然人</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">股东</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">需提交的资料：</span></span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">1</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）所有股东身份证</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">2</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）确认法人（必须为董事或经理中一人），执行董事，监事，总经理</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">3</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）若为租房需要租房合同及产权证，或购房合同及发票；若为自购房需要产权证或购房合同及发票</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">4</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）所有股东电话季邮箱（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">5</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）股权结构即股东出资额及比例。</span></span></p><p style=\"text-indent:28px;line-height:27px\"><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">法人人</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">股东</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">需提交的资料：</span></span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">1</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）所有股东身份证</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">2</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）确认法人（必须为董事或经理中一人），执行董事，监事，总经理</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">3</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）若为租房需要租房合同及产权证，或购房合同及发票；若为自购房需要产权证或购房合同及发票</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">4</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）所有股东电话季邮箱（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">5</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）股权结构即股东出资额及比例（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">6</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）法人股东提供营业执照复印件并盖章</span></span></p><p style=\"line-height:27px\"><span style=\"font-family:宋体;font-size:19px\">5、</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">外资资工商注册（</span></span><span style=\";font-family:宋体;font-size:19px\">1000</span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">元</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">）</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">，</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">股东</span></span><span style=\";font-family:宋体;font-size:19px\"><span style=\"font-family:宋体\">需提交的资料：</span></span></p><p><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">1</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）所有股东身份证或护照</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">2</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）确认法人（必须为董事或经理中一人），执行董事，监事，总经理</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">3</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）若为租房需要租房合同及产权证，或购房合同及发票；若为自购房需要产权证或购房合同及发票</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">&nbsp;</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">4</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）所有股东电话季邮箱（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">5</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）股权结构即股东出资额及比例（</span></span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\">6</span><span style=\";font-family:宋体;color:rgb(0,0,0);font-size:19px\"><span style=\"font-family:宋体\">）法人股东提供营业执照复印件并盖章</span></span></p>', '1508719434');
