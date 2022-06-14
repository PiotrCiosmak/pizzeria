/*
 Navicat Premium Data Transfer

 Source Server         : Lokalna
 Source Server Type    : MariaDB
 Source Server Version : 100608
 Source Host           : localhost:666
 Source Schema         : pizzeria

 Target Server Type    : MariaDB
 Target Server Version : 100608
 File Encoding         : 65001

 Date: 12/06/2022 20:35:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_account`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 'piotrek221', '23f8uh8js8dhf82h', '2022-05-31 11:54:31', 1);
INSERT INTO `accounts` VALUES (2, 'bobikson', 'marloowqheqeqw', '2022-05-31 11:54:26', 3);
INSERT INTO `accounts` VALUES (3, 'marceli', 'eh28h8dh28hd1i2', '2022-05-31 11:54:28', 4);
INSERT INTO `accounts` VALUES (4, 'miki', '3dyusagdyasu7', '2022-05-31 11:53:40', 5);
INSERT INTO `accounts` VALUES (5, 'dabek', 'superhaselko', '2022-06-11 11:47:59', 2);
INSERT INTO `accounts` VALUES (6, 'ania', 'h8f2h8hf28jf', '2022-05-31 11:54:33', 6);
INSERT INTO `accounts` VALUES (7, 'januuusz', 'hif2h9hf92nj2', '2022-05-31 11:54:35', 10);
INSERT INTO `accounts` VALUES (8, 'figkaro', 'karolcia66523uhd2', '2022-05-31 11:55:24', 7);
INSERT INTO `accounts` VALUES (9, 'kowal', 'krow32112ygdu2', '2022-05-31 11:55:22', 8);
INSERT INTO `accounts` VALUES (10, 'rudy102', 'bebzon887u72', '2022-05-31 11:55:20', 9);
INSERT INTO `accounts` VALUES (11, 'latawiec', 'duash8das8d', '2022-05-31 11:53:50', 11);
INSERT INTO `accounts` VALUES (12, 'paralotnia', 'fsjdffs83idhqwidjqi', '2022-05-31 11:55:07', 12);
INSERT INTO `accounts` VALUES (13, 'uczesany', 'dahjdasu231', '2022-04-14 00:25:10', 13);
INSERT INTO `accounts` VALUES (14, 'kozaczek999', 'kozii874iiiiuwqduq', '2022-05-31 11:55:10', 14);
INSERT INTO `accounts` VALUES (15, 'niedzwiadek', 'boczek2222', '2022-04-14 00:25:43', 15);
INSERT INTO `accounts` VALUES (16, 'tadesz', 'h8sahd8ha8da', '2022-05-31 11:53:54', 16);
INSERT INTO `accounts` VALUES (17, 'kosaaa', 'hduhiusah8d', '2022-05-31 11:53:55', 17);
INSERT INTO `accounts` VALUES (18, 'kosakowska', 'ulani887uuu', '2022-04-14 00:26:27', 18);
INSERT INTO `accounts` VALUES (19, 'betoniarka', 'auuuu221qhuduq', '2022-05-31 11:55:14', 19);
INSERT INTO `accounts` VALUES (20, 'areka', 'ihdhsaudh2', '2022-05-31 11:53:57', 20);
INSERT INTO `accounts` VALUES (21, 'wojti', 'ydsauhd3u2', '2022-05-31 11:53:58', 21);
INSERT INTO `accounts` VALUES (22, 'kornii', '2h3uh8fw23', '2022-05-31 11:54:00', 26);
INSERT INTO `accounts` VALUES (23, 'kamildereń', 'kamyczek221', '2022-05-24 20:35:11', 30);
INSERT INTO `accounts` VALUES (24, 'patrykkolba', 'dsadsa77dsa', '2022-05-24 20:52:14', 31);
INSERT INTO `accounts` VALUES (25, 'karolchwieja', 'dsada7datd2', '2022-05-24 20:53:08', 32);
INSERT INTO `accounts` VALUES (28, 'olafrabat', '32u2hf8h8fh2', '2022-05-31 11:54:05', 35);
INSERT INTO `accounts` VALUES (38, 'karolniezielski', 'dasudaus2', '2022-05-24 21:42:44', 45);
INSERT INTO `accounts` VALUES (39, 'piotrparada', 'hf823h82h8f', '2022-05-31 11:54:07', 46);
INSERT INTO `accounts` VALUES (40, 'czarekniedola', 'huf28hf2iudwhuw', '2022-05-31 11:55:16', 47);
INSERT INTO `accounts` VALUES (41, 'karolponiedziałek', 'dausdg6w2', '2022-05-24 21:51:33', 48);
INSERT INTO `accounts` VALUES (45, 'xd', 'DSADSADASDSADAS', '2022-05-31 12:03:01', 22);
INSERT INTO `accounts` VALUES (46, 'karolgąska', 'dnuasdyauh2', '2022-05-31 12:03:15', 54);
INSERT INTO `accounts` VALUES (47, 'karolgąska', 'dnuasdyauh2', '2022-05-31 12:03:23', 55);
INSERT INTO `accounts` VALUES (50, 'janbąk', 'cdhsbfduuw', '2022-06-02 19:05:21', 60);
INSERT INTO `accounts` VALUES (53, 'kamilbąk', 'dwqhdhsa87', '2022-06-02 19:09:39', 66);
INSERT INTO `accounts` VALUES (58, 'rafałbbbbbbbbb', '1dsajuhd8a', '2022-06-02 19:37:35', 81);
INSERT INTO `accounts` VALUES (60, 'ccccbbbbbbbbb', '1dsajuhd8a', '2022-06-02 19:47:27', 83);
INSERT INTO `accounts` VALUES (62, 'kamildostawca1', '1hudusuddwq', '2022-06-03 00:27:58', 85);
INSERT INTO `accounts` VALUES (63, 'piotrciosmak', 'superhaselko123', '2022-06-10 18:12:51', 101);

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id_customer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_customer`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1014 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 2);
INSERT INTO `customers` VALUES (2, 11);
INSERT INTO `customers` VALUES (3, 12);
INSERT INTO `customers` VALUES (4, 13);
INSERT INTO `customers` VALUES (5, 14);
INSERT INTO `customers` VALUES (6, 15);
INSERT INTO `customers` VALUES (7, 16);
INSERT INTO `customers` VALUES (8, 17);
INSERT INTO `customers` VALUES (9, 18);
INSERT INTO `customers` VALUES (10, 19);
INSERT INTO `customers` VALUES (11, 20);
INSERT INTO `customers` VALUES (12, 21);
INSERT INTO `customers` VALUES (14, 29);
INSERT INTO `customers` VALUES (15, 32);
INSERT INTO `customers` VALUES (16, 34);
INSERT INTO `customers` VALUES (17, 35);
INSERT INTO `customers` VALUES (1001, 45);
INSERT INTO `customers` VALUES (1002, 46);
INSERT INTO `customers` VALUES (1005, 54);
INSERT INTO `customers` VALUES (1006, 55);
INSERT INTO `customers` VALUES (1008, 60);
INSERT INTO `customers` VALUES (1009, 66);
INSERT INTO `customers` VALUES (1012, 83);
INSERT INTO `customers` VALUES (1013, 101);

-- ----------------------------
-- Table structure for delivery_adresses
-- ----------------------------
DROP TABLE IF EXISTS `delivery_adresses`;
CREATE TABLE `delivery_adresses`  (
  `id_delivery_adress` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `street` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `house_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apartment_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `post_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deliver_costs` double UNSIGNED NOT NULL DEFAULT 0,
  `id_customer` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_delivery_adress`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  CONSTRAINT `delivery_adresses_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_adresses
-- ----------------------------
INSERT INTO `delivery_adresses` VALUES (1, 'Kamienna', '1', '99', '40-500', 'Warszawa', 0, 1);
INSERT INTO `delivery_adresses` VALUES (2, 'Mogilska', '21A', NULL, '37-512', 'Tarnów', 0, 2);
INSERT INTO `delivery_adresses` VALUES (3, 'Jedwabna', '14', '6', '43-421', 'Jastrząb', 0, 1);
INSERT INTO `delivery_adresses` VALUES (4, 'Matejki', '87', '9', '32-877', 'Kielce', 0, 3);
INSERT INTO `delivery_adresses` VALUES (5, 'Moniuszki', '8', NULL, '27-864', 'Katowice', 0, 4);
INSERT INTO `delivery_adresses` VALUES (6, 'Zalewowa', '10A', NULL, '83-742', 'Kolbuszowa Górna', 0, 5);
INSERT INTO `delivery_adresses` VALUES (7, 'Powodziowa', '9C', '2', '63-002', 'Starachowice', 0, 6);
INSERT INTO `delivery_adresses` VALUES (8, 'Zatokowa', '2', '4', '31-231', 'Gdańsk', 0, 7);
INSERT INTO `delivery_adresses` VALUES (9, 'Bacha', '9', NULL, '63-318', 'Płock', 0, 8);
INSERT INTO `delivery_adresses` VALUES (10, 'Jana Kochanowskiego', '32', NULL, '83-328', 'Szczecin', 0, 9);
INSERT INTO `delivery_adresses` VALUES (11, 'Waldemara Soboty', '99A', '1', '73-312', 'Chorzów', 0, 10);
INSERT INTO `delivery_adresses` VALUES (12, 'Marszałka', '1', '2', '32-043', 'Gliwice', 0, 11);
INSERT INTO `delivery_adresses` VALUES (13, 'Gołoty', '22', NULL, '87-232', 'Piastów', 0, 12);
INSERT INTO `delivery_adresses` VALUES (17, 'Broniewskiego', '2C', '', '39-400', 'Tarnobrzeg', 0, 1);
INSERT INTO `delivery_adresses` VALUES (18, 'Kamienna', '11', NULL, '50-344', 'Kraków', 0, 1);
INSERT INTO `delivery_adresses` VALUES (19, 'Długa', '18', NULL, '50-344', 'Kraków', 0, 2);

-- ----------------------------
-- Table structure for delivery_persons
-- ----------------------------
DROP TABLE IF EXISTS `delivery_persons`;
CREATE TABLE `delivery_persons`  (
  `id_delivery_person` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_vehicle_type` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_delivery_person`) USING BTREE,
  INDEX `id_vehicle_type`(`id_vehicle_type`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `delivery_persons_ibfk_1` FOREIGN KEY (`id_vehicle_type`) REFERENCES `vehicles_types` (`id_vehicle_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `delivery_persons_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_persons
-- ----------------------------
INSERT INTO `delivery_persons` VALUES (1, 3, 8);
INSERT INTO `delivery_persons` VALUES (2, 4, 7);
INSERT INTO `delivery_persons` VALUES (3, 2, 6);
INSERT INTO `delivery_persons` VALUES (4, 3, 9);
INSERT INTO `delivery_persons` VALUES (6, 3, 48);
INSERT INTO `delivery_persons` VALUES (8, 2, 85);

-- ----------------------------
-- Table structure for doughs
-- ----------------------------
DROP TABLE IF EXISTS `doughs`;
CREATE TABLE `doughs`  (
  `id_doughs` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dough` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id_doughs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doughs
-- ----------------------------
INSERT INTO `doughs` VALUES (1, 'lekkie i chrupiące', 1.99);
INSERT INTO `doughs` VALUES (2, 'puszyste', 1.99);
INSERT INTO `doughs` VALUES (3, 'z serem w brzegach', 6.99);
INSERT INTO `doughs` VALUES (4, 'hot-dog', 8.99);

-- ----------------------------
-- Table structure for drinks
-- ----------------------------
DROP TABLE IF EXISTS `drinks`;
CREATE TABLE `drinks`  (
  `id_drink` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `drink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `capacity` enum('0.2','0.3','0.33','0.5','0.75','0.85','1','1.5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.5',
  `is_sugar_free` tinyint(1) NOT NULL DEFAULT 0,
  `is_alcoholic` tinyint(1) NOT NULL DEFAULT 0,
  `price` double UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_container` int(10) UNSIGNED NOT NULL,
  `amount` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_drink`) USING BTREE,
  INDEX `id_type`(`id_type`) USING BTREE,
  INDEX `id_container`(`id_container`) USING BTREE,
  CONSTRAINT `drinks_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `drinks_types` (`id_type`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `drinks_ibfk_2` FOREIGN KEY (`id_container`) REFERENCES `drinks_containers` (`id_container`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drinks
-- ----------------------------
INSERT INTO `drinks` VALUES (1, 'lemoniada', '0.3', 0, 0, 8.99, 3, 1, 100);
INSERT INTO `drinks` VALUES (2, 'pepsi max', '0.33', 1, 0, 6.99, 2, 2, 100);
INSERT INTO `drinks` VALUES (3, 'pepsi', '0.33', 0, 0, 6.99, 2, 2, 96);
INSERT INTO `drinks` VALUES (4, 'mirinda', '0.33', 0, 0, 6.99, 2, 2, 100);
INSERT INTO `drinks` VALUES (5, '7up', '0.33', 0, 0, 6.99, 2, 2, 100);
INSERT INTO `drinks` VALUES (6, 'pepsi max', '0.85', 1, 0, 9.99, 2, 1, 100);
INSERT INTO `drinks` VALUES (7, 'pepsi', '0.85', 0, 0, 9.99, 2, 1, 100);
INSERT INTO `drinks` VALUES (8, 'mirinda', '0.85', 0, 0, 9.99, 2, 1, 100);
INSERT INTO `drinks` VALUES (9, '7up', '0.85', 0, 0, 9.99, 2, 1, 100);
INSERT INTO `drinks` VALUES (10, 'sok pomarańczowy', '1', 0, 0, 9.99, 3, 1, 100);
INSERT INTO `drinks` VALUES (11, 'sok jabłkowy', '1', 0, 0, 9.99, 3, 1, 100);
INSERT INTO `drinks` VALUES (12, 'woda niegazowna', '0.5', 1, 0, 6.99, 3, 1, 100);
INSERT INTO `drinks` VALUES (13, 'woda gazowana', '0.5', 1, 0, 6.99, 3, 1, 100);
INSERT INTO `drinks` VALUES (14, 'lech free 0,0%', '0.5', 0, 0, 8.99, 2, 2, 100);
INSERT INTO `drinks` VALUES (15, 'lech free 0,0% chmiele cytrusowe', '0.5', 0, 0, 8.99, 2, 2, 100);
INSERT INTO `drinks` VALUES (16, 'warka 5,2%', '0.5', 0, 1, 6.99, 1, 2, 100);
INSERT INTO `drinks` VALUES (17, 'woda niegazowana', '0.2', 1, 0, 6.99, 3, 3, 100);

-- ----------------------------
-- Table structure for drinks_containers
-- ----------------------------
DROP TABLE IF EXISTS `drinks_containers`;
CREATE TABLE `drinks_containers`  (
  `id_container` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `container` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_container`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drinks_containers
-- ----------------------------
INSERT INTO `drinks_containers` VALUES (1, 'plastikowa butelka');
INSERT INTO `drinks_containers` VALUES (2, 'puszka');
INSERT INTO `drinks_containers` VALUES (3, 'szklana butelka');

-- ----------------------------
-- Table structure for drinks_types
-- ----------------------------
DROP TABLE IF EXISTS `drinks_types`;
CREATE TABLE `drinks_types`  (
  `id_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drinks_types
-- ----------------------------
INSERT INTO `drinks_types` VALUES (1, 'piwo');
INSERT INTO `drinks_types` VALUES (2, 'napój');
INSERT INTO `drinks_types` VALUES (3, 'niegazowany');
INSERT INTO `drinks_types` VALUES (4, 'wino');
INSERT INTO `drinks_types` VALUES (5, 'szampan');
INSERT INTO `drinks_types` VALUES (6, 'wódka');
INSERT INTO `drinks_types` VALUES (7, 'bimber');
INSERT INTO `drinks_types` VALUES (8, 'whisky');
INSERT INTO `drinks_types` VALUES (9, 'rum');
INSERT INTO `drinks_types` VALUES (10, 'brandy');
INSERT INTO `drinks_types` VALUES (11, 'tequila');

-- ----------------------------
-- Table structure for id_review_generator
-- ----------------------------
DROP TABLE IF EXISTS `id_review_generator`;
CREATE TABLE `id_review_generator`  (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of id_review_generator
-- ----------------------------
INSERT INTO `id_review_generator` VALUES (1100, 1, 9223372036854775806, 100, 1, 1000, 0, 0);

-- ----------------------------
-- Table structure for id_user_generator
-- ----------------------------
DROP TABLE IF EXISTS `id_user_generator`;
CREATE TABLE `id_user_generator`  (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of id_user_generator
-- ----------------------------
INSERT INTO `id_user_generator` VALUES (1100, 1, 9223372036854775806, 100, 1, 1000, 0, 0);

-- ----------------------------
-- Table structure for ingredient_types
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_types`;
CREATE TABLE `ingredient_types`  (
  `id_ingredient_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ingredient_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingredient_types
-- ----------------------------
INSERT INTO `ingredient_types` VALUES (1, 'mieso');
INSERT INTO `ingredient_types` VALUES (2, 'wazywo');
INSERT INTO `ingredient_types` VALUES (3, 'owoc');
INSERT INTO `ingredient_types` VALUES (4, 'nabiał');
INSERT INTO `ingredient_types` VALUES (5, 'ryba');
INSERT INTO `ingredient_types` VALUES (6, 'sos');
INSERT INTO `ingredient_types` VALUES (7, 'wędlina');
INSERT INTO `ingredient_types` VALUES (8, 'przyprawa');
INSERT INTO `ingredient_types` VALUES (9, 'owoce morza');
INSERT INTO `ingredient_types` VALUES (10, 'grzyb');
INSERT INTO `ingredient_types` VALUES (11, 'chipsy');
INSERT INTO `ingredient_types` VALUES (12, 'roślina');
INSERT INTO `ingredient_types` VALUES (13, 'słodycz');

-- ----------------------------
-- Table structure for ingredients
-- ----------------------------
DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients`  (
  `id_ingredient` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ingredient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_hot` tinyint(1) NULL DEFAULT 0,
  `price` double UNSIGNED NOT NULL,
  `image` blob NULL DEFAULT NULL,
  `amount` int(10) NULL DEFAULT NULL,
  `id_ingredient_type` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ingredient`) USING BTREE,
  INDEX `id_ingredient_type`(`id_ingredient_type`) USING BTREE,
  CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`id_ingredient_type`) REFERENCES `ingredient_types` (`id_ingredient_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingredients
-- ----------------------------
INSERT INTO `ingredients` VALUES (1, 'sos pomidorowy', 0, 1, NULL, 68, 6);
INSERT INTO `ingredients` VALUES (2, 'ser mozzarella', 0, 3, NULL, 69, 4);
INSERT INTO `ingredients` VALUES (3, 'salami', 0, 4, NULL, 100, 7);
INSERT INTO `ingredients` VALUES (4, 'salami peperoni', 1, 4, NULL, 96, 7);
INSERT INTO `ingredients` VALUES (5, 'papryka chili', 1, 2, NULL, 98, 2);
INSERT INTO `ingredients` VALUES (6, 'oliwki czarne', 0, 2, NULL, 98, 2);
INSERT INTO `ingredients` VALUES (7, 'ostre przyprawy', 1, 0, NULL, 98, 8);
INSERT INTO `ingredients` VALUES (8, 'cebula', 0, 2, NULL, 98, 2);
INSERT INTO `ingredients` VALUES (9, 'ananas', 0, 3, NULL, 100, 3);
INSERT INTO `ingredients` VALUES (10, 'szynka', 0, 4, NULL, 100, 7);
INSERT INTO `ingredients` VALUES (11, 'ser feta', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (12, 'krewetki', 0, 8, NULL, 100, 9);
INSERT INTO `ingredients` VALUES (13, 'pieczarki', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (14, 'papryka', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (15, 'parmezan', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (16, 'boczek', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (17, 'kukurydza', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (18, 'ogórek kiszony', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (19, 'ser mozzarella podwójny', 0, 6, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (20, 'kabanos', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (21, 'czosnek', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (22, 'groszek', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (23, 'fasolka szparagowa', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (24, 'kurczak', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (25, 'wołowina gyros', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (26, 'tuńczyk', 0, 5, NULL, 100, 5);
INSERT INTO `ingredients` VALUES (27, 'grillowany bakłażan', 0, 3, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (28, 'suszone pomidory w oleju', 0, 3, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (29, 'natka pietruszki', 0, 1, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (30, 'wołowina', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (31, 'fasola czerwona', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (32, 'małże', 0, 8, NULL, 100, 9);
INSERT INTO `ingredients` VALUES (33, 'oliwki zielone', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (34, 'borowiki', 0, 4, NULL, 100, 10);
INSERT INTO `ingredients` VALUES (35, 'podgrzybki', 0, 4, NULL, 100, 10);
INSERT INTO `ingredients` VALUES (36, 'sos śmietanowy', 0, 1, NULL, 100, 6);
INSERT INTO `ingredients` VALUES (37, 'wędzony łosoś', 0, 6, NULL, 100, 5);
INSERT INTO `ingredients` VALUES (38, 'cytryna', 0, 3, NULL, 100, 3);
INSERT INTO `ingredients` VALUES (39, 'szpinak', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (40, 'jajko', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (42, 'chipsy paprykowe', 0, 5, NULL, 100, 11);
INSERT INTO `ingredients` VALUES (43, 'mieszanka ważyw chińskich', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (44, 'kurczak curry', 0, 7, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (46, 'przyprawy orientalne', 0, 0, NULL, 100, 8);
INSERT INTO `ingredients` VALUES (47, 'brzoskwinia', 0, 3, NULL, 100, 3);
INSERT INTO `ingredients` VALUES (48, 'mięso mielone', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (49, 'podwójny sos pomidorowy', 0, 2, NULL, 100, 6);
INSERT INTO `ingredients` VALUES (50, 'kiełbasa', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (51, 'pomidory', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (52, 'filety anchois', 0, 5, NULL, 100, 5);
INSERT INTO `ingredients` VALUES (53, 'kapary', 0, 2, NULL, 100, 12);
INSERT INTO `ingredients` VALUES (54, 'ser pleśniowy', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (55, 'gouda', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (56, 'camemert', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (57, 'pieczone ziemniaki', 0, 3, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (58, 'prażona cebula', 0, 3, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (59, 'jajka sadzone', 0, 4, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (60, 'szynka dojrzewająca', 0, 4, NULL, 100, 7);
INSERT INTO `ingredients` VALUES (61, 'rukola', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (62, 'jalapeno', 1, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (63, 'zielony pieprz marynowany', 0, 0, NULL, 100, 8);
INSERT INTO `ingredients` VALUES (64, 'mini kolby kukurydzny', 0, 3, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (65, 'roztrzepane jajka', 0, 4, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (66, 'filet wędzony z indyka', 0, 6, NULL, 100, 1);
INSERT INTO `ingredients` VALUES (67, 'brokuły', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (68, 'paluszki krabowe', 0, 8, NULL, 100, 9);
INSERT INTO `ingredients` VALUES (69, 'seler naciowy', 0, 2, NULL, 100, 2);
INSERT INTO `ingredients` VALUES (70, 'oregano', 0, 0, NULL, 100, 8);
INSERT INTO `ingredients` VALUES (71, 'żurawina', 0, 3, NULL, 100, 3);
INSERT INTO `ingredients` VALUES (72, 'ser wędzony', 0, 3, NULL, 100, 4);
INSERT INTO `ingredients` VALUES (73, 'tymianek', 0, 0, NULL, 100, 8);
INSERT INTO `ingredients` VALUES (74, 'majeranek', 0, 0, '', 100, 8);

-- ----------------------------
-- Table structure for invoice_positions
-- ----------------------------
DROP TABLE IF EXISTS `invoice_positions`;
CREATE TABLE `invoice_positions`  (
  `id_position` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gross_price` decimal(10, 2) UNSIGNED NULL DEFAULT NULL,
  `net_price` decimal(10, 2) NULL DEFAULT NULL,
  `VAT(%)` int(10) NULL DEFAULT 23,
  PRIMARY KEY (`id_position`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_positions
-- ----------------------------
INSERT INTO `invoice_positions` VALUES (1, 112.94, 91.82, 23);
INSERT INTO `invoice_positions` VALUES (2, 60.00, 48.78, 23);

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id_invoice` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_order` int(11) UNSIGNED NOT NULL,
  `NIP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `invoice_nr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_of_issue` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_position` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_invoice`) USING BTREE,
  INDEX `fk_order`(`id_order`) USING BTREE,
  INDEX `fk_position`(`id_position`) USING BTREE,
  CONSTRAINT `fk_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_position` FOREIGN KEY (`id_position`) REFERENCES `invoice_positions` (`id_position`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES (1, 6, NULL, '1/2022', '2022-06-10 17:48:57', 1);
INSERT INTO `invoices` VALUES (2, 7, '1234567890', '2/2022', '2022-06-10 17:50:28', 2);

-- ----------------------------
-- Table structure for logs_info
-- ----------------------------
DROP TABLE IF EXISTS `logs_info`;
CREATE TABLE `logs_info`  (
  `id_log` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `IP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `login_time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_log`, `login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic PARTITION BY RANGE (year(`login_time`))
PARTITIONS 3
(PARTITION `do_2022_06` VALUES LESS THAN (738702) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `od_2022_07_do_2022_12_31` VALUES LESS THAN (738886) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `wieksze_od_2022` VALUES LESS THAN (MAXVALUE) ENGINE = InnoDB) MAX_ROWS = 0 MIN_ROWS = 0 )
;

-- ----------------------------
-- Records of logs_info
-- ----------------------------
INSERT INTO `logs_info` VALUES (1, 1, '192.168.1.1', '2022-06-10 11:16:34');
INSERT INTO `logs_info` VALUES (2, 1, '192.168.1.1', '2022-06-10 11:16:36');
INSERT INTO `logs_info` VALUES (5, 1, '192.168.1.1', '2022-06-10 11:16:43');
INSERT INTO `logs_info` VALUES (6, 1, '192.168.1.1', '2022-06-10 11:17:20');

-- ----------------------------
-- Table structure for managers
-- ----------------------------
DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers`  (
  `id_managers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_managers`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES (8, 1);
INSERT INTO `managers` VALUES (2, 3);
INSERT INTO `managers` VALUES (3, 4);
INSERT INTO `managers` VALUES (4, 5);
INSERT INTO `managers` VALUES (6, 25);

-- ----------------------------
-- Table structure for ordered_drinks
-- ----------------------------
DROP TABLE IF EXISTS `ordered_drinks`;
CREATE TABLE `ordered_drinks`  (
  `id_ordered_drink` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `id_drink` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ordered_drink`) USING BTREE,
  INDEX `id_drink`(`id_drink`) USING BTREE,
  INDEX `id_order`(`id_order`) USING BTREE,
  CONSTRAINT `ordered_drinks_ibfk_1` FOREIGN KEY (`id_drink`) REFERENCES `drinks` (`id_drink`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ordered_drinks_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordered_drinks
-- ----------------------------
INSERT INTO `ordered_drinks` VALUES (8, 1, 6.99, 2, 6);
INSERT INTO `ordered_drinks` VALUES (9, 2, 17.98, 1, 6);

-- ----------------------------
-- Table structure for ordered_pizzas
-- ----------------------------
DROP TABLE IF EXISTS `ordered_pizzas`;
CREATE TABLE `ordered_pizzas`  (
  `id_ordered_pizza` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `id_pizza` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ordered_pizza`) USING BTREE,
  INDEX `id_pizza`(`id_pizza`) USING BTREE,
  INDEX `id_order`(`id_order`) USING BTREE,
  CONSTRAINT `ordered_pizzas_ibfk_1` FOREIGN KEY (`id_pizza`) REFERENCES `pizza` (`id_pizza`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ordered_pizzas_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordered_pizzas
-- ----------------------------
INSERT INTO `ordered_pizzas` VALUES (10, 3, 0, 5, 6);
INSERT INTO `ordered_pizzas` VALUES (11, 3, 36, 19, 6);
INSERT INTO `ordered_pizzas` VALUES (14, 2, 35, 3, 7);

-- ----------------------------
-- Table structure for ordered_sauces
-- ----------------------------
DROP TABLE IF EXISTS `ordered_sauces`;
CREATE TABLE `ordered_sauces`  (
  `id_ordered_sauce` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `id_sauce` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ordered_sauce`) USING BTREE,
  INDEX `id_sauce`(`id_sauce`) USING BTREE,
  INDEX `id_order`(`id_order`) USING BTREE,
  CONSTRAINT `ordered_sauces_ibfk_1` FOREIGN KEY (`id_sauce`) REFERENCES `sauces` (`id_sauce`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ordered_sauces_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordered_sauces
-- ----------------------------
INSERT INTO `ordered_sauces` VALUES (2, 5, 12.5, 6, 6);
INSERT INTO `ordered_sauces` VALUES (3, 6, 14.94, 6, 6);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_type` enum('gotówka przy odbiorze','karta płatnicza','blik','revolt','paypal','dotpay') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'zmienić z enum na osobną tabele z możliwościami płatności',
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('przyjęte','w trakcie przygotowywania','oczekiwanie na kuriera','w doręczeniu') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'przyjęte',
  `expected_delivery_time` datetime NOT NULL,
  `delay` time NOT NULL DEFAULT '00:00:00',
  `delivery_time` datetime NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_price` double UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_delivery_person` int(10) UNSIGNED NOT NULL,
  `id_delivery_adresses` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id_order`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  INDEX `id_delivery_person`(`id_delivery_person`) USING BTREE,
  INDEX `id_delivery_adresses`(`id_delivery_adresses`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_delivery_person`) REFERENCES `delivery_persons` (`id_delivery_person`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`id_delivery_adresses`) REFERENCES `delivery_adresses` (`id_delivery_adress`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (6, 'gotówka przy odbiorze', '2022-06-04 01:44:56', 'oczekiwanie na kuriera', '2022-06-09 01:24:35', '00:00:00', NULL, 'Szybciej!', 112.94, 1, 1, 1);
INSERT INTO `orders` VALUES (7, 'gotówka przy odbiorze', '2022-06-10 09:31:56', 'przyjęte', '2022-06-10 10:28:29', '00:00:00', NULL, 'Szybciej!', 60, 1, 1, 1);
INSERT INTO `orders` VALUES (8, 'blik', '2022-06-10 10:04:55', 'w doręczeniu', '2022-06-10 11:04:32', '00:00:00', NULL, 'Jadę!', 100, 3, 2, 2);

-- ----------------------------
-- Table structure for pizza
-- ----------------------------
DROP TABLE IF EXISTS `pizza`;
CREATE TABLE `pizza`  (
  `id_pizza` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pizza` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_dough` int(10) UNSIGNED NOT NULL,
  `id_size` int(10) UNSIGNED NOT NULL,
  `final_price` double UNSIGNED NOT NULL COMMENT 'automatycznie obliczana jako suma wszystkich cen składowych',
  PRIMARY KEY (`id_pizza`) USING BTREE,
  INDEX `id_dough`(`id_dough`) USING BTREE,
  INDEX `pizza_ibfk_2`(`id_size`) USING BTREE,
  FULLTEXT INDEX `pizza`(`pizza`),
  CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`id_dough`) REFERENCES `doughs` (`id_doughs`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pizza_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`id_size`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pizza
-- ----------------------------
INSERT INTO `pizza` VALUES (1, 'margarita', 2, 2, 0);
INSERT INTO `pizza` VALUES (2, 'salami', 1, 1, 0);
INSERT INTO `pizza` VALUES (3, 'etna', 1, 1, 0);
INSERT INTO `pizza` VALUES (4, 'hawajska', 1, 1, 0);
INSERT INTO `pizza` VALUES (5, 'paradsio', 1, 1, 0);
INSERT INTO `pizza` VALUES (6, 'artful', 1, 1, 0);
INSERT INTO `pizza` VALUES (7, 'tertio', 1, 1, 0);
INSERT INTO `pizza` VALUES (8, 'te quiero', 1, 1, 0);
INSERT INTO `pizza` VALUES (9, 'wegetariańska', 1, 1, 0);
INSERT INTO `pizza` VALUES (10, 'mamma lucia', 1, 1, 0);
INSERT INTO `pizza` VALUES (11, 'gyros', 1, 1, 0);
INSERT INTO `pizza` VALUES (12, 'chłopska', 1, 1, 0);
INSERT INTO `pizza` VALUES (13, 'con tonno', 1, 1, 0);
INSERT INTO `pizza` VALUES (14, 'rzymska', 1, 1, 0);
INSERT INTO `pizza` VALUES (15, 'tomaso', 1, 1, 0);
INSERT INTO `pizza` VALUES (16, 'melanzana', 1, 1, 0);
INSERT INTO `pizza` VALUES (17, 'sułtan', 1, 1, 0);
INSERT INTO `pizza` VALUES (18, 'giuseppe', 1, 1, 0);
INSERT INTO `pizza` VALUES (19, 'oceania', 1, 1, 12);
INSERT INTO `pizza` VALUES (20, 'foggia', 1, 1, 0);
INSERT INTO `pizza` VALUES (21, 'funghi', 1, 1, 0);
INSERT INTO `pizza` VALUES (22, 'al salmone', 1, 1, 0);
INSERT INTO `pizza` VALUES (23, 'atena', 1, 1, 0);
INSERT INTO `pizza` VALUES (24, 'texana', 1, 1, 0);
INSERT INTO `pizza` VALUES (25, 'orient', 1, 1, 0);
INSERT INTO `pizza` VALUES (26, 'agnese', 1, 1, 0);
INSERT INTO `pizza` VALUES (27, 'bolognese', 1, 1, 0);
INSERT INTO `pizza` VALUES (28, 'studencka', 1, 1, 0);
INSERT INTO `pizza` VALUES (29, 'tunezyjska', 1, 1, 0);
INSERT INTO `pizza` VALUES (30, 'farmerska', 1, 1, 0);
INSERT INTO `pizza` VALUES (31, 'americana', 1, 1, 0);
INSERT INTO `pizza` VALUES (32, 'ria', 1, 1, 0);
INSERT INTO `pizza` VALUES (33, 'cztery sery', 1, 1, 0);
INSERT INTO `pizza` VALUES (34, 'patata', 1, 1, 0);
INSERT INTO `pizza` VALUES (35, 'maglia', 1, 1, 0);
INSERT INTO `pizza` VALUES (36, 'rukola', 1, 1, 0);
INSERT INTO `pizza` VALUES (37, 'vesuvio', 1, 1, 0);
INSERT INTO `pizza` VALUES (38, 'lorin', 1, 1, 0);
INSERT INTO `pizza` VALUES (39, 'broccoli', 1, 1, 0);
INSERT INTO `pizza` VALUES (40, 'povera', 1, 1, 0);
INSERT INTO `pizza` VALUES (41, 'di casa', 1, 1, 0);
INSERT INTO `pizza` VALUES (42, 'hot chicken', 1, 1, 0);
INSERT INTO `pizza` VALUES (43, 'bruno', 1, 1, 0);
INSERT INTO `pizza` VALUES (44, 'góralska', 1, 1, 0);
INSERT INTO `pizza` VALUES (45, 'ricca', 1, 1, 0);
INSERT INTO `pizza` VALUES (46, 'rustica', 1, 1, 0);
INSERT INTO `pizza` VALUES (51, 'tester', 1, 1, 0);
INSERT INTO `pizza` VALUES (52, 'chicken', 1, 1, 0);
INSERT INTO `pizza` VALUES (54, 'prosciutto', 1, 1, 0);
INSERT INTO `pizza` VALUES (55, 'spicy chicken', 3, 3, 0);

-- ----------------------------
-- Table structure for pizzas_ingredients
-- ----------------------------
DROP TABLE IF EXISTS `pizzas_ingredients`;
CREATE TABLE `pizzas_ingredients`  (
  `id_pizza` int(10) UNSIGNED NOT NULL,
  `id_ingredient` int(10) UNSIGNED NOT NULL,
  INDEX `id_pizza`(`id_pizza`) USING BTREE,
  INDEX `id_ingredient`(`id_ingredient`) USING BTREE,
  CONSTRAINT `pizzas_ingredients_ibfk_1` FOREIGN KEY (`id_pizza`) REFERENCES `pizza` (`id_pizza`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pizzas_ingredients_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredients` (`id_ingredient`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pizzas_ingredients
-- ----------------------------
INSERT INTO `pizzas_ingredients` VALUES (1, 1);
INSERT INTO `pizzas_ingredients` VALUES (1, 2);
INSERT INTO `pizzas_ingredients` VALUES (2, 1);
INSERT INTO `pizzas_ingredients` VALUES (2, 2);
INSERT INTO `pizzas_ingredients` VALUES (2, 3);
INSERT INTO `pizzas_ingredients` VALUES (3, 4);
INSERT INTO `pizzas_ingredients` VALUES (3, 5);
INSERT INTO `pizzas_ingredients` VALUES (3, 6);
INSERT INTO `pizzas_ingredients` VALUES (3, 8);
INSERT INTO `pizzas_ingredients` VALUES (3, 7);
INSERT INTO `pizzas_ingredients` VALUES (3, 1);
INSERT INTO `pizzas_ingredients` VALUES (3, 2);
INSERT INTO `pizzas_ingredients` VALUES (4, 10);
INSERT INTO `pizzas_ingredients` VALUES (4, 9);
INSERT INTO `pizzas_ingredients` VALUES (4, 1);
INSERT INTO `pizzas_ingredients` VALUES (4, 2);
INSERT INTO `pizzas_ingredients` VALUES (5, 10);
INSERT INTO `pizzas_ingredients` VALUES (5, 4);
INSERT INTO `pizzas_ingredients` VALUES (5, 11);
INSERT INTO `pizzas_ingredients` VALUES (5, 6);
INSERT INTO `pizzas_ingredients` VALUES (5, 1);
INSERT INTO `pizzas_ingredients` VALUES (5, 25);
INSERT INTO `pizzas_ingredients` VALUES (4, 9);
INSERT INTO `pizzas_ingredients` VALUES (19, 6);

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id_review` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `score` enum('1','1.5','2','2.5','3','3.5','4','4.5','5') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_review`) USING BTREE,
  INDEX `id_order`(`id_order`) USING BTREE,
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES (24, '2022-06-10 09:35:50', 'Super pizza!', '5', 7);
INSERT INTO `reviews` VALUES (29, '2022-06-10 09:41:49', 'Elegancka pizza', '3', 7);
INSERT INTO `reviews` VALUES (30, '2022-06-10 09:42:49', 'Średnia hawajska dla każdego!', '2.5', 7);
INSERT INTO `reviews` VALUES (32, '2022-06-10 10:00:24', 'Niesmaczne :(', '1', 7);
INSERT INTO `reviews` VALUES (33, '2022-06-10 10:06:03', 'Świetne', '4.5', 8);
INSERT INTO `reviews` VALUES (35, '2022-06-10 10:08:05', 'Średnia', '2', 8);

-- ----------------------------
-- Table structure for sauces
-- ----------------------------
DROP TABLE IF EXISTS `sauces`;
CREATE TABLE `sauces`  (
  `id_sauce` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sauce` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `amount` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sauce`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sauces
-- ----------------------------
INSERT INTO `sauces` VALUES (1, 'pomidorowy', 2.49, 100);
INSERT INTO `sauces` VALUES (2, 'czosnkowy', 2.49, 100);
INSERT INTO `sauces` VALUES (3, 'meksykański', 2.49, 100);
INSERT INTO `sauces` VALUES (4, 'słodko kwaśny', 2.49, 100);
INSERT INTO `sauces` VALUES (5, 'tabasco', 3.99, 100);
INSERT INTO `sauces` VALUES (6, 'pomidorowy z ziołami', 2.49, 100);
INSERT INTO `sauces` VALUES (7, 'bazyliowy', 3.99, 100);
INSERT INTO `sauces` VALUES (8, 'bbq', 2.49, 100);
INSERT INTO `sauces` VALUES (9, 'wściekły pies', 2.49, 100);
INSERT INTO `sauces` VALUES (10, 'słodkie chilli', 2.99, 100);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id_session` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `browser_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_event` datetime NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `login_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_session`) USING BTREE,
  INDEX `fk_user`(`id_user`) USING BTREE,
  CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES (1, 1, 1, '192.168.1.1', 'Firefox', '2022-06-10 17:44:55', '2022-06-10 17:44:53');
INSERT INTO `sessions` VALUES (2, 2, 0, '192.168.1.20', 'Chrome', '2022-06-10 16:48:52', '2022-06-10 16:45:43');

-- ----------------------------
-- Table structure for sizes
-- ----------------------------
DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes`  (
  `id_size` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `diameter` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id_size`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sizes
-- ----------------------------
INSERT INTO `sizes` VALUES (1, 19, 9);
INSERT INTO `sizes` VALUES (2, 28, 13);
INSERT INTO `sizes` VALUES (3, 32, 16);
INSERT INTO `sizes` VALUES (4, 45, 24);
INSERT INTO `sizes` VALUES (5, 12, 6);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '48',
  `sex` enum('mężczyzna','kobieta') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Piotr', 'Ciosmak', NULL, '000-000-123', '', 'kobieta');
INSERT INTO `users` VALUES (2, 'Kamil', 'Dąbek', NULL, '000-000-000', '', 'mężczyzna');
INSERT INTO `users` VALUES (3, 'Igor', 'Bobek', NULL, '632-849-361', '', 'mężczyzna');
INSERT INTO `users` VALUES (4, 'Marcel', 'Czurczak', 'marceli223@gmail.com', '687-921-314', '', 'mężczyzna');
INSERT INTO `users` VALUES (5, 'Mikołaj', 'Dobisz', NULL, '243-242-374', '', 'mężczyzna');
INSERT INTO `users` VALUES (6, 'Anna', 'Bolec', NULL, '753-127-264', '', 'kobieta');
INSERT INTO `users` VALUES (7, 'Karolina', 'Figala', NULL, '726-537-243', '', 'kobieta');
INSERT INTO `users` VALUES (8, 'Jan', 'Kowalski', 'jankowalski2000@gmail.com', '463-245-325', '', 'mężczyzna');
INSERT INTO `users` VALUES (9, 'Kacper', 'Solarski', 'kapi21@onet.pl', '672-642-483', '', 'mężczyzna');
INSERT INTO `users` VALUES (10, 'Janusz', 'Wąs', NULL, '783-246-342', '', 'mężczyzna');
INSERT INTO `users` VALUES (11, 'Janina', 'Bąk', NULL, '823-987-324', '', 'kobieta');
INSERT INTO `users` VALUES (12, 'Olga', 'Brzoza', NULL, '791-365-843', '', 'kobieta');
INSERT INTO `users` VALUES (13, 'Marcin', 'Wczesny', NULL, '987-321-754', '', 'mężczyzna');
INSERT INTO `users` VALUES (14, 'Michał', 'Kozak', NULL, '753-874-362', '', 'mężczyzna');
INSERT INTO `users` VALUES (15, 'Bartosz', 'Niedźwiedź', NULL, '764-382-645', '', 'mężczyzna');
INSERT INTO `users` VALUES (16, 'Tadeusz', 'Śmiały', NULL, '654-361-237', '', 'mężczyzna');
INSERT INTO `users` VALUES (17, 'Olga', 'Kos', NULL, '864-632-462', '', 'kobieta');
INSERT INTO `users` VALUES (18, 'Mariola', 'Kosowska', NULL, '874-236-482', '', 'kobieta');
INSERT INTO `users` VALUES (19, 'Zofia', 'Kwarc', NULL, '328-473-274', '', 'kobieta');
INSERT INTO `users` VALUES (20, 'Arkadiusz', 'Kędra', NULL, '784-236-426', '', 'mężczyzna');
INSERT INTO `users` VALUES (21, 'Wojciech', 'Kłos', NULL, '783-287-422', '', 'mężczyzna');
INSERT INTO `users` VALUES (22, 'Karol', 'Chwieja', 'karolek@gmail.com', '546-384-527', '', 'mężczyzna');
INSERT INTO `users` VALUES (23, 'Kazimierz', 'Bolec', 'bolcus2203@gmail.com', '678-326-432', '', 'mężczyzna');
INSERT INTO `users` VALUES (24, 'Stanisław', 'Marzec', 'marcula2313@onet.pl', '267-493-621', '', 'mężczyzna');
INSERT INTO `users` VALUES (25, 'Jan', 'Bąk', 'root@wp.pl', '776-428-342', '', 'mężczyzna');
INSERT INTO `users` VALUES (26, 'Kornel', 'Januszek', 'root122@vp.pl', '853-821-743', '', 'mężczyzna');
INSERT INTO `users` VALUES (27, 'Kamila', 'Poręcz', 'kamisia@vp.pl', '754-732-831', '', 'kobieta');
INSERT INTO `users` VALUES (28, 'Piotr', 'Kordon', 'piotr@kordo.pl', '765-437-282', '', 'mężczyzna');
INSERT INTO `users` VALUES (29, 'Kamil', 'Czepek', 'kamilo223@wp.pl', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (30, 'Kamil', 'Dereń', 'kamil.deren.2001@gmail.com', '674-382-912', '', 'mężczyzna');
INSERT INTO `users` VALUES (31, 'Patryk', 'Kolba', 'patryczekxd@gmail.com', '876-547-382', '', 'mężczyzna');
INSERT INTO `users` VALUES (32, 'Karol', 'Chwieja', 'karolek2122@gmail.com', '678-392-643', '', 'mężczyzna');
INSERT INTO `users` VALUES (34, 'Karol', 'Niezdara', 'kaorlek@gmail.com', '764-982-093', '', 'mężczyzna');
INSERT INTO `users` VALUES (35, 'Olaf', 'Rabat', 'dasda@gmail.com', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (45, 'Karol', 'Niedzielski', 'kaorlek@gmail.com', '746-362-812', '', 'mężczyzna');
INSERT INTO `users` VALUES (46, 'Piotr', 'Parada', 'parada@gmail.com', '986-763-542', '', 'mężczyzna');
INSERT INTO `users` VALUES (47, 'Czarek', 'Niedola', 'dolla@wp.pl', '984-095-673', '', 'mężczyzna');
INSERT INTO `users` VALUES (48, 'Karol', 'Poniedziałek', 'koarolek203@gmail.com', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (52, 'Karol', 'Gąska', 'karolek@gmail.com', '176-489-304', '', 'mężczyzna');
INSERT INTO `users` VALUES (53, 'Kamil', 'Pasterniak', NULL, '738-493-173', '', 'mężczyzna');
INSERT INTO `users` VALUES (54, 'Karol', 'Gąska', 'karolek@gmail.com', '176-489-304', '', 'mężczyzna');
INSERT INTO `users` VALUES (55, 'Karol', 'Gąska', '', '176-489-304', '', 'mężczyzna');
INSERT INTO `users` VALUES (56, 'Jan', 'Kowalski', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (57, '', '', NULL, '000-000-123', '', 'kobieta');
INSERT INTO `users` VALUES (60, 'Xd', 'Xd', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (64, 'Jan', 'Bąk', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (66, 'Kamil', 'Bąk', '', '123-858-392', '', 'mężczyzna');
INSERT INTO `users` VALUES (68, 'Monika', 'Ka', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (70, 'Monika', 'Kociołek', '', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (73, 'Rafał', 'Nicpoń', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (75, 'Rafał', 'Kołdra', '', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (76, 'Kamil', 'Kołdra', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (77, 'Xd', 'Xd', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (80, 'Rafał', 'Aaaaa', '', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (81, 'Rafał', 'Bbbbbbbbb', '', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (83, 'Cccc', 'Bbbbbbbbb', '', '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (85, 'Kamil', 'Dostawca1', NULL, '123-456-789', '', 'mężczyzna');
INSERT INTO `users` VALUES (86, 'Piotr', 'Ciosmak', NULL, '123123123', '+48', 'mężczyzna');
INSERT INTO `users` VALUES (87, 'Igor', 'Bobek', NULL, '00112234125', '+99', 'mężczyzna');
INSERT INTO `users` VALUES (101, 'Piotr', 'Ciosmak', 'pciosmak@gmail.com', '123123123', '+48', 'mężczyzna');

-- ----------------------------
-- Table structure for vehicles_types
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_types`;
CREATE TABLE `vehicles_types`  (
  `id_vehicle_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_vehicle_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicles_types
-- ----------------------------
INSERT INTO `vehicles_types` VALUES (1, 'rower');
INSERT INTO `vehicles_types` VALUES (2, 'skuter');
INSERT INTO `vehicles_types` VALUES (3, 'samochód');
INSERT INTO `vehicles_types` VALUES (4, 'na piechotę');
INSERT INTO `vehicles_types` VALUES (5, 'hulajnoga');

-- ----------------------------
-- View structure for v_all_existed_pizzas
-- ----------------------------
DROP VIEW IF EXISTS `v_all_existed_pizzas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_all_existed_pizzas` AS SELECT *, row_start, row_end FROM pizza FOR SYSTEM_TIME ALL ;

-- ----------------------------
-- View structure for v_all_existed_reviews
-- ----------------------------
DROP VIEW IF EXISTS `v_all_existed_reviews`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_all_existed_reviews` AS SELECT *, row_start, row_end FROM reviews FOR SYSTEM_TIME ALL ;

-- ----------------------------
-- View structure for v_number_of_adresses_in_cities
-- ----------------------------
DROP VIEW IF EXISTS `v_number_of_adresses_in_cities`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_number_of_adresses_in_cities` AS select count(0) AS `Liczba adresów z miasta`,`delivery_adresses`.`city` AS `city` from `delivery_adresses` group by `delivery_adresses`.`city` order by count(0) desc ;

-- ----------------------------
-- View structure for v_ordered_pizzas
-- ----------------------------
DROP VIEW IF EXISTS `v_ordered_pizzas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_ordered_pizzas` AS SELECT u.first_name, u.last_name, da.city, p.pizza 
FROM users u, delivery_adresses da, pizza p, orders o, ordered_pizzas op 
WHERE u.id_user = da.id_customer AND u.id_user = o.id_customer AND op.id_order = o.id_order AND op.id_pizza = p.id_pizza AND u.id_user = o.id_customer AND o.id_delivery_adresses = da.id_delivery_adress ;

-- ----------------------------
-- View structure for v_reviews_amount
-- ----------------------------
DROP VIEW IF EXISTS `v_reviews_amount`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_reviews_amount` AS WITH review_info as
(SELECT users.id_user, users.first_name, users.last_name, reviews.message, reviews.score 
 FROM reviews JOIN orders ON orders.id_order = reviews.id_order JOIN customers ON customers.id_customer = orders.id_customer JOIN
 users ON users.id_user = customers.id_user)
 
 SELECT *, (SELECT COUNT(*) FROM review_info r2 WHERE r2.id_user = r.id_user) ile_recenzji FROM review_info r HAVING ile_recenzji > 1 ;

-- ----------------------------
-- Procedure structure for add_comment
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_comment`;
delimiter ;;
CREATE PROCEDURE `add_comment`(IN `v_id_order` int, IN `v_comment` varchar(255))
BEGIN
	START TRANSACTION;
	
	UPDATE orders
	SET `comment` = v_comment
	WHERE id_order = v_id_order;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_customer
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_customer`;
delimiter ;;
CREATE PROCEDURE `add_customer`(IN v_first_name varchar(255),IN v_last_name varchar(255),IN v_email varchar(255),IN v_phone_number varchar(255),IN v_sex tinyint, IN v_password varchar(255))
BEGIN
	START TRANSACTION;
	
	SET @new_id_user := NEXTVAL(id_user_generator);
	
	IF(LENGTH(v_email) = 0)
	THEN
		SET v_email := NULL;
	END IF;
	
	INSERT INTO users(id_user, first_name, last_name, email, phone_number, sex)
	VALUES(@new_id_user, v_first_name, v_last_name, v_email, v_phone_number, v_sex);
	
	INSERT INTO accounts(login, `password`, id_user)
	VALUES(CONCAT(v_first_name,v_last_name), v_password, @new_id_user);
	
	INSERT INTO customers(id_user)
	VALUES (@new_id_user);
	
	COMMIT;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_delay
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_delay`;
delimiter ;;
CREATE PROCEDURE `add_delay`(IN `v_id_order` int, IN `v_delay` time)
BEGIN
	START TRANSACTION;
	
	UPDATE orders
	SET delay = v_delay
	WHERE id_order = v_id_order;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_deliverer
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_deliverer`;
delimiter ;;
CREATE PROCEDURE `add_deliverer`(IN v_first_name varchar(255),IN v_last_name varchar(255),IN v_email varchar(255),IN v_phone_number varchar(255),IN v_sex tinyint, IN v_password varchar(255),IN v_id_vehicle_type int)
BEGIN
	START TRANSACTION;
	
	SET @new_id_user := NEXTVAL(id_user_generator);
	
	IF(LENGTH(v_email) = 0)
	THEN
		SET v_email := NULL;
	END IF;
	
	INSERT INTO users(first_name, last_name, email, phone_number, sex)
	VALUES(v_first_name, v_last_name, v_email, v_phone_number, v_sex);
	
	INSERT INTO accounts(login, `password`, id_user)
	VALUES(CONCAT(v_first_name,v_last_name), v_password, @new_id_user);
	
	INSERT INTO delivery_persons(id_vehicle_type, id_user)
	VALUES (v_id_vehicle_type, @new_id_user);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_delivery_adress
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_delivery_adress`;
delimiter ;;
CREATE PROCEDURE `add_delivery_adress`(IN `v_id_customer` int,IN `v_street` varchar(255),IN `v_house_number` varchar(255),IN `v_apartment_number` varchar(255),IN `v_post_code` varchar(255),IN `v_city` varchar(255))
BEGIN
	START TRANSACTION;
	
	IF(LENGTH(v_apartment_number) = 0)
	THEN
		SET v_apartment_number := NULL;
	END IF;
	
	INSERT INTO delivery_adresses(street, house_number, apartment_number, post_code, city, id_customer)
	VALUES(v_street, v_house_number, v_apartment_number, v_post_code, v_city, v_id_customer);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_delivery_time
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_delivery_time`;
delimiter ;;
CREATE PROCEDURE `add_delivery_time`(IN `v_id_order` int, IN `v_delivery_time` datetime)
BEGIN
	START TRANSACTION;
	
	UPDATE orders
	SET delivery_time = v_delivery_time
	WHERE id_order = v_id_order;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_dough
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_dough`;
delimiter ;;
CREATE PROCEDURE `add_dough`(IN v_dough varchar(255), IN v_price double)
BEGIN
	START TRANSACTION;
	
	INSERT INTO doughs(dough, price)
	VALUES(v_dough, v_price);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_drink
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_drink`;
delimiter ;;
CREATE PROCEDURE `add_drink`(IN `v_drink` varchar(255),IN `v_capacity` int,IN `v_is_sugar_free` tinyint,IN `v_is_alcoholic` tinyint,IN `v_price` double,IN `v_id_type` int,IN `v_id_container` int)
BEGIN
	START TRANSACTION;
	
	INSERT INTO drinks(drink, capacity, is_sugar_free, is_alcoholic, price, id_type, id_container)
	VALUES (v_drink, v_capacity, v_is_sugar_free, v_is_alcoholic, v_price, v_id_type, v_id_container);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_drink_container
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_drink_container`;
delimiter ;;
CREATE PROCEDURE `add_drink_container`(IN v_container varchar(255))
BEGIN
	START TRANSACTION;
	
	INSERT INTO drinks_types(container)
	VALUES(v_container);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_drink_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_drink_type`;
delimiter ;;
CREATE PROCEDURE `add_drink_type`(IN v_type varchar(255))
BEGIN
	START TRANSACTION;
	
	INSERT INTO drinks_types(type)
	VALUES(v_type);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ingredient
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ingredient`;
delimiter ;;
CREATE PROCEDURE `add_ingredient`(IN `v_ingredient` varchar(255),IN `v_is_hot` tinyint,IN `v_price` double,IN `v_image` blob,IN `v_id_ingredient_type` int, IN `v_amount` int)
BEGIN
	START TRANSACTION;
	
	INSERT INTO ingredients(ingredient, is_hot, price, image, id_ingredient_type, amount)
	VALUES (v_ingredient, v_is_hot, v_price, v_image, v_id_ingredient_type, v_amount);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ingredient_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ingredient_type`;
delimiter ;;
CREATE PROCEDURE `add_ingredient_type`(IN `v_type` varchar(255))
BEGIN
	START TRANSACTION;
	
	INSERT INTO ingredient_types(type)
	VALUES (v_type);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_manager
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_manager`;
delimiter ;;
CREATE PROCEDURE `add_manager`(IN v_first_name varchar(255),IN v_last_name varchar(255),IN v_email varchar(255),IN v_phone_number varchar(255),IN v_sex tinyint, IN v_password varchar(255))
BEGIN
	START TRANSACTION;
	
	SET @new_id_user := NEXTVAL(id_user_generator);

	IF(LENGTH(v_email) = 0)
	THEN
		SET v_email := NULL;
	END IF;

	INSERT INTO users(id_user, first_name, last_name, email, phone_number, sex)
	VALUES(@new_id_user, v_first_name, v_last_name, v_email, v_phone_number, v_sex);
	
	INSERT INTO accounts(login, `password`, id_user)
	VALUES(CONCAT(v_first_name,v_last_name), v_password, @new_id_user);
	
	INSERT INTO managers(id_user)
	VALUES (@new_id_user);
	
	COMMIT;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_order
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_order`;
delimiter ;;
CREATE PROCEDURE `add_order`(IN `v_payment_type` int,IN `v_expected_delivery_time` datetime,IN `v_comment` varchar(255),IN `v_id_customer` int,IN `v_id_delivery_person` int,IN `v_id_delivery_adresses` int)
BEGIN
	START TRANSACTION;
	
	IF(LENGTH(v_comment) = 0)
	THEN
		SET v_comment := NULL;
	END IF;
	
	INSERT INTO orders(payment_type, expected_delivery_time, `comment`, total_price, id_customer, id_delivery_person, id_delivery_adresses)
	VALUES(v_payment_type, v_expected_delivery_time, v_comment, 0, v_id_customer, v_id_delivery_person, v_id_delivery_adresses);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ordered_drinks
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ordered_drinks`;
delimiter ;;
CREATE PROCEDURE `add_ordered_drinks`(IN `v_quantity` int,IN `v_id_drink` int,IN `v_id_order` int)
BEGIN
	START TRANSACTION;
	
	SELECT @final := price FROM drinks WHERE id_drink = v_id_drink;
	
	SELECT @order_price := total_price FROM orders WHERE id_order = v_id_order;
	
	SET @order_price := @order_price + (@final * v_quantity);
	
	UPDATE orders
	SET total_price = @order_price
	WHERE id_order = v_id_order;
	
	INSERT ordered_drinks(quantity, price, id_drink, id_order)
	VALUES(v_quantity, @final * v_quantity, v_id_drink, v_id_order);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ordered_pizza
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ordered_pizza`;
delimiter ;;
CREATE PROCEDURE `add_ordered_pizza`(IN `v_quantity` int,IN `v_id_pizza` int,IN `v_id_order` int)
BEGIN
	START TRANSACTION;
	
	SELECT @final := final_price FROM pizza WHERE id_pizza = v_id_pizza;
	
	SELECT @order_price := total_price FROM orders WHERE id_order = v_id_order;
	
	SET @order_price := @order_price + (@final * v_quantity);
	
	UPDATE orders
	SET total_price = @order_price
	WHERE id_order = v_id_order;
	
	INSERT ordered_pizzas(quantity, price, id_pizza, id_order)
	VALUES(v_quantity, @final * v_quantity, v_id_pizza, v_id_order);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ordered_sauces
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ordered_sauces`;
delimiter ;;
CREATE PROCEDURE `add_ordered_sauces`(IN `v_quantity` int,IN `v_id_sauce` int,IN `v_id_order` int)
BEGIN
	START TRANSACTION;
	
	SELECT @final := price FROM sauces WHERE id_sauce = v_id_sauce;
	
	SELECT @order_price := total_price FROM orders WHERE id_order = v_id_order;
	
	SET @order_price := @order_price + (@final * v_quantity);
	
	UPDATE orders
	SET total_price = @order_price
	WHERE id_order = v_id_order;
	
	INSERT ordered_sauces(quantity, price, id_sauce, id_order)
	VALUES(v_quantity, @final * v_quantity, v_id_sauce, v_id_order);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_pizza
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_pizza`;
delimiter ;;
CREATE PROCEDURE `add_pizza`(IN `v_pizza` varchar(255),IN `v_id_dough` int,IN `v_id_size` int)
BEGIN
	START TRANSACTION;
	
	SET @final := 0;
	SET @tmp := 0;
	
	SELECT @tmp := doughs.price
	FROM doughs
	WHERE doughs.id_doughs = v_id_dough;
	SET @final := @final + @tmp;
	
	SELECT @tmp := sizes.price
	FROM sizes
	WHERE sizes.id_size = v_id_size;
	SET @final := @final + @tmp;
	
	INSERT INTO pizza(pizza, id_dough, id_size, final_price)
	VALUES (v_pizza, v_id_dough, v_id_size, @final);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_pizzas_ingredient
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_pizzas_ingredient`;
delimiter ;;
CREATE PROCEDURE `add_pizzas_ingredient`(IN `v_id_pizza` int,IN `v_id_ingredient` int)
BEGIN
	START TRANSACTION;

	SELECT @final := final_price FROM pizza WHERE id_pizza = v_id_pizza;
	
	SELECT @new_ingredient_price := price FROM ingredients WHERE id_ingredient = v_id_ingredient;
	
	SET @final := @final + @new_ingredient_price;
	
	INSERT INTO pizzas_ingredients(id_pizza, id_ingredient)
	VALUES (v_id_pizza, v_id_ingredient);
	
	UPDATE pizza
	SET final_price = @final
	WHERE id_pizza = v_id_pizza;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_review
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_review`;
delimiter ;;
CREATE PROCEDURE `add_review`(IN `v_message` longtext,IN `v_score` int,IN `v_id_order` int)
BEGIN
	START TRANSACTION;

	SET @new_id_review := NEXTVAL(id_review_generator);
	
	INSERT INTO reviews(message, score, id_order)
	VALUES (v_message, v_score, v_id_order);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_sauce
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_sauce`;
delimiter ;;
CREATE PROCEDURE `add_sauce`(IN `v_sauce` varchar(255),IN `v_price` double)
BEGIN
	START TRANSACTION;

	INSERT INTO sauces(sauce, price)
	VALUES (v_sauce, v_price);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_size
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_size`;
delimiter ;;
CREATE PROCEDURE `add_size`(IN `v_diameter` int,IN `v_price` double)
BEGIN
	START TRANSACTION;

	INSERT INTO sizes(diameter, price)
	VALUES (v_diameter, v_price);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_vehicle_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_vehicle_type`;
delimiter ;;
CREATE PROCEDURE `add_vehicle_type`(IN `v_vehicle_type` varchar(255))
BEGIN
	START TRANSACTION;
	
	INSERT INTO vehicles_types(vehicle_type)
	VALUES (v_vehicle_type);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for calculate_payment
-- ----------------------------
DROP FUNCTION IF EXISTS `calculate_payment`;
delimiter ;;
CREATE FUNCTION `calculate_payment`(`minimal_gross` int)
 RETURNS int(11)
BEGIN
	SET @ilosc_ludzi = (SELECT COUNT(*) FROM delivery_persons);

	RETURN minimal_gross * @ilosc_ludzi;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_all_delivery_adresses
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_all_delivery_adresses`;
delimiter ;;
CREATE PROCEDURE `del_all_delivery_adresses`(IN `v_id_customer` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM delivery_adresses
	WHERE id_customer = v_id_customer;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_dough
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_dough`;
delimiter ;;
CREATE PROCEDURE `del_dough`(IN v_id_dough int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM doughs
	WHERE id_doughs = v_id_dough;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_drink
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_drink`;
delimiter ;;
CREATE PROCEDURE `del_drink`(IN `v_id_drink` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM drinks
	WHERE v_id_drink = id_drink;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_drink_container
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_drink_container`;
delimiter ;;
CREATE PROCEDURE `del_drink_container`(IN `v_id_container` int)
BEGIN
	START TRANSACTION;

	DELETE FROM drinks_containers
	WHERE v_id_container = id_container;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_drink_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_drink_type`;
delimiter ;;
CREATE PROCEDURE `del_drink_type`(IN `v_id_type` int)
BEGIN
	START TRANSACTION;

	DELETE FROM drinks_types
	WHERE v_id_type = id_type;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_email
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_email`;
delimiter ;;
CREATE PROCEDURE `del_email`(IN `v_id_user` int)
BEGIN
	START TRANSACTION;
	
	SELECT @tmp_phone_number := CONCAT(SUBSTR(phone_number,1,3), SUBSTR(phone_number,5,3), SUBSTR(phone_number,9))
	FROM users
	WHERE id_user = v_id_user;
	
	UPDATE users
	SET phone_number = @tmp_phone_number, email = NULL
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_ingredient
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_ingredient`;
delimiter ;;
CREATE PROCEDURE `del_ingredient`(IN `v_id_ingredient` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM ingredients
	WHERE id_ingredient = v_id_ingredient;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_ingredient_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_ingredient_type`;
delimiter ;;
CREATE PROCEDURE `del_ingredient_type`(IN `v_id_ingredient_type` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM ingredient_types
	WHERE id_ingredient_type = v_id_ingredient_type;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_one_delivery_adress
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_one_delivery_adress`;
delimiter ;;
CREATE PROCEDURE `del_one_delivery_adress`(IN `v_id_delivery_adress` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM delivery_adresses
	WHERE id_delivery_adress = v_id_delivery_adress;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_pizzas_ingredient
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_pizzas_ingredient`;
delimiter ;;
CREATE PROCEDURE `del_pizzas_ingredient`(IN `v_id_pizza` int,IN `v_id_ingredient` int)
BEGIN
	START TRANSACTION;

	SELECT @final := final_price FROM pizza WHERE id_pizza = v_id_pizza;
	
	SELECT @new_ingredient_price := price FROM ingredients WHERE id_ingredient = v_id_ingredient;

	SET @final := @final - @new_ingredient_price;

	DELETE FROM pizzas_ingredients
	WHERE id_pizza = v_id_pizza AND id_ingredient = v_id_ingredient;
	
	UPDATE pizza
	SET final_price = @final
	WHERE id_pizza = v_id_pizza;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_review
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_review`;
delimiter ;;
CREATE PROCEDURE `del_review`(IN `v_id_review` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM reviews_images
	WHERE id_review = v_id_review;
	
	DELETE FROM reviews
	WHERE id_review = v_id_review;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_sauce
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_sauce`;
delimiter ;;
CREATE PROCEDURE `del_sauce`(IN `v_id_sauce` int)
BEGIN
	START TRANSACTION;

	DELETE FROM sauces
	WHERE id_sauce = v_id_sauce;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_size
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_size`;
delimiter ;;
CREATE PROCEDURE `del_size`(IN `v_id_size` int)
BEGIN
	START TRANSACTION;

	DELETE FROM sizes
	WHERE id_size = v_id_size;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_user`;
delimiter ;;
CREATE PROCEDURE `del_user`(IN `v_id_user` int)
BEGIN
	START TRANSACTION;
	
		DELETE FROM managers
		WHERE id_user = v_id_user;
		
		DELETE FROM customers
		WHERE id_user = v_id_user;
		
		DELETE FROM delivery_persons
		WHERE id_user = v_id_user;
		
		DELETE FROM accounts
		WHERE id_user = v_id_user;
		
		DELETE FROM users
		WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for del_vehicle_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_vehicle_type`;
delimiter ;;
CREATE PROCEDURE `del_vehicle_type`(IN `v_id_vehicle_type` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM vehicles_types
	WHERE id_vehicle_type = v_id_vehicle_type;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for do_customer
-- ----------------------------
DROP PROCEDURE IF EXISTS `do_customer`;
delimiter ;;
CREATE PROCEDURE `do_customer`(IN v_id_user int)
BEGIN
	INSERT INTO customers(id_user)
	VALUES (v_id_user);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for do_deliverer
-- ----------------------------
DROP PROCEDURE IF EXISTS `do_deliverer`;
delimiter ;;
CREATE PROCEDURE `do_deliverer`(IN `v_id_vehicle_type` int,IN `v_id_user` int)
BEGIN
	START TRANSACTION;
	
	INSERT INTO delivery_persons (id_vehicle_type, id_user)
	VALUES (v_id_vehicle_type, v_id_user);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for do_manager
-- ----------------------------
DROP PROCEDURE IF EXISTS `do_manager`;
delimiter ;;
CREATE PROCEDURE `do_manager`(IN v_id_user int)
BEGIN
	INSERT INTO managers(id_user)
	VALUES (v_id_user);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for show_matching_pizzas
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_matching_pizzas`;
delimiter ;;
CREATE PROCEDURE `show_matching_pizzas`(IN `v_word` varchar(255))
BEGIN
	
	SET @new_word = CONCAT('+', v_word);
	
	SELECT * FROM pizza WHERE MATCH(pizza) AGAINST(@new_word IN BOOLEAN MODE);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for show_not_matching_pizzas
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_not_matching_pizzas`;
delimiter ;;
CREATE PROCEDURE `show_not_matching_pizzas`(IN `v_word` varchar(255))
BEGIN
	
	SET @new_word = CONCAT('+', v_word);
	
	SELECT * FROM pizza WHERE NOT MATCH(pizza) AGAINST(@new_word IN BOOLEAN MODE);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for subtract_drinks
-- ----------------------------
DROP PROCEDURE IF EXISTS `subtract_drinks`;
delimiter ;;
CREATE PROCEDURE `subtract_drinks`(IN `v_amount` int, IN `v_id_drink` int)
BEGIN
	START TRANSACTION;
	SELECT @drink_amount := amount FROM drinks WHERE id_drink = v_id_drink FOR UPDATE;
	SET @drink_amount := @drink_amount - v_amount;
	
	IF (@drink_amount < 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Za mało składników!';
	END IF;
		
	UPDATE drinks SET amount = @drink_amount WHERE id_drink = v_id_drink;
		
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for subtract_ingredients
-- ----------------------------
DROP PROCEDURE IF EXISTS `subtract_ingredients`;
delimiter ;;
CREATE PROCEDURE `subtract_ingredients`(IN `v_id_pizza` int, IN `v_quantity` int)
BEGIN
	START TRANSACTION;
	
	CREATE TEMPORARY TABLE temp_table SELECT * FROM pizzas_ingredients WHERE id_pizza = v_id_pizza FOR UPDATE;
	WHILE ((SELECT COUNT(*) FROM temp_table) > 0) DO
		SET @v_id_ingredient := (SELECT id_ingredient FROM temp_table LIMIT 1);
		SET @amount = (SELECT amount FROM ingredients WHERE id_ingredient = @v_id_ingredient FOR UPDATE);
		SET @amount = @amount - v_quantity;
		IF (@amount < 0) THEN
			DROP TABLE temp_table;
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Za mało składników!';
		ELSE
			UPDATE ingredients SET amount = @amount WHERE id_ingredient = @v_id_ingredient;
			DELETE FROM temp_table WHERE id_ingredient = @v_id_ingredient;
		END IF;
END WHILE;

	DROP TABLE temp_table;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for subtract_sauces
-- ----------------------------
DROP PROCEDURE IF EXISTS `subtract_sauces`;
delimiter ;;
CREATE PROCEDURE `subtract_sauces`(IN `v_amount` int,IN `v_id_sauce` int)
BEGIN
	START TRANSACTION;
	SELECT @sauce_amount := amount FROM sauces WHERE id_sauce = v_id_sauce FOR UPDATE;
	SET @sauce_amount := @sauce_amount - v_amount;
	
	IF (@sauce_amount < 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Za mało składników!';
	END IF;
	
	UPDATE sauces SET amount = @sauce_amount WHERE id_sauce = v_id_sauce;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for undo_customer
-- ----------------------------
DROP PROCEDURE IF EXISTS `undo_customer`;
delimiter ;;
CREATE PROCEDURE `undo_customer`(IN `v_id_user` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM customers
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for undo_deliverer
-- ----------------------------
DROP PROCEDURE IF EXISTS `undo_deliverer`;
delimiter ;;
CREATE PROCEDURE `undo_deliverer`(IN `v_id_delivery_person` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM delivery_persons
	WHERE id_delivery_person = v_id_delivery_person;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for undo_manager
-- ----------------------------
DROP PROCEDURE IF EXISTS `undo_manager`;
delimiter ;;
CREATE PROCEDURE `undo_manager`(IN `v_id_user` int)
BEGIN
	START TRANSACTION;
	
	DELETE FROM managers
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_apartment_number
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_apartment_number`;
delimiter ;;
CREATE PROCEDURE `update_apartment_number`(IN `v_id_delivery_adress` int,IN `v_apartment_number` varchar(255))
BEGIN
	START TRANSACTION;

	SELECT @tmp_post_code := CONCAT(SUBSTR(post_code,1,2), SUBSTR(post_code,4))
	FROM delivery_adresses
	WHERE id_delivery_adress = v_id_delivery_adress;

	UPDATE delivery_adresses
	SET post_code = @tmp_post_code, apartment_number = v_apartment_number
	WHERE id_delivery_adress = v_id_delivery_adress;

	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_city
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_city`;
delimiter ;;
CREATE PROCEDURE `update_city`(IN `v_id_delivery_adress` int,IN `v_city` varchar(255))
BEGIN
	START TRANSACTION;

	SELECT @tmp_post_code := CONCAT(SUBSTR(post_code,1,2), SUBSTR(post_code,4))
	FROM delivery_adresses
	WHERE id_delivery_adress = v_id_delivery_adress;

	UPDATE delivery_adresses
	SET post_code = @tmp_post_code, city = v_city
	WHERE id_delivery_adress = v_id_delivery_adress;

	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_dough_price
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_dough_price`;
delimiter ;;
CREATE PROCEDURE `update_dough_price`(IN v_id_dough int, IN v_price double)
BEGIN
	START TRANSACTION;
	
	UPDATE doughs
	SET price = v_price
	WHERE id_doughs = v_id_dough;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_email
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_email`;
delimiter ;;
CREATE PROCEDURE `update_email`(IN `v_id_user` int,IN `v_email` varchar(255))
BEGIN
	START TRANSACTION;
	
	SELECT @tmp_phone_number := CONCAT(SUBSTR(phone_number,1,3), SUBSTR(phone_number,5,3), SUBSTR(phone_number,9))
	FROM users
	WHERE id_user = v_id_user;
	
	UPDATE users
	SET phone_number = @tmp_phone_number, email = v_email
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_first_name
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_first_name`;
delimiter ;;
CREATE PROCEDURE `update_first_name`(IN `v_id_user` int,IN `v_first_name` varchar(255))
BEGIN
	START TRANSACTION;
	
	SELECT @tmp_phone_number := CONCAT(SUBSTR(phone_number,1,3), SUBSTR(phone_number,5,3), SUBSTR(phone_number,9))
	FROM users
	WHERE id_user = v_id_user;
	
	UPDATE users
	SET phone_number = @tmp_phone_number, first_name = v_first_name
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_house_number
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_house_number`;
delimiter ;;
CREATE PROCEDURE `update_house_number`(IN `v_id_delivery_adress` int,IN `v_house_number` varchar(255))
BEGIN
	START TRANSACTION;

	SELECT @tmp_post_code := CONCAT(SUBSTR(post_code,1,2), SUBSTR(post_code,4))
	FROM delivery_adresses
	WHERE id_delivery_adress = v_id_delivery_adress;

	UPDATE delivery_adresses
	SET post_code = @tmp_post_code, house_number = v_house_number
	WHERE id_delivery_adress = v_id_delivery_adress;

	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_ingredient_price
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_ingredient_price`;
delimiter ;;
CREATE PROCEDURE `update_ingredient_price`(IN `v_id_ingredient` int,IN `v_price` double)
BEGIN
	START TRANSACTION;
	
	UPDATE ingredients
	SET price = v_price
	WHERE id_ingredient = v_id_ingredient;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_last_name
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_last_name`;
delimiter ;;
CREATE PROCEDURE `update_last_name`(IN `v_id_user` int,IN `v_last_name` varchar(255))
BEGIN
	START TRANSACTION;
	
	SELECT @tmp_phone_number := CONCAT(SUBSTR(phone_number,1,3), SUBSTR(phone_number,5,3), SUBSTR(phone_number,9))
	FROM users
	WHERE id_user = v_id_user;
	
	UPDATE users
	SET phone_number = @tmp_phone_number, last_name = v_last_name
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_login`;
delimiter ;;
CREATE PROCEDURE `update_login`(IN `v_id_user` int, IN `v_login`varchar(255))
BEGIN
	START TRANSACTION;
	
	UPDATE accounts
	SET login = v_login
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_message
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_message`;
delimiter ;;
CREATE PROCEDURE `update_message`(IN `v_id_review` int,IN `v_message` longtext)
BEGIN
	START TRANSACTION;
	
	UPDATE reviews
	SET message = v_message
	WHERE v_id_review = id_review;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_password
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_password`;
delimiter ;;
CREATE PROCEDURE `update_password`(IN `v_id_user` int, IN `v_password`varchar(255))
BEGIN
	START TRANSACTION;
	
	UPDATE accounts
	SET `password` = `v_password`
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_payment_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_payment_type`;
delimiter ;;
CREATE PROCEDURE `update_payment_type`(IN `v_id_order` int, IN `v_payment_type` int)
BEGIN
	START TRANSACTION;
	
	UPDATE orders
	SET payment_type = v_payment_type
	WHERE id_order = v_id_order;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_phone_number
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_phone_number`;
delimiter ;;
CREATE PROCEDURE `update_phone_number`(IN `v_id_user` int,IN `v_phone_number` varchar(255))
BEGIN
	START TRANSACTION;
	
	UPDATE users
	SET phone_number = v_phone_number
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_pizza_dough
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_pizza_dough`;
delimiter ;;
CREATE PROCEDURE `update_pizza_dough`(IN `v_id_pizza` int,IN `v_id_dough` int)
BEGIN
	START TRANSACTION;
	
	UPDATE pizza
	SET id_dough = v_id_dough
	WHERE id_pizza = v_id_pizza;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_pizza_sauce
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_pizza_sauce`;
delimiter ;;
CREATE PROCEDURE `update_pizza_sauce`(IN `v_id_pizza` int,IN `v_id_sauce` int)
BEGIN
	START TRANSACTION;
	
	UPDATE pizza
	SET id_sauce = v_id_sauce
	WHERE id_pizza = v_id_pizza;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_pizza_size
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_pizza_size`;
delimiter ;;
CREATE PROCEDURE `update_pizza_size`(IN `v_id_pizza` int,IN `v_id_size` int)
BEGIN
	START TRANSACTION;
	
	UPDATE pizza
	SET id_size = v_id_size
	WHERE id_pizza = v_id_pizza;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_post_code
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_post_code`;
delimiter ;;
CREATE PROCEDURE `update_post_code`(IN `v_id_delivery_adress` int,IN `v_post_code` varchar(255))
BEGIN
	START TRANSACTION;

	UPDATE delivery_adresses
	SET post_code = v_post_code
	WHERE id_delivery_adress = v_id_delivery_adress;

	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_price
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_price`;
delimiter ;;
CREATE PROCEDURE `update_price`(IN `v_id_drink` int, IN `v_price` double)
BEGIN
	START TRANSACTION;
	
	UPDATE drinks
	SET price = v_price
	WHERE id_drink = v_id_drink;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_sauce_price
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_sauce_price`;
delimiter ;;
CREATE PROCEDURE `update_sauce_price`(IN `v_id_sauce` int,IN `v_price` double)
BEGIN
	START TRANSACTION;

	UPDATE sauces
	SET price = v_price
	WHERE id_sauce = v_id_sauce;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_sex
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_sex`;
delimiter ;;
CREATE PROCEDURE `update_sex`(IN `v_id_user` int,IN `v_sex` tinyint)
BEGIN
	START TRANSACTION;
	
	SELECT @tmp_phone_number := CONCAT(SUBSTR(phone_number,1,3), SUBSTR(phone_number,5,3), SUBSTR(phone_number,9))
	FROM users
	WHERE id_user = v_id_user;
	
	UPDATE users
	SET phone_number = @tmp_phone_number, sex = v_sex
	WHERE id_user = v_id_user;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_size_diameter
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_size_diameter`;
delimiter ;;
CREATE PROCEDURE `update_size_diameter`(IN `v_id_size` int,IN `v_diameter` int)
BEGIN
	START TRANSACTION;

	UPDATE sizes
	SET diameter = v_diameter
	WHERE id_size = v_id_size;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_size_price
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_size_price`;
delimiter ;;
CREATE PROCEDURE `update_size_price`(IN `v_id_size` int,IN `v_price` double)
BEGIN
	START TRANSACTION;

	UPDATE sizes
	SET price = v_price
	WHERE id_size = v_id_size;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status`;
delimiter ;;
CREATE PROCEDURE `update_status`(IN `v_id_order` int, IN `v_status` int)
BEGIN
	START TRANSACTION;
	
	UPDATE orders
	SET `status` = v_status
	WHERE id_order = v_id_order;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_street
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_street`;
delimiter ;;
CREATE PROCEDURE `update_street`(IN `v_id_delivery_adress` int,IN `v_street` varchar(255))
BEGIN
	START TRANSACTION;

	SELECT @tmp_post_code := CONCAT(SUBSTR(post_code,1,2), SUBSTR(post_code,4))
	FROM delivery_adresses
	WHERE id_delivery_adress = v_id_delivery_adress;

	UPDATE delivery_adresses
	SET post_code = @tmp_post_code, street = v_street
	WHERE id_delivery_adress = v_id_delivery_adress;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_vehicle_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_vehicle_type`;
delimiter ;;
CREATE PROCEDURE `update_vehicle_type`(IN `v_id_delivery_person` int,IN `v_id_vehicle_type` int)
BEGIN
	START TRANSACTION;
	
	UPDATE delivery_persons
	SET id_vehicle_type = v_id_vehicle_type
	WHERE id_delivery_person = v_id_delivery_person;
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Event structure for dostawa
-- ----------------------------
DROP EVENT IF EXISTS `dostawa`;
delimiter ;;
CREATE EVENT `dostawa`
ON SCHEDULE
EVERY '1' DAY STARTS '2022-06-09 21:15:30'
DO BEGIN
	UPDATE ingredients SET ingredients.amount = 100;
	UPDATE sauces SET sauces.amount = 100;
	UPDATE drinks SET drinks.amount = 100;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table accounts
-- ----------------------------
DROP TRIGGER IF EXISTS `accountsLoginToLowerCaseI`;
delimiter ;;
CREATE TRIGGER `accountsLoginToLowerCaseI` BEFORE INSERT ON `accounts` FOR EACH ROW BEGIN
	SET new.login = LOWER(new.login);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table accounts
-- ----------------------------
DROP TRIGGER IF EXISTS `accountsLoginToLowerCaseU`;
delimiter ;;
CREATE TRIGGER `accountsLoginToLowerCaseU` BEFORE UPDATE ON `accounts` FOR EACH ROW BEGIN
	SET new.login = LOWER(new.login);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table delivery_adresses
-- ----------------------------
DROP TRIGGER IF EXISTS `delivery_adressesHouseNumberI`;
delimiter ;;
CREATE TRIGGER `delivery_adressesHouseNumberI` BEFORE INSERT ON `delivery_adresses` FOR EACH ROW BEGIN
	SET new.house_number = UPPER(new.house_number);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table delivery_adresses
-- ----------------------------
DROP TRIGGER IF EXISTS `delivery_adressesAppartmentNumberI`;
delimiter ;;
CREATE TRIGGER `delivery_adressesAppartmentNumberI` BEFORE INSERT ON `delivery_adresses` FOR EACH ROW BEGIN
	SET new.apartment_number = UPPER(new.apartment_number);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table delivery_adresses
-- ----------------------------
DROP TRIGGER IF EXISTS `delivery_adressesPostCodeI`;
delimiter ;;
CREATE TRIGGER `delivery_adressesPostCodeI` BEFORE INSERT ON `delivery_adresses` FOR EACH ROW BEGIN
	IF(LENGTH(new.post_code) <=> 5) THEN
		SET new.post_code = CONCAT(SUBSTR(new.post_code, 1, 2), '-', SUBSTR(new.post_code, 3));
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny kod pocztowy!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table delivery_adresses
-- ----------------------------
DROP TRIGGER IF EXISTS `delivery_adressesHouseNumberU`;
delimiter ;;
CREATE TRIGGER `delivery_adressesHouseNumberU` BEFORE UPDATE ON `delivery_adresses` FOR EACH ROW BEGIN
	SET new.house_number = UPPER(new.house_number);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table delivery_adresses
-- ----------------------------
DROP TRIGGER IF EXISTS `delivery_adressesAppartmentNumberU`;
delimiter ;;
CREATE TRIGGER `delivery_adressesAppartmentNumberU` BEFORE UPDATE ON `delivery_adresses` FOR EACH ROW BEGIN
	SET new.apartment_number = UPPER(new.apartment_number);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table delivery_adresses
-- ----------------------------
DROP TRIGGER IF EXISTS `delivery_adressesPostCodeU`;
delimiter ;;
CREATE TRIGGER `delivery_adressesPostCodeU` BEFORE UPDATE ON `delivery_adresses` FOR EACH ROW BEGIN
	IF(LENGTH(new.post_code) <=> 5) THEN
		SET new.post_code = CONCAT(SUBSTR(new.post_code, 1, 2), '-', SUBSTR(new.post_code, 3));
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny kod pocztowy!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsPriceCorrectI_copy1`;
delimiter ;;
CREATE TRIGGER `doughsPriceCorrectI_copy1` BEFORE INSERT ON `doughs` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsDoughCorrectI_copy1`;
delimiter ;;
CREATE TRIGGER `doughsDoughCorrectI_copy1` BEFORE INSERT ON `doughs` FOR EACH ROW BEGIN
	SET new.dough = LOWER(new.dough);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsPriceCorrectU_copy1`;
delimiter ;;
CREATE TRIGGER `doughsPriceCorrectU_copy1` BEFORE UPDATE ON `doughs` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsDoughCorrectU_copy1`;
delimiter ;;
CREATE TRIGGER `doughsDoughCorrectU_copy1` BEFORE UPDATE ON `doughs` FOR EACH ROW BEGIN
	SET new.dough = LOWER(new.dough);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks
-- ----------------------------
DROP TRIGGER IF EXISTS `drinksDrinkToLowerI`;
delimiter ;;
CREATE TRIGGER `drinksDrinkToLowerI` BEFORE INSERT ON `drinks` FOR EACH ROW BEGIN
	SET new.drink = LOWER(new.drink);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks
-- ----------------------------
DROP TRIGGER IF EXISTS `drinksPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `drinksPriceCorrectI` BEFORE INSERT ON `drinks` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks
-- ----------------------------
DROP TRIGGER IF EXISTS `drinksDrinkToLowerU`;
delimiter ;;
CREATE TRIGGER `drinksDrinkToLowerU` BEFORE UPDATE ON `drinks` FOR EACH ROW BEGIN
	SET new.drink = LOWER(new.drink);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks
-- ----------------------------
DROP TRIGGER IF EXISTS `drinksPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `drinksPriceCorrectU` BEFORE UPDATE ON `drinks` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks_containers
-- ----------------------------
DROP TRIGGER IF EXISTS `drinks_containersContainerToLowerI`;
delimiter ;;
CREATE TRIGGER `drinks_containersContainerToLowerI` BEFORE INSERT ON `drinks_containers` FOR EACH ROW BEGIN
	SET new.container=LOWER(new.container);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks_containers
-- ----------------------------
DROP TRIGGER IF EXISTS `drinks_containersContainerToLowerU`;
delimiter ;;
CREATE TRIGGER `drinks_containersContainerToLowerU` BEFORE UPDATE ON `drinks_containers` FOR EACH ROW BEGIN
	SET new.container=LOWER(new.container);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks_types
-- ----------------------------
DROP TRIGGER IF EXISTS `drinks_typesTypeToLowerI`;
delimiter ;;
CREATE TRIGGER `drinks_typesTypeToLowerI` BEFORE INSERT ON `drinks_types` FOR EACH ROW BEGIN
	SET new.type = LOWER(new.type);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table drinks_types
-- ----------------------------
DROP TRIGGER IF EXISTS `drinks_typesTypeToLowerU`;
delimiter ;;
CREATE TRIGGER `drinks_typesTypeToLowerU` BEFORE UPDATE ON `drinks_types` FOR EACH ROW BEGIN
	SET new.type = LOWER(new.type);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ingredient_types
-- ----------------------------
DROP TRIGGER IF EXISTS `ingredient_typesTypeLowerI`;
delimiter ;;
CREATE TRIGGER `ingredient_typesTypeLowerI` BEFORE INSERT ON `ingredient_types` FOR EACH ROW BEGIN
	SET new.type = LOWER(new.type);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ingredient_types
-- ----------------------------
DROP TRIGGER IF EXISTS `ingredient_typesTypeLowerU`;
delimiter ;;
CREATE TRIGGER `ingredient_typesTypeLowerU` BEFORE UPDATE ON `ingredient_types` FOR EACH ROW BEGIN
	SET new.type = LOWER(new.type);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ordered_drinks
-- ----------------------------
DROP TRIGGER IF EXISTS `ordered_drinksPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `ordered_drinksPriceCorrectI` BEFORE INSERT ON `ordered_drinks` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ordered_drinks
-- ----------------------------
DROP TRIGGER IF EXISTS `ordered_drinksPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `ordered_drinksPriceCorrectU` BEFORE UPDATE ON `ordered_drinks` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ordered_pizzas
-- ----------------------------
DROP TRIGGER IF EXISTS `ordered_pizzasPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `ordered_pizzasPriceCorrectI` BEFORE INSERT ON `ordered_pizzas` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ordered_pizzas
-- ----------------------------
DROP TRIGGER IF EXISTS `ordered_pizzasPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `ordered_pizzasPriceCorrectU` BEFORE UPDATE ON `ordered_pizzas` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ordered_sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `ordered_saucesPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `ordered_saucesPriceCorrectI` BEFORE INSERT ON `ordered_sauces` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table ordered_sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `ordered_saucesPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `ordered_saucesPriceCorrectU` BEFORE UPDATE ON `ordered_sauces` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table orders
-- ----------------------------
DROP TRIGGER IF EXISTS `ordersTotal_priceCorrectI`;
delimiter ;;
CREATE TRIGGER `ordersTotal_priceCorrectI` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
	SET new.total_price = truncate(new.total_price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table orders
-- ----------------------------
DROP TRIGGER IF EXISTS `ordersTotal_priceCorrectU`;
delimiter ;;
CREATE TRIGGER `ordersTotal_priceCorrectU` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
	SET new.total_price = truncate(new.total_price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pizza
-- ----------------------------
DROP TRIGGER IF EXISTS `pizzaPizzaCorrectI`;
delimiter ;;
CREATE TRIGGER `pizzaPizzaCorrectI` BEFORE INSERT ON `pizza` FOR EACH ROW BEGIN
	SET new.pizza = LOWER(new.pizza);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pizza
-- ----------------------------
DROP TRIGGER IF EXISTS `pizzaFinalPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `pizzaFinalPriceCorrectI` BEFORE INSERT ON `pizza` FOR EACH ROW BEGIN
	SET new.final_price = TRUNCATE(new.final_price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pizza
-- ----------------------------
DROP TRIGGER IF EXISTS `pizzaPizzaCorrectU`;
delimiter ;;
CREATE TRIGGER `pizzaPizzaCorrectU` BEFORE UPDATE ON `pizza` FOR EACH ROW BEGIN
	SET new.pizza = LOWER(new.pizza);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pizza
-- ----------------------------
DROP TRIGGER IF EXISTS `pizzaFinalPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `pizzaFinalPriceCorrectU` BEFORE UPDATE ON `pizza` FOR EACH ROW BEGIN
	SET new.final_price = TRUNCATE(new.final_price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesSauceCorrectI_copy1`;
delimiter ;;
CREATE TRIGGER `saucesSauceCorrectI_copy1` BEFORE INSERT ON `sauces` FOR EACH ROW BEGIN
	SET new.sauce = LOWER(new.sauce);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesPriceCorrectI_copy1`;
delimiter ;;
CREATE TRIGGER `saucesPriceCorrectI_copy1` BEFORE INSERT ON `sauces` FOR EACH ROW BEGIN
	SET new.price = TRUNCATE(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesSauceCorrectU_copy1`;
delimiter ;;
CREATE TRIGGER `saucesSauceCorrectU_copy1` BEFORE UPDATE ON `sauces` FOR EACH ROW BEGIN
	SET new.sauce = LOWER(new.sauce);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesPriceCorrectU_copy1`;
delimiter ;;
CREATE TRIGGER `saucesPriceCorrectU_copy1` BEFORE UPDATE ON `sauces` FOR EACH ROW BEGIN
	SET new.price = TRUNCATE(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sizes
-- ----------------------------
DROP TRIGGER IF EXISTS `sizesDiameterCorrectI`;
delimiter ;;
CREATE TRIGGER `sizesDiameterCorrectI` BEFORE INSERT ON `sizes` FOR EACH ROW BEGIN
	IF (new.diameter BETWEEN 5 AND 100) THEN
		SET new.diameter = new.diameter;
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawna średnica!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sizes
-- ----------------------------
DROP TRIGGER IF EXISTS `sizesPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `sizesPriceCorrectI` BEFORE INSERT ON `sizes` FOR EACH ROW BEGIN
	SET new.price = TRUNCATE(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sizes
-- ----------------------------
DROP TRIGGER IF EXISTS `sizesDiameterCorrectU`;
delimiter ;;
CREATE TRIGGER `sizesDiameterCorrectU` BEFORE UPDATE ON `sizes` FOR EACH ROW BEGIN
	IF (new.diameter BETWEEN 5 AND 100) THEN
		SET new.diameter = new.diameter;
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawna średnica!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sizes
-- ----------------------------
DROP TRIGGER IF EXISTS `sizesPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `sizesPriceCorrectU` BEFORE UPDATE ON `sizes` FOR EACH ROW BEGIN
	SET new.price = TRUNCATE(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `usersLast_nameCorrectI`;
delimiter ;;
CREATE TRIGGER `usersLast_nameCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	SET new.last_name = CONCAT(UPPER(SUBSTR(new.last_name, 1, 1)),LOWER(SUBSTR(new.last_name, 2)));
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `usersCodeCorrectI`;
delimiter ;;
CREATE TRIGGER `usersCodeCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	IF (new.code NOT REGEXP '[0-9]$') THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny numer kierunkowy!';
	END IF;
	IF (new.code NOT LIKE '+%') THEN
		SET new.code = CONCAT('+', new.code);
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `userPhone_numberCorrectI`;
delimiter ;;
CREATE TRIGGER `userPhone_numberCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	IF (new.phone_number NOT REGEXP '[0-9]$') THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny numer telefonu!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `userFirst_nameCorrectI`;
delimiter ;;
CREATE TRIGGER `userFirst_nameCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	SET new.first_name = CONCAT(UPPER(SUBSTR(new.first_name, 1, 1)),LOWER(SUBSTR(new.first_name, 2)));
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `usersFirst_nameCorrectU`;
delimiter ;;
CREATE TRIGGER `usersFirst_nameCorrectU` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	SET new.first_name = CONCAT(UPPER(SUBSTR(new.first_name, 1, 1)),LOWER(SUBSTR(new.first_name, 2)));
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `usersLast_nameCorrectU`;
delimiter ;;
CREATE TRIGGER `usersLast_nameCorrectU` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	SET new.last_name = CONCAT(UPPER(SUBSTR(new.last_name, 1, 1)),LOWER(SUBSTR(new.last_name, 2)));
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `usersEmailCheckIfCorrectU`;
delimiter ;;
CREATE TRIGGER `usersEmailCheckIfCorrectU` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	IF ((new.email LIKE '%@%.%') OR (new.email <=> NULL)) THEN
		SET new.email = LOWER(new.email);
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny adres e-mail!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `userCodeCorrectU`;
delimiter ;;
CREATE TRIGGER `userCodeCorrectU` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	IF (new.code NOT REGEXP '[0-9]$') THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny numer kierunkowy!';
	END IF;
	IF (new.code NOT LIKE '+%') THEN
		SET new.code = CONCAT('+', new.code);
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `userPhone_numberCorrectU`;
delimiter ;;
CREATE TRIGGER `userPhone_numberCorrectU` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	IF (new.phone_number NOT REGEXP '[0-9]$') THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny numer telefonu!';
	END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
