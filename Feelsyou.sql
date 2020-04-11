-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2019 at 01:28 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

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
  `cid` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commenttext` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentedon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `did` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `DeviceInfo` (`did`, `brand`, `device_level`, `device_name`, `ip`, `manufacturer`, `model`, `timezone`, `user_agent`, `vesion`, `api_level`, `application_name`, `install_reference`, `is_emulator`, `is_tablet`, `timestamp`, `new_user`) VALUES
('12312', 'dsfd', 'sfdf', 'sdfs', 'sfd', 'sfd', 'sd', 'sfd', 'fsd', 'sdf', 'sfd', 'sdf', 'sdf', 'f', 'sdf', 'sdf', 'sfd'),
('1575103466124', 'mi ', 'sdfsdf', '', '', '', '', '', '', '', '', '', '', '', '', '1575103466124', ''),
('1575104293277', 'mi 6', 'sdfsdf', '', '', '', '', '', '', '', '', '', '', '', '', '1575104293277', '');

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
  `url` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediatype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addedon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`mid`, `pid`, `url`, `mediatype`, `ext`, `addedon`, `thumb`) VALUES
('15751479442538emRxdM', 'sadhsa', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '1575147944253', ''),
('1575147944253bDmh8uP', 'sadhsa', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '1575147944253', ''),
('1575147944253UrHGlBT', 'sadhsa', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '1575147944253', ''),
('1575147944253XvUwY8W', 'sadhsa', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '1575147944253', ''),
('1575148035903BglwTMj', 'O4qVLLo5g2spghKblmrA', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '1575148035903', ''),
('1575148035903GaGn98H', 'O4qVLLo5g2spghKblmrA', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '1575148035903', ''),
('1575148447615KJwULnC', '38271638712321783', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '1575148447615', ''),
('1575148447615PEyySaz', '38271638712321783', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '1575148447615', ''),
('1575148447615Yt9E7dq', '38271638712321783', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '1575148447615', ''),
('1575148447615ZdZnppN', '38271638712321783', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '1575148447615', ''),
('1575183075769fZ3pzhB', 'AP9hMN4QbZZNDfwybWOt', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'photo', '', '1575183075769', ''),
('1575183075769vkJCIyx', 'AP9hMN4QbZZNDfwybWOt', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'photo', '', '1575183075769', ''),
('15751835478078I6o63P', 'PDr0kbJPNPtuIHFxpzA2', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '1575183547807', ''),
('1575183547807pl5GNlh', 'PDr0kbJPNPtuIHFxpzA2', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '1575183547807', '');

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
  `url` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('38271638712321783', '1574534548529XOQ8U5C', 'Image Image', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', 'dsfsdf Image', '1575148447615', '1', '1', 'no', '', '', '', ''),
('AP9hMN4QbZZNDfwybWOt', '1575100062487iemT3OU', '', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'photo', '', '', '1575183075769', '1', '1', '', '', '', '', ''),
('O4qVLLo5g2spghKblmrA', '1575100062487iemT3OU', '', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2F54779e48-e1ab-476d-a596-09820caa016d.jpg', 'image', '', '', '1575148035903', '1', '1', '', '', '', '', ''),
('PDr0kbJPNPtuIHFxpzA2', '1575100062487iemT3OU', '', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', '', '1575183547807', '1', '1', '', '', '', '', ''),
('sadhsa', '1574534548529XOQ8U5C', 'Image Image', 'https://s3.ap-southeast-1.amazonaws.com/itfeelsu/video%2Fb94e2925-cb70-4d54-9b3b-bf14e832a891.jpg', 'image', '', 'dsfsdf Image', '1575147944253', '1', '1', 'no', '', '', '', '');

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
(31, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'1', 1574966168651, 0, 0),
(32, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'0', 1574966192607, 0, 0),
(33, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'1', 1575050270858, 0, 0),
(34, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'0', 1575050275577, 0, 0),
(35, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'1', 1575050285261, 0, 0),
(36, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'0', 1575051138945, 0, 0),
(37, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'1', 1575051142099, 0, 0),
(38, '3v2GZuQGnQLlJNSwwPBaf', '1574534548529XOQ8U5C', b'1', 1575051160566, 0, 0),
(39, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'0', 1575089699165, 0, 0),
(40, 'iYm2kD2cje9vfR6xIlhpu', '1574534548529XOQ8U5C', b'1', 1575089702166, 0, 0),
(41, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575100094012, 0, 0),
(42, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575100139202, 0, 0),
(43, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575100140844, 0, 0),
(44, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575102224709, 0, 0),
(45, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575102235310, 0, 0),
(46, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102235735, 0, 0),
(47, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102258671, 0, 0),
(48, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102258941, 0, 0),
(49, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102259935, 0, 0),
(50, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575102262629, 0, 0),
(51, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102458556, 0, 0),
(52, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575102458955, 0, 0),
(53, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102459295, 0, 0),
(54, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575102459683, 0, 0),
(55, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575102460053, 0, 0),
(56, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575102460163, 0, 0),
(57, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102460203, 0, 0),
(58, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102460211, 0, 0),
(59, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102460261, 0, 0),
(60, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102460404, 0, 0),
(61, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102460464, 0, 0),
(62, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102460532, 0, 0),
(63, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102460549, 0, 0),
(64, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102460583, 0, 0),
(65, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102460706, 0, 0),
(66, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575102460808, 0, 0),
(67, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102460841, 0, 0),
(68, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102460858, 0, 0),
(69, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102460895, 0, 0),
(70, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102461014, 0, 0),
(71, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102461123, 0, 0),
(72, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575102461168, 0, 0),
(73, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575102577917, 0, 0),
(74, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575102781965, 0, 0),
(75, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575102855678, 0, 0),
(76, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103408383, 0, 0),
(77, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103410453, 0, 0),
(78, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103413691, 0, 0),
(79, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103415421, 0, 0),
(80, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103428748, 0, 0),
(81, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103429784, 0, 0),
(82, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103529134, 0, 0),
(83, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103536308, 0, 0),
(84, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103567955, 0, 0),
(85, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103568254, 0, 0),
(86, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103569515, 0, 0),
(87, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103571835, 0, 0),
(88, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103598587, 0, 0),
(89, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103633198, 0, 0),
(90, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103636194, 0, 0),
(91, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103638551, 0, 0),
(92, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103639455, 0, 0),
(93, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103640230, 0, 0),
(94, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103640989, 0, 0),
(95, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103641838, 0, 0),
(96, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103642599, 0, 0),
(97, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103643198, 0, 0),
(98, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103665879, 0, 0),
(99, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103668097, 0, 0),
(100, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103669075, 0, 0),
(101, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103669872, 0, 0),
(102, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103670709, 0, 0),
(103, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103671599, 0, 0),
(104, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103672559, 0, 0),
(105, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103677381, 0, 0),
(106, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103678319, 0, 0),
(107, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103679257, 0, 0),
(108, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103680258, 0, 0),
(109, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575103681750, 0, 0),
(110, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575103682916, 0, 0),
(111, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103690428, 0, 0),
(112, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103691309, 0, 0),
(113, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103693174, 0, 0),
(114, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575103694014, 0, 0),
(115, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575103695176, 0, 0),
(116, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575104492257, 0, 0),
(117, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575104493762, 0, 0),
(118, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575104495796, 0, 0),
(119, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575104497096, 0, 0),
(120, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575111496200, 0, 0),
(121, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575112468547, 0, 0),
(122, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575112469444, 0, 0),
(123, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575112470712, 0, 0),
(124, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575113675921, 0, 0),
(125, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575113677391, 0, 0),
(126, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575113678963, 0, 0),
(127, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575113819953, 0, 0),
(128, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575114539546, 0, 0),
(129, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575114647992, 0, 0),
(130, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575114653656, 0, 0),
(131, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575115956956, 0, 0),
(132, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575115958291, 0, 0),
(133, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'1', 1575115960123, 0, 0),
(134, 'iYm2kD2cje9vfR6xIlhpu', '1575100062487iemT3OU', b'0', 1575115963490, 0, 0),
(135, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575116299395, 0, 0),
(136, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575116301709, 0, 0),
(137, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575116303052, 0, 0),
(138, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575116307451, 0, 0),
(139, '1575103871058ypDePYa', '1575100062487iemT3OU', b'0', 1575128260717, 0, 0),
(140, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'0', 1575128264976, 0, 0),
(141, '3v2GZuQGnQLlJNSwwPBaf', '1575100062487iemT3OU', b'1', 1575128266653, 0, 0),
(142, '1575103871058ypDePYa', '1575100062487iemT3OU', b'1', 1575128273258, 0, 0),
(143, 'PDr0kbJPNPtuIHFxpzA2', '1575100062487iemT3OU', b'1', 1575183576981, 0, 0),
(144, 'PDr0kbJPNPtuIHFxpzA2', '1575100062487iemT3OU', b'0', 1575183579683, 0, 0),
(145, 'PDr0kbJPNPtuIHFxpzA2', '1575100062487iemT3OU', b'1', 1575183581804, 0, 0),
(146, 'PDr0kbJPNPtuIHFxpzA2', '1575100062487iemT3OU', b'0', 1575183582902, 0, 0);

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
('1574534548529yiMB5Lt', '1574534548529XOQ8U5C', '1574534548529', 'PostData/IMG-20180720-WA0005.jpg', '919284591784', '', '', 'Abhijeet ', '', '', '', '', ''),
('1575100062487LcUAJ0x', '1575100062487iemT3OU', '1575100062487', 'PostData/logo.jpg', '919284591784', '', '', '9284591784', '', '', '', '', '');

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
('1574534548529XOQ8U5C', '1574534548529', '919284591784', '', '', '157.33.153.215'),
('1575100062487iemT3OU', '1575100062487', '919284591784', '', '', '157.33.40.52');

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
-- Indexes for table `DeviceInfo`
--
ALTER TABLE `DeviceInfo`
  ADD PRIMARY KEY (`did`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
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
