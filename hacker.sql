-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 10:42 AM
-- Server version: 10.5.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id14567499_log`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(12) NOT NULL,
  `message` varchar(255) NOT NULL,
  `raw` varchar(255) NOT NULL,
  `dt` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `att`
--

CREATE TABLE `att` (
  `id` int(12) NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `cn` varchar(255) NOT NULL,
  `dof` date NOT NULL,
  `pa` decimal(50,0) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ba` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `att`
--

INSERT INTO `att` (`id`, `fn`, `ln`, `cn`, `dof`, `pa`, `email`, `ba`) VALUES
(2, 'Yogesh', 'Takke', '9699415592', '2019-12-21', 3500, 'yogeshtakke72@gmail.com', 3500),
(3, 'Aakash', 'khurange', '8692800952', '2019-12-21', 3500, 'akashkhurange@gmail.com', -36500),
(4, 'Sumedh', 'Chavan', '9819673850', '2019-12-19', 2000, 'sumedhchavan99@gmail.com', 6000),
(5, 'Kaivalya', 'Vishwasrao', '7039895483', '2019-12-28', 3500, 'vishwasraokaivalya@gmail.com', 0),
(7, 'Sushant', 'More', '9820469283', '2019-12-24', 13500, 'sushantmore09072000@gmail.com', 0),
(8, 'Sushant', 'More', '9820469283', '2019-12-24', 2500, 'sushantmore09072000@gmail.com', 0),
(9, 'Aakash', 'khurange', '8692800952', '2020-01-18', 3500, 'akashkhurange@gmail.com', -36500),
(10, 'Aman', 'Panigrahi', '7977240485', '2020-01-18', 8000, 'amanpanigrahi01@gmail.com', 8000),
(11, 'Yogesh', 'Takke', '9699415592', '2020-01-21', 3500, 'yogeshtakke72@gmail.com', 3500),
(12, 'Sumedh', 'Chavan', '9819673850', '2020-01-23', 4000, 'sumedhchavan99@gmail.com', 6000),
(13, 'Nikhil', 'Dhamne', '9769538396', '2020-01-30', 3000, 'nikhildhamne02@gmail.com', 12000),
(14, 'Karan', 'Sonik', '7977984605', '2019-11-30', 10000, 'sonikkaran@gmail.com', 14000),
(15, 'Karan', 'Sonik', '7977984605', '2020-01-12', 10000, 'sonikkaran@gmail.com', 14000),
(16, 'Naish', 'Siddiqui', '8369190125', '2020-02-01', 4000, 'naishsiddiqui18@gmail.com', 8000),
(17, 'Siddhesh', 'Sawant', '9820124209', '2020-02-01', 4000, 'siddhesh2209@gmail.com', 8000),
(18, 'Sumedh', 'Chavan', '9819673850', '2020-02-18', 4000, 'sumedhchavan99@gmail.com', 6000),
(19, 'Aakash', 'khurange', '8692800952', '2020-02-20', 3500, 'akashkhurange@gmail.com', -36500),
(20, 'Yogesh', 'Takke', '9699415592', '2020-02-22', 3500, 'yogeshtakke72@gmail.com', 3500),
(21, 'Naish', 'Siddiqui', '8369190125', '2020-03-01', 4000, 'naishsiddiqui18@gmail.com', 8000),
(24, 'Kaivalya', 'Vishwasrao', '7039895483', '2020-03-31', 5000, 'vishwasraokaivalya@gmail.com', 0),
(25, 'Kaivalya', 'Vishwasrao', '7039895483', '2020-05-11', 5500, 'vishwasraokaivalya@gmail.com', 0),
(111, 'Aakash', 'khurange', '7350059415', '2022-10-15', 20000, 'yashghole12@gmail.com@gmail.com', -36500),
(112, 'Aakash', 'khurange', '7350059415', '2022-10-15', 20000, 'yashghole12@gmail.com@gmail.com', -36500),
(116, 'Arayn ', 'Yewale', '9920268120', '2023-04-23', 10000, 'vyewale@rediffmail.com', 0),
(117, 'Yashwant', 'Ghole', '7350059415', '2024-03-10', 20000, 'yashghole12@gmail.com', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `backimg`
--

CREATE TABLE `backimg` (
  `id` int(12) NOT NULL,
  `myimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backimg`
--

INSERT INTO `backimg` (`id`, `myimg`) VALUES
(24, 'Back/fish.gif'),
(25, 'Back/nat4.gif'),
(26, 'Back/birds.gif'),
(27, 'Back/t.jpg'),
(28, 'Back/hacker 2.jpg'),
(29, 'Back/Hacker-groups.jpg'),
(30, 'Back/hooded.jpg'),
(31, 'Back/evolution-hacker-.jpeg'),
(32, 'Back/1.jpg'),
(33, 'Back/download.jpg'),
(34, 'Back/7.jpg'),
(35, 'Back/15.jpg'),
(36, 'Back/10.jpg'),
(37, 'Back/2.jpg'),
(38, 'Back/8.jpg'),
(39, 'Back/24-1925.posterl.4380c2a1.jpg'),
(40, 'Back/7ba2c3fdcc22706201d2dd54a5006916.png'),
(41, 'Back/fish (1).gif'),
(42, 'Back/8.jpg'),
(43, 'Back/fish (1).gif'),
(44, 'Back/8myVn2.jpg'),
(45, 'Back/Pride.jpg'),
(46, 'Back/8myVn2.jpg'),
(47, 'Back/6.jpg'),
(48, 'Back/anarch.jpg'),
(49, 'Back/download.jpg'),
(50, 'Back/IMG_20231201_200027_304.jpg'),
(51, 'Back/Software Developer.jpg'),
(52, 'Back/backs.webp'),
(53, 'Back/pexels-bill-white-165537.jpg'),
(54, 'Back/img2.jpg'),
(55, 'Back/b-1.jpg'),
(56, 'Back/pexels-kammeran-gonzalezkeola-9638689.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(12) NOT NULL,
  `fn` varchar(255) NOT NULL,
  `dt` date NOT NULL,
  `sm` varchar(255) NOT NULL,
  `bt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_login`
--

CREATE TABLE `chat_login` (
  `id` int(12) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `type` enum('Admin','User') NOT NULL DEFAULT 'User',
  `cpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_login`
--

INSERT INTO `chat_login` (`id`, `user`, `pass`, `type`, `cpass`) VALUES
(6, 'Sandesh raul', '8898865344', 'User', '8898865344'),
(8, 'Admin', 'admin', 'User', 'admin'),
(11, 'Aakash', 'Aakash1234', 'User', 'Aakash1234'),
(14, 'Yash', 'yash', 'User', 'yash'),
(15, 'chavan', '9773686806', 'User', '9773686806'),
(16, 'Naish', 'naish', 'User', 'naish'),
(17, 'Vatsal', 'vatsal', 'User', 'vatsal'),
(18, 'shyam', '123', 'User', '123'),
(20, 'Ritesh', '123456789', 'User', '123456789'),
(23, 'Haresh', 'haresh', 'User', 'haresh');

-- --------------------------------------------------------

--
-- Table structure for table `comm`
--

CREATE TABLE `comm` (
  `id` int(12) NOT NULL,
  `fn` varchar(255) NOT NULL,
  `em` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `cm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(12) NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `cn` varchar(255) NOT NULL,
  `pcn` varchar(255) NOT NULL,
  `doa` date NOT NULL,
  `ei` varchar(255) NOT NULL,
  `cnas` varchar(255) NOT NULL,
  `nos` varchar(255) NOT NULL,
  `tf` decimal(50,0) NOT NULL,
  `myimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `fn`, `ln`, `cn`, `pcn`, `doa`, `ei`, `cnas`, `nos`, `tf`, `myimg`) VALUES
(1, 'Kaivalya', 'Vishwasrao', '7039895483', '9833438235', '2019-06-03', 'vishwasraokaivalya@gmail.com', 'Sathaye College[BSCIT]', 'CJ,CG,SE,COST', 14000, 'Stud/Kaivalya.jpg'),
(2, 'Yogesh', 'Takke', '9699415592', '9699415592', '2019-08-03', 'yogeshtakke72@gmail.com', 'Sathaye College[BSCIT]', 'CJ,CG,SE,COST', 14000, 'Stud/yogesh.jpg'),
(3, 'Sushant', 'More', '9820469283', '9892035678', '2019-06-13', 'sushantmore09072000@gmail.com', 'Sathaye College[BSCIT]', 'CJ,CG,COST', 12000, 'Stud/sushant.jpg'),
(4, 'Sumedh', 'Chavan', '9819673850', '9773686806', '2019-06-03', 'sumedhchavan99@gmail.com', 'Sathaye College[BSCIT]', 'CJ,CG,SE,COST', 16000, 'Stud/sumedh.jpg'),
(5, 'Siddhesh', 'Sawant', '9820124209', '9004168266', '2019-06-13', 'siddhesh2209@gmail.com', 'Sathaye College[BSCIT]', 'CJ,CG,COST', 12000, 'Stud/sidhesh.jpg'),
(6, 'Aman', 'Panigrahi', '7977240485', '9930731561', '2019-06-03', 'amanpanigrahi01@gmail.com', 'UPG College[BSCIT]', 'COST,ES,CJ,CG', 16000, 'Stud/aman_img.jpg'),
(9, 'Naish', 'Siddiqui', '8369190125', '9167081653', '2019-07-17', 'naishsiddiqui18@gmail.com', 'MKS College', 'CJ,CG,COST,ES', 16000, 'Stud/Naish.png'),
(11, 'Aakash', 'khurange', '8692800952', '8692800952', '2019-06-03', 'akashkhurange@gmail.com', 'Sathaye College[BSCIT]', 'CJ,CG,SE,COST', 14000, 'Stud/AIbEiakash.jpg'),
(12, 'Sakshi', 'Kadam', '9004837431', '8779458190', '2020-05-23', 'sakshii.k21@gmail.com', 'Other Colleges', 'CJ,AJ,Android', 25000, 'Stud/sakshi.jpg'),
(13, 'Aditi', 'Kadam', '9022809907', '8779458190', '2020-06-03', 'aditikadam425@gmail.com', 'Other Colleges', 'C#,ASP.NET,VB.NET', 20000, 'Stud/aditi.jpg'),
(22, 'Azmat', 'ghs', '45567654545', '655464499', '2023-04-25', 'profyashsecure@gmail.com', 'hjf', 'dhf', 7883, 'Stud/mhani.jpg'),
(23, 'Arayn ', 'Yewale', '9920268120', '9870483172', '2023-04-27', 'vyewale@rediffmail.com', 'Thakur Polytechnic', 'Core Java', 10000, 'Stud/img2.jpg'),
(24, 'Yashwant', 'Ghole', '7350059415', '8976123723', '2024-03-10', 'yashghole12@gmail.com', 'viva', 'C++', 50000, 'Stud/back.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(12) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `pass`) VALUES
(1, 'robo', 'robo@1997');

-- --------------------------------------------------------

--
-- Table structure for table `private`
--

CREATE TABLE `private` (
  `id` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `dt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `private`
--

INSERT INTO `private` (`id`, `name`, `contact`, `course`, `year`, `dt`) VALUES
(65, 'Piyush      Shinde', '8104470161', 'BSC[IT]', 'App/Software/Websites', '06/05/2022 11:38:08 am'),
(66, 'Dipali    Tatkare', '9321725135', 'BSC[IT]', 'App/Software/Websites', '07/05/2022 18:31:37 pm'),
(67, 'Yash Manoj Dabholkar', '8779490535', 'Prog Language', 'App/Software/Websites', '07/05/2022 18:32:38 pm'),
(69, 'Swapnil Salaskar Jogeshwari', '2455665625', 'Prog Language', 'App/Software/Websites', '08/05/2022 00:54:59 am'),
(70, 'Kishan yadav 1234', '9167386509', 'Prog Language', 'App/Software/Websites', '09/05/2022 14:54:46 pm'),
(71, 'viral  h  yadav ', '9619109931', 'Prog Language', 'App/Software/Websites', '17/05/2022 16:43:01 pm'),
(72, 'Suhani satish soni', '9821575684', 'Prog Language', 'SYJC', '19/05/2022 13:48:16 pm'),
(73, 'Sheela K. Yadav', '9967478580', 'Prog Language', 'TY', '25/05/2022 20:04:06 pm'),
(74, 'Aarti Pradeep Bhor ', '9987326873', 'Prog Language', 'SYJC', '25/06/2022 21:01:10 pm'),
(75, 'Aryan Hemant Yewale', '9920268120', 'Computer Science', 'SY', '30/07/2022 18:42:15 pm'),
(76, 'Hariom Sunil Dixit ', '8928374218', 'BSC[IT]', 'TY', '13/08/2022 11:00:37 am'),
(77, 'Haka hehehehehhjwjwh', '9273739299', 'Prog Language', 'App/Software/Websites', '28/01/2024 23:10:20 pm'),
(78, 'abcdefghijklmnop', '1234567890', 'BSC[IT]', 'TY', '16/02/2024 12:59:33 pm');

-- --------------------------------------------------------

--
-- Table structure for table `profile1`
--

CREATE TABLE `profile1` (
  `id` int(12) NOT NULL,
  `myimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile1`
--

INSERT INTO `profile1` (`id`, `myimg`) VALUES
(1, 'Back/1024px-Flag_of_the_Philippines_-_cropped_sun.svg.png'),
(2, 'Back/background_abstract_010.jpg'),
(3, 'Back/download.jpg'),
(4, 'Back/4522843.jpg'),
(5, 'Back/himya hrithik.jpg'),
(6, 'Back/'),
(7, 'Back/Nature2.jpg'),
(8, 'Back/120px-Monet_red_houses_bjornegaard_snow_norway_1895.jpg'),
(9, 'Back/5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profile2`
--

CREATE TABLE `profile2` (
  `id` int(12) NOT NULL,
  `myimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile2`
--

INSERT INTO `profile2` (`id`, `myimg`) VALUES
(1, 'Back/home-banner-fon.png'),
(2, 'Back/ai.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `dt` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `name`, `course`, `topic`, `branch`, `dt`, `progress`) VALUES
(143, 'vivek singh', 'C Prog', 'String Function', 'Vile Parle[AO]', '09/04/2022 16:48:56 pm', 'Completed'),
(144, 'Akshit Acherekar', 'C Prog', 'Intro of C', 'Vile Parle[CL]', '10/04/2022 07:34:52 am', 'Completed'),
(159, 'kshitij nitin lugade', 'Core Java', 'Intro of java,command Line Args', 'Andheri', '13/04/2022 15:05:43 pm', 'Completed'),
(160, 'kshitij nitin lugade', 'Core Java', 'Data Types and Variables', 'Andheri', '13/04/2022 15:06:51 pm', 'Completed'),
(161, 'Swapnil Maurya', 'Web Design', 'Wordpress2', 'Andheri', '13/04/2022 15:44:14 pm', 'Completed'),
(162, 'Akshit Acharekar', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '14/04/2022 13:12:47 pm', 'Completed'),
(163, 'Akshit Acharekar', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '14/04/2022 13:13:33 pm', 'Completed'),
(164, 'Akshit Acharekar', 'C Prog', 'Operator1', 'Vile Parle[AO]', '14/04/2022 14:05:14 pm', 'Completed'),
(165, 'Akshit Acharekar', 'C Prog', 'Operator2', 'Vile Parle[AO]', '14/04/2022 14:05:40 pm', 'Completed'),
(166, 'Akshit Acharekar', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '14/04/2022 14:06:08 pm', 'Completed'),
(167, 'Akshit Acharekar', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '14/04/2022 14:06:31 pm', 'Completed'),
(168, 'Atharv Sawant', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '14/04/2022 15:03:33 pm', 'Completed'),
(169, 'Atharv Sawant', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '14/04/2022 15:03:50 pm', 'Completed'),
(170, 'Atharv Sawant', 'C Prog', 'Operator1', 'Vile Parle[AO]', '14/04/2022 15:53:02 pm', 'Completed'),
(171, 'Atharv Sawant', 'C Prog', 'Operator2', 'Vile Parle[AO]', '14/04/2022 15:53:25 pm', 'Completed'),
(172, 'Atharv Sawant', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '14/04/2022 15:53:45 pm', 'Completed'),
(173, 'Atharv Sawant', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '14/04/2022 15:54:06 pm', 'Completed'),
(174, 'Atharv Sawant', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '14/04/2022 15:54:22 pm', 'Completed'),
(175, 'Atharv Sawant', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '14/04/2022 15:54:44 pm', 'Completed'),
(176, 'Chintan Thakker', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '14/04/2022 17:44:26 pm', 'Completed'),
(177, 'Chintan Thakker', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '14/04/2022 17:44:55 pm', 'Completed'),
(178, 'Shruti Sanjay Chavan', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '14/04/2022 19:06:16 pm', 'Completed'),
(179, 'Shruti Sanjay Chavan', 'C Prog', 'String Function', 'Vile Parle[AO]', '14/04/2022 20:02:06 pm', 'Completed'),
(180, 'ayushi mishra', 'Python', 'Exception Handling', 'Andheri', '15/04/2022 19:34:35 pm', 'Completed'),
(181, 'ayushi mishra', 'Python', 'Intro of Python', 'Andheri', '15/04/2022 19:38:57 pm', 'Completed'),
(182, 'ayushi mishra', 'Python', 'Data types and variables', 'Andheri', '15/04/2022 19:39:21 pm', 'Completed'),
(183, 'Akshit Acharekar', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '16/04/2022 13:14:41 pm', 'Completed'),
(184, 'Akshit Acharekar', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '16/04/2022 13:14:59 pm', 'Completed'),
(185, 'Akshit Acharekar', 'C Prog', 'Function1', 'Vile Parle[AO]', '16/04/2022 13:15:14 pm', 'Completed'),
(186, 'Akshit Acharekar', 'C Prog', 'Method (call by value),Recursive', 'Vile Parle[AO]', '16/04/2022 13:15:33 pm', 'Completed'),
(187, 'Akshit Acharekar', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '16/04/2022 13:15:51 pm', 'Completed'),
(188, 'Akshit Acharekar', 'C Prog', 'Pointer', 'Vile Parle[AO]', '16/04/2022 13:16:17 pm', 'Completed'),
(189, 'Akshit Acharekar', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '16/04/2022 13:16:36 pm', 'Completed'),
(190, 'Akshit Acharekar', 'C Prog', 'Structure2(with Array,with Function,with Pointer)', 'Vile Parle[AO]', '16/04/2022 13:17:14 pm', 'Completed'),
(191, 'Akshit Acharekar', 'C Prog', 'Union', 'Vile Parle[AO]', '16/04/2022 13:17:34 pm', 'Completed'),
(192, 'Akshit Acharekar', 'C Prog', 'String Function', 'Vile Parle[AO]', '16/04/2022 13:17:50 pm', 'Completed'),
(193, 'Vivek Singh', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '16/04/2022 14:18:32 pm', 'Completed'),
(194, 'Vivek Singh', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '16/04/2022 14:19:17 pm', 'Completed'),
(195, 'Vivek Singh', 'C Prog', 'Operator1', 'Vile Parle[AO]', '16/04/2022 14:19:43 pm', 'Completed'),
(196, 'Vivek Singh', 'C Prog', 'Operator2', 'Vile Parle[AO]', '16/04/2022 14:20:20 pm', 'Completed'),
(197, 'Vivek Singh', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '16/04/2022 14:20:39 pm', 'Completed'),
(198, 'Vivek Singh', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '16/04/2022 14:21:03 pm', 'Completed'),
(199, 'Vivek Singh', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '16/04/2022 14:21:46 pm', 'Completed'),
(200, 'Vivek Singh', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '16/04/2022 14:22:04 pm', 'Completed'),
(201, 'Vivek Singh', 'C Prog', 'Function1', 'Vile Parle[AO]', '16/04/2022 14:22:54 pm', 'Completed'),
(202, 'Vivek Singh', 'C Prog', 'Method (call by value),Recursive', 'Vile Parle[AO]', '16/04/2022 14:23:12 pm', 'Completed'),
(203, 'Vivek Singh', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '16/04/2022 14:23:30 pm', 'Completed'),
(204, 'Vivek Singh', 'C Prog', 'Pointer', 'Vile Parle[AO]', '16/04/2022 14:24:15 pm', 'Completed'),
(205, 'Vivek Singh', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '16/04/2022 14:24:35 pm', 'Completed'),
(206, 'Vivek Singh', 'C Prog', 'Structure2(with Array,with Function,with Pointer)', 'Vile Parle[AO]', '16/04/2022 14:24:55 pm', 'Completed'),
(207, 'Vivek Singh', 'C Prog', 'Union', 'Vile Parle[AO]', '16/04/2022 14:25:34 pm', 'Completed'),
(208, 'Shruti Sanjay Chavan', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '16/04/2022 15:07:40 pm', 'Completed'),
(209, 'Shruti Sanjay Chavan', 'C Prog', 'Operator1', 'Vile Parle[AO]', '16/04/2022 15:08:03 pm', 'Completed'),
(210, 'Shruti Sanjay Chavan', 'C Prog', 'Operator2', 'Vile Parle[AO]', '16/04/2022 15:08:26 pm', 'Completed'),
(211, 'Shruti Sanjay Chavan', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '16/04/2022 15:08:48 pm', 'Completed'),
(212, 'Shruti Sanjay Chavan', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '16/04/2022 15:09:09 pm', 'Completed'),
(213, 'Shruti Sanjay Chavan', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '16/04/2022 15:09:27 pm', 'Completed'),
(214, 'Shruti Sanjay Chavan', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '16/04/2022 15:09:47 pm', 'Completed'),
(215, 'Shruti Sanjay Chavan', 'C Prog', 'Function1', 'Vile Parle[AO]', '16/04/2022 15:10:06 pm', 'Completed'),
(216, 'Shruti Sanjay Chavan', 'C Prog', 'Method (call by value),Recursive', 'Vile Parle[AO]', '16/04/2022 15:10:34 pm', 'Completed'),
(217, 'Shruti Sanjay Chavan', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '16/04/2022 15:10:58 pm', 'Completed'),
(218, 'Shruti Sanjay Chavan', 'C Prog', 'Pointer', 'Vile Parle[AO]', '16/04/2022 15:11:17 pm', 'Completed'),
(219, 'Shruti Sanjay Chavan', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '16/04/2022 15:11:39 pm', 'Completed'),
(220, 'Shruti Sanjay Chavan', 'C Prog', 'Structure2(with Array,with Function,with Pointer)', 'Vile Parle[AO]', '16/04/2022 15:12:06 pm', 'Completed'),
(221, 'Shruti Sanjay Chavan', 'C Prog', 'Union', 'Vile Parle[AO]', '16/04/2022 15:12:25 pm', 'Completed'),
(222, 'Aditya Ojha', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '18/04/2022 12:35:29 pm', 'Completed'),
(223, 'Shreeya Rajesh davd', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '18/04/2022 12:37:02 pm', 'Completed'),
(225, 'Aditya Ojha', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '18/04/2022 12:38:19 pm', 'Completed'),
(226, 'Shreeya Rajesh dave', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '18/04/2022 12:38:25 pm', 'Completed'),
(227, 'Shweta Pandet', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '18/04/2022 12:40:32 pm', 'Completed'),
(228, 'Shaikh Mohd Kaif', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '18/04/2022 12:41:15 pm', 'Completed'),
(229, 'jai dhodi', 'C Prog', 'Intro of C', 'Andheri', '18/04/2022 13:46:28 pm', 'Completed'),
(230, 'Prachi maurya', 'C Prog', 'Intro of C', 'Andheri', '18/04/2022 14:27:28 pm', 'Completed'),
(231, 'Molshri Rajankar', 'Core Java', 'Intro of java,command Line Args', 'Andheri', '18/04/2022 14:46:02 pm', 'Completed'),
(232, 'Molshri Rajankar', 'Core Java', 'Data Types and Variables', 'Andheri', '18/04/2022 14:46:23 pm', 'Completed'),
(233, 'Molshri Rajankar', 'Core Java', 'Operators', 'Andheri', '18/04/2022 14:46:50 pm', 'Completed'),
(234, 'Molshri Rajankar', 'Core Java', 'Loops,Nested loops,Control Statement', 'Andheri', '18/04/2022 14:47:30 pm', 'Completed'),
(235, 'Sudha Sharma', 'C Prog', 'Intro of C', 'Andheri', '18/04/2022 15:58:12 pm', 'Completed'),
(236, 'Sudha Sharma', 'C Prog', 'Data Types and Variables(input/output)', 'Andheri', '18/04/2022 16:00:16 pm', 'Completed'),
(237, 'Dipti Salgaonkar', 'C Prog', 'Intro of C', 'Andheri', '18/04/2022 16:51:27 pm', 'Completed'),
(238, 'Dipti Salgaonkar', 'C Prog', 'Data Types and Variables(input/output)', 'Andheri', '18/04/2022 16:51:46 pm', 'Completed'),
(239, 'Dipti Salgaonkar', 'C Prog', 'Operator1', 'Andheri', '18/04/2022 16:52:39 pm', 'Completed'),
(240, 'Dipti Salgaonkar', 'C Prog', 'Operator2', 'Andheri', '18/04/2022 16:53:02 pm', 'Completed'),
(241, 'Sudha Sharma', 'C Prog', 'Operator1', 'Andheri', '18/04/2022 16:53:10 pm', 'Completed'),
(242, 'Dipti Salgaonkar', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '18/04/2022 16:53:17 pm', 'Completed'),
(243, 'Sudha Sharma', 'C Prog', 'Operator2', 'Andheri', '18/04/2022 16:53:38 pm', 'Completed'),
(244, 'ayushi', 'Python', 'File I/O', 'Andheri', '18/04/2022 19:23:40 pm', 'Completed'),
(245, 'Vivek Singh', 'C++ Prog', 'Intro Classes and Object', 'Vile Parle[AO]', '19/04/2022 14:12:53 pm', 'Completed'),
(246, 'Akshit Acharekar ', 'C++ Prog', 'Intro Classes and Object', 'Vile Parle[AO]', '19/04/2022 14:43:15 pm', 'Completed'),
(249, 'Chintan Thakker', 'C Prog', 'Operator1', 'Vile Parle[AO]', '19/04/2022 17:07:17 pm', 'Completed'),
(250, 'Chintan Thakker', 'C Prog', 'Operator2', 'Vile Parle[AO]', '19/04/2022 17:07:35 pm', 'Completed'),
(251, 'Atharv Sawant', 'C Prog', 'Function1', 'Vile Parle[AO]', '19/04/2022 17:46:27 pm', 'Completed'),
(252, 'Shweta Pandey', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '20/04/2022 12:42:00 pm', 'Completed'),
(253, 'Aditya Ojha', 'C Prog', 'Operator1', 'Vile Parle[AO]', '20/04/2022 12:42:53 pm', 'Completed'),
(254, 'Shaikh Mohd Kaif', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '20/04/2022 12:42:57 pm', 'Completed'),
(255, 'Shaikh Mohd Kaif', 'C Prog', 'Operator1', 'Vile Parle[AO]', '20/04/2022 12:43:11 pm', 'Completed'),
(256, 'Aditya Ojha', 'C Prog', 'Operator2', 'Vile Parle[AO]', '20/04/2022 12:43:12 pm', 'Completed'),
(257, 'Shweta Pandey', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '20/04/2022 12:43:33 pm', 'Completed'),
(258, 'Shweta Pandey', 'C Prog', 'Operator1', 'Vile Parle[AO]', '20/04/2022 12:43:54 pm', 'Completed'),
(259, 'jai dhodi', 'C Prog', 'Method (call by value),Recursive', 'Andheri', '20/04/2022 13:45:00 pm', 'Completed'),
(260, 'jai dhodi', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[CL]', '20/04/2022 13:45:53 pm', 'Completed'),
(261, 'jai dhodi', 'C Prog', 'Operator1', 'Andheri', '20/04/2022 13:46:10 pm', 'Completed'),
(262, 'jai dhodi', 'C Prog', 'Operator2', 'Andheri', '20/04/2022 13:46:28 pm', 'Completed'),
(263, 'Prachi maurya', 'C Prog', 'Operator1', 'Vile Parle[AO]', '20/04/2022 17:26:42 pm', 'Completed'),
(264, 'Sudha Sharma', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '20/04/2022 22:30:39 pm', 'Completed'),
(265, 'Sudha Sharma', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Andheri', '20/04/2022 22:31:01 pm', 'Completed'),
(266, 'Sudha Sharma', 'C Prog', 'Loop1(for,while,do-while)', 'Andheri', '20/04/2022 22:31:20 pm', 'Completed'),
(267, 'Nrup Patel', 'C Prog', 'Operator1', 'Vile Parle[AO]', '21/04/2022 12:56:33 pm', 'Completed'),
(268, 'Nrup Patel', 'C Prog', 'Operator2', 'Vile Parle[AO]', '21/04/2022 12:57:10 pm', 'Completed'),
(269, 'Vivek Singh', 'C++ Prog', 'Built in Function', 'Vile Parle[AO]', '21/04/2022 14:03:35 pm', 'Completed'),
(270, 'Akshit Acharekar ', 'C++ Prog', 'Built in Function', 'Vile Parle[AO]', '21/04/2022 14:52:51 pm', 'Completed'),
(271, 'jai dhodi', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '21/04/2022 16:06:12 pm', 'Completed'),
(272, 'jai dhodi', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Andheri', '21/04/2022 16:07:19 pm', 'Completed'),
(273, 'jai dhodi', 'C Prog', 'Loop1(for,while,do-while)', 'Andheri', '21/04/2022 16:07:41 pm', 'Completed'),
(274, 'jai dhodi', 'C Prog', 'Function1', 'Andheri', '21/04/2022 16:08:16 pm', 'Completed'),
(275, 'jai dhodi', 'C Prog', 'Loop2(Nested),control statement', 'Andheri', '21/04/2022 16:09:40 pm', 'Completed'),
(276, 'Jash Gor ', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '21/04/2022 18:51:36 pm', 'Completed'),
(277, 'Jash Gor ', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '21/04/2022 18:52:32 pm', 'Completed'),
(278, 'Jash Gor ', 'C Prog', 'Operator1', 'Vile Parle[AO]', '21/04/2022 18:52:44 pm', 'Completed'),
(279, 'Jash Gor ', 'C Prog', 'Operator2', 'Vile Parle[AO]', '21/04/2022 18:53:03 pm', 'Completed'),
(280, 'Jash Gor ', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '21/04/2022 18:53:24 pm', 'Completed'),
(281, 'Shaikh Mohd Kaif', 'C Prog', 'Operator2', 'Vile Parle[AO]', '22/04/2022 12:48:49 pm', 'Completed'),
(282, 'Shaikh Mohd Kaif', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '22/04/2022 12:49:15 pm', 'Completed'),
(283, 'Prachi maurya', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '22/04/2022 13:03:29 pm', 'Completed'),
(284, 'Shreeya Rajesh dave', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '22/04/2022 13:14:45 pm', 'Completed'),
(285, 'parshv panchal', 'C Prog', 'Operator2', 'Vile Parle[AO]', '23/04/2022 12:46:13 pm', 'Completed'),
(286, 'Nrup Patel', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '23/04/2022 12:46:33 pm', 'Completed'),
(287, 'Akshit Acharekar ', 'C++ Prog', 'Friend Function', 'Vile Parle[AO]', '23/04/2022 15:02:03 pm', 'Completed'),
(288, 'Vivek Singh', 'C++ Prog', 'Friend Function', 'Vile Parle[AO]', '23/04/2022 15:02:22 pm', 'Completed'),
(289, 'Jash Gor ', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '23/04/2022 18:59:58 pm', 'Completed'),
(290, 'Shaikh Mohd Kaif', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '25/04/2022 12:42:14 pm', 'Completed'),
(291, '', '', '', '', '25/04/2022 13:59:43 pm', 'Completed'),
(292, 'Shweta Pandey', 'C Prog', 'Operator2', 'Vile Parle[AO]', '25/04/2022 14:00:01 pm', 'Completed'),
(293, 'Shweta Pandey', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '25/04/2022 14:00:18 pm', 'Completed'),
(294, 'Shweta Pandey', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '25/04/2022 14:00:35 pm', 'Completed'),
(295, 'Shreeya Rajesh dave', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '25/04/2022 14:18:56 pm', 'Completed'),
(296, 'hrishit shah', 'C Prog', 'Intro of C', 'Andheri', '25/04/2022 17:42:09 pm', 'Completed'),
(297, 'hrishit shah', 'C Prog', 'Data Types and Variables(input/output)', 'Andheri', '25/04/2022 17:42:28 pm', 'Completed'),
(298, 'Prachi maurya', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '25/04/2022 18:31:50 pm', 'Completed'),
(299, 'Chintan Thakker', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '26/04/2022 12:48:28 pm', 'Completed'),
(300, 'Vivek Singh', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Vile Parle[AO]', '26/04/2022 14:46:16 pm', 'Completed'),
(301, 'Vivek Singh', 'C++ Prog', 'Operator overloading(Binary Operator)', 'Vile Parle[AO]', '26/04/2022 14:46:46 pm', 'Completed'),
(302, 'Akshit Acharekar', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Vile Parle[AO]', '26/04/2022 14:46:54 pm', 'Completed'),
(303, 'Akshit Acharekar', 'C++ Prog', 'Operator overloading(Binary Operator)', 'Vile Parle[AO]', '26/04/2022 14:47:07 pm', 'Completed'),
(304, 'Atharv Sawant', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '26/04/2022 15:19:13 pm', 'Completed'),
(305, 'jash gor', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '26/04/2022 18:52:13 pm', 'Completed'),
(306, 'Prachi maurya', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '27/04/2022 12:38:45 pm', 'Completed'),
(307, 'Shaikh Mohd Kaif', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '27/04/2022 12:39:32 pm', 'Completed'),
(308, 'Shreeya Rajesh dave', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '27/04/2022 17:05:11 pm', 'Completed'),
(309, 'Vivek Singh', 'C++ Prog', 'Constructor', 'Vile Parle[AO]', '28/04/2022 15:01:34 pm', 'Completed'),
(310, 'Vivek Singh', 'C++ Prog', 'Destructor', 'Vile Parle[AO]', '28/04/2022 15:01:52 pm', 'Completed'),
(311, 'Akshit Acharekar ', 'C++ Prog', 'Constructor', 'Vile Parle[AO]', '28/04/2022 15:02:08 pm', 'Completed'),
(312, 'Akshit Acharekar ', 'C++ Prog', 'Destructor', 'Vile Parle[AO]', '28/04/2022 15:02:21 pm', 'Completed'),
(313, 'jash gor', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '28/04/2022 18:24:38 pm', 'Completed'),
(314, 'Anuj Torne', 'Python', 'Intro of Python', 'Andheri', '29/04/2022 23:47:12 pm', 'Completed'),
(315, 'mohammed ali solanki', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '30/04/2022 13:07:03 pm', 'Completed'),
(316, 'mohammed ali solanki', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '30/04/2022 13:07:42 pm', 'Completed'),
(317, 'prisha chheda', 'Python', 'Intro of Python', 'Andheri', '30/04/2022 14:39:13 pm', 'Completed'),
(318, 'Vivek Singh', 'C++ Prog', 'Inheritance(single,multilevel)', 'Vile Parle[AO]', '30/04/2022 15:21:18 pm', 'Completed'),
(319, 'Akshit Acharekar ', 'C++ Prog', 'Inheritance(single,multilevel)', 'Vile Parle[AO]', '30/04/2022 15:21:22 pm', 'Completed'),
(320, 'Vivek Singh', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Vile Parle[AO]', '30/04/2022 15:21:42 pm', 'Completed'),
(321, 'Akshit Acharekar ', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Vile Parle[AO]', '30/04/2022 15:21:43 pm', 'Completed'),
(322, 'jash gor', 'C Prog', 'Function1', 'Vile Parle[AO]', '30/04/2022 19:06:24 pm', 'Completed'),
(323, 'Molshri Rajankar', 'Core Java', 'Static method,non-static method', 'Andheri', '01/05/2022 15:50:28 pm', 'Completed'),
(324, 'Molshri Rajankar', 'Core Java', 'Array', 'Andheri', '01/05/2022 15:50:51 pm', 'Completed'),
(325, 'Shaikh Mohd Kaif', 'C Prog', 'Function1', 'Vile Parle[AO]', '02/05/2022 12:48:54 pm', 'Completed'),
(326, 'Shreeya Rajesh dave', 'C Prog', 'Function1', 'Vile Parle[AO]', '02/05/2022 13:09:09 pm', 'Completed'),
(327, 'Prachi maurya', 'C Prog', 'Function1', 'Vile Parle[AO]', '02/05/2022 13:38:51 pm', 'Completed'),
(328, 'Prachi maurya', 'C Prog', 'Method (call by value),Recursive', 'Vile Parle[AO]', '02/05/2022 13:39:17 pm', 'Completed'),
(329, 'Vivek Singh', 'C++ Prog', 'this ,static  keyword', 'Vile Parle[AO]', '03/05/2022 15:12:11 pm', 'Completed'),
(330, 'Akshit Acharekar ', 'C++ Prog', 'this ,static  keyword', 'Vile Parle[AO]', '03/05/2022 15:12:23 pm', 'Completed'),
(331, 'piyush prakash shinde', 'JavaScript', 'intro of JS', 'Vile Parle[AO]', '04/05/2022 11:43:24 am', 'Completed'),
(332, 'piyush prakash shinde', 'JavaScript', 'Data Types and variables', 'Vile Parle[AO]', '04/05/2022 11:45:10 am', 'Completed'),
(333, 'ayu', 'Python', 'Modules', 'Andheri', '04/05/2022 19:23:40 pm', 'Completed'),
(334, 'ayushi', 'Python', 'Exception Handling', 'Andheri', '04/05/2022 19:24:28 pm', 'Completed'),
(335, 'ayushi', 'Python', 'class and object with constructor', 'Andheri', '04/05/2022 19:24:47 pm', 'Completed'),
(336, 'ayushi', 'Python', 'Inheritance', 'Andheri', '04/05/2022 19:25:09 pm', 'Completed'),
(337, 'ayushi', 'Python', 'Dictionary', 'Andheri', '04/05/2022 19:25:30 pm', 'Completed'),
(338, 'ayushi', 'Python', 'Tuple', 'Andheri', '04/05/2022 19:25:51 pm', 'Completed'),
(339, 'ayushi', 'Python', 'List', 'Andheri', '04/05/2022 19:26:09 pm', 'Completed'),
(340, 'ayushi', 'Python', 'String', 'Andheri', '04/05/2022 19:26:31 pm', 'Completed'),
(341, 'ayushi', 'Python', 'Function', 'Andheri', '04/05/2022 19:26:48 pm', 'Completed'),
(342, 'ayushi', 'Python', 'Loops,nested loop,control stat', 'Andheri', '04/05/2022 19:27:06 pm', 'Completed'),
(343, 'ayushi', 'Python', 'Decision making(if,if-else,elif)', 'Andheri', '04/05/2022 19:27:26 pm', 'Completed'),
(344, 'ayushi', 'Python', 'operators', 'Andheri', '04/05/2022 19:27:42 pm', 'Completed'),
(345, 'ayushi', 'Python', 'Data types and variables', 'Andheri', '04/05/2022 19:28:33 pm', 'Completed'),
(346, 'ayushi', 'Python', 'Intro of Python', 'Andheri', '04/05/2022 19:28:49 pm', 'Completed'),
(347, 'Vivek Singh', 'C++ Prog', 'Method Overloading,Overriding', 'Vile Parle[AO]', '05/05/2022 15:26:54 pm', 'Completed'),
(348, 'Piyush      Shinde', 'JavaScript', 'Data Types and variables', 'Vile Parle[AO]', '06/05/2022 11:52:45 am', 'Completed'),
(349, 'Nrup Patel', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '07/05/2022 13:13:04 pm', 'Completed'),
(350, 'Kshitij Nitin Lugade', 'Core Java', 'Constructor,Finalize', 'Andheri', '07/05/2022 13:16:02 pm', 'Completed'),
(351, 'Kshitij Nitin Lugade', 'Core Java', 'Decision Making', 'Andheri', '07/05/2022 13:18:45 pm', 'Completed'),
(352, 'Kshitij Nitin Lugade', 'Core Java', 'Array', 'Andheri', '07/05/2022 13:19:10 pm', 'Completed'),
(353, 'Kshitij Nitin Lugade', 'Core Java', 'Operators', 'Andheri', '07/05/2022 13:22:52 pm', 'Completed'),
(354, 'Kshitij Nitin Lugade', 'Core Java', 'Loops,Nested loops,Control Statement', 'Andheri', '07/05/2022 13:23:14 pm', 'Completed'),
(355, 'Kshitij Nitin Lugade', 'Core Java', 'Static method,non-static method', 'Andheri', '07/05/2022 13:23:30 pm', 'Completed'),
(356, 'Akshit Acharekar ', 'C++ Prog', 'Method Overloading,Overriding', 'Vile Parle[AO]', '07/05/2022 14:41:20 pm', 'Completed'),
(357, 'Akshit Acharekar ', 'C++ Prog', 'Templates', 'Vile Parle[AO]', '07/05/2022 14:42:00 pm', 'Completed'),
(358, 'Vivek Singh', 'C++ Prog', 'Templates', 'Vile Parle[AO]', '07/05/2022 14:57:57 pm', 'Completed'),
(359, 'jash gor', 'C Prog', 'Method (call by value),Recursive', 'Vile Parle[AO]', '07/05/2022 19:07:06 pm', 'Completed'),
(360, 'Yogita Dewoolkar', 'Python', 'Intro of Python', 'Andheri', '09/05/2022 14:33:37 pm', 'Completed'),
(361, 'janhavi varpe', 'Python', 'Intro of Python', 'Andheri', '09/05/2022 14:35:14 pm', 'Completed'),
(362, 'Vedant Patil', 'C Prog', 'Intro of C', 'Andheri', '09/05/2022 14:52:59 pm', 'Completed'),
(363, 'Vedant Patil', 'C Prog', 'Data Types and Variables(input/output)', 'Andheri', '09/05/2022 14:53:43 pm', 'Completed'),
(364, 'Vedant Patil', 'C Prog', 'Operator1', 'Andheri', '09/05/2022 14:54:43 pm', 'Completed'),
(365, 'Vedant Patil', 'C Prog', 'Operator2', 'Andheri', '09/05/2022 15:37:41 pm', 'Completed'),
(366, 'dhyan nandu', 'Web Design', 'Table design', 'Andheri', '09/05/2022 19:25:07 pm', 'Completed'),
(367, 'Nrup Patel', 'C Prog', 'Function1', 'Vile Parle[AO]', '10/05/2022 13:02:10 pm', 'Completed'),
(368, 'Chintan Thakker', 'C Prog', 'Function1', 'Vile Parle[AO]', '10/05/2022 13:03:16 pm', 'Completed'),
(369, 'Vivek Singh', 'C++ Prog', 'File Handling', 'Vile Parle[AO]', '10/05/2022 14:53:15 pm', 'Completed'),
(370, 'Akshit Acharekar', 'C++ Prog', 'File Handling', 'Vile Parle[AO]', '10/05/2022 14:58:49 pm', 'Completed'),
(371, 'Atharv ', 'C Prog', 'Pointer', 'Vile Parle[AO]', '10/05/2022 16:56:53 pm', 'Completed'),
(372, 'yash manoj dabholkar', 'Web Design', 'Adding images,link and Marquee', 'Vile Parle[AO]', '10/05/2022 18:27:42 pm', 'Completed'),
(373, 'UNNMIL', 'C Prog', 'Intro of C', 'Andheri', '10/05/2022 19:16:10 pm', 'Completed'),
(374, 'UNNMIL', 'C Prog', 'Data Types and Variables(input/output)', 'Andheri', '10/05/2022 19:16:28 pm', 'Completed'),
(375, 'UNNMIL', 'C Prog', 'Operator1', 'Andheri', '10/05/2022 19:16:46 pm', 'Completed'),
(376, 'UNNMIL', 'C Prog', 'Operator2', 'Andheri', '10/05/2022 19:17:06 pm', 'Completed'),
(377, 'Vedant Patil', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '11/05/2022 15:39:44 pm', 'Completed'),
(378, 'Shree ', 'C Prog', 'Data Types and Variables(input/output)', 'Andheri', '11/05/2022 15:42:56 pm', 'Completed'),
(379, 'Bhakti savani', 'Web Design', 'Table design', 'Andheri', '11/05/2022 16:12:32 pm', 'Completed'),
(380, 'Bhakti savani ', 'Web Design', 'intro of HTML & backgrounds', 'Andheri', '11/05/2022 16:13:01 pm', 'Completed'),
(381, 'Akshit Acharekar ', 'C++ Prog', 'Virtual base class,Pure virtual function', 'Vile Parle[AO]', '12/05/2022 15:09:04 pm', 'Completed'),
(382, 'Vivek Singh', 'C++ Prog', 'Virtual Function(Early binding,Late binding)', 'Vile Parle[AO]', '12/05/2022 15:09:16 pm', 'Completed'),
(383, 'Akshit Acharekar ', 'C++ Prog', 'Virtual Function(Early binding,Late binding)', 'Vile Parle[AO]', '12/05/2022 15:09:19 pm', 'Completed'),
(384, 'Vivek Singh', 'C++ Prog', 'Virtual base class,Pure virtual function', 'Vile Parle[AO]', '12/05/2022 15:09:32 pm', 'Completed'),
(385, 'Ms. panna Gherwada', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '12/05/2022 15:19:40 pm', 'Completed'),
(386, 'Ms. panna Gherwada', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '12/05/2022 15:20:57 pm', 'Completed'),
(387, 'Ms. panna Gherwada', 'Web Design', 'Frameset and redirection', 'Vile Parle[AO]', '12/05/2022 15:21:23 pm', 'Completed'),
(388, 'Yash Manoj Dabholkar', 'Web Design', 'Table design', 'Vile Parle[AO]', '12/05/2022 18:35:40 pm', 'Completed'),
(389, 'jash gor', 'C Prog', 'Pointer', 'Vile Parle[AO]', '12/05/2022 18:53:37 pm', 'Completed'),
(390, 'Naseem Shaikh', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '13/05/2022 12:04:38 pm', 'Completed'),
(391, 'Prachi maurya', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '13/05/2022 12:04:41 pm', 'Completed'),
(392, 'Prachi maurya', 'C Prog', 'Pointer', 'Vile Parle[AO]', '13/05/2022 12:42:20 pm', 'Completed'),
(393, 'Vedant Patil', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Andheri', '13/05/2022 15:31:04 pm', 'Completed'),
(394, 'Harshavi mohite ', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '14/05/2022 13:15:52 pm', 'Completed'),
(395, 'Yashwini Poojqry', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '14/05/2022 13:16:09 pm', 'Completed'),
(396, 'Harshavi mohite ', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '14/05/2022 13:16:21 pm', 'Completed'),
(397, 'Yashwini Poojqry', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '14/05/2022 13:16:39 pm', 'Completed'),
(398, 'Harshavi mohite ', 'Web Design', 'List(order,unorder,defination)', 'Vile Parle[AO]', '14/05/2022 13:16:48 pm', 'Completed'),
(399, 'Yashwini Poojqry', 'Web Design', 'List(order,unorder,defination)', 'Vile Parle[AO]', '14/05/2022 13:17:08 pm', 'Completed'),
(400, 'Harshavi mohite ', 'Web Design', 'Adding images,link and Marquee', 'Vile Parle[AO]', '14/05/2022 13:17:10 pm', 'Completed'),
(401, 'Yashwini Poojqry', 'Web Design', 'Adding images,link and Marquee', 'Vile Parle[AO]', '14/05/2022 13:17:27 pm', 'Completed'),
(402, 'Prachi maurya', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '16/05/2022 12:41:26 pm', 'Completed'),
(403, 'Prachi maurya', 'C Prog', 'Structure2(with Array,with Function,with Pointer)', 'Vile Parle[AO]', '16/05/2022 12:44:39 pm', 'Completed'),
(404, 'Shaikh Mohd Kaif', 'C Prog', 'Structure2(with Array,with Function,with Pointer)', 'Vile Parle[AO]', '16/05/2022 12:47:51 pm', 'Completed'),
(405, 'Shaikh Mohd Kaif', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '16/05/2022 12:48:15 pm', 'Completed'),
(406, 'Shaikh Mohd Kaif', 'C Prog', 'Pointer', 'Vile Parle[AO]', '16/05/2022 12:48:54 pm', 'Completed'),
(407, 'Shaikh Mohd Kaif', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '16/05/2022 12:49:17 pm', 'Completed'),
(408, 'Yogita Dewoolkar', 'Python', 'class and object with constructor', 'Andheri', '16/05/2022 14:35:25 pm', 'Completed'),
(409, 'Shree ', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '16/05/2022 14:42:50 pm', 'Completed'),
(410, 'Bhakti savani ', 'Web Design', 'Heading tags and Text formatting tags', 'Andheri', '16/05/2022 16:13:27 pm', 'Completed'),
(411, 'Bhakti savani', 'Web Design', 'List(order,unorder,defination)', 'Andheri', '16/05/2022 16:13:50 pm', 'Completed'),
(412, 'Bhakti savani', 'Web Design', 'Adding images,link and Marquee', 'Andheri', '16/05/2022 16:14:12 pm', 'Completed'),
(413, 'Bhakti savani', 'Web Design', 'Image Mapping(client,server)', 'Andheri', '16/05/2022 16:14:36 pm', 'Completed'),
(414, 'Bhakti savani', 'Web Design', 'Frameset and redirection', 'Andheri', '16/05/2022 16:15:26 pm', 'Completed'),
(415, 'Bhakti savani', 'Web Design', 'Audio and Video with Embed tag', 'Andheri', '16/05/2022 16:15:45 pm', 'Completed'),
(416, 'Bhakti savani ', 'Web Design', 'Form Designing', 'Andheri', '16/05/2022 16:17:50 pm', 'Completed'),
(417, 'UNNMIL', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Andheri', '16/05/2022 16:51:34 pm', 'Completed'),
(418, 'UNNMIL', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Andheri', '16/05/2022 16:51:55 pm', 'Completed'),
(419, 'UNNMIL', 'C Prog', 'Loop1(for,while,do-while)', 'Andheri', '16/05/2022 16:52:22 pm', 'Completed'),
(420, 'Yogita Dewoolkar', 'Python', 'Function', 'Andheri', '16/05/2022 18:13:57 pm', 'Completed'),
(421, 'Vedant Patil', 'C Prog', 'Loop1(for,while,do-while)', 'Andheri', '16/05/2022 22:00:47 pm', 'Completed'),
(422, 'Vivek Singh', 'Python', 'Intro of Python', 'Vile Parle[AO]', '17/05/2022 14:59:41 pm', 'Completed'),
(423, 'Vivek Singh', 'Python', 'Data types and variables', 'Vile Parle[AO]', '17/05/2022 15:00:04 pm', 'Completed'),
(424, 'Akshit acharekar ', 'Python', 'Intro of Python', 'Vile Parle[AO]', '17/05/2022 15:03:48 pm', 'Completed'),
(425, 'Akshit acharekar ', 'Python', 'Data types and variables', 'Vile Parle[AO]', '17/05/2022 15:06:24 pm', 'Completed'),
(426, 'Yash Manoj Dabholkar', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '17/05/2022 18:27:05 pm', 'Completed'),
(427, 'Akshit acharekar ', 'Python', 'operators', 'Vile Parle[AO]', '19/05/2022 15:01:08 pm', 'Completed'),
(428, 'Atharv', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '19/05/2022 16:54:22 pm', 'Completed'),
(429, 'Atharv Sawant', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '19/05/2022 16:55:46 pm', 'Completed'),
(430, 'viral ', 'SQL Server', 'Intro of DB,DB operation', 'Vile Parle[AO]', '19/05/2022 16:58:02 pm', 'Completed'),
(431, 'Shree ', 'C Prog', 'Loop1(for,while,do-while)', 'Andheri', '20/05/2022 15:18:41 pm', 'Completed'),
(432, 'Akshit acharekar ', 'Python', 'Decision making(if,if-else,elif)', 'Vile Parle[AO]', '21/05/2022 15:19:40 pm', 'Completed'),
(433, 'Vivek Singh', 'Python', 'operators', 'Vile Parle[AO]', '21/05/2022 15:19:44 pm', 'Completed'),
(434, 'Vivek Singh', 'Python', 'Decision making(if,if-else,elif)', 'Vile Parle[AO]', '21/05/2022 15:20:03 pm', 'Completed'),
(435, 'Akshit acharekar ', 'Python', 'Loops,nested loop,control stat', 'Vile Parle[AO]', '21/05/2022 15:20:07 pm', 'Completed'),
(436, 'Vivek Singh', 'Python', 'Loops,nested loop,control stat', 'Vile Parle[AO]', '21/05/2022 15:20:17 pm', 'Completed'),
(437, 'Shree ', 'C Prog', 'Function1', 'Andheri', '23/05/2022 15:29:15 pm', 'Completed'),
(438, 'Vedant Patil', 'C Prog', 'Loop2(Nested),control statement', 'Andheri', '23/05/2022 15:29:33 pm', 'Completed'),
(439, 'Vedant Patil', 'C Prog', 'Function1', 'Andheri', '23/05/2022 15:30:03 pm', 'Completed'),
(440, 'Ekta Gawli ', 'C Prog', 'Function1', 'Andheri', '23/05/2022 15:31:38 pm', 'Completed'),
(441, 'Dipali Uday Tatkare', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[CL]', '24/05/2022 10:32:00 am', 'Completed'),
(442, 'Prachi maurya', 'C++ Prog', 'Intro Classes and Object', 'Vile Parle[AO]', '25/05/2022 12:13:22 pm', 'Completed'),
(443, 'Vedant Patil', 'C Prog', 'Method (call by value),Recursive', 'Andheri', '25/05/2022 15:32:42 pm', 'Completed'),
(444, 'Akshit acharekar ', 'Python', 'List', 'Vile Parle[AO]', '26/05/2022 15:04:50 pm', 'Completed'),
(445, 'Yash Manoj Dabholkar', 'Web Design', 'css2(internal css and External css)', 'Vile Parle[AO]', '28/05/2022 18:42:06 pm', 'Completed'),
(446, 'Prachi maurya', 'C++ Prog', 'Built in Function', 'Vile Parle[AO]', '30/05/2022 12:34:31 pm', 'Completed'),
(447, 'Shree ', 'C Prog', 'Array(1D,2D,MultiD)', 'Andheri', '30/05/2022 14:25:38 pm', 'Completed'),
(448, 'Vedant Patil', 'C Prog', 'Array(1D,2D,MultiD)', 'Andheri', '30/05/2022 14:53:27 pm', 'Completed'),
(449, 'Sheela K Yadav', 'Python', 'Intro of Python', 'Andheri', '30/05/2022 18:15:40 pm', 'Completed'),
(450, 'Vedant Patil', 'C Prog', 'Union', 'Andheri', '31/05/2022 14:53:54 pm', 'Completed'),
(451, 'Vedant Patil', 'C Prog', 'String Function', 'Andheri', '31/05/2022 14:54:22 pm', 'Completed'),
(452, 'Kishan yadav 1234', 'Core Java', 'Operators', 'Andheri', '31/05/2022 16:12:06 pm', 'Completed'),
(453, 'Kishan yadav 1234', 'Core Java', 'Decision Making', 'Andheri', '31/05/2022 16:12:31 pm', 'Completed'),
(454, 'Kishan yadav 1234', 'Core Java', 'Loops,Nested loops,Control Statement', 'Andheri', '31/05/2022 16:12:54 pm', 'Completed'),
(455, 'Sheela K Yadav', 'Python', 'Data types and variables', 'Andheri', '31/05/2022 23:27:27 pm', 'Completed'),
(456, 'Sheela K Yadav', 'Python', 'operators', 'Andheri', '31/05/2022 23:27:49 pm', 'Completed'),
(457, 'Shree ', 'C Prog', 'String Function', 'Andheri', '01/06/2022 15:20:24 pm', 'Completed'),
(458, 'Akshit acharekar ', 'Python', 'Tuple', 'Vile Parle[AO]', '02/06/2022 14:52:42 pm', 'Completed'),
(459, 'Akshit acharekar ', 'Python', 'Dictionary', 'Vile Parle[AO]', '02/06/2022 14:52:59 pm', 'Completed'),
(460, 'UNNMIL', 'C Prog', 'Function1', 'Andheri', '02/06/2022 18:44:37 pm', 'Completed'),
(461, 'UNNMIL', 'C Prog', 'Method (call by value),Recursive', 'Andheri', '02/06/2022 18:44:52 pm', 'Completed'),
(462, 'UNNMIL', 'C Prog', 'Array(1D,2D,MultiD)', 'Andheri', '02/06/2022 18:45:18 pm', 'Completed'),
(463, 'Akshit acharekar ', 'Python', 'class and object with constructor', 'Vile Parle[AO]', '04/06/2022 15:08:22 pm', 'Completed'),
(464, 'Shree ', 'C++ Prog', 'Built in Function', 'Andheri', '06/06/2022 15:20:11 pm', 'Completed'),
(465, 'UNNMIL', 'C++ Prog', 'Intro Classes and Object', 'Andheri', '07/06/2022 12:55:20 pm', 'Completed'),
(466, 'UNNMIL', 'C Prog', 'Union', 'Andheri', '07/06/2022 12:55:58 pm', 'Completed'),
(467, 'UNNMIL', 'C Prog', 'String Function', 'Andheri', '07/06/2022 12:56:11 pm', 'Completed'),
(468, 'Vedant Patil', 'C++ Prog', 'Intro Classes and Object', 'Andheri', '07/06/2022 20:55:22 pm', 'Completed'),
(469, 'Vivek Singh', 'Python', 'String', 'Vile Parle[AO]', '09/06/2022 14:35:16 pm', 'Completed'),
(470, 'Vivek Singh', 'Python', 'Function', 'Vile Parle[AO]', '09/06/2022 14:35:35 pm', 'Completed'),
(471, 'Vivek Singh', 'Python', 'List', 'Vile Parle[AO]', '09/06/2022 14:35:51 pm', 'Completed'),
(472, 'Vivek Singh', 'Python', 'Tuple', 'Vile Parle[AO]', '09/06/2022 14:36:05 pm', 'Completed'),
(473, 'Vivek Singh', 'Python', 'Dictionary', 'Vile Parle[AO]', '09/06/2022 14:36:23 pm', 'Completed'),
(474, 'Vivek Singh', 'Python', 'class and object with constructor', 'Vile Parle[AO]', '09/06/2022 14:36:41 pm', 'Completed'),
(475, 'Akshit acharekar ', 'Python', 'Inheritance', 'Vile Parle[AO]', '11/06/2022 15:05:34 pm', 'Completed'),
(476, 'Vedant Patil', 'C++ Prog', 'Constructor', 'Andheri', '12/06/2022 12:33:34 pm', 'Completed'),
(477, 'Akshit acharekar ', 'Python', 'Exception Handling', 'Vile Parle[AO]', '14/06/2022 14:44:17 pm', 'Completed'),
(478, 'Akshit acharekar ', 'Python', 'File I/O', 'Vile Parle[AO]', '14/06/2022 14:44:31 pm', 'Completed'),
(479, 'Shree ', 'C++ Prog', 'Destructor', 'Andheri', '15/06/2022 15:39:44 pm', 'Completed'),
(480, 'Akshit acharekar ', 'Python', 'Modules', 'Vile Parle[AO]', '16/06/2022 14:58:32 pm', 'Completed'),
(481, 'Akshit acharekar ', 'Python', 'Dates', 'Vile Parle[AO]', '16/06/2022 14:58:48 pm', 'Completed'),
(482, 'Vedant Patil', 'C++ Prog', 'Built in Function', 'Andheri', '17/06/2022 13:53:48 pm', 'Completed'),
(483, 'Shree ', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Andheri', '17/06/2022 15:30:23 pm', 'Completed'),
(484, 'Akshit acharekar ', 'Python', 'GUI Database', 'Vile Parle[AO]', '18/06/2022 15:06:55 pm', 'Completed'),
(485, 'Manav Prakash Jethwa', 'Core Java', 'Intro of java,command Line Args', 'Vile Parle[AO]', '18/06/2022 19:54:56 pm', 'Completed'),
(486, 'Manav Prakash Jethwa', 'Core Java', 'Data Types and Variables', 'Vile Parle[AO]', '18/06/2022 19:55:22 pm', 'Completed'),
(487, 'Vedant Patil', 'C++ Prog', 'Friend Function', 'Andheri', '19/06/2022 20:11:13 pm', 'Completed'),
(488, 'Vedant Patil', 'C++ Prog', 'Destructor', 'Andheri', '19/06/2022 20:12:48 pm', 'Completed'),
(489, 'Vedant Patil', 'C++ Prog', 'Inheritance(single,multilevel)', 'Andheri', '19/06/2022 20:13:07 pm', 'Completed'),
(490, 'Vedant Patil', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Andheri', '19/06/2022 20:13:33 pm', 'Completed'),
(491, 'Vedant Patil', 'C Prog', 'Pointer', 'Andheri', '20/06/2022 14:56:00 pm', 'Completed'),
(492, 'UNNMIL', 'C++ Prog', 'Built in Function', 'Andheri', '20/06/2022 17:56:09 pm', 'Completed'),
(493, 'UNNMIL', 'C++ Prog', 'Friend Function', 'Andheri', '20/06/2022 17:56:25 pm', 'Completed'),
(494, 'UNNMIL', 'C++ Prog', 'Constructor', 'Andheri', '20/06/2022 17:56:43 pm', 'Completed'),
(495, 'UNNMIL', 'C++ Prog', 'Destructor', 'Andheri', '20/06/2022 17:56:58 pm', 'Completed'),
(496, 'UNNMIL', 'C++ Prog', 'Inheritance(single,multilevel)', 'Andheri', '20/06/2022 17:57:17 pm', 'Completed'),
(497, 'UNNMIL', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Andheri', '20/06/2022 17:57:36 pm', 'Completed'),
(498, 'UNNMIL', 'C++ Prog', 'Method Overloading,Overriding', 'Andheri', '20/06/2022 17:57:59 pm', 'Completed'),
(499, 'viral yadav', 'SQL Server', 'Sql Table', 'Vile Parle[AO]', '21/06/2022 12:57:58 pm', 'Completed'),
(500, 'viral yadav', 'SQL Server', 'Sql select', 'Vile Parle[AO]', '21/06/2022 12:58:26 pm', 'Completed'),
(501, 'viral yadav', 'SQL Server', 'Intro of DB,DB operation', 'Vile Parle[AO]', '21/06/2022 12:59:41 pm', 'Completed'),
(502, 'viral yadav', 'SQL Server', 'Sql Clause and delete', 'Vile Parle[AO]', '21/06/2022 13:00:05 pm', 'Completed'),
(503, 'viral yadav', 'SQL Server', 'Joins', 'Vile Parle[AO]', '21/06/2022 13:00:31 pm', 'Completed'),
(504, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '21/06/2022 16:23:41 pm', 'Completed'),
(505, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '21/06/2022 16:24:17 pm', 'Completed'),
(506, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Operator1', 'Vile Parle[AO]', '21/06/2022 16:24:33 pm', 'Completed'),
(507, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Operator2', 'Vile Parle[AO]', '21/06/2022 16:24:51 pm', 'Completed'),
(508, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Decision Making(if,if-else,nested if-else)', 'Vile Parle[AO]', '21/06/2022 16:25:03 pm', 'Completed'),
(509, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Decision Making(else-if ladder,switch case)', 'Vile Parle[AO]', '21/06/2022 16:25:42 pm', 'Completed'),
(510, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Loop1(for,while,do-while)', 'Vile Parle[AO]', '21/06/2022 16:25:57 pm', 'Completed'),
(511, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '21/06/2022 16:26:11 pm', 'Completed'),
(512, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Function1', 'Vile Parle[AO]', '21/06/2022 16:26:25 pm', 'Completed'),
(513, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Method (call by value),Recursive', 'Vile Parle[AO]', '21/06/2022 16:26:42 pm', 'Completed'),
(514, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Array(1D,2D,MultiD)', 'Vile Parle[AO]', '21/06/2022 16:27:09 pm', 'Completed'),
(515, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Pointer', 'Vile Parle[AO]', '21/06/2022 16:27:23 pm', 'Completed'),
(516, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Structure1(simple,nested Structure)', 'Vile Parle[AO]', '21/06/2022 16:27:36 pm', 'Completed'),
(517, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Structure2(with Array,with Function,with Pointer)', 'Vile Parle[AO]', '21/06/2022 16:28:03 pm', 'Completed'),
(518, 'SAUNDARYA SANDEEP SHINDE', 'C Prog', 'Union', 'Vile Parle[AO]', '21/06/2022 16:28:14 pm', 'Completed'),
(519, 'jash gor', 'C++ Prog', 'Friend Function', 'Vile Parle[AO]', '21/06/2022 19:05:33 pm', 'Completed'),
(520, 'Manav Jethwa ', 'Core Java', 'Operators', 'Vile Parle[AO]', '21/06/2022 20:49:01 pm', 'Completed'),
(521, 'UNNMIL', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Andheri', '22/06/2022 16:43:28 pm', 'Completed'),
(522, 'UNNMIL', 'C++ Prog', 'Operator overloading(Binary Operator)', 'Andheri', '22/06/2022 16:43:43 pm', 'Completed'),
(523, 'UNNMIL', 'C++ Prog', 'Templates', 'Andheri', '22/06/2022 16:44:04 pm', 'Completed'),
(524, 'UNNMIL', 'C Prog', 'Loop2(Nested),control statement', 'Andheri', '22/06/2022 16:44:41 pm', 'Completed'),
(525, 'UNNMIL', 'C Prog', 'Pointer', 'Andheri', '22/06/2022 16:45:13 pm', 'Completed'),
(526, 'Chris Lewis', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '23/06/2022 15:20:06 pm', 'Completed'),
(527, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Intro Classes and Object', 'Vile Parle[AO]', '23/06/2022 17:08:24 pm', 'Completed'),
(528, 'Manav Prakash Jethwa', 'Core Java', 'Decision Making', 'Vile Parle[AO]', '23/06/2022 19:52:06 pm', 'Completed'),
(529, 'Prachi maurya', 'C++ Prog', 'Friend Function', 'Vile Parle[AO]', '25/06/2022 13:29:26 pm', 'Completed'),
(530, 'Prachi maurya', 'C++ Prog', 'Constructor', 'Vile Parle[AO]', '25/06/2022 13:29:42 pm', 'Completed'),
(531, 'Prachi maurya', 'C++ Prog', 'Destructor', 'Vile Parle[AO]', '25/06/2022 13:29:57 pm', 'Completed'),
(532, 'Prachi maurya', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Vile Parle[AO]', '25/06/2022 13:30:16 pm', 'Completed'),
(533, 'Prachi maurya', 'C++ Prog', 'Inheritance(single,multilevel)', 'Vile Parle[AO]', '25/06/2022 13:30:35 pm', 'Completed'),
(534, 'dharmi gada', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '25/06/2022 14:42:04 pm', 'Completed'),
(535, 'dharmi gada', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '25/06/2022 14:42:27 pm', 'Completed'),
(536, 'dharmi gada', 'Web Design', 'List(order,unorder,defination)', 'Vile Parle[AO]', '25/06/2022 14:42:54 pm', 'Completed'),
(537, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Built in Function', 'Vile Parle[AO]', '25/06/2022 16:13:01 pm', 'Completed'),
(538, 'Manav Prakash Jethwa', 'Core Java', 'Loops,Nested loops,Control Statement', 'Vile Parle[AO]', '25/06/2022 19:51:52 pm', 'Completed'),
(539, 'AARTI PRADEP BHOR', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '25/06/2022 21:06:20 pm', 'Completed'),
(540, 'UNNMIL', 'C++ Prog', 'Virtual Function(Early binding,Late binding)', 'Andheri', '26/06/2022 17:01:22 pm', 'Completed'),
(541, 'UNNMIL', 'C++ Prog', 'Virtual base class,Pure virtual function', 'Andheri', '26/06/2022 17:01:38 pm', 'Completed'),
(542, 'UNNMIL', 'C++ Prog', 'File Handling', 'Andheri', '26/06/2022 17:02:18 pm', 'Completed'),
(543, 'Chris Lewis ', 'C Prog', 'Data Types and Variables(input/output)', 'Vile Parle[AO]', '28/06/2022 12:11:11 pm', 'Completed'),
(544, 'Aditya Gupta ', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '28/06/2022 14:45:21 pm', 'Completed'),
(545, 'Yash patel', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '28/06/2022 14:45:22 pm', 'Completed'),
(546, 'Ronit Rozario ', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '28/06/2022 14:47:55 pm', 'Completed'),
(547, 'Prachi maurya', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Vile Parle[AO]', '29/06/2022 12:16:38 pm', 'Completed'),
(548, 'Shree ', 'C++ Prog', 'File Handling', 'Andheri', '29/06/2022 14:47:48 pm', 'Completed'),
(549, 'saurav pandey', 'C Prog', 'Intro of C', 'Vile Parle[AO]', '30/06/2022 12:20:00 pm', 'Completed'),
(550, 'Aditya Gupta ', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '30/06/2022 14:36:13 pm', 'Completed'),
(551, 'Ronit Rozario ', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '30/06/2022 14:37:27 pm', 'Completed'),
(552, 'sudha sharma', 'C++ Prog', 'Built in Function', 'Andheri', '30/06/2022 15:44:17 pm', 'Completed'),
(553, 'sudha sharma', 'C++ Prog', 'Friend Function', 'Andheri', '30/06/2022 15:45:30 pm', 'Completed'),
(554, 'sudha sharma', 'C++ Prog', 'Constructor', 'Andheri', '30/06/2022 15:45:58 pm', 'Completed'),
(555, 'sudha sharma', 'C++ Prog', 'Destructor', 'Andheri', '30/06/2022 15:46:30 pm', 'Completed'),
(556, 'sudha sharma', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Andheri', '30/06/2022 15:47:02 pm', 'Completed'),
(557, 'Aditya Gupta ', 'Web Design', 'Adding images,link and Marquee', 'Vile Parle[AO]', '02/07/2022 14:31:06 pm', 'Completed'),
(558, 'shivani desai', 'Web Design', 'intro of HTML & backgrounds', 'Andheri', '04/07/2022 15:52:12 pm', 'Completed'),
(559, 'shivani desai', 'Web Design', 'Heading tags and Text formatting tags', 'Andheri', '04/07/2022 15:52:39 pm', 'Completed'),
(560, 'Ronit Rozario ', 'Web Design', 'Table design', 'Vile Parle[AO]', '05/07/2022 14:44:15 pm', 'Completed'),
(561, 'Yash patel', 'Web Design', 'Table design', 'Vile Parle[AO]', '05/07/2022 14:44:59 pm', 'Completed'),
(562, 'Aditya Gupta ', 'Web Design', 'Table design', 'Vile Parle[AO]', '05/07/2022 14:45:23 pm', 'Completed'),
(563, 'Chris Lewis', 'C Prog', 'Loop2(Nested),control statement', 'Vile Parle[AO]', '06/07/2022 18:14:48 pm', 'Completed'),
(564, 'shivani desai', 'Web Design', 'List(order,unorder,defination)', 'Andheri', '06/07/2022 18:26:17 pm', 'Completed'),
(565, 'shivani desai', 'Web Design', 'Adding images,link and Marquee', 'Andheri', '06/07/2022 18:26:55 pm', 'Completed'),
(566, 'Akshit acharekar ', 'Wordpress', 'Create Website with XAMPP', 'Vile Parle[AO]', '07/07/2022 15:57:41 pm', 'Completed'),
(567, 'Chris Lewis', 'C Prog', 'Function1', 'Vile Parle[AO]', '07/07/2022 18:43:10 pm', 'Completed'),
(568, 'Manav Prakash Jethwa', 'Core Java', 'Constructor,Finalize', 'Vile Parle[AO]', '07/07/2022 19:55:00 pm', 'Completed'),
(569, 'shivani desai', 'Web Design', 'Table design', 'Andheri', '08/07/2022 19:31:59 pm', 'Completed'),
(570, 'shivani desai', 'Web Design', 'Audio and Video with Embed tag', 'Andheri', '08/07/2022 19:33:04 pm', 'Completed'),
(571, 'Akshit acharekar ', 'Wordpress', 'Customizing Template', 'Vile Parle[AO]', '09/07/2022 16:07:41 pm', 'Completed'),
(572, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Friend Function', 'Vile Parle[AO]', '09/07/2022 16:28:30 pm', 'Completed'),
(573, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Constructor', 'Vile Parle[AO]', '09/07/2022 16:28:44 pm', 'Completed'),
(574, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Destructor', 'Vile Parle[AO]', '09/07/2022 16:28:55 pm', 'Completed'),
(575, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Vile Parle[AO]', '09/07/2022 16:29:12 pm', 'Completed'),
(576, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Operator overloading(Binary Operator)', 'Vile Parle[AO]', '09/07/2022 16:29:25 pm', 'Completed'),
(577, 'Manav Prakash Jethwa', 'Core Java', 'Static method,non-static method', 'Vile Parle[AO]', '09/07/2022 19:55:34 pm', 'Completed'),
(578, 'Manav Prakash Jethwa', 'Core Java', 'Array', 'Vile Parle[AO]', '12/07/2022 20:01:15 pm', 'Completed'),
(579, 'abdus samad shaikh', 'Python', 'Intro of Python', 'Andheri', '13/07/2022 17:58:41 pm', 'Completed'),
(580, 'SAUNDARYA SANDEEP SHINDE', 'C++ Prog', 'Method Overloading,Overriding', 'Vile Parle[AO]', '14/07/2022 15:52:33 pm', 'Completed'),
(581, 'Manav Prakash Jethwa', 'Core Java', 'Inheritance(single,multilevel)', 'Vile Parle[AO]', '14/07/2022 19:53:59 pm', 'Completed'),
(582, 'shivani desai', 'Web Design', 'Image Mapping(client,server)', 'Andheri', '15/07/2022 23:03:48 pm', 'Completed'),
(583, 'Manav Prakash Jethwa', 'Core Java', 'method overloading,overriding', 'Vile Parle[AO]', '16/07/2022 19:45:52 pm', 'Completed'),
(584, 'shivani desai', 'Web Design', 'Frameset and redirection', 'Andheri', '18/07/2022 23:29:13 pm', 'Completed'),
(585, 'shivani desai', 'Web Design', 'Form Designing', 'Andheri', '18/07/2022 23:29:52 pm', 'Completed'),
(586, 'Akshit acharekar', 'Wordpress', 'Working with Plugins I', 'Vile Parle[AO]', '19/07/2022 15:15:54 pm', 'Completed'),
(587, 'Atharv', 'C++ Prog', 'Intro Classes and Object', 'Vile Parle[AO]', '19/07/2022 15:38:23 pm', 'Completed'),
(588, 'Atharv', 'C++ Prog', 'Built in Function', 'Vile Parle[AO]', '19/07/2022 15:38:52 pm', 'Completed'),
(589, 'Atharv', 'C++ Prog', 'Friend Function', 'Vile Parle[AO]', '19/07/2022 15:39:22 pm', 'Completed'),
(590, 'Atharv', 'C++ Prog', 'Constructor', 'Vile Parle[AO]', '19/07/2022 15:39:47 pm', 'Completed'),
(591, 'Atharv', 'C++ Prog', 'Destructor', 'Vile Parle[AO]', '19/07/2022 15:40:11 pm', 'Completed'),
(592, 'Atharv', 'C++ Prog', 'Operator overloading(Unary Operator)', 'Vile Parle[AO]', '19/07/2022 15:40:31 pm', 'Completed'),
(593, 'Atharv', 'C++ Prog', 'Operator overloading(Binary Operator)', 'Vile Parle[AO]', '19/07/2022 15:40:50 pm', 'Completed'),
(594, 'Atharv', 'C++ Prog', 'this ,static  keyword', 'Vile Parle[AO]', '19/07/2022 15:41:19 pm', 'Completed'),
(595, 'Atharv', 'C++ Prog', 'Inheritance(single,multilevel)', 'Vile Parle[AO]', '19/07/2022 15:41:56 pm', 'Completed');
INSERT INTO `record` (`id`, `name`, `course`, `topic`, `branch`, `dt`, `progress`) VALUES
(596, 'Atharv', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Vile Parle[AO]', '19/07/2022 15:42:31 pm', 'Completed'),
(597, 'Atharv', 'C++ Prog', 'Method Overloading,Overriding', 'Vile Parle[AO]', '19/07/2022 15:42:53 pm', 'Completed'),
(598, 'Prachi maurya', 'Web Design', 'intro of HTML & backgrounds', 'Vile Parle[AO]', '20/07/2022 11:07:36 am', 'Completed'),
(599, 'Prachi maurya', 'Web Design', 'Heading tags and Text formatting tags', 'Vile Parle[AO]', '20/07/2022 11:08:04 am', 'Completed'),
(600, 'Prachi maurya', 'Web Design', 'List(order,unorder,defination)', 'Vile Parle[AO]', '20/07/2022 11:08:28 am', 'Completed'),
(601, 'Prachi maurya', 'Web Design', 'Adding images,link and Marquee', 'Vile Parle[AO]', '20/07/2022 11:08:45 am', 'Completed'),
(602, 'Prachi maurya', 'Web Design', 'Table design', 'Vile Parle[AO]', '20/07/2022 11:50:03 am', 'Completed'),
(603, 'Akshit acharekar ', 'Wordpress', 'Working with Plugins II', 'Vile Parle[AO]', '21/07/2022 14:48:22 pm', 'Completed'),
(604, 'Manav Prakash Jethwa', 'Core Java', 'Interface', 'Vile Parle[AO]', '21/07/2022 19:35:00 pm', 'Completed'),
(605, 'shivani desai', 'Web Design', 'intro of css(inline css)', 'Andheri', '22/07/2022 22:05:56 pm', 'Completed'),
(606, 'shivani desai', 'Web Design', 'css2(internal css and External css)', 'Andheri', '22/07/2022 22:06:22 pm', 'Completed'),
(607, 'Prachi maurya', 'Web Design', 'Audio and Video with Embed tag', 'Vile Parle[AO]', '23/07/2022 18:04:44 pm', 'Completed'),
(608, 'Jaidhodi', 'PHP', 'Data types and variables', 'Andheri', '26/07/2022 15:18:33 pm', 'Completed'),
(609, 'Prachi maurya', 'Web Design', 'Form Designing', 'Vile Parle[AO]', '27/07/2022 12:08:44 pm', 'Completed'),
(610, 'Shreeya Rajesh dave', 'C++ Prog', 'Destructor', 'Vile Parle[AO]', '08/08/2022 18:36:44 pm', 'Completed'),
(611, 'Shreeya Rajesh dave', 'C++ Prog', 'Inheritance(Multiple,Heirarchical,Hybrid)', 'Vile Parle[AO]', '23/08/2022 18:59:53 pm', 'Completed'),
(612, 'Shreeya Rajesh dave', 'C++ Prog', 'File Handling', 'Andheri', '05/09/2022 16:21:13 pm', 'Completed'),
(614, 'Yash', 'Python', 'Intro of Python', 'Vile Parle[CL]', '05/01/2024 18:31:50 pm', 'Completed'),
(615, 'vvjvj', 'Python', 'Intro of Python', 'Andheri', '28/01/2024 23:03:38 pm', 'Completed'),
(616, 'xsc', 'C Prog', 'Method (call by value),Recursive', 'Andheri', '27/02/2024 12:45:41 pm', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `id` int(12) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `type` enum('Admin','User') NOT NULL DEFAULT 'User',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`id`, `user`, `pass`, `type`, `name`) VALUES
(38, 'Atharv', 'atharv0806', 'User', 'Atharv Sawant'),
(39, 'Yashwant Ghole', 'yashwant@123', 'Admin', 'Yashwant Ghole'),
(40, 'vivek', 'vivek345', 'User', 'vivek singh'),
(41, 'Chintan', 'Chintan', 'User', 'Chintan Thakker'),
(42, 'Shruti ', 'Shruti', 'User', 'Shruti Sanjay Chavan'),
(43, 'ayushi@gmail.com', 'ayushi', 'User', 'Ayushi Mishra'),
(44, 'Shruti', 'Shruti', 'User', 'Shruti Sanjay Chavan '),
(45, '', '', 'User', ''),
(46, 'Adityaojha2003', 'aditya2003', 'User', 'Aditya Ojha'),
(47, 'KAYF', '8652561505', 'User', 'Shaikh Mohd Kaif'),
(48, '', '', 'User', ''),
(49, 'Shreeya_26', 'omnamahshivay', 'User', 'Shreeya Rajesh Dave'),
(50, '', '', 'User', ''),
(51, 'Shubham', '123', 'User', 'Shubham sunil sawant'),
(52, 'Shubham', '123', 'User', 'Shubham sunil sawant'),
(53, 'Prachi', 'prachi57', 'User', 'Prachi Maurya'),
(54, 'Shubham', '123', 'User', 'Shubham sunil sawant'),
(55, 'Shweta', 'shweta', 'User', 'Shweta Pandey'),
(56, '', '', 'User', ''),
(57, '', '', 'User', ''),
(58, 'jaidhodi420', '9833676619', 'User', 'jai dhodi'),
(59, 'molshrirajankar@gmail.com', 'V@renyam7', 'User', 'Molshri Rajankar'),
(60, 'kshitij500', 'kshitij@500', 'User', 'Kshitij N Lugade'),
(61, 'Sudha Sharma', '202003', 'User', 'Sudha Sharma'),
(62, '', '', 'User', ''),
(63, 'Dipzz2004', 'dipti@2004', 'User', 'Dipti Salgaonkar'),
(64, '', '', 'User', ''),
(65, 'jaidhodi420', '9833676619', 'User', 'jai dhodi'),
(66, 'krish', 'krish', 'User', 'krish'),
(67, 'jashhh', 'jash123', 'User', 'Jash Gor '),
(68, 'Sushma', 'kamble', 'User', 'Sushma prakash kamble'),
(69, 'Sushma', 'kambld', 'User', 'Sushma prakash kamble'),
(70, 'hrishit', 'hrishit123', 'User', 'hrishit shah'),
(71, 'solanki', '12345', 'User', 'mohammed ali solanki'),
(72, 'prisha', '1234', 'User', 'prisha chheda'),
(73, 'piyush', 'piyush123', 'User', 'piyush prakash shinde'),
(74, 'patilvedant643', 'patil@v', 'User', 'Vedant Patil '),
(75, 'patilvedant643', 'patil@v', 'User', 'Vedant Patil '),
(76, 'patilvedant643', 'patil@v', 'User', 'Vedant Patil '),
(77, 'nrup', 'nrup1610', 'User', 'Nrup Patel'),
(78, 'Kshitij', 'Kshitij500', 'User', 'Kshitij Nitin Lugade'),
(79, 'yogita', 'yogita@23', 'User', 'Yogita Dewoolkar'),
(80, 'JV13', 'Jvarpe13', 'User', 'janhavi varpe'),
(81, 'patilvedant643', 'patil_vedant643', 'User', 'Vedant Patil '),
(82, 'Yadavkishan25507@gmail.com', '1234', 'User', 'Kishan yadav'),
(83, '', '', 'User', ''),
(84, 'Shree', '12345', 'User', 'Shree '),
(85, 'dhyan__nandu', '12345', 'User', 'dhyan nandu'),
(86, 'UNNMIL', 'UNNMIL@123', 'User', 'UNNMIL PATEL'),
(87, 'Shree', '1234', 'User', 'Shree '),
(88, 'panna Gherwada', '12345', 'User', 'Ms.Panna Gherwada'),
(89, 'Naseem ', 'Naseem ', 'User', 'Naseem Shaikh'),
(90, 'Harshavi_12 ', 'urvi1209', 'User', 'Harshavi mohite '),
(91, 'Harshavi_12 ', 'urvi1209', 'User', 'Harshavi mohite '),
(92, 'Yashwini Poojary', 'yashaditya2410', 'User', 'Yashwini Poojary'),
(93, 'Yashwini Poojary', 'yashaditya2410', 'User', 'Yashwini Poojary'),
(94, '', '', 'User', ''),
(95, 'Kishan ', '1234', 'User', 'Kishan yadav'),
(96, 'Shree', '123', 'User', 'Shree '),
(97, 'Suhani', '123456', 'User', 'Suhani satish soni'),
(98, 'Akshit', 'akshit5', 'User', 'Akshit acharekar '),
(99, 'Suhani', '3456789', 'User', 'Suhani satish soni'),
(100, 'Suhani', '3456789', 'User', 'Suhani satish soni'),
(101, 'Suhani', '3456789', 'User', 'Suhani satish soni'),
(102, 'Suhani', '3456789', 'User', 'Suhani satish soni'),
(103, 'Suhani', '3456789', 'User', 'Suhani satish soni'),
(104, 'Suhani', '1234567', 'User', 'Suhani satish soni'),
(105, 'aditishivalkar@gmail.com', '123', 'User', 'aditi shivalkar'),
(106, 'ekta2413', 'Ekta@2413', 'User', 'Ekta Gawli '),
(107, '', '', 'User', ''),
(108, 'Suhani', '1234567', 'User', 'Suhani satish soni'),
(109, 'Chris Lewis', '32147gle', 'User', 'Chris Lewis'),
(110, 'aditishivalkar@gmail.com', '123', 'User', 'aditi shivalkar'),
(111, 'Chris Lewis ', '32147gle', 'User', 'Chris Lewis '),
(112, 'Jay sheth', 'jaysheth99', 'User', 'Jay sheth'),
(113, 'Manav', 'manav@123', 'User', 'Manav Prakash Jethwa'),
(114, 'jaidhodi420', '9833676619', 'User', 'Jai dhodi'),
(115, 'saundarya15', 'saundarya15', 'User', 'SAUNDARYA SANDEEP SHINDE'),
(116, 'Chris Lewis', '32147gle', 'User', 'Chris Lewis '),
(117, '', '', 'User', ''),
(118, '', '', 'User', ''),
(119, 'dharmi', 'dharmi', 'User', 'dharmi gada'),
(120, 'Aarti_Bhor', 'aarti27', 'User', 'Aarti Pradeep Bhor '),
(121, 'Aarti_Bhor', 'aarti_27', 'User', 'AARTI PRADEEP BHOR'),
(122, 'itsmadboi1511', '8097008721Aa$', 'User', 'Aditya Gupta '),
(123, 'patel91028@gmail.com ', 'Y@shpatel1002', 'User', 'Yash patel'),
(124, 'Ronit Rozario ', 'ronitr24', 'User', 'Ronit Rozario '),
(125, 'saurav', '123456789', 'User', 'saurav pandey '),
(126, 'Ronit Rozario ', 'ronitr24', 'User', 'Ronit Rozario '),
(127, '', '', 'User', ''),
(128, 'jaidhodi420', '9833676619', 'User', 'jai dhodi'),
(129, 'shivani desai', 'Jerry#1404', 'User', 'shivani desai'),
(130, 'Kajal1610', 'kajalcsa', 'User', 'Kajal shah '),
(131, 'Chris Lewis', '32147gle', 'User', 'Chris Lewis'),
(132, 'abdus', 'abdus@123', 'User', 'abdus samad shaikh'),
(133, 'patel91028@gmail.com ', 'Y@shpatel1002', 'User', 'Yash patel'),
(134, 'Shreeya_26', 'omnamahshivay', 'User', 'Shreeya Rajesh Dave'),
(135, 'test', 'test', 'User', 'test'),
(136, 'Varun', '12345', 'User', 'Varun balmiki'),
(137, 'HACK19596ASD', 'AMIN123', 'User', 'AMINMONDAL'),
(138, 'abcde', 'abcde', 'User', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `message` varchar(255) NOT NULL,
  `raw` varchar(255) NOT NULL,
  `dt` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `message`, `raw`, `dt`, `name`, `path`) VALUES
(30, 'Traffic Light', 'Krish', '25/02/2020 14:06:39 pm', 'Traffic Light.txt', './images/Traffic Light.txt'),
(32, 'ES Practicals', 'Krish', '27/02/2020 14:35:53 pm', 'Embedde System Practicals.txt', './images/Embedde System Practicals.txt'),
(33, 'Flash Mazic', 'Krish', '27/02/2020 14:38:08 pm', 'Flash Soft.exe', './images/Flash Soft.exe'),
(34, 'ES Manual', 'Krish', '27/02/2020 14:42:17 pm', 'ES Practical Manual.pdf', './images/ES Practical Manual.pdf'),
(36, 'Turbo C++ Soft', 'Krish', '27/02/2020 14:45:46 pm', 'turbo.exe', './images/turbo.exe'),
(37, 'ES Final', 'Admin', '28/02/2020 04:09:06 am', 'ES Practicals solutions.txt', './images/ES Practicals solutions.txt'),
(38, 'Student Marksheet Program', 'Krish', '28/02/2020 18:54:52 pm', 'REPORT.CPP', './images/REPORT.CPP'),
(40, 'Image File', 'Admin', '29/02/2020 12:49:17 pm', 'pexels-photo-355401.jpeg', './images/pexels-photo-355401.jpeg'),
(44, 'Sem 1 Syllabus', 'Admin', '04/03/2020 13:30:36 pm', 'Sem 1 Syllabus.pdf', './images/Sem 1 Syllabus.pdf'),
(45, 'Sem 2 Syllabus', 'Admin', '04/03/2020 13:31:10 pm', 'Sem 2 Syllabus.pdf', './images/Sem 2 Syllabus.pdf'),
(46, 'Sem 3 Syllabus', 'Admin', '04/03/2020 13:31:54 pm', 'Sem 3 Syllabus.pdf', './images/Sem 3 Syllabus.pdf'),
(47, 'Sem 4 Syllabus', 'Admin', '04/03/2020 13:32:23 pm', 'Sem 4 Syllabus.pdf', './images/Sem 4 Syllabus.pdf'),
(48, 'Sem 5 Syllabus', 'Admin', '04/03/2020 13:32:49 pm', 'Sem 5 Syllabus.pdf', './images/Sem 5 Syllabus.pdf'),
(49, 'Sem 6 Syllabus', 'Admin', '04/03/2020 13:33:16 pm', 'Sem 6 Syllabus.pdf', './images/Sem 6 Syllabus.pdf'),
(50, 'Java Notes', 'Krish', '04/03/2020 13:38:51 pm', 'Theory Notes of Java.docx', './images/Theory Notes of Java.docx'),
(51, 'OS Notes Unit5 and Unit4', 'Admin', '07/03/2020 15:44:23 pm', 'OS UNIT 4 _ 5 notes final.pdf', './images/OS UNIT 4 _ 5 notes final.pdf'),
(52, 'OS Notes Unit2 and Unit3', 'Admin', '07/03/2020 15:45:07 pm', 'OS UNIT 2 _ 3 unit notes.pdf', './images/OS UNIT 2 _ 3 unit notes.pdf'),
(53, 'CG IMP QP', 'Admin', '15/03/2020 18:50:31 pm', 'Computer Graphics IMP Questions.txt', './images/Computer Graphics IMP Questions.txt'),
(54, 'hi', 'Ritesh', '16/03/2020 13:20:09 pm', '', './images/'),
(55, 'Excel File', 'Krish', '16/03/2020 13:20:49 pm', 'Lecture  3 EYE Animation.docx', './images/Lecture  3 EYE Animation.docx'),
(56, 'Jar File', 'Krish', '20/03/2020 18:41:26 pm', 'mysql-connector-java-5.1.23-bin.jar', './images/mysql-connector-java-5.1.23-bin.jar'),
(58, 'Hi Bk Sir', 'Azmat', '23/03/2020 23:55:20 pm', '', './images/'),
(59, 'hi', 'yvansh', '18/08/2020 12:07:40 pm', '', './images/'),
(60, 'Hi', 'Psutar4844', '30/03/2021 10:50:32 am', '', './images/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `att`
--
ALTER TABLE `att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backimg`
--
ALTER TABLE `backimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_login`
--
ALTER TABLE `chat_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comm`
--
ALTER TABLE `comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private`
--
ALTER TABLE `private`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile1`
--
ALTER TABLE `profile1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile2`
--
ALTER TABLE `profile2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att`
--
ALTER TABLE `att`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `backimg`
--
ALTER TABLE `backimg`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_login`
--
ALTER TABLE `chat_login`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comm`
--
ALTER TABLE `comm`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `private`
--
ALTER TABLE `private`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `profile1`
--
ALTER TABLE `profile1`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profile2`
--
ALTER TABLE `profile2`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
