/*
Navicat MySQL Data Transfer

Source Server         : bysj
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : interest

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2020-04-03 09:34:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for interest_about
-- ----------------------------
DROP TABLE IF EXISTS `interest_about`;
CREATE TABLE `interest_about` (
  `about_id` int(11) NOT NULL auto_increment,
  `about_content` longtext,
  PRIMARY KEY  (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_about
-- ----------------------------
INSERT INTO `interest_about` VALUES ('1', '<section><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">&nbsp; &nbsp;南京东方娃娃文化科技有限公司（南京东方娃娃教育培训中心）成立于2009年，专注于3～14岁少儿艺术和素质教育。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">&nbsp; &nbsp;经过10年的发展，旗下拥有一百多家校区，先后荣获江苏省广播电视总台授予的“最具影响力教育品牌”，南京市教育局授予的“先进学校”，腾讯网2017年度教育总评榜“2017年度知名儿童教育品牌”等荣誉称号；同时，东方娃娃也是南京市社会培训行业副会长单位，2017年，东方娃娃获得数千万元A轮融资，在资本的助力下走上了发展的快车道。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">&nbsp; &nbsp;东方娃娃以自主研发课程的能力，先进的管理系统，以服务为主导的营销体系，富有人文关怀的企业文化，成为一家起源于南京，覆盖江苏，影响全国的知名儿童教育机构。2018年，东方娃娃将进入一个全新的高速发展时期，我们希望有更多的充满活力，心怀理想的年轻人，加入到我们的团队中来，让我们一起，成为中国儿童素质教育的领航者。</span></p></section><p style=\"line-height: 2em;\"></p>');

-- ----------------------------
-- Table structure for interest_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `interest_adminuser`;
CREATE TABLE `interest_adminuser` (
  `adminuser_id` int(11) NOT NULL auto_increment,
  `adminuser_sn` varchar(100) default NULL,
  `adminuser_username` varchar(100) default NULL,
  `adminuser_password` varchar(100) default NULL,
  `adminuser_sex` int(5) default '1',
  `adminuser_age` int(5) default '1',
  `adminuser_iphone` varchar(30) default NULL,
  `adminuser_email` varchar(30) default NULL,
  `adminuser_lastertime` varchar(30) default NULL,
  `adminuser_lasterip` varchar(30) default NULL,
  `adminuser_registertime` varchar(30) default NULL,
  `adminuser_status` int(5) default '1',
  `role_id` int(5) default '1',
  `adminuser_image` varchar(255) default NULL,
  PRIMARY KEY  (`adminuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_adminuser
-- ----------------------------
INSERT INTO `interest_adminuser` VALUES ('1', '1', 'admin', '123456', '1', '1', '13212345678', '123456@qq.com', '2020-04-03 09:21:38', '182.84.72.247', '2020-03-10 10:10:10', '1', '1', null);
INSERT INTO `interest_adminuser` VALUES ('2', '2', '用户1', '123456', '0', '0', '13212345678', '123456@qq.com', null, null, '2020-04-02 18:37:57', '1', '2', null);
INSERT INTO `interest_adminuser` VALUES ('3', null, '用户1', '123456', '1', '1', '13247913772', null, null, null, '2020-04-02 21:12:54', '1', '2', null);

-- ----------------------------
-- Table structure for interest_buy
-- ----------------------------
DROP TABLE IF EXISTS `interest_buy`;
CREATE TABLE `interest_buy` (
  `buy_id` int(11) NOT NULL auto_increment,
  `adminuser_id` int(11) default NULL,
  `buy_sn` varchar(255) default NULL,
  `buy_price` varchar(30) default NULL,
  `buy_addtime` varchar(30) default NULL,
  `buy_status` int(5) default '1',
  `adminuser_username` varchar(100) default NULL,
  `adminuser_iphone` varchar(255) default NULL,
  `buy_content` longtext,
  `buy_message` varchar(255) default NULL,
  `buy_address` varchar(255) default NULL,
  `payment_id` int(1) default '1',
  `goods_id` int(11) default '0',
  PRIMARY KEY  (`buy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_buy
-- ----------------------------
INSERT INTO `interest_buy` VALUES ('1', '3', '202004022158343080', '999.0', '2020-04-02 21:58:34', '5', '用户1', '13247913772', '智慧美术-发现班X1', '', null, '1', '1');
INSERT INTO `interest_buy` VALUES ('2', '3', '202004022242123158', '999', '2020-04-02 22:42:12', '2', '用户1', '13247913772', '智慧美术-探索班X1', '111', null, '1', '2');

-- ----------------------------
-- Table structure for interest_cart
-- ----------------------------
DROP TABLE IF EXISTS `interest_cart`;
CREATE TABLE `interest_cart` (
  `cart_id` int(11) NOT NULL auto_increment,
  `adminuser_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `cart_addnum` int(11) default NULL,
  `cart_addtime` varchar(30) default NULL,
  `cart_price` varchar(30) default NULL,
  PRIMARY KEY  (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_cart
-- ----------------------------
INSERT INTO `interest_cart` VALUES ('4', '3', '1', '1', '2020-04-02 22:59:36', '999.0');
INSERT INTO `interest_cart` VALUES ('5', '3', '1', '1', '2020-04-02 23:01:40', '999.0');
INSERT INTO `interest_cart` VALUES ('6', '3', '1', '1', '2020-04-03 06:34:24', '999.0');

-- ----------------------------
-- Table structure for interest_course
-- ----------------------------
DROP TABLE IF EXISTS `interest_course`;
CREATE TABLE `interest_course` (
  `course_id` int(11) NOT NULL auto_increment,
  `course_name` varchar(255) default NULL,
  `course_images` varchar(255) default NULL,
  `course_price` varchar(30) default NULL,
  `course_content` longtext,
  `course_addtime` varchar(30) default NULL,
  `course_applynum` int(11) default '0',
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_course
-- ----------------------------
INSERT INTO `interest_course` VALUES ('1', '智慧美术-发现班', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820360431063592.jpg', '999', '<p><img src=\"http://39.106.23.59:6080/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820416072046411.jpg\" title=\"1585820409713016282.jpg\" alt=\"a1.jpg\"/></p><h4 style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">游戏 多元智能开发</span></h4><p style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.独创快乐教学法，激发早期艺术感性认知。</span></p><p style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2.引导、鼓励孩子创造属于自己的绘画符号与色彩表现形式；通过视觉、听觉、嗅觉、触觉等感知活动的开展，激发孩子对少年美术活动的兴趣与创作热情。</span></p><p style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">3.综合运用绘画游戏，音乐舞蹈等艺术元素，以及强烈的色彩空间布置和色彩绘画练习，促进孩子记忆力、想象力和创造力等素质的提高。</span></p><p><br/></p><p><br/></p>', '2020-04-02 17:41:48', '0');
INSERT INTO `interest_course` VALUES ('2', '智慧美术-探索班', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820618089012475.jpg', '999', '<p><img src=\"http://39.106.23.59:6080/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820646277059657.jpg\" title=\"1585820642730000515.jpg\" alt=\"2.jpg\"/></p><h4 style=\"line-height: 1.5em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">实践 多媒材</span></h4><p style=\"line-height: 1.5em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">美育兴趣强化班——该班是采用国际先进教学模式而开设的实验教学区，针对孩子从美术启蒙走向独立幼儿思维美术创作的过渡阶段。</span></p><p style=\"line-height: 1.5em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">设有绘画、泥塑、材料试验、立体造型、水墨等多种有趣课程。结合主题绘画和手工制作，运用水粉、油画棒、马克笔、等多种绘画材料进行创作；鼓励孩子大胆想象、勇于创作、乐于探索，让孩子先广泛地尝试了解各个画种，进而根据孩子的兴趣重点培养。</span></p><p><br/></p><p><br/></p>', '2020-04-02 17:45:24', '0');
INSERT INTO `interest_course` VALUES ('3', '智慧美术-创造班', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820731872046566.jpg', '1000', '<p><img src=\"http://39.106.23.59:6080/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820776059064270.jpg\" title=\"1585820773075051651.jpg\" alt=\"a3.jpg\"/></p><h4 style=\"line-height: 1.5em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">多元文化、设计</span></h4><p style=\"line-height: 1.5em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.美术特长班。重点提高学生的绘画创意美术水平。老师采用生动活泼的教学方式把孩子引入更专业的绘画创作中来，着力培养孩子的独立创作能力、艺术兴趣和志向</span></p><p style=\"line-height: 1.5em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2.运用不同材料，进行线条、形体、色彩创意训练，发散孩子的思维，让孩子通过主动绘画和想象，探索 “有形”与“无形”的艺术表现形式，引导孩子进入自己的创想空间</span></p><p><br/></p><p><br/></p>', '2020-04-02 17:47:37', '0');
INSERT INTO `interest_course` VALUES ('4', '智慧美术-插画班', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820893045010854.jpg', '1000', '<p><img src=\"http://39.106.23.59:6080/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585820915311001556.jpg\" title=\"1585820907857073885.jpg\" alt=\"a4.jpg\"/></p><h4 style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">视觉、创作</span></h4><p style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&quot;运用专业的理念知识，提升视觉插画、再创编插画的思维能力。&quot;充分发挥其想象力、创造力，增强绘画表现手法同时全面提高艺术修养。</span></p><p style=\"line-height: 1.5em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">针对每个孩子的不同性格、气质、特点，激励开发孩子与生俱来的艺术天赋，让每个孩子都拥有大师般的自信。</span></p><p><br/></p><p><br/></p>', '2020-04-02 17:49:52', '0');

-- ----------------------------
-- Table structure for interest_goodsevaluate
-- ----------------------------
DROP TABLE IF EXISTS `interest_goodsevaluate`;
CREATE TABLE `interest_goodsevaluate` (
  `goodsevaluate_id` int(11) NOT NULL auto_increment,
  `adminuser_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goodsevaluate_star` int(5) default '1',
  `goodsevaluate_content` varchar(255) default NULL,
  `goodsevaluate_addtime` varchar(30) default NULL,
  PRIMARY KEY  (`goodsevaluate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_goodsevaluate
-- ----------------------------
INSERT INTO `interest_goodsevaluate` VALUES ('1', '3', '1', '5', '111', '2020-04-02 22:29:55');

-- ----------------------------
-- Table structure for interest_teacher
-- ----------------------------
DROP TABLE IF EXISTS `interest_teacher`;
CREATE TABLE `interest_teacher` (
  `teacher_id` int(11) NOT NULL auto_increment,
  `teacher_name` varchar(255) default NULL,
  `teacher_professor` varchar(255) default NULL,
  `teacher_content` varchar(255) default NULL,
  `teacher_addtime` varchar(30) default NULL,
  `teacher_images` varchar(255) default NULL,
  PRIMARY KEY  (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_teacher
-- ----------------------------
INSERT INTO `interest_teacher` VALUES ('1', '王老师', '清华大学副教授', '引导、鼓励孩子创造属于自己的绘画符号与色彩表现形式；通过视觉、听觉、嗅觉、触觉等感知活动的开展。', '2020-04-02 18:12:41', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585822222369073113.jpg');
INSERT INTO `interest_teacher` VALUES ('2', '武老师', '大学副教授', '教学绘画、泥塑、材料试验、立体造型、水墨等多种有趣课程。结合主题绘画和手工制作，运用水粉、等多种绘画材料进行创作。', '2020-04-02 18:15:09', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585822378556087820.jpg');
INSERT INTO `interest_teacher` VALUES ('3', '孙老师', '研究生', '老师采用生动活泼的教学方式把孩子引入更专业的绘画创作中来，着力培养孩子的独立创作能力、艺术兴趣和志向。', '2020-04-02 18:16:00', 'http://39.106.23.59:6080/ShowImageSystem/ShowImageSystem/ueditor/jsp/upload/image/common/20200402/1585822456993026071.jpg');

-- ----------------------------
-- Table structure for interest_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `interest_usercourse`;
CREATE TABLE `interest_usercourse` (
  `usercourse_id` int(11) NOT NULL auto_increment,
  `adminuser_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  `usercourse_addtime` varchar(30) default NULL,
  `usercourse_status` int(5) default '1',
  PRIMARY KEY  (`usercourse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest_usercourse
-- ----------------------------
