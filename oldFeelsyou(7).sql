-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2019 at 02:31 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Feelsyou`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmt`
--

CREATE TABLE `cmt` (
  `cid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commenttext` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentedon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmt`
--

INSERT INTO `cmt` (`cid`, `pid`, `uid`, `commenttext`, `commentedon`, `profile`, `nickname`) VALUES
('15528313918682evc8eC', 'gXvO1Cj1552768674202', '15527686742026CSOBJS', 'nice', '1552831391868', '', 'abcd'),
('15528314182864frvoat', 'gXvO1Cj1552768674202', '15527686742026CSOBJS', 'nice', '1552831418286', '', 'abcd'),
('1552831626975WBGD503', '6iRDuEF1552768674202', '1552773035430nXswiKR', 'Hello', '1552831626975', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1552831775889IL6LnHU', '6iRDuEF1552768674202', '1552773035430nXswiKR', 'Welcome', '1552831775889', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1552831917851ZJctpfR', '6iRDuEF1552768674202', '1552773035430nXswiKR', 'Good', '1552831917851', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1552878184787UG4vByy', 'A4Me0QH1552773035430', '1552773035430nXswiKR', 'Hello', '1552878184787', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1552926247719PSobzQZ', 'iIJKCvq1552773035430', '1552773035430nXswiKR', 'Hie buddy', '1552926247719', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1552933099706MVIFAGa', 'iIJKCvq1552773035430', '1552773035430nXswiKR', 'Hello', '1552933099706', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1552933100406Q9x7rDg', 'iIJKCvq1552773035430', '1552773035430nXswiKR', 'Hello', '1552933100406', 'http://reactapps.xyz/ItFeelsYou/Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038'),
('1553024802441IiGD3jI', 'fKR8Ivu1552941905913', '15527686742026CSOBJS', 'Bub', '1553024802441', 'http://reactapps.xyz/ItFeelsYou/Users/1552768674202/15527686742026CSOBJS/1552768674202.jpg', 'Pratap Renake'),
('asd', '2l2ERK91552768674202', '15527686742026CSOBJS', 'nice', 'sdf', 'sdf', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `concomment`
--

CREATE TABLE `concomment` (
  `ccid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DeviceInfo`
--

CREATE TABLE `DeviceInfo` (
  `brand` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_level` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vesion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_level` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `install_reference` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_emulator` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_tablet` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_user` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DeviceInfo`
--

INSERT INTO `DeviceInfo` (`brand`, `device_level`, `device_name`, `ip`, `manufacturer`, `model`, `timezone`, `user_agent`, `vesion`, `api_level`, `application_name`, `install_reference`, `is_emulator`, `is_tablet`, `timestamp`, `new_user`) VALUES
('sd', 'sfd', 's', 's', 'sd', 'df', 'sd', 'ee', 'e', '', '', '', '', 'fsd', 'sfsd', 'fd');

-- --------------------------------------------------------

--
-- Table structure for table `follower`
--

CREATE TABLE `follower` (
  `fid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `me` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `you` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `followingon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `hid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addedon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltable`
--

CREATE TABLE `ltable` (
  `lid` int(20) NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likedon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `mid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediatype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addedon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`mid`, `pid`, `url`, `mediatype`, `ext`, `addedon`, `thumb`) VALUES
