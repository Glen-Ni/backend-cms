/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : cms

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 20/10/2018 17:43:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_id` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `modify_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, 11, NULL, '2018-10-14 17:47:36', '2018-10-14 17:47:36');
INSERT INTO `comments` VALUES (3, '1啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, 11, 0, '2018-10-14 20:59:06', '2018-10-14 20:59:06');
INSERT INTO `comments` VALUES (4, '2啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, 11, 0, '2018-10-14 20:59:09', '2018-10-14 20:59:09');
INSERT INTO `comments` VALUES (5, '3啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, 11, 0, '2018-10-14 20:59:11', '2018-10-14 20:59:11');
INSERT INTO `comments` VALUES (6, '4啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, 11, 0, '2018-10-14 20:59:13', '2018-10-14 20:59:13');
INSERT INTO `comments` VALUES (23, '而我二无若', 21, 11, 0, '2018-10-18 21:32:50', '2018-10-18 21:32:50');
INSERT INTO `comments` VALUES (24, '而我二无若', 21, 11, 0, '2018-10-18 21:32:53', '2018-10-18 21:32:53');
INSERT INTO `comments` VALUES (25, '34324', 21, 11, 0, '2018-10-18 21:33:58', '2018-10-18 21:33:58');
INSERT INTO `comments` VALUES (26, '沃尔沃二无', 21, 11, 0, '2018-10-18 21:34:10', '2018-10-18 21:34:10');
INSERT INTO `comments` VALUES (27, '沃尔沃二无', 21, 11, 0, '2018-10-18 21:34:13', '2018-10-18 21:34:13');
INSERT INTO `comments` VALUES (28, 'rwerw', 21, 11, 0, '2018-10-18 21:35:31', '2018-10-18 21:35:31');
INSERT INTO `comments` VALUES (29, '二娃二娃', 21, 11, 0, '2018-10-18 21:48:09', '2018-10-18 21:48:09');
INSERT INTO `comments` VALUES (30, '二娃二娃', 21, 11, 0, '2018-10-18 21:48:12', '2018-10-18 21:48:12');
INSERT INTO `comments` VALUES (31, 'rwerw热熔翁', 21, 11, 0, '2018-10-18 21:50:56', '2018-10-18 21:50:56');
INSERT INTO `comments` VALUES (32, 'rwerw热熔翁', 21, 11, 0, '2018-10-18 21:52:29', '2018-10-18 21:52:29');
INSERT INTO `comments` VALUES (33, 'rwerw热熔翁', 21, 11, 0, '2018-10-18 21:52:31', '2018-10-18 21:52:31');
INSERT INTO `comments` VALUES (34, 'nim,a', 19, 11, 0, '2018-10-19 15:10:38', '2018-10-19 15:10:38');
INSERT INTO `comments` VALUES (35, '', 19, 11, 0, '2018-10-19 15:12:03', '2018-10-19 15:12:03');
INSERT INTO `comments` VALUES (36, 'werwerwer', 19, 11, 0, '2018-10-19 15:14:25', '2018-10-19 15:14:25');
INSERT INTO `comments` VALUES (37, 'ewerwetretertw', 19, 11, 0, '2018-10-19 15:16:15', '2018-10-19 15:16:15');
INSERT INTO `comments` VALUES (38, 'werwer', 19, 11, 0, '2018-10-19 15:22:14', '2018-10-19 15:22:14');
INSERT INTO `comments` VALUES (39, 'werwertytryt', 19, 11, 0, '2018-10-19 15:22:18', '2018-10-19 15:22:18');
INSERT INTO `comments` VALUES (40, '123124', 19, 11, 0, '2018-10-19 20:55:53', '2018-10-19 20:55:53');

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `modify_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (9, '张三5发的', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '2018-10-13 17:40:58', '2018-10-13 17:40:58');
INSERT INTO `topics` VALUES (10, '我改了啊啊啊啊aa', 'rua啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '2018-10-13 17:41:00', '2018-10-18 15:57:36');
INSERT INTO `topics` VALUES (11, '张三5发的', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '2018-10-13 17:41:31', '2018-10-13 17:41:31');
INSERT INTO `topics` VALUES (12, '张三5发的3', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '2018-10-13 17:41:36', '2018-10-13 17:41:36');
INSERT INTO `topics` VALUES (13, '张三发的', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '2018-10-14 13:09:26', '2018-10-14 13:09:26');
INSERT INTO `topics` VALUES (14, '张三发的2', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '2018-10-14 13:09:29', '2018-10-14 13:09:29');
INSERT INTO `topics` VALUES (15, '张三发的3', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '2018-10-14 13:09:32', '2018-10-14 13:09:32');
INSERT INTO `topics` VALUES (16, '我改了啊啊啊啊aa', '4rua啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '2018-10-14 13:09:33', '2018-10-14 13:14:54');
INSERT INTO `topics` VALUES (17, '张三5发的6', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '2018-10-14 20:47:27', '2018-10-14 20:47:27');
INSERT INTO `topics` VALUES (18, '测试', 'ceshiyixia1', 17, '2018-10-16 19:21:01', '2018-10-16 19:21:01');
INSERT INTO `topics` VALUES (19, '测试第二波rueuor1', '瑞俄日阿诺肉发动机哈家分店苦', 11, '2018-10-17 19:01:10', '2018-10-19 15:22:53');
INSERT INTO `topics` VALUES (21, '21', 'rua啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '2018-10-17 19:10:38', '2018-10-18 16:34:38');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` bit(1) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `modify_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'zhangsan@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan@zs.com', '张三', 'default-avatar.png', b'0', '2018-10-11 20:52:37', '2018-10-11 20:52:37');
INSERT INTO `users` VALUES (2, 'zhangsan2@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan2@zs.com', '张三2', 'default-avatar.png', b'0', '2018-10-11 20:55:16', '2018-10-11 20:55:16');
INSERT INTO `users` VALUES (3, 'zhangsan3@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan3@zs.com', '张三3', 'default-avatar.png', b'0', '2018-10-11 20:59:08', '2018-10-11 20:59:08');
INSERT INTO `users` VALUES (4, 'zhangsan4@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan4@zs.com', '张三4', 'default-avatar.png', b'0', '2018-10-11 21:00:51', '2018-10-11 21:00:51');
INSERT INTO `users` VALUES (5, 'zhangsan5@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan5@zs.com', '张三5', 'default-avatar.png', b'0', '2018-10-11 21:01:38', '2018-10-11 21:01:38');
INSERT INTO `users` VALUES (6, 'zhangsan6@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan6@zs.com', '张三6', 'default-avatar.png', b'0', '2018-10-11 21:02:53', '2018-10-11 21:02:53');
INSERT INTO `users` VALUES (7, 'zhangsan7@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan7@zs.com', '张三7', 'default-avatar.png', b'0', '2018-10-11 21:05:00', '2018-10-11 21:05:00');
INSERT INTO `users` VALUES (8, 'zhangsan8@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan8@zs.com', '张三8', 'default-avatar.png', b'0', '2018-10-11 21:07:25', '2018-10-11 21:07:25');
INSERT INTO `users` VALUES (9, 'zhangsan9@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan9@zs.com', '张三9', 'default-avatar.png', b'0', '2018-10-11 21:08:12', '2018-10-11 21:08:12');
INSERT INTO `users` VALUES (10, 'zhangsan10@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zhangsan10@zs.com', '张三10', 'default-avatar.png', b'0', '2018-10-11 21:09:39', '2018-10-11 21:09:39');
INSERT INTO `users` VALUES (11, 'zs@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs@zs.com', '张三11', 'default-avatar.png', b'0', '2018-10-12 17:51:02', '2018-10-12 17:51:02');
INSERT INTO `users` VALUES (12, 'zs12@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs12@zs.com', '张三12', 'default-avatar.png', b'0', '2018-10-12 19:03:04', '2018-10-12 19:03:04');
INSERT INTO `users` VALUES (13, 'zs13@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs13@zs.com', '张三13', 'default-avatar.png', b'0', '2018-10-12 19:11:29', '2018-10-12 19:11:29');
INSERT INTO `users` VALUES (15, 'zs5@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs5@zs.com', '张三x5', 'default-avatar.png', b'0', '2018-10-13 17:27:39', '2018-10-13 17:27:39');
INSERT INTO `users` VALUES (16, 'undefined', '8add17102ed680d0c84b756c9ea173dc', 'undefined', 'undefined', 'default-avatar.png', b'0', '2018-10-16 19:07:05', '2018-10-16 19:07:05');
INSERT INTO `users` VALUES (17, 'zstest@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zstest@zs.com', '张三rua', 'default-avatar.png', b'0', '2018-10-16 19:15:38', '2018-10-16 19:15:38');

SET FOREIGN_KEY_CHECKS = 1;
