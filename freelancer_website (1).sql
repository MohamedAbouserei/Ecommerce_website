-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2019 at 02:53 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freelancer_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `c_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `startd_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`c_id`, `activity`, `startd_date`, `end_date`) VALUES
(5, 'love education', '2017-12-06', '2017-12-08'),
(73, 'reading', '2017-12-05', '2017-12-14'),
(73, 'swimming', '2017-12-06', '2017-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `c_id` int(11) NOT NULL,
  `award` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`c_id`, `award`) VALUES
(73, 'rank 1 in my class'),
(5, 'rank 2 in my class'),
(73, 'rank 2 in my class'),
(5, 'rank 3 in my class');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `description` text NOT NULL,
  `visible` tinyint(1) NOT NULL COMMENT '1 > visible , 0 invisible ',
  `parent` int(11) NOT NULL,
  `mgr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `name`, `ordering`, `description`, `visible`, `parent`, `mgr_id`) VALUES
(7, 'web development', 3, 'web development , php developer , java ee , asp , .net development', 1, 0, 39),
(9, 'web designer', 2, 'ux & ui designer , user interface', 1, 0, 40),
(11, 'software engineering', 8, 'develop test cases , test gui , content , ceo', 0, 0, 39),
(12, 'managment', 7, 'understanding how to manage your work', 1, 0, 39),
(13, 'finance and accounting', 5, 'understanding how to deal with business , finance , revenue ', 1, 9, 40);

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `c_id` int(11) NOT NULL,
  `certification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`c_id`, `certification`) VALUES
(73, 'computer science degree'),
(73, 'finance degree');

-- --------------------------------------------------------

--
-- Table structure for table `creditcard`
--

