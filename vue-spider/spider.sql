-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-01 13:11:29
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spider`
--
SET NAMES UTF8;
DROP DATABASE IF EXISTS spider;
CREATE DATABASE spider CHARSET=UTF8;
USE spider;
-- --------------------------------------------------------

--
-- 表的结构 `spider6`
--

CREATE TABLE `spider6` (
  `row` int(11) NOT NULL,
  `colum1` varchar(32) DEFAULT NULL,
  `colum2` varchar(32) DEFAULT NULL,
  `colum3` varchar(32) DEFAULT NULL,
  `colum4` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider6`
--

INSERT INTO `spider6` (`row`, `colum1`, `colum2`, `colum3`, `colum4`) VALUES
(1, '1', '0', '0', '1'),
(2, '1', '1', '1', '1'),
(3, '1', '1', '1', '1'),
(4, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `spider_detail`
--

CREATE TABLE `spider_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_amount` varchar(128) DEFAULT NULL,
  `order_count` int(11) DEFAULT NULL,
  `order_status` varchar(16) DEFAULT NULL,
  `user_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `spider_family`
--

CREATE TABLE `spider_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_family`
--

INSERT INTO `spider_family` (`fid`, `fname`) VALUES
(1, '喜剧'),
(2, '动作'),
(3, '爱情'),
(4, '冒险'),
(5, '冒险');

-- --------------------------------------------------------

--
-- 表的结构 `spider_hall`
--


DROP TABLE IF EXISTS `spider_hall`;
CREATE TABLE `spider_hall` (
  `hid` int(11) NOT NULL,
  `movie_theater_id` int(11) NOT NULL,
  `hall_name` varchar(32) DEFAULT NULL,
  `row` varchar(16) DEFAULT NULL,
  `column` varchar(16) DEFAULT NULL,
  `myrow` varchar(32) DEFAULT NULL,
  `mycol` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_hall`
--

INSERT INTO `spider_hall` (`hid`, `movie_theater_id`, `hall_name`, `row`, `column`,`myrow`,`mycol`) VALUES
(1, 1, '一号厅', '6', '4','1,1,1,1','1,1,1,1,1'),
(2, 1, '2号厅-双色激光厅', '6', '4','1,1','1,1,1,1,1'),
(3, 1, '三号厅', '6', '4','1,1,1','1,1,1,1,1,1'),
(4, 1, '四号厅', '6', '4','1,1,1','1,1,1,1,1,1'),
(5, 1, 'LUXE巨幕厅', '6', '4','1,1,1,1,1','1,1,1,1,1'),
(6, 1, '2号厅-双色激光厅', '4', '4','1,1,1','1,1,1,1,1,1'),
(7, 1, '九号厅', '5', '4','1,1,1,1','1,1,1,1,1,1.1'),
(8, 1, '七号厅', '6', '4','1,1,1,1,1','1,1,1,1,1'),
(9, 2, '小剧场激光', '7', '4','1,1,1','1,1,1,1,1,1'),
(10, 2, '4号激光厅', '8', '4','1,1,1','1,1,1,1,1,1'),
(11, 2, '1号厅-IMAX厅', '5', '4','1,1,1','1,1,1,1,1,1'),
(12, 2, '3号厅-IMAX厅', '5', '4','1,1,1','1,1,1,1,1,1'),
(13, 2, '小剧场激光', '5', '4','1,1,1','1,1,1,1,1,1'),
(14, 2, '2号激光厅', '5', '4','1,1,1','1,1,1,1,1,1'),
(15, 2, '1号厅-IMAX厅', '5', '4','1,1,1','1,1,1,1,1,1'),
(16, 2, '3号厅-IMAX厅', '5', '4','1,1,1','1,1,1,1,1,1');

--
-- 表的结构 `spider_hall_table`
--

CREATE TABLE `spider_hall_table` (
  `hallt` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `tab` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_hall_table`
--

INSERT INTO `spider_hall_table` (`hallt`, `hid`, `tab`) VALUES
(1, 6, 'spider6');

-- --------------------------------------------------------

--
-- 表的结构 `spider_index_carousel`
--

CREATE TABLE `spider_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_index_carousel`
--

INSERT INTO `spider_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'img/index/banner-1.jpg', '轮播广告商品1', 'product_details.html?lid=28'),
(2, 'img/index/banner2.png', '轮播广告商品2', 'product_details.htmllid=19'),
(3, 'img/index/banner3.png', '轮播广告商品3', 'lookforward.html'),
(4, 'img/index/banner4.png', '轮播广告商品4', 'lookforward.html');

-- --------------------------------------------------------

--
-- 表的结构 `spider_index_product`
--

CREATE TABLE `spider_index_product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(32) DEFAULT NULL,
  `href` varchar(64) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `score` int(32) DEFAULT NULL,
  `goodrate` int(32) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL,
  `detail` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_index_product`
--

INSERT INTO `spider_index_product` (`pid`, `pname`, `href`, `price`, `score`, `goodrate`, `pic`, `seq_recommended`, `seq_top_sale`, `detail`, `type`) VALUES
(1, '一出好戏', 'movie-detail.html?mid=1', '23.00', 5, 98, 'img/index/hot-1-1.jpg', 23, 33, '', '喜剧'),
(2, '快把我哥带走', 'movie-detail.html?mid=2', '23.00', 6, 98, 'img/index/hot-1.jpg', 23, 33, '', '奇幻 喜剧'),
(3, '大师兄', 'movie-detail.html?mid=3', '23.00', 5, 98, 'img/index/hot-2.jpg', 23, 33, '', '喜剧 惊悚 动作'),
(4, '精灵旅社3：疯狂', 'movie-detail.html?mid=4', '23.00', 7, 98, 'img/index/hot-3.jpg', 23, 33, '', '冒险 动画 奇幻'),
(5, '蚁人2：黄蜂女现身', 'movie-detail.html?mid=5', '23.00', 7, 98, 'img/index/hot-4.jpg', 23, 33, '', '动作 科幻 冒险'),
(6, '阿尔法：狼伴归途', 'movie-detail.html?mid=6', '23.00', 5, 98, 'img/index/hot-5.jpg', 23, 33, '', '动作 冒险'),
(7, '深海历险记', 'movie-detail.html?mid=7', '23.00', 5, 98, 'img/index/hot-6.jpg', 23, 33, '', '少儿 喜剧'),
(8, '碟中谍全面瓦解', 'movie-detail.html?mid=8', '23.00', 7, 98, 'img/index/hot-changci1.jpg', 23, 33, '火线重燃', '动作 惊悚 冒险'),
(9, '蚁人2：黄蜂女现身', 'movie-detail.html?mid=5', '23.00', 7, 98, 'img/index/hot-changci2.jpg', 23, 33, '超凡搭档出击', ''),
(10, '西红柿首富', 'movie-detail.html?mid=9', '23.00', 7, 98, 'img/index/hot-changci3.jpg', 23, 33, '是金子总会发光', '喜剧'),
(11, '金蝉脱壳', 'movie-detail.html?mid=11', '23.00', 7, 98, 'img/index/reping.jpg', 23, 33, '', ''),
(12, '一出好戏', 'href', '23.00', 7, 98, 'null', 23, 33, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `spider_movie`
--

CREATE TABLE `spider_movie` (
  `mid` int(11) NOT NULL,
  `mname` varchar(32) DEFAULT NULL,
  `Eng_name` varchar(16) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `area` varchar(16) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `length` int(8) DEFAULT NULL,
  `director` varchar(32) DEFAULT NULL,
  `staring` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `release_time` int(16) DEFAULT NULL,
  `detail` varchar(64) DEFAULT NULL,
  `texiao` varchar(64) DEFAULT NULL,
  `keyword` varchar(16) DEFAULT NULL,
  `keychar` varchar(16) DEFAULT NULL,
  `score` int(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `intr` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_movie`
--

INSERT INTO `spider_movie` (`mid`, `mname`, `Eng_name`, `time`, `area`, `language`, `length`, `director`, `staring`, `type`, `release_time`, `detail`, `texiao`, `keyword`, `keychar`, `score`, `title`, `price`, `intr`) VALUES
(1, '一出好戏', 'The Island', '现代', '大陆', '国语', 134, '黄渤', '黄渤/舒淇/王宝强/张艺兴/于和伟/', '喜剧', 2018, '众人身处荒岛', '2D', 'keyword', 'keychar', 5, '一出好戏 现代 大陆 黄渤 于和伟 黄渤 舒淇 yichuhaoxi王宝强 张艺兴于和伟 喜剧 2D 2d', 23, ''),
(2, '快把我哥带走', 'Go Brother', '现代', '大陆', '国语', 115, '郑芬芬', '张子枫/彭昱畅/赵今麦/孙泽源/方翔锐/刘冠毅', '奇幻/喜剧', 2018, '快把我哥待会你家', '2D', 'keyword', 'keychar', 6, '快把我哥带走奇幻/kuaibawogedaizou喜剧剧情张子枫/彭昱畅/赵今麦/孙泽源/方翔锐/刘冠毅2D 2d ', 23, ''),
(3, '大师兄', 'Big Brother', '现代', '大陆', '国语', 134, '阚家伟/甄子丹', ' 陈乔恩 / 喻亢 / 骆明劼 / 汤君慈 / 汤君耀 / 李靖', '喜剧 惊悚 动作', 2018, '甄子丹当老师', '3D', 'keyword', 'keychar', 5, '大师兄喜剧动作 甄子丹2d 2D', 23, ''),
(4, '精灵旅社3:疯狂假期', 'Hotel Transylvan', '现代', '大陆', '国语', 134, '格恩迪·塔塔科夫斯基/亚当·桑德勒', '凯瑟琳·哈恩 / 史蒂夫·布西密 / ', '冒险 动画 奇幻', 2018, '爆笑启航，真爱一夏', '2D', 'keyword', 'keychar', 7, '精灵旅社3:疯狂假期冒险 动画 奇幻凯瑟琳·哈恩 / 史蒂夫·布西密 3d 3D jinllinglvshe', 0, ''),
(5, '蚁人2:黄蜂女现身', 'Ant-Man and the ', '现代', '大陆', '英语', 134, '佩顿·里德/保罗·路德 /', '保罗·路德 / 伊万杰琳·莉莉 / 迈克尔·佩纳 / 沃尔顿·戈', '动作 科幻 冒险', 2018, '超凡搭档组队出击，不以大小论英雄', '3D', 'keyword', 'keychar', 5, '蚁人2:黄蜂女现身 yiren huangfengnv 科幻冒险动作 现代 英语 ', 23, ' '),
(6, '阿尔法：狼伴归途', '2D', '现代', '大陆', '国语', 134, '艾尔伯特·休斯/柯蒂·斯密特-麦菲 /', '艾尔伯特·休斯/柯蒂·斯密特-麦菲 /', '动作 冒险', 2018, '最忠诚的朋友，最艰难的归途', 'pic', 'keyword', 'keychar', 7, '阿尔法：狼伴归途 langbanguitu 国语动作 冒险奇幻', 23, ''),
(7, '深海历险记', 'detail', '现代', '大陆', '国语', 134, '陈红 / 张云龙 /', ' 陈红 / 张云龙 / 杨希 / 郭政建 / 张遥函 / 胡静 ', '少儿 喜剧', 2018, '疯狂海底城', '3D', 'keyword', 'keychar', 5, '深海历险记 少儿 喜剧 奇幻陈红 / 张云龙', 23, ''),
(8, '碟中谍', 'Mission: Impossi', '现代', '大陆', '国语', 134, '克里斯托弗·麦奎里/汤姆·克鲁斯 / ', '文·瑞姆斯 / 西蒙·佩吉 / 丽贝卡·弗格森 ', '动作 惊悚 冒险', 2018, '火线重燃', '2D', 'keyword', 'keychar', 8, '碟中谍文·瑞姆斯 / 西蒙·佩吉动作 惊悚 冒险diezhongdie', 23, ''),
(9, '西红柿首富', 'Hello, Mr. Billi', '现代', '大陆', '国语', 134, '闫非', ' 彭大魔/沈腾', '喜剧', 2018, '是金子总会花光的', '2D', 'keyword', 'keychar', 7, '西红柿首富彭大魔/沈腾喜剧 2D', 43, '《西虹市首富》的故事发生在《夏洛特烦恼》中的“特烦恼”之城“西虹市”。混迹于丙级业余足球队的守门员王多鱼（沈腾饰演），因比赛失利被开除离队。正处于人生最低谷的他接受了神秘台湾财团“一个月花光十亿资金”的挑战。本以为快乐生活就此开始，王多鱼却第一次感到“花钱特烦恼”！想要人生反转走上巅峰，真的没有那么简单。'),
(10, '反贪风暴3', 'HL Storm', '现代', '大陆', '国语', 134, '德禄', ' 古天乐 / 张智霖 / 郑嘉颖 / ', '动作 犯罪', 2018, '是反贪以人民的名义', '2D', 'keyword', 'keychar', 9, '反贪风暴3古天乐 / 张智霖 / 郑嘉颖 /动作 犯罪', 45, '《西虹市首富》的故事发生在《夏洛特烦恼》中的“特烦恼”之城“西虹市”。混迹于丙级业余足球队的守门员王多鱼（沈腾饰演），因比赛失利被开除离队。正处于人生最低谷的他接受了神秘台湾财团“一个月花光十亿资金”的挑战。本以为快乐生活就此开始，王多鱼却第一次感到“花钱特烦恼”！想要人生反转走上巅峰，真的没有那么简单。'),
(11, '道高一丈', 'Hello, Mr. Billi', '现代', '大陆', '国语', 134, '姜凯阳', ' /聂远 / 谭凯 / 徐露 /', '犯罪 剧情 悬疑', 2018, '魔高一尺、道高一丈', '3D', 'keyword', 'keychar', 9, '道高一丈姜凯阳犯罪 剧情 悬疑', 55, ''),
(12, '败者为王', 'Lee Chong Wei', '现代', '大陆', '国语', 134, '闫非', ' 彭大魔/沈腾', '喜剧 爱情', 2018, '永不放弃', '3D', 'keyword', 'keychar', 6, '摆着为王喜剧 爱情彭大魔/沈腾', 43, ''),
(13, '传奇的诞生', 'Pelé: Birth of a', '现代', '大陆', '国语', 134, '闫非', ' 杰夫·泽姆巴利斯特 / 迈克尔·泽姆巴利斯特/凯文·德·保拉 ', '喜剧', 2018, '球王贝利', '3d', 'keyword', 'keychar', 5, '传奇的诞生杰夫·泽姆巴利斯特喜剧爱情 冒险 ', 43, ''),
(14, '三只小猪2', 'Hello, Mr. Billi', '现代', '大陆', '国语', 134, '闫非', ' 刘炜/王晓彤 ', '动画', 2018, '农村励志大叔，遇到三只改变命运的小猪', 'pic', 'keyword', 'keychar', 5, '动画 少儿 三只小猪2 冒险 刘炜/王晓彤snazhixiiaozhu', 43, ''),
(15, '未来机器城', 'Next Gen', '现代', '大陆', '国语', 134, '闫非', ' 彭大魔/沈腾', '动画 科幻 冒险', 2018, '终结孤单', '2D', 'keyword', 'keychar', 5, '未来机器城动画 科幻 冒险 wielaijiqicheng', 43, ''),
(16, '反贪风暴3', 'HL Storm', '现代', '大陆', '国语', 134, '德禄', ' 古天乐 / 张智霖 / 郑嘉颖 / ', '动作 犯罪', 2018, '是反贪以人民的名义', 'pic', 'keyword', 'keychar', 9, '反贪风暴3古天乐 / 张智霖 / 郑嘉颖 /动作 犯罪', 43, ''),
(17, '道高一丈', 'Hello, Mr. Billi', '现代', '大陆', '国语', 134, '姜凯阳', ' /聂远 / 谭凯 / 徐露 /', '犯罪 剧情 悬疑', 2018, '魔高一尺、道高一丈', '2D', 'keyword', 'keychar', 9, '道高一丈姜凯阳犯罪 剧情 悬疑', 43, ''),
(18, '败者为王', 'Lee Chong Wei', '现代', '大陆', '国语', 134, '闫非', ' 彭大魔/沈腾', '喜剧 爱情', 2018, '永不放弃', '2d', 'keyword', 'keychar', 6, '摆着为王喜剧 爱情彭大魔/沈腾', 43, ''),
(19, '传奇的诞生', 'Pelé: Birth of a', '现代', '大陆', '国语', 134, '闫非', ' 杰夫·泽姆巴利斯特 / 迈克尔·泽姆巴利斯特/凯文·德·保拉 ', '喜剧', 2018, '球王贝利', '3d', 'keyword', 'keychar', 5, '传奇的诞生杰夫·泽姆巴利斯特喜剧爱情 冒险 ', 43, ''),
(20, '三只小猪2', 'Hello, Mr. Billi', '现代', '大陆', '国语', 134, '闫非', ' 刘炜/王晓彤 ', '动画', 2018, '农村励志大叔，遇到三只改变命运的小猪', '2D', 'keyword', 'keychar', 5, '动画 少儿 三只小猪2 冒险 刘炜/王晓彤snazhixiiaozhu', 43, ''),
(21, '未来机器城', 'Next Gen', '现代', '大陆', '国语', 134, '闫非', ' 彭大魔/沈腾', '动画 科幻 冒险', 2018, '终结孤单', '3D', 'keyword', 'keychar', 5, '未来机器城动画 科幻 冒险 wielaijiqicheng', 43, '');

-- --------------------------------------------------------

--
-- 表的结构 `spider_movie_pic`
--

CREATE TABLE `spider_movie_pic` (
  `pid` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `sm` int(11) NOT NULL,
  `md` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_movie_pic`
--

INSERT INTO `spider_movie_pic` (`pid`, `movie_id`, `sm`, `md`) VALUES
(1, 1, 0, 'img/index/hot-1-1.jpg'),
(2, 1, 0, 'img/product/md/yi-1-1.png'),
(3, 1, 0, 'img/product/md/yi-1-3.png'),
(4, 1, 0, 'img/product/md/yi-1-4.png'),
(5, 1, 0, 'img/product/md/yi-1-5.png'),
(6, 1, 0, 'img/product/md/yi-1-6.png'),
(7, 1, 0, 'img/product/md/yi-1-7.png'),
(8, 1, 0, 'img/product/md/yi-1-8.png'),
(9, 1, 0, 'img/product/md/yi-1-9.png'),
(10, 1, 0, 'img/product/md/yi-1-10.png'),
(11, 1, 0, 'img/product/md/yi-1-12.png'),
(12, 1, 0, 'img/product/md/yi-1-13.png'),
(13, 1, 0, 'img/product/md/yi-1-14.png'),
(14, 2, 0, 'img/index/hot-1.jpg'),
(15, 2, 0, 'img/product/md/ge-1.png'),
(16, 2, 0, 'img/product/md/ge-1.png'),
(17, 2, 0, 'img/product/md/ge-2.png'),
(18, 2, 0, 'img/product/md/ge-3.png'),
(19, 2, 0, 'img/product/md/ge-4.png'),
(20, 2, 0, 'img/product/md/ge-5.png'),
(21, 2, 0, 'img/product/md/ge-6.png'),
(22, 2, 0, 'img/product/md/ge-7.png'),
(23, 3, 0, 'img/index/hot-2.jpg'),
(24, 3, 0, 'img/product/md/shix-1.png'),
(25, 3, 0, 'img/product/md/shix-2.png'),
(26, 4, 0, 'img/index/hot-3.jpg'),
(27, 4, 0, 'img/product/md/jl-1.png'),
(28, 4, 0, 'img/product/md/jl-2.png'),
(29, 4, 0, 'img/product/md/jl-3.png'),
(30, 5, 0, 'img/index/hot-4.jpg'),
(31, 5, 0, 'img/product/md/yr-1.png'),
(32, 5, 0, 'img/product/md/yr-2.png'),
(33, 6, 0, 'img/index/hot-5.jpg'),
(34, 6, 0, 'img/product/md/lang-1.png'),
(35, 6, 0, 'img/product/md/lang-2.png'),
(36, 7, 0, 'img/index/hot-6.jpg'),
(37, 7, 0, 'img/product/md/sh-1.png'),
(38, 7, 0, 'img/product/md/sh-2.png'),
(39, 8, 0, 'img/index/hot-changci1.jpg'),
(40, 8, 0, 'img/product/md/die-2.png'),
(41, 8, 0, 'img/product/md/die-2.png'),
(42, 9, 0, 'img/index/hot-changci3.jpg'),
(43, 9, 0, 'img/product/md/xh-2.png'),
(44, 9, 0, 'img/product/md/xh-2.png'),
(45, 10, 0, 'img/product/md/fantan-1.png'),
(46, 11, 0, 'img/product/md/dao-1.png'),
(47, 12, 0, 'img/product/md/baizhe-1.png'),
(48, 13, 0, 'img/product/md/chuanqi-1.png'),
(49, 14, 0, 'img/product/md/zhu-1.png'),
(50, 15, 0, 'img/product/md/jiqi-1.png'),
(51, 16, 0, 'img/product/md/fantan-1.png'),
(52, 17, 0, 'img/product/md/dao-1.png'),
(53, 18, 0, 'img/product/md/baizhe-1.png'),
(54, 19, 0, 'img/product/md/chuanqi-1.png'),
(55, 20, 0, 'img/product/md/zhu-1.png'),
(56, 21, 0, 'img/product/md/jiqi-1.png');

-- --------------------------------------------------------

--
-- 表的结构 `spider_movie_theater`
--

CREATE TABLE `spider_movie_theater` (
  `mtid` int(11) NOT NULL,
  `mtname` varchar(32) DEFAULT NULL,
  `mt_address` varchar(64) DEFAULT NULL,
  `mt_intr` varchar(64) DEFAULT NULL,
  `pic` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_movie_theater`
--

INSERT INTO `spider_movie_theater` (`mtid`, `mtname`, `mt_address`, `mt_intr`, `pic`) VALUES
(1, '左岸国际电影城(松江沃尔玛店)', '地址：【淮海中路99号大上海时代广场6楼（柳林路口）】淮海中路99号大上海时代广场6楼(柳林路口)', '当前四部影片正在热映中', 'img/index/movie-theater-4.jpg'),
(2, '青春光线电影院\r\n', '地址：【滨河路乙1号雍和航星园74-76号楼】滨河路乙1号雍和航星园74-76号楼', '当前三部影片正在热映中', 'img/index/movie-theater-3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `spider_order`
--

CREATE TABLE `spider_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `spider_paipian`
--

CREATE TABLE `spider_paipian` (
  `pid` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `movie_theater_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `time` varchar(16) DEFAULT NULL,
  `hall_name` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_paipian`
--

INSERT INTO `spider_paipian` (`pid`, `movie_id`, `movie_theater_id`, `hall_id`, `time`,`hall_name`) VALUES
(1, 1, 1, 2, '4:00','2号厅-双色激光厅'),
(2, 1, 1, 1, '4:00','三号厅'),
(3, 2, 1, 7, '12:00','九号厅'),
(4, 3, 1, 2, '8:00','2号厅-双色激光厅'),
(5, 4, 1, 8, '9:00','七号厅'),
(6, 5, 1, 1, '4:00','一号厅'),
(7, 6, 1, 5, '12:00','LUXE巨幕厅'),
(8, 7, 1, 2, '8:00','2号厅-双色激光厅'),
(9, 8, 1, 4, '9:00','四号厅'),
(10, 9, 1, 8, '4:00','七号厅'),
(11, 10, 1, 1, '12:00','一号厅'),
(12, 11, 1, 4, '8:00','四号厅'),
(13, 12, 1, 2, '9:00','2号厅-双色激光厅'),
(14, 13, 1, 3, '4:00','三号厅'),
(15, 14, 1, 5, '12:00','LUXE巨幕厅'),
(16, 15, 1, 6, '8:00','三号厅'),
(17, 16, 1, 2, '9:00','2号厅-双色激光厅'),
(18, 17, 1, 4, '8:00','三号厅'),
(19, 18, 1, 2, '9:00','2号厅-双色激光厅'),
(20, 19, 1, 3, '4:00','三号厅'),
(21, 20, 1, 5, '12:00','LUXE巨幕厅'),
(22, 21, 1, 6, '8:00','2号厅-双色激光厅'),
(23, 22, 1, 2, '9:00','2号厅-双色激光厅'),
(24, 1, 2, 1, '4:00','一号厅'),
(25, 2, 2, 7, '12:00','九号厅'),
(26, 3, 2, 2, '8:00','2号厅-双色激光厅'),
(27, 4, 2, 8, '9:00','七号厅'),
(28, 5, 2, 1, '4:00','一号厅'),
(29, 6, 2, 5, '12:00','LUXE巨幕厅'),
(30, 7, 2, 2, '8:00','2号厅-双色激光厅'),
(31, 8, 2, 4, '9:00','四号厅'),
(32, 9, 2, 8, '4:00','七号厅'),
(33, 10, 2, 1, '12:00','一号厅'),
(34, 11, 1, 4, '8:00','四号厅'),
(35, 12, 2, 2, '9:00','2号厅-双色激光厅'),
(36, 13, 1, 3, '4:00','三号厅'),
(37, 14, 2, 5, '12:00','LUXE巨幕厅'),
(38, 15, 2, 6, '8:25','2号厅-双色激光厅'),
(39, 16, 2, 2, '9:00','2号厅-双色激光厅'),
(40, 17, 2, 4, '8:00','四号厅'),
(41, 18, 2, 2, '9:00','2号厅-双色激光厅'),
(42, 19, 2, 3, '4:00','三号厅'),
(43, 20, 2, 5, '12:00','LUXE巨幕厅'),
(44, 21, 2, 6, '8:00','2号厅-双色激光厅'),
(45, 22, 2, 2, '9:00','2号厅-双色激光厅'),
(46, 19, 1, 3, '11:00','三号厅'),
(47, 20, 1, 5, '22:00','LUXE巨幕厅'),
(48, 21, 1, 6, '5:00','2号厅-双色激光厅'),
(49, 22, 1, 2, '19:00','2号厅-双色激光厅'),
(50, 1, 2, 1, '14:00','一号厅'),
(51, 2, 2, 7, '19:54','九号厅'),
(52, 3, 2, 2, '24:00','三号厅'),
(53, 4, 2, 8, '17:25','七号厅'),
(54, 18, 1, 2, '9:24','2号厅-双色激光厅'),
(55, 19, 1, 3, '4:00','三号厅'),
(56, 20, 1, 5, '12:11','LUXE巨幕厅'),
(57, 21, 1, 6, '8:00','2号厅-双色激光厅'),
(58, 22, 1, 2, '21:00','2号厅-双色激光厅'),
(59, 1, 2, 1, '20:00','一号厅'),
(60, 2, 2, 7, '12:00','九号厅'),
(61, 3, 2, 2, '8:30','2号厅-双色激光厅'),
(62, 4, 2, 8, '9:25','七号厅'),
(63, 5, 2, 1, '4:55','一号厅'),
(64, 6, 2, 5, '12:45','LUXE巨幕厅'),
(65, 2, 1, 7, '13:00','九号厅'),
(66, 3, 1, 4, '6:00','四号厅'),
(67, 4, 1, 8, '8:00','七号厅'),
(68, 5, 1, 6, '14:00','2号厅-双色激光厅'),
(69, 6, 1, 3, '22:00','三号厅'),
(70, 7, 1, 5, '18:00','LUXE巨幕厅'),
(71, 8, 1, 6, '19:00','2号厅-双色激光厅'),
(72, 9, 1, 1, '14:00','一号厅'),
(73, 19, 1, 2, '14:00','2号厅-双色激光厅'),
(74, 20, 1, 3, '2:11','三号厅'),
(75, 21, 1, 4, '18:00','四号厅'),
(76, 22, 1, 3, '2:00','三号厅'),
(77, 1, 2, 7, '13:00','九号厅'),
(78, 2, 2, 2, '1:00','2号厅-双色激光厅'),
(79, 3, 2, 8, '18:30','七号厅'),
(80, 4, 2, 1, '19:25','一号厅'),
(81, 5, 2, 3, '14:55','三号厅'),
(82, 6, 2, 5, '6:45','LUXE巨幕厅');

-- --------------------------------------------------------

--
-- 表的结构 `spider_user`
--

CREATE TABLE `spider_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `zhanghu` int(11) DEFAULT NULL,
  `coupon` int(11) DEFAULT NULL,
  `isLogin` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_user`
--

INSERT INTO `spider_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`, `jifen`, `zhanghu`, `coupon`, `isLogin`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', 0, 11, 2, 0, 'false'),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', 1, 11, 2, 0, 'false'),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1, 44, 45, 9, 'false'),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0, 1, 44, 45, 'false');

-- --------------------------------------------------------

--
-- 表的结构 `spider_user_comment`
--

CREATE TABLE `spider_user_comment` (
  `cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `content` varchar(360) DEFAULT NULL,
  `movie` varchar(64) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spider_user_comment`
--

INSERT INTO `spider_user_comment` (`cid`, `mid`, `user_name`, `content`, `movie`, `time`) VALUES
(2, 3, 'dangdang', '不错不错', '大师兄', '2018-7-31'),
(3, 2, 'doudou', '还行吧', '快把我哥带走', '2018-8-31'),
(4, 7, 'yaya', '有趣', '海底历险记', '2018-9-9'),
(5, 1, 'doudou', '极限挑战，这就是命', '一出好戏', '2018-8-31'),
(6, 4, 'yaya', '有趣', '精灵旅社', '2018-9-9'),
(9, 9, 'dingding', '这场“花钱也累”的自嗨白日梦，显然比当年的《夏洛特烦恼》更疯狂更荒诞，也更深入对人性的讨伐。沈腾的喜剧天赋真的无法复刻，无论为己谋利还是替人圆梦，每一个笑点都打磨得恰到好处', '西红柿首富', '2018-8-2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spider6`
--
ALTER TABLE `spider6`
  ADD PRIMARY KEY (`row`);

--
-- Indexes for table `spider_detail`
--
ALTER TABLE `spider_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `spider_family`
--
ALTER TABLE `spider_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `spider_hall`
--
ALTER TABLE `spider_hall`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `spider_hall_table`
--
ALTER TABLE `spider_hall_table`
  ADD PRIMARY KEY (`hallt`);

--
-- Indexes for table `spider_index_carousel`
--
ALTER TABLE `spider_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `spider_index_product`
--
ALTER TABLE `spider_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `spider_movie`
--
ALTER TABLE `spider_movie`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `spider_movie_pic`
--
ALTER TABLE `spider_movie_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `spider_movie_theater`
--
ALTER TABLE `spider_movie_theater`
  ADD PRIMARY KEY (`mtid`);

--
-- Indexes for table `spider_order`
--
ALTER TABLE `spider_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `spider_paipian`
--
ALTER TABLE `spider_paipian`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `spider_user`
--
ALTER TABLE `spider_user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `spider_user_comment`
--
ALTER TABLE `spider_user_comment`
  ADD PRIMARY KEY (`cid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `spider6`
--
ALTER TABLE `spider6`
  MODIFY `row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `spider_detail`
--
ALTER TABLE `spider_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `spider_family`
--
ALTER TABLE `spider_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `spider_hall`
--
ALTER TABLE `spider_hall`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `spider_hall_table`
--
ALTER TABLE `spider_hall_table`
  MODIFY `hallt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `spider_index_carousel`
--
ALTER TABLE `spider_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `spider_index_product`
--
ALTER TABLE `spider_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `spider_movie`
--
ALTER TABLE `spider_movie`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `spider_movie_pic`
--
ALTER TABLE `spider_movie_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- 使用表AUTO_INCREMENT `spider_movie_theater`
--
ALTER TABLE `spider_movie_theater`
  MODIFY `mtid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `spider_order`
--
ALTER TABLE `spider_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `spider_paipian`
--
ALTER TABLE `spider_paipian`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- 使用表AUTO_INCREMENT `spider_user`
--
ALTER TABLE `spider_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `spider_user_comment`
--
ALTER TABLE `spider_user_comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
