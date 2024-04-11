/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : web_shop

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 09/10/2022 10:09:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES (1, 'admin', '63814a82384f9faca8bcca0f08d86eb9');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10, 0) DEFAULT NULL,
  `buy_count` int(11) DEFAULT NULL,
  `is_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `counts` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_counts` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'RPG角色扮演游戏', 'el-icon-reading', 13);
INSERT INTO `category` VALUES (2, 'FPS第一人称射击游戏', 'el-icon-box', 24);
INSERT INTO `category` VALUES (3, 'SLG策略与战棋类游戏', 'el-icon-present', 24);
INSERT INTO `category` VALUES (4, 'RTS即时战略游戏', 'el-icon-mobile-phone', 16);
INSERT INTO `category` VALUES (5, 'AVG冒险类游戏', 'el-icon-ice-cream', 20);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `comment_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_rating` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for homecasual
-- ----------------------------
DROP TABLE IF EXISTS `homecasual`;
CREATE TABLE `homecasual`  (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homecasual
-- ----------------------------
INSERT INTO `homecasual` VALUES (1, 'http://localhost:3000/images/home/s1.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES (2, 'http://localhost:3000/images/home/s2.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=228');
INSERT INTO `homecasual` VALUES (3, 'http://localhost:3000/images/home/s3.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');
INSERT INTO `homecasual` VALUES (4, 'http://localhost:3000/images/home/s4.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES (5, 'http://localhost:3000/images/home/s5.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6230');
INSERT INTO `homecasual` VALUES (6, 'http://localhost:3000/images/home/s6.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=190');
INSERT INTO `homecasual` VALUES (7, 'http://localhost:3000/images/home/s7.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=229');
INSERT INTO `homecasual` VALUES (8, 'http://localhost:3000/images/home/s8.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES (9, 'http://localhost:3000/images/home/s9.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `goods_id` bigint(20) NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hd_thumb_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `normal_price` int(11) DEFAULT NULL,
  `market_price` int(11) DEFAULT NULL,
  `sales_tip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `comments_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (20221005, '知名游戏网站metratic2017年PC游戏最高分。不算开放世界，却拥有真正的开放世界玩法，高自由度的交互，可以随便杀NPC，无数对话，各种新奇的玩法。我心目中最好的3款游戏之一。', '神界：原罪2', 'http://localhost:3000/uploads/upload_47268e670d9b3913a9a059195a7e92a7.jpg', 'http://localhost:3000/uploads/upload_47268e670d9b3913a9a059195a7e92a7.jpg', 'http://localhost:3000/uploads/upload_47268e670d9b3913a9a059195a7e92a7.jpg', 98, 98300, 98500, '角色扮演', 1, 999, 0);
INSERT INTO `recommend` VALUES (2022100502, '现代开放式游戏的典范。三线叙事，任务量众多，小游戏更多，可以打网球，开潜艇，开坦克，开飞机。更牛的是，个人在游戏中的操作可以对游戏产生反向影响，比如改变游戏中的新闻，改变游戏中各大企业的股票', 'GT5', 'http://localhost:3000/uploads/upload_1d60f208b844963392fd8f27f2bc88b8.jpg', 'http://localhost:3000/uploads/upload_1d60f208b844963392fd8f27f2bc88b8.jpg', 'http://localhost:3000/uploads/upload_1d60f208b844963392fd8f27f2bc88b8.jpg', 198, 198300, 198500, '角色扮演', 1, 0, 0);
INSERT INTO `recommend` VALUES (2022100503, '同样开放世界世界，自由度相比上述两者略有下降，但是剧情的丰富达到了业界一流水平。每段故事都有丰满的角色和让人或愤怒或憎恶或惋惜的角色。一个个好故事，让整个游戏的冒险变得极具沉浸感。', '巫师3', 'http://localhost:3000/uploads/upload_008d570f8a0a5a4a49575e868b065921.jpg', 'http://localhost:3000/uploads/upload_008d570f8a0a5a4a49575e868b065921.jpg', 'http://localhost:3000/uploads/upload_008d570f8a0a5a4a49575e868b065921.jpg', 110, 110300, 110500, '角色扮演', 1, 996, 0);
INSERT INTO `recommend` VALUES (2022100504, '《CSGO中文版（Counter-Strike:GlobalOffensive）》是一款完美世界运营的第一人称射击游戏，反恐精英：全球攻势是《反恐精英》系列游戏的第四款作品，凭借其纯正的血统延续、全面革新的画质表现、公平的竞技体验等，已斩获数项荣誉。', 'CSGO', 'http://localhost:3000/uploads/upload_eb327a755066bc42cbeea22aa78ed818.png', 'http://localhost:3000/uploads/upload_eb327a755066bc42cbeea22aa78ed818.png', 'http://localhost:3000/uploads/upload_eb327a755066bc42cbeea22aa78ed818.png', 98, 98300, 98500, '射击', 2, 999, 0);
INSERT INTO `recommend` VALUES (2022100506, '命运2豪华版（Destiny2）》是一款科幻题材的战争游戏，《命运2》将大改前作，就像一款全新游戏非原作大型资料片，而且还将取消Xbox360，PS3平台，利用新主机大干一场。命运2扩展包通行证-包括扩展包1和2，每个都有新的故事任务，合作活动，多人竞争游戏和新武器，装甲和装备', '命运2 豪华版', 'http://localhost:3000/uploads/upload_4097da66a55b70013829cbbc46651e75.jpg', 'http://localhost:3000/uploads/upload_4097da66a55b70013829cbbc46651e75.jpg', 'http://localhost:3000/uploads/upload_4097da66a55b70013829cbbc46651e75.jpg', 98, 98300, 98500, '射击', 2, 999, 0);
INSERT INTO `recommend` VALUES (2022100507, '近五年来最棒的战棋游戏之一，没玩过的赶紧趁着这波夏促入手吧~', '幽浮2', 'http://localhost:3000/uploads/upload_d96c07788d18b93dc0e03f734ef35b37.jpg', 'http://localhost:3000/uploads/upload_d96c07788d18b93dc0e03f734ef35b37.jpg', 'http://localhost:3000/uploads/upload_d96c07788d18b93dc0e03f734ef35b37.jpg', 120, 120300, 120500, '策略', 3, 999, 0);
INSERT INTO `recommend` VALUES (2022100508, '生存+策略战棋，困难模式超级烧脑！', '废土2', 'http://localhost:3000/uploads/upload_ce70502bb70416857d8f12a30c40eb17.jpg', 'http://localhost:3000/uploads/upload_ce70502bb70416857d8f12a30c40eb17.jpg', 'http://localhost:3000/uploads/upload_ce70502bb70416857d8f12a30c40eb17.jpg', 64, 64300, 64500, '策略', 3, 999, 0);
INSERT INTO `recommend` VALUES (2022100509, '经典4x策略游戏《下个回合6》，历史最低价！59买不了吃亏，买不了上当，足够支撑你200+的游戏时长噢~', '文明6', 'http://localhost:3000/uploads/upload_ce9903b283e660d41f91e7b9e6de3180.png', 'http://localhost:3000/uploads/upload_ce9903b283e660d41f91e7b9e6de3180.png', 'http://localhost:3000/uploads/upload_ce9903b283e660d41f91e7b9e6de3180.png', 59, 59300, 59500, '策略', 3, 999, 0);
INSERT INTO `recommend` VALUES (2022100510, '钢铁雄师2', '钢铁雄师2', 'http://localhost:3000/uploads/upload_2a47dd7a21a569cdea52999346c7e78a.jpg', 'http://localhost:3000/uploads/upload_2a47dd7a21a569cdea52999346c7e78a.jpg', 'http://localhost:3000/uploads/upload_2a47dd7a21a569cdea52999346c7e78a.jpg', 66, 66300, 66500, '战略', 4, 998, 0);
INSERT INTO `recommend` VALUES (2022100511, '指挥：现代战争', '指挥：现代战争', 'http://localhost:3000/uploads/upload_755cf94743f0f19ecc4135df340738cb.jpg', 'http://localhost:3000/uploads/upload_755cf94743f0f19ecc4135df340738cb.jpg', 'http://localhost:3000/uploads/upload_755cf94743f0f19ecc4135df340738cb.jpg', 99, 99300, 99500, '战略', 4, 997, 0);
INSERT INTO `recommend` VALUES (2022100512, '纪元1800', '纪元1800', 'http://localhost:3000/uploads/upload_d7909ff518276ddefca28dd5941dc6af.jpg', 'http://localhost:3000/uploads/upload_d7909ff518276ddefca28dd5941dc6af.jpg', 'http://localhost:3000/uploads/upload_d7909ff518276ddefca28dd5941dc6af.jpg', 88, 88300, 88500, '战略', 4, 999, 0);
INSERT INTO `recommend` VALUES (2022100513, '古墓丽影：崛起', '古墓丽影：崛起', 'http://localhost:3000/uploads/upload_b0126b2d45b9213c30d4a0d5a05ead5b.jpg', 'http://localhost:3000/uploads/upload_b0126b2d45b9213c30d4a0d5a05ead5b.jpg', 'http://localhost:3000/uploads/upload_b0126b2d45b9213c30d4a0d5a05ead5b.jpg', 28, 28300, 28500, '战略', 5, 999, 0);
INSERT INTO `recommend` VALUES (2022100514, '异星探险家', '异星探险家', 'http://localhost:3000/uploads/upload_0bf81b9d517cd3ff909e51df3c3c8ba9.png', 'http://localhost:3000/uploads/upload_0bf81b9d517cd3ff909e51df3c3c8ba9.png', 'http://localhost:3000/uploads/upload_0bf81b9d517cd3ff909e51df3c3c8ba9.png', 66, 66300, 66500, '战略', 5, 996, 0);
INSERT INTO `recommend` VALUES (2022100515, '艾迪芬奇的记忆', '艾迪芬奇的记忆', 'http://localhost:3000/uploads/upload_dfe556a63c25b79e9d3daa543f8d289f.jpg', 'http://localhost:3000/uploads/upload_dfe556a63c25b79e9d3daa543f8d289f.jpg', 'http://localhost:3000/uploads/upload_dfe556a63c25b79e9d3daa543f8d289f.jpg', 99, 99300, 99500, '冒险', 5, 998, 0);
INSERT INTO `recommend` VALUES (20221100505, '《绝地求生：大逃杀正式版（PLAYERUNKNOWN’SBATTLEGROUNDS）》', '绝地求生：大逃杀', 'http://localhost:3000/uploads/upload_c1e944f970da1786d4c5a80e702ed93a.jpg', 'http://localhost:3000/uploads/upload_c1e944f970da1786d4c5a80e702ed93a.jpg', 'http://localhost:3000/uploads/upload_c1e944f970da1786d4c5a80e702ed93a.jpg', 99, 99300, 99500, '射击', 2, 999, 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_order_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (16, 'dabo', 'd1c935942a8ccffaebafe30dc68dbe1e', NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:3000/avatar_uploads/avatar_default.jpg', '中国青岛');

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `goods_content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '订单内容json',
  `status` int(11) DEFAULT 0 COMMENT '当前订单状态 0正在执行 1结束',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货地址',
  `create_time` datetime(0) DEFAULT NULL COMMENT '订单创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_order
-- ----------------------------
INSERT INTO `user_order` VALUES (1, 16, '[{\"goods_id\":2022100502,\"goods_name\":\"GT5\",\"thumb_url\":\"http://localhost:3000/uploads/upload_1d60f208b844963392fd8f27f2bc88b8.jpg\",\"price\":198,\"count\":1}]', 0, '中国青岛', '2022-10-09 10:00:54');

SET FOREIGN_KEY_CHECKS = 1;
