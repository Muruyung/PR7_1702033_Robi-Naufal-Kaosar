/*
 Navicat Premium Data Transfer

 Source Server         : gabut
 Source Server Type    : MySQL
 Source Server Version : 100136
 Source Host           : localhost:3306
 Source Schema         : kereta_join

 Target Server Type    : MySQL
 Target Server Version : 100136
 File Encoding         : 65001

 Date: 15/04/2019 23:55:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gerbong
-- ----------------------------
DROP TABLE IF EXISTS `gerbong`;
CREATE TABLE `gerbong`  (
  `kd_gerbong` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_kereta` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kd_gerbong`) USING BTREE,
  INDEX `kd_kereta`(`kd_kereta`) USING BTREE,
  CONSTRAINT `gerbong_ibfk_1` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gerbong
-- ----------------------------
INSERT INTO `gerbong` VALUES ('GRB0001', 'KRT0002', 'A01');
INSERT INTO `gerbong` VALUES ('GRB0002', 'KRT0002', 'B01');
INSERT INTO `gerbong` VALUES ('GRB0003', 'KRT0003', 'C01');

-- ----------------------------
-- Table structure for kursi
-- ----------------------------
DROP TABLE IF EXISTS `kursi`;
CREATE TABLE `kursi`  (
  `kd_kursi` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_gerbong` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_kereta` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kd_kursi`) USING BTREE,
  INDEX `kd_kereta`(`kd_kereta`) USING BTREE,
  INDEX `kd_gerbong`(`kd_gerbong`) USING BTREE,
  CONSTRAINT `kursi_ibfk_1` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kursi_ibfk_2` FOREIGN KEY (`kd_gerbong`) REFERENCES `gerbong` (`kd_gerbong`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kursi
-- ----------------------------
INSERT INTO `kursi` VALUES ('KRS0001', 'GRB0001', 'KRT0001');
INSERT INTO `kursi` VALUES ('KRS0002', 'GRB0001', 'KRT0001');

-- ----------------------------
-- Table structure for lokomotif
-- ----------------------------
DROP TABLE IF EXISTS `lokomotif`;
CREATE TABLE `lokomotif`  (
  `kd_kereta` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kd_kereta`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lokomotif
-- ----------------------------
INSERT INTO `lokomotif` VALUES ('KRT0001', 'Argo Wilis');
INSERT INTO `lokomotif` VALUES ('KRT0002', 'MALABAR');
INSERT INTO `lokomotif` VALUES ('KRT0003', 'KURTOJOYO');

SET FOREIGN_KEY_CHECKS = 1;
