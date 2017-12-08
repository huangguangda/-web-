-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-03 15:11:50
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_bigtype`
--

CREATE TABLE `tb_bigtype` (
  `b_id` int(11) NOT NULL COMMENT '大类别ID',
  `b_name` varchar(50) DEFAULT NULL COMMENT '类型名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_bigtype`
--

INSERT INTO `tb_bigtype` (`b_id`, `b_name`) VALUES
(1, '计算机理论'),
(2, '硬件'),
(3, '操作系统'),
(4, '程序设计'),
(5, '网络与数据通信'),
(6, '图形图像'),
(7, '软件工程'),
(8, '人工智能'),
(9, '数据库');

-- --------------------------------------------------------

--
-- 表的结构 `tb_book`
--

CREATE TABLE `tb_book` (
  `book_id` int(11) NOT NULL COMMENT '书ID',
  `book_name` varchar(50) DEFAULT NULL COMMENT '书名',
  `book_author` varchar(50) DEFAULT NULL COMMENT '作者',
  `book_isbn` varchar(10) DEFAULT NULL COMMENT '图书isbn码',
  `book_pubid` int(11) DEFAULT NULL COMMENT '出版社ID',
  `book_pubtime` datetime DEFAULT NULL COMMENT '出版时间',
  `s_id` int(11) DEFAULT NULL COMMENT '书小类型ID',
  `book_addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `book_oldprice` float DEFAULT NULL COMMENT '书原价',
  `book_newprice` float DEFAULT NULL COMMENT '本站的价格',
  `book_img` varchar(100) DEFAULT NULL COMMENT '书图片路径',
  `book_zs` int(11) DEFAULT NULL COMMENT '图书字数',
  `book_bc` varchar(50) DEFAULT NULL COMMENT '版权',
  `book_about` text COMMENT '图书介绍',
  `book_directory` text COMMENT '图书目录',
  `book_idnew` bit(1) DEFAULT NULL COMMENT '是否为新书',
  `book_issepprice` bit(1) DEFAULT NULL COMMENT '是否特价',
  `book_ishost` bit(1) DEFAULT NULL COMMENT '是否热卖',
  `book_ishave` bit(1) DEFAULT NULL COMMENT '是否有货',
  `book_bookcc` int(11) DEFAULT NULL COMMENT '书的层次',
  `book_browsertime` int(11) DEFAULT NULL COMMENT '浏览次数',
  `book_sell` int(11) DEFAULT '0' COMMENT '售量销'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_book`
--

INSERT INTO `tb_book` (`book_id`, `book_name`, `book_author`, `book_isbn`, `book_pubid`, `book_pubtime`, `s_id`, `book_addtime`, `book_oldprice`, `book_newprice`, `book_img`, `book_zs`, `book_bc`, `book_about`, `book_directory`, `book_idnew`, `book_issepprice`, `book_ishost`, `book_ishave`, `book_bookcc`, `book_browsertime`, `book_sell`) VALUES
(2, '实战突击：ASP.NET项目)', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 2, NULL, 89.8, 61.9, 'asp2.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 0),
(4, 'thinkphp', 'Tom', NULL, NULL, NULL, 1, NULL, NULL, 30.5, 'php1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'ASP.NET项目开发案例整合(含DVD光盘1张)', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 2, NULL, 89.8, 61.9, 'asp2.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 0),
(6, '实战突击：ASP.NET项目', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 2, NULL, 89.8, 61.9, 'asp2.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'0', NULL, NULL, NULL, NULL, 0),
(7, 'ASP.NET项目开发案例整合(含DVD光盘1张)', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 3, NULL, 89.8, 61.9, 'asp1.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 0),
(8, '实战突击：ASP.NET项目)', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 2, NULL, 89.8, 61.9, 'asp2.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 0),
(9, '实战突击：ASP.NET项目', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 3, NULL, 89.8, 61.9, 'ap3.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 0),
(10, 'ASP.NET项目开发案例整合(含DVD光盘1张)', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 1, NULL, 89.8, 61.9, 'asp2.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `b_id` int(11) DEFAULT NULL COMMENT '打类型Id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '订购人的昵称',
  `user_truename` varchar(50) DEFAULT NULL COMMENT '订购人的真实名字',
  `user_address` varchar(100) DEFAULT NULL COMMENT '订购人地址',
  `user_sex` char(2) DEFAULT NULL COMMENT '订购人的性别',
  `user_yb` char(10) DEFAULT NULL COMMENT '订购人的邮政编码',
  `user_tel` char(20) DEFAULT NULL COMMENT '订购人电话',
  `book_newprice` float DEFAULT NULL COMMENT '订购价格',
  `order_yjprice` float DEFAULT NULL COMMENT '邮寄价格',
  `order_num` int(11) DEFAULT NULL COMMENT '定数量',
  `order_totalprice` float DEFAULT NULL COMMENT '总价格',
  `order_rectype` varchar(20) DEFAULT NULL COMMENT '收货方式',
  `order_paytype` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `order_addtIme` datetime DEFAULT NULL COMMENT '订单时间',
  `order_isfk` bit(1) DEFAULT b'0' COMMENT '是否付款',
  `order_idfh` bit(1) DEFAULT b'0' COMMENT '是否发货',
  `order_issh` bit(1) DEFAULT b'0' COMMENT '是否收获',
  `order_idqx` bit(1) DEFAULT b'0' COMMENT '是否取消'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tb_smalltype`
--

CREATE TABLE `tb_smalltype` (
  `s_id` int(11) NOT NULL COMMENT '小类型Id',
  `s_name` varchar(50) DEFAULT NULL COMMENT '小类型名',
  `b_id` varchar(50) DEFAULT NULL COMMENT '大类型Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_smalltype`
--

INSERT INTO `tb_smalltype` (`s_id`, `s_name`, `b_id`) VALUES
(1, 'PHP', '4'),
(2, 'asp.net', '4'),
(3, 'javaScript', '1'),
(4, 'falsh', '4'),
(5, 'java', '4'),
(6, 'Oracle', '1'),
(7, 'sql', '2'),
(8, 'Foxpro', '1'),
(9, 'Access', '1'),
(10, 'CorelDRAW', '2'),
(11, 'Photoshop', '2'),
(12, 'Illustrator', '6'),
(13, 'falsh', '6');

-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `user_truename` varchar(50) DEFAULT NULL COMMENT '真实名字',
  `user_pwd` char(50) DEFAULT NULL COMMENT '用户密码',
  `user_email` varchar(50) DEFAULT NULL COMMENT 'email',
  `user_sex` char(2) DEFAULT NULL COMMENT '性别',
  `user_tel` char(20) DEFAULT NULL COMMENT '联系电话',
  `user_qq` char(20) DEFAULT NULL COMMENT 'QQ',
  `user_address` varchar(100) DEFAULT NULL COMMENT '地址',
  `user_logintimes` int(11) DEFAULT NULL COMMENT '登陆次数',
  `user_ip` char(20) DEFAULT NULL COMMENT 'ip',
  `user_yb` char(20) DEFAULT NULL COMMENT '邮政编码',
  `user_type` tinyint(4) DEFAULT NULL COMMENT '用户类别标识',
  `user_question` varchar(200) DEFAULT NULL COMMENT '要回密码问题',
  `user_answer` varchar(200) DEFAULT NULL COMMENT '要回密码问题',
  `user_photo` varchar(50) DEFAULT NULL COMMENT '照片地址',
  `user_truepwd` char(50) DEFAULT NULL COMMENT '真实密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_truename`, `user_pwd`, `user_email`, `user_sex`, `user_tel`, `user_qq`, `user_address`, `user_logintimes`, `user_ip`, `user_yb`, `user_type`, `user_question`, `user_answer`, `user_photo`, `user_truepwd`) VALUES
(21, 'tm123', NULL, '202cb962ac59075b964b07152d234b70', '994610321@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '1', NULL, 'c4ca4238a0b923820dcc509a6f75849b', '1@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '121', NULL, '202cb962ac59075b964b07152d234b70', '1@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '1233', NULL, '202cb962ac59075b964b07152d234b70', '1@qq.com', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '13044245271', NULL, '202cb962ac59075b964b07152d234b70', '1@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '12131', 'xxx', '202cb962ac59075b964b07152d234b70', '3@qq.com', '男', '123213', '321312', '312321', NULL, NULL, NULL, NULL, '333', '33', NULL, NULL),
(27, '111', '1', 'c4ca4238a0b923820dcc509a6f75849b', '11@qq.com', NULL, '1', '1', '1', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL),
(28, '111212', '121', '289dff07669d7a23de0ef88d2f7129e7', '1@qq.com', NULL, '12', '1', '1', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL),
(29, '21331', '121', 'c20ad4d76fe97759aa27a0c99bff6710', '', NULL, '1', '1', '1', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL),
(30, '11', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1@qq.com', '男', '1', '1', '1', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL),
(31, '1a', NULL, '202cb962ac59075b964b07152d234b70', '11@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '11aaa', '1', '202cb962ac59075b964b07152d234b70', '1@qq.com', '男', '1', '1', '1', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL),
(33, '12333', NULL, '202cb962ac59075b964b07152d234b70', '1@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '123', NULL, '202cb962ac59075b964b07152d234b70', '994610321@qq.com', '男', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tb_word`
--

CREATE TABLE `tb_word` (
  `id` int(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `word` varchar(120) NOT NULL,
  `date` date NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_word`
--

INSERT INTO `tb_word` (`id`, `user`, `word`, `date`, `datetime`) VALUES
(8, '123', '诸君：我喜欢萝莉害羞喂，110吗？这里有个hentai！', '2017-12-03', '2017-12-03 10:40:47'),
(9, '123', '把愿望寄托在来世的人。。。6666', '2017-12-03', '2017-12-03 10:41:04'),
(10, '123', '来，给个封面', '2017-12-03', '2017-12-03 10:41:22'),
(11, 'tm123', '哈喽，大家好啊！', '2017-12-03', '2017-12-03 10:42:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bigtype`
--
ALTER TABLE `tb_bigtype`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tb_book`
--
ALTER TABLE `tb_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tb_smalltype`
--
ALTER TABLE `tb_smalltype`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_word`
--
ALTER TABLE `tb_word`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_bigtype`
--
ALTER TABLE `tb_bigtype`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '大类别ID', AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `tb_book`
--
ALTER TABLE `tb_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书ID', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID';
--
-- 使用表AUTO_INCREMENT `tb_smalltype`
--
ALTER TABLE `tb_smalltype`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '小类型Id', AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id', AUTO_INCREMENT=35;
--
-- 使用表AUTO_INCREMENT `tb_word`
--
ALTER TABLE `tb_word`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
