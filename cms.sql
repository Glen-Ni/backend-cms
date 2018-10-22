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

 Date: 22/10/2018 21:45:37
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
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `comments` VALUES (41, '楼主说的对啊', 9, 11, 0, '2018-10-21 21:26:21', '2018-10-21 21:26:21');
INSERT INTO `comments` VALUES (42, '楼主说得好啊啊啊啊啊啊啊啊啊', 10, 11, 0, '2018-10-22 15:22:56', '2018-10-22 15:22:56');
INSERT INTO `comments` VALUES (43, 'sdfserewtqewt', 66, 11, 0, '2018-10-22 17:08:23', '2018-10-22 17:08:23');
INSERT INTO `comments` VALUES (44, 'erwerwer', 66, 11, 0, '2018-10-22 17:15:28', '2018-10-22 17:15:28');
INSERT INTO `comments` VALUES (45, 'werwerwet', 66, 11, 0, '2018-10-22 17:17:57', '2018-10-22 17:17:57');
INSERT INTO `comments` VALUES (47, '楼主说得对', 68, 11, 0, '2018-10-22 20:30:52', '2018-10-22 20:30:52');
INSERT INTO `comments` VALUES (48, '楼主说得对', 68, 11, 0, '2018-10-22 20:30:53', '2018-10-22 20:30:53');
INSERT INTO `comments` VALUES (52, '撒旦法恩发二娃', 68, 11, 0, '2018-10-22 20:34:56', '2018-10-22 20:34:56');
INSERT INTO `comments` VALUES (53, '小僵尸rua！！！', 66, 21, 0, '2018-10-22 20:36:35', '2018-10-22 20:36:35');
INSERT INTO `comments` VALUES (54, '我小僵尸有话要说', 68, 21, 0, '2018-10-22 21:24:57', '2018-10-22 21:24:57');
INSERT INTO `comments` VALUES (55, '多人博客23432', 68, 21, 0, '2018-10-22 21:25:05', '2018-10-22 21:25:05');
INSERT INTO `comments` VALUES (56, '定义和用法\n<textarea> 标签定义多行的文本输入控件。\n\n文本区中可容纳无限数量的文本，其中的文本的默认字体是等宽字体（通常是 Courier）。\n\n可以通过 cols 和 rows 属性来规定 textarea 的尺寸，不过更好的办法是使用 CSS 的 height 和 width 属性。\n\n注释：在文本输入区内的文本行间，用 \"%OD%OA\" （回车/换行）进行分隔。\n\n提示：可以通过 <textarea> 标签的 wrap 属性设置文本输入区内的换行模式。有关 wrap 属性的详细信息。', 69, 21, 0, '2018-10-22 21:31:11', '2018-10-22 21:31:11');
INSERT INTO `comments` VALUES (57, '定义和用法\n<textarea> 标签定义多行的文本输入控件。', 69, 21, 0, '2018-10-22 21:32:07', '2018-10-22 21:32:07');

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `modify_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (9, '张三5发的', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '张三x5', '2018-10-13 17:40:58', '2018-10-22 20:23:03');
INSERT INTO `topics` VALUES (10, '我改了啊啊啊啊aa', 'rua啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '张三x5', '2018-10-13 17:41:00', '2018-10-22 20:23:06');
INSERT INTO `topics` VALUES (11, '张三5发的', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '张三x5', '2018-10-13 17:41:31', '2018-10-22 20:23:07');
INSERT INTO `topics` VALUES (12, '张三5发的3', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 15, '张三x5', '2018-10-13 17:41:36', '2018-10-22 20:23:08');
INSERT INTO `topics` VALUES (13, '张三发的', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-14 13:09:26', '2018-10-22 20:19:36');
INSERT INTO `topics` VALUES (14, '张三发的2', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-14 13:09:29', '2018-10-22 20:19:39');
INSERT INTO `topics` VALUES (15, '张三发的3', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-14 13:09:32', '2018-10-22 20:19:40');
INSERT INTO `topics` VALUES (16, '我改了啊啊啊啊aa', '4rua啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-14 13:09:33', '2018-10-22 20:19:41');
INSERT INTO `topics` VALUES (17, '张三5发的6', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-14 20:47:27', '2018-10-22 20:19:42');
INSERT INTO `topics` VALUES (18, '测试', 'ceshiyixia1', 17, '张三11', '2018-10-16 19:21:01', '2018-10-22 20:19:42');
INSERT INTO `topics` VALUES (21, '21', 'rua啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-17 19:10:38', '2018-10-22 20:20:00');
INSERT INTO `topics` VALUES (24, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:34', '2018-10-22 20:20:01');
INSERT INTO `topics` VALUES (25, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:35', '2018-10-22 20:20:03');
INSERT INTO `topics` VALUES (26, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:37', '2018-10-22 20:20:04');
INSERT INTO `topics` VALUES (27, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:38', '2018-10-22 20:20:04');
INSERT INTO `topics` VALUES (28, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:38', '2018-10-22 20:20:05');
INSERT INTO `topics` VALUES (29, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:39', '2018-10-22 20:20:06');
INSERT INTO `topics` VALUES (31, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:40', '2018-10-22 20:20:23');
INSERT INTO `topics` VALUES (32, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:40', '2018-10-22 20:20:25');
INSERT INTO `topics` VALUES (33, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:41', '2018-10-22 20:20:25');
INSERT INTO `topics` VALUES (34, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:41', '2018-10-22 20:20:26');
INSERT INTO `topics` VALUES (35, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:42', '2018-10-22 20:20:27');
INSERT INTO `topics` VALUES (36, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:56', '2018-10-22 20:20:28');
INSERT INTO `topics` VALUES (37, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:56', '2018-10-22 20:20:29');
INSERT INTO `topics` VALUES (38, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:58', '2018-10-22 20:20:29');
INSERT INTO `topics` VALUES (39, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:58', '2018-10-22 20:20:30');
INSERT INTO `topics` VALUES (40, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:59', '2018-10-22 20:20:31');
INSERT INTO `topics` VALUES (41, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:52:59', '2018-10-22 20:20:32');
INSERT INTO `topics` VALUES (42, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:00', '2018-10-22 20:20:32');
INSERT INTO `topics` VALUES (43, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:00', '2018-10-22 20:20:36');
INSERT INTO `topics` VALUES (44, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:01', '2018-10-22 20:20:36');
INSERT INTO `topics` VALUES (45, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:11', '2018-10-22 20:20:37');
INSERT INTO `topics` VALUES (46, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:12', '2018-10-22 20:20:37');
INSERT INTO `topics` VALUES (47, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:12', '2018-10-22 20:20:38');
INSERT INTO `topics` VALUES (48, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:13', '2018-10-22 20:20:39');
INSERT INTO `topics` VALUES (49, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:13', '2018-10-22 20:20:39');
INSERT INTO `topics` VALUES (50, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:13', '2018-10-22 20:20:40');
INSERT INTO `topics` VALUES (51, '张三发的测试', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:15', '2018-10-22 20:20:41');
INSERT INTO `topics` VALUES (52, '张三发的测试51', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:24', '2018-10-22 20:20:41');
INSERT INTO `topics` VALUES (53, '张三发的测试52', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:27', '2018-10-22 20:20:42');
INSERT INTO `topics` VALUES (54, '张三发的测试53', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:30', '2018-10-22 20:20:43');
INSERT INTO `topics` VALUES (55, '张三发的测试54', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:33', '2018-10-22 20:20:44');
INSERT INTO `topics` VALUES (56, '张三发的测试55', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:35', '2018-10-22 20:20:44');
INSERT INTO `topics` VALUES (57, '张三发的测试56', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:38', '2018-10-22 20:20:45');
INSERT INTO `topics` VALUES (58, '张三发的测试57', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:41', '2018-10-22 20:20:46');
INSERT INTO `topics` VALUES (59, '张三发的测试58', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:44', '2018-10-22 20:20:46');
INSERT INTO `topics` VALUES (60, '张三发的测试59', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:47', '2018-10-22 20:20:48');
INSERT INTO `topics` VALUES (61, '张三发的测试60', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:54', '2018-10-22 20:20:49');
INSERT INTO `topics` VALUES (62, '张三发的测试61', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:57', '2018-10-22 20:20:49');
INSERT INTO `topics` VALUES (63, '张三发的测试62', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:53:59', '2018-10-22 20:20:50');
INSERT INTO `topics` VALUES (64, '张三发的测试63', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:54:02', '2018-10-22 20:20:51');
INSERT INTO `topics` VALUES (65, '张三发的测试63', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:54:09', '2018-10-22 20:20:52');
INSERT INTO `topics` VALUES (66, '张三发的测试63', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 16:56:20', '2018-10-22 20:20:53');
INSERT INTO `topics` VALUES (68, '张三5发的测试68', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 11, '张三11', '2018-10-22 20:28:12', '2018-10-22 20:28:12');
INSERT INTO `topics` VALUES (69, '我小僵尸有话要说', '我小僵尸有话要说才怪', 21, '小僵尸', '2018-10-22 21:26:33', '2018-10-22 21:26:33');
INSERT INTO `topics` VALUES (70, '这么不行', '深粉色天气问题请问', 21, '小僵尸', '2018-10-22 21:27:36', '2018-10-22 21:27:36');
INSERT INTO `topics` VALUES (71, '哎呀终于搞出来了', '定义和用法\n<textarea> 标签定义多行的文本输入控件。\n\n文本区中可容纳无限数量的文本，其中的文本的默认字体是等宽字体（通常是 Courier）。\n\n可以通过 cols 和 rows 属性来规定 textarea 的尺寸，不过更好的办法是使用 CSS 的 height 和 width 属性。\n\n注释：在文本输入区内的文本行间，用 \"%OD%OA\" （回车/换行）进行分隔。\n\n提示：可以通过 <textarea> 标签的 wrap 属性设置文本输入区内的换行模式。有关 wrap 属性的详细信息。', 21, '小僵尸', '2018-10-22 21:30:56', '2018-10-22 21:30:56');

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `users` VALUES (17, 'zstest@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zstest@zs.com', '张三rua', 'default-avatar.png', b'0', '2018-10-16 19:15:38', '2018-10-16 19:15:38');
INSERT INTO `users` VALUES (18, 'zs99@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs99@zs.com', '长高高', 'default-avatar.png', b'0', '2018-10-21 19:02:37', '2018-10-21 19:02:37');
INSERT INTO `users` VALUES (19, 'zs89@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs89@zs.com', '挼！', 'default-avatar.png', b'0', '2018-10-21 19:05:54', '2018-10-21 19:05:54');
INSERT INTO `users` VALUES (20, 'zs90@zs.com', '14e1b600b1fd579f47433b88e8d85291', 'zs90@zs.com', 'sklfjkjskdf', 'default-avatar.png', b'0', '2018-10-21 19:21:30', '2018-10-21 19:21:30');
INSERT INTO `users` VALUES (21, 'rua@rua.com', '14e1b600b1fd579f47433b88e8d85291', 'rua@rua.com', '小僵尸', 'default-avatar.png', b'0', '2018-10-22 20:35:42', '2018-10-22 20:35:42');

SET FOREIGN_KEY_CHECKS = 1;
