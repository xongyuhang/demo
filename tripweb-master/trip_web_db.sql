/*
Navicat MySQL Data Transfer

Source Server         : hahaha
Source Server Version : 50727
Source Host           : 127.0.0.1:3306
Source Database       : trip_web_db

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-01-23 16:00:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `lr_id` int(11) NOT NULL AUTO_INCREMENT,
  `lr_name` varchar(100) DEFAULT NULL,
  `lr_date` varchar(100) DEFAULT NULL,
  `lr_content` varchar(100) DEFAULT NULL,
  `lr_for_name` varchar(100) DEFAULT NULL,
  `lr_for_words` varchar(100) DEFAULT NULL,
  `lr_for_reply` varchar(100) DEFAULT NULL,
  `lr_for_article_id` varchar(100) DEFAULT NULL,
  `lr_forumId` varchar(100) DEFAULT NULL,
  `lr_hotel_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('4', '刘夏', '2020-01-23 03:24:30', '我也喜欢这家酒店', 'zyf', '3', '', null, null, '2');

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `tp_aid` int(11) NOT NULL AUTO_INCREMENT,
  `tp_aname` varchar(100) DEFAULT NULL,
  `tp_aemail` varchar(100) DEFAULT NULL,
  `tp_apwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tp_aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '1289967623@qq.com', '123');

-- ----------------------------
-- Table structure for tp_forum
-- ----------------------------
DROP TABLE IF EXISTS `tp_forum`;
CREATE TABLE `tp_forum` (
  `tp_fid` int(11) NOT NULL AUTO_INCREMENT,
  `tp_author_id` varchar(100) DEFAULT NULL,
  `tp_author` varchar(100) DEFAULT NULL,
  `tp_title` varchar(100) DEFAULT NULL,
  `tp_sub_title` varchar(100) DEFAULT NULL,
  `tp_issue_time` varchar(100) DEFAULT NULL,
  `tp_tag` varchar(100) DEFAULT NULL,
  `tp_tcontent` text,
  PRIMARY KEY (`tp_fid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_forum
-- ----------------------------
INSERT INTO `tp_forum` VALUES ('2', '2', '刘夏', '春节广州市有哪些地方比较好玩？', '请大家给我一点小建议啦', null, '春节', '<p>春节广州市有哪些地方比较好玩？</p>');
INSERT INTO `tp_forum` VALUES ('3', '2', '刘夏', '听说厦门很漂亮，有什么值得去的地方呢', '今年春节想跟家人一起去旅游，大家快来贡献你们的idea吧', null, '春节旅游', '<p>今年春节想跟家人一起去旅游，大家快来贡献你们的idea吧，我们想去厦门</p>');

-- ----------------------------
-- Table structure for tp_hotel
-- ----------------------------
DROP TABLE IF EXISTS `tp_hotel`;
CREATE TABLE `tp_hotel` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `local` varchar(100) DEFAULT NULL,
  `house_type` varchar(100) DEFAULT NULL,
  `bed_type` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `people_num` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `house_size` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hotel
-- ----------------------------
INSERT INTO `tp_hotel` VALUES ('1', '长隆香江大酒店', '广州市', '标准套房', '大/双床', '12345678', null, '番禺大道长隆旅游度假区内', '45m²', '118', '7327bb8a-6c5a-46cf-825f-1fe2da72c2ac.jpg', '<p><br></p>');
INSERT INTO `tp_hotel` VALUES ('2', '广州全季酒店', '广州市', '豪华客房', '大/双床', '12345678', null, '林和中路180号', '30m²', '198', '3d53ec5d-dd18-4f18-a323-d8a18a0415e9.jpg', '<p><br></p>');

-- ----------------------------
-- Table structure for tp_traffic
-- ----------------------------
DROP TABLE IF EXISTS `tp_traffic`;
CREATE TABLE `tp_traffic` (
  `tp_Tid` int(11) NOT NULL AUTO_INCREMENT,
  `tp_type` varchar(100) DEFAULT NULL,
  `tp_current` varchar(100) DEFAULT NULL,
  `tp_destination` varchar(100) DEFAULT NULL,
  `tp_current_time` varchar(100) DEFAULT NULL,
  `tp_arrive_time` varchar(100) DEFAULT NULL,
  `tp_tprice` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tp_Tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_traffic
-- ----------------------------
INSERT INTO `tp_traffic` VALUES ('1', '火车', '北京市', '绵阳市', '2019-05-18 13:05:20', '2019-05-17 14:50:42', '356.0');
INSERT INTO `tp_traffic` VALUES ('2', '大巴', '珠海市', '澳门', '2020-01-23 14:54:14', '2020-01-26 15:55:12', '998');
INSERT INTO `tp_traffic` VALUES ('3', '大巴', '汕头市', '广州市', '2020-01-23 15:22:21', '2020-01-26 15:55:12', '188');

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `tp_uid` int(11) NOT NULL AUTO_INCREMENT,
  `tp_uname` varchar(100) DEFAULT NULL,
  `tp_uemail` varchar(100) DEFAULT NULL,
  `tp_upwd` varchar(100) DEFAULT NULL,
  `tp_age` varchar(100) DEFAULT NULL,
  `tp_gender` varchar(100) DEFAULT NULL,
  `tp_upic` varchar(100) DEFAULT NULL,
  `tp_phone` varchar(100) DEFAULT NULL,
  `tp_regdate` timestamp NULL DEFAULT NULL,
  `tp_update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tp_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'zyf', 'zyf@163.com', '123', '19', '女', '99a6ef8e-5b7d-4874-a7ba-be96706e5059.jpg', '12345678', '2020-01-23 13:31:08', '2020-01-23 13:31:08');
INSERT INTO `tp_user` VALUES ('2', '刘夏', 'liuxia@163.com', '123', '18', '男', 'd5cbdb45-820f-4e8d-b9de-ecf03475c153.png', '12345678', '2020-01-23 13:58:12', '2020-01-23 13:58:12');

-- ----------------------------
-- Table structure for tp_viewpoint
-- ----------------------------
DROP TABLE IF EXISTS `tp_viewpoint`;
CREATE TABLE `tp_viewpoint` (
  `tp_vid` int(11) NOT NULL AUTO_INCREMENT,
  `tp_title` varchar(100) DEFAULT NULL,
  `tp_vname` varchar(100) DEFAULT NULL,
  `tp_vtype` varchar(100) DEFAULT NULL,
  `tp_vpic` varchar(100) DEFAULT NULL,
  `tp_vphone` varchar(100) DEFAULT NULL,
  `tp_level` varchar(100) DEFAULT NULL,
  `tp_price` varchar(100) DEFAULT NULL,
  `tp_location` varchar(100) DEFAULT NULL,
  `tp_zip` varchar(100) DEFAULT NULL,
  `tp_opentime` varchar(100) DEFAULT NULL,
  `tp_creatTime` timestamp NULL DEFAULT NULL,
  `tp_vcontent` text,
  PRIMARY KEY (`tp_vid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_viewpoint
-- ----------------------------
INSERT INTO `tp_viewpoint` VALUES ('1', '打卡地标璀璨夜景', '广州塔', '建筑', 'c18e4aab-fc36-4aa4-ab4b-1d99b28f26d1.jpg', '12345678', '5A', '998', '广州市', '广东省广州市海珠区艺苑东路', '全年 09:30-22:30', null, '<p><br></p>');
INSERT INTO `tp_viewpoint` VALUES ('2', '国家级5A旅游景区长隆旅游度假区', '长隆野生动物世界', '度假区', '12f307ec-892a-4535-92a9-411b013296ac.jpg', '12345678', '2A', '1988', '广州市', '广州市番禺区大石镇105国道大石段593号', '09:30-22:30', null, '<p><br></p>');
INSERT INTO `tp_viewpoint` VALUES ('3', '山水相依的森林氧吧', '流溪河森林公园', '主题公园', '8a21ad60-9c72-44fc-a9ab-73bf4a673774.jpg', '12345678', '5A', '998', '广州市', '广州市从化区良口镇流溪河林场香雪大街48号', '09:30-22:30', null, null);
INSERT INTO `tp_viewpoint` VALUES ('4', '岭南水乡风情主题公园', '长鹿旅游休博园', '主题公园', '6adcb51c-5954-45e0-a512-76b5cff430d5.jpg', '12345678', '5A', '968', '佛山市', '佛山市顺德区伦教三洲建设东路8号', '09:30-22:30', null, null);

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words` (
  `lw_id` int(11) NOT NULL AUTO_INCREMENT,
  `lw_name` varchar(100) DEFAULT NULL,
  `lw_date` varchar(100) DEFAULT NULL,
  `lw_content` varchar(100) DEFAULT NULL,
  `lw_for_name` varchar(100) DEFAULT NULL,
  `lw_for_article_id` varchar(100) DEFAULT NULL,
  `lw_forumId` varchar(100) DEFAULT NULL,
  `lw_hotel_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words
-- ----------------------------
INSERT INTO `words` VALUES ('3', 'zyf', '2020-01-23 03:23:48', '全季酒店很舒适安静', null, null, null, '2');
