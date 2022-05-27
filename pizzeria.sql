/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MariaDB
 Source Server Version : 100607
 Source Host           : localhost:3306
 Source Schema         : pizzeria

 Target Server Type    : MariaDB
 Target Server Version : 100607
 File Encoding         : 65001

 Date: 28/05/2022 00:36:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_account`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 'piotrek221', 'maslo001', '2022-04-10 22:56:34', 1);
INSERT INTO `accounts` VALUES (2, 'bobikson', 'marloo', '2022-05-27 00:15:54', 3);
INSERT INTO `accounts` VALUES (3, 'marceli', 'uwu', '2022-05-27 00:14:30', 4);
INSERT INTO `accounts` VALUES (4, 'miki', 'ahdad', '2022-04-10 22:57:14', 5);
INSERT INTO `accounts` VALUES (5, 'dabek', 'kamilos123', '2022-04-10 22:57:27', 2);
INSERT INTO `accounts` VALUES (6, 'ania', 'ania123', '2022-04-10 22:57:43', 6);
INSERT INTO `accounts` VALUES (7, 'januuusz', 'admin123', '2022-04-10 22:58:05', 10);
INSERT INTO `accounts` VALUES (8, 'figkaro', 'karolcia665', '2022-04-14 00:23:48', 7);
INSERT INTO `accounts` VALUES (9, 'kowal', 'krow32112', '2022-04-14 00:24:07', 8);
INSERT INTO `accounts` VALUES (10, 'rudy102', 'bebzon887', '2022-04-14 00:24:28', 9);
INSERT INTO `accounts` VALUES (11, 'latawiec', 'urok232', '2022-04-14 00:24:46', 11);
INSERT INTO `accounts` VALUES (12, 'paralotnia', 'fsjdffs83', '2022-04-14 00:24:55', 12);
INSERT INTO `accounts` VALUES (13, 'uczesany', 'dahjdasu231', '2022-04-14 00:25:10', 13);
INSERT INTO `accounts` VALUES (14, 'kozaczek999', 'kozii874iiii', '2022-04-14 00:25:28', 14);
INSERT INTO `accounts` VALUES (15, 'niedzwiadek', 'boczek2222', '2022-04-14 00:25:43', 15);
INSERT INTO `accounts` VALUES (16, 'tadesz', 'mataesz', '2022-04-14 00:25:59', 16);
INSERT INTO `accounts` VALUES (17, 'kosaaa', 'utyka22', '2022-04-14 00:26:12', 17);
INSERT INTO `accounts` VALUES (18, 'kosakowska', 'ulani887uuu', '2022-04-14 00:26:27', 18);
INSERT INTO `accounts` VALUES (19, 'betoniarka', 'auuuu221', '2022-04-14 00:26:40', 19);
INSERT INTO `accounts` VALUES (20, 'areka', 'marek', '2022-05-03 14:33:37', 20);
INSERT INTO `accounts` VALUES (21, 'wojti', 'karolak', '2022-04-14 00:27:02', 21);
INSERT INTO `accounts` VALUES (22, 'kornii', 'lopplo', '2022-05-03 14:31:53', 26);
INSERT INTO `accounts` VALUES (23, 'kamildereń', 'kamyczek221', '2022-05-24 20:35:11', 30);
INSERT INTO `accounts` VALUES (24, 'patrykkolba', 'dsadsa77dsa', '2022-05-24 20:52:14', 31);
INSERT INTO `accounts` VALUES (25, 'karolchwieja', 'dsada7datd2', '2022-05-24 20:53:08', 32);
INSERT INTO `accounts` VALUES (26, 'robertpasut', 'adminek2983', '2022-05-24 21:00:19', 33);
INSERT INTO `accounts` VALUES (27, 'karolniezdara', 'HSUQI2DA', '2022-05-24 21:35:15', 33);
INSERT INTO `accounts` VALUES (28, 'olafrabat', 'olafikkkk', '2022-05-24 21:35:17', 35);
INSERT INTO `accounts` VALUES (38, 'karolniezielski', 'dasudaus2', '2022-05-24 21:42:44', 45);
INSERT INTO `accounts` VALUES (39, 'piotrparada', 'da9sd9a', '2022-05-24 21:47:59', 46);
INSERT INTO `accounts` VALUES (40, 'czarekniedola', 'hdsah8da', '2022-05-24 21:49:05', 47);
INSERT INTO `accounts` VALUES (41, 'karolponiedziałek', 'dausdg6w2', '2022-05-24 21:51:33', 48);

-- ----------------------------
-- Table structure for active_adresses
-- ----------------------------
DROP TABLE IF EXISTS `active_adresses`;
CREATE TABLE `active_adresses`  (
  `id_active_adress` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'do poprawki aby użytkownik mógł wybrać z listy tylko swoje adresy przypisane w tabeli delivery adresses',
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_delivery_adress` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_active_adress`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  INDEX `id_delivery_adress`(`id_delivery_adress`) USING BTREE,
  CONSTRAINT `active_adresses_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `active_adresses_ibfk_2` FOREIGN KEY (`id_delivery_adress`) REFERENCES `delivery_adresses` (`id_delivery_adress`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of active_adresses
-- ----------------------------
INSERT INTO `active_adresses` VALUES (1, 1, 3);
INSERT INTO `active_adresses` VALUES (2, 2, 2);
INSERT INTO `active_adresses` VALUES (3, 12, 13);
INSERT INTO `active_adresses` VALUES (6, 11, 12);
INSERT INTO `active_adresses` VALUES (7, 10, 11);
INSERT INTO `active_adresses` VALUES (8, 9, 10);
INSERT INTO `active_adresses` VALUES (9, 8, 9);
INSERT INTO `active_adresses` VALUES (10, 7, 8);
INSERT INTO `active_adresses` VALUES (11, 6, 7);
INSERT INTO `active_adresses` VALUES (12, 5, 6);
INSERT INTO `active_adresses` VALUES (13, 4, 5);
INSERT INTO `active_adresses` VALUES (14, 3, 4);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1003 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for delivery_adresses
-- ----------------------------
DROP TABLE IF EXISTS `delivery_adresses`;
CREATE TABLE `delivery_adresses`  (
  `id_delivery_adress` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `house_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apartment_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deliver_costs` double UNSIGNED NOT NULL DEFAULT 0,
  `id_customer` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_delivery_adress`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  CONSTRAINT `delivery_adresses_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_adresses
-- ----------------------------
INSERT INTO `delivery_adresses` VALUES (1, 'Kamienna', '1', '2', '38-542', 'Mielec', 0, 1);
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_persons
-- ----------------------------
INSERT INTO `delivery_persons` VALUES (1, 3, 8);
INSERT INTO `delivery_persons` VALUES (2, 4, 7);
INSERT INTO `delivery_persons` VALUES (3, 2, 6);
INSERT INTO `delivery_persons` VALUES (4, 3, 9);
INSERT INTO `delivery_persons` VALUES (6, 3, 48);

-- ----------------------------
-- Table structure for doughs
-- ----------------------------
DROP TABLE IF EXISTS `doughs`;
CREATE TABLE `doughs`  (
  `id_doughs` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dough` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id_doughs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doughs
-- ----------------------------
INSERT INTO `doughs` VALUES (1, 'lekkie i chrupiące', 1.99);
INSERT INTO `doughs` VALUES (2, 'puszyste', 1.99);
INSERT INTO `doughs` VALUES (3, 'z serem w brzegach', 6.99);
INSERT INTO `doughs` VALUES (4, 'hot-dog', 7.99);

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
  PRIMARY KEY (`id_drink`) USING BTREE,
  INDEX `id_type`(`id_type`) USING BTREE,
  INDEX `id_container`(`id_container`) USING BTREE,
  CONSTRAINT `drinks_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `drinks_types` (`id_type`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `drinks_ibfk_2` FOREIGN KEY (`id_container`) REFERENCES `drinks_containers` (`id_container`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drinks
-- ----------------------------
INSERT INTO `drinks` VALUES (1, 'lemoniada', '0.3', 0, 0, 8.99, 3, 1);
INSERT INTO `drinks` VALUES (2, 'pepsi max', '0.33', 1, 0, 6.99, 2, 2);
INSERT INTO `drinks` VALUES (3, 'pepsi', '0.33', 0, 0, 6.99, 2, 2);
INSERT INTO `drinks` VALUES (4, 'mirinda', '0.33', 0, 0, 6.99, 2, 2);
INSERT INTO `drinks` VALUES (5, '7up', '0.33', 0, 0, 6.99, 2, 2);
INSERT INTO `drinks` VALUES (6, 'pepsi max', '0.85', 1, 0, 9.99, 2, 1);
INSERT INTO `drinks` VALUES (7, 'pepsi', '0.85', 0, 0, 9.99, 2, 1);
INSERT INTO `drinks` VALUES (8, 'mirinda', '0.85', 0, 0, 9.99, 2, 1);
INSERT INTO `drinks` VALUES (9, '7up', '0.85', 0, 0, 9.99, 2, 1);
INSERT INTO `drinks` VALUES (10, 'sok pomarańczowy', '1', 0, 0, 9.99, 3, 1);
INSERT INTO `drinks` VALUES (11, 'sok jabłkowy', '1', 0, 0, 9.99, 3, 1);
INSERT INTO `drinks` VALUES (12, 'woda niegazowna', '0.5', 1, 0, 6.99, 3, 1);
INSERT INTO `drinks` VALUES (13, 'woda gazowana', '0.5', 1, 0, 6.99, 3, 1);
INSERT INTO `drinks` VALUES (14, 'lech free 0,0%', '0.5', 0, 0, 8.99, 2, 2);
INSERT INTO `drinks` VALUES (15, 'lech free 0,0% chmiele cytrusowe', '0.5', 0, 0, 8.99, 2, 2);
INSERT INTO `drinks` VALUES (16, 'warka 5,2%', '0.5', 0, 1, 6.99, 1, 2);
INSERT INTO `drinks` VALUES (17, 'woda niegazowana', '0.2', 1, 0, 6.99, 3, 3);

-- ----------------------------
-- Table structure for drinks_containers
-- ----------------------------
DROP TABLE IF EXISTS `drinks_containers`;
CREATE TABLE `drinks_containers`  (
  `id_container` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `container` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
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
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id_image` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` longblob NULL DEFAULT NULL,
  PRIMARY KEY (`id_image`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (2, NULL);
INSERT INTO `images` VALUES (4, NULL);
INSERT INTO `images` VALUES (5, NULL);
INSERT INTO `images` VALUES (6, NULL);
INSERT INTO `images` VALUES (8, '');
INSERT INTO `images` VALUES (9, 0x35);
INSERT INTO `images` VALUES (10, '');
INSERT INTO `images` VALUES (11, '');
INSERT INTO `images` VALUES (12, '');
INSERT INTO `images` VALUES (13, '');
INSERT INTO `images` VALUES (14, '');
INSERT INTO `images` VALUES (15, '');
INSERT INTO `images` VALUES (16, '');
INSERT INTO `images` VALUES (17, '');
INSERT INTO `images` VALUES (18, '');
INSERT INTO `images` VALUES (20, '');
INSERT INTO `images` VALUES (21, '');

-- ----------------------------
-- Table structure for ingredient_types
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_types`;
CREATE TABLE `ingredient_types`  (
  `id_ingredient_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ingredient_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `ingredient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_hot` tinyint(1) NULL DEFAULT 0,
  `price` double UNSIGNED NOT NULL,
  `image` blob NULL DEFAULT NULL,
  `id_ingredient_type` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ingredient`) USING BTREE,
  INDEX `id_ingredient_type`(`id_ingredient_type`) USING BTREE,
  CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`id_ingredient_type`) REFERENCES `ingredient_types` (`id_ingredient_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingredients
-- ----------------------------
INSERT INTO `ingredients` VALUES (1, 'sos pomidorowy', 0, 1, NULL, 6);
INSERT INTO `ingredients` VALUES (2, 'ser mozzarella', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (3, 'salami', 0, 4, NULL, 7);
INSERT INTO `ingredients` VALUES (4, 'salami peperoni', 1, 4, NULL, 7);
INSERT INTO `ingredients` VALUES (5, 'papryka chili', 1, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (6, 'oliwki czarne', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (7, 'ostre przyprawy', 1, 0, NULL, 8);
INSERT INTO `ingredients` VALUES (8, 'cebula', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (9, 'ananas', 0, 3, NULL, 3);
INSERT INTO `ingredients` VALUES (10, 'szynka', 0, 4, NULL, 7);
INSERT INTO `ingredients` VALUES (11, 'ser feta', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (12, 'krewetki', 0, 8, NULL, 9);
INSERT INTO `ingredients` VALUES (13, 'pieczarki', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (14, 'papryka', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (15, 'parmezan', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (16, 'boczek', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (17, 'kukurydza', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (18, 'ogórek kiszony', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (19, 'ser mozzarella podwójny', 0, 6, NULL, 4);
INSERT INTO `ingredients` VALUES (20, 'kabanos', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (21, 'czosnek', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (22, 'groszek', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (23, 'fasolka szparagowa', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (24, 'kurczak', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (25, 'wołowina gyros', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (26, 'tuńczyk', 0, 5, NULL, 5);
INSERT INTO `ingredients` VALUES (27, 'grillowany bakłażan', 0, 3, NULL, 2);
INSERT INTO `ingredients` VALUES (28, 'suszone pomidory w oleju', 0, 3, NULL, 2);
INSERT INTO `ingredients` VALUES (29, 'natka pietruszki', 0, 1, NULL, 2);
INSERT INTO `ingredients` VALUES (30, 'wołowina', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (31, 'fasola czerwona', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (32, 'małże', 0, 8, NULL, 9);
INSERT INTO `ingredients` VALUES (33, 'oliwki zielone', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (34, 'borowiki', 0, 4, NULL, 10);
INSERT INTO `ingredients` VALUES (35, 'podgrzybki', 0, 4, NULL, 10);
INSERT INTO `ingredients` VALUES (36, 'sos śmietanowy', 0, 1, NULL, 6);
INSERT INTO `ingredients` VALUES (37, 'wędzony łosoś', 0, 6, NULL, 5);
INSERT INTO `ingredients` VALUES (38, 'cytryna', 0, 3, NULL, 3);
INSERT INTO `ingredients` VALUES (39, 'szpinak', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (40, 'jajko', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (42, 'chipsy paprykowe', 0, 5, NULL, 11);
INSERT INTO `ingredients` VALUES (43, 'mieszanka ważyw chińskich', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (44, 'kurczak curry', 0, 7, NULL, 1);
INSERT INTO `ingredients` VALUES (46, 'przyprawy orientalne', 0, 0, NULL, 8);
INSERT INTO `ingredients` VALUES (47, 'brzoskwinia', 0, 3, NULL, 3);
INSERT INTO `ingredients` VALUES (48, 'mięso mielone', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (49, 'podwójny sos pomidorowy', 0, 2, NULL, 6);
INSERT INTO `ingredients` VALUES (50, 'kiełbasa', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (51, 'pomidory', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (52, 'filety anchois', 0, 5, NULL, 5);
INSERT INTO `ingredients` VALUES (53, 'kapary', 0, 2, NULL, 12);
INSERT INTO `ingredients` VALUES (54, 'ser pleśniowy', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (55, 'gouda', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (56, 'camemert', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (57, 'pieczone ziemniaki', 0, 3, NULL, 2);
INSERT INTO `ingredients` VALUES (58, 'prażona cebula', 0, 3, NULL, 2);
INSERT INTO `ingredients` VALUES (59, 'jajka sadzone', 0, 4, NULL, 4);
INSERT INTO `ingredients` VALUES (60, 'szynka dojrzewająca', 0, 4, NULL, 7);
INSERT INTO `ingredients` VALUES (61, 'rukola', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (62, 'jalapeno', 1, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (63, 'zielony pieprz marynowany', 0, 0, NULL, 8);
INSERT INTO `ingredients` VALUES (64, 'mini kolby kukurydzny', 0, 3, NULL, 2);
INSERT INTO `ingredients` VALUES (65, 'roztrzepane jajka', 0, 4, NULL, 4);
INSERT INTO `ingredients` VALUES (66, 'filet wędzony z indyka', 0, 6, NULL, 1);
INSERT INTO `ingredients` VALUES (67, 'brokuły', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (68, 'paluszki krabowe', 0, 8, NULL, 9);
INSERT INTO `ingredients` VALUES (69, 'seler naciowy', 0, 2, NULL, 2);
INSERT INTO `ingredients` VALUES (70, 'oregano', 0, 0, NULL, 8);
INSERT INTO `ingredients` VALUES (71, 'żurawina', 0, 2, NULL, 3);
INSERT INTO `ingredients` VALUES (72, 'ser wędzony', 0, 3, NULL, 4);
INSERT INTO `ingredients` VALUES (73, 'tymianek', 0, 0, NULL, 8);
INSERT INTO `ingredients` VALUES (74, 'majeranek', 0, 0, '', 8);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES (1, 1);
INSERT INTO `managers` VALUES (2, 3);
INSERT INTO `managers` VALUES (3, 4);
INSERT INTO `managers` VALUES (4, 5);
INSERT INTO `managers` VALUES (6, 25);
INSERT INTO `managers` VALUES (5, 33);
INSERT INTO `managers` VALUES (7, 47);

-- ----------------------------
-- Table structure for ordered_drinks
-- ----------------------------
DROP TABLE IF EXISTS `ordered_drinks`;
CREATE TABLE `ordered_drinks`  (
  `id_ordered_drink` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `id_drink` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ordered_drink`) USING BTREE,
  INDEX `id_drink`(`id_drink`) USING BTREE,
  CONSTRAINT `ordered_drinks_ibfk_1` FOREIGN KEY (`id_drink`) REFERENCES `drinks` (`id_drink`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordered_drinks
-- ----------------------------
INSERT INTO `ordered_drinks` VALUES (1, 1, 0, 2);
INSERT INTO `ordered_drinks` VALUES (2, 1, 0, 4);
INSERT INTO `ordered_drinks` VALUES (3, 1, 0, 9);
INSERT INTO `ordered_drinks` VALUES (4, 1, 0, 6);
INSERT INTO `ordered_drinks` VALUES (5, 2, 0, 10);
INSERT INTO `ordered_drinks` VALUES (6, 3, 0, 2);

-- ----------------------------
-- Table structure for ordered_pizzas
-- ----------------------------
DROP TABLE IF EXISTS `ordered_pizzas`;
CREATE TABLE `ordered_pizzas`  (
  `id_ordered_pizza` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `id_pizza` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_ordered_pizza`) USING BTREE,
  INDEX `id_pizza`(`id_pizza`) USING BTREE,
  CONSTRAINT `ordered_pizzas_ibfk_1` FOREIGN KEY (`id_pizza`) REFERENCES `pizza` (`id_pizza`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordered_pizzas
-- ----------------------------
INSERT INTO `ordered_pizzas` VALUES (1, 1, 0, 1);
INSERT INTO `ordered_pizzas` VALUES (2, 2, 0, 2);
INSERT INTO `ordered_pizzas` VALUES (3, 1, 0, 3);
INSERT INTO `ordered_pizzas` VALUES (4, 3, 0, 1);
INSERT INTO `ordered_pizzas` VALUES (5, 1, 0, 4);
INSERT INTO `ordered_pizzas` VALUES (6, 1, 0, 2);
INSERT INTO `ordered_pizzas` VALUES (7, 3, 30, 19);
INSERT INTO `ordered_pizzas` VALUES (8, 2, 0, 4);
INSERT INTO `ordered_pizzas` VALUES (9, 4, 40, 19);

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
  PRIMARY KEY (`id_order`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  INDEX `id_delivery_person`(`id_delivery_person`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_delivery_person`) REFERENCES `delivery_persons` (`id_delivery_person`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'gotówka przy odbiorze', '2022-04-14 00:38:40', 'przyjęte', '2022-04-11 02:11:11', '00:00:00', NULL, NULL, 0, 1, 2);
INSERT INTO `orders` VALUES (2, 'gotówka przy odbiorze', '2022-04-14 00:38:39', 'przyjęte', '2022-04-11 03:11:49', '00:00:00', NULL, NULL, 0, 2, 2);
INSERT INTO `orders` VALUES (3, 'karta płatnicza', '2022-04-14 00:38:37', 'przyjęte', '2022-04-11 03:03:26', '00:00:00', NULL, 'proszę szybko', 0, 1, 1);
INSERT INTO `orders` VALUES (4, 'gotówka przy odbiorze', '2022-04-14 00:38:34', 'przyjęte', '2022-04-14 03:38:05', '00:00:00', NULL, NULL, 0, 6, 3);
INSERT INTO `orders` VALUES (5, 'karta płatnicza', '2022-04-14 00:39:08', 'przyjęte', '2022-04-14 04:38:52', '00:00:00', NULL, NULL, 0, 11, 4);

-- ----------------------------
-- Table structure for orders_ordered_drinks
-- ----------------------------
DROP TABLE IF EXISTS `orders_ordered_drinks`;
CREATE TABLE `orders_ordered_drinks`  (
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_ordered_drink` int(10) UNSIGNED NOT NULL,
  INDEX `id_order`(`id_order`) USING BTREE,
  INDEX `id_ordered_drink`(`id_ordered_drink`) USING BTREE,
  CONSTRAINT `orders_ordered_drinks_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ordered_drinks_ibfk_2` FOREIGN KEY (`id_ordered_drink`) REFERENCES `ordered_drinks` (`id_ordered_drink`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_ordered_drinks
-- ----------------------------
INSERT INTO `orders_ordered_drinks` VALUES (1, 2);
INSERT INTO `orders_ordered_drinks` VALUES (2, 1);
INSERT INTO `orders_ordered_drinks` VALUES (2, 5);
INSERT INTO `orders_ordered_drinks` VALUES (1, 6);

-- ----------------------------
-- Table structure for orders_ordered_pizzas
-- ----------------------------
DROP TABLE IF EXISTS `orders_ordered_pizzas`;
CREATE TABLE `orders_ordered_pizzas`  (
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_ordered_pizza` int(10) UNSIGNED NOT NULL,
  INDEX `id_order`(`id_order`) USING BTREE,
  INDEX `id_ordered_pizza`(`id_ordered_pizza`) USING BTREE,
  CONSTRAINT `orders_ordered_pizzas_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ordered_pizzas_ibfk_2` FOREIGN KEY (`id_ordered_pizza`) REFERENCES `ordered_pizzas` (`id_ordered_pizza`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_ordered_pizzas
-- ----------------------------
INSERT INTO `orders_ordered_pizzas` VALUES (1, 1);
INSERT INTO `orders_ordered_pizzas` VALUES (2, 1);
INSERT INTO `orders_ordered_pizzas` VALUES (3, 1);
INSERT INTO `orders_ordered_pizzas` VALUES (3, 3);
INSERT INTO `orders_ordered_pizzas` VALUES (3, 4);
INSERT INTO `orders_ordered_pizzas` VALUES (1, 2);
INSERT INTO `orders_ordered_pizzas` VALUES (4, 4);

-- ----------------------------
-- Table structure for pizza
-- ----------------------------
DROP TABLE IF EXISTS `pizza`;
CREATE TABLE `pizza`  (
  `id_pizza` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pizza` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_dough` int(10) UNSIGNED NOT NULL,
  `id_size` int(10) UNSIGNED NOT NULL,
  `id_sauce` int(10) UNSIGNED NOT NULL,
  `final_price` double UNSIGNED NOT NULL COMMENT 'automatycznie obliczana jako suma wszystkich cen składowych',
  PRIMARY KEY (`id_pizza`) USING BTREE,
  INDEX `id_dough`(`id_dough`) USING BTREE,
  INDEX `pizza_ibfk_2`(`id_size`) USING BTREE,
  INDEX `pizza_ibfk_3`(`id_sauce`) USING BTREE,
  CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`id_dough`) REFERENCES `doughs` (`id_doughs`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pizza_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`id_size`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pizza_ibfk_3` FOREIGN KEY (`id_sauce`) REFERENCES `sauces` (`id_sauce`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pizza
-- ----------------------------
INSERT INTO `pizza` VALUES (1, 'margarita', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (2, 'salami', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (3, 'etna', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (4, 'hawajska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (5, 'paradsio', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (6, 'artful', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (7, 'tertio', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (8, 'te quiero', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (9, 'wegetariańska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (10, 'mamma lucia', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (11, 'gyros', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (12, 'chłopska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (13, 'con tonno', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (14, 'rzymska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (15, 'tomaso', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (16, 'melanzana', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (17, 'sułtan', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (18, 'giuseppe', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (19, 'oceania', 1, 1, 1, 10);
INSERT INTO `pizza` VALUES (20, 'foggia', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (21, 'funghi', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (22, 'al salmone', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (23, 'atena', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (24, 'texana', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (25, 'orient', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (26, 'agnese', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (27, 'bolognese', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (28, 'studencka', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (29, 'tunezyjska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (30, 'farmerska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (31, 'americana', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (32, 'ria', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (33, 'cztery sery', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (34, 'patata', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (35, 'maglia', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (36, 'rukola', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (37, 'vesuvio', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (38, 'lorin', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (39, 'broccoli', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (40, 'povera', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (41, 'di casa', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (42, 'hot chicken', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (43, 'bruno', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (44, 'góralska', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (45, 'ricca', 1, 1, 1, 0);
INSERT INTO `pizza` VALUES (46, 'rustica', 1, 1, 1, 0);

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
INSERT INTO `pizzas_ingredients` VALUES (5, 2);
INSERT INTO `pizzas_ingredients` VALUES (5, 25);

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES (3, '2022-04-11 00:26:39', 'Drogo i zimne', '1', 3);
INSERT INTO `reviews` VALUES (8, '2022-05-25 18:21:38', 'Super Smaczne', '4.5', 5);
INSERT INTO `reviews` VALUES (9, '2022-05-25 18:22:10', 'Super Smaczne', '4.5', 5);
INSERT INTO `reviews` VALUES (10, '2022-05-25 18:48:20', 'Zimne', '3', 4);

-- ----------------------------
-- Table structure for reviews_images
-- ----------------------------
DROP TABLE IF EXISTS `reviews_images`;
CREATE TABLE `reviews_images`  (
  `id_review` int(10) UNSIGNED NOT NULL,
  `id_image` int(10) UNSIGNED NOT NULL,
  INDEX `id_review`(`id_review`) USING BTREE,
  INDEX `id_image`(`id_image`) USING BTREE,
  CONSTRAINT `reviews_images_ibfk_1` FOREIGN KEY (`id_review`) REFERENCES `reviews` (`id_review`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `reviews_images_ibfk_2` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews_images
-- ----------------------------
INSERT INTO `reviews_images` VALUES (3, 2);
INSERT INTO `reviews_images` VALUES (9, 12);
INSERT INTO `reviews_images` VALUES (10, 13);

-- ----------------------------
-- Table structure for sauces
-- ----------------------------
DROP TABLE IF EXISTS `sauces`;
CREATE TABLE `sauces`  (
  `id_sauce` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sauce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id_sauce`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sauces
-- ----------------------------
INSERT INTO `sauces` VALUES (1, 'pomidorowy', 2.49);
INSERT INTO `sauces` VALUES (2, 'czosnkowy', 2.49);
INSERT INTO `sauces` VALUES (3, 'meksykański', 2.49);
INSERT INTO `sauces` VALUES (4, 'słodko kwaśny', 2.49);
INSERT INTO `sauces` VALUES (5, 'tabasco', 3.99);
INSERT INTO `sauces` VALUES (6, 'pomidorowy z ziołami', 2.49);
INSERT INTO `sauces` VALUES (7, 'bazyliowy', 3.99);
INSERT INTO `sauces` VALUES (8, 'bbq', 2.49);
INSERT INTO `sauces` VALUES (9, 'wściekły pies', 2.49);
INSERT INTO `sauces` VALUES (10, 'słodkie chilli', 2.49);

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
INSERT INTO `sizes` VALUES (2, 27, 13);
INSERT INTO `sizes` VALUES (3, 32, 16);
INSERT INTO `sizes` VALUES (4, 45, 24);
INSERT INTO `sizes` VALUES (5, 12, 7);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sex` enum('mężczyzna','kobieta') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Piotr', 'Ciosmak', 'piotrciosmak2001@gmail.com', '791-371-715', 'mężczyzna');
INSERT INTO `users` VALUES (2, 'Kamil', 'Dąbek', NULL, '500-374-123', 'mężczyzna');
INSERT INTO `users` VALUES (3, 'Igor', 'Bobek', NULL, '632-849-361', 'mężczyzna');
INSERT INTO `users` VALUES (4, 'Marcel', 'Czurczak', 'marceli223@gmail.com', '687-921-314', 'mężczyzna');
INSERT INTO `users` VALUES (5, 'Mikołaj', 'Dobisz', NULL, '243-242-374', 'mężczyzna');
INSERT INTO `users` VALUES (6, 'Anna', 'Bolec', NULL, '753-127-264', 'kobieta');
INSERT INTO `users` VALUES (7, 'Karolina', 'Figala', NULL, '726-537-243', 'kobieta');
INSERT INTO `users` VALUES (8, 'Jan', 'Kowalski', 'jankowalski2000@gmail.com', '463-245-325', 'mężczyzna');
INSERT INTO `users` VALUES (9, 'Kacper', 'Solarski', 'kapi21@onet.pl', '672-642-483', 'mężczyzna');
INSERT INTO `users` VALUES (10, 'Janusz', 'Wąs', NULL, '783-246-342', 'mężczyzna');
INSERT INTO `users` VALUES (11, 'Janina', 'Bąk', NULL, '823-987-324', 'kobieta');
INSERT INTO `users` VALUES (12, 'Olga', 'Brzoza', NULL, '791-365-843', 'kobieta');
INSERT INTO `users` VALUES (13, 'Marcin', 'Wczesny', NULL, '987-321-754', 'mężczyzna');
INSERT INTO `users` VALUES (14, 'Michał', 'Kozak', NULL, '753-874-362', 'mężczyzna');
INSERT INTO `users` VALUES (15, 'Bartosz', 'Niedźwiedź', NULL, '764-382-645', 'mężczyzna');
INSERT INTO `users` VALUES (16, 'Tadeusz', 'Śmiały', NULL, '654-361-237', 'mężczyzna');
INSERT INTO `users` VALUES (17, 'Olga', 'Kos', NULL, '864-632-462', 'kobieta');
INSERT INTO `users` VALUES (18, 'Mariola', 'Kosowska', NULL, '874-236-482', 'kobieta');
INSERT INTO `users` VALUES (19, 'Zofia', 'Kwarc', NULL, '328-473-274', 'kobieta');
INSERT INTO `users` VALUES (20, 'Arkadiusz', 'Kędra', NULL, '784-236-426', 'mężczyzna');
INSERT INTO `users` VALUES (21, 'Wojciech', 'Kłos', NULL, '783-287-422', 'mężczyzna');
INSERT INTO `users` VALUES (22, 'Karol', 'Chwieja', 'karolek@gmail.com', '546-384-527', 'mężczyzna');
INSERT INTO `users` VALUES (23, 'Kazimierz', 'Bolec', 'bolcus2203@gmail.com', '678-326-432', 'mężczyzna');
INSERT INTO `users` VALUES (24, 'Stanisław', 'Marzec', 'marcula2313@onet.pl', '267-493-621', 'mężczyzna');
INSERT INTO `users` VALUES (25, 'Jan', 'Bąk', 'root@wp.pl', '776-428-342', 'mężczyzna');
INSERT INTO `users` VALUES (26, 'Kornel', 'Januszek', 'root122@vp.pl', '853-821-743', 'mężczyzna');
INSERT INTO `users` VALUES (27, 'Kamila', 'Poręcz', 'kamisia@vp.pl', '754-732-831', 'kobieta');
INSERT INTO `users` VALUES (28, 'Piotr', 'Kordon', 'piotr@kordo.pl', '765-437-282', 'mężczyzna');
INSERT INTO `users` VALUES (29, 'Kamil', 'Czepek', 'kamilo223@wp.pl', '123-456-789', 'mężczyzna');
INSERT INTO `users` VALUES (30, 'Kamil', 'Dereń', 'kamil.deren.2001@gmail.com', '674-382-912', 'mężczyzna');
INSERT INTO `users` VALUES (31, 'Patryk', 'Kolba', 'patryczekxd@gmail.com', '876-547-382', 'mężczyzna');
INSERT INTO `users` VALUES (32, 'Karol', 'Chwieja', 'karolek2122@gmail.com', '678-392-643', 'mężczyzna');
INSERT INTO `users` VALUES (33, 'Robert', 'Pasut', 'robcio764@vp.pl', '784-356-284', 'mężczyzna');
INSERT INTO `users` VALUES (34, 'Karol', 'Niezdara', 'kaorlek@gmail.com', '764-982-093', 'mężczyzna');
INSERT INTO `users` VALUES (35, 'Olaf', 'Rabat', 'dasda@gmail.com', '123-456-789', 'mężczyzna');
INSERT INTO `users` VALUES (45, 'Karol', 'Niedzielski', 'kaorlek@gmail.com', '746-362-812', 'mężczyzna');
INSERT INTO `users` VALUES (46, 'Piotr', 'Parada', 'parada@gmail.com', '986-763-542', 'mężczyzna');
INSERT INTO `users` VALUES (47, 'Czarek', 'Niedola', 'dolla@wp.pl', '984-095-673', 'mężczyzna');
INSERT INTO `users` VALUES (48, 'Karol', 'Poniedziałek', 'koarolek203@gmail.com', '123-456-789', 'mężczyzna');

-- ----------------------------
-- Table structure for vehicles_types
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_types`;
CREATE TABLE `vehicles_types`  (
  `id_vehicle_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
-- Procedure structure for add_customer
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_customer`;
delimiter ;;
CREATE PROCEDURE `add_customer`(IN v_first_name varchar(255),IN v_last_name varchar(255),IN v_email varchar(255),IN v_phone_number varchar(255),IN v_sex tinyint, IN v_password varchar(255))
BEGIN
	START TRANSACTION;
	
	SET @last_insert_id := 0;
	SELECT @last_insert_id := MAX(id_user) FROM users;
	
	INSERT INTO users(first_name, last_name, email, phone_number, sex)
	VALUES(v_first_name, v_last_name, v_email, v_phone_number, v_sex);
	
	INSERT INTO accounts(login, `password`, id_user)
	VALUES(CONCAT(v_first_name,v_last_name), v_password, @last_insert_id+1);
	
	INSERT INTO customers(id_user)
	VALUES (@last_insert_id+1);
	
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
	
	SET @last_insert_id := 0;
	
	SELECT @last_insert_id := MAX(id_user)
	FROM users;
	
	INSERT INTO users(first_name, last_name, email, phone_number, sex)
	VALUES(v_first_name, v_last_name, v_email, v_phone_number, v_sex);
	
	INSERT INTO accounts(login, `password`, id_user)
	VALUES(CONCAT(v_first_name,v_last_name), v_password, @last_insert_id+1);
	
	INSERT INTO delivery_persons(id_vehicle_type, id_user)
	VALUES (v_id_vehicle_type, @last_insert_id+1);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_doughs
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_doughs`;
delimiter ;;
CREATE PROCEDURE `add_doughs`(IN v_dough varchar(255), IN v_price double)
BEGIN
	INSERT INTO doughs(dough, price)
	VALUES(v_dough, v_price);
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
-- Procedure structure for add_image_to_review
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_image_to_review`;
delimiter ;;
CREATE PROCEDURE `add_image_to_review`(IN `v_image` longblob, IN `v_id_review` int)
BEGIN
	START TRANSACTION;
	
	SET @last_id_image := 0;
	SELECT @last_id_image := MAX(id_image) FROM images;
	
	INSERT INTO images(image)
	VALUES (v_image);
	
	INSERT INTO reviews_images(id_review, id_image)
	VALUES (v_id_review, @last_id_image+1);
	
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ingredient
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ingredient`;
delimiter ;;
CREATE PROCEDURE `add_ingredient`(IN `v_ingredient` varchar(255),IN `v_is_hot` tinyint,IN `v_price` double,IN `v_image` blob,IN `v_id_ingredient_type` int)
BEGIN
	INSERT INTO ingredients(ingredient, is_hot, price, image, id_ingredient_type)
	VALUES (v_ingredient, v_is_hot, v_price, v_image, v_id_ingredient_type);
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
	INSERT INTO ingredient_types(type)
	VALUES (v_type);
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
	
	SET @last_insert_id := 0;
	SELECT @last_insert_id := MAX(id_user) FROM users;
	
	INSERT INTO users(first_name, last_name, email, phone_number, sex)
	VALUES(v_first_name, v_last_name, v_email, v_phone_number, v_sex);
	
	INSERT INTO accounts(login, `password`, id_user)
	VALUES(CONCAT(v_first_name,v_last_name), v_password, @last_insert_id+1);
	
	INSERT INTO managers(id_user)
	VALUES (@last_insert_id+1);
	
	COMMIT;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_ordered_pizza
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_ordered_pizza`;
delimiter ;;
CREATE PROCEDURE `add_ordered_pizza`(IN `v_quantity` int,IN `v_id_pizza` int)
BEGIN
	SET @final := 0;
	SELECT @final := final_price FROM pizza WHERE id_pizza = v_id_pizza;
	INSERT ordered_pizzas(quantity, price, id_pizza)
	VALUES(v_quantity, @final * v_quantity, v_id_pizza);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_pizza
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_pizza`;
delimiter ;;
CREATE PROCEDURE `add_pizza`(IN `v_pizza` varchar(255),IN `v_id_dough` int,IN `v_id_size` int,IN `v_id_sauce` int)
BEGIN
#
	SET @final := 0;
	SET @tmp := 0;
	
	SELECT @tmp := doughs.price FROM doughs WHERE doughs.id_dough = v_id_dough;
	SET @final := @final + @tmp;
	
	SELECT @tmp := size.price FROM size WHERE size.id_size = v_id_size;
	SET @final := @final + @tmp;
	
	SELECT @tmp := sauces.price FROM sauces WHERE sauces.id_sauce = v_id_sauce;
	SET @final := @final + @tmp;
	
	#dodać cene za każdy składnik GROUP BY, SUM
	
#
	
	INSERT INTO pizza(pizza, id_dough, id_size, id_sauce, final_price)
	VALUES (v_pizza, v_id_dough, v_id_size, v_id_sauce, @final);
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
	INSERT INTO pizzas_ingredients(id_pizza, id_ingredient)
	VALUES (v_id_pizza, v_id_ingredient);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_review
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_review`;
delimiter ;;
CREATE PROCEDURE `add_review`(IN `v_message` longtext,IN `v_score` int,IN `v_id_order` int, IN `v_image` longblob)
BEGIN
	START TRANSACTION;

	SET @last_insert_id_image := 0;
	SELECT @last_insert_id_image := MAX(id_image) FROM images;
	
	SET @last_insert_id_review := 0;
	SELECT @last_insert_id_review := MAX(id_review) FROM reviews;
	
	
	INSERT INTO images(image)
	VALUES (v_image);
	
	INSERT INTO reviews(message, score, id_order)
	VALUES (v_message, v_score, v_id_order);
	
	INSERT INTO reviews_images(id_review, id_image)
	VALUES (@last_insert_id_review+1, @last_insert_id_image+1);
	
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
	INSERT INTO sauces(sauce, price)
	VALUES (v_sauce, v_price);
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
	INSERT INTO sizes(diameter, price)
	VALUES (v_diameter, v_price);
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
-- Procedure structure for del_review
-- ----------------------------
DROP PROCEDURE IF EXISTS `del_review`;
delimiter ;;
CREATE PROCEDURE `del_review`(IN `v_id_review` int)
BEGIN
	START TRANSACTION;
	
	SET @id_image_to_del := 0;
	
	SELECT @id_image_to_del := id_image
	FROM reviews_images
	WHERE id_review = v_id_review;
	
	DELETE FROM images
	WHERE id_image = @id_image_to_del;
	
	DELETE FROM reviews
	WHERE id_review = v_id_review;
	
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
-- Function structure for funkcja
-- ----------------------------
DROP FUNCTION IF EXISTS `funkcja`;
delimiter ;;
CREATE FUNCTION `funkcja`(x int)
 RETURNS int(11)
BEGIN
DECLARE i int;
DECLARE j int;
set j = 1;
set i = 1;

FOR z in 1 .. x DO
set i:=i*j;
END FOR;

RETURN i;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for sin
-- ----------------------------
DROP FUNCTION IF EXISTS `sin`;
delimiter ;;
CREATE FUNCTION `sin`(x double)
 RETURNS double
BEGIN
DECLARE wyraz DOUBLE;
DECLARE kwadrat DOUBLE;
DECLARE suma DOUBLE;
DECLARE n int;
set wyraz = x;
set kwadrat = x*x;
set suma = x;
set n = 1;

WHILE n<10 DO
	set wyraz := wyraz *(-kwadrat/2*n*(2*n+1));
	set suma:=wyraz;
	set n:=n+1;
END WHILE;

RETURN suma;

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
DROP TRIGGER IF EXISTS `doughsPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `doughsPriceCorrectI` BEFORE INSERT ON `doughs` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsDoughCorrectI`;
delimiter ;;
CREATE TRIGGER `doughsDoughCorrectI` BEFORE INSERT ON `doughs` FOR EACH ROW BEGIN
	SET new.dough = LOWER(new.dough);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `doughsPriceCorrectU` BEFORE UPDATE ON `doughs` FOR EACH ROW BEGIN
	SET new.price = truncate(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table doughs
-- ----------------------------
DROP TRIGGER IF EXISTS `doughsDoughCorrectU`;
delimiter ;;
CREATE TRIGGER `doughsDoughCorrectU` BEFORE UPDATE ON `doughs` FOR EACH ROW BEGIN
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
DROP TRIGGER IF EXISTS `saucesSauceCorrectI`;
delimiter ;;
CREATE TRIGGER `saucesSauceCorrectI` BEFORE INSERT ON `sauces` FOR EACH ROW BEGIN
	SET new.sauce = LOWER(new.sauce);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesPriceCorrectI`;
delimiter ;;
CREATE TRIGGER `saucesPriceCorrectI` BEFORE INSERT ON `sauces` FOR EACH ROW BEGIN
	SET new.price = TRUNCATE(new.price, 2);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesSauceCorrectU`;
delimiter ;;
CREATE TRIGGER `saucesSauceCorrectU` BEFORE UPDATE ON `sauces` FOR EACH ROW BEGIN
	SET new.sauce = LOWER(new.sauce);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sauces
-- ----------------------------
DROP TRIGGER IF EXISTS `saucesPriceCorrectU`;
delimiter ;;
CREATE TRIGGER `saucesPriceCorrectU` BEFORE UPDATE ON `sauces` FOR EACH ROW BEGIN
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
DROP TRIGGER IF EXISTS `usersFirst_nameCorrectI`;
delimiter ;;
CREATE TRIGGER `usersFirst_nameCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	SET new.first_name = CONCAT(UPPER(SUBSTR(new.first_name, 1, 1)),LOWER(SUBSTR(new.first_name, 2)));
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
DROP TRIGGER IF EXISTS `usersPhone_numberCheckIfCorrectI`;
delimiter ;;
CREATE TRIGGER `usersPhone_numberCheckIfCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	IF (LENGTH(new.phone_number) <=> 9) THEN
		SET new.phone_number = CONCAT(SUBSTR(new.phone_number, 1, 3), '-', SUBSTR(new.phone_number, 4, 3), '-', SUBSTR(new.phone_number, 7));
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny numer telefonu!';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `usersEmailCheckIfCorrectI`;
delimiter ;;
CREATE TRIGGER `usersEmailCheckIfCorrectI` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
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
DROP TRIGGER IF EXISTS `usersPhone_numberCheckIfCorrectU`;
delimiter ;;
CREATE TRIGGER `usersPhone_numberCheckIfCorrectU` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	IF (LENGTH(new.phone_number) <=> 9) THEN
		SET new.phone_number = CONCAT(SUBSTR(new.phone_number, 1, 3), '-', SUBSTR(new.phone_number, 4, 3), '-', SUBSTR(new.phone_number, 7));
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Niepoprawny numer telefonu!';
	END IF;
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

SET FOREIGN_KEY_CHECKS = 1;
