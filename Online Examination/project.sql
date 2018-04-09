-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 01:08 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('sunnygkp10@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '5ac567348bff6'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5ac5685242181'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '5ac56a0cd35c1'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5abf2dd101542', '5abf2dd11d1c1'),
('5abf2dd1493c7', '5abf2dd15dbef'),
('5abfa6ae1f865', '5abfa6ae1f919'),
('5abfa88ef3fca', '5abfa88ef4095'),
('5abfa8ca938e3', '5abfa8ca93994'),
('5abfad084d072', '5abfad0866067'),
('5abfad25e2111', '5abfad2607796'),
('5abfae0f64114', '5abfae0f848eb'),
('5abfb1b9907ff', '5abfb1b99c68a'),
('5abfb1c8deeb3', '5abfb1c9025a4'),
('5abfb20a66cf9', '5abfb20a80d77'),
('5ac54cf790a17', '5ac54cf7bccb2'),
('5ac57b211c2ac', '5ac57b214014c'),
('5ac57b2221849', '5ac57b2248e4d'),
('5ac57bd194f94', '5ac57be201ec3'),
('5ac67deada4c7', '5ac80c449579e'),
('5ac67e35469ab', '5ac67e357af2b'),
('5ac80dd41d597', '5ac80dd433fa2');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `first` varchar(50) CHARACTER SET utf8 NOT NULL,
  `second` varchar(50) CHARACTER SET utf8 NOT NULL,
  `third` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`email`, `first`, `second`, `third`) VALUES