CREATE TABLE `creditcard` (
  `credit_id` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ExpDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creditcard`
--

INSERT INTO `creditcard` (`credit_id`, `Name`, `ExpDate`) VALUES
('ch_1BYxa2FN8H63tpg8jaAP4jGq', 'MasterCard', '2019-05-00'),
('ch_1BYxajFN8H63tpg8PSszOrQG', 'MasterCard', '2019-05-00'),
('ch_1BYxc2FN8H63tpg8JwgFAuba', 'MasterCard', '2019-05-00'),
('ch_1BYxiLFN8H63tpg8vVXXw2WF', 'MasterCard', '2019-05-00'),
('ch_1BYxIvFN8H63tpg8KvAEnN7I', 'MasterCard', '2019-05-00'),
('ch_1BYxx7FN8H63tpg8Fl1eQbFl', 'MasterCard', '2019-05-00'),
('ch_1BYxxfFN8H63tpg8HKoklPf7', 'MasterCard', '2019-05-00'),
('ch_1BYxYgFN8H63tpg8jZqFUqCl', 'MasterCard', '2019-05-00'),
('ch_1BYxZ4FN8H63tpg8OehkqmSK', 'MasterCard', '2019-05-00'),
('ch_1BYyzHFN8H63tpg8aIVKIMy5', 'MasterCard', '2019-05-00'),
('ch_1BYyzsFN8H63tpg8dyTdHQQU', 'MasterCard', '2019-05-00'),
('ch_1BYz1sFN8H63tpg8mD4kHlL8', 'MasterCard', '2019-05-00'),
('ch_1BYz1SFN8H63tpg8YDOyECyF', 'MasterCard', '2019-05-00'),
('ch_1BZ0vKFN8H63tpg8unDA9hfl', 'MasterCard', '2019-05-00'),
('ch_1BZ3sjFN8H63tpg8xguceOy4', 'Visa', '2019-05-00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL COMMENT 'id بتاع اليوزر',
  `c_name` varchar(255) NOT NULL COMMENT 'اسم اليوزر ',
  `gender` tinyint(1) NOT NULL COMMENT 'true > male , false > female',
  `dob` date NOT NULL COMMENT 'Date of Birth',
  `regstatus` tinyint(1) NOT NULL COMMENT 'true > account activated , false >account deactivated',
  `E-mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dor` date NOT NULL COMMENT 'Date of Register',
  `confirmcode` varchar(255) DEFAULT NULL,
  `coins` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `gender`, `dob`, `regstatus`, `E-mail`, `password`, `image`, `dor`, `confirmcode`, `coins`) VALUES
(5, 'zaki ahmed', 1, '2017-11-13', 0, 'zaki@gmail.com', '456123789', 'zaki@gmail.com-1bd929f4eb9dd2044146642fd367650e842b2219_hq.jpg', '2017-09-19', NULL, 330),
(7, 'medhat', 1, '2017-11-15', 0, 'medhat86@gmail.com', 'fdsfdsf6', '', '2017-11-23', NULL, 0),
(8, 'hossam', 0, '1997-02-27', 0, 'kinghh19465@yahoo.com', 'hossam46545', '', '2017-12-03', NULL, 0),
(9, 'mohamed', 1, '2002-04-17', 0, 'mohamed@yahoo.com', '12356789', '', '2017-12-03', NULL, 0),
(73, 'mohamed', 1, '2017-11-14', 0, 'kinghh20@yahoo.com', '123456789', 'kinghh20@yahoo.com-2017-09-13 at 05-50-08.png', '2017-11-29', NULL, 3648),
(74, 'medhat', 1, '1992-03-12', 0, 'medhat456@yahoo.com', '465456465', '', '2017-12-03', NULL, 0),
(75, 'Hossam Hassan', 0, '1992-10-08', 1, 'kinghh19@yahoo.com', '1468363623254527', 'kinghh19@yahoo.com-24058943_1590373577708209_2127958898611304870_n.jpg', '2017-12-07', NULL, 36300),
(76, 'Mohamed Abosere', 0, '1992-10-08', 1, 'medoaboserii@yahoo.com', '1110215755782495', 'https://scontent.xx.fbcdn.net/v/t1.0-1/22489666_1081269432010461_5942809969585860367_n.jpg?oh=efe1e57dae5006ef10f2e0739a8a4637&oe=5AD53EA5', '2017-12-15', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customerservice`
--

CREATE TABLE `customerservice` (
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL COMMENT '0 >  alert ,  1 accept services , 2 service reject , 3 message , 4 report ',
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1>read , 0 >unread',
  `mgr_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customerservice`
--

INSERT INTO `customerservice` (`subject`, `content`, `type`, `date`, `status`, `mgr_id`, `c_id`, `service_id`) VALUES
('message', 'this is message send from supervisor to customer', 3, '2017-11-10 09:25:26', 1, 39, 73, 1),
('report', 'Hi Customer', 4, '2017-11-19 10:21:25', 1, 39, 73, 1),
('report', 'this is report', 4, '2017-11-24 00:22:25', 1, 39, 73, 4),
('report', 'treat customer with respect', 4, '2017-11-24 00:22:58', 0, 39, 73, 2),
('Your Service  sss2 is canceled', 'unfortunately mohamed , your service sss2 is cannot be viewed by users', 2, '2017-11-24 00:36:13', 1, 39, 73, 4),
('Your Service sss2 is available to other web-site member', 'Congratulation mohamed , your service sss2 is accepted', 1, '2017-11-24 00:36:49', 1, 39, 73, 4),
('Your Service service1 is available to other web-site member', 'Congratulation mohamed , your service service1 is accepted', 1, '2017-11-25 19:17:00', 0, 39, 73, 1),
('Your Service  sss2 is canceled', 'unfortunately mohamed , your service sss2 is cannot be viewed by users', 2, '2017-11-26 23:18:42', 0, 39, 73, 4),
('Your Service sss2 is available to other web-site member', 'Congratulation mohamed , your service sss2 is accepted', 1, '2017-11-29 12:40:42', 0, 39, 73, 4),
('Your Service  sss2 is canceled', 'unfortunately mohamed , your service sss2 is cannot be viewed by users', 2, '2017-11-30 13:24:40', 0, 39, 73, 4),
('Your Service sss2 is available to other web-site member', 'Congratulation mohamed , your service sss2 is accepted', 1, '2017-11-30 13:33:09', 1, 39, 73, 4),
('Your Service  sss2 is canceled', 'unfortunately mohamed , your service sss2 is cannot be viewed by users', 2, '2017-12-06 14:31:37', 1, 39, 73, 4);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `c_id` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`c_id`, `education`, `start_date`, `end_date`) VALUES
(5, 'secondary school', '2017-12-22', '2017-12-30'),
(73, 'helwan university', '2017-12-08', '2017-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `estimate`
--

CREATE TABLE `estimate` (
  `comment` text NOT NULL,
  `stars` tinyint(5) UNSIGNED NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `o_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estimate`
--

INSERT INTO `estimate` (`comment`, `stars`, `date`, `o_id`, `c_id`, `s_id`) VALUES
('thx alooooooooot', 4, '2017-12-13 16:37:42', 4, 75, 1),
('nice service yaaaaaa', 4, '2017-12-13 18:23:20', 5, 75, 1),
('bad service', 3, '2017-12-14 21:56:33', 7, 75, 2);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `c_id` int(11) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`c_id`, `experience`, `start_date`, `end_date`) VALUES
(73, 'ASP.net 2 year experience ', '2017-06-14', '2017-12-14'),
(5, 'java ee 2 year experience ', '2017-12-29', '2017-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `c_id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `rate` tinyint(3) NOT NULL COMMENT 'rate from 0 to 100 , maximum  3 length'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`c_id`, `language`, `rate`) VALUES
(5, 'Arabic', 3),
(5, 'Armenian', 4),
(73, 'Armenian', 3),
(73, 'Bengali', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mgr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `E-mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.png',
  `group_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 > Admin  , 1 > supervisor ',
  `hours` int(11) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `NotificationNumber` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mgr_id`, `name`, `E-mail`, `password`, `image`, `group_id`, `hours`, `salary`, `date`, `NotificationNumber`) VALUES
(1, 'hossam', 'kinghh19@yahoo.com', '123456789', 'kinghh19@yahoo.com-Screenshot 2017-07-10 21.16.06.png', 0, NULL, NULL, NULL, 0),
(39, 'ahmed', 'conan_sameh@yahoo.com', '12345678', 'hossamsup@gmai.com-finaltest.png', 1, 5, 5, '2017-11-15', 0),
(40, 'ahmed zaki', 'ziko7162@gmailcom', 'darkdemon1996', 'default.png', 1, 5, 5, '2017-11-10', 1),
(42, 'medhat', 'medhat@gmail.com', 'medhatfdsfsdf', 'default.png', 1, 6, 15, '2017-11-23', 1),
(43, 'supervisor 1', 'fdsfsd2@fdsfds.com', '4564545564454', 'default.png', 1, 5, 12, '2017-11-09', 1),
(50, 'hossam', 'hossam@gmail.com', 'fds54654', 'hossam@gmail.com-2017-09-13 at 05-50-08.png', 1, 5, 5, '2017-11-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manager_msg`
--

CREATE TABLE `manager_msg` (
  `message` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1 > read , 0 > unread',
  `date` datetime NOT NULL,
  `mgr_sender` int(11) NOT NULL,
  `mgr_reciever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager_msg`
--

INSERT INTO `manager_msg` (`message`, `subject`, `status`, `date`, `mgr_sender`, `mgr_reciever`) VALUES
('hello how are you ', 'this is message', 1, '2017-11-13 00:25:28', 1, 1),
('hello how are you ', 'this is message5', 1, '2017-11-16 18:20:17', 1, 39),
('hello how are you ', 'this is message1', 1, '2017-11-20 15:29:58', 1, 39),
('hello how are you ', 'this is message1', 1, '2017-11-20 15:33:58', 1, 39),
('hello how are you ', 'this is message2', 1, '2017-11-20 17:26:55', 1, 39),
('hello how are you ', 'this is message7', 1, '2017-11-16 18:17:17', 1, 40),
('hello how are you ', 'this is message4', 0, '2017-11-16 18:18:34', 1, 40),
('hello how are you ', 'this is message', 1, '2017-11-16 18:18:41', 1, 40),
('hello how are you ', 'this is message', 1, '2017-11-16 18:19:35', 1, 40),
('hello how are you ', 'this is message', 1, '2017-11-16 18:19:39', 1, 40),
('hello how are you ', 'this is message3', 1, '2017-11-18 16:19:24', 1, 40),
('hello how are you ', 'this is message5', 1, '2017-11-18 16:21:03', 1, 40),
('hello how are you ', 'this is message2', 1, '2017-11-18 16:22:22', 39, 1),
('hello how are you ', 'this is message2', 1, '2017-11-18 16:48:50', 39, 1),
('hello how are you ', 'this is message3', 1, '2017-11-20 15:38:32', 39, 1),
('hello how are you ', 'this is test subject', 1, '2017-11-21 07:45:46', 39, 1),
('hello how are you ', 'this is message', 1, '2017-11-21 09:40:01', 39, 1),
('hello how are you ', 'this is message7', 1, '2017-11-24 00:15:07', 39, 1),
('hello how are you ', 'this is message3', 1, '2017-11-24 00:17:22', 39, 1),
('hello how are you ', 'this is message2', 1, '2017-11-24 00:26:54', 39, 1),
('hello how are you ', 'this is message4', 1, '2017-11-24 00:28:06', 39, 1),
('hello how are you ', 'this is message5', 1, '2017-11-29 12:39:10', 39, 1),
('hello how are you ', 'this is message4', 1, '2017-11-29 12:39:32', 39, 1),
('hello how are you ', 'this is message4', 1, '2017-11-19 20:59:09', 39, 40);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg` text NOT NULL,
  `Reciver_Status` tinyint(1) NOT NULL COMMENT '1 > read , 0 > unread',
  `date` datetime NOT NULL,
  `sender` int(11) NOT NULL,
  `reciever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg`, `Reciver_Status`, `date`, `sender`, `reciever`) VALUES
('how are you', 0, '2017-12-09 18:53:59', 5, 7),
('i am fine', 0, '2017-12-10 02:54:47', 5, 7),
('nice idea', 0, '2017-12-13 21:03:32', 5, 8),
('how are you', 0, '2017-12-14 04:09:00', 5, 8),
('كيفك', 0, '2017-12-14 04:09:01', 5, 8),
('c,c,sdsfs', 0, '2017-12-14 04:09:05', 5, 8),
('اهلا يا حودا اخبارك', 0, '2017-12-09 03:04:06', 5, 9),
('اخبارك انت', 0, '2017-12-09 18:11:08', 5, 9),
('و اخبار اخوك', 0, '2017-12-09 18:11:36', 5, 9),
('ازيك يبني', 0, '2017-12-09 18:11:45', 5, 9),
('بخير الحمد لله', 0, '2017-12-09 21:47:47', 5, 9),
('ازي اخواتك عاملين ايه', 0, '2017-12-10 00:00:00', 5, 9),
('عامل ايه', 0, '2017-12-12 06:12:12', 5, 9),
('hi', 0, '2017-12-13 21:02:46', 5, 9),
('how are you', 0, '2017-12-13 21:27:32', 5, 9),
('ازاى', 0, '2017-12-14 04:07:48', 5, 9),
('ماشي الحال', 0, '2017-12-16 03:09:10', 5, 9),
('ازيك عامل ايه', 1, '2017-12-08 20:34:25', 5, 73),
('hi', 1, '2017-12-13 21:03:20', 5, 73),
('a', 1, '2017-12-13 22:18:21', 5, 73),
('jkkjkjl', 1, '2017-12-14 21:27:55', 5, 73),
('yyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 1, '2017-12-14 21:28:18', 5, 73),
('hhhhhhhhhhhhhhhhhhhhhhhh', 1, '2017-12-14 21:30:57', 5, 73),
('hi', 1, '2017-12-13 20:24:35', 5, 75),
('بجد ؟', 1, '2017-12-13 20:58:35', 5, 75),
('بجد ؟', 1, '2017-12-13 20:59:12', 5, 75),
('اهلا', 1, '2017-12-14 04:07:36', 5, 75),
('from zaki to hossam ', 1, '2017-12-14 21:42:23', 5, 75),
('اهلا من مدحت ابو االبت يارا', 1, '2017-12-08 16:36:30', 7, 5),
('hi from hossam sayed', 1, '2017-12-08 07:18:17', 8, 5),
('اهلا من محمد محمود', 1, '2017-12-09 01:00:00', 9, 5),
('عامل ايه يسطا', 1, '2017-12-09 16:32:24', 9, 5),
('الدنيا شاغلاهم و الله يسطا', 1, '2017-12-11 03:07:17', 9, 5),
('زي الفل يسطا', 1, '2017-12-13 06:10:14', 9, 5),
('اخبار شغلك ايه', 1, '2017-12-15 06:12:12', 9, 5),
('hi man', 1, '2017-12-08 16:47:01', 73, 5),
('hi again', 1, '2017-12-08 21:24:09', 73, 5),
('hi from medhat', 1, '2017-12-08 06:21:12', 74, 5),
('hi from Hossam Hassan ', 1, '2017-12-08 22:23:24', 75, 5),
('hjkhk', 0, '2017-12-14 22:47:32', 75, 5);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `subject` varchar(255) DEFAULT NULL,
  `notification` text NOT NULL,
  `date` datetime NOT NULL,
  `mgr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`subject`, `notification`, `date`, `mgr_id`) VALUES
('we will celebrate for our good job tonight', 'i wanna to see all of you tonight', '2017-12-05 17:40:15', 1),
('important meeting today at 9 pm', 'this is imporant meeting', '2017-12-14 10:53:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordering`
--

CREATE TABLE `ordering` (
  `order_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1 > completed , 0 > uncompleted',
  `s_id` int(11) NOT NULL COMMENT 'service id foreign key ',
  `c_id` int(11) NOT NULL COMMENT 'customer id foreign key '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ordering`
--

INSERT INTO `ordering` (`order_id`, `date`, `status`, `s_id`, `c_id`) VALUES
(1, '2017-11-06 00:00:00', 1, 2, 73),
(2, '2017-11-08 00:00:00', 1, 2, 73),
(3, '2017-11-01 00:00:00', 1, 1, 5),
(4, '2017-12-13 00:00:00', 1, 1, 75),
(5, '2017-12-13 00:00:00', 1, 1, 75),
(7, '2017-12-13 17:53:26', 1, 2, 75),
(8, '2017-12-14 21:58:00', 0, 1, 5),
(9, '2017-12-14 21:58:46', 0, 1, 5),
(10, '2017-12-14 21:58:55', 0, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_contact`
--

CREATE TABLE `order_contact` (
  `o_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciver_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_contact`
--

INSERT INTO `order_contact` (`o_id`, `date`, `sender_id`, `reciver_id`, `message`, `file_path`) VALUES
(4, '2017-12-13 15:22:13', 75, 73, 'i wanna to make website', ''),
(4, '2017-12-13 15:30:44', 75, 73, 'yes something like it', ''),
(4, '2017-12-13 15:37:58', 73, 75, 'ok i will do my best', ''),
(4, '2017-12-13 15:38:32', 73, 75, 'i send you this file as a final file', '5a313b68ad20d8.61853744.sql'),
(4, '2017-12-13 15:54:12', 73, 75, 'complete order', ''),
(4, '2017-12-13 15:56:27', 73, 75, 'complete order', ''),
(4, '2017-12-13 16:37:04', 73, 75, 'complete order', ''),
(5, '2017-12-13 18:04:53', 75, 73, 'i want this order pls', ''),
(5, '2017-12-13 18:21:25', 73, 75, 'ok take it', ''),
(7, '2017-12-14 21:53:46', 75, 5, 'jlkjk', '5a32e4daf1d0c5.87399021.sql'),
(7, '2017-12-14 21:55:45', 5, 75, 'ml;m.,m.', ''),
(7, '2017-12-14 21:55:55', 5, 75, '', '5a32e55af3d656.21020674.sql');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_account`
--

CREATE TABLE `paypal_account` (
  `paypal_id` varchar(255) NOT NULL,
  `E-mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `c_id` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `summary` text,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`c_id`, `zip_code`, `summary`, `country`) VALUES
(5, 45632, 'web developer', 'Anguilla'),
(73, 12345, 'web developer  rrrrrr', 'Algeria');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `c_id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`c_id`, `project`) VALUES
(73, 'project managment'),
(5, 'software project'),
(73, 'software project'),
(75, 'software project');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `s_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `view` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT ' 1 > activated , 0 > deactivated',
  `s_date` date NOT NULL COMMENT 'date of the service',
  `tags` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `d_date` tinyint(3) UNSIGNED NOT NULL COMMENT 'Date of delivering service to customer',
  `c_id` int(11) NOT NULL COMMENT 'foreign key customer id',
  `cat_id` int(11) NOT NULL COMMENT 'foreign key  category id',
  `mgr_id` int(11) NOT NULL COMMENT 'foreign key  manager id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`s_id`, `name`, `view`, `description`, `status`, `s_date`, `tags`, `price`, `d_date`, `c_id`, `cat_id`, `mgr_id`) VALUES
(1, 'service1', 453, 'des1', 1, '2017-11-06', 'developer-tester-designer-web designer', 4560, 3, 73, 7, 39),
(2, 'test2', 365, 'des2', 1, '2017-01-01', 'developer-tester-designer', 350, 2, 5, 7, 39),
(4, 'sss2', 391, 'des3', 1, '2017-11-21', 'tester-developer', 3850, 4, 73, 7, 39),
(6, 'bootstrab designer', 1, 'this is new web designer   ya ya ya', 0, '2017-12-15', 'web-designer-tester-bootstrab', 25, 4, 75, 7, 39),
(7, 'tester', 1, 'web tester  andrioid tester', 1, '2017-12-15', 'tester - developer -designer - php - oop', 20, 3, 75, 9, 40);

-- --------------------------------------------------------

--
-- Table structure for table `service_image`
--

CREATE TABLE `service_image` (
  `s_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_image`
--

INSERT INTO `service_image` (`s_id`, `image`) VALUES
(1, 'test1.jpeg'),
(1, 'test2.png'),
(2, 'service2.jpg'),
(4, 'service3.png'),
(6, 'Screenshot 2017-07-10 17.47.45.png'),
(6, 'Screenshot 2017-07-10 21.16.06.png'),
(7, '7_Microsoft Toolkit 2.6.5 Windows 4.png'),
(7, '7_Microsoft Toolkit 2.6.png');

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `c_id` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL COMMENT 'rate from 0 to 100 , maximum length = 3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`c_id`, `skill`, `rate`) VALUES
(5, 'pnp oop', 3),
(73, 'tester', 3);

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` int(11) NOT NULL,
  `phone_numbers` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `phone_numbers`) VALUES
(4, '11234564'),
(5, '7542145565');

-- --------------------------------------------------------

--
-- Table structure for table `system_adress`
--

CREATE TABLE `system_adress` (
  `id` int(11) NOT NULL,
  `adresses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_adress`
--

INSERT INTO `system_adress` (`id`, `adresses`) VALUES
(1, '45 st al zamalek street cairo egypt');

-- --------------------------------------------------------

--
-- Table structure for table `system_faxes`
--

CREATE TABLE `system_faxes` (
  `id` int(11) NOT NULL,
  `faxes` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_mails`
--

CREATE TABLE `system_mails` (
  `id` int(11) NOT NULL,
  `emails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_mails`
--

INSERT INTO `system_mails` (`id`, `emails`) VALUES
(6, 'system506@gmail.com'),
(7, 'system@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `customer_id` int(11) NOT NULL COMMENT 'foeign key customer',
  `date` datetime NOT NULL,
  `paypal_id` varchar(255) DEFAULT NULL,
  `credit_id` varchar(255) DEFAULT NULL,
  `cash` int(11) NOT NULL,
  `operation_type` tinyint(1) NOT NULL COMMENT '1 > pay, 0 > withdraw'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`customer_id`, `date`, `paypal_id`, `credit_id`, `cash`, `operation_type`) VALUES
(5, '2017-12-14 22:04:11', NULL, 'ch_1BZ3sjFN8H63tpg8xguceOy4', 5000, 1),
(75, '2017-12-14 15:02:47', NULL, 'ch_1BYxIvFN8H63tpg8KvAEnN7I', 2000, 1),
(75, '2017-12-14 15:19:04', NULL, 'ch_1BYxYgFN8H63tpg8jZqFUqCl', 2000, 1),
(75, '2017-12-14 15:19:28', NULL, 'ch_1BYxZ4FN8H63tpg8OehkqmSK', 2000, 1),
(75, '2017-12-14 15:20:28', NULL, 'ch_1BYxa2FN8H63tpg8jaAP4jGq', 2000, 1),
(75, '2017-12-14 15:21:11', NULL, 'ch_1BYxajFN8H63tpg8PSszOrQG', 2000, 1),
(75, '2017-12-14 15:22:32', NULL, 'ch_1BYxc2FN8H63tpg8JwgFAuba', 2000, 1),
(75, '2017-12-14 15:29:03', NULL, 'ch_1BYxiLFN8H63tpg8vVXXw2WF', 2000, 1),
(75, '2017-12-14 15:44:19', NULL, 'ch_1BYxx7FN8H63tpg8Fl1eQbFl', 2000, 1),
(75, '2017-12-14 15:44:53', NULL, 'ch_1BYxxfFN8H63tpg8HKoklPf7', 5000, 1),
(75, '2017-12-14 16:50:37', NULL, 'ch_1BYyzHFN8H63tpg8aIVKIMy5', 5000, 1),
(75, '2017-12-14 16:51:14', NULL, 'ch_1BYyzsFN8H63tpg8dyTdHQQU', 10000, 1),
(75, '2017-12-14 16:52:52', NULL, 'ch_1BYz1SFN8H63tpg8YDOyECyF', 5000, 1),
(75, '2017-12-14 16:53:17', NULL, 'ch_1BYz1sFN8H63tpg8mD4kHlL8', 100000, 1),
(75, '2017-12-14 18:54:40', NULL, 'ch_1BZ0vKFN8H63tpg8unDA9hfl', 5000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity`,`c_id`),
  ADD KEY `user_activity_foreign` (`c_id`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award`,`c_id`),
  ADD KEY `award_foreign_key` (`c_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `manager_foreign_key` (`mgr_id`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`c_id`,`certification`);

--
-- Indexes for table `creditcard`
--
ALTER TABLE `creditcard`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `E-mail` (`E-mail`);

--
-- Indexes for table `customerservice`
--
ALTER TABLE `customerservice`
  ADD PRIMARY KEY (`c_id`,`mgr_id`,`date`),
  ADD KEY `mgr_message_foreignkey` (`mgr_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`c_id`,`education`);

--
-- Indexes for table `estimate`
--
ALTER TABLE `estimate`
  ADD PRIMARY KEY (`o_id`,`s_id`,`c_id`),
  ADD KEY `estimate_foreign_c_id` (`c_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience`,`c_id`),
  ADD KEY `experience_foreign_key` (`c_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language`,`c_id`),
  ADD KEY `language_foreignkey` (`c_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mgr_id`),
  ADD UNIQUE KEY `E-mail` (`E-mail`);

--
-- Indexes for table `manager_msg`
--
ALTER TABLE `manager_msg`
  ADD PRIMARY KEY (`mgr_sender`,`mgr_reciever`,`date`),
  ADD KEY `mangaer_mesage_reciever_foreignkey` (`mgr_reciever`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`sender`,`reciever`,`date`),
  ADD KEY `message_user_reciever_key` (`reciever`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`date`,`mgr_id`),
  ADD KEY `notification_mangaer_foreignkey` (`mgr_id`);

--
-- Indexes for table `ordering`
--
ALTER TABLE `ordering`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `sercive_key_foreign` (`s_id`),
  ADD KEY `customer_order_key_foreign` (`c_id`);

--
-- Indexes for table `order_contact`
--
ALTER TABLE `order_contact`
  ADD PRIMARY KEY (`o_id`,`date`,`sender_id`,`reciver_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `reciver_id` (`reciver_id`);

--
-- Indexes for table `paypal_account`
--
ALTER TABLE `paypal_account`
  ADD PRIMARY KEY (`paypal_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project`,`c_id`),
  ADD KEY `project_foreign_key` (`c_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `customer_key_foreign` (`c_id`),
  ADD KEY `category_key_foreign` (`cat_id`),
  ADD KEY `manager_key_foreign` (`mgr_id`);

--
-- Indexes for table `service_image`
--
ALTER TABLE `service_image`
  ADD PRIMARY KEY (`s_id`,`image`);

--
-- Indexes for table `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`c_id`,`s_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`c_id`,`skill`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_adress`
--
ALTER TABLE `system_adress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_faxes`
--
ALTER TABLE `system_faxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mails`
--
ALTER TABLE `system_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`customer_id`,`date`),
  ADD KEY `paypal_id` (`paypal_id`),
  ADD KEY `creditcard_foerign_key` (`credit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id بتاع اليوزر', AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `mgr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ordering`
--
ALTER TABLE `ordering`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_adress`
--
ALTER TABLE `system_adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_faxes`
--
ALTER TABLE `system_faxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mails`
--
ALTER TABLE `system_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `user_activity_foreign` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `award_foreign_key` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `manager_foreign_key` FOREIGN KEY (`mgr_id`) REFERENCES `manager` (`mgr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certification`
--
ALTER TABLE `certification`
  ADD CONSTRAINT `certification_foreign_key` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customerservice`
--
ALTER TABLE `customerservice`
  ADD CONSTRAINT `customer_message_foreignkey` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mgr_message_foreignkey` FOREIGN KEY (`mgr_id`) REFERENCES `manager` (`mgr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_id` FOREIGN KEY (`service_id`) REFERENCES `service` (`s_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_foreign_key` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `estimate`
--
ALTER TABLE `estimate`
  ADD CONSTRAINT `estimate_foreign_c_id` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estimate_foreign_o_id` FOREIGN KEY (`o_id`) REFERENCES `ordering` (`order_id`),
  ADD CONSTRAINT `estimate_foreign_s_id` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_foreign_key` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `language`
--
ALTER TABLE `language`
  ADD CONSTRAINT `language_foreignkey` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manager_msg`
--
ALTER TABLE `manager_msg`
  ADD CONSTRAINT `mangaer_mesage_reciever_foreignkey` FOREIGN KEY (`mgr_reciever`) REFERENCES `manager` (`mgr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mangaer_mesage_sender_foreignkey` FOREIGN KEY (`mgr_sender`) REFERENCES `manager` (`mgr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_user_reciever_key` FOREIGN KEY (`reciever`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_user_sender_key` FOREIGN KEY (`sender`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_mangaer_foreignkey` FOREIGN KEY (`mgr_id`) REFERENCES `manager` (`mgr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordering`
--
ALTER TABLE `ordering`
  ADD CONSTRAINT `customer_order_key_foreign` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sercive_key_foreign` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_contact`
--
ALTER TABLE `order_contact`
  ADD CONSTRAINT `order_contact_foreign_key_order_id` FOREIGN KEY (`o_id`) REFERENCES `ordering` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_contact_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `order_contact_ibfk_2` FOREIGN KEY (`reciver_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `customer_profile_foreign` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_foreign_key` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `category_key_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_key_foreign` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manager_key_foreign` FOREIGN KEY (`mgr_id`) REFERENCES `manager` (`mgr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_image`
--
ALTER TABLE `service_image`
  ADD CONSTRAINT `service_image_foreignkey` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopping`
--
ALTER TABLE `shopping`
  ADD CONSTRAINT `shopping_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `skill_foreignkey` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `creditcard_foerign_key` FOREIGN KEY (`credit_id`) REFERENCES `creditcard` (`credit_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paypal_id` FOREIGN KEY (`paypal_id`) REFERENCES `paypal_account` (`paypal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_transaction_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
