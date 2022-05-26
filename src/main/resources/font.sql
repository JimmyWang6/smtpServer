/*
 Navicat Premium Data Transfer

 Source Server         : 115.159.79.75
 Source Server Type    : MySQL
 Source Server Version : 50649
 Source Host           : 115.159.79.75:3306
 Source Schema         : font

 Target Server Type    : MySQL
 Target Server Version : 50649
 File Encoding         : 65001

 Date: 28/12/2020 14:59:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `file_info_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '附件表主键，编号',
  `contract_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合同基本信息主键，合同号',
  `file_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件URL',
  `description_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` decimal(12,2) DEFAULT NULL COMMENT '文件大小（kb）',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `is_delete` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`file_info_id`) USING BTREE,
  KEY `FK_Relationship_23` (`contract_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of file_info
-- ----------------------------
BEGIN;
INSERT INTO `file_info` VALUES ('086e916c-aec5-4be2-a302-11dd0bcc8e13', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/fenf7ga79m106.png', NULL, 1509.00, 'fen.png', '2020-12-25 17:37:30', '2020-12-25 17:37:30', NULL, NULL);
INSERT INTO `file_info` VALUES ('0e3e4bc2-b783-4f6a-a0c6-6620e5d79049', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/3ythyu6zjuh.png', NULL, 134085.00, '3.png', '2020-12-28 14:24:22', '2020-12-28 14:24:22', NULL, NULL);
INSERT INTO `file_info` VALUES ('12aff55f-0669-4196-8cdb-b5e3446c5822', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hdp2yycoc9x9.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 16:14:00', '2020-12-25 16:14:00', NULL, NULL);
INSERT INTO `file_info` VALUES ('16985954-652d-4e7e-b4ea-4b5b864780c4', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/girlfb4ov3eyt0.png', NULL, 1172.00, 'girl.png', '2020-12-25 16:29:36', '2020-12-25 16:29:36', NULL, NULL);
INSERT INTO `file_info` VALUES ('23766731-7dd7-4cf9-84ad-01bd232c6d6f', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/7o93e26lace.png', NULL, 102343.00, '7.png', '2020-12-28 14:25:27', '2020-12-28 14:25:27', NULL, NULL);
INSERT INTO `file_info` VALUES ('25203d04-125b-4c95-ba1b-69c9e6a44add', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/fenwuv3soka4c.png', NULL, 1509.00, 'fen.png', '2020-12-25 17:52:36', '2020-12-25 17:52:36', NULL, NULL);
INSERT INTO `file_info` VALUES ('2f79f94d-0722-4aa0-9717-900ac97b0ff7', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/delkgl6o1wobz.png', NULL, 425.00, 'del.png', '2020-12-25 16:28:49', '2020-12-25 16:28:49', NULL, NULL);
INSERT INTO `file_info` VALUES ('31f528c3-dd22-4d05-b2bd-cadbfcdeb4fa', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/6tt2i9wnw37.png', NULL, 112400.00, '6.png', '2020-12-28 14:26:36', '2020-12-28 14:26:36', NULL, NULL);
INSERT INTO `file_info` VALUES ('3e9e6884-faa2-4d04-be9a-69805b166ec3', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/7lsjti9mykl.png', NULL, 102343.00, '7.png', '2020-12-28 14:52:59', '2020-12-28 14:52:59', NULL, NULL);
INSERT INTO `file_info` VALUES ('53d51ceb-ba7d-414c-bddd-33ab2d1547b0', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/29twf33akv7.png', NULL, 102254.00, '2.png', '2020-12-28 14:50:14', '2020-12-28 14:50:14', NULL, NULL);
INSERT INTO `file_info` VALUES ('5676dc26-45ce-4b88-b7a1-2f867095826c', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/643whg2r4kd.png', NULL, 112400.00, '6.png', '2020-12-25 18:19:25', '2020-12-25 18:19:25', NULL, NULL);
INSERT INTO `file_info` VALUES ('64418f23-cccd-4774-891c-7a66d8cb1ff4', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/7dwh1ljw00i.png', NULL, 102343.00, '7.png', '2020-12-28 14:36:54', '2020-12-28 14:36:54', NULL, NULL);
INSERT INTO `file_info` VALUES ('67ab7ec2-e480-4bb1-97a0-9ff80210bb69', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/cardyu5wt4qwx3.png', NULL, 559.00, 'card.png', '2020-12-25 17:58:17', '2020-12-25 17:58:17', NULL, NULL);
INSERT INTO `file_info` VALUES ('73c1734a-56bb-40d8-9f26-d6bba8db5dd9', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/6c0hdcq3p6o.png', NULL, 112400.00, '6.png', '2020-12-27 16:57:33', '2020-12-27 16:57:33', NULL, NULL);
INSERT INTO `file_info` VALUES ('7cf71e71-dd35-4ab6-8efd-d75147528408', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/7rhskzsv41t.png', NULL, 102343.00, '7.png', '2020-12-28 14:50:07', '2020-12-28 14:50:07', NULL, NULL);
INSERT INTO `file_info` VALUES ('7e07208c-09f3-413f-a283-dcc365f654b5', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/767wexwsa6g.png', NULL, 102343.00, '7.png', '2020-12-28 14:33:52', '2020-12-28 14:33:52', NULL, NULL);
INSERT INTO `file_info` VALUES ('8318209f-0096-4efa-8f7a-660fe6638c05', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hd27s023emir.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 15:59:38', '2020-12-25 15:59:38', NULL, NULL);
INSERT INTO `file_info` VALUES ('84f73b85-8d21-4ed5-961a-b2ad1450a920', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/girld0vj6tzj5u.png', NULL, 1172.00, 'girl.png', '2020-12-25 17:59:55', '2020-12-25 17:59:55', NULL, NULL);
INSERT INTO `file_info` VALUES ('92bc13ea-7250-44f1-9797-f9f64f732dbd', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/6cl8x3rppii.png', NULL, 112400.00, '6.png', '2020-12-28 14:35:54', '2020-12-28 14:35:54', NULL, NULL);
INSERT INTO `file_info` VALUES ('93483498-d3e7-41e7-b6b3-dc5537093130', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/delqzfkf8iu5j.png', NULL, 425.00, 'del.png', '2020-12-25 18:00:26', '2020-12-25 18:00:26', NULL, NULL);
INSERT INTO `file_info` VALUES ('99cb037f-c7d7-4af7-b46a-e04cfb122a6e', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hd0b70vfeh4c.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 16:16:09', '2020-12-25 16:16:09', NULL, NULL);
INSERT INTO `file_info` VALUES ('b4a01313-268e-488e-afc5-1499582953ed', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/delm31t4y7xwg.png', NULL, 425.00, 'del.png', '2020-12-25 17:59:50', '2020-12-25 17:59:50', NULL, NULL);
INSERT INTO `file_info` VALUES ('b6c4ea0a-c969-4c45-a46b-89cc18878c38', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/1c7u8083xr8.png', NULL, 78002.00, '1.png', '2020-12-28 14:53:08', '2020-12-28 14:53:08', NULL, NULL);
INSERT INTO `file_info` VALUES ('ba0dc26e-e387-48c0-994f-4dab6f968b83', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/blanklyj3sgdrdu.png', NULL, 2718.00, 'blank.png', '2020-12-25 16:17:08', '2020-12-25 16:17:08', NULL, NULL);
INSERT INTO `file_info` VALUES ('c6659562-0f64-43d6-ab40-eecbe986f9c1', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/50jdz3zsose.png', NULL, 102871.00, '5.png', '2020-12-25 18:19:48', '2020-12-25 18:19:48', NULL, NULL);
INSERT INTO `file_info` VALUES ('cb9bae1d-90e2-410f-9237-4857b5140662', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/6udye0lrrva.png', NULL, 112400.00, '6.png', '2020-12-25 18:17:07', '2020-12-25 18:17:07', NULL, NULL);
INSERT INTO `file_info` VALUES ('cd087294-0a18-4997-bc87-074bee2f0512', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/7o7czt60s8v.png', NULL, 102343.00, '7.png', '2020-12-28 14:29:23', '2020-12-28 14:29:23', NULL, NULL);
INSERT INTO `file_info` VALUES ('cf2d2a03-2933-4fdf-899d-7fe5c356f401', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hd96elfqcuai.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 16:11:12', '2020-12-25 16:11:12', NULL, NULL);
INSERT INTO `file_info` VALUES ('d403e9dd-dba3-4276-9f5a-090caaef9050', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hdcxm1bhonkw.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 16:16:56', '2020-12-25 16:16:56', NULL, NULL);
INSERT INTO `file_info` VALUES ('d4ba84c2-5024-46d1-a764-1fb57fa815a7', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hdj1vjyh0t55.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 16:14:47', '2020-12-25 16:14:47', NULL, NULL);
INSERT INTO `file_info` VALUES ('d5f62ed8-8d4c-4ed2-8b21-b7563397d855', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/51mn5h9v9ga.png', NULL, 102871.00, '5.png', '2020-12-28 14:52:23', '2020-12-28 14:52:23', NULL, NULL);
INSERT INTO `file_info` VALUES ('e1839930-09fd-4490-bad7-75ed9a41efb7', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/111605862951_.pic_hdwahgryd7wq.jpg', NULL, 145514.00, '111605862951_.pic_hd.jpg', '2020-12-25 16:09:53', '2020-12-25 16:09:53', NULL, NULL);
INSERT INTO `file_info` VALUES ('e66eb86c-9221-4720-8b6f-916e93de5a31', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/5iz2a2nnh8l.png', NULL, 102871.00, '5.png', '2020-12-28 14:51:06', '2020-12-28 14:51:06', NULL, NULL);
INSERT INTO `file_info` VALUES ('ebe3a4db-0ebf-4d27-b915-a53505115214', NULL, 'https://test961.oss-cn-beijing.aliyuncs.com/girlnx71zvv85u.png', NULL, 1172.00, 'girl.png', '2020-12-25 16:26:02', '2020-12-25 16:26:02', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `subject_intro` varchar(300) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `a` varchar(50) DEFAULT NULL,
  `b` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of teacher
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES (10, '测试', '', '个人', '图片一张', '测试', '测试', 'https://test961.oss-cn-beijing.aliyuncs.com/6udye0lrrva.png', NULL, NULL);
INSERT INTO `teacher` VALUES (11, '教授', '', '我是教授', '湖南大学周教授', '测试', '测试', 'https://test961.oss-cn-beijing.aliyuncs.com/643whg2r4kd.png', NULL, NULL);
INSERT INTO `teacher` VALUES (12, '教授', '', '大教授', '他也是教授', '测试', '教授', 'https://test961.oss-cn-beijing.aliyuncs.com/50jdz3zsose.png', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
