/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : bearadmin51

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/03/2020 18:24:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_record
-- ----------------------------
DROP TABLE IF EXISTS `account_record`;
CREATE TABLE `account_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账务记录id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `type` tinyint(2) NOT NULL COMMENT '记账类型 1为收入 2为支出',
  `money` double(32, 0) NOT NULL COMMENT '记账金额',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `is_del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否删除 0为未删除 1为已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) NOT NULL COMMENT '用户',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL',
  `log_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  `log_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES (1, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1584749491);
INSERT INTO `admin_log` VALUES (2, 1, '修改菜单', 'admin/admin_menu/edit/id/19.html', 'POST', '127.0.0.1', 1584749705);
INSERT INTO `admin_log` VALUES (3, 1, '修改菜单', 'admin/admin_menu/edit/id/19.html', 'POST', '127.0.0.1', 1584749756);
INSERT INTO `admin_log` VALUES (4, 1, '修改菜单', 'admin/admin_menu/edit/id/20.html', 'POST', '127.0.0.1', 1584749767);
INSERT INTO `admin_log` VALUES (5, 1, '修改菜单', 'admin/admin_menu/edit/id/26.html', 'POST', '127.0.0.1', 1584749801);
INSERT INTO `admin_log` VALUES (6, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584749994);
INSERT INTO `admin_log` VALUES (7, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584750009);
INSERT INTO `admin_log` VALUES (8, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584750012);
INSERT INTO `admin_log` VALUES (9, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584750015);
INSERT INTO `admin_log` VALUES (10, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584750083);
INSERT INTO `admin_log` VALUES (11, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584750127);
INSERT INTO `admin_log` VALUES (12, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584750314);
INSERT INTO `admin_log` VALUES (13, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584751178);
INSERT INTO `admin_log` VALUES (14, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584751427);
INSERT INTO `admin_log` VALUES (15, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584751459);
INSERT INTO `admin_log` VALUES (16, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584751564);
INSERT INTO `admin_log` VALUES (17, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1584751604);
INSERT INTO `admin_log` VALUES (18, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1584751910);
INSERT INTO `admin_log` VALUES (19, 1, '更新设置', 'admin/setting/update.html', 'POST', '127.0.0.1', 1584751956);
INSERT INTO `admin_log` VALUES (20, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1584786608);
INSERT INTO `admin_log` VALUES (21, 1, '修改菜单', 'admin/admin_menu/edit/id/53.html', 'POST', '127.0.0.1', 1584787206);
INSERT INTO `admin_log` VALUES (22, 1, '修改菜单', 'admin/admin_menu/edit/id/57.html', 'POST', '127.0.0.1', 1584787231);
INSERT INTO `admin_log` VALUES (23, 1, '修改菜单', 'admin/admin_menu/edit/id/61.html', 'POST', '127.0.0.1', 1584787277);
INSERT INTO `admin_log` VALUES (24, 1, '修改菜单', 'admin/admin_menu/edit/id/65.html', 'POST', '127.0.0.1', 1584787326);
INSERT INTO `admin_log` VALUES (25, 1, '修改菜单', 'admin/admin_menu/edit/id/66.html', 'POST', '127.0.0.1', 1584787415);
INSERT INTO `admin_log` VALUES (26, 1, '修改菜单', 'admin/admin_menu/edit/id/70.html', 'POST', '127.0.0.1', 1584787429);
INSERT INTO `admin_log` VALUES (27, 1, '修改菜单', 'admin/admin_menu/edit/id/74.html', 'POST', '127.0.0.1', 1584788332);
INSERT INTO `admin_log` VALUES (28, 1, '修改菜单', 'admin/admin_menu/edit/id/75.html', 'POST', '127.0.0.1', 1584788362);
INSERT INTO `admin_log` VALUES (29, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1584951568);
INSERT INTO `admin_log` VALUES (30, 1, '修改菜单', 'admin/admin_menu/edit/id/75.html', 'POST', '127.0.0.1', 1584954046);
INSERT INTO `admin_log` VALUES (31, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954090);
INSERT INTO `admin_log` VALUES (32, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954094);
INSERT INTO `admin_log` VALUES (33, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954097);
INSERT INTO `admin_log` VALUES (34, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954100);
INSERT INTO `admin_log` VALUES (35, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954103);
INSERT INTO `admin_log` VALUES (36, 1, '修改菜单', 'admin/admin_menu/edit/id/75.html', 'POST', '127.0.0.1', 1584954118);
INSERT INTO `admin_log` VALUES (37, 1, '修改菜单', 'admin/admin_menu/edit/id/76.html', 'POST', '127.0.0.1', 1584954136);
INSERT INTO `admin_log` VALUES (38, 1, '修改菜单', 'admin/admin_menu/edit/id/77.html', 'POST', '127.0.0.1', 1584954154);
INSERT INTO `admin_log` VALUES (39, 1, '修改菜单', 'admin/admin_menu/edit/id/78.html', 'POST', '127.0.0.1', 1584954171);
INSERT INTO `admin_log` VALUES (40, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954716);
INSERT INTO `admin_log` VALUES (41, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954719);
INSERT INTO `admin_log` VALUES (42, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954723);
INSERT INTO `admin_log` VALUES (43, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584954908);
INSERT INTO `admin_log` VALUES (44, 1, '修改菜单', 'admin/admin_menu/edit/id/83.html', 'POST', '127.0.0.1', 1584954992);
INSERT INTO `admin_log` VALUES (45, 1, '修改菜单', 'admin/admin_menu/edit/id/84.html', 'POST', '127.0.0.1', 1584955004);
INSERT INTO `admin_log` VALUES (46, 1, '修改菜单', 'admin/admin_menu/edit/id/85.html', 'POST', '127.0.0.1', 1584955022);
INSERT INTO `admin_log` VALUES (47, 1, '修改菜单', 'admin/admin_menu/edit/id/86.html', 'POST', '127.0.0.1', 1584955034);
INSERT INTO `admin_log` VALUES (48, 1, '修改菜单', 'admin/admin_menu/edit/id/83.html', 'POST', '127.0.0.1', 1584955077);
INSERT INTO `admin_log` VALUES (49, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955487);
INSERT INTO `admin_log` VALUES (50, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955491);
INSERT INTO `admin_log` VALUES (51, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955496);
INSERT INTO `admin_log` VALUES (52, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955500);
INSERT INTO `admin_log` VALUES (53, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955617);
INSERT INTO `admin_log` VALUES (54, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955619);
INSERT INTO `admin_log` VALUES (55, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955622);
INSERT INTO `admin_log` VALUES (56, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955626);
INSERT INTO `admin_log` VALUES (57, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955629);
INSERT INTO `admin_log` VALUES (58, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955631);
INSERT INTO `admin_log` VALUES (59, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955635);
INSERT INTO `admin_log` VALUES (60, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955638);
INSERT INTO `admin_log` VALUES (61, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955641);
INSERT INTO `admin_log` VALUES (62, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955744);
INSERT INTO `admin_log` VALUES (63, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955747);
INSERT INTO `admin_log` VALUES (64, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955749);
INSERT INTO `admin_log` VALUES (65, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1584955753);
INSERT INTO `admin_log` VALUES (66, 1, '修改菜单', 'admin/admin_menu/edit/id/99.html', 'POST', '127.0.0.1', 1584955826);
INSERT INTO `admin_log` VALUES (67, 1, '修改菜单', 'admin/admin_menu/edit/id/99.html', 'POST', '127.0.0.1', 1584955865);
INSERT INTO `admin_log` VALUES (68, 1, '修改菜单', 'admin/admin_menu/edit/id/87.html', 'POST', '127.0.0.1', 1584955883);
INSERT INTO `admin_log` VALUES (69, 1, '修改菜单', 'admin/admin_menu/edit/id/91.html', 'POST', '127.0.0.1', 1584955973);
INSERT INTO `admin_log` VALUES (70, 1, '修改菜单', 'admin/admin_menu/edit/id/95.html', 'POST', '127.0.0.1', 1584955988);
INSERT INTO `admin_log` VALUES (71, 1, '修改菜单', 'admin/admin_menu/edit/id/43.html', 'POST', '127.0.0.1', 1584956020);
INSERT INTO `admin_log` VALUES (72, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956743);
INSERT INTO `admin_log` VALUES (73, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956746);
INSERT INTO `admin_log` VALUES (74, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956856);
INSERT INTO `admin_log` VALUES (75, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956916);
INSERT INTO `admin_log` VALUES (76, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956917);
INSERT INTO `admin_log` VALUES (77, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1584956964);
INSERT INTO `admin_log` VALUES (78, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956979);
INSERT INTO `admin_log` VALUES (79, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584956981);
INSERT INTO `admin_log` VALUES (80, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957024);
INSERT INTO `admin_log` VALUES (81, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957247);
INSERT INTO `admin_log` VALUES (82, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957248);
INSERT INTO `admin_log` VALUES (83, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957712);
INSERT INTO `admin_log` VALUES (84, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957714);
INSERT INTO `admin_log` VALUES (85, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957715);
INSERT INTO `admin_log` VALUES (86, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957720);
INSERT INTO `admin_log` VALUES (87, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957803);
INSERT INTO `admin_log` VALUES (88, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957808);
INSERT INTO `admin_log` VALUES (89, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957840);
INSERT INTO `admin_log` VALUES (90, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584957845);
INSERT INTO `admin_log` VALUES (91, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584958406);
INSERT INTO `admin_log` VALUES (92, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584958407);
INSERT INTO `admin_log` VALUES (93, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584958414);
INSERT INTO `admin_log` VALUES (94, 1, '添加员工', 'admin/staff/add.html', 'POST', '127.0.0.1', 1584958475);

