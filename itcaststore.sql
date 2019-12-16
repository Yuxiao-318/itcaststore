/*
 Navicat Premium Data Transfer

 Source Server         : database
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : itcaststore

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 16/12/2019 09:03:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `n_time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '暂停当日达业务', '尊敬的用户， 　　<br>\r\n　　为了让大家有更好的购物体验，3月25日起，当日达业务关小黑屋回炉升级！<br>具体开放时间请留意公告，感谢大家的支持与理解，祝大家购物愉快！<br>\r\n3月23日<br>\r\n管理系统<br>', '20191216015117');
INSERT INTO `notice` VALUES (2, '年货礼包兑换时间通知', '尊敬的用户：\r\n    非常抱歉，因为年后部分供应商工厂开工较晚，导致个别商品到货延迟。\r\n    基于此，20年年货礼包的兑换入口会延期到3月17日，请您在有效期内完成兑换。\r\n    以下礼包预计本周四，即12月30日到货。造成不便深表歉意，敬请谅解。', '20191216015142');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('0c0796f2-0124-4a13-a891-5efbb63b04f9', '79bbe618-d2f8-4081-b35a-62ebbe938b64', 1);
INSERT INTO `orderitem` VALUES ('305a7870-3820-4079-b6f9-5d2b63cbcd2a', '72c52302-cd1e-4a22-8ac8-dc300a915be5', 1);
INSERT INTO `orderitem` VALUES ('611f80fa-4273-4674-be09-9530b6276e15', '84c842da-16b6-4e87-953e-859a1ca62bab', 1);
INSERT INTO `orderitem` VALUES ('677a7314-0e16-4e18-8aec-552f848e0d75', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', 1);
INSERT INTO `orderitem` VALUES ('677a7314-0e16-4e18-8aec-552f848e0d75', 'bf66a00c-4a78-458b-93c8-08896ee14976', 1);
INSERT INTO `orderitem` VALUES ('6f591522-7a2a-4a31-899d-ef1181c72f5f', '9a7af97e-deea-417e-ad66-23ea755d2a51', 1);
INSERT INTO `orderitem` VALUES ('7ae96e6d-4600-41a5-bc5d-143b34ba61db', 'bdb32537-8f2c-4ba2-a752-94fdc0e9a250', 1);
INSERT INTO `orderitem` VALUES ('a5bfb13d-9085-4374-94d9-4864b4d618ab', '9a7af97e-deea-417e-ad66-23ea755d2a51', 1);
INSERT INTO `orderitem` VALUES ('c4b2bfff-1694-4e28-bcf8-fa7169bfc978', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', 2);
INSERT INTO `orderitem` VALUES ('c4b2bfff-1694-4e28-bcf8-fa7169bfc978', '79bbe618-d2f8-4081-b35a-62ebbe938b64', 2);
INSERT INTO `orderitem` VALUES ('d88d75cd-15e3-4622-801d-4cad902aeaa1', '3cdd01d2-95d4-4077-b512-ff4c3b340d6b', 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receiverName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receiverPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `paystate` int(11) DEFAULT 0,
  `ordertime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0c0796f2-0124-4a13-a891-5efbb63b04f9', 44.5, '北京市昌平区金燕龙办公楼', 'hanyongmeng', '15207545526', 1, '2016-05-18 10:36:36', 4);
INSERT INTO `orders` VALUES ('305a7870-3820-4079-b6f9-5d2b63cbcd2a', 59, '北京市昌平区建材城西路金燕龙办公楼', 'huangyun', '13041019968', 0, '2016-01-13 15:14:54', 3);
INSERT INTO `orders` VALUES ('611f80fa-4273-4674-be09-9530b6276e15', 89, '北京市海淀区清河永泰园5号楼501', 'huangyun', '13041019968', 1, '2016-01-10 18:00:36', 3);
INSERT INTO `orders` VALUES ('677a7314-0e16-4e18-8aec-552f848e0d75', 65, '北京市昌平区', 'hanyongmeng', '15207545526', 0, '2016-05-18 11:33:25', 4);
INSERT INTO `orders` VALUES ('6f591522-7a2a-4a31-899d-ef1181c72f5f', 25, '北京市昌平区金燕龙办公楼一层传智播客', 'madan', '13269219270', 0, '2016-01-10 18:00:36', 2);
INSERT INTO `orders` VALUES ('7ae96e6d-4600-41a5-bc5d-143b34ba61db', 35, '北京市昌平区建材城西路', 'madan', '13269219270', 0, '2016-02-25 10:44:56', 2);
INSERT INTO `orders` VALUES ('a5bfb13d-9085-4374-94d9-4864b4d618ab', 25, '海淀区圆明园西路', 'hanyongmeng', '13455260812', 1, '2016-02-25 10:43:40', 4);
INSERT INTO `orders` VALUES ('c4b2bfff-1694-4e28-bcf8-fa7169bfc978', 129, '北京市昌平区北七家镇', 'hanyongmeng', '15207545526', 1, '2016-05-18 10:36:22', 4);
INSERT INTO `orders` VALUES ('d88d75cd-15e3-4622-801d-4cad902aeaa1', 25, '北京市昌平区建材城西路金燕龙办公楼', 'hanyongmeng', '13848399998', 1, '2016-02-25 10:44:23', 4);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '红米k30', 1699, '电子产品', 16, '/productImg/12/13/O1CN01DmyAZP29zFlCvdIFf_!!0-item_pic.jpg_430x430q90.jpg', '手机！！');
INSERT INTO `products` VALUES ('3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '华为M6平板', 2099, '电子产品', 15, '/productImg/4/3/O1CN01tAywY61PTDjTP05tq_!!0-item_pic.jpg_430x430q90.jpg', '平板电脑~');
INSERT INTO `products` VALUES ('3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '漫步者G4耳机', 299, '电子产品', 5, '/productImg/6/5/O1CN01oV2Llw1kMRkVyxXhk_!!0-item_pic.jpg_430x430q90.jpg', '耳机！');
INSERT INTO `products` VALUES ('4dbac6bb-ac2a-4ea0-a62f-ea5a2fc2b3c2', '易大虎鞋', 124, '鞋子', 198, '/productImg/5/8/O1CN01eHABKV1tvYhpo4cwX_!!2264895964.jpg_430x430q90.jpg', '厚底鞋哦~');
INSERT INTO `products` VALUES ('67a44950-935a-4dac-953d-515fd92d8174', '棉拖', 19, '鞋子', 200, '/productImg/12/12/O1CN01JIWkYH1RUFq9cuSe5_!!2121402114.jpg_430x430q90.jpg', '舒服的棉拖！');
INSERT INTO `products` VALUES ('72c52302-cd1e-4a22-8ac8-dc300a915be5', '好吃的面包', 19, '食品', 94, '/productImg/3/1/O1CN01qWf10O2Di5NTM5zbj_!!3931028642.jpg_430x430q90.jpg', '好吃就完事了！');
INSERT INTO `products` VALUES ('79bbe618-d2f8-4081-b35a-62ebbe938b64', 'Java基础入门', 44.5, '书本', 7, '/productImg/9/0/697a23d6-225a-41a3-8c20-7ab624265ecc.png', '《Java基础入门》从初学者的角度详细讲解了Java开发中重点用到的多种技术。全书共11章，包括Java开发环境的搭建及其运行机制、基本语法、面向对象的思想，采用典型翔实的例子、通俗易懂的语言阐述面向对象中的抽象概念。在多线程、常用API、集合、IO、GUI、网络编程章节中，通过剖析案例、分析代码结构含义、解决常见问题等方式，帮助初学者培养良好的编程习惯。最后，讲解了Eclipse开发工具，帮助初学者熟悉开发工具的使用。');
INSERT INTO `products` VALUES ('84c842da-16b6-4e87-953e-859a1ca62bab', '天气之子', 40, '书本', 47, '/productImg/2/8/O1CN019h6aEZ1wOzOexTZg4_!!0-item_pic.jpg_430x430q90.jpg', '天气之子小说哦~');
INSERT INTO `products` VALUES ('8740bee0-bfb8-4ba1-8f6e-b69310617db9', '羊多利！', 79, '生活用品', 100, '/productImg/3/0/O1CN019h6aEZ1wOzOexTZg4_!!0-item_pic.jpg_430x430q90.jpg', '可爱的羊羊~');
INSERT INTO `products` VALUES ('880fdb00-6798-4302-962b-f337f3393802', 'Java Web程序开发入门', 44.5, '书本', 100, '/productImg/9/3/eac105d4-4ab5-4af9-9061-e255016b79d9.png', '本书为Java Web开发入门教材，让初学者达到能够灵活使用Java语言开发Web应用程序的程度。为了让初学者易于学习，本书力求内容通俗易懂，讲解寓教于乐，同时针对书中的每个知识点，都精心设计了经典案例，让初学者真正理解这些知识点在实际工作中如何去运用。');
INSERT INTO `products` VALUES ('8c19d2e2-1020-425d-aeeb-56d3c1bc0a81', '好次的巧克力！！', 26, '食品', 200, '/productImg/14/11/O1CN0148yVVx1nx2HdtmFRQ_!!199085155.jpg_430x430q90.jpg', '吃就完事啦！！');
INSERT INTO `products` VALUES ('968df3a0-be4d-473e-85a8-d3466b4ca7c2', '3*2的鞋柜哦~', 39, '生活用品', 2, '/productImg/14/1/O1CN01ntt4Yi2IAGBRBXzFU_!!2233359245.jpg_430x430q90.jpg', '鞋柜嘛~');
INSERT INTO `products` VALUES ('9a7af97e-deea-417e-ad66-23ea755d2a51', 'QQ音乐会员', 8, '虚拟道具', 8, '/productImg/2/7/O1CN01hIxA2X28YrGzKFUPX_!!2-item_pic.png_430x430q90.png', '本书是美国著名家庭问题和儿童教育问题专家、畅销书作家詹姆士·杜布森的新作。全书围绕值得令人类关注的培育男孩问题，讨论了家庭教育、学校教育、父母关爱，以及整个社会文化对男孩成长的影响。针对美国社会普遍存在的男孩教育问题，如父亲缺席、母亲上班、暴力泛滥、单亲家庭、同性恋、学校对男孩特点的忽视等等，提出了自己的看法和解决思路，具有很强的指导性和可操作性，是父母、教师和青年工作者的必读参考书。');
INSERT INTO `products` VALUES ('adc06981-0dc9-4006-b763-e6413ee93ac1', '石子饼', 9.9, '食品', 20, '/productImg/15/1/O1CN01C05jod23QY3RB9jCg_!!0-item_pic.jpg_430x430q90.jpg', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `introduce` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '普通用户',
  `registTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '男', 'huan9yun@163.com', '13041019968', '我是超级管理员，我可以登录后台管理系统', '49338fdc-d8c9-46fa-8391-0fac7bf09707', 1, '超级用户', '2015-03-19 16:16:40');
INSERT INTO `user` VALUES (2, 'madan', '123456', '女', 'huan9yun@163.com', '13269219270', '我是一个课程设计师', 'c1cc1229-f0ac-41b4-920c-dfef9f8a96a3', 1, '普通用户', '2015-03-19 18:12:36');
INSERT INTO `user` VALUES (3, 'huangyun', '123456', '男', 'huan9yun@163.com', '13041019968', '大家好，我是黄云', 'd0827d1d-dc0d-4cdc-8710-678ce917880e', 1, '普通用户', '2015-03-20 17:36:38');
INSERT INTO `user` VALUES (4, 'hanyongmeng', '123456', '男', 'itcast_hym@163.com', '15207545526', '课程设计师', 'da483412-1e34-43cf-aef2-4925748c811d', 1, '普通用户', '2016-01-21 15:19:32');
INSERT INTO `user` VALUES (5, 'tianjiao', '123456', '男', 'hanyongmeng@126.cn', '', '', 'f8173f4f-debe-4d32-8117-b228d555d822', 0, '普通用户', '2016-02-18 15:32:01');

SET FOREIGN_KEY_CHECKS = 1;
