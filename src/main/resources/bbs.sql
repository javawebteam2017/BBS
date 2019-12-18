/*
 Navicat Premium Data Transfer

 Source Server         : 10.241.0.41
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 10.241.0.41:3306
 Source Schema         : bbs

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 18/12/2019 13:52:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NULL DEFAULT NULL,
  `city_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`city_id`) USING BTREE,
  INDEX `FKll21eddgtrjc9f40ueeouyr8f`(`province_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 354 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 1, '北京市区');
INSERT INTO `city` VALUES (2, 1, '北京郊区');
INSERT INTO `city` VALUES (3, 2, '天津市区');
INSERT INTO `city` VALUES (4, 2, '天津郊区');
INSERT INTO `city` VALUES (5, 3, '石家庄市');
INSERT INTO `city` VALUES (6, 3, '唐山市');
INSERT INTO `city` VALUES (7, 3, '秦皇岛市');
INSERT INTO `city` VALUES (8, 3, '邯郸市');
INSERT INTO `city` VALUES (9, 3, '邢台市');
INSERT INTO `city` VALUES (10, 3, '保定市');
INSERT INTO `city` VALUES (11, 3, '张家口市');
INSERT INTO `city` VALUES (12, 3, '承德市');
INSERT INTO `city` VALUES (13, 3, '沧州市');
INSERT INTO `city` VALUES (14, 3, '廊坊市');
INSERT INTO `city` VALUES (15, 3, '衡水市');
INSERT INTO `city` VALUES (16, 4, '太原市');
INSERT INTO `city` VALUES (17, 4, '大同市');
INSERT INTO `city` VALUES (18, 4, '阳泉市');
INSERT INTO `city` VALUES (19, 4, '长治市');
INSERT INTO `city` VALUES (20, 4, '晋城市');
INSERT INTO `city` VALUES (21, 4, '朔州市');
INSERT INTO `city` VALUES (22, 4, '晋中市');
INSERT INTO `city` VALUES (23, 4, '运城市');
INSERT INTO `city` VALUES (24, 4, '忻州市');
INSERT INTO `city` VALUES (25, 4, '临汾市');
INSERT INTO `city` VALUES (26, 4, '吕梁市');
INSERT INTO `city` VALUES (27, 5, '呼和浩特市');
INSERT INTO `city` VALUES (28, 5, '包头市');
INSERT INTO `city` VALUES (29, 5, '乌海市');
INSERT INTO `city` VALUES (30, 5, '赤峰市');
INSERT INTO `city` VALUES (31, 5, '通辽市');
INSERT INTO `city` VALUES (32, 5, '鄂尔多斯市');
INSERT INTO `city` VALUES (33, 5, '呼伦贝尔市');
INSERT INTO `city` VALUES (34, 5, '巴彦淖尔市');
INSERT INTO `city` VALUES (35, 5, '乌兰察布市');
INSERT INTO `city` VALUES (36, 5, '兴安盟');
INSERT INTO `city` VALUES (37, 5, '锡林郭勒盟');
INSERT INTO `city` VALUES (38, 5, '阿拉善盟');
INSERT INTO `city` VALUES (39, 6, '沈阳市');
INSERT INTO `city` VALUES (40, 6, '大连市');
INSERT INTO `city` VALUES (41, 6, '鞍山市');
INSERT INTO `city` VALUES (42, 6, '抚顺市');
INSERT INTO `city` VALUES (43, 6, '本溪市');
INSERT INTO `city` VALUES (44, 6, '丹东市');
INSERT INTO `city` VALUES (45, 6, '锦州市');
INSERT INTO `city` VALUES (46, 6, '营口市');
INSERT INTO `city` VALUES (47, 6, '阜新市');
INSERT INTO `city` VALUES (48, 6, '辽阳市');
INSERT INTO `city` VALUES (49, 6, '盘锦市');
INSERT INTO `city` VALUES (50, 6, '铁岭市');
INSERT INTO `city` VALUES (51, 6, '朝阳市');
INSERT INTO `city` VALUES (52, 6, '葫芦岛市');
INSERT INTO `city` VALUES (53, 7, '长春市');
INSERT INTO `city` VALUES (54, 7, '吉林市');
INSERT INTO `city` VALUES (55, 7, '四平市');
INSERT INTO `city` VALUES (56, 7, '辽源市');
INSERT INTO `city` VALUES (57, 7, '通化市');
INSERT INTO `city` VALUES (58, 7, '白山市');
INSERT INTO `city` VALUES (59, 7, '松原市');
INSERT INTO `city` VALUES (60, 7, '白城市');
INSERT INTO `city` VALUES (61, 7, '延边朝鲜族自治州');
INSERT INTO `city` VALUES (62, 8, '哈尔滨市');
INSERT INTO `city` VALUES (63, 8, '齐齐哈尔市');
INSERT INTO `city` VALUES (64, 8, '鸡西市');
INSERT INTO `city` VALUES (65, 8, '鹤岗市');
INSERT INTO `city` VALUES (66, 8, '双鸭山市');
INSERT INTO `city` VALUES (67, 8, '大庆市');
INSERT INTO `city` VALUES (68, 8, '伊春市');
INSERT INTO `city` VALUES (69, 8, '佳木斯市');
INSERT INTO `city` VALUES (70, 8, '七台河市');
INSERT INTO `city` VALUES (71, 8, '牡丹江市');
INSERT INTO `city` VALUES (72, 8, '黑河市');
INSERT INTO `city` VALUES (73, 8, '绥化市');
INSERT INTO `city` VALUES (74, 8, '大兴安岭地区');
INSERT INTO `city` VALUES (75, 9, '上海市区');
INSERT INTO `city` VALUES (76, 9, '县');
INSERT INTO `city` VALUES (77, 10, '南京市');
INSERT INTO `city` VALUES (78, 10, '无锡市');
INSERT INTO `city` VALUES (79, 10, '徐州市');
INSERT INTO `city` VALUES (80, 10, '常州市');
INSERT INTO `city` VALUES (81, 10, '苏州市');
INSERT INTO `city` VALUES (82, 10, '南通市');
INSERT INTO `city` VALUES (83, 10, '连云港市');
INSERT INTO `city` VALUES (84, 10, '淮安市');
INSERT INTO `city` VALUES (85, 10, '盐城市');
INSERT INTO `city` VALUES (86, 10, '扬州市');
INSERT INTO `city` VALUES (87, 10, '镇江市');
INSERT INTO `city` VALUES (88, 10, '泰州市');
INSERT INTO `city` VALUES (89, 10, '宿迁市');
INSERT INTO `city` VALUES (90, 11, '杭州市');
INSERT INTO `city` VALUES (91, 11, '宁波市');
INSERT INTO `city` VALUES (92, 11, '温州市');
INSERT INTO `city` VALUES (93, 11, '嘉兴市');
INSERT INTO `city` VALUES (94, 11, '湖州市');
INSERT INTO `city` VALUES (95, 11, '绍兴市');
INSERT INTO `city` VALUES (96, 11, '金华市');
INSERT INTO `city` VALUES (97, 11, '衢州市');
INSERT INTO `city` VALUES (98, 11, '舟山市');
INSERT INTO `city` VALUES (99, 11, '台州市');
INSERT INTO `city` VALUES (100, 11, '丽水市');
INSERT INTO `city` VALUES (101, 12, '合肥市');
INSERT INTO `city` VALUES (102, 12, '芜湖市');
INSERT INTO `city` VALUES (103, 12, '蚌埠市');
INSERT INTO `city` VALUES (104, 12, '淮南市');
INSERT INTO `city` VALUES (105, 12, '马鞍山市');
INSERT INTO `city` VALUES (106, 12, '淮北市');
INSERT INTO `city` VALUES (107, 12, '铜陵市');
INSERT INTO `city` VALUES (108, 12, '安庆市');
INSERT INTO `city` VALUES (109, 12, '黄山市');
INSERT INTO `city` VALUES (110, 12, '滁州市');
INSERT INTO `city` VALUES (111, 12, '阜阳市');
INSERT INTO `city` VALUES (112, 12, '宿州市');
INSERT INTO `city` VALUES (113, 12, '巢湖市');
INSERT INTO `city` VALUES (114, 12, '六安市');
INSERT INTO `city` VALUES (115, 12, '亳州市');
INSERT INTO `city` VALUES (116, 12, '池州市');
INSERT INTO `city` VALUES (117, 12, '宣城市');
INSERT INTO `city` VALUES (118, 13, '福州市');
INSERT INTO `city` VALUES (119, 13, '厦门市');
INSERT INTO `city` VALUES (120, 13, '莆田市');
INSERT INTO `city` VALUES (121, 13, '三明市');
INSERT INTO `city` VALUES (122, 13, '泉州市');
INSERT INTO `city` VALUES (123, 13, '漳州市');
INSERT INTO `city` VALUES (124, 13, '南平市');
INSERT INTO `city` VALUES (125, 13, '龙岩市');
INSERT INTO `city` VALUES (126, 13, '宁德市');
INSERT INTO `city` VALUES (127, 14, '南昌市');
INSERT INTO `city` VALUES (128, 14, '景德镇市');
INSERT INTO `city` VALUES (129, 14, '萍乡市');
INSERT INTO `city` VALUES (130, 14, '九江市');
INSERT INTO `city` VALUES (131, 14, '新余市');
INSERT INTO `city` VALUES (132, 14, '鹰潭市');
INSERT INTO `city` VALUES (133, 14, '赣州市');
INSERT INTO `city` VALUES (134, 14, '吉安市');
INSERT INTO `city` VALUES (135, 14, '宜春市');
INSERT INTO `city` VALUES (136, 14, '抚州市');
INSERT INTO `city` VALUES (137, 14, '上饶市');
INSERT INTO `city` VALUES (138, 15, '济南市');
INSERT INTO `city` VALUES (139, 15, '青岛市');
INSERT INTO `city` VALUES (140, 15, '淄博市');
INSERT INTO `city` VALUES (141, 15, '枣庄市');
INSERT INTO `city` VALUES (142, 15, '东营市');
INSERT INTO `city` VALUES (143, 15, '烟台市');
INSERT INTO `city` VALUES (144, 15, '潍坊市');
INSERT INTO `city` VALUES (145, 15, '济宁市');
INSERT INTO `city` VALUES (146, 15, '泰安市');
INSERT INTO `city` VALUES (147, 15, '威海市');
INSERT INTO `city` VALUES (148, 15, '日照市');
INSERT INTO `city` VALUES (149, 15, '莱芜市');
INSERT INTO `city` VALUES (150, 15, '临沂市');
INSERT INTO `city` VALUES (151, 15, '德州市');
INSERT INTO `city` VALUES (152, 15, '聊城市');
INSERT INTO `city` VALUES (153, 15, '滨州市');
INSERT INTO `city` VALUES (154, 15, '荷泽市');
INSERT INTO `city` VALUES (155, 16, '郑州市');
INSERT INTO `city` VALUES (156, 16, '开封市');
INSERT INTO `city` VALUES (157, 16, '洛阳市');
INSERT INTO `city` VALUES (158, 16, '平顶山市');
INSERT INTO `city` VALUES (159, 16, '安阳市');
INSERT INTO `city` VALUES (160, 16, '鹤壁市');
INSERT INTO `city` VALUES (161, 16, '新乡市');
INSERT INTO `city` VALUES (162, 16, '焦作市');
INSERT INTO `city` VALUES (163, 16, '濮阳市');
INSERT INTO `city` VALUES (164, 16, '许昌市');
INSERT INTO `city` VALUES (165, 16, '漯河市');
INSERT INTO `city` VALUES (166, 16, '三门峡市');
INSERT INTO `city` VALUES (167, 16, '南阳市');
INSERT INTO `city` VALUES (168, 16, '商丘市');
INSERT INTO `city` VALUES (169, 16, '信阳市');
INSERT INTO `city` VALUES (170, 16, '周口市');
INSERT INTO `city` VALUES (171, 16, '驻马店市');
INSERT INTO `city` VALUES (172, 17, '武汉市');
INSERT INTO `city` VALUES (173, 17, '黄石市');
INSERT INTO `city` VALUES (174, 17, '十堰市');
INSERT INTO `city` VALUES (175, 17, '宜昌市');
INSERT INTO `city` VALUES (176, 17, '襄樊市');
INSERT INTO `city` VALUES (177, 17, '鄂州市');
INSERT INTO `city` VALUES (178, 17, '荆门市');
INSERT INTO `city` VALUES (179, 17, '孝感市');
INSERT INTO `city` VALUES (180, 17, '荆州市');
INSERT INTO `city` VALUES (181, 17, '黄冈市');
INSERT INTO `city` VALUES (182, 17, '咸宁市');
INSERT INTO `city` VALUES (183, 17, '随州市');
INSERT INTO `city` VALUES (184, 17, '恩施土家族苗族自治州');
INSERT INTO `city` VALUES (185, 17, '省直辖行政单位');
INSERT INTO `city` VALUES (186, 18, '长沙市');
INSERT INTO `city` VALUES (187, 18, '株洲市');
INSERT INTO `city` VALUES (188, 18, '湘潭市');
INSERT INTO `city` VALUES (189, 18, '衡阳市');
INSERT INTO `city` VALUES (190, 18, '邵阳市');
INSERT INTO `city` VALUES (191, 18, '岳阳市');
INSERT INTO `city` VALUES (192, 18, '常德市');
INSERT INTO `city` VALUES (193, 18, '张家界市');
INSERT INTO `city` VALUES (194, 18, '益阳市');
INSERT INTO `city` VALUES (195, 18, '郴州市');
INSERT INTO `city` VALUES (196, 18, '永州市');
INSERT INTO `city` VALUES (197, 18, '怀化市');
INSERT INTO `city` VALUES (198, 18, '娄底市');
INSERT INTO `city` VALUES (199, 18, '湘西土家族苗族自治州');
INSERT INTO `city` VALUES (200, 19, '广州市');
INSERT INTO `city` VALUES (201, 19, '韶关市');
INSERT INTO `city` VALUES (202, 19, '深圳市');
INSERT INTO `city` VALUES (203, 19, '珠海市');
INSERT INTO `city` VALUES (204, 19, '汕头市');
INSERT INTO `city` VALUES (205, 19, '佛山市');
INSERT INTO `city` VALUES (206, 19, '江门市');
INSERT INTO `city` VALUES (207, 19, '湛江市');
INSERT INTO `city` VALUES (208, 19, '茂名市');
INSERT INTO `city` VALUES (209, 19, '肇庆市');
INSERT INTO `city` VALUES (210, 19, '惠州市');
INSERT INTO `city` VALUES (211, 19, '梅州市');
INSERT INTO `city` VALUES (212, 19, '汕尾市');
INSERT INTO `city` VALUES (213, 19, '河源市');
INSERT INTO `city` VALUES (214, 19, '阳江市');
INSERT INTO `city` VALUES (215, 19, '清远市');
INSERT INTO `city` VALUES (216, 19, '东莞市');
INSERT INTO `city` VALUES (217, 19, '中山市');
INSERT INTO `city` VALUES (218, 19, '潮州市');
INSERT INTO `city` VALUES (219, 19, '揭阳市');
INSERT INTO `city` VALUES (220, 19, '云浮市');
INSERT INTO `city` VALUES (221, 20, '南宁市');
INSERT INTO `city` VALUES (222, 20, '柳州市');
INSERT INTO `city` VALUES (223, 20, '桂林市');
INSERT INTO `city` VALUES (224, 20, '梧州市');
INSERT INTO `city` VALUES (225, 20, '北海市');
INSERT INTO `city` VALUES (226, 20, '防城港市');
INSERT INTO `city` VALUES (227, 20, '钦州市');
INSERT INTO `city` VALUES (228, 20, '贵港市');
INSERT INTO `city` VALUES (229, 20, '玉林市');
INSERT INTO `city` VALUES (230, 20, '百色市');
INSERT INTO `city` VALUES (231, 20, '贺州市');
INSERT INTO `city` VALUES (232, 20, '河池市');
INSERT INTO `city` VALUES (233, 20, '来宾市');
INSERT INTO `city` VALUES (234, 20, '崇左市');
INSERT INTO `city` VALUES (235, 21, '海口市');
INSERT INTO `city` VALUES (236, 21, '三亚市');
INSERT INTO `city` VALUES (237, 21, '省直辖县级行政单位');
INSERT INTO `city` VALUES (238, 22, '重庆市区');
INSERT INTO `city` VALUES (239, 22, '重庆县级');
INSERT INTO `city` VALUES (240, 22, '万州');
INSERT INTO `city` VALUES (241, 23, '成都市');
INSERT INTO `city` VALUES (242, 23, '自贡市');
INSERT INTO `city` VALUES (243, 23, '攀枝花市');
INSERT INTO `city` VALUES (244, 23, '泸州市');
INSERT INTO `city` VALUES (245, 23, '德阳市');
INSERT INTO `city` VALUES (246, 23, '绵阳市');
INSERT INTO `city` VALUES (247, 23, '广元市');
INSERT INTO `city` VALUES (248, 23, '遂宁市');
INSERT INTO `city` VALUES (249, 23, '内江市');
INSERT INTO `city` VALUES (250, 23, '乐山市');
INSERT INTO `city` VALUES (251, 23, '南充市');
INSERT INTO `city` VALUES (252, 23, '眉山市');
INSERT INTO `city` VALUES (253, 23, '宜宾市');
INSERT INTO `city` VALUES (254, 23, '广安市');
INSERT INTO `city` VALUES (255, 23, '达州市');
INSERT INTO `city` VALUES (256, 23, '雅安市');
INSERT INTO `city` VALUES (257, 23, '巴中市');
INSERT INTO `city` VALUES (258, 23, '资阳市');
INSERT INTO `city` VALUES (259, 23, '阿坝藏族羌族自治州');
INSERT INTO `city` VALUES (260, 23, '甘孜藏族自治州');
INSERT INTO `city` VALUES (261, 23, '凉山彝族自治州');
INSERT INTO `city` VALUES (262, 24, '贵阳市');
INSERT INTO `city` VALUES (263, 24, '六盘水市');
INSERT INTO `city` VALUES (264, 24, '遵义市');
INSERT INTO `city` VALUES (265, 24, '安顺市');
INSERT INTO `city` VALUES (266, 24, '铜仁地区');
INSERT INTO `city` VALUES (267, 24, '黔西南布依族苗族自治州');
INSERT INTO `city` VALUES (268, 24, '毕节地区');
INSERT INTO `city` VALUES (269, 24, '黔东南苗族侗族自治州');
INSERT INTO `city` VALUES (270, 24, '黔南布依族苗族自治州');
INSERT INTO `city` VALUES (271, 25, '昆明市');
INSERT INTO `city` VALUES (272, 25, '曲靖市');
INSERT INTO `city` VALUES (273, 25, '玉溪市');
INSERT INTO `city` VALUES (274, 25, '保山市');
INSERT INTO `city` VALUES (275, 25, '昭通市');
INSERT INTO `city` VALUES (276, 25, '丽江市');
INSERT INTO `city` VALUES (277, 25, '思茅市');
INSERT INTO `city` VALUES (278, 25, '临沧市');
INSERT INTO `city` VALUES (279, 25, '楚雄彝族自治州');
INSERT INTO `city` VALUES (280, 25, '红河哈尼族彝族自治州');
INSERT INTO `city` VALUES (281, 25, '文山壮族苗族自治州');
INSERT INTO `city` VALUES (282, 25, '西双版纳傣族自治州');
INSERT INTO `city` VALUES (283, 25, '大理白族自治州');
INSERT INTO `city` VALUES (284, 25, '德宏傣族景颇族自治州');
INSERT INTO `city` VALUES (285, 25, '怒江傈僳族自治州');
INSERT INTO `city` VALUES (286, 25, '迪庆藏族自治州');
INSERT INTO `city` VALUES (287, 26, '拉萨市');
INSERT INTO `city` VALUES (288, 26, '昌都地区');
INSERT INTO `city` VALUES (289, 26, '山南地区');
INSERT INTO `city` VALUES (290, 26, '日喀则地区');
INSERT INTO `city` VALUES (291, 26, '那曲地区');
INSERT INTO `city` VALUES (292, 26, '阿里地区');
INSERT INTO `city` VALUES (293, 26, '林芝地区');
INSERT INTO `city` VALUES (294, 27, '西安市');
INSERT INTO `city` VALUES (295, 27, '铜川市');
INSERT INTO `city` VALUES (296, 27, '宝鸡市');
INSERT INTO `city` VALUES (297, 27, '咸阳市');
INSERT INTO `city` VALUES (298, 27, '渭南市');
INSERT INTO `city` VALUES (299, 27, '延安市');
INSERT INTO `city` VALUES (300, 27, '汉中市');
INSERT INTO `city` VALUES (301, 27, '榆林市');
INSERT INTO `city` VALUES (302, 27, '安康市');
INSERT INTO `city` VALUES (303, 27, '商洛市');
INSERT INTO `city` VALUES (304, 28, '兰州市');
INSERT INTO `city` VALUES (305, 28, '嘉峪关市');
INSERT INTO `city` VALUES (306, 28, '金昌市');
INSERT INTO `city` VALUES (307, 28, '白银市');
INSERT INTO `city` VALUES (308, 28, '天水市');
INSERT INTO `city` VALUES (309, 28, '武威市');
INSERT INTO `city` VALUES (310, 28, '张掖市');
INSERT INTO `city` VALUES (311, 28, '平凉市');
INSERT INTO `city` VALUES (312, 28, '酒泉市');
INSERT INTO `city` VALUES (313, 28, '庆阳市');
INSERT INTO `city` VALUES (314, 28, '定西市');
INSERT INTO `city` VALUES (315, 28, '陇南市');
INSERT INTO `city` VALUES (316, 28, '临夏回族自治州');
INSERT INTO `city` VALUES (317, 28, '甘南藏族自治州');
INSERT INTO `city` VALUES (318, 29, '西宁市');
INSERT INTO `city` VALUES (319, 29, '海东地区');
INSERT INTO `city` VALUES (320, 29, '海北藏族自治州');
INSERT INTO `city` VALUES (321, 29, '黄南藏族自治州');
INSERT INTO `city` VALUES (322, 29, '海南藏族自治州');
INSERT INTO `city` VALUES (323, 29, '果洛藏族自治州');
INSERT INTO `city` VALUES (324, 29, '玉树藏族自治州');
INSERT INTO `city` VALUES (325, 29, '海西蒙古族藏族自治州');
INSERT INTO `city` VALUES (326, 30, '银川市');
INSERT INTO `city` VALUES (327, 30, '石嘴山市');
INSERT INTO `city` VALUES (328, 30, '吴忠市');
INSERT INTO `city` VALUES (329, 30, '固原市');
INSERT INTO `city` VALUES (330, 30, '中卫市');
INSERT INTO `city` VALUES (331, 31, '乌鲁木齐市');
INSERT INTO `city` VALUES (332, 31, '克拉玛依市');
INSERT INTO `city` VALUES (333, 31, '吐鲁番地区');
INSERT INTO `city` VALUES (334, 31, '哈密地区');
INSERT INTO `city` VALUES (335, 31, '昌吉回族自治州');
INSERT INTO `city` VALUES (336, 31, '博尔塔拉蒙古自治州');
INSERT INTO `city` VALUES (337, 31, '巴音郭楞蒙古自治州');
INSERT INTO `city` VALUES (338, 31, '阿克苏地区');
INSERT INTO `city` VALUES (339, 31, '克孜勒苏柯尔克孜自治州');
INSERT INTO `city` VALUES (340, 31, '喀什地区');
INSERT INTO `city` VALUES (341, 31, '和田地区');
INSERT INTO `city` VALUES (342, 31, '伊犁哈萨克自治州');
INSERT INTO `city` VALUES (343, 31, '塔城地区');
INSERT INTO `city` VALUES (344, 31, '阿勒泰地区');
INSERT INTO `city` VALUES (345, 31, '省直辖行政单位');
INSERT INTO `city` VALUES (346, 32, '台北');
INSERT INTO `city` VALUES (347, 32, '高雄');
INSERT INTO `city` VALUES (348, 32, '台中');
INSERT INTO `city` VALUES (349, 32, '台南');
INSERT INTO `city` VALUES (350, 32, '基隆');
INSERT INTO `city` VALUES (351, 32, '新竹');
INSERT INTO `city` VALUES (352, 33, '香港');
INSERT INTO `city` VALUES (353, 34, '澳门');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKf9qk6e95h3da7o1u83ihtwrqa`(`friend_id`) USING BTREE,
  INDEX `FK3uu8s7yyof1qmenthngm24hry`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES (1, 4, 5);
INSERT INTO `friend` VALUES (2, 4, 3);

-- ----------------------------
-- Table structure for plate
-- ----------------------------
DROP TABLE IF EXISTS `plate`;
CREATE TABLE `plate`  (
  `plate_id` int(11) NOT NULL AUTO_INCREMENT,
  `plate_image` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plate_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`plate_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plate
-- ----------------------------
INSERT INTO `plate` VALUES (1, '信息板块', '信息板块');
INSERT INTO `plate` VALUES (9, '默认板块', '默认板块');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_good` tinyint(4) NULL DEFAULT NULL,
  `is_picked` tinyint(4) NULL DEFAULT NULL,
  `ispost` tinyint(4) NULL DEFAULT NULL,
  `last_reply` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `likes` int(11) NOT NULL,
  `plate_id` int(11) NULL DEFAULT NULL,
  `post_cont` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `post_topic` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replies` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`post_id`) USING BTREE,
  INDEX `FKnp7y86q6sol62miwfq1pwxfxp`(`plate_id`) USING BTREE,
  INDEX `FK72mt33dhhs48hf9gcqrq4fxte`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (3, 1, NULL, 0, '2019-12-18 13:48:56', 0, 9, '<p></p><p>43535</p>', NULL, '453453', 3, 3, 13);
INSERT INTO `post` VALUES (6, NULL, NULL, 0, '2019-12-18 10:59:52', 0, 1, '<p></p><p>hgfhgfh</p>', '2019-12-18 10:59:20', 'dhgfhf', 0, 3, 1);
INSERT INTO `post` VALUES (5, NULL, NULL, 0, '2019-12-18 10:59:24', 0, 1, '<p></p><p><br></p>', NULL, 'fdhgfhgf', 0, 3, 2);

-- ----------------------------
-- Table structure for post_liked
-- ----------------------------
DROP TABLE IF EXISTS `post_liked`;
CREATE TABLE `post_liked`  (
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE,
  INDEX `FKj5lvtjhiatxwwo6ssrusql0ji`(`post_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`province_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '北京市');
INSERT INTO `province` VALUES (2, '天津市');
INSERT INTO `province` VALUES (3, '河北省');
INSERT INTO `province` VALUES (4, '山西省');
INSERT INTO `province` VALUES (5, '内蒙古自治区');
INSERT INTO `province` VALUES (6, '辽宁省');
INSERT INTO `province` VALUES (7, '吉林省');
INSERT INTO `province` VALUES (8, '黑龙江省');
INSERT INTO `province` VALUES (9, '上海市');
INSERT INTO `province` VALUES (10, '江苏省');
INSERT INTO `province` VALUES (11, '浙江省');
INSERT INTO `province` VALUES (12, '安徽省');
INSERT INTO `province` VALUES (13, '福建省');
INSERT INTO `province` VALUES (14, '江西省');
INSERT INTO `province` VALUES (15, '山东省');
INSERT INTO `province` VALUES (16, '河南省');
INSERT INTO `province` VALUES (17, '湖北省');
INSERT INTO `province` VALUES (18, '湖南省');
INSERT INTO `province` VALUES (19, '广东省');
INSERT INTO `province` VALUES (20, '广西壮族自治区');
INSERT INTO `province` VALUES (21, '海南省');
INSERT INTO `province` VALUES (22, '重庆市');
INSERT INTO `province` VALUES (23, '四川省');
INSERT INTO `province` VALUES (24, '贵州省');
INSERT INTO `province` VALUES (25, '云南省');
INSERT INTO `province` VALUES (26, '西藏自治区');
INSERT INTO `province` VALUES (27, '陕西省');
INSERT INTO `province` VALUES (28, '甘肃省');
INSERT INTO `province` VALUES (29, '青海省');
INSERT INTO `province` VALUES (30, '宁夏回族自治区');
INSERT INTO `province` VALUES (31, '新疆维吾尔自治区');
INSERT INTO `province` VALUES (32, '台湾省');
INSERT INTO `province` VALUES (33, '香港特别行政区');
INSERT INTO `province` VALUES (34, '澳门特别行政区');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NULL DEFAULT NULL,
  `reply_cont` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_ref` int(11) NULL DEFAULT NULL,
  `reply_time` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`reply_id`) USING BTREE,
  INDEX `FKnpyg5e6pqr2v1y4y6pacte11q`(`post_id`) USING BTREE,
  INDEX `FKapyyxlgntertu5okpkr685ir9`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 3, '<p></p><p><br></p>', NULL, NULL, 4);
INSERT INTO `reply` VALUES (2, 3, '<p></p><p>ghkhjkh</p>', NULL, NULL, 4);
INSERT INTO `reply` VALUES (3, 3, '<p></p><p>ghjghjghjf</p>', NULL, NULL, 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` date NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `icon` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plate_id` int(11) NULL DEFAULT NULL,
  `province_id` int(11) NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `FK29eqyw0gxw5r4f1ommy11nd9i`(`city_id`) USING BTREE,
  INDEX `FKdvi7hikdgg925jhre4str94ig`(`plate_id`) USING BTREE,
  INDEX `FK2cq11facskk0129rrri7r1h0k`(`province_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, NULL, 1, 0, NULL, '123456', 1, 1, '', 'admin');
INSERT INTO `user` VALUES (4, NULL, 1, 1, NULL, '123456', 9, 1, '', 'user');
INSERT INTO `user` VALUES (5, NULL, 1, 0, NULL, '123456', 9, 1, '', 'user1');

SET FOREIGN_KEY_CHECKS = 1;