('tarunkumardevan@my.unt.edu', 'OSD', 'DPDB', 'Coding');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('avantika420@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 14:33:04'),
('avantika420@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 14:49:39'),
('mi5@hollywood.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 15:12:56'),
('nik1@gmail.com', '558921841f1ec', 1, 2, 1, 1, '2015-06-23 16:11:50'),
('tarunkumardevan@my.unt.edu', '5ac57bc16ae8b', 0, 1, 0, 1, '2018-04-05 16:44:24'),
('tarunkumardevan@my.unt.edu', '5ac57bc16ae8b', 0, 1, 0, 1, '2018-04-05 16:44:24'),
('tarunkumardevan@my.unt.edu', '558920ff906b8', -2, 2, 0, 2, '2018-04-05 19:43:34'),
('tarunkumardevan@my.unt.edu', '5ac80d68487c4', 1, 1, 1, 0, '2018-04-07 01:14:16'),
('tarunkumardevan@my.unt.edu', '558922ec03021', -2, 2, 0, 2, '2018-04-08 03:20:23'),
('tarunkumardevan@my.unt.edu', '5ac67dd0bec6a', 1, 1, 1, 0, '2018-04-08 16:21:34'),
('tarunkumardevan@my.unt.edu', '5ac67dd0bec6a', 1, 1, 1, 0, '2018-04-08 16:21:34'),
('tarunkumardevan@my.unt.edu', '558921841f1ec', -3, 2, 0, 3, '2018-04-08 18:04:10'),
('tarunkumardevan@my.unt.edu', '5589222f16b93', -2, 2, 0, 2, '2018-04-08 18:20:30'),
('tarunkumardevan@my.unt.edu', '55897338a6659', 0, 5, 2, 4, '2018-04-08 22:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'groupmod', '5ac567348bff9'),
('55892169bf6a7', 'groupmod', '5ac567348bff9'),
('55892169bf6a7', 'groupmod', '5ac567348bff9'),
('55892169bf6a7', 'groupmod', '5ac567348bff9'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'cout', '5ac5685242182'),
('558922117fcef', 'cout', '5ac5685242182'),
('558922117fcef', 'cout', '5ac5685242182'),
('558922117fcef', 'cout', '5ac5685242182'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cout<a;', '5ac56a0cd35c1'),
('558922894c453', 'cout<a;', '5ac56a0cd35c1'),
('558922894c453', 'cout<a;', '5ac56a0cd35c1'),
('558922894c453', 'cout<a;', '5ac56a0cd35c1'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('5abf2dd101542', '', '5abf2dd11d1c1'),
('5abf2dd101542', '', '5abf2dd11d1d0'),
('5abf2dd101542', '', '5abf2dd11d1d4'),
('5abf2dd101542', '', '5abf2dd11d1d8'),
('5abf2dd1493c7', '', '5abf2dd15dbef'),
('5abf2dd1493c7', '', '5abf2dd15dc1b'),
('5abf2dd1493c7', '', '5abf2dd15dc1f'),
('5abf2dd1493c7', '', '5abf2dd15dc22'),
('5abfa6ae1f865', 'nj', '5abfa6ae1f916'),
('5abfa6ae1f865', 'oiu', '5abfa6ae1f919'),
('5abfa6ae1f865', 'jjk', '5abfa6ae1f91b'),
('5abfa6ae1f865', 'jk', '5abfa6ae1f91d'),
('5abfa88ef3fca', 'lknk', '5abfa88ef4095'),
('5abfa88ef3fca', 'kjn', '5abfa88ef4098'),
('5abfa88ef3fca', 'ihhh', '5abfa88ef409a'),
('5abfa88ef3fca', 'lkkkkkkkk', '5abfa88ef409d'),
('5abfa8ca938e3', 'ljnkk', '5abfa8ca93991'),
('5abfa8ca938e3', 'kjjj', '5abfa8ca93994'),
('5abfa8ca938e3', 'njkj', '5abfa8ca93995'),
('5abfa8ca938e3', 'kljklk', '5abfa8ca93998'),
('5abfad084d072', 'm', '5abfad0866067'),
('5abfad084d072', 'm', '5abfad086606e'),
('5abfad084d072', 'n', '5abfad086606f'),
('5abfad084d072', 'lk', '5abfad0866071'),
('5abfad25e2111', 'm', '5abfad2607796'),
('5abfad25e2111', 'm', '5abfad26077a8'),
('5abfad25e2111', 'n', '5abfad26077ab'),
('5abfad25e2111', 'lk', '5abfad26077af'),
('5abfae0f64114', 'm', '5abfae0f848eb'),
('5abfae0f64114', 'm', '5abfae0f848f2'),
('5abfae0f64114', 'n', '5abfae0f848f3'),
('5abfae0f64114', 'lk', '5abfae0f848f5'),
('5abfb1b9907ff', 'm', '5abfb1b99c68a'),
('5abfb1b9907ff', 'm', '5abfb1b99c692'),
('5abfb1b9907ff', 'n', '5abfb1b99c692'),
('5abfb1b9907ff', 'lk', '5abfb1b99c694'),
('5abfb1c8deeb3', 'm', '5abfb1c9025a4'),
('5abfb1c8deeb3', 'm', '5abfb1c9025b9'),
('5abfb1c8deeb3', 'n', '5abfb1c9025be'),
('5abfb1c8deeb3', 'lk', '5abfb1c9025c3'),
('5abfb20a66cf9', '', '5abfb20a80d77'),
('5abfb20a66cf9', '', '5abfb20a80d83'),
('5abfb20a66cf9', '', '5abfb20a80d86'),
('5abfb20a66cf9', '', '5abfb20a80d89'),
('5ac54cf790a17', 'qw', '5ac54cf7bccab'),
('5ac54cf790a17', 'asx', '5ac54cf7bccb2'),
('5ac54cf790a17', 'qwsa', '5ac54cf7bccb4'),
('5ac54cf790a17', 'qwasdwe', '5ac54cf7bccb4'),
('5ac57b211c2ac', 'lkvkl', '5ac57b214013a'),
('5ac57b211c2ac', 'asd', '5ac57b214014c'),
('5ac57b211c2ac', 'qwas', '5ac57b2140152'),
('5ac57b211c2ac', 'wdw', '5ac57b2140157'),
('5ac57b2221849', 'wfewf', '5ac57b2248e35'),
('5ac57b2221849', ' mmd', '5ac57b2248e47'),
('5ac57b2221849', 'dwd', '5ac57b2248e4d'),
('5ac57b2221849', 'efef', '5ac57b2248e52'),
('5ac57bd194f94', 'brg', '5ac57be201ee2'),
('5ac57bd194f94', 'brg', '5ac57be201ee2'),
('5ac57bd194f94', 'brg', '5ac57be201ee2'),
('5ac57bd194f94', 'brg', '5ac57be201ee2'),
('5ac67deada4c7', 'ujsj', '5ac80c44957bf'),
('5ac67deada4c7', 'ujsj', '5ac80c44957bf'),
('5ac67deada4c7', 'ujsj', '5ac80c44957bf'),
('5ac67deada4c7', 'ujsj', '5ac80c44957bf'),
('5ac67e35469ab', 'kjnjk', '5ac67e357af21'),
('5ac67e35469ab', 'lnkk', '5ac67e357af29'),
('5ac67e35469ab', 'lkjl', '5ac67e357af2b'),
('5ac67e35469ab', 'kkn', '5ac67e357af2d'),
('5ac80dd41d597', 'a', '5ac80dd433f94'),
('5ac80dd41d597', 's', '5ac80dd433fa2'),
('5ac80dd41d597', 'e', '5ac80dd433fa6'),
('5ac80dd41d597', 'wwe', '5ac80dd433fa9');

-- --------------------------------------------------------

--
-- Table structure for table `phpcoding`
--

CREATE TABLE `phpcoding` (
  `eid` text CHARACTER SET utf8 NOT NULL,
  `qid` text CHARACTER SET utf8 NOT NULL,
  `qns` text CHARACTER SET utf8 NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phpcoding`
--

INSERT INTO `phpcoding` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558921841f1ec', '1', 'hkhjkh', 4, 1),
('558921841f1ec', '5abfae0f64114', 'klnj', 4, 1),
('558921841f1ec', '5abfb104bbb9c', 'klnj', 4, 1),
('558921841f1ec', '5abfb1b9907ff', 'klnj', 4, 1),
('558921841f1ec', '5abfb1c8deeb3', 'klnj', 4, 1),
('558921841f1ec', '5abfb20a66cf9', '', 4, 1),
('558921841f1ec', '5ac54cf790a17', 'this is my testing adedaas', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profcourse`
--

CREATE TABLE `profcourse` (
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `first` varchar(50) CHARACTER SET utf8 NOT NULL,
  `second` varchar(50) CHARACTER SET utf8 NOT NULL,
  `third` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profcourse`
--

INSERT INTO `profcourse` (`email`, `first`, `second`, `third`) VALUES
('tarundevan@gmail.com', 'physics', 'biology', 'coding');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('5abf2dc7661fc', '5abf2dd101542', '', 4, 1),
('5abf2dc7661fc', '5abf2dd1493c7', '', 4, 2),
('558921841f1ec', '5abfad084d072', 'hello this is test here again please delete helloe', 4, 1),
('558921841f1ec', '5abfad25e2111', 'this is shaline checking enough', 4, 1),
('5ac57714b9dcb', '5ac57b211c2ac', 'this is for testing', 4, 1),
('5ac57714b9dcb', '5ac57b2221849', 'cdmcv', 4, 2),
('5ac57bc16ae8b', '5ac57bd194f94', 'wcscvs', 4, 1),
('5ac67dd0bec6a', '5ac67deada4c7', 'this is nothing joke', 4, 1),
('5ac67dd0bec6a', '5ac67e35469ab', 'njkn', 4, 1),
('5ac80d68487c4', '5ac80dd41d597', 'this is showings', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 09:03:59'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 09:12:12'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:54:48'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:58:39'),
('5abf2dc7661fc', 'Kln', 1, 0, 2, 10, 'njl', 'olm', '2018-03-31 06:42:15'),
('5ac57714b9dcb', 'First Quiz', 1, 0, 2, 15, 'quiz', 'fq', '2018-04-05 01:08:36'),
('5ac57bc16ae8b', 'Second Quiz', 1, 0, 1, 10, 'sq', 'sq', '2018-04-05 01:28:33'),
('5ac67dd0bec6a', 'Myluck', 1, 0, 1, 3, 'snxkx', 'qwjwh', '2018-04-05 19:49:36'),
('5ac80d68487c4', 'Nanan', 1, 0, 1, 15, 'ejkd', 'tehje', '2018-04-07 00:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sunnygkp10@gmail.com', -2, '2018-03-29 23:56:48'),
('avantika420@gmail.com', 8, '2015-06-23 14:49:39'),
('mi5@hollywood.com', 4, '2015-06-23 15:12:56'),
('nik1@gmail.com', 1, '2015-06-23 16:11:50'),
('tarunkumardevan@my.unt.edu', 5, '2018-04-08 22:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Avantika', 'F', 'KNIT sultanpur', 'avantika420@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Mark Zukarburg', 'M', 'Stanford', 'ceo@facebook.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Komal', 'F', 'KNIT sultanpur', 'komalpd2011@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Tom Cruze', 'M', 'Hollywood', 'mi5@hollywood.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Netcamp', 'M', 'KNIT sultanpur', 'netcamp@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Nikunj', 'M', 'XYZ', 'nik1@gmail.com', 987, '202cb962ac59075b964b07152d234b70'),
('Sunny', 'M', 'KNIT sultanpur', 'sunnygkp10@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Tarun', 'M', 'unt', 'tarun@gmail.com', 8327598664, 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Tarun', 'M', 'unt', 'tarunkumardevan@my.unt.edu', 8327579446, 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Vikash', 'M', 'KNIT sultanpur@gmail.com', 'vikash@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profcourse`
--
ALTER TABLE `profcourse`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
