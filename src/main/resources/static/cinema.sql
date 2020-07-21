/*
 Navicat Premium Data Transfer

 Source Server         : 119.45.53.114
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 119.45.53.114:3306
 Source Schema         : cinema

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 18/07/2020 13:08:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(0) NOT NULL AUTO_INCREMENT,
  `admin_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `admin_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `brand_id` int(0) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '万达影城');
INSERT INTO `brand` VALUES (2, '太平洋电影城');
INSERT INTO `brand` VALUES (3, '星美国际影城');
INSERT INTO `brand` VALUES (4, 'CGV影城');
INSERT INTO `brand` VALUES (5, '橙天嘉禾影城');
INSERT INTO `brand` VALUES (6, '横店电影城');
INSERT INTO `brand` VALUES (7, '金逸影城');
INSERT INTO `brand` VALUES (8, '大地影院');
INSERT INTO `brand` VALUES (9, '卢米埃影城');
INSERT INTO `brand` VALUES (10, 'UME国际影城');
INSERT INTO `brand` VALUES (11, 'SFC上影影城');
INSERT INTO `brand` VALUES (12, '保利国际影城');
INSERT INTO `brand` VALUES (13, '中影国际影城');
INSERT INTO `brand` VALUES (14, '越界影城');
INSERT INTO `brand` VALUES (15, '和平影城城');
INSERT INTO `brand` VALUES (16, '幸福蓝海国际影城');
INSERT INTO `brand` VALUES (17, '雅图数字影院');
INSERT INTO `brand` VALUES (18, '新时代影城');
INSERT INTO `brand` VALUES (19, '耀莱成龙国际影城');
INSERT INTO `brand` VALUES (20, '恒大影城');
INSERT INTO `brand` VALUES (21, '峨眉影城');
INSERT INTO `brand` VALUES (22, '百丽宫影城');
INSERT INTO `brand` VALUES (23, '百老汇影城');

-- ----------------------------
-- Table structure for cast
-- ----------------------------
DROP TABLE IF EXISTS `cast`;
CREATE TABLE `cast`  (
  `actor_id` int(0) NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `actor_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`actor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cast
-- ----------------------------
INSERT INTO `cast` VALUES (126, '新海诚', 'https://p1.meituan.net/movie/249e7a7481c0dbe4d2e20b0d7d66465e36249.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (127, '醍醐虎汰朗', 'https://p0.meituan.net/moviemachine/74cf5577c9cf7c2bf60f3c023c37135f158637.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (128, '森七菜', 'https://p0.meituan.net/moviemachine/9a34f136c4edc05c42c4a4ccd0bb2585157478.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (129, '本田翼', 'https://p0.meituan.net/moviemachine/be397d21a7f15567ae5ec36063dc5610166398.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (130, '小栗旬', 'https://p0.meituan.net/movie/9326c1fe5d87325da3a504d7d806bbcd58300.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (131, '柯汶利', 'https://p1.meituan.net/moviemachine/5d36aee125544584e1e9d0492e83015b37247.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (132, '肖央', 'https://p1.meituan.net/moviemachine/4c848df6e2d8fef6b27f94d746a89354140365.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (133, '谭卓', 'https://p0.meituan.net/moviemachine/5173e16561b0c0e1949588a080987b7024599.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (134, '陈冲', 'https://p1.meituan.net/movie/477facf04f4efadd211319719a4751a641858.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (135, '姜皓文', 'https://p0.meituan.net/movie/ba4886d33b592b6edca5e6273018b27877214.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (136, '陈思诚', 'https://p0.meituan.net/movie/edad5d8261a461c15c001ab99a8d699536271.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (137, '王宝强', 'https://p0.meituan.net/movie/4575a68064e5b0e28af18e09f3d3b51944951.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (138, '刘昊然', 'https://p1.meituan.net/movie/3a58a26d0c756324ef9230bb4b2c992f41487.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (139, '刘承羽', 'https://p1.meituan.net/movie/daf2e78f8ba7cd35c2d38707124912da37974.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (140, '赵一亨', 'https://p0.meituan.net/moviemachine/b99384cf1eacb139fde0509af424af6623037.png@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (141, 'Il Cho', 'https://p0.meituan.net/moviemachine/b99384cf1eacb139fde0509af424af6623037.png@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (142, '刘亚仁', 'https://p0.meituan.net/movie/1bf8fcbc2ec43207ab122dc0ac3e393731643.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (143, '朴信惠', 'https://p1.meituan.net/movie/07bc2b898bca065064823a5184e9046958252.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (144, '全裴修', 'https://p0.meituan.net/movie/a3aa24fdea71d6d321f839d023d1aea718637.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (145, '薛晓路', 'https://p0.meituan.net/moviemachine/d32347e59839fb38091d174ef31fdec544746.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (146, '雷佳音', 'https://p0.meituan.net/moviemachine/7d14ceb240b2e1a728982a2cc5bb1ed8173356.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (147, '汤唯', 'https://p0.meituan.net/moviemachine/d683d2e788ecc245da1946bc434c889e58890.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (148, '齐溪', 'https://p1.meituan.net/moviemachine/7f5e4527bc580b451ae2906984d6e4b642609.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (149, '约翰·巴彻勒', 'https://p1.meituan.net/moviemachine/6e46dcb1168c2cc0fbe6c5d3199cc20a60201.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (150, '饺子', 'https://p0.meituan.net/movie/c047a7f5444ba9bef44044da352cb3ba114816.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (151, '吕艳婷', 'https://p0.meituan.net/moviemachine/7d4edd5f01400879de3785ee1e024f99141062.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (152, '囧森瑟夫', 'https://p0.meituan.net/moviemachine/76ad5068757610d1f98129a0f0e542d5168392.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (153, '瀚墨', 'https://p0.meituan.net/moviemachine/7d6c10b29cd089500bcaf57bbc631af734474.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (154, '陈浩', 'https://p1.meituan.net/moviemachine/d1295fb6bd6774fb769651681a28d501164301.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (155, '曾国祥', 'https://p1.meituan.net/moviemachine/5bcf6688265a839a0d1938aeab0d0238204278.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (156, '周冬雨', 'https://p1.meituan.net/moviemachine/de7fcc999b2b13283f98616a189ac306203395.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (157, '易烊千玺', 'https://p1.meituan.net/moviemachine/0da279bf85e8138ee892fd6ca3218903173789.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (158, '尹昉', 'https://p0.meituan.net/moviemachine/4a3c9877c171b10a7f0a38b3306e5820206265.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (159, '黄觉', 'https://p0.meituan.net/movie/b87a361b836706b5e5741e5e612703a1105267.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (160, '吴京', 'https://p1.meituan.net/movie/feea9fdcf930fe52f7c2a075db90bc77195799.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (161, '弗兰克·格里罗', 'https://p1.meituan.net/moviemachine/199bb4af3a73f0e7a974aa135324de32175054.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (162, '吴刚', 'https://p1.meituan.net/moviemachine/be4dda3cbbdd868f653e0a3256a8c6d0172681.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (163, '张翰', 'https://p0.meituan.net/moviemachine/dfce8c0cadf9b5439113cfac9b5717f1189629.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (164, '克里斯·桑德斯', 'https://p0.meituan.net/movie/bbd5224c7d0ef926a42cb6fe3242e04147168.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (165, '哈里森·福特', 'https://p0.meituan.net/movie/41f92ede6862756dad6670c8c81741c848467.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (166, '丹·史蒂文斯', 'https://p1.meituan.net/movie/950b663623274c6f58b13d00dcf845d01399148.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (167, '凯伦·吉兰', 'https://p0.meituan.net/moviemachine/5248c91a442cb39f85c739839b8b1cb3254951.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (168, '布莱德利·惠特福德', 'https://p1.meituan.net/moviemachine/f9e81024debc7d163a3cbaac42638591173059.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (169, '迈克尔·道赫蒂', 'https://p0.meituan.net/moviemachine/0d06b5d6462fc2584ce83139862a8a40200055.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (170, '凯尔·钱德勒', 'https://p0.meituan.net/moviemachine/cc4b83b40985bf2ea1a80b3c51ba38cf207698.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (171, '维拉·法梅加', 'https://p0.meituan.net/moviemachine/8afe2cd311a078f889c14f2783b4d810179095.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (172, '米莉·波比·布朗', 'https://p1.meituan.net/moviemachine/c3d7b60c7dac199be26f54a9a59de82f202526.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (173, '渡边谦', 'https://p0.meituan.net/moviemachine/4a9212946ff6c716f3b9905b96d12fc2197281.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (174, '陆诗雷', 'https://p0.meituan.net/moviemachine/312a1b118c85b463b06a72631beae98350032.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (175, '殷果儿', 'https://p1.meituan.net/movie/77abab4932851de771e40fef4350c3cb51056.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (176, '刘小奇', 'https://p1.meituan.net/movie/5ff86ab56d94923b365311d786b57d4c37933.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (177, '闫薇儿', 'https://p1.meituan.net/movie/77f41fa6629835adf3bebe3f31cb3cce49934.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (178, '宋天湙', 'https://p0.meituan.net/movie/9a6cc1cc6d95f5b9b4bc1d6c3f352f1b36273.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (179, '乔·罗素', 'https://p0.meituan.net/moviemachine/92f533b48482a20b1dc7131363b0d888183832.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (180, '安东尼·罗素', 'https://p1.meituan.net/movie/e9caad7b525f59fcd974be52324aa80c65666.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (181, '小罗伯特·唐尼', 'https://p1.meituan.net/moviemachine/b014d18273419de881376d3509ced1a7184848.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (182, '克里斯·埃文斯', 'https://p0.meituan.net/moviemachine/358989d45d38fb6620aff5ee17cdf1a840966.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (183, '马克·鲁法洛', 'https://p1.meituan.net/movie/1926696ef0b5c45714e13dafb7bfba1557113.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (184, '科林·特雷沃罗', 'https://p1.meituan.net/movie/1aa9b51af3136084d105736064e05eee55150.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (185, 'J·J·艾布拉姆斯', 'https://p0.meituan.net/movie/45488b30c6eaf98e5623c43a8caeddf785604.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (186, '凯丽·费雪', 'https://p0.meituan.net/movie/c565e9407a463d21df6d0ec9de9cd39651363.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (187, '马克·哈米尔', 'https://p0.meituan.net/movie/d52703a92e21117910be25ed03b3451b39352.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (188, '亚当·德赖弗', 'https://p1.meituan.net/moviemachine/14672c2d79697f9eee43c489e745f388158367.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (189, '珍妮弗·李', 'https://p0.meituan.net/moviemachine/05aa9884dcf431a2105159e3e4c91262190170.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (190, '克里斯·巴克', 'https://p1.meituan.net/moviemachine/ef4d0c3d7a4b7a7d71c3904416053b9a158758.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (191, '克里斯汀·贝尔', 'https://p0.meituan.net/moviemachine/0a0feee0e1a543aa962fe9ce729c66cc182895.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (192, '伊迪娜·门泽尔', 'https://p1.meituan.net/moviemachine/16773b94779ef3bb6739d9a027d6a4ce221913.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (193, '乔什·加德', 'https://p1.meituan.net/movie/332730ecf19037688d1b9bb9cfe5991d48834.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (194, '宁浩', 'https://p0.meituan.net/movie/2897ba13cbeae096e05d2ce9ebea2f8037751.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (195, '黄渤', 'https://p0.meituan.net/movie/c6594ef2705dcaf7d9df857d228b5e1645712.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (196, '沈腾', 'https://p1.meituan.net/moviemachine/05b6b94915592d3cebb70abbb2312410174941.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (197, '马修·莫里森', 'https://p1.meituan.net/moviemachine/3ad246d519cf78af551209ebfcc6285b45761.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (198, '汤姆·派福瑞', 'https://p1.meituan.net/moviemachine/904fbdd82ab2dd63fed051a42765b37333724.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (199, '李非', 'https://p1.meituan.net/movie/bbdfc29d1436fba07f6b5d3a37f4fda728117.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (200, '葛优', 'https://p1.meituan.net/moviemachine/cfda0fb23f4415f4ccfe6552d5e2ee0a140241.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (201, '乔杉', 'https://p0.meituan.net/movie/4cb7ae90af1ac2d83fd841c7e3fdf58f150953.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (202, '赵薇', 'https://p1.meituan.net/movie/f7dd59d2910c8ce854d510231cba5aaa53401.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (203, '闫妮', 'https://p1.meituan.net/movie/c6f56b1f058373f25817be00d9b2597237984.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (204, '刘伟强', 'https://p0.meituan.net/movie/c2b823eb9843a384fc72c44030bb34bd29204.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (205, '张涵予', 'https://p1.meituan.net/movie/c43af5e137d4f2bde72e635bfc16dbdc32830.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (206, '欧豪', 'https://p0.meituan.net/moviemachine/269c9ce921839e34a28dbf88f451299c36850.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (207, '杜江', 'https://p0.meituan.net/moviemachine/d623b9328e404912645a38f7a8a4390635653.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (208, '袁泉', 'https://p1.meituan.net/movie/3240dd2c8ed6dd2cfb89f48f5f08cfd131444.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (209, '田口智久', 'https://p0.meituan.net/moviemachine/b99384cf1eacb139fde0509af424af6623037.png@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (210, '花江夏树', 'https://p0.meituan.net/movie/9c679152a67e376a4de0000039b3e09d48803.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (211, '细谷佳正', 'https://p0.meituan.net/movie/d7edfb2887526cefaca8330df73b800312103.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (212, '三森铃子', 'https://p0.meituan.net/movie/80636ab94ae0b2bff251b2c8a87348f516550.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (213, '田村睦心', 'https://p0.meituan.net/movie/2c73a6b304b3664d6d5343d31c2cef3d6345.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (214, '陈凯歌', 'https://p0.meituan.net/movie/8f9372252050095067e0e8d58ef3d939156407.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (215, '张一白', 'https://p1.meituan.net/moviemachine/3918a42e84b707508ba775d1f584f55647145.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (216, '张译', 'https://p0.meituan.net/movie/92f35f4bec2c47fa045d0b65ddc9fe1929962.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (217, '韩昊霖', 'https://p1.meituan.net/moviemachine/1661a4be237b6ab110081d0beae43dae28592.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (218, '延尚昊', 'https://p0.meituan.net/movie/28c77d2e0ad8bb51cd44d96392dfe4a585972.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (219, '孔刘', 'https://p1.meituan.net/moviemachine/75705eaee8ceee0eee43b871bbaec25040803.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (220, '郑有美', 'https://p1.meituan.net/movie/d53f13a11a5b901880be79b13a19e22133214.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (221, '马东锡', 'https://p1.meituan.net/movie/ab1b771b7ddb16c8e72132d7534a50e128707.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (222, '金秀安', 'https://p1.meituan.net/movie/b5142cb9be1d0d980abca6fccb3b428a40471.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (223, '徐峥', 'https://p1.meituan.net/movie/8a5793c16dce09b98c51164cf8419b97134679.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (224, '黄梅莹', 'https://p1.meituan.net/moviemachine/dd614b463185f4384e442cefd0759275169676.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (225, '贾冰', 'https://p0.meituan.net/moviemachine/af258bf19a8b36d79d36f6c069b7df8b190404.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (226, '郭帆', 'https://p0.meituan.net/movie/051155ff76ec057bee45cc03d3c4f64b160613.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (227, '屈楚萧', 'https://p0.meituan.net/movie/f3fda8ab4d27d12d029bde41ff944e0a159764.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (228, '李光洁', 'https://p1.meituan.net/movie/c0d6af57cd3d3afc1ae1aedc126c258d190632.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (229, '吴孟达', 'https://p1.meituan.net/movie/13d4357722d33b46a9fa52fbe8316f9633831.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (230, '程小东', 'https://p1.meituan.net/moviemachine/9825dc7c3aefa70eb07cb690f30e3cb9170000.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (231, '肖战', 'https://p0.meituan.net/moviemachine/edad996311c5d21c7f1118ca9d4dc621177298.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (232, '李沁', 'https://p0.meituan.net/movie/4a167db2e5dea06565d07551e9ee3b8438251.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (233, '孟美岐', 'https://p1.meituan.net/movie/1d50bf8b7a6d1692cacdc6449aa1e98e42339.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (234, '唐艺昕', 'https://p0.meituan.net/moviemachine/1454efd85a163265508ce877eef9836c213873.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (235, 'Thierry Coup', 'https://p0.meituan.net/moviemachine/b99384cf1eacb139fde0509af424af6623037.png@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (236, '卢克·伊万斯', 'https://p1.meituan.net/movie/302c177d1a7fc9b927a3fd79ef8d875280405.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (237, '道恩·强森', 'https://p1.meituan.net/movie/7e3067d066c1e285b0cc17bfd5f1b34e108474.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (238, '范·迪塞尔', 'https://p0.meituan.net/movie/79ef14565960d0ed9d352ca483edd7bd42454.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (239, '米歇尔·罗德里格兹', 'https://p0.meituan.net/moviemachine/6ff398a4a8d62631b551f2d1cb489e99185058.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (240, '李仁港', 'https://p1.meituan.net/movie/6c32dd85c65bcef859b99731007a9be432779.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (241, '章子怡', 'https://p0.meituan.net/moviemachine/415b91df95c3ce02540901b5f67207ee188015.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (242, '井柏然', 'https://p1.meituan.net/movie/94e98e0026eb8a8506836588bb5657a1174372.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (243, '乔恩·沃茨', 'https://p1.meituan.net/movie/cee75bec3660351ca1beb3d9d300b94b53219.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (244, '汤姆·赫兰德', 'https://p1.meituan.net/movie/4c34e0f0d1393532043634f5faf6647643573.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (245, '杰克·吉伦哈尔', 'https://p0.meituan.net/movie/4f8084a86fbd65ec0c3f9e5e29a43c6946105.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (246, '塞缪尔·杰克逊', 'https://p0.meituan.net/moviemachine/e466aabdb674cd086350c76ecf980ec5168941.jpg@128w_170h_1e_1c');
INSERT INTO `cast` VALUES (247, '赞达亚·科尔曼', 'https://p0.meituan.net/movie/1ee2bc44b8db25bb16ee0996cb162f3176983.jpg@128w_170h_1e_1c');

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `cinema_id` int(0) NOT NULL AUTO_INCREMENT,
  `cinema_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_brand` int(0) NULL DEFAULT NULL,
  `cinema_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cinema_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cinema_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (4, '万达影城(松江店)', '021-51213777', '松江区', '广富林路692号松江万达广场4楼', 1, 'http://store.is.autonavi.com/showpic/9cb5c151b5093a8861cf90590e4bf4af', '上海城区', '121.242249', '31.057309', '上海市');
INSERT INTO `cinema` VALUES (7, '大地影院(华润万家大华店)', '021-66405215;021-66405201;4006782828', '宝山区', '大华路518号华润万家超市4层大地影院', 1, 'http://store.is.autonavi.com/showpic/0f6e6f3ec9099a618b37d34d8042007c', '上海城区', '121.41412', '31.271551', '上海市');
INSERT INTO `cinema` VALUES (8, '万达影城(周浦万达广场店)', '021-38230638;021-38230668', '浦东新区', '周浦镇年家浜路518号万达广场C座4层', 20, 'http://store.is.autonavi.com/showpic/74c69eb5d646a676aab88df474ae1b5b', '上海城区', '121.570199', '31.114462', '上海市');
INSERT INTO `cinema` VALUES (9, '太平洋影城(杭州下沙店)', '0571-87777636', '江干区', '郡原蓝湖国际4幢3层', 2, 'http://store.is.autonavi.com/showpic/bb2d2fdc45dcdd0a4e813e33bbb064a2', '杭州市', '120.317209', '30.303214', '浙江省');
INSERT INTO `cinema` VALUES (10, '万达广场(上海周浦店)', '021-38231898', '浦东新区', '年家浜路518号', 1, 'http://store.is.autonavi.com/showpic/13b0d4df834b78cda6f39bb88ba87fa4', '上海城区', '121.569542', '31.114507', '上海市');
INSERT INTO `cinema` VALUES (11, '万达影城(虹桥南丰城南区)', '021-62276220', '长宁区', '遵义路100号虹桥南丰城南区4层SL422', 1, 'http://store.is.autonavi.com/showpic/4711a6c1a9b53929e018da15f35c05d8', '上海城区', '121.407972', '31.206843', '上海市');
INSERT INTO `cinema` VALUES (12, '和平影都(来福士广场店)', '021-63225252', '黄浦区', '西藏中路268号来福士广场F3层-F7层', 15, 'http://store.is.autonavi.com/showpic/54aac3f067bac56e1709783e86b1cfc3', '上海城区', '121.476254', '31.232883', '上海市');
INSERT INTO `cinema` VALUES (13, '保利国际影城(上海世博店)', '021-31118288;18016467897', '浦东新区', '世博大道1368号世博源2区G层', 1, 'http://store.is.autonavi.com/showpic/856a2292427043cb11f670eb1aefccb0', '上海城区', '121.492222', '31.185499', '上海市');
INSERT INTO `cinema` VALUES (14, '大地影院(华润万家大华店)', '021-66405215;021-66405201;4006782828', '宝山区', '大华路518号华润万家超市4层大地影院', 8, 'http://store.is.autonavi.com/showpic/0f6e6f3ec9099a618b37d34d8042007c', '上海城区', '121.41412', '31.271551', '上海市');
INSERT INTO `cinema` VALUES (15, '万达广场周浦店停车场(出入口)', '1111', '浦东新区', '年家浜路518号万达广场B1', 1, '', '上海城区', '121.57089', '31.115058', '上海市');
INSERT INTO `cinema` VALUES (16, '万达影城(宝山万达广场店)', '021-31150880;4000806060;021-31150810', '宝山区', '一二八纪念路968号万达广场F5层501、F6层', 1, 'http://store.is.autonavi.com/showpic/386f63b820526170086b7a7b2d6b2bb0', '上海城区', '121.447506', '31.324173', '上海市');
INSERT INTO `cinema` VALUES (17, '和平影都(来福士广场店)', '021-63225252', '黄浦区', '西藏中路268号来福士广场F3层-F7层', 15, 'http://store.is.autonavi.com/showpic/54aac3f067bac56e1709783e86b1cfc3', '上海城区', '121.476254', '31.232883', '上海市');
INSERT INTO `cinema` VALUES (18, '万达影城(宝山万达广场店)', '021-31150880;4000806060;021-31150810', '宝山区', '一二八纪念路968号万达广场F5层501、F6层', 1, 'http://store.is.autonavi.com/showpic/386f63b820526170086b7a7b2d6b2bb0', '上海城区', '121.447506', '31.324173', '上海市');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `user_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `user_socre` float(99, 2) NULL DEFAULT NULL,
  `comment_create_time` datetime(0) NULL DEFAULT NULL,
  `movie_id` int(0) NULL DEFAULT NULL,
  `like_count` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, '还可\n', 9.00, '2020-07-14 13:17:11', 177, 0);
INSERT INTO `comment` VALUES (2, 1, '1111', 9.00, '2020-07-14 15:25:22', 175, 4);
INSERT INTO `comment` VALUES (3, 1, '还是不行', 2.00, '2020-07-14 15:46:12', 175, 3);

-- ----------------------------
-- Table structure for condition
-- ----------------------------
DROP TABLE IF EXISTS `condition`;
CREATE TABLE `condition`  (
  `condition_id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_id` int(0) NULL DEFAULT NULL,
  `cinema_id` int(0) NULL DEFAULT NULL,
  `coupon_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`condition_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of condition
-- ----------------------------
INSERT INTO `condition` VALUES (1, 0, 0, 1);
INSERT INTO `condition` VALUES (2, NULL, NULL, 2);
INSERT INTO `condition` VALUES (3, NULL, NULL, 3);
INSERT INTO `condition` VALUES (4, NULL, NULL, 4);

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `coupon_id` int(0) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coupon_moeny` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, '立减2元', 2.00);
INSERT INTO `coupon` VALUES (2, '立减5元', 5.00);
INSERT INTO `coupon` VALUES (3, '立减10元', 10.00);
INSERT INTO `coupon` VALUES (4, '立减20元', 20.00);

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall`  (
  `hall_id` int(0) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hall_type` int(0) NULL DEFAULT NULL,
  `hall_status` int(0) NULL DEFAULT NULL,
  `hall_x` int(0) NULL DEFAULT NULL,
  `hall_y` int(0) NULL DEFAULT NULL,
  `cinema_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`hall_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES (1, '1号厅', 1, 1, 20, 10, 4);
INSERT INTO `hall` VALUES (2, '1号厅', 1, 1, 5, 8, 7);
INSERT INTO `hall` VALUES (3, '2号厅', 3, 1, 7, 9, 8);
INSERT INTO `hall` VALUES (4, '3号厅', 1, 1, 7, 9, 9);
INSERT INTO `hall` VALUES (5, '2号厅', 1, 1, 20, 10, 4);
INSERT INTO `hall` VALUES (6, '3号厅', 1, 1, 20, 10, 4);
INSERT INTO `hall` VALUES (7, '4号厅', 1, 1, 20, 10, 4);
INSERT INTO `hall` VALUES (8, '5号厅', 1, 1, 18, 10, 4);

-- ----------------------------
-- Table structure for hall_movie
-- ----------------------------
DROP TABLE IF EXISTS `hall_movie`;
CREATE TABLE `hall_movie`  (
  `hall_movie_id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_id` int(0) NULL DEFAULT NULL,
  `hall_id` int(0) NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `fare_money` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`hall_movie_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall_movie
-- ----------------------------
INSERT INTO `hall_movie` VALUES (1, 190, 1, '2020-07-28 17:07:53', '2020-07-29 17:07:57', 100.00);
INSERT INTO `hall_movie` VALUES (2, 188, 1, '2020-07-09 00:00:00', '2020-07-09 01:41:00', 111.00);
INSERT INTO `hall_movie` VALUES (3, 168, 1, '2020-07-10 20:29:24', '2020-07-09 22:29:24', 111.00);
INSERT INTO `hall_movie` VALUES (4, 188, 1, '2020-07-10 21:12:50', '2020-07-10 22:13:01', 111.00);
INSERT INTO `hall_movie` VALUES (5, 188, 3, '2020-07-10 21:20:26', '2020-07-10 22:20:30', 111.00);
INSERT INTO `hall_movie` VALUES (6, 166, 1, '2020-08-20 13:01:00', '2020-08-20 14:54:00', 199.99);
INSERT INTO `hall_movie` VALUES (7, 187, 1, '2020-07-13 13:00:00', '2020-07-13 15:05:00', 1100.00);
INSERT INTO `hall_movie` VALUES (8, 166, 1, '2020-07-13 12:00:00', '2020-07-13 13:53:00', 99.99);
INSERT INTO `hall_movie` VALUES (9, 177, 1, '2020-07-13 22:00:00', '2020-07-14 01:01:00', 189.00);
INSERT INTO `hall_movie` VALUES (10, 166, 1, '2020-07-13 19:07:49', '2020-07-13 21:00:49', 111.11);
INSERT INTO `hall_movie` VALUES (11, 188, 5, '2020-07-14 22:00:00', '2020-07-14 23:41:00', 111.00);
INSERT INTO `hall_movie` VALUES (12, 178, 6, '2020-07-14 22:00:00', '2020-07-15 00:22:00', 45.00);
INSERT INTO `hall_movie` VALUES (13, 186, 7, '2020-07-14 22:00:00', '2020-07-15 00:06:00', 11.00);
INSERT INTO `hall_movie` VALUES (14, 182, 1, '2020-07-14 22:00:00', '2020-07-14 23:51:00', 65.00);
INSERT INTO `hall_movie` VALUES (15, 175, 1, '2020-07-14 18:00:00', '2020-07-14 20:12:00', 111.00);
INSERT INTO `hall_movie` VALUES (16, 191, 1, '2020-07-15 20:00:00', '2020-07-15 22:07:00', 45.80);
INSERT INTO `hall_movie` VALUES (17, 166, 5, '2020-07-15 14:00:00', '2020-07-15 15:53:00', 32.00);
INSERT INTO `hall_movie` VALUES (18, 187, 6, '2020-07-15 17:00:00', '2020-07-15 19:05:00', 50.00);
INSERT INTO `hall_movie` VALUES (19, 166, 7, '2020-07-24 10:00:00', '2020-07-24 11:53:00', 111.00);
INSERT INTO `hall_movie` VALUES (20, 166, 1, '2020-07-17 22:00:00', '2020-07-17 23:53:00', 22.00);
INSERT INTO `hall_movie` VALUES (21, 179, 1, '2020-07-17 19:48:38', '2020-07-17 21:32:38', 34.00);
INSERT INTO `hall_movie` VALUES (22, 168, 1, '2020-07-17 23:59:00', '2020-07-18 01:59:00', 18.00);
INSERT INTO `hall_movie` VALUES (23, 188, 1, '2020-07-18 14:00:00', '2020-07-18 15:41:00', 111.00);
INSERT INTO `hall_movie` VALUES (24, 166, 1, '2020-07-18 07:00:00', '2020-07-18 08:53:00', 45.00);

-- ----------------------------
-- Table structure for hall_tpye
-- ----------------------------
DROP TABLE IF EXISTS `hall_tpye`;
CREATE TABLE `hall_tpye`  (
  `ht_id` int(0) NOT NULL AUTO_INCREMENT,
  `ht_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ht_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall_tpye
-- ----------------------------
INSERT INTO `hall_tpye` VALUES (1, '3d厅');
INSERT INTO `hall_tpye` VALUES (2, 'IMAX厅');
INSERT INTO `hall_tpye` VALUES (3, 'CGS中国巨幕厅\r\n');
INSERT INTO `hall_tpye` VALUES (4, '杜比全景声厅');
INSERT INTO `hall_tpye` VALUES (5, '巨幕厅');
INSERT INTO `hall_tpye` VALUES (6, '4K厅');
INSERT INTO `hall_tpye` VALUES (7, 'LUXE巨幕厅');
INSERT INTO `hall_tpye` VALUES (8, 'realD厅');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `movie_id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_release_time` date NULL DEFAULT NULL,
  `movie_area` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_info` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_ename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_score` float NULL DEFAULT NULL,
  `movie_status` int(0) NULL DEFAULT NULL,
  `movie_count` int(0) NULL DEFAULT NULL,
  `movie_box_office` int(0) NULL DEFAULT NULL,
  `movie_time` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_want_count` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`movie_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (166, '天气之子', '2019-11-01', ' 日本 ', '在高一的夏天，少年帆高（醍醐虎汰朗 配音）离家出走，一个人来到东京。帆高好不容易找到一份工作，为一本古怪的“神秘学杂志”写稿，生活孤单贫苦。连日的滂沱大雨，像是来映衬他的失落。在纷纭杂沓的大都会一角，帆高遇上了一个可爱少女阳菜（森七菜 配音）。阳菜和弟弟相依为命，个性坚强、开朗，但她心中隐藏着一个重大秘密──每当她说：“现在开始天晴了！”雨便渐渐停下来，美丽的阳光洒落街上。原来，她拥有一股不可思议的能量，一股能让天空放晴的异力……', 'https://p0.meituan.net/movie/ecca4f0b95340b2c57006a1bace4c3f91386100.jpg@464w_644h_1e_1c', ' 天気の子', 9.5, NULL, NULL, NULL, ' 113 分钟', 5671054);
INSERT INTO `movie` VALUES (167, '误杀', '2019-12-13', ' 中国大陆 ', '李维杰（肖央 饰）与妻子阿玉（谭卓 饰）打拼多年，膝下育有两个女儿。一个雨夜，一场意外，打破了这个家庭的宁静。而李维杰作为一个父亲，为了保全自己的家人，他不顾一切地决定瞒天过海……', 'https://p1.meituan.net/movie/967b253953bc7e660cfadbf9d78f67b62852693.jpg@464w_644h_1e_1c', '\n Sheep Without a Shepherd\n', 9.4, 2, 0, NULL, ' 112分钟 ', 5990255);
INSERT INTO `movie` VALUES (168, '唐人街探案2', '2018-02-16', ' 中国大陆 ', '秦风接到唐仁的邀请来纽约参加其与阿香的婚礼。壕气逼人的唐仁迎接秦风，极尽招摇。岂料“婚礼”是唐仁为巨额奖金而参加的世界名侦大赛，比赛的内容是寻找杀害唐人街教父七叔的孙子的凶手。 受骗的秦风怒极欲走，却被纽约华人刑警陈英送来的讯息所吸引。七叔孙子的死法离奇，寻人上升为悬赏缉凶。“名侦探”们各显“其能”，鸡飞狗跳。众人调查的同时另一起案件发生，作案手法极其相似。原本锁定的凶手竟有了不在场证明，秦风不禁对自己的推理产生了怀疑。第三起案件发生连环案件。秦风、唐仁二人再次披挂，摆脱各路纠缠，闹翻纽约，几欲接近真相。第四起，与凶手失之交臂，诡计呼之欲出。真凶伏法，动机令人不寒而栗。看似完美结案的背后却隐藏着另一个发人深省的谜题 。', 'https://p1.meituan.net/movie/efb0a5e3989f45c4f3e22108bcc27ed71037307.jpg@464w_644h_1e_1c', ' Detective Chinatown 2', 0, NULL, NULL, NULL, ' 120 分钟', 5364399);
INSERT INTO `movie` VALUES (169, '活着', '2020-06-24', ' 韩国 ', '讲述突然被不明病毒感染，并失控扩散的城市中，被孤立的幸存者身上发生的故事。刘亚仁将在片中饰演因与世隔绝而幸存的游戏玩家俊宇一角，朴信惠饰演直面极端情况，寻找新的生存方式的幸存者宥彬一角。', 'https://p0.meituan.net/moviemachine/ce48cf62a8968b32289fc15eb749fafd819957.jpg@464w_644h_1e_1c', '\n 얼론\n', 8.4, 2, 0, NULL, ' 98分钟 ', 2080279);
INSERT INTO `movie` VALUES (170, '吹哨人', '2019-12-06', ' 中国大陆 ', '一通深夜来电，打破了澳洲华人职员马珂（雷佳音 饰）的平静生活。消失多年的前女友周雯（汤唯 饰）突然出现、神秘杀手接踵而至。面对层层追杀，马珂带周雯奔赴非洲寻找真相，他逐渐意识到，自己正在负责的跨国交易背后另有阴谋，是做个“吹哨人”向社会公布真相？还是视而不见明哲保身？马珂不得面对两难的选择。与此同时，马珂发现本以为和自己“同病相怜”的周雯也绝不是看上去那么“简单”。真相越埋越深，更大的危机也正在逼近……', 'https://p0.meituan.net/movie/2cbc83f180080382b7754652b04718152049777.jpg@464w_644h_1e_1c', ' The Whistleblower', 0, NULL, NULL, NULL, ' 139 分钟', 6811579);
INSERT INTO `movie` VALUES (171, '哪吒之魔童降世', '2019-07-26', ' 中国大陆 ', '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？', 'https://p0.meituan.net/movie/005955214d5b3e50c910d7a511b0cb571445301.jpg@464w_644h_1e_1c', ' Ne Zha', 0, NULL, NULL, NULL, ' 110 分钟', 5076247);
INSERT INTO `movie` VALUES (172, '少年的你', '2019-10-25', ' 中国大陆 ', '一场高考前夕的校园意外，改变了两个少年的命运。 陈念（周冬雨 饰）性格内向，是学校里的优等生，努力复习、考上好大学是高三的她唯一的念头。同班同学的意外坠楼牵扯出一连串不为人知的故事，陈念也被一点点卷入其中……在她最孤独的时刻，一个叫“小北”（易烊千玺 饰）的少年闯入了她的世界……大多数人的18岁都是明媚、快乐的，而他们却在18岁这个夏天提前尝到了成人世界的漠然。一场秘而不宣的“战斗”正在上演，他们将一起守护少年的尊严。', 'https://p0.meituan.net/movie/7b437e3a0d08d10e374ddc34f71b88fe3379132.jpg@464w_644h_1e_1c', ' Better Days', 0, NULL, NULL, NULL, ' 135 分钟', 5317848);
INSERT INTO `movie` VALUES (173, '战狼2', '2017-07-27', ' 中国大陆 ', '故事发生在非洲附近的大海上，主人公冷锋遭遇人生滑铁卢，被“开除军籍”，本想漂泊一生的他，正当他打算这么做的时候，一场突如其来的意外打破了他的计划，突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。随着斗争的持续，体内的狼性逐渐复苏，最终孤身闯入战乱区域，为同胞而战斗。', 'https://p0.meituan.net/movie/0355f74de087b699b85b7daa3d7881ec365712.jpg@464w_644h_1e_1c', ' Wolf Warrior 2', 0, NULL, NULL, NULL, ' 123 分钟', 6765191);
INSERT INTO `movie` VALUES (174, '野性的呼唤', '2020-02-21', ' 美国 ', '影片改编自广受欢迎的文学经典，《野性的呼唤》生动地展现了心胸宽广的狗狗巴克的故事。19世纪90年代，正值淘金热，本在加利福尼亚家中的他突然辗转到了异域的阿拉斯加育空地区荒原，他的生活也随之发生了翻天覆地的变化。从邮递雪橇队的新手雪橇犬到后来成为领袖，巴克的一生都充满了冒险，最终他找到了自己真正的归属并成为了自己的主人。 作为一部真人与动画结合的电影，《野性的呼唤》有着顶尖的视觉效果与动画技术团队，但求动物的效果无比逼真，角色的情感真实可信。', 'https://p1.meituan.net/moviemachine/6ca63f0a1b08ee9667dcf0f699b6cf3d216090.jpg@464w_644h_1e_1c', '\n Call of the Wild\n', 8.5, 2, 0, NULL, ' 100分钟 ', 8433913);
INSERT INTO `movie` VALUES (175, '哥斯拉2：怪兽之王', '2019-05-31', ' 美国 ', '随着《哥斯拉》和《金刚：骷髅岛》在全球范围内的成功，华纳兄弟影片公司和传奇影业联手开启了怪兽宇宙系列电影的新篇章—一部史诗级动作冒险巨制。在这部电影中，哥斯拉将和众多大家在流行文化中所熟知的怪兽展开较量。全新故事中，研究神秘动物学的机构“帝王组织”成员将勇敢直面巨型怪兽，其中强大的哥斯拉也将和魔斯拉、拉顿和它的死对头——三头王基多拉展开激烈对抗。当这些只存在于传说里的超级生物再度崛起时，它们将展开王者争霸，人类的命运岌岌可危……', 'https://p0.meituan.net/movie/71fba05fbe4912cb70d27b87c3c856393364925.jpg@464w_644h_1e_1c', '\n Godzilla: King of the Monsters\n', 8.8, 1, 1, 93105595, ' 132分钟 ', 1129542);
INSERT INTO `movie` VALUES (176, '恐怖电影院2', '2017-10-20', ' 中国大陆 ', '慕青（殷果儿 饰）、张成（黄梓城 饰）、杜奇（刘小奇 饰）、瑟琳娜（闫薇儿 饰）和艾伦（宋嘉豪 饰）等一行八人前往一座坐落在荒郊野外的电影院看电影，虽然电影院的样子有些诡异，四周亦是荒无人烟，但同学们经不住于悦的游说，还是欣然前往。 实际上，于悦是这家电影院开发商的女儿，她策划了一场阴谋，所有来这里看电影的同学们都是她实现阴谋的鱼饵。原来，这座电影院刚好建造在了鬼门关上，自从动工以来就屡屡发生工人死亡的事件，如今，黑暗的阴影亦蔓延到了于悦的父亲身上。经过高人指点，于悦得知只要找来八具年轻的肉体，就能够镇住恶灵，父亲亦能获救。', 'https://p0.meituan.net/movie/913ab2bb77e596faac6e5f5e3831c8a9255571.jpg@464w_644h_1e_1c', '\n The Haunted Cinema2\n', 8.8, 3, 0, 77473131, ' 90分钟 ', 9058502);
INSERT INTO `movie` VALUES (177, '复仇者联盟4：终局之战', '2019-04-24', ' 美国 ', '一声响指，宇宙间半数生命灰飞烟灭。几近绝望的复仇者们在惊奇队长（布丽·拉尔森 饰）的帮助下找到灭霸（乔什·布洛林 饰）归隐之处，却得知六颗无限宝石均被销毁，希望彻底破灭。如是过了五年，迷失在量子领域的蚁人（保罗·路德 饰）意外回到现实世界，他的出现为幸存的复仇者们点燃了希望。与美国队长（克里斯·埃文斯 饰）冰释前嫌的托尼（小罗伯特·唐尼 饰）找到了穿越时空的方法，星散各地的超级英雄再度集结，他们分别穿越不同的时代去搜集无限宝石。而在这一过程中，平行宇宙的灭霸察觉了他们的计划。 注定要载入史册的最终决战，超级英雄们为了心中恪守的信念前仆后继……', 'https://p0.meituan.net/moviemachine/f7d2ad70eb79d6d9b8a197713db9b8c41711752.jpg@464w_644h_1e_1c', '\n Avengers: Endgame\n', 9.4, 1, 1, 62888829, ' 181分钟 ', 3734500);
INSERT INTO `movie` VALUES (178, '星球大战：天行者崛起', '2019-12-20', ' 美国 ', '在《星球大战8》的故事结束后，后传三部曲终于迎来了高潮。在卢克·天行者化为绝地英灵的一年后，残存的抵抗势力将再次面对第一秩序。同时，绝地和西斯之间的大战将天行者的传奇带到最后。', 'https://p0.meituan.net/moviemachine/a16716ff2873be37857add59f882e44d5071965.jpg@464w_644h_1e_1c', '\n Star Wars: Episode IX\n', 9.1, 2, 0, NULL, ' 142分钟 ', 4580718);
INSERT INTO `movie` VALUES (179, '冰雪奇缘2', '2019-11-22', ' 美国 ', '为什么艾莎（伊迪娜·门泽尔 配音）天生就拥有神奇魔法？谜题的答案一直呼唤着她，也威胁着王国的安全。她将和安娜（克里斯汀·贝尔 配音）、克斯托夫（乔纳森·格罗夫 配音）、雪宝（乔什·盖德 配音）和驯鹿斯特共同开启一场非凡的冒险旅程。艾莎曾担心世界不能接受自己的冰雪魔法，但在《冰雪奇缘2》中她却必须祈祷自己的魔法足够强大，能够拯救世界。本片由奥斯卡金牌团队打造——导演珍妮弗·李和克里斯·巴克、制作人彼得·戴尔·维克以及词曲作者克里斯汀·安德森-洛佩兹及罗伯特·洛佩兹悉数回归，原配音班底伊迪娜·门泽尔、克里斯汀·贝尔、乔纳森·格罗夫和乔什·盖德再度加盟。华特迪士尼动画工作室荣誉出品《冰雪奇缘2》将于2019年11月22日登陆北美院线。', 'https://p0.meituan.net/moviemachine/58ee13be6dc60bf5e636cf915bbbaaa55787785.jpg@464w_644h_1e_1c', '\n Frozen II\n', 9.2, 2, 0, NULL, ' 104分钟 ', 8502514);
INSERT INTO `movie` VALUES (180, '疯狂的外星人', '2019-02-05', ' 中国大陆 ', '耿浩（黄渤 饰）与一心想发大财的好兄弟大飞（沈腾 饰），经营着各自惨淡的“事业”，然而“天外来客”（徐峥 饰）的意外降临，打破了二人平静又拮据的生活。神秘的西方力量也派出“哼哈二将”在全球搜查外星人行踪。啼笑皆非的跨物种对决，别开生面的“星战”，在中国某海边城市激情上演。', 'https://p0.meituan.net/movie/6a21e35ad7106c60967954b165c09b92915222.jpg@464w_644h_1e_1c', '\n Crazy Alien\n', 8.9, 1, 1, 66592681, ' 116分钟 ', 6696342);
INSERT INTO `movie` VALUES (181, '两只老虎', '2019-11-29', ' 中国大陆 ', '爱情事业均不成功的余凯旋 （ 乔杉 饰），生活没有方向，缺钱，笨，但还是有那么一点善良在。余凯旋想一夜暴富，绑架了一名几十年来忙着挣钱，事业成功了，但没家人、没朋友，突然间就对生活绝望的大富商张成功 （ 葛优 饰），打算勒索100万，张成功讨价还价之后，竟然答应给200万，条件是让余凯旋帮他做三件事。完成死之前的三个心愿，这三个心愿对应的是他的三个愧欠，对爱人，友人与亲人。绑匪与人质一路互相嫌弃又惺惺相惜，踏上了一段未知而温暖的旅程 。', 'https://p0.meituan.net/moviemachine/19d48b1fd4f4af5c8c8e1c780a26fa431567220.jpg@464w_644h_1e_1c', '\n Two Tigers\n', 8.3, 2, 0, NULL, ' 96分钟 ', 9716034);
INSERT INTO `movie` VALUES (182, '中国机长', '2019-09-30', ' 中国大陆 ', '四川航空3U8633航班机组执行航班任务时，在万米高空突遇驾驶舱风挡玻璃爆裂脱落、座舱释压的极端罕见险情。机组成员凭借着极少仍在工作状态的仪器，艰难地进行手动驾驶。座舱释压发生时，乘务组立即执行释压处置程序，指导旅客使用氧气面罩，并训练有素地喊出：“请大家相信我们，相信我们有信心、有能力带领大家安全落地。”生死关头，英雄机组的正确处置，确保了机上全体人员的生命安全，创造了世界民航史上的奇迹 。', 'https://p0.meituan.net/movie/cddf92d0ac6a0db837a1bc488b241c42267927.jpg@464w_644h_1e_1c', '\n The Captain\n', 8.7, 1, 1, 61627046, ' 111分钟 ', 5718902);
INSERT INTO `movie` VALUES (183, '数码宝贝大冒险：最后的进化·羁绊', '2020-02-21', ' 日本 ', '系列20周年剧场版动画《数码宝贝大冒险》（暂定名） 公开了特报影像。在影片中，八神太一和石田大和将会成长为22岁，确认将于 2020年初春 在日本上映', 'https://p0.meituan.net/movie/91fbd3b7a8a4304f0b40dbac0139e483170865.jpg@464w_644h_1e_1c', '\n デジモンアドベンチャー LAST EVOLUTION 絆\n', 8.2, 2, 0, NULL, ' 65分钟 ', 5335985);
INSERT INTO `movie` VALUES (184, '我和我的祖国', '2019-09-30', ' 中国大陆 ', '七位导演分别取材新中国成立70周年以来，祖国经历的无数个历史性经典瞬间。讲述普通人与国家之间息息相关密不可分的动人故事。聚焦大时代大事件下，小人物和国家之间，看似遥远实则密切的关联，唤醒全球华人共同回忆。', 'https://p0.meituan.net/moviemachine/b2c5c74d33e45745fd3462e44b3698e18336620.jpg@464w_644h_1e_1c', '\n My People，My Country\n', 9.2, 1, 1, 61248680, ' 155分钟 ', 7232712);
INSERT INTO `movie` VALUES (185, '釜山行', '2016-07-20', ' 韩国 ', '证券公司基金管理人石宇（孔侑 饰）光鲜精干，却也是个重利轻义之徒。妻子为此与之决裂，女儿秀安（金秀安 饰）则对如此自私的父亲越来越失望，决定前往釜山和母亲生活。在秀安生日这天，石宇抽出时间陪伴女儿登上开往釜山的特快列车。而与此同时，城市四处出现了极为可疑的暴动事件。政府极力洗白无法掩盖丧尸肆虐的事实，即便懵然无知的列车乘客也因为不速之客的到来而堕入恐慌绝望的地狱中。开车的刹那，一名感染者冲入车厢，而她很快尸变并对目光所及之处的健康人展开血腥屠杀。未过多久，丧尸便呈几何数爆发性地增长。石宇被迫和幸存者的乘客们在逼仄的空间中奋力求生。 通往釜山的遥遥旅途布满杀机，危难时刻每个幸存者的人性也承受巨大的考验……', 'https://p1.meituan.net/movie/9a0cc541dba6851c92143f0cc0d97bbe270276.jpg@464w_644h_1e_1c', '\n 부산행\n', 9.2, 3, 0, 90867964, ' 118分钟 ', 4300109);
INSERT INTO `movie` VALUES (186, '囧妈', '2020-01-25', ' 中国大陆 ', '徐伊万（徐峥 饰）缠身于婚姻危机和商业纠纷中，却阴差阳错与妈妈坐上了开往俄罗斯的火车。生活方式和观念的冲突，使他与妈妈产生了激烈矛盾，同时还要与妻子斗智斗勇。一路风景奇遇，囧事不断……', 'https://p1.meituan.net/movie/f2ebf28e702874e3aa4238911cd34ef41074680.jpg@464w_644h_1e_1c', '\n Lost in Russia\n', 9.1, 2, 0, NULL, ' 126分钟 ', 4044586);
INSERT INTO `movie` VALUES (187, '流浪地球', '2019-02-05', ' 中国大陆 ', '近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启长大，他带着妹妹朵朵偷偷跑到地表，偷开外公韩子昂的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望…… 本片根据刘慈欣的同名小说改编。', 'https://p1.meituan.net/movie/616cd50a33550a9225ac781e52d14ae54967551.jpg@464w_644h_1e_1c', '\n The Wandering Earth\n', 9.2, 1, 1, 95876092, ' 125分钟 ', 8479124);
INSERT INTO `movie` VALUES (188, '诛仙1', '2019-09-13', ' 中国大陆 ', '草庙村被屠，少年张小凡（肖战 饰）双亲离世，被青云门大竹峰收留。机缘巧合之下，他习得佛门天音功法，又意外获得魔教法器烧火棍，踏上强者之路的同时，也让他陷入了巨大的危机。至魔法器的现世，与陆雪琪（李沁 饰）、碧瑶（孟美岐 饰）、田灵儿（唐艺昕 饰）三个女生间命运的交错，都让他原本单纯的人生轨迹充满变数。一个勇者驳斥命运的传奇之旅就此展开......', 'https://p0.meituan.net/movie/845dce25ba800e91ac591b683a0c3ba92450317.jpg@464w_644h_1e_1c', '\n Jade Dynasty\n', 6.1, 1, 1, 97237161, ' 101分钟 ', 5628311);
INSERT INTO `movie` VALUES (189, '速度与激情：增压', '2015-06-25', ' 美国 ', '环球将发布[速激系列幕后花絮特辑[速度与激情：增压]，揭示[速激]如何在绿幕前完成驾车特效，文·迪塞尔、米歇尔·罗德里格兹、泰瑞斯·吉布森、卢克·伊万斯等人均有亮相。据悉[增压]将于6月25日亮相好莱坞环球影城，环球也正在打造[速激]主题游乐项目。', 'https://p0.meituan.net/movie/de9c7b6a0afa18a196b14867e5f3385f176111.jpg@464w_644h_1e_1c', '\n Fast &amp; Furious: Supercharged\n', 9.3, 3, 0, 62763703, ' 111分钟 ', 7150069);
INSERT INTO `movie` VALUES (190, '攀登者', '2019-09-30', ' 中国大陆 ', '1960年，中国登山队向珠峰发起冲刺，完成了世界首次北坡登顶这一不可能的任务。15 年后，方五洲（吴京 饰）和曲松林（张译 饰）在气象学家徐缨（章子怡 饰）的帮助下，带领李国梁（井柏然 饰）、杨光（胡歌 饰）等年轻队员再次挑战世界之巅。迎接他们的将是更加严酷的现实，也是生与死的挑战......', 'https://p0.meituan.net/movie/4c01895cfd53e82f7c3048c407974a6b4739229.jpg@464w_644h_1e_1c', '\n The Climbers\n', 9.1, 1, 1, 64004048, ' 125分钟 ', 6615142);
INSERT INTO `movie` VALUES (191, '蜘蛛侠：英雄远征', '2019-06-28', ' 美国 ', '彼得·帕克回到了高中。他想暂时远离制裁罪恶的生活，便踏上了前往欧洲的修学旅行，也借此机会向米歇尔·琼斯表达真实的情感。但计划赶不上变化，尼克·弗瑞和一名来自平行宇宙的超级英雄神秘客找上门来，希望彼得·帕克一起阻止四名元素众毁灭地球。全世界都在哀悼托尼·史塔克的去世，同时也都担心外星人再来攻击地球，所以大众都期望蜘蛛侠能接钢铁侠的班。彼得·帕克还没准备好接下这份大任，也不知道托尼·史塔克走后自己该做什么。他还纠结于对米歇尔·琼斯的感觉，觉得自己需要在超级英雄生活的间隙休息一下。为了帮助学生们顺利回归，学校决定让一些学生去欧洲游学。彼得·帕克觉得这是暂时放下蜘蛛侠身份的绝好机会，也是告诉米歇尔·琼斯自己真实感受的时候。但当尼克·弗瑞招揽他后，彼得·帕克不得不把这些计划先放一放 。', 'https://p0.meituan.net/moviemachine/48fdec1c3f34533f1e1b907c5e8a61f01905931.jpg@464w_644h_1e_1c', '\n Spider-Man: Far From Home\n', 8.9, 1, 1, 90431733, ' 127分钟 ', 9053034);
INSERT INTO `movie` VALUES (194, '好看的电影', '2020-07-17', '中国', '这是一个非常好看的电影', '/img/6c2d97637124494ba708da4c7945574e.jpg', 'good movie', 0, NULL, NULL, NULL, '120分钟', NULL);
INSERT INTO `movie` VALUES (195, '好看的电影', '2020-07-17', '中国', '这是一个非常好看的电影', '/img/edbd63ab38444a20a72b2c8ecc8e75f2.jpg', 'good movie', 0, NULL, NULL, NULL, '120分钟', NULL);
INSERT INTO `movie` VALUES (196, '11', '2020-07-10', '11', '111111', '/img/227f12af0ef142ecbe42340abcc8b1d4.jpg', '111', NULL, NULL, NULL, NULL, '100分钟', NULL);
INSERT INTO `movie` VALUES (197, '11', '2020-07-10', '11', '111111', '/img/1d28d46852a148a7a51c49440064bf52.jpg', '111', NULL, NULL, NULL, NULL, '100分钟', NULL);
INSERT INTO `movie` VALUES (198, '11', '2020-07-10', '11', '111111', '/img/46dab7fe668c499d9a6243c6b643c2df.jpg', '111', NULL, NULL, NULL, NULL, '100分钟', NULL);
INSERT INTO `movie` VALUES (199, 'yy', '2020-07-10', '11', '44ggggg', '/img/66461b3ac9b24364aac2ea5a133cb437.jpg', 'yy', NULL, NULL, NULL, NULL, '44分钟', NULL);
INSERT INTO `movie` VALUES (200, 'yy', '2020-07-10', '11', '44ggggg', '/img/65e4911e676d4da2bc3b4660e50b9d8c.jpg', 'yy', NULL, NULL, NULL, NULL, '44分钟', NULL);
INSERT INTO `movie` VALUES (201, 'yy', '2020-07-10', '11', '44ggggg', '/img/6ba488c2580f4c99b3418e3c99a27189.jpg', 'yy', NULL, NULL, NULL, NULL, '44分钟', NULL);
INSERT INTO `movie` VALUES (202, 'yy顶顶顶顶', '2020-07-10', '11', '44ggggg', '/img/959eab7c8bd44b5d81018d6c85eb1fbe.jpg', 'yy是是是', NULL, NULL, NULL, NULL, '44分钟', NULL);
INSERT INTO `movie` VALUES (203, '11发的方法的', '2020-07-09', '11', '111', '/img/4c6081aac36a40f5bf2e9b3dc3a59135.jpg', '111', NULL, NULL, NULL, NULL, '111分钟', NULL);
INSERT INTO `movie` VALUES (204, '111顶顶顶顶订打底袜', '2020-07-17', '11', '111', '/img/958515cfb88743a8931a6a474a6f8e5b.jpg', '111订单', NULL, NULL, NULL, NULL, '111分钟', NULL);
INSERT INTO `movie` VALUES (205, '111', '2020-07-18', '33', 'feafafafafafwa', '/img/def61843f4de4affa320ecf98c0494b8.jpg', '111', NULL, NULL, NULL, NULL, '333分钟', NULL);

-- ----------------------------
-- Table structure for movie_actor
-- ----------------------------
DROP TABLE IF EXISTS `movie_actor`;
CREATE TABLE `movie_actor`  (
  `movie_id` int(0) NULL DEFAULT NULL,
  `actor_id` int(0) NULL DEFAULT NULL,
  `movie_actor_role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_actor_type` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_actor
-- ----------------------------
INSERT INTO `movie_actor` VALUES (167, 131, NULL, 0);
INSERT INTO `movie_actor` VALUES (167, 132, '饰：李维杰', 1);
INSERT INTO `movie_actor` VALUES (167, 133, '饰：阿玉', 1);
INSERT INTO `movie_actor` VALUES (167, 134, '饰：拉韫', 1);
INSERT INTO `movie_actor` VALUES (167, 135, '饰：都彭', 1);
INSERT INTO `movie_actor` VALUES (169, 140, NULL, 0);
INSERT INTO `movie_actor` VALUES (169, 141, NULL, 0);
INSERT INTO `movie_actor` VALUES (169, 142, '饰：Oh Joon-woo', 1);
INSERT INTO `movie_actor` VALUES (169, 143, '饰：Kim Yu-bin', 1);
INSERT INTO `movie_actor` VALUES (169, 144, '饰：Mask man', 1);
INSERT INTO `movie_actor` VALUES (174, 164, NULL, 0);
INSERT INTO `movie_actor` VALUES (174, 165, '饰：John Thornton', 1);
INSERT INTO `movie_actor` VALUES (174, 166, '饰：Hal', 1);
INSERT INTO `movie_actor` VALUES (174, 167, '饰：Mercedes', 1);
INSERT INTO `movie_actor` VALUES (174, 168, '饰：Judge Miller', 1);
INSERT INTO `movie_actor` VALUES (175, 169, NULL, 0);
INSERT INTO `movie_actor` VALUES (175, 170, '饰：马克·罗素 Mark Russell', 1);
INSERT INTO `movie_actor` VALUES (175, 171, '饰：爱玛·罗素博士 Dr. Emma Russell', 1);
INSERT INTO `movie_actor` VALUES (175, 172, '饰：麦迪森·罗素 Madison Russell', 1);
INSERT INTO `movie_actor` VALUES (175, 173, '饰：Dr. Ishiro Serizawa', 1);
INSERT INTO `movie_actor` VALUES (176, 174, NULL, 0);
INSERT INTO `movie_actor` VALUES (176, 175, '饰：慕青', 1);
INSERT INTO `movie_actor` VALUES (176, 176, '饰：杜奇', 1);
INSERT INTO `movie_actor` VALUES (176, 177, '饰：瑟琳娜', 1);
INSERT INTO `movie_actor` VALUES (176, 178, '饰：艾伦', 1);
INSERT INTO `movie_actor` VALUES (177, 179, NULL, 0);
INSERT INTO `movie_actor` VALUES (177, 180, NULL, 0);
INSERT INTO `movie_actor` VALUES (177, 181, '饰：托尼·史塔克/钢铁侠 Tony Stark / Iron Man', 1);
INSERT INTO `movie_actor` VALUES (177, 182, '饰：史蒂夫·罗杰斯/美国队长 Steve Rogers / Captain America', 1);
INSERT INTO `movie_actor` VALUES (177, 183, '饰：布鲁斯·班纳/浩克 Bruce Banner / Hulk', 1);
INSERT INTO `movie_actor` VALUES (178, 184, NULL, 0);
INSERT INTO `movie_actor` VALUES (178, 185, NULL, 0);
INSERT INTO `movie_actor` VALUES (178, 186, '饰：Leia Organa', 1);
INSERT INTO `movie_actor` VALUES (178, 187, '饰：Luke Skywalker', 1);
INSERT INTO `movie_actor` VALUES (178, 188, '饰：Kylo Ren', 1);
INSERT INTO `movie_actor` VALUES (179, 189, NULL, 0);
INSERT INTO `movie_actor` VALUES (179, 190, NULL, 0);
INSERT INTO `movie_actor` VALUES (179, 191, '饰：安娜 Anna', 1);
INSERT INTO `movie_actor` VALUES (179, 192, '饰：艾尔莎 Elsa', 1);
INSERT INTO `movie_actor` VALUES (179, 193, '饰：雪宝 Olaf', 1);
INSERT INTO `movie_actor` VALUES (180, 194, NULL, 0);
INSERT INTO `movie_actor` VALUES (180, 195, '饰：耿浩', 1);
INSERT INTO `movie_actor` VALUES (180, 196, '饰：大飞', 1);
INSERT INTO `movie_actor` VALUES (180, 197, '饰：扎克 Captain Zach Andrews', 1);
INSERT INTO `movie_actor` VALUES (180, 198, '饰：约翰 John Stockton', 1);
INSERT INTO `movie_actor` VALUES (181, 199, NULL, 0);
INSERT INTO `movie_actor` VALUES (181, 200, '饰：张成功', 1);
INSERT INTO `movie_actor` VALUES (181, 201, '饰：余凯旋', 1);
INSERT INTO `movie_actor` VALUES (181, 202, '饰：周原', 1);
INSERT INTO `movie_actor` VALUES (181, 203, '饰：彩霞', 1);
INSERT INTO `movie_actor` VALUES (182, 204, NULL, 0);
INSERT INTO `movie_actor` VALUES (182, 205, '饰：刘长健', 1);
INSERT INTO `movie_actor` VALUES (182, 206, '饰：徐奕辰', 1);
INSERT INTO `movie_actor` VALUES (182, 207, '饰：梁栋', 1);
INSERT INTO `movie_actor` VALUES (182, 208, '饰：毕男', 1);
INSERT INTO `movie_actor` VALUES (183, 209, NULL, 0);
INSERT INTO `movie_actor` VALUES (183, 210, '饰：Yagami Taichi', 1);
INSERT INTO `movie_actor` VALUES (183, 211, '饰：Ishida Yamato', 1);
INSERT INTO `movie_actor` VALUES (183, 212, '饰：Takenouchi Sora', 1);
INSERT INTO `movie_actor` VALUES (183, 213, '饰：Izumi Koushiro', 1);
INSERT INTO `movie_actor` VALUES (184, 214, NULL, 0);
INSERT INTO `movie_actor` VALUES (184, 215, NULL, 0);
INSERT INTO `movie_actor` VALUES (184, 195, '饰：林治远', 1);
INSERT INTO `movie_actor` VALUES (184, 216, '饰：高远', 1);
INSERT INTO `movie_actor` VALUES (184, 217, '饰：冬冬（童年）', 1);
INSERT INTO `movie_actor` VALUES (185, 218, NULL, 0);
INSERT INTO `movie_actor` VALUES (185, 219, '饰：徐硕宇', 1);
INSERT INTO `movie_actor` VALUES (185, 220, '饰：成景', 1);
INSERT INTO `movie_actor` VALUES (185, 221, '饰：尹相华', 1);
INSERT INTO `movie_actor` VALUES (185, 222, '饰：Soo-an', 1);
INSERT INTO `movie_actor` VALUES (186, 223, NULL, 0);
INSERT INTO `movie_actor` VALUES (186, 223, '饰：徐伊万', 1);
INSERT INTO `movie_actor` VALUES (186, 224, '饰：卢小花', 1);
INSERT INTO `movie_actor` VALUES (186, 208, '饰：张璐', 1);
INSERT INTO `movie_actor` VALUES (186, 225, '饰：贾建国', 1);
INSERT INTO `movie_actor` VALUES (187, 226, NULL, 0);
INSERT INTO `movie_actor` VALUES (187, 160, '饰：刘培强', 1);
INSERT INTO `movie_actor` VALUES (187, 227, '饰：刘启', 1);
INSERT INTO `movie_actor` VALUES (187, 228, '饰：王磊', 1);
INSERT INTO `movie_actor` VALUES (187, 229, '饰：韩子昂', 1);
INSERT INTO `movie_actor` VALUES (188, 230, NULL, 0);
INSERT INTO `movie_actor` VALUES (188, 231, '饰：张小凡', 1);
INSERT INTO `movie_actor` VALUES (188, 232, '饰：陆雪琪', 1);
INSERT INTO `movie_actor` VALUES (188, 233, '饰：碧瑶', 1);
INSERT INTO `movie_actor` VALUES (188, 234, '饰：田灵儿', 1);
INSERT INTO `movie_actor` VALUES (189, 235, NULL, 0);
INSERT INTO `movie_actor` VALUES (189, 236, '饰：Shaw', 1);
INSERT INTO `movie_actor` VALUES (189, 237, '饰：Hobbs', 1);
INSERT INTO `movie_actor` VALUES (189, 238, '饰：Dominic Toretto', 1);
INSERT INTO `movie_actor` VALUES (189, 239, '饰：Letty', 1);
INSERT INTO `movie_actor` VALUES (190, 240, NULL, 0);
INSERT INTO `movie_actor` VALUES (190, 160, '饰：方五洲', 1);
INSERT INTO `movie_actor` VALUES (190, 241, '饰：徐缨', 1);
INSERT INTO `movie_actor` VALUES (190, 216, '饰：曲松林', 1);
INSERT INTO `movie_actor` VALUES (190, 242, '饰：李国梁', 1);
INSERT INTO `movie_actor` VALUES (191, 243, NULL, 0);
INSERT INTO `movie_actor` VALUES (191, 244, '饰：彼得·帕克 / 蜘蛛侠 Peter Parker / Spider-Man', 1);
INSERT INTO `movie_actor` VALUES (191, 245, '饰：神秘客 Quentin Beck / Mysterio', 1);
INSERT INTO `movie_actor` VALUES (191, 246, '饰：尼克·弗瑞 Nick Furry', 1);
INSERT INTO `movie_actor` VALUES (191, 247, 'x', 1);
INSERT INTO `movie_actor` VALUES (194, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (194, 140, '饰：二狗蛋', 1);
INSERT INTO `movie_actor` VALUES (194, 139, '饰：大狗蛋', 1);
INSERT INTO `movie_actor` VALUES (195, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (195, 140, '饰：二狗蛋', 1);
INSERT INTO `movie_actor` VALUES (195, 139, '饰：大狗蛋', 1);
INSERT INTO `movie_actor` VALUES (196, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (196, 126, '饰：1111', 1);
INSERT INTO `movie_actor` VALUES (197, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (197, 126, '饰：1111', 1);
INSERT INTO `movie_actor` VALUES (198, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (198, 126, '饰：1111', 1);
INSERT INTO `movie_actor` VALUES (199, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (199, 126, '饰：1111', 1);
INSERT INTO `movie_actor` VALUES (200, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (200, 126, '饰：1111', 1);
INSERT INTO `movie_actor` VALUES (201, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (201, 126, '饰：1111', 1);
INSERT INTO `movie_actor` VALUES (202, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (202, 126, '饰：www', 1);
INSERT INTO `movie_actor` VALUES (204, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (204, 126, '饰：饰：饰：订单', 1);
INSERT INTO `movie_actor` VALUES (168, 136, NULL, 0);
INSERT INTO `movie_actor` VALUES (168, 137, '饰：饰：唐仁', 1);
INSERT INTO `movie_actor` VALUES (168, 138, '饰：饰：秦风', 1);
INSERT INTO `movie_actor` VALUES (168, 132, '饰：饰：宋义', 1);
INSERT INTO `movie_actor` VALUES (168, 139, '饰：饰：陈英', 1);
INSERT INTO `movie_actor` VALUES (166, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (166, 127, '饰：饰：饰：森岛帆高', 1);
INSERT INTO `movie_actor` VALUES (166, 128, '饰：饰：饰：天野阳菜', 1);
INSERT INTO `movie_actor` VALUES (166, 129, '饰：饰：饰：夏美', 1);
INSERT INTO `movie_actor` VALUES (166, 130, '饰：饰：饰：须贺圭介', 1);
INSERT INTO `movie_actor` VALUES (173, 160, NULL, 0);
INSERT INTO `movie_actor` VALUES (173, 160, '饰：冷锋', 1);
INSERT INTO `movie_actor` VALUES (173, 161, '饰：老爹', 1);
INSERT INTO `movie_actor` VALUES (173, 162, '饰：何建国', 1);
INSERT INTO `movie_actor` VALUES (173, 163, '饰：卓亦凡', 1);
INSERT INTO `movie_actor` VALUES (205, 126, NULL, 0);
INSERT INTO `movie_actor` VALUES (205, 126, '饰：ddd', 1);
INSERT INTO `movie_actor` VALUES (170, 138, NULL, 0);
INSERT INTO `movie_actor` VALUES (170, 146, '饰：马珂', 1);
INSERT INTO `movie_actor` VALUES (170, 147, '饰：周雯', 1);
INSERT INTO `movie_actor` VALUES (170, 148, '饰：Judy', 1);
INSERT INTO `movie_actor` VALUES (170, 149, '饰：Harrison', 1);
INSERT INTO `movie_actor` VALUES (171, 150, NULL, 0);
INSERT INTO `movie_actor` VALUES (171, 151, '饰：儿童哪吒', 1);
INSERT INTO `movie_actor` VALUES (171, 152, '饰：少年哪吒', 1);
INSERT INTO `movie_actor` VALUES (171, 153, '饰：敖丙', 1);
INSERT INTO `movie_actor` VALUES (171, 154, '饰：李靖', 1);
INSERT INTO `movie_actor` VALUES (172, 155, NULL, 0);
INSERT INTO `movie_actor` VALUES (172, 156, '饰：陈念', 1);
INSERT INTO `movie_actor` VALUES (172, 157, '饰：小北', 1);
INSERT INTO `movie_actor` VALUES (172, 158, '饰：郑易', 1);
INSERT INTO `movie_actor` VALUES (172, 159, '饰：老杨', 1);

-- ----------------------------
-- Table structure for movie_tpye
-- ----------------------------
DROP TABLE IF EXISTS `movie_tpye`;
CREATE TABLE `movie_tpye`  (
  `type_id` int(0) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tpye_status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_tpye
-- ----------------------------
INSERT INTO `movie_tpye` VALUES (3, '爱情', NULL);
INSERT INTO `movie_tpye` VALUES (4, '动画', NULL);
INSERT INTO `movie_tpye` VALUES (5, '奇幻', NULL);
INSERT INTO `movie_tpye` VALUES (6, '剧情', NULL);
INSERT INTO `movie_tpye` VALUES (7, '犯罪', NULL);
INSERT INTO `movie_tpye` VALUES (8, '喜剧', NULL);
INSERT INTO `movie_tpye` VALUES (9, '动作', NULL);
INSERT INTO `movie_tpye` VALUES (10, '悬疑', NULL);
INSERT INTO `movie_tpye` VALUES (11, '灾难', NULL);
INSERT INTO `movie_tpye` VALUES (12, '青春', NULL);
INSERT INTO `movie_tpye` VALUES (13, '战争', NULL);
INSERT INTO `movie_tpye` VALUES (14, '冒险', NULL);
INSERT INTO `movie_tpye` VALUES (15, '科幻', NULL);
INSERT INTO `movie_tpye` VALUES (16, '恐怖', NULL);
INSERT INTO `movie_tpye` VALUES (17, '惊悚', NULL);
INSERT INTO `movie_tpye` VALUES (18, '传记', NULL);
INSERT INTO `movie_tpye` VALUES (19, '古装', NULL);
INSERT INTO `movie_tpye` VALUES (20, '短片', NULL);

-- ----------------------------
-- Table structure for movie_tpye_mid
-- ----------------------------
DROP TABLE IF EXISTS `movie_tpye_mid`;
CREATE TABLE `movie_tpye_mid`  (
  `movie_id` int(0) NOT NULL,
  `type_id` int(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_tpye_mid
-- ----------------------------
INSERT INTO `movie_tpye_mid` VALUES (167, 6);
INSERT INTO `movie_tpye_mid` VALUES (167, 7);
INSERT INTO `movie_tpye_mid` VALUES (169, 11);
INSERT INTO `movie_tpye_mid` VALUES (174, 6);
INSERT INTO `movie_tpye_mid` VALUES (174, 14);
INSERT INTO `movie_tpye_mid` VALUES (175, 15);
INSERT INTO `movie_tpye_mid` VALUES (175, 11);
INSERT INTO `movie_tpye_mid` VALUES (175, 9);
INSERT INTO `movie_tpye_mid` VALUES (176, 16);
INSERT INTO `movie_tpye_mid` VALUES (176, 17);
INSERT INTO `movie_tpye_mid` VALUES (177, 9);
INSERT INTO `movie_tpye_mid` VALUES (177, 14);
INSERT INTO `movie_tpye_mid` VALUES (177, 5);
INSERT INTO `movie_tpye_mid` VALUES (178, 9);
INSERT INTO `movie_tpye_mid` VALUES (178, 15);
INSERT INTO `movie_tpye_mid` VALUES (178, 14);
INSERT INTO `movie_tpye_mid` VALUES (179, 8);
INSERT INTO `movie_tpye_mid` VALUES (179, 4);
INSERT INTO `movie_tpye_mid` VALUES (179, 14);
INSERT INTO `movie_tpye_mid` VALUES (180, 6);
INSERT INTO `movie_tpye_mid` VALUES (180, 8);
INSERT INTO `movie_tpye_mid` VALUES (180, 15);
INSERT INTO `movie_tpye_mid` VALUES (181, 6);
INSERT INTO `movie_tpye_mid` VALUES (181, 8);
INSERT INTO `movie_tpye_mid` VALUES (182, 6);
INSERT INTO `movie_tpye_mid` VALUES (182, 18);
INSERT INTO `movie_tpye_mid` VALUES (183, 4);
INSERT INTO `movie_tpye_mid` VALUES (183, 14);
INSERT INTO `movie_tpye_mid` VALUES (184, 6);
INSERT INTO `movie_tpye_mid` VALUES (185, 9);
INSERT INTO `movie_tpye_mid` VALUES (185, 17);
INSERT INTO `movie_tpye_mid` VALUES (185, 11);
INSERT INTO `movie_tpye_mid` VALUES (186, 6);
INSERT INTO `movie_tpye_mid` VALUES (186, 8);
INSERT INTO `movie_tpye_mid` VALUES (187, 6);
INSERT INTO `movie_tpye_mid` VALUES (187, 14);
INSERT INTO `movie_tpye_mid` VALUES (187, 15);
INSERT INTO `movie_tpye_mid` VALUES (188, 19);
INSERT INTO `movie_tpye_mid` VALUES (188, 3);
INSERT INTO `movie_tpye_mid` VALUES (188, 5);
INSERT INTO `movie_tpye_mid` VALUES (189, 9);
INSERT INTO `movie_tpye_mid` VALUES (189, 20);
INSERT INTO `movie_tpye_mid` VALUES (190, 6);
INSERT INTO `movie_tpye_mid` VALUES (190, 14);
INSERT INTO `movie_tpye_mid` VALUES (191, 9);
INSERT INTO `movie_tpye_mid` VALUES (191, 14);
INSERT INTO `movie_tpye_mid` VALUES (191, 15);
INSERT INTO `movie_tpye_mid` VALUES (194, 3);
INSERT INTO `movie_tpye_mid` VALUES (194, 4);
INSERT INTO `movie_tpye_mid` VALUES (194, 17);
INSERT INTO `movie_tpye_mid` VALUES (195, 3);
INSERT INTO `movie_tpye_mid` VALUES (195, 4);
INSERT INTO `movie_tpye_mid` VALUES (195, 17);
INSERT INTO `movie_tpye_mid` VALUES (196, 3);
INSERT INTO `movie_tpye_mid` VALUES (196, 4);
INSERT INTO `movie_tpye_mid` VALUES (196, 17);
INSERT INTO `movie_tpye_mid` VALUES (197, 3);
INSERT INTO `movie_tpye_mid` VALUES (197, 4);
INSERT INTO `movie_tpye_mid` VALUES (197, 17);
INSERT INTO `movie_tpye_mid` VALUES (198, 3);
INSERT INTO `movie_tpye_mid` VALUES (198, 4);
INSERT INTO `movie_tpye_mid` VALUES (198, 17);
INSERT INTO `movie_tpye_mid` VALUES (199, 3);
INSERT INTO `movie_tpye_mid` VALUES (199, 4);
INSERT INTO `movie_tpye_mid` VALUES (199, 17);
INSERT INTO `movie_tpye_mid` VALUES (200, 3);
INSERT INTO `movie_tpye_mid` VALUES (200, 4);
INSERT INTO `movie_tpye_mid` VALUES (200, 17);
INSERT INTO `movie_tpye_mid` VALUES (201, 3);
INSERT INTO `movie_tpye_mid` VALUES (201, 4);
INSERT INTO `movie_tpye_mid` VALUES (201, 17);
INSERT INTO `movie_tpye_mid` VALUES (203, 5);
INSERT INTO `movie_tpye_mid` VALUES (202, 17);
INSERT INTO `movie_tpye_mid` VALUES (204, 10);
INSERT INTO `movie_tpye_mid` VALUES (204, 18);
INSERT INTO `movie_tpye_mid` VALUES (204, 3);
INSERT INTO `movie_tpye_mid` VALUES (168, 8);
INSERT INTO `movie_tpye_mid` VALUES (168, 9);
INSERT INTO `movie_tpye_mid` VALUES (168, 10);
INSERT INTO `movie_tpye_mid` VALUES (168, 3);
INSERT INTO `movie_tpye_mid` VALUES (166, 3);
INSERT INTO `movie_tpye_mid` VALUES (166, 5);
INSERT INTO `movie_tpye_mid` VALUES (166, 4);
INSERT INTO `movie_tpye_mid` VALUES (173, 9);
INSERT INTO `movie_tpye_mid` VALUES (173, 13);
INSERT INTO `movie_tpye_mid` VALUES (205, 3);
INSERT INTO `movie_tpye_mid` VALUES (205, 5);
INSERT INTO `movie_tpye_mid` VALUES (205, 6);
INSERT INTO `movie_tpye_mid` VALUES (205, 18);
INSERT INTO `movie_tpye_mid` VALUES (170, 6);
INSERT INTO `movie_tpye_mid` VALUES (170, 7);
INSERT INTO `movie_tpye_mid` VALUES (170, 10);
INSERT INTO `movie_tpye_mid` VALUES (170, 3);
INSERT INTO `movie_tpye_mid` VALUES (171, 4);
INSERT INTO `movie_tpye_mid` VALUES (171, 5);
INSERT INTO `movie_tpye_mid` VALUES (171, 8);
INSERT INTO `movie_tpye_mid` VALUES (171, 3);
INSERT INTO `movie_tpye_mid` VALUES (171, 19);
INSERT INTO `movie_tpye_mid` VALUES (172, 3);
INSERT INTO `movie_tpye_mid` VALUES (172, 4);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(0) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_total_discounts_cash` decimal(11, 2) NULL DEFAULT NULL,
  `coupon_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `order_status` int(0) NULL DEFAULT NULL,
  `order_count` int(0) NULL DEFAULT NULL,
  `order_total_initial_cash` decimal(11, 2) NULL DEFAULT NULL,
  `order_unitprice` decimal(10, 2) NULL DEFAULT NULL,
  `order_time` datetime(0) NULL DEFAULT NULL,
  `hall_movie_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, '528e30b131ec4d70b2fe9dc58d71ef96', 400.00, 0, 1, 1, 4, 400.00, 100.00, '2020-07-13 14:52:15', 2);
INSERT INTO `order` VALUES (25, 'd8ef29d5218a4efa955d7f38d9facc66', 71.60, 4, 1, 1, 2, 91.60, 45.80, '2020-07-15 13:51:23', 16);
INSERT INTO `order` VALUES (26, '0e5a2170b1f9488d9898d505d8fb4797', 86.60, 2, 1, 1, 2, 91.60, 45.80, '2020-07-15 18:47:18', 16);
INSERT INTO `order` VALUES (27, '80f714e838e54a808bfcf0513cdd0638', 54.00, NULL, 1, 1, 3, 54.00, 18.00, '2020-07-17 22:05:39', 22);
INSERT INTO `order` VALUES (28, '5d41ea24e14646329a347e8893fbe434', 333.00, NULL, 1, 1, 3, 333.00, 111.00, '2020-07-18 12:55:06', 23);

-- ----------------------------
-- Table structure for order_seat
-- ----------------------------
DROP TABLE IF EXISTS `order_seat`;
CREATE TABLE `order_seat`  (
  `order_id` int(0) NULL DEFAULT NULL,
  `seat_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_seat
-- ----------------------------
INSERT INTO `order_seat` VALUES (2, 1);
INSERT INTO `order_seat` VALUES (2, 2);
INSERT INTO `order_seat` VALUES (19, 170);
INSERT INTO `order_seat` VALUES (19, 171);
INSERT INTO `order_seat` VALUES (20, 174);
INSERT INTO `order_seat` VALUES (20, 175);
INSERT INTO `order_seat` VALUES (20, 176);
INSERT INTO `order_seat` VALUES (20, 177);
INSERT INTO `order_seat` VALUES (21, 178);
INSERT INTO `order_seat` VALUES (22, 179);
INSERT INTO `order_seat` VALUES (22, 180);
INSERT INTO `order_seat` VALUES (22, 181);
INSERT INTO `order_seat` VALUES (23, 182);
INSERT INTO `order_seat` VALUES (23, 183);
INSERT INTO `order_seat` VALUES (24, 184);
INSERT INTO `order_seat` VALUES (25, 185);
INSERT INTO `order_seat` VALUES (25, 186);
INSERT INTO `order_seat` VALUES (26, 187);
INSERT INTO `order_seat` VALUES (26, 188);
INSERT INTO `order_seat` VALUES (27, 189);
INSERT INTO `order_seat` VALUES (27, 190);
INSERT INTO `order_seat` VALUES (27, 191);
INSERT INTO `order_seat` VALUES (28, 192);
INSERT INTO `order_seat` VALUES (28, 193);
INSERT INTO `order_seat` VALUES (28, 194);

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `seat_id` int(0) NOT NULL AUTO_INCREMENT,
  `seat_x` int(0) NULL DEFAULT NULL,
  `seat_y` int(0) NULL DEFAULT NULL,
  `seat_tpye` int(0) NULL DEFAULT NULL,
  `hall_id` int(0) NULL DEFAULT NULL,
  `hall_movie_id` int(0) NULL DEFAULT NULL,
  `seat_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`seat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (1, 0, 0, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (2, 0, 1, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (3, 0, 2, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (4, 0, 3, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (5, 0, 4, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (6, 0, 5, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (7, 0, 6, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (8, 0, 7, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (9, 0, 8, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (10, 19, 0, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (11, 19, 1, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (12, 19, 2, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (13, 19, 3, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (14, 19, 4, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (15, 19, 5, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (16, 19, 6, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (17, 19, 7, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (18, 18, 0, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (19, 18, 1, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (20, 18, 2, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (21, 18, 3, -1, 1, NULL, '10排10位');
INSERT INTO `seat` VALUES (22, 18, 4, -1, 1, 1, '10排10位');
INSERT INTO `seat` VALUES (56, 13, 6, 2, NULL, 1, '10排11位');
INSERT INTO `seat` VALUES (90, 18, 5, -1, 1, 1, '10排12位');
INSERT INTO `seat` VALUES (150, 8, 5, 2, NULL, 9, '第6排第8座');
INSERT INTO `seat` VALUES (151, 9, 5, 2, NULL, 9, '第6排第9座');
INSERT INTO `seat` VALUES (152, 10, 5, 2, NULL, 9, '第6排第10座');
INSERT INTO `seat` VALUES (153, 11, 5, 2, NULL, 9, '第6排第11座');
INSERT INTO `seat` VALUES (154, 14, 2, 2, NULL, 8, '第3排第14座');
INSERT INTO `seat` VALUES (155, 15, 2, 2, NULL, 8, '第3排第15座');
INSERT INTO `seat` VALUES (156, 15, 4, 2, NULL, 8, '第5排第15座');
INSERT INTO `seat` VALUES (157, 13, 5, 2, NULL, 8, '第6排第13座');
INSERT INTO `seat` VALUES (158, 13, 4, 2, NULL, 8, '第5排第13座');
INSERT INTO `seat` VALUES (159, 10, 3, 2, NULL, 13, '第4排第11座');
INSERT INTO `seat` VALUES (160, 11, 3, 2, NULL, 13, '第4排第12座');
INSERT INTO `seat` VALUES (161, 16, 2, 2, NULL, 13, '第3排第17座');
INSERT INTO `seat` VALUES (162, 17, 3, 2, NULL, 13, '第4排第18座');
INSERT INTO `seat` VALUES (163, 16, 3, 2, NULL, 13, '第4排第17座');
INSERT INTO `seat` VALUES (164, 16, 7, 2, NULL, 13, '第8排第17座');
INSERT INTO `seat` VALUES (165, 15, 7, 2, NULL, 13, '第8排第16座');
INSERT INTO `seat` VALUES (166, 5, 4, 2, NULL, 13, '第5排第6座');
INSERT INTO `seat` VALUES (167, 6, 4, 2, NULL, 13, '第5排第7座');
INSERT INTO `seat` VALUES (170, 12, 2, 2, NULL, 14, '第3排第12座');
INSERT INTO `seat` VALUES (171, 13, 3, 2, NULL, 14, '第4排第13座');
INSERT INTO `seat` VALUES (174, 14, 3, 2, NULL, 11, '第4排第15座');
INSERT INTO `seat` VALUES (175, 13, 3, 2, NULL, 11, '第4排第14座');
INSERT INTO `seat` VALUES (176, 12, 3, 2, NULL, 11, '第4排第13座');
INSERT INTO `seat` VALUES (177, 14, 4, 2, NULL, 11, '第5排第15座');
INSERT INTO `seat` VALUES (178, 6, 5, 2, NULL, 11, '第6排第7座');
INSERT INTO `seat` VALUES (179, 13, 1, 2, NULL, 12, '第2排第14座');
INSERT INTO `seat` VALUES (180, 12, 1, 2, NULL, 12, '第2排第13座');
INSERT INTO `seat` VALUES (181, 11, 1, 2, NULL, 12, '第2排第12座');
INSERT INTO `seat` VALUES (182, 13, 5, 2, NULL, 15, '第6排第13座');
INSERT INTO `seat` VALUES (183, 13, 3, 2, NULL, 15, '第4排第13座');
INSERT INTO `seat` VALUES (184, 17, 2, 2, NULL, 15, '第3排第17座');
INSERT INTO `seat` VALUES (185, 13, 4, 2, NULL, 16, '第5排第13座');
INSERT INTO `seat` VALUES (186, 13, 5, 2, NULL, 16, '第6排第13座');
INSERT INTO `seat` VALUES (187, 11, 4, 2, NULL, 16, '第5排第11座');
INSERT INTO `seat` VALUES (188, 10, 4, 2, NULL, 16, '第5排第10座');
INSERT INTO `seat` VALUES (189, 8, 7, 2, NULL, 22, '第8排第8座');
INSERT INTO `seat` VALUES (190, 9, 7, 2, NULL, 22, '第8排第9座');
INSERT INTO `seat` VALUES (191, 10, 7, 2, NULL, 22, '第8排第10座');
INSERT INTO `seat` VALUES (192, 12, 2, 2, NULL, 23, '第3排第12座');
INSERT INTO `seat` VALUES (193, 11, 2, 2, NULL, 23, '第3排第11座');
INSERT INTO `seat` VALUES (194, 10, 2, 2, NULL, 23, '第3排第10座');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_status` int(0) NULL DEFAULT NULL,
  `user_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_birthday` date NULL DEFAULT NULL,
  `user_autograph` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_points` int(0) NULL DEFAULT NULL,
  `user_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '死肥宅', '1', '1', '2286010407@qq.com', 1, '18964032907', '男', '2020-07-01', '我就一死肥宅', 7000, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594642342719&di=673d61c19b383348457de79de510d2d8&imgtype=0&src=http%3A%2F%2F51ttyy.com%2Fwebupload%2Farticle%2Fimage%2F20160706%2F20160706171504_79439.jpg');

-- ----------------------------
-- Table structure for user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon`  (
  `user_coupon_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `coupon_id` int(0) NULL DEFAULT NULL,
  `coupon_status` int(0) NULL DEFAULT NULL,
  `coupon_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`user_coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
INSERT INTO `user_coupon` VALUES (1, 1, 2, 1, '2020-07-15');
INSERT INTO `user_coupon` VALUES (3, 1, 1, 1, '2020-07-16');
INSERT INTO `user_coupon` VALUES (6, 1, 2, 1, '2020-07-19');

SET FOREIGN_KEY_CHECKS = 1;