('1552828165835sqiWjGo', '2l2ERK91552768674202', 'Screenshot_20190317-024001~2.png', 'image', 'png', '1552828165835', '137389201thumb.jpg'),
('15528341091588M5LIKF', 'qNoDe1v1552773035430', 'amazing-henna-tattoo-design-for-womens-hand.jpg', 'image', 'jpg', '1552834109158', '1833995173thumb.jpg'),
('1552834141759DmyXbRx', '8dsnREF1552773035430', '3f0396793cf324e3ee23678cf495dd87_thu[2]_thumb.jpg', 'image', 'jpg', '1552834141759', '346568621thumb.jpg'),
('1552834143112FWV6aOI', '8dsnREF1552773035430', '3c69a9a0922e882fa331004bfff5e9c1.jpg', 'image', 'jpg', '1552834143112', '2137244074thumb.jpg'),
('1552834144046Wo18X9r', '8dsnREF1552773035430', 'Amazing Rajasthani Mehndi Design Ideas.jpg', 'image', 'jpg', '1552834144046', '1579807668thumb.jpg'),
('1552834145699D08Wqz3', '8dsnREF1552773035430', '81GNy1fcHzL._SY355_.png', 'image', 'png', '1552834145699', '768071554thumb.jpg'),
('1552834146991bDH71KU', '8dsnREF1552773035430', '1_72W_7NVPwXN2u9HaONaGpQ.jpeg.jpg', 'image', 'jpg', '1552834146991', '311628857thumb.jpg'),
('1552834146994hElu2ni', '8dsnREF1552773035430', '38671116562_f12189c527_b.jpg', 'image', 'jpg', '1552834146994', '1628995185thumb.jpg'),
('1552834893146HWX5pdC', '1YBSMgv1552773035430', '1551668561096.mp4', 'video', 'mp4', '1552834893146', '499936700thumb.jpg'),
('1552834909779hoe8vis', 'A4Me0QH1552773035430', '1550982302249.mp4', 'video', 'mp4', '1552834909779', '1437098514thumb.jpg'),
('1552880557306KMfjyfN', 'iIJKCvq1552773035430', 'IMG-20190317-WA0001.jpg', 'image', 'jpg', '1552880557306', '202277519thumb.jpg'),
('1552933164457bGtUB0n', 'wgb6S3A1552773035430', 'IMG-20190318-WA0007.jpeg', 'image', 'jpeg', '1552933164457', '505090606thumb.jpg'),
('1552942065362WMUBShU', 'fKR8Ivu1552941905913', 'IMG-20190318-WA0084.jpg', 'image', 'jpg', '1552942065362', '1746933750thumb.jpg'),
('1553033201688Scuj1GK', 'tjDPdr61552773035430', '1553029674492.png', 'image', 'png', '1553033201688', '1646554569thumb.jpg'),
('1553166920210Tlb0omv', 'Lw5OHG71553110175815', 'image-c03129cf-ed58-429b-af07-984085432f9a.jpg', 'image', 'jpg', '1553166920210', '1697012048thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `plike`
--

CREATE TABLE `plike` (
  `lid` int(20) NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lstatus` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likedon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediatype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ismedia` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ispublic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issponsored` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `uid`, `status`, `url`, `mediatype`, `keywords`, `tags`, `addon`, `ismedia`, `ispublic`, `issponsored`, `lang`, `latitude`, `longitude`, `location`) VALUES
('0CgL31C1552768674202', '15527686742026CSOBJS', 'Byeee', '', '0', '', '', '1552828110812', '0', '1', 'no', '', '', '', ''),
('1YBSMgv1552773035430', '1552773035430nXswiKR', '', '1551668561096.mp4', 'video', '', '', '1552834893146', '1', '1', 'no', '', '', '', ''),
('2l2ERK91552768674202', '15527686742026CSOBJS', '', 'Screenshot_20190317-024001~2.png', 'image', '', '', '1552828165835', '1', '1', 'no', '', '', '', ''),
('6iRDuEF1552768674202', '15527686742026CSOBJS', 'Yyyyyyyyyybbbbbbbb', '', '0', '', '', '1552828221867', '0', '1', 'no', '', '', '', ''),
('8dsnREF1552773035430', '1552773035430nXswiKR', '', '3f0396793cf324e3ee23678cf495dd87_thu[2]_thumb.jpg', 'image', '', '', '1552834141759', '1', '1', 'no', '', '', '', ''),
('A4Me0QH1552773035430', '1552773035430nXswiKR', '', '1550982302249.mp4', 'video', '', '', '1552834909779', '1', '1', 'no', '', '', '', ''),
('DrMvp1B1552768674202', '15527686742026CSOBJS', 'Hiiii', '', '0', '', '', '1552828095355', '0', '1', 'no', '', '', '', ''),
('fKR8Ivu1552941905913', '1552941905913uhbB1oo', '', 'IMG-20190318-WA0084.jpg', 'image', '', '', '1552942065362', '1', '1', 'no', '', '', '', ''),
('gXvO1Cj1552768674202', '15527686742026CSOBJS', 'Yyyyyyyyyybbbbbbbb', '', '0', '', '', '1552828221286', '0', '1', 'no', '', '', '', ''),
('iIJKCvq1552773035430', '1552773035430nXswiKR', '', 'IMG-20190317-WA0001.jpg', 'image', '', '', '1552880557306', '1', '1', 'no', '', '', '', ''),
('Lw5OHG71553110175815', '15531101758157oaMnhu', '', 'image-c03129cf-ed58-429b-af07-984085432f9a.jpg', 'image', '', '', '1553166920210', '1', '1', 'no', '', '', '', ''),
('qNoDe1v1552773035430', '1552773035430nXswiKR', '', 'amazing-henna-tattoo-design-for-womens-hand.jpg', 'image', '', '', '1552834109158', '1', '1', 'no', '', '', '', ''),
('tjDPdr61552773035430', '1552773035430nXswiKR', '', '1553029674492.png', 'image', '', '', '1553033201688', '1', '1', 'no', '', '', '', ''),
('wgb6S3A1552773035430', '1552773035430nXswiKR', '', 'IMG-20190318-WA0007.jpeg', 'image', '', '', '1552933164457', '1', '1', 'no', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts_like`
--

CREATE TABLE `posts_like` (
  `id` bigint(20) NOT NULL,
  `post_id` varchar(21) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `liked` bit(1) NOT NULL DEFAULT b'0',
  `action_on` bigint(20) NOT NULL,
  `lattitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts_like`
--

INSERT INTO `posts_like` (`id`, `post_id`, `user_id`, `liked`, `action_on`, `lattitude`, `longitude`) VALUES
(5, '0CgL31C1552768674202', '15527686742026CSOBJS', b'1', 1552829225963, 0, 0),
(6, '2l2ERK91552768674202', '1552773035430nXswiKR', b'1', 1552832988626, 0, 0),
(7, '8dsnREF1552773035430', '1552773035430nXswiKR', b'1', 1552834191713, 0, 0),
(8, '2l2ERK91552768674202', '1552773035430nXswiKR', b'0', 1552926225939, 0, 0),
(9, '2l2ERK91552768674202', '1552773035430nXswiKR', b'1', 1552926227618, 0, 0),
(10, '2l2ERK91552768674202', '1552773035430nXswiKR', b'0', 1552926228340, 0, 0),
(11, '2l2ERK91552768674202', '1552773035430nXswiKR', b'1', 1552926228829, 0, 0),
(12, '2l2ERK91552768674202', '1552773035430nXswiKR', b'0', 1552926229274, 0, 0),
(13, '2l2ERK91552768674202', '1552773035430nXswiKR', b'1', 1552926229589, 0, 0),
(14, '2l2ERK91552768674202', '1552773035430nXswiKR', b'0', 1552926229897, 0, 0),
(15, '2l2ERK91552768674202', '1552773035430nXswiKR', b'1', 1552926229994, 0, 0),
(16, '2l2ERK91552768674202', '1552773035430nXswiKR', b'0', 1552926230218, 0, 0),
(17, '2l2ERK91552768674202', '1552773035430nXswiKR', b'1', 1552926230335, 0, 0),
(18, '2l2ERK91552768674202', '1552773035430nXswiKR', b'0', 1552926231947, 0, 0),
(19, 'fKR8Ivu1552941905913', '1552941905913uhbB1oo', b'1', 1552942113912, 0, 0),
(20, '0CgL31C1552768674202', '15527686742026CSOBJS', b'0', 1553064065978, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uprofile`
--

CREATE TABLE `uprofile` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uprofile`
--

INSERT INTO `uprofile` (`id`, `uid`, `timestamp`, `profile`, `phone`, `last_name`, `first_name`, `nickname`, `email`, `website`, `status`, `aboutme`, `gender`) VALUES
('1552768674202ljrT2nb', '15527686742026CSOBJS', '1552768674202', 'Users/1552768674202/15527686742026CSOBJS/1552768674202.jpg', '7385488236', '', '', 'Pratap Renake', '', '', '', '', ''),
('1552773035430NV6iqIj', '1552773035430nXswiKR', '1552773035430', 'Users/1552773035430/1552773035430nXswiKR/1552773035430.jpg', '9156026038', '', '', '9156026038', '', '', '', '', ''),
('1552941905913haaM15S', '1552941905913uhbB1oo', '1552941905913', 'Users/1552941905913/1552941905913uhbB1oo/1552941905913.jpg', '9579608080', '', '', 'Shubham', '', '', '', '', ''),
('1553106472855LGgHEV4', '1553106472855nLZHJJx', '1553106472855', 'Users/1553106472855/1553106472855nLZHJJx/1553106472855.jpg', '', 'null', 'abc', 'null', 'null', 'null', 'null', '', ''),
('1553106538992rleYDi1', '1553106538992OXhWnyE', '1553106538992', 'Users/1553106538992/1553106538992OXhWnyE/1553106538992.jpg', '', 'null', 'null', 'null', 'null', 'null', 'null', '', ''),
('1553106658789iKD6jDc', '15531066587892ssuXaI', '1553106658789', 'Users/1553106658789/15531066587892ssuXaI/1553106658789.jpg', '', 'null', 'null', 'null', 'null', 'null', 'null', '', ''),
('1553106718790bWHqE9z', '1553106718790IxSPADt', '1553106718790', 'Users/1553106718790/1553106718790IxSPADt/1553106718790.jpg', '', 'null', 'null', 'null', 'null', 'null', 'null', '', ''),
('1553157478397cLMb2dl', '1553157478397RXX5x6i', '1553157478397', 'Users/1553157478397/1553157478397RXX5x6i/1553157478397.jpg', '88888888', 'myakal', 'kapil', 'kapil', '', '', '', '', ''),
('1553181550371auSnPBv', '1553181550371VDvhU8j', '1553181550371', 'Users/1553181550371/1553181550371VDvhU8j/1553181550371.jpg', '', 'null', 'null', 'null', 'null', 'null', 'null', '', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddr` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `timestamp`, `phonenumber`, `fid`, `gid`, `ipaddr`) VALUES
('15527686742026CSOBJS', '1552768674202', '7385488236', '', '', '49.35.127.112'),
('1552773035430nXswiKR', '1552773035430', '9156026038', '', '', '49.35.127.112'),
('1552941905913uhbB1oo', '1552941905913', '9579608080', '', '', '42.108.238.176'),
('1553106472855nLZHJJx', '1553106472855', '', '', '', '157.33.171.183'),
('1553106538992OXhWnyE', '1553106538992', '', '', '', '157.33.171.183'),
('15531066587892ssuXaI', '1553106658789', '', '', '', '157.33.171.183'),
('1553106718790IxSPADt', '1553106718790', '', '', '', '157.33.171.183'),
('1553106926777ec1OB5R', '1553106926777', '', '', '', '157.33.171.183'),
('1553106942684I4BRDth', '1553106942684', '', '', '', '157.33.171.183'),
('1553107309538N3KKkVQ', '1553107309538', '', '', '', '157.33.171.183'),
('1553107331797EsNH1TD', '1553107331797', '', '', '', '157.33.171.183'),
('1553107403453xnnEsv3', '1553107403453', '', '', '', '157.33.171.183'),
('15531076531780x155UR', '1553107653178', '', '', '', '157.33.171.183'),
('1553108098412DCV1TbH', '1553108098412', '', '', '', '157.33.171.183'),
('1553108112722PbnBZ9t', '1553108112722', '', '', '', '157.33.171.183'),
('1553108113300YTy2EKK', '1553108113300', '', '', '', '157.33.171.183'),
('15531081409835TbPnPX', '1553108140983', '', '', '', '157.33.171.183'),
('1553108172519Bn6ISRS', '1553108172519', '', '', '', '157.33.171.183'),
('1553108312193WYoJkaQ', '1553108312193', '', '', '', '157.33.171.183'),
('1553109818717sjlqezo', '1553109818717', '', '', '', '157.33.171.183'),
('1553110028297WBV6bis', '1553110028297', '', '', '', '157.33.171.183'),
('1553110030132f01oe9j', '1553110030132', '', '', '', '157.33.171.183'),
('1553110069064t7lZjN9', '1553110069064', '', '', '', '157.33.171.183'),
('15531101758157oaMnhu', '1553110175815', '', '', '', '157.33.171.183'),
('1553157478397RXX5x6i', '1553157478397', '88888888', '', '15527686742026CSOBJS', '157.33.204.38'),
('1553181550371VDvhU8j', '1553181550371', '', '', '', '49.35.202.24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `concomment`
--
ALTER TABLE `concomment`
  ADD PRIMARY KEY (`ccid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `follower`
--
ALTER TABLE `follower`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `me` (`me`),
  ADD KEY `you` (`you`);

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `ltable`
--
ALTER TABLE `ltable`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `plike`
--
ALTER TABLE `plike`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `posts_like`
--
ALTER TABLE `posts_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uprofile`
--
ALTER TABLE `uprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ltable`
--
ALTER TABLE `ltable`
  MODIFY `lid` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plike`
--
ALTER TABLE `plike`
  MODIFY `lid` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_like`
--
ALTER TABLE `posts_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cmt`
--
ALTER TABLE `cmt`
  ADD CONSTRAINT `cmt_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `cmt_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`);

--
-- Constraints for table `concomment`
--
ALTER TABLE `concomment`
  ADD CONSTRAINT `concomment_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `cmt` (`cid`),
  ADD CONSTRAINT `concomment_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);

--
-- Constraints for table `follower`
--
ALTER TABLE `follower`
  ADD CONSTRAINT `follower_ibfk_1` FOREIGN KEY (`me`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `follower_ibfk_2` FOREIGN KEY (`you`) REFERENCES `user` (`id`);

--
-- Constraints for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD CONSTRAINT `hashtags_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`);

--
-- Constraints for table `ltable`
--
ALTER TABLE `ltable`
  ADD CONSTRAINT `ltable_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `ltable_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`);

--
-- Constraints for table `plike`
--
ALTER TABLE `plike`
  ADD CONSTRAINT `plike_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `plike_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);

--
-- Constraints for table `uprofile`
--
ALTER TABLE `uprofile`
  ADD CONSTRAINT `uprofile_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
