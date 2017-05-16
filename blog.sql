-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 05 月 16 日 04:03
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- 表的结构 `blog_blog`
--

CREATE TABLE IF NOT EXISTS `blog_blog` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `blog_blog`
--

INSERT INTO `blog_blog` (`id`, `title`, `content`, `date`) VALUES
(1, '第一条博文', '成功！！！', '2017-04-03 14:57:23'),
(2, '第二条博文', '成功！！！', '2017-04-03 14:58:48'),
(3, '第三条博文', '成功！！！', '2017-04-03 14:59:51'),
(4, '第四条博文', '成功！！！ ', '2017-04-03 15:01:57'),
(5, '第五条博文', '成功！！', '2017-04-03 15:08:56'),
(6, '第六条博文', '成功！！！', '2017-04-03 17:08:38'),
(7, '第七条博文', '成功！！！', '2017-04-03 17:26:16'),
(8, '第八条博文', '成功！！！', '2017-04-03 17:27:28'),
(9, '第九条博文', '成功！！！', '2017-04-03 17:30:32');

-- --------------------------------------------------------

--
-- 表的结构 `blog_skin`
--

CREATE TABLE IF NOT EXISTS `blog_skin` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `small_bg` varchar(200) NOT NULL,
  `big_bg` varchar(200) NOT NULL,
  `bg_color` varchar(200) NOT NULL,
  `bg_text` varchar(200) NOT NULL,
  `bg_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `blog_skin`
--

INSERT INTO `blog_skin` (`id`, `small_bg`, `big_bg`, `bg_color`, `bg_text`, `bg_flag`) VALUES
(1, 'small_bg1.png', 'bg1.jpg', '#E7E9E8', '皮肤1', 0),
(2, 'small_bg2.png', 'bg2.jpg', '#ECF0FC', '皮肤2', 0),
(3, 'small_bg3.png', 'bg3.jpg', '#E2E2E2', '皮肤3', 0),
(4, 'small_bg4.png', 'bg4.jpg', '#FFFFFF', '皮肤4', 0),
(5, 'small_bg5.png', 'bg5.jpg', '#F3F3F3', '皮肤5', 0),
(6, 'small_bg6.png', 'bg6.jpg', '#EBDEBE', '皮肤6', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `pass` char(40) NOT NULL,
  `ques` varchar(200) NOT NULL,
  `ans` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `ps` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `blog_user`
--

INSERT INTO `blog_user` (`id`, `user`, `pass`, `ques`, `ans`, `email`, `birthday`, `ps`) VALUES
(1, 'Scheinin', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '4', 'Gabby', '841146643@163.com', '0000-00-00', 'stfu'),
(2, 'Ning', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '1', 'aaaa', 'aaa@qq.com', '1969-03-20', 'aaa'),
(3, 'Ning1', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '4', 'gigi', 'ssss@qq.com', '1965-11-14', 'ssss'),
(4, 'Ning2', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '4', 'balla', 'aaaa@qq.com', '1963-10-14', 'qqqq'),
(5, 'Ning3', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '4', 'tom', 'qqq@qq.com', '1964-11-14', 'qqqq'),
(6, 'Ning4', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '3', 'chaozhou', 'ssssss@163.com', '1963-11-15', 'qqqq'),
(7, 'Ning5', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '4', 'nana', 'aaaa@qq.com', '1964-10-14', 'qqqqqqqq');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