-- ----------------------------
-- Table structure for admin_log_data
-- ----------------------------
DROP TABLE IF EXISTS `admin_log_data`;
CREATE TABLE `admin_log_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_log_id` int(11) NOT NULL COMMENT '日志ID',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '日志内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台操作日志数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_log_data
-- ----------------------------
INSERT INTO `admin_log_data` VALUES (1, 1, '55b70f55X3zVeG5vcU4XjO21LG7fX2F4Z4QSo6ALgBV2heF4KAVlFVAkTfjURDXKubxK4P699zaApy2ROMhdytySH36YCOz+uziaysE/YOdQK8y1NfDao5Sf1fYyTx9/yVyDCDuuaGsVUfMXjHYWLoa9zpDvxFvhL21VtXcQdWd19MSQLSOyNOJDAaytXOJiOO5V');
INSERT INTO `admin_log_data` VALUES (2, 2, 'e905d16dZHaCzLhJ88juSnXWcx+nYcimVW8GjKWXqpSnaV3v7J3D6CURcc7glXeytYpbAFElJf+r9R2TDwhISupXahgL4xtDdYBPQ24aCSkhFjGFHxYdAhI9gxCsbyLHymXRdktqMfOoCCc+tounRUZBuaHfDMBeIfCRNJfj7/P1HDS9qRp+oVYoXHvQt4q29EpuVpQ/SG9EcXDdPN6P95tOT2DFlNK+ZBoP2eBD2I6qJcLKY9BbRJBE1pnL9ai3x5S42j20JRN7K+3P88jYtUHTyFsjaDl7yegquqwJEIoUGoofTTaMmliZ/4SWaF5Cacf6PB7pkQzIxw');
INSERT INTO `admin_log_data` VALUES (3, 3, '24309986fbpXmkZgBG+MsgqaxfWYFGUFTeFGDb60HLYp5VGVGzt8Vz60okozQlHYI7FTgbJgB5zE3Rc0FgP/pH5IWWnfDojkxlREfqbSve11zF/Q9plVDq+/eE0wgSjhfy8l35J2DgQfGz/3ei/wpR4t5aHOyzuxX//F5HEa/VazRoyShVChQbuIPpmToK55/B6lknrwt1HjR6PAdRGmi9wIrM1gWyfAjjo6o3MU88AGwI5/WzWVc4xaOgWu+jHqCvWVssb/44HUE7gHhhcjwzyycoyUZ9s2ciA9Oq0+stZhkXm7xB32lUj5m/MRZg2b5MZuBvX0WIUJuA');
INSERT INTO `admin_log_data` VALUES (4, 4, '8dc1f1efqZXW+kpxY6z+t3pSfOuWdfQeR+LABNFCnpFcboHuw4O97M8H10ejd2kMZtpme7CnFMWgp0hpFJPidDfMhrTHHOVI5zId0f9FAL1SQLw3tZNuqLRk6lZVxbmUDjzyLaz+rRTvUlx9+4EQfTKi3Iq1X900OZtJ2BMs9FITvH4FJ92a9U50P5ci5rP9/Lvh9HYpv9T64f9V2PUl3RKDX/eAk/nS3bDsYAuBQrHzIvL4YRz5b6t+zhUI/pXfDtuALxxRN9SS8bu/CMKTqFMpwiDkHCF0Y+UGM/Pf9+Hqqm0R8IKhlLPUDlQ6ZWT7xsy7e60dQexlHQ');
INSERT INTO `admin_log_data` VALUES (5, 5, '01bd64752r23IlFFOGI1tdcmtQrjTwWHPRPcUrBIl82ij34W5Vkdgof/9r97LpkJyRGcwZZnv1vECOq5kboitgllwJ5iSp2buDVh9YHPN0TcciFCSOND4JMz02ILXRP3Qgh799cJVHHGCAvasGuNfHflgWaZBXR0XBrtIR/AIteeFxaIPyytbjEzWozQGLOjJb//euCp6VoKkmvM6xe3njxAwf1uMKOHgRHGCOCiYW5cHPs0OS3ltwOuRAR0dYGu9mbAi1Xb/j6J6NZvQf+DKB0pPT5IzbKb7JZ8IZ6rKH2nN7/GUqIZo05Ubo+kS3oCtx287Qvla3qLnGvArsHsxuRpndER8qtiRGPhtQagng');
INSERT INTO `admin_log_data` VALUES (6, 6, '7b326298ron7uWHYmVTm2o1EI7s5G8+u/N/AgUEMjmfgVlUH8pubqPMin0HjkR6cpCUXH1egcvEZHW1AyntG1Er2A1dvvsQZ39DaBbNuDs7TcoXvaIVb5jXtA6UsqDyOQk+TuXwNBs7piwW8GxlL+kqg/2tJrnw3MvW19XsNk4gUMar2W/7KzdLGVNWDhGKSfFGh1VqxA8vYyPOz7gHkGvXGx83Pb/1O+e2BYK1rWkZ5QoeUTz/IoTWDBrJlkSU+6+Qjmw/eY8GwMGYTdvWYOG4ZbvRjlgzQChXg2El1WzCpHkQ/opwNfOP49JNlGEkkm3L0qQdohPLSpyvRdJ3W');
INSERT INTO `admin_log_data` VALUES (7, 7, 'cc974ba8GgKV3H1qe+dkJyZCZkHkI8QPfSbvLUTzIZmB/DNXFKXB7FQGnQ');
INSERT INTO `admin_log_data` VALUES (8, 8, '480e435323XJ1DBr5H20i7JAPDngdoconbwdHyyQ9nL5I1CPpKkfxapqFw');
INSERT INTO `admin_log_data` VALUES (9, 9, '78c371eb3GwexHL1/D/dRg8ZH3q9LD6uImMufMehdeXMByfm9jyZZyQI2w');
INSERT INTO `admin_log_data` VALUES (10, 10, 'ad275463OBqerohp9MwkI5Q6qchZ48wLlF6/gDL4yl+zKJXhEaacsYZjNrc2hJrX2wt96EMbpXnWyNq5JuexSY/NCte0CbAqyS/7Q/hg6udaVQl8IQI6bHRwjsQ2HiuzEL9eJBR/ewszNuOTE2AO0oKccWbIrB8+alvipBNBpEBt9VoEqDjHYRs/T69veFFmSVwcUs2H6lLY3PsGZV8LjxtiTVrxI3W2jKaMlaQ8bYUI9kc7WPFjyx2gOjUfdX6ngBzA+taNvfWkluTf7XkEejVw/fP+SphtOZfPxUJcgT/hPlwYIS1E0u3qJCV4r4jMK2jyTBM9PA2NxrUudAYI5IPNrduUm2Gi7H3XCXLre21omhSLFFxAKEX/ng');
INSERT INTO `admin_log_data` VALUES (11, 11, '512657a5lEJ74uYPFeUukdE7b0SQaFuIEQ83aLSFLVOUHAWxBiLlIflLs5Dn7hRDtzL55jamIMhef65mS0iL0ELCnJQzstebloOPVOONMfPsNQbsW/8M55ITAiRYdRlewvHDwB2B6m1CzSDq9JQP2N8FeeLGO77qr7koLeQJiv21Vn1DXjqHgOzQ++NnV6lZd23l+w9VoZ+goIhIQEOZUpv8tIxbEgBfzD+oIsMZufEnbpdGPQIFIADS6BTeVGl7IIZEU3PWx8I05RtFRO7RjqrHbCU5YI1Z5vQ8d+iov7gki9EpReFSDLGquPsnh77/8lO2q3jE7M1oI2vhU63jgpxgohs/LJNxqgm1UJc6KE4QTgizE8RzoL/n');
INSERT INTO `admin_log_data` VALUES (12, 12, '9e7ec0fewEXoyojtSJQNBSm82qShWK/D0Xs8r3wIvZpN3tzM3wVqNiDG8Zddb5bvn91VF22G7qDYU4GJ0/fHYiNYShlrZwXtK4F/T+2D6RxR7IA8u+mBK/xnHa6p4ue+9CqsvaQGipdrJCvbCz2ROutKBb5bKXVQDL+Pjq6F/Q4ItPGgbqJOkPaFl29fGV7JCkbbkbGRXcaeGXq/NGQAAQzr+7Aoe3uivxXWoH8pLQ7cnSLl9lvGVPB4/90cCpYRX3+EOuFIUH2eIoCfK3p+J55vm7RD6BZsGCrxg9TYJys3GKPeerKXO9AKMwvWkS4jkrdNYMWQgGioOXbNuYA5Cy9B/qaZ2MnCeT7VLYCQQciNR/U8c8rO0GbNpN6BTTg');
INSERT INTO `admin_log_data` VALUES (13, 13, '5d38b2c6VcV0kxwGziQ5gzv7rgo+crJQAWvZ+Jl2ANGjo6fYnW+Zy5Roq6MK/1VufWCGjUfgWJzv5uw96iN8UMZcs/Mnnh2zyZxJcMekcQTjxOW8atReYi6F1OB8yMDxyjpjHCAFrP773/JssqrwlW+DOFA+WVrtwl31Ubd99ekLFBo8O7GoJ3Bx09KvzxPQTLqIIs8cJmEHaNgi2uWfOe8oYulGoThCr7U9FcZxliEtdBYM22f/+z1IdcSMgMrpUebFCmzmQ+aqc6Jfp2PA3mP4T9FCd877VtDNKPmweXclvX3onfCA+mMbOlSSLuvS2S8r8yBWeEFhhZUoiWimrYTDFMWJJPijfp5CkoVQ');
INSERT INTO `admin_log_data` VALUES (14, 14, 'cc5863ffuBGuT68Py7BBj5t5l25slGLKC1vX/pM7/42xzwAx7UahRX3C2lfvT/rZBa3YtnC3aJnwgPkZwHfdOXpceKeMNnlt4fBGmZpmHgKiKDgviVBmH1yKhfvJy/ySVyHAv4A58UXbXvPQWa82iTs7yLZaAcahefKepbS5zEkc6V9uRFFaTnIE+Glz1iHFKb8OcxHwn6Wbo5DzycNbfeL9MUsCucILrUqtw2Muxykn/QvmCOju0YGIj5tKMOiOWd6j8jH53QxOTxwAP1NNfixt9QDTUZvl5vPT6gfSqDp/fA6pM5mP4K6bUkmDh6GQ7au0OsvJwS/WqzwIcOf4ieXLlKo5fJItdcInBIe9G6k0zEe00ZJXFVhcGQpQvQ');
INSERT INTO `admin_log_data` VALUES (15, 15, '3f8a11bbmORf/Bq7mQUIgOkbXIsX8kBT5uCApGueDwUIoEkywzvuifjIkyEUJaqg5wTf5OevWl7uB+H2qX6I7lSqxYaQYCiqJ5NG/ov4FW7fFFh1PIDnzKP/+A1OyvtuIRMK/viIsK41MXYyT5N7ScBLIrbCe17qbVr5kmDYV35TaeLne594VkTQqe6Lr8fcEf0oc1EZ6voKNDb0I58fH9BxirZXrC0mCbZ5bF84I8EkCSNLXlbAIQIJhDJWeKhr7RKTGV5W8/s2nFMyG/GNMNCZrToVxlyYOpCXbwlWIxtPmebxEk/GUTzzDxJhQHSxN71Del+8nnDpN3pVOGUFzDBLtAzEApIA70aqcl/jQRrsabbVf54GzTbg8zwl0DU');
INSERT INTO `admin_log_data` VALUES (16, 16, 'cc940a3br1COJzchIlwr5GyG7n5P0mWpefkXAbP0NT/rANCO3ba/uSfLpckMMthHkCJlgPTDj/p3uNnI65Iv79D52H9xZuKZSJ/HsoNHFpFx0EnIagTFvJpEjpDZ20AeUheA/SME11riIObuLGa1kk9H1oNCi2ELT8lFD/9d/fpx4M+iIvNyfeBra2X9d8M3uJdUS44luzQvnkvA0S0Bwpfu2dhRHCKUV3V0HBKkKHC1Ss6eDGCg1T7PB1mbgS2oCy75zHAwWvGPGKPZp/W8iKoi9Tz5D7uG2mxPRdI3xdx4WdXHebPuz0rZbK+9YYoyhY32Bi0qZ9IdwkTg+Kz0RAh2Bop/corGSYYi3DorlH2MCg');
INSERT INTO `admin_log_data` VALUES (17, 17, 'daafc59fuRfDXo8e2+YhF357x+VmfQYpEmSYfrN1qBHijBgtyMvGKQpB2jvWtPqVlQazKZpwBaroekPqTCoqbFosihbETv4ddXX6ZHHP+ZL6vBCh9E3GZfQvRFgPdQ57b/wUfIYUvh5a22Toj/52tVZRe9N/F4i4BC+s0rCGGhp8wOM0YhsVzjhF/XaZ5ctMdXBhmBsnIQ2gxRbYAcbKvWqrVQSg/r69rjf6X/E3FoeR3mqquFmRC56Tk6TA/Uj5uDuD1dLWYMks0TWzNcEfXoMdSoTTCb5LeyiiTmq70SO8sAH0lcIsQl2HEUVdFhJTUw/kkbYdAamHj8hf+TIKHr4Ioz5cM/aCZjjL9Z+y/0k7OrcUl9wjSAKsUS71Ow');
INSERT INTO `admin_log_data` VALUES (18, 18, 'f5e74860BTLLYWlb2l3xBHLh4mYF/1XbvB2c9N9F8vGwnRriMSGDmbpETR/7ndO723tZedonh3Ea7SBz+lXQPnwxuFxpgAIIm082BXf64DcKH2/8kFR+4z/8xnTGvr95ANBut2509ajShHG3C1ROqz3FDgd4+pP6H09JbmY0nIjS1mDL+l398ZcOW/kYrAiu9uXm');
INSERT INTO `admin_log_data` VALUES (19, 19, 'e874cc49kqlrNv8BJt8Z+c7TvF++u7DFx8J9VpJ2o992ETbKqmNAqjRIkkVuBtPcvE5e51giNl8mESQ0ro+L0Qfwqnq2dBfCCaXFvHqstudOO+30bKhgeV2/4VMPQPHFhbXz6tw2Zo0N6DXfIEOtpY8HRb2YyKYpgoR/vrDzYpF+rBmFqCkpYIklcV/zCHZ8bTyKzhLLhRrk/n/iftz6AWsYyPj85czfRDg5v386oR07SdCutnotE5NpfOQ0an2+hfKgbyUHp53LMrLKk6okg7uqpFWP9kANzg4kg/YMiiA2T2g');
INSERT INTO `admin_log_data` VALUES (20, 20, 'eaacdc2dM+d81uZdEmZ1WbcZ7KZsJ348uz5flhnLF3LweCXnC5EvX2OJ8z8WalMv2yWx18zxmo7jYFqU4UfvNJRdKzr2/pJveDwQCRxwauOQpEbaq5pgPCcAji57wyz7e3sph4/+UjgApjI1wJiTqkK35NMi81oFLs0id3pe9wRCahAP1vaCq5oI03q6dARvIa7B');
INSERT INTO `admin_log_data` VALUES (21, 21, 'b17500f87Sh+Q8TfsENk1FtNvVim37OOv7O8VYzvbhAygDdNB5xh1mRiyhY+hnfcmVLVVZmL9AYSZLErgtt5SDqQ7R5uo8OiOgU352JOgXpTZV/MiOJvC5ucWkHg6c3Igua+ERRBhJHfhlW9NFjkP7jfRh7lCDMCsPhcQv5dOfsmeBMK9OOWKjoi4asIYKbdp010uWX8xUsi9YjxeCFRAXi+ZIZxOjG67T1EIW6LzplxSOIpzO6hIExBB3psVy5T9A78eYarQ+ns6Ah26IZrE0PK5f3f5ATNiaHddus4MRHjottLj9Wh0RW6fgOXUGknyG38RQ');
INSERT INTO `admin_log_data` VALUES (22, 22, '49fa60d5mxF/HItfVOs+8Jsd66/bngUdwXeFCXZvKhiyrlxRAHLIVs211z3g1ClK1Y4xnhUsdvMlDOluAN77TleOvGgEfADTs2EWTnALlL+tQI0Q5jXa4B7ar2KP3I9p//zTSjwmRVgA2uHN1NsFs77IVK7VcKFmLqcFOubpfrtSqU2qBnDlmLJ8m6k+GGrRHbjLuzsARovXSdv/UUPLlrbB3jNHyRjBdt3PVJnW6lWSOB8M9Izcpa8ByH+n2l0op9OYVLNg14C2mGiMFZjadMwUdSsegTaK0QO6eHidBItJ43rscG6u0+OfXazXuX5VJjtRK9K1Io0FdvgESYPHiLQXShd2');
INSERT INTO `admin_log_data` VALUES (23, 23, '8993c93dzCHzxihmCJgnzNul4UrNg7THKLykQ0pKHHFAiXFFMjDhDUPJ+KQc96oBOa81oTz/6VjgHo9HWV/Q1rzud0z7n7mH+Ickvb2PDKUDAN53AQmW1omZC9+exYJbymglPQuLrtPfRrX6aJQoLNZS3AjjUTx8QMfjqoF44G28PPi0+Mk3ergPTT/UPU8iPiTLSN5cOnYX1tKXgyytx7hZMITkTpBg5WnKCNDAu/Lr+vPBqAITuFka8BVVi8qB2RAPAgdy0C2ncK8YMjsVYYYSuqW4AlSpfL9wAkH3x8KBnCrGYT997NugYH3yVpgvyQrFteO1Lv6/g/kNnuAcBmCxRNj13Dg');
INSERT INTO `admin_log_data` VALUES (24, 24, '470dda9fJX7fG6W4AFWvEd2NnI4lXl6+BzXPdvbzlVj+zCGkXFRJFB/VmdWaoP9r0ENkyuSPytQ2I0E461M1Oc5dggytc5ntKFESxs/pSVqjcSUHRx+APGiLRxKgnQbAyGIGThYkhjv39VNqkUGTDDe+O6DtRjvRKKcG6IgxXIi1Un0TE/VqeUb/t2aISQRxgjxWhpcuVSs6LE3CT6QkpHBUL53DCrRVnYk9ABr4hB0nFfMyfvNDgOpgsIUyk3yL+IiWk0Vq+JUR/SrqcFdJvvPGfleKzYZ8KIhE0qyDIgKvJKU/pIR3cuozobe/RJij6bS3FMHs/QtEiqPm');
INSERT INTO `admin_log_data` VALUES (25, 25, '07fcb888SP8NFe8Og4XP/YPjMEv1AuTX/7RoDP2HX6O5EJnYyBm4shEvXFQvasn0IVAPdBZgfuf227tzUPABZ11Bg2BNoS7cKKfcrsoYCHJ7SK+7+WRyY3AcXiaHy+BooFMNyME9H8213wFZNwsyCWqa5aCiUEQbzwm+HawIf57nfuonwJEXa1wjdAddFZyQs6hAMHfF1Bo9lVXrdpkodXazar/s2EH2ak3O7h76COMIbJkI/kKhuIBlWZmJQtLY+hRukHW+brY16G1SJAGoeron896FIK/vc+fxC1LXs6si6kfwK3wuBd+fLwDV7vumxB7VARhgqntqb8108LKIjtQt+j1AzDg');
INSERT INTO `admin_log_data` VALUES (26, 26, '27d8e106sOo5azKtRvZWeHmxJM3sZWKDDKyQzBTU4FQMORJFmlMlUZWZDJor6yitWO2W+koZwGHhJd6qj0Nrn9+NX8MuvAeLHSLf0bsVokDljQZ1cpwM/KOaoo1s47UVPe3S1dh2T2gfs7nsxbrfrSFYcyTS7O3YseVhAKeOtM8iM+UJ4V3vm4iSn2/ns1cDO73m9KzdIj2PO62fYyTlVvtcuALpcSc9nKM4SJUC9FLC1l17cfidkCXTus2gw/qcYNKGZKfSTewtv9IbdCYfSheU4XTK4azvwC6nBIzl9WYU3JT+92M5D1JSacjWOo8m5mojz2WueNTKpw3AqAykK2wzEeH2SmyNwbI');
INSERT INTO `admin_log_data` VALUES (27, 27, '52363032Gxi21zRnNUgMEfzTJM32QLNzbRCWSNuSx3R6hk0UwBhtuTeMyh1eezZwtMSSri11Rj+H40n6gB0wrI3v61qOkmSu9J/Ug/72FtfPIqL+SgLelZrPV+2tzOIOnfxb3CQ0du0rwXJEDHHIFhtez51uMezckUraNZJx9QCpVL1MHM1uWmXb5NFHe5TSOC0lv8h8Q7KyvWg6Ir2SUqcm/ootf2UPw5L219Igcg+i6rchk066JtNQNxWySiU5/k0pPz0CtPKdpMiPSpthPET8dtAMSqs0XN/11/Gn25JpLQM4tA8eiBw54bPaUJksi/PnHmtAVQKU6TbA1fHwR3HNbnxLb8Xi1t1N');
INSERT INTO `admin_log_data` VALUES (28, 28, 'd4d8a433NbnySBZjKYUAN9RkBUh1Bek/QmrkX/65hEcRovTT23vP1wU162nomVyyY5Wh5zbNJ7cGHdXA1y3hmcNzLBPTLrFIPWFbWLXOkDGenhsrIdYL6025huJrKyF4OnLHl5Me4u/kpXPUl+fkgx3PM3bn4er5Z/DZjd5i2PWe/U4ArMJGubBXw93e3Z5zkBUHWVqPFHkYPMzm3p9lFkvsPiRSTs05ChYQmFl2Lnqv3eizcEz20z/Hq7vArfDWOPzrykzXAZTEkJT5fhT9iVDmt81Ks1aDsNUNjJ8WFUiKeUlc5QpfjQ33ykNFJAMbkCFy5WDsM+cjtmh5+fOY');
INSERT INTO `admin_log_data` VALUES (29, 29, '8b0130706+z6ATA49HijLL8WXVq6L/uUmhLnjAfMQFE9XXM7tkBJMujnIWg+fD65unNsa+gHCqevtbPy+X886RvORXRUiBNca7Cd/nlNdW0R0Ug+pSnuMUPhkawMaZFWE9u/IkSSniKaJuCDjroVfZ6Wc4CJAVwLe5r2i98SdiCHi4kvpDupuDqK0VUcDRvfEINI');
INSERT INTO `admin_log_data` VALUES (30, 30, 'b25bee9bYOT4v16/KrxkiBFFazm8Y3G4E29trBT4cqmXHFYQbZkphup2ycSf7T5fVKtbEaiJX9ZvKEwaZw0t7LT6an7nYYCPSVyueKU0QzIyZJVhjAy8siuzjNd0smPLe9BqeSLZrfgAjL/bsKbKTClGQdojWwO0bvnIUKFe377C+K7AHviLY0aZyNVSd91G0sFNov1g+hNk2d0P+hMDb7509X5voyJTPue/yrW4jyIEv38c6wlckAikcBXOQhfIRfYRK5BjpiQuyI0tBux0yUpQnlpFIvtDo8ufXnvTgjCYr4dJCTuX0yvY65/nq7uT/qiTtL7jihoSA0oc5CiYbWjNPYs');
INSERT INTO `admin_log_data` VALUES (31, 31, '12e6c276uSWEAeumUfZ01V2vrgmNNDRQmeBzIrfQe2/XLKNBh1cFGWTiBg');
INSERT INTO `admin_log_data` VALUES (32, 32, '54972f81x19RTsQ9IrHtgyEo/PFbfZZTQe7q9M01Bez2czVQ1sq6AONqkA');
INSERT INTO `admin_log_data` VALUES (33, 33, 'd1a9a543ideSy3wqVzCALbBm3oXI4lZbp1MBYrgd+fHa2AuC/DFKmPAcFQ');
INSERT INTO `admin_log_data` VALUES (34, 34, 'b62cec44yBPp8ewb8U0xWcl1hWvtX8IfZvrGe3m9qq3ERtuJQpQL0SJm/g');
INSERT INTO `admin_log_data` VALUES (35, 35, '409d98b2YymfVhP1wY1dgzlrqrGSaTCcR5idhHmBbENuC5oT7pe+wsNGLw');
INSERT INTO `admin_log_data` VALUES (36, 36, '90d51249PbLWoYCCvbmEiYHFl4wfgM8eN9yiHmBcSCuS1VxB8n/uNAeQF4xytukLWhJdfO+p5cuY2gRvku+5MITmjNz4JnWhEOWou21uh8OuGbo1q6FLvDU3Agh+1yDqxP8w5yz7G/jxv0mJNH/fTaFSb8UTObClIJpwJoc+KQnJO6wXq12tPRaVVToNcTgvDnVqVxerEdNTOhdMklYT+DCMcqcCJb18yHiehkXhnuxYfildUaXRSLZGWHmyg28jMSuH/ohsf0/9UM+vZyu3gPSyHTyKZMbXiSSvg1GtprSg6KqjE4uZ/3Haf+BtzM3SJftazctXJgFZ8svOFhIP4sMjA6U');
INSERT INTO `admin_log_data` VALUES (37, 37, 'e41ddf26w2L3Kgj3KAf8uRTjLb9CEnUVXOtQRV042zxVVqO2jj5DqI1fntSKxGH3Flxikk1DxVD6METo2+jyHqMSEf56rvHOTRCf+8ohUkKJCzNGQcjw6gDmAiD1o+5unU9I7c/Y4seD4N3ZqmnmDs22Hiaf/rD21yiRcDY8bjM35G/oAovkp3VUiQu1quAiR+zpLXOgVHROYgEOpkdsNLD5YVay4APcOH/d9s7aYS8V7poWs7caOAEv3a21vMQ8Ufb7mfJOY71Z6tqySjmigacI+U7SxIBy3R0YEplfScAH3akmzD6dDfvxcQKSBk/ypnvkyA');
INSERT INTO `admin_log_data` VALUES (38, 38, '40717f62ZSEZdPsKozI0auWpOqoO6win6HXWsDczVvoOTz/9joQ5mSMwq9saM2R6iXknSkYLyziNcTXB6LQn2IJYZXDyAivCuh4Bmv51znoBiynb+YJbq+ibJ2I3kwPcV6jNoTiGW3YxWh+XecxoH39IVcbks8QckGLt+5J1AzjaY9mMlrD3o7fnyt4uJj79Q6OzLPBY9SVT8yWXF7Ef7yD0Wp8uXoYI9mJ2YDrMDO0DDU55JuIp5MChpiHFHbalz50gl/P5Uqpe1fLx7J7UA5gpxwrO53w1LioOsI2O0/zH5WzlZxBduw7JXehzAopcrZc083v7RQ');
INSERT INTO `admin_log_data` VALUES (39, 39, '72c144f3yk4FrhJM+IF20wHGIUHUgdYzUb7Z2bAyvez7uvaU/OfjfxDPSl3l6iSzOnou8VWQF5avZotFe2GznutMXqjL76Od7iMrnzEsbtNpHGaBrq2cWHvuyvpLSPj/SxZh64qjgq/8w/x1ouA4+ebczO4/ilfl15FCYfA21q2s3IXqUs5Cyq6bEkBJNYjjo4636asemV0C/k8h1+plAHa5nvJ2PvkkJM0CBB1jAXZBcqGP8rJXDi9DN7D29pPuznZLmBelvdz3vQiPtToXewinnaRHvstT5i2ZPdx1LbSkKK3CbM1G8mauEQTT06hxRtVAuoI');
INSERT INTO `admin_log_data` VALUES (40, 40, '880694b1uxQYiqfLBtOzJfQYrzJNj5O7xMKivl/0NBFuQns8pRswN4ve+g');
INSERT INTO `admin_log_data` VALUES (41, 41, '9b2a16cfkJVFMn3nGgeECUkm6S1ALtWaH6asWldaK6YuhrTlTNj3fiklHQ');
INSERT INTO `admin_log_data` VALUES (42, 42, '9511c490s9bPGMBeK5pLaYG6a4OYPcbBTZRGXUq2XLWaeUUPWahKS1XuDQ');
INSERT INTO `admin_log_data` VALUES (43, 43, '1e516a83Uh/vaHoBl7/Iug81/QsC1+/d8FnuS9SFnfuYetJbUOYhPW4OVQ');
INSERT INTO `admin_log_data` VALUES (44, 44, '7c01c328I/qb/eC0uSLqvIhWhIINEokOQ62lir1gfjMwtVfSxNY68e5F0nHRixLjRenBiP5fTapcM6FcyWNjdeARjXw+t/laS5ryhSilxc9gPb4CTvF7r1v3qZsNWYHVtlKflJVQk7MOF6sFmmqs5OTyILPxMtG7ar2Y8YPNYyol1zqOWLVpLYfydwMXCAXD9hWpFddJBoshbSyUcAnP8otPbUwBhMRqQHBt10lcVDUhjiJEvwG30akZtQQNKZXMiM50rxO6CueH54JrOfSiNVfgSy5cSlWzzMpaHTi6hmwoyvYFN1zUZtxJBRCrdK58N4cRX4wWz6q8yuinfY96i2/0Srg');
INSERT INTO `admin_log_data` VALUES (45, 45, '933c2713PUVIuUT+TdgLcEuXcskhK+g1fk87Fn88nAtrpLxd8UiLPa1j8tKEbX6gHxZ6QtYhW4NxDFcWtXC710yPzrGqWdLT3YV7mZ0R+vkMfXvEr7KxOLCvJ4c/gHBYHrSN4OB5uy/9gmS4ykmi328qzMx//SKKwfVDMg7tvKJyUo1QeGuD2IumHRLokCtrXRyqu8ro+fVDCpWxw5oMEBiyPL+i9F5iIw1NxQcfiWb074eYb0XsQi/CIs4SkzVMczhwWV9MtlzYpsCvksZ+Dm+uCjWZpAYt0krMTRF7Tdkx8LMHuvJg1ms4ZouRGMjq5IwLuw');
INSERT INTO `admin_log_data` VALUES (46, 46, '7083428e5KjLHOD8C+r6fHY5TZ0Fy9UVdYvaT3jN+sXuMRUfoW6LS7AxuaTkAe7jSZnD4HNV37BI37hyjwwggGOA6A7/olbnLUM2GcWsPSaaiT2qoTEn6YMjIgOHRyFXiJsxPw086QAvUkhB6WUkh4wYSodfRO53rzZI3kKOB0N3DRH1G53vad5PBKRlHIWk/o944z1s7KROgAhn/L92B6kjn3LsZ5Vhj80a2VJV/4q2/Q7/F5GKluTylJlFPZEykLK22WOFRJHY/xQIOV5GcgEZM1R7vYrZkKZXsPIRE1uP5KacD1vi4DudUpsmwsf0LaM5ZwROUQ');
INSERT INTO `admin_log_data` VALUES (47, 47, 'df0ccb065J1jvrcUq8Gx4sX46Gmensn4DVNBiatlU+DPFg9jHrVZ0mkB/x3bAgtIQw4FwGfmCfFX3yjmm7ekiTsdHRrBn5kAsRI08rdDJQfaZ+jRedGv2wG8jmolQ5ShJtzA+dgz1oRoz6Cl9mUdgnxthlku0pls+3mjgvSrj4K9GK+0GqV3FtSfybCJxPr676n8jq+ZkUKRDZqN/lzJ1hEyP+12qdBpOM77HDHpNbXqhvdfs/sM/SH7p4HeU9NZJEMAp/mi8/mhihLtDa+IMr8ft4Z7r6O6/lScFJgjOOqhKaxcZakBISwaYQnUd0AtEVzfuLc');
INSERT INTO `admin_log_data` VALUES (48, 48, 'ec150350KOn+HJRP7Rl33mlqXmZXnaOZTPuLnhDqcckFcotXZ1YP1dY/emRmeqcXcFZhRT34VCuYx6qEz1RDyUEwDbttM5BlNwCpmuJsoecIPHSmyiOvwlwyZsoiUBeuu3gpyMJwbApgx2yR69sGDoV/6ttc0PsNmJhzDxWxqFL/WVRfPkoNqADt/Yq53jkaeCAFsC/a3w+RITcezzPjVzcti0WST3OnEi86T0C8Ioife8w+5L1NwFfabM9yQSwW2ADKorOu+KXqKHtkoKwrFLYjlcJwpxTLz7EnoSB7yPbrNr8T/ePqZOM2a5nYso26AsKc5+D/k24vCkLST6cObl6klsiX');
INSERT INTO `admin_log_data` VALUES (49, 49, '11e6aaebEv+PIulyVipyQT7Mj8Kyd4/Y2EWRNhJJp1k0/+6e57vHbxMvkQ');
INSERT INTO `admin_log_data` VALUES (50, 50, '1ffdc089WsyPNrdnj9t9iwGAe9PVHd0rmetrkLzRMOkMIiHpGzwT5J9OEQ');
INSERT INTO `admin_log_data` VALUES (51, 51, '1b7f6a3aX2wLxTQFiVnOPcQmjbS/1urVOJaYZs8AzqFdRWz1WA+S5bKLBQ');
INSERT INTO `admin_log_data` VALUES (52, 52, '06043e02EukaUZaqiQpl1/F+o/wZQBBz+4RxvWx6ylzvDn8hzlmoXfi6tQ');
INSERT INTO `admin_log_data` VALUES (53, 53, '9a30cabeJo6WCquVAi/nlocRTYQtyYKtxfm2ph22sC+5TW9NE1KawiN7Lg');
INSERT INTO `admin_log_data` VALUES (54, 54, '84044e5aj1XaU0fw4wssJRQdHVt9+mhpOoO4ZxRHIHHbZ+sBOsQaV5lVvA');
INSERT INTO `admin_log_data` VALUES (55, 55, '83fee73frACBWmufLr/Y7xD1G+kfhE1OOzfAXFtlU/7e+eHDDcT332QaFA');
INSERT INTO `admin_log_data` VALUES (56, 56, '40712037RykVcnVybRbxq3vvHDimv3jomDLqubASbwyMBhn5+AGc4J2l3w');
INSERT INTO `admin_log_data` VALUES (57, 57, '34b46b4c838ye0ZjAsnHAhJImnIFnNr8lPNFbvcS4v5+9fp3dTnXp/t9vw');
INSERT INTO `admin_log_data` VALUES (58, 58, '1ef632c8GdfYFu9LghM0Wq3k97sEGzWCirqFxzqdtDVvWn+JIJq0PdmsFw');
INSERT INTO `admin_log_data` VALUES (59, 59, 'ec29a790nb/4h8XXhgdmqY/6erO1zgESKpEG9LkJleEjJWlcr5fzint8YA');
INSERT INTO `admin_log_data` VALUES (60, 60, '74552068p7M4/4ZY4KRL+uU1758mT5kfdXWqxuaxZotmwV8gD8xlJAzIkw');
INSERT INTO `admin_log_data` VALUES (61, 61, '4d6a094esE0dX/o15OSHLNU8EpyDrFg3sIIOLL/Ozw/7xZENf6pCljGtPw');
INSERT INTO `admin_log_data` VALUES (62, 62, '4030d626B9Qwj8qR+qsxjApDJTErWQWTypivIrqtBS5HIIfSyA4Gt4tlPw');
INSERT INTO `admin_log_data` VALUES (63, 63, '9e2d02eau+AROltJkIKnvd2KfhM3SkHsw6yK5pL8xY9qwJe2sTLe/0wLqw');
INSERT INTO `admin_log_data` VALUES (64, 64, 'f1f1a110p/5QShBkt/8I8SfwZ0LmXFL6aILEF8R0oTAR4GP7nK1vwkECwA');
INSERT INTO `admin_log_data` VALUES (65, 65, '01fb127aiwf8GzW+k8kMDuTf1Mc4kjWbxxNm34XqB51XiN274mnPIhr80Q');
INSERT INTO `admin_log_data` VALUES (66, 66, '6a253633h/uujb+RkrIwU/ZpL+wuS03z7e5XEz+4u1Y/peFoMwC6T2SguC1F41EBtw9Ru2U04LOALValozdQXODl0X0e66A91DcF6nDJ7qs+Wr673Jj4NTh6uBebL7lq6MQ0dF2Q3Ye93QTpWzR35/8IVLn94m9GyIx1IONUhp05YDBB+3G32FycYHbwnPifCNztpxrS1fvv7FCU0oukvI3LLl4DIxDL28ltz/O+U8ftoRqZJk4/J/9PTeTGWlM3rJMvsTsoUUuQwiBzZX/xxDPRQAGadi48ipkvUEmm1VA3UfZCYVWy41jKohZdcjTECJZNBTmZkDImjA');
INSERT INTO `admin_log_data` VALUES (67, 67, 'd39fb65bWRnutmBGCgok2A1gSmCpQJVoTA1i9RASqQWSQ1BE8vuhBg/pxlHM97pnbwyIFCq9H6T44lF1zKSURHHEc/kafI3q3NBFTmDMuo8ODQYrCFvjbEHthcel+A6AZlNUkfMRvaGsLQ2goO/KQOJPGakUM921E84jmZ/wIXWQUQHu41GcSGHdJYnH/LhyKBsjpEsyXZV1clWfidB1t/AwlOgx4qkOZbV9G3Sce3gvPVIQkuhDHrpVwL8SuOdwFF++m3BD2cdTpKzmsVrIwMad4UG+6EPiXHXYnnwHHIW82sHEPgzWtpBGGiKhtzBy53BnTh8Ie3k+EDTkrr7tiIota24');
INSERT INTO `admin_log_data` VALUES (68, 68, 'af5f606cy09PFsCIJK50bTmXAVz/iV8PBe2ANqKOq67liWXsL6wmRD2uS47t6FasHz2BMbTkJ+7stW7qh9ms2STCpr1xGuZNe0o4eCci51rcwJQqgydW2dfCl1R2ai5lFNj5Qz/0j1qg8JLjlTiXdfQmjmt7RxY2Dg8Gljh99OM6xBUSOquUKQQpQSTkvV/vEVEwIkMy4u9+T+K3VQg8SaQzCVPyzJAox/aBgCrMyv4Sb4rN4EllkqXIUOedCXuLvJo0cS/M7IxedQrsOJS568s2VXoEyQrKcFPSJmOIgqlFW7uuY7jnJvU+9im0MosAnx5+mifRfhNGQfLwaohboojv2JTM39VnlnDenjk');
INSERT INTO `admin_log_data` VALUES (69, 69, '5a3421c80Q89Yn0sBeycVwOaY33g64aILf7zCTL0WCQlYqCDRhmORkyQz4CYhSflULGj/vLUE/D4OSa9EnRTfnjW9YXIXAYRFiBaiQIqbssXVdeoq8hpkqx0uwMPC/1oLGY4xP72wCh7X3q4pmLmWuZqPc+Da2CAxZuDT6SnkGGeZU4ObbTW+MV5GSrG/9lbReHQibnEy1t9/y+kEzFqfwOBRbQYsFI6DgWfX3uqNQGLYAtn8o6bOnCVV4axZFSDyiVikmZynjpYO5FGB5cSxNL8e4XY5/mt1sk7zcK3KKNsMr4Pys3MSYc5RgcmVQZWjWdgY9GSQwGUZjqSgLn+SeBzYGoMyMWxleN6Atbq53s9sw');
INSERT INTO `admin_log_data` VALUES (70, 70, '410ccb399cU+PDK7rX2l8Wi4zFpFxIs5MPI6EGQ/8Nz7YDWGXvC7rQkv9k9vpcQRS6bP4iVxlaBixz+QCPcsRIcb0WPUQR8ctCnTd08SBMFvFE2z25tebM8GqvDXML48Sgv7SIAZxz9+xyZq6yLFyvttA4P+oLTjGuTrrzypjh3eL4F+KTVMyq+lt4i3fM8UEkaGVwb4Hp3AonyJL0Atqj6RFv+wrEDu4ZZui5qkgCanKb+FQjDe2lQZnhpdtSqekHLsTSXabQKWVKDXkwiO6GuAQPBDuKuvQPovkXkGGQnjagUC+MxPi+Fx+6xLMWnHlG/DsntJrhktkuJoClOAI92IC4bUlU+2jg2deb8');
INSERT INTO `admin_log_data` VALUES (71, 71, '2c58163cdgd0aQiLJ+cRMILWoNDJkYQGbpV+JhPzWOu27XvpUOxfTX3oifw+sgFbjOr4wzusngqCF78pH2HbkHwmJx+b3Zc5dEJr96ht0nD0Ez56/WWVvrvrTEmIDS3yfMCatHgBhkBJZ5TgVdtQZMxptqaiIT7O69g8O/R7CRONHSfA/iZy0kYeUwUJzMxB7Hq9xPVRCm8HPm5UV8NEXrjsR/TztVnYaF8aTqyXeAs2CmRCDdQBXi48JfvpacMqOv7k7IxtWHzGp0pZJkXGbBvMnlpCFFzgYKOLBEyUNZCWGylH6u7Piewua5XFPAq9o0r4uZ+5NCplMr+h1g');
INSERT INTO `admin_log_data` VALUES (72, 72, 'df1ff6beF3tcAW7e3YBVMKtUkJQHXE4T2aOsDIFlWZ7oUCp/66yQ/NBhX2p7NkrrpE9XWO9rbxYLZD2IxjHLckNz7Ci8PYAyN+D/uHQpBFiutHhAI4UpCNQ6/sgsvJez9TnYKhoRd6IQ5L2MabiQx0/ULrFLPWSTPXtOhsUF377OMA4vF/XXaMdflh01LX6TJbzXMsh/D/+a5fi6dZ+jCyRiapeWm7zvCn1jo3VwlF3Zr75/bKR6T1RwU0uVNv8SFf3VQboKMA');
INSERT INTO `admin_log_data` VALUES (73, 73, 'd7d7bb41K9qHSX9Y8xmVpM4wMLv/Ge967CAeRZ/JjUpImVfzk1lM2NSZgvIcDEeDkL/d2p/BjgAR+b8cDGc2K0ozwJbWcOs1G+/6D4lu25mAx6DOWQP+hCp6cwWfWLIC5RywgLulQKzmmMA5KNgW8zNcj7j/+g1k3elT+oxkZabMluvgD/FdeYEqBOj7f+onHRLxwotFIYDL8mHSE6CSkysVlaRuGQsxrsNks3ai8eGnQrLboBxVG8XUufT/A5jyixUDTBQrTg');
INSERT INTO `admin_log_data` VALUES (74, 74, '18dcdcb2muwO9DDMJPQz2VYUq6RGIiUqzLAkRDT4cGm85YwdonNidOOUmOBjI3Og70qmw6h0f+kIV++Y3+Lf2a7ODIcvwLlbtwdisI4iXJrx88u7/cEcXhEqiudiCKwd7VdNOokvAOoJ9pG8afFoCa4onOUcwHoX286ZU5/Lo3jOaQsMoZiRAiav8UXCfRsa1gHpnXmUjcLXG2NWcCVxmP1YIxad+lk2Q2yA64fkG0rAv7FBP7uY8HtkIuT5mFA5AKdd');
INSERT INTO `admin_log_data` VALUES (75, 75, '977e6e84SWxH6eJZR2bt/cXjZPqWFfqmTvFPVO23q/FFhhEamoagGFEDJhjlC/IrMCBQ3JTywudvrOfjm3dUBW2pLbHz/9eoTnTZzaqwt5dvMWyjLZu4Yn0O2+LpxJOxcC93CGji1Bzj0g+QXIvpSeF6mjFYeLAmgU1Jlx8hUl8cI04EPOuviZBROEB2V5c8rj5sAgbsunhFUHjOPSzo/tAD182w1OBfjoBcIQVwh/CAliszyoqTJ0NSav62lISpQe0o');
INSERT INTO `admin_log_data` VALUES (76, 76, '1750d184LzL+J9Cv9PTt8LpHmJ7ArdwHzkr2KD4U6WqKlQUJifBcKJi7Oe2VjuaSWxpmpmbtYEWqAeuupmAjz86sS0jc7A39MkfMNVI6v3uUH4DhhhV3Q4k7AiGYohqT1QsPz5cp5nseJRY3se8MWtor+Cthk65sf/9lza8eKQasE/fre7QKT8IpeOX1t/hjjUmVdvVS35SfqFWp2pq86ZqR5EZshhadJ0JjZdfVAD4Mr9zrIMo12y+fkR5gvnep+E4+');
INSERT INTO `admin_log_data` VALUES (77, 77, '9671f514bGv/lIXT3oRf0P6m9B+H7eQ68R/UzewLtopRL2AZB7peF0itox7LEiWTqgO4Jjfh/Wb1ETnkJTY/A8d8D1VFncraFKy601V3QgTTX7MHlJ1Vq6T9LLsaXsvFGOpQ9m+H9U8dq02Rol6KGYRbXP333kDSpBMzb14PfyiigzIb0bfM/O5C3/92dHpVodnU');
INSERT INTO `admin_log_data` VALUES (78, 78, '7091cf95UF/fWB/vIPkXCkdq6aq5ZA46uBwR1In1adDzyXGqkRUelMfFyt8YfhKsC8SS0XFhnARS+UZHc1ifqjLnLP730AAywiZ8XCmkZYx9Khw1qBP0VaUlTGgVHhrfJslrNdbHSUUpBGchBIXHiDIm2v7OJQAeK5BqDqnxQIc9n117zmsaoryqkF/vLFBKfowL2LAWoBT1sa3dTA5FdACjJqQ0A9zi7VYoA/lm1UmngIdD/CAQMTeE1MWRrnkjawXT');
INSERT INTO `admin_log_data` VALUES (79, 79, '0055d07fiftU2hLR/OkWrQIg0unv7B4EvWglM0EWrpc19AXtE43ErnPCmZCEExXcve+cYxEzw/bc76PvBOwd4ZMRPxWauUQEf9HPLwqZNh+RCpvsinlKfRapqoE3eGLyqvF1zIBfsI3VYf/Z3yI3p/0sXERJEdvB7201LFA/GXckDyx1U60w1S4ruTbz1ANFf3aUfX0zviflUmkpIuixdON8M6f7j/kluvbKohmEh76y5HvWWOZwjccF0ogGvh9/ZPfj');
INSERT INTO `admin_log_data` VALUES (80, 80, 'f2e4a033UluWqMKiJzw+NVZbKiYKmnV6PDrvlbSpUaHRmEOiXPuR4OUdane+NF6aAopj63l9H/4tGwd3InWrHz+MPDMltaOdq7xRld6EEx9rztWwdTkbOU076JDTyn9dnfdfNZrFoNTsvjkrrS/RqnvB+ZGRHxO74VbKev3Xke6UKvxwyQ0wtXhjekW7ATpdQAuiYRmH1tJ2jTp+9MvvCa8foYRNmv5e3OZCfshuqyl838dfvQ5YHDdhYyPDc1Yv1XBo');
INSERT INTO `admin_log_data` VALUES (81, 81, 'e657b705nE/5jJ4kfNQ3TEMLKchi18CiBzfatV6bGPOX+7cSUYoBTxHSr8kXQ+jERcquGgik8s0/nlwLhJSF2glvKS/3D0dRrCbcw5kdo7BZ/O8KWvL7upLomJa/uW4D1G6tJASp6z+Tbxi4A0lwHUyBMI7TBef0y+Y8W9gN6+AUYZxjySfXtQpIzl3321y/EELLacc6mlHEesaEqHWTMytpGNvZOfoJ82AKajv+/PIWoufxLiz74S0XU6bLPIMjV/BX');
INSERT INTO `admin_log_data` VALUES (82, 82, 'a04e7789cP8cAtUsMzpEKlRODcoZl3BXRviOub2h04d3v/5/W++TuTclbZfz63y5FU39EW38iktZ/XVDgVXE4j7VxycSOppkK9WtutLQr5NmUhFFkhhVKY5k/t16M0nlvFTzDj3n0J3dWeVA9+ON87ADpjnYt/bgyt+8AfGsekoWKTeCIgb7nYSkZgKJNQ159VrNHyc/qjAhPJ1RP2DL0Y+kZVH7XKAYP720Q+9/TZzGswndodbh2/u/lhVn5g1BjxsE');
INSERT INTO `admin_log_data` VALUES (83, 83, 'c22d6b4bnbcsLTqrIY4D4jjZCGBD5UljTDGzIHNFoL5TqW9f1vZHnb7a/NoPYiHkGZcrNG8HNaW9HTZRYUrgGZOuWSjNkyIlM2q78DYznakM6lfmkZyenVPYsMSamPHsap1L2Sa3M2j2cqmB0t151YwAvWYZRHUkmHcAjIPjk3jSGX0xnKImMXWHysxJu62qswCraoEDCbxT1khTrLsE4HTDo+/e/QJF7mMrQjSTNTL+dGZxccaWlOT2NXglqAWNlPUW');
INSERT INTO `admin_log_data` VALUES (84, 84, '3a1052dbhzRR4li8KhW5q+EZ8pYYC3iKkzyy+yg5W5hMrRlZ9xZ5aKpqN6VInlNdZfcpm3UycaXCLQnMOYUNdO2AftV9LWrfhkjJE9HF7y0nppuve/GrYGiFgAowd1vFzr3IjLbJ1aEbF9vwma70RfQ6x9+9+6BL4hpghX1xzbIeLawi8pnRgeBbpNlhZ0fJmCkIxo5NdEhPCDe7NaWGBZK6JXGTse4IOVnYQt5JruYLA7BC3Y1CASv53PuhyNM7Hxc0');
INSERT INTO `admin_log_data` VALUES (85, 85, 'bed86134xxcznA7BRejMZFYiW21U6QANIdgYNIInqGTJF7mAx8boVm2b4jH3vhQziFgfCBO19BC/8Ne4tFTZVUHc1HXooQ6szLooNWOx6ayRDV0p/vnK8dBI3xIDQH7JgfgoR6rAytdmKiapgoIPFnm1o/bLiQ/fXr7We7Wne6nnieVikhjc7gF4mQLllsvijpa0ma+Y7hrw2/cp+LBWGuRimmcJCQXtCMJt4fF1cJMwO5wnFFSqh1TgZ9HYihB0OQei');
INSERT INTO `admin_log_data` VALUES (86, 86, '7a6334b01Xo1c00yPb4/rj/z1Nxh53be6m9YkooYykyLpwa19mraPNxHwKxUU2xyggNnx0o+nSEuhihfYj1DI1ZctXBmH6cVOzwEjM143deMs0DEBC0c6FDrQn1mtTpyM8hJ7wdDp0dit90oEOxRziKlWb4H+erqOflQnMeIl9YaOxoLATQ5ag3NYJ12PoCDZ5UG5lvyH5WVkuTLSUsnJrwyoO5KAoiMQ07Abz6u9XfgRGcJ2tsLm1zihufYgQ1FVV17');
INSERT INTO `admin_log_data` VALUES (87, 87, '6e86dc9da2IOC1NTzD72koC+adhLEH9bIj8e6fFutSJ+yf3zloTui1nqIa7Xxs3CPwk3WWpWFsZ3YopnEbjxyqLp9PmmeCdgMHB1SPzVzb4ZOd7m1afxQvJB0C2ol99RjbUFgO0/QaAIIUe9zx3rxbZd6E4mOC1+lu9For8XGQiJpewOqfd8OZGcPRVdckYM1l2XFA30shJFoi1vTBjeZ38bv+9t7S8IosNizSEUm8AyAXyanfr+EhQvhdDso0HZhlHl');
INSERT INTO `admin_log_data` VALUES (88, 88, '728daca5eZt8gSNsEH4l9ZB9xCt2aSPy+ZnMOdwZ+boYiaWKEV9XPCv/ozWDVAvuefmVTaJ1sTa6xRZ0/W5vZ5nOt+BobGwjwbsr2ZIdms4mctH5vqT8ExzwjXhyujvgtl3LHCOAztb+egF/8T2kI1viaCDqx9OTV7ppM/1cF88VGKl1NSAAPZr1QiCUrVuKTwxHO35dObqUReX78+jhRRZBotl42aTfNUNQ1RtumB1FUezi2gSjBrF/b+AoZ+XIAhLR');
INSERT INTO `admin_log_data` VALUES (89, 89, 'd74e7e765We+BMrjTOcVFN5hTWP3Ej8Z9SDMmCtG86QLixxcKPmtfMM4NZqROFKbUhpcH3G/NEq+9l8F8vzYoTUzIOWb/Y/9azgTKnsEPPnHgDPa62Rx7gYqDiTDbpP/riDLnoeSCSjF18bVXNzXVZOPaTqSe/0DgjD71wjug69zlKKqrncsIObxuiDPLwV1oC2Nwwzz+OqjIo8CoEU4bgzQIpdyVNOCtf8yn1L4MagN4IBaOKkeQc3AVbJAaYxdfb3+');
INSERT INTO `admin_log_data` VALUES (90, 90, 'f908ce62reKHgspcTnRqo8NXB9liTdIW1qcVonQqkduEOL4zh3Sg1F/MQyus1n4Nyb5RlSMIrIxEIYTq4FhBdSRw5jv/mlE9BKJ4E5x1PtN1HDHxyA1wg1z1nIKmJP/s4SsK8LIzKq214Kheh1d0eALVnqzcTcdR1CGd1orhl/+tF1pidJldrJHjHiTKR/k9D0NZH86bIoQh4Z0eyIeox9Z//tplC+giVvzXUnNtrsXHnXAVEYAT1msnrjf/xKOPMQue');
INSERT INTO `admin_log_data` VALUES (91, 91, '6482617dma/L/UUnZWKn/gLPmSHmLi3+J+JG+lI4k/86YBQ5J9lK3litZimpONc4ifjCW2eDho16tnbIrciLP0m4nLlaQzcERtmaIf4NvOQ1AOcv+8VjHYCnCqbvnE6pMAkfMhxb7V1wA2c9og2Zc3rUiduVXS7LXhohgfJ47xyFQrAIWks5WimJkdCPg8HeIPGVzscAg8YeRUXh80RFNxTISkAbNpUzJrwhydnBWK99D+1BdYkvlXAGbt/fbTVLOTGC');
INSERT INTO `admin_log_data` VALUES (92, 92, 'd5f459adPMb67leLZa75ht8kBvF2TyNViIFwxNhgpM4T5mnUtvgD9d47MHoaflOKs5hlT2m4hfiWXOY9IN4SAG1DgQXWmdccWKLgYm84K83fBVpidgpYJFbrqZ6H94Flf7fzdoj5A0MgUSEb3YemTyTOxcX7Wk8AaHs1wwsM6tz1EKu9QGimdw8CPimUhIpJMFmXmq4FxWLGKn1GIbZSVrOOuARWk70NryZnEjKch6kegNLx2+STWRY+Dzq/IABY60lO');
INSERT INTO `admin_log_data` VALUES (93, 93, 'e72645b4nJP8gifdXh6+8ggmu7s6622sCRR2w8LvwiKWli9hwuwZVFSn0SdfHSzQvAoxiuUywEshrdce2iF9xVQdeeP1EVPpy6JVNrNCEIRzEEAC4hvMW+ZgDXTGxxquav9k7NjjFvfRLos/oO55oY9q0M8UrgYq/Nrw/oURbcIbHVZnZX2KEXhUlvcNMeBPu6h3LyJWGBB0jp/CrVw8ou6eeIcJVryzDvjDcYNl2QaLzAV7W/Z/p2WkiTXdANNDnT+W');
INSERT INTO `admin_log_data` VALUES (94, 94, 'de4f996aZazZFjSKckA0pNKUqErkSJMkoUlLfXmrvNhrfNgIX0XdRLH9Y9Qo5hjguJJvSC5cGPNEw3ZH0Fe9L69Jp8+OacyQok4R/NO+4NcIHeMhSTHOEDlkciTewcMU+8HBczimPTYBpseDTkRZY2dkuMzHWY1W39bcWGZbkeQmuyC8Q8AhPODkmyJ1GzwcyhqDGpuKLQsPOKQBXbxUePWwgNKVkCHcxQFrAomLGfinaDRRAMh2YVCOS9MGiqrnmpF7');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父级菜单',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url',
  `icon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '等级',
  `sort_id` int(10) NOT NULL DEFAULT 1000 COMMENT '排序',
  `log_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_url`(`url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, '后台首页', 'admin/index/index', 'fa-home', 1, 99, '不记录');
INSERT INTO `admin_menu` VALUES (2, 0, '系统管理', 'admin/sys', 'fa-desktop', 1, 1099, '不记录');
INSERT INTO `admin_menu` VALUES (3, 2, '用户管理', 'admin/admin_user/index', 'fa-user', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (4, 3, '添加用户', 'admin/admin_user/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (5, 3, '修改用户', 'admin/admin_user/edit', 'fa-edit', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (6, 3, '删除用户', 'admin/admin_user/del', 'fa-close', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (7, 2, '角色管理', 'admin/admin_role/index', 'fa-group', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (8, 7, '添加角色', 'admin/admin_role/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (9, 7, '修改角色', 'admin/admin_role/edit', 'fa-edit', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (10, 7, '删除角色', 'admin/admin_role/del', 'fa-close', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (11, 7, '角色授权', 'admin/admin_role/access', 'fa-key', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (12, 2, '菜单管理', 'admin/admin_menu/index', 'fa-align-justify', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (13, 12, '添加菜单', 'admin/admin_menu/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (14, 12, '修改菜单', 'admin/admin_menu/edit', 'fa-edit', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (15, 12, '删除菜单', 'admin/admin_menu/del', 'fa-close', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (16, 2, '操作日志', 'admin/admin_log/index', 'fa-keyboard-o', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (17, 16, '查看操作日志详情', 'admin/admin_log/view', 'fa-search-plus', 0, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (18, 2, '个人资料', 'admin/admin_user/profile', 'fa-smile-o', 1, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (19, 0, '会员管理', 'admin/user/mange', 'fa-users', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (20, 19, '会员管理', 'admin/user/index', 'fa-user', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (21, 20, '添加用户', 'admin/user/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (22, 20, '修改用户', 'admin/user/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (23, 20, '删除用户', 'admin/user/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (24, 20, '启用用户', 'admin/user/enable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (25, 20, '禁用用户', 'admin/user/disable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (26, 19, '会员等级管理', 'admin/user_level/index', 'fa-th-list', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (27, 26, '添加用户等级', 'admin/user_level/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (28, 26, '修改用户等级', 'admin/user_level/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (29, 26, '删除用户等级', 'admin/user_level/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (30, 26, '启用用户等级', 'admin/user_level/enable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (31, 26, '禁用用户等级', 'admin/user_level/disable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (32, 2, '开发管理', 'admin/develop/manager', 'fa-code', 1, 1005, '不记录');
INSERT INTO `admin_menu` VALUES (33, 32, '代码生成', 'admin/generate/index', 'fa-file-code-o', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (34, 32, '设置配置', 'admin/develop/setting', 'fa-cogs', 1, 995, '不记录');
INSERT INTO `admin_menu` VALUES (35, 34, '设置管理', 'admin/setting/index', 'fa-cog', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (36, 35, '添加设置', 'admin/setting/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (37, 35, '修改设置', 'admin/setting/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (38, 35, '删除设置', 'admin/setting/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (39, 34, '设置分组管理', 'admin/setting_group/index', 'fa-list', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (40, 39, '添加设置分组', 'admin/setting_group/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (41, 39, '修改设置分组', 'admin/setting_group/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (42, 39, '删除设置分组', 'admin/setting_group/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (43, 0, '设置中心', 'admin/setting/center', 'fa-cogs', 0, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (44, 43, '所有配置', 'admin/setting/all', 'fa-list', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (47, 43, '后台设置', 'admin/setting/admin', 'fa-adjust', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (48, 43, '更新设置', 'admin/setting/update', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (49, 32, '数据维护', 'admin/database/table', 'fa-database', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (50, 49, '查看表详情', 'admin/database/view', 'fa-eye', 0, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (51, 49, '优化表', 'admin/database/optimize', 'fa-refresh', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (52, 49, '修复表', 'admin/database/repair', 'fa-circle-o-notch', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (53, 0, '员工管理', 'admin/staff/manage', 'fa-address-book', 1, 1000, 'GET');
INSERT INTO `admin_menu` VALUES (65, 0, '物品管理', 'admin/goods/manage', 'fa-cubes', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (74, 0, '账务管理', 'admin/financial/manage', 'fa-creative-commons', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (83, 74, '账务管理', 'admin/account_record/index', 'fa-money', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (84, 83, '添加账务', 'admin/account_record/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (85, 83, '修改账务', 'admin/account_record/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (86, 83, '删除账务', 'admin/account_record/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (87, 53, '考勤管理', 'admin/attendance_record/index', 'fa-calculator', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (88, 87, '添加考勤', 'admin/attendance_record/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (89, 87, '修改考勤', 'admin/attendance_record/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (90, 87, '删除考勤', 'admin/attendance_record/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (91, 65, '入库管理', 'admin/instorage_record/index', 'fa-bitbucket-square', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (92, 91, '添加入库', 'admin/instorage_record/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (93, 91, '修改入库', 'admin/instorage_record/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (94, 91, '删除入库', 'admin/instorage_record/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (95, 65, ' 出库管理', 'admin/outstorage_record/index', 'fa-bitbucket', 1, 1000, '不记录');
INSERT INTO `admin_menu` VALUES (96, 95, '添加 出库', 'admin/outstorage_record/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (97, 95, '修改 出库', 'admin/outstorage_record/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (98, 95, '删除 出库', 'admin/outstorage_record/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (99, 53, '员工管理', 'admin/staff/index', 'fa-address-book-o', 1, 999, '不记录');
INSERT INTO `admin_menu` VALUES (100, 99, '添加员工', 'admin/staff/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (101, 99, '修改员工', 'admin/staff/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `admin_menu` VALUES (102, 99, '删除员工', 'admin/staff/del', 'fa-trash', 0, 1000, 'POST');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, '管理员', '后台管理员角色', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48', 1);

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJGU1TGtjaHFnUXlkLkxlOXJqc2hBd2UvUE9ORTQvL1kxRGNOQTR0aG0xU2ZSNEQvMjZNRUdD' COMMENT '密码',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/admin/images/avatar.png' COMMENT '头像',
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'super_admin', 'JDJ5JDEwJG1NOU8xOTNScDZPNk53VTIuc3RhVHUvU0FYZW5oSDl0US40bDZSbDE2QVA3dGFxbUxhSXlx', '超级管理员', '/static/admin/images/avatar.png', '1', 1, 0);

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) NOT NULL COMMENT '后台用户ID',
  `user_id` int(11) NOT NULL COMMENT '前台用户ID',
  `original_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `save_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '保存文件名',
  `save_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `extension` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '后缀',
  `mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `size` bigint(20) NOT NULL DEFAULT 0 COMMENT '大小',
  `md5` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MD5',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for attendance_record
-- ----------------------------
DROP TABLE IF EXISTS `attendance_record`;
CREATE TABLE `attendance_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '出勤记录id',
  `staff_id` int(11) NOT NULL COMMENT '员工id',
  `record_time` int(11) NOT NULL COMMENT '记录时间',
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `is_del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否删除 1为已删除 0为未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for instorage_record
-- ----------------------------
DROP TABLE IF EXISTS `instorage_record`;
CREATE TABLE `instorage_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '入库记录id',
  `gname` int(11) NOT NULL COMMENT '物品名称',
  `gnum` int(11) NOT NULL COMMENT '物品数量',
  `instore_time` int(11) NOT NULL COMMENT '入库时间',
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `is_del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否删除 0为未删除 1为已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (20190302092540, 'AdminMenu', '2020-03-21 08:10:25', '2020-03-21 08:10:25', 0);
INSERT INTO `migrations` VALUES (20190302094849, 'AdminUser', '2020-03-21 08:10:25', '2020-03-21 08:10:25', 0);
INSERT INTO `migrations` VALUES (20190302094853, 'AdminLog', '2020-03-21 08:10:25', '2020-03-21 08:10:25', 0);
INSERT INTO `migrations` VALUES (20190302094933, 'AdminRole', '2020-03-21 08:10:25', '2020-03-21 08:10:25', 0);
INSERT INTO `migrations` VALUES (20190312021143, 'AdminLogData', '2020-03-21 08:10:25', '2020-03-21 08:10:25', 0);
INSERT INTO `migrations` VALUES (20190518030432, 'Attachment', '2020-03-21 08:10:25', '2020-03-21 08:10:25', 0);
INSERT INTO `migrations` VALUES (20190615081122, 'User', '2020-03-21 08:10:25', '2020-03-21 08:10:26', 0);
INSERT INTO `migrations` VALUES (20190822082112, 'UserLevel', '2020-03-21 08:10:26', '2020-03-21 08:10:26', 0);
INSERT INTO `migrations` VALUES (20191001081329, 'Setting', '2020-03-21 08:10:26', '2020-03-21 08:10:26', 0);
INSERT INTO `migrations` VALUES (20191001081340, 'SettingGroup', '2020-03-21 08:10:26', '2020-03-21 08:10:26', 0);
INSERT INTO `migrations` VALUES (20191012005355, 'Test', '2020-03-21 08:10:26', '2020-03-21 08:10:26', 0);

-- ----------------------------
-- Table structure for outstorage_record
-- ----------------------------
DROP TABLE IF EXISTS `outstorage_record`;
CREATE TABLE `outstorage_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '出库记录id',
  `gname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物品名称',
  `gnum` int(11) NOT NULL COMMENT '物品数量',
  `outstore_time` int(11) NOT NULL COMMENT '出库时间',
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `is_del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否删除 0为未删除 1为已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_group_id` int(10) NOT NULL DEFAULT 0 COMMENT '所属分组',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置配置及内容',
  `sort_number` int(10) NOT NULL DEFAULT 1000 COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 1, '基本设置', '后台的基本信息设置', 'base', '[{\"name\":\"\\u540e\\u53f0\\u540d\\u79f0\",\"field\":\"name\",\"type\":\"text\",\"content\":\"\\u5e97\\u94fa\\u7ba1\\u7406\\u540e\\u53f0\\u7cfb\\u7edf\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7b80\\u79f0\",\"field\":\"short_name\",\"type\":\"text\",\"content\":\"\\u540e\\u53f0\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u4f5c\\u8005\",\"field\":\"author\",\"type\":\"text\",\"content\":\"\\u661f\\u661f\\u79d1\\u6280\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7248\\u672c\",\"field\":\"version\",\"type\":\"text\",\"content\":\"0.1\",\"option\":\"\"}]', 1000, 1584749426, 1584751956, 0);
INSERT INTO `setting` VALUES (2, 1, '登录设置', '后台登录相关设置', 'login', '[{\"name\":\"\\u767b\\u5f55token\\u9a8c\\u8bc1\",\"field\":\"token\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"\"},{\"name\":\"\\u9a8c\\u8bc1\\u7801\",\"field\":\"captcha\",\"type\":\"select\",\"content\":\"1\",\"option\":\"0||\\u4e0d\\u5f00\\u542f\\r\\n1||\\u56fe\\u5f62\\u9a8c\\u8bc1\\u7801\\r\\n2||\\u6ed1\\u52a8\\u9a8c\\u8bc1\"},{\"name\":\"\\u767b\\u5f55\\u80cc\\u666f\",\"field\":\"background\",\"type\":\"image\",\"content\":\"\\/static\\/admin\\/images\\/login-default-bg.jpg\",\"option\":\"\"}]', 1000, 1584749426, 1584749426, 0);
INSERT INTO `setting` VALUES (3, 1, '首页设置', '后台首页参数设置', 'index', '[{\"name\":\"\\u9ed8\\u8ba4\\u5bc6\\u7801\\u8b66\\u544a\",\"field\":\"password_warning\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u662f\\u5426\\u663e\\u793a\\u63d0\\u793a\\u4fe1\\u606f\",\"field\":\"show_notice\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u63d0\\u793a\\u4fe1\\u606f\\u5185\\u5bb9\",\"field\":\"notice_content\",\"type\":\"text\",\"content\":\"\\u6b22\\u8fce\\u6765\\u5230\\u4f7f\\u7528\\u672c\\u7cfb\\u7edf\\uff0c\\u5de6\\u4fa7\\u4e3a\\u83dc\\u5355\\u533a\\u57df\\uff0c\\u53f3\\u4fa7\\u4e3a\\u529f\\u80fd\\u533a\\u3002\",\"option\":\"\"}]', 1000, 1584749426, 1584749426, 0);

-- ----------------------------
-- Table structure for setting_group
-- ----------------------------
DROP TABLE IF EXISTS `setting_group`;
CREATE TABLE `setting_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作用模块',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `sort_number` int(10) NOT NULL DEFAULT 1000 COMMENT '排序',
  `auto_create_menu` tinyint(1) NOT NULL DEFAULT 0 COMMENT '自动生成菜单',
  `auto_create_file` tinyint(1) NOT NULL DEFAULT 0 COMMENT '自动生成配置文件',
  `icon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '设置分组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting_group
-- ----------------------------
INSERT INTO `setting_group` VALUES (1, 'admin', '后台设置', '后台管理方面的设置', 'admin', 1000, 1, 1, 'fa-adjust', 1584749426, 1584749426, 0);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工姓名',
  `sex` tinyint(2) NOT NULL DEFAULT 1 COMMENT '员工性别 1为男  2为女',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '生日',
  `entryTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入职时间',
  `is_dimission` tinyint(2) NOT NULL COMMENT '是否离职  1为离职 0为未离职',
  `is_del` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否删除  0为未删除  1为已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, '王强', 1, '2020-03-23 00:00:00', '2020-03-24 00:00:00', 0, 0);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT 1 COMMENT '用户等级',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJHJZLlp2bXhKeTltUEl0MTJwa2lXZC5KVFdCZ2ptVzMvTWxoalAyTHpydlJyd3E0MUtmTUh1' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '测试表-用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT 1 COMMENT '用户等级',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJC9uQWpzbk00aFE2U0V5VUhDQkYyU09kd2x2L2wya3Q4YjcyaDBIMEs5YjJ5ZVUzdG1FU3hx' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '/uploads/attachment/20190822/02fce9aecd6cadf6e019e988ad8703ce.png', 'test001', '测试001', '13000000001', 2, 'JDJ5JDEwJG5YLkNrUkJtUTJIUjJwMmZqSHZ6Qk96MlRTNlZTbE1TNU9qamdPeE00cGpXR0N4UnV5QW11', 1, 1584749425, 1584749425, 0);
INSERT INTO `user` VALUES (2, '/uploads/attachment/20190822/56644a9f283c058cd371316e186ef48a.png', 'test002', '测试2号会员', '18328374923', 3, 'JDJ5JDEwJEZmTHpOWmFlQlVkSzREMUhkLzdqVS5rWVhqOW95NVJrL09xQ3JSS1pZeDY2STBwaUlLMmRx', 1, 1584749425, 1584749425, 0);
INSERT INTO `user` VALUES (3, '/uploads/attachment/20190822/f0a7cd43074283b428b0a33ecfca5f9d.png', '测试3号', '测试3号', '18653165683', 4, 'JDJ5JDEwJEpzUWxJSDdlaU9rNkIxeGZ2eUQvTWV3VGExdE01ZHUvU1dBV2s5YXMwR1BXLk9ZazdOY2Jp', 1, 1584749426, 1584749426, 0);
INSERT INTO `user` VALUES (4, '/uploads/attachment/20190822/1771ce624eccb96aad992df540126d3b.png', '小女孩', '小女孩', '13638392923', 1, 'JDJ5JDEwJExneXNUaXplYTkvYWRTLnlYUDZvcE80S3M0elJoby9SOXVhSnhEMzZ6WDFlaG91Qi9vTnBX', 1, 1584749426, 1584749426, 0);

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/user_level_default.png' COMMENT '图片',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户等级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES (1, '普通用户', '普通用户', '/uploads/attachment/20190822/65e4ad92ece9fdb7f3822ba4fc322bf6.png', 1, 1584749426, 1584749426, 0);
INSERT INTO `user_level` VALUES (2, '青铜会员', '青铜会员', '/uploads/attachment/20190822/d0b153352b15ea7097403c563e9c3be4.png', 1, 1584749426, 1584749426, 0);
INSERT INTO `user_level` VALUES (3, '白银会员', '白银会员', '/uploads/attachment/20190822/72031bafedeba534d1e862b8d717f8db.png', 1, 1584749426, 1584749426, 0);
INSERT INTO `user_level` VALUES (4, '黄金会员', '黄金会员', '/uploads/attachment/20190822/6dcc15ea1701c449e63e6856f0931e2a.png', 1, 1584749426, 1584749426, 0);

SET FOREIGN_KEY_CHECKS = 1;
