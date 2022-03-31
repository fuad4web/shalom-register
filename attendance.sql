-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 08:46 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL,
  `createdOn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fullname`, `email`, `adminPassword`, `createdOn`) VALUES
(1, 'Abdulhammed Fuad', 'fuskeed@gmail.com', 'zFuad6454', '2021-03-18 22:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `uid` int(11) NOT NULL,
  `teacher_uid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `section` varchar(50) NOT NULL,
  `object` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`uid`, `teacher_uid`, `code`, `year`, `section`, `object`) VALUES
(1, 8, 'MTH-112', '2021', '2', 0x4f3a343a224e6f6465223a373a7b733a31333a22004e6f64650074656163686572223b733a313a2238223b733a31373a22004e6f6465007375626a656374436f6465223b733a373a224d54482d313132223b733a31333a22004e6f64650073656374696f6e223b733a313a2232223b733a31303a22004e6f64650079656172223b733a343a2232303231223b733a31343a22004e6f64650073656d6573746572223b733a313a2232223b733a31383a22004e6f6465006e756d6265724f6644617973223b693a323b733a31333a22004e6f6465007265636f726473223b613a36353a7b733a393a223230312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230362f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223230372f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230382f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223230392f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223231302f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223231312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223231322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223231332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223231342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223231352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223231362f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223231372f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223231382f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223231392f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223232302f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223232312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223232322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223232332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2232223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a313b7d7d733a393a223232342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223232352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223232362f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2232223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a313b7d7d733a393a223232372f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223232382f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223232392f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2232223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a313b7d7d733a393a223233302f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223233312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223233322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2232223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a313b7d7d733a393a223233332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223233342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223233352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223233362f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223233372f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223233382f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223233392f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223234302f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223234312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223234322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223234332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223234342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2232223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a313b7d7d733a393a223234352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223234362f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223234372f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2232223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a313b7d7d733a393a223234382f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a313b693a313631353932343639323b693a303b7d7d733a393a223234392f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223235302f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223235312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223235322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223235332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223235342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223235352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223235362f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223235372f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223235382f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223235392f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2231223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a313b7d7d733a393a223236302f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223236312f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223236322f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223236332f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223236342f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d733a393a223236352f434f2f3132223b613a323a7b733a373a2270726573656e74223b733a313a2230223b733a383a2274696d656c696e65223b613a323a7b693a313631353932343534313b693a303b693a313631353932343639323b693a303b7d7d7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `showcase`
--

CREATE TABLE `showcase` (
  `pre_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `regnum` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timeIn` time NOT NULL,
  `timeOut` time NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showcase`
--

INSERT INTO `showcase` (`pre_id`, `user_id`, `regnum`, `password`, `timeIn`, `timeOut`, `date`) VALUES
(1, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '00:46:42', '00:00:00', '2021-04-02'),
(2, 2, '3Y27W5UB249', '290943f3f2cbb056669dbd9dee266aa0', '12:59:54', '00:00:00', '2021-04-02'),
(3, 3, '3Y27W5UB259', '171dae759891632eef25edd8023d2b4b', '01:07:06', '00:00:00', '2021-04-02'),
(4, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '23:16:29', '00:00:00', '2021-04-04'),
(5, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '23:19:52', '00:00:00', '2021-04-04'),
(6, 3, '3Y27W5UB259', '171dae759891632eef25edd8023d2b4b', '02:52:54', '00:00:00', '2021-04-05'),
(7, 2, '3Y27W5UB249', '290943f3f2cbb056669dbd9dee266aa0', '05:53:45', '00:00:00', '2021-04-06'),
(8, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '22:04:20', '11:05:16', '2021-04-08'),
(9, 2, '3Y27W5UB249', '290943f3f2cbb056669dbd9dee266aa0', '22:05:10', '00:00:00', '2021-04-08'),
(10, 3, '3Y27W5UB259', '171dae759891632eef25edd8023d2b4b', '22:06:40', '00:00:00', '2021-04-08'),
(11, 4, '3Y27W5UB245', '26f04a7d451f3ac059ccad8dd272670a', '07:30:26', '07:57:29', '2021-04-12'),
(12, 5, '4750Z49MULY', '73ad4f0c8a7ce57799a14e5bc779895e', '07:49:34', '07:49:42', '2021-04-12'),
(13, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '07:53:16', '07:55:07', '2021-04-12'),
(14, 3, '3Y27W5UB259', '171dae759891632eef25edd8023d2b4b', '03:22:02', '03:22:13', '2021-04-13'),
(15, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '03:23:23', '03:24:08', '2021-04-13'),
(16, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '03:24:00', '03:24:08', '2021-04-13'),
(17, 1, '3Y27W5UB248', 'c3b6303d1725106f4b2d8244991b5cd4', '03:39:08', '00:00:00', '2021-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `staff_reg`
--

CREATE TABLE `staff_reg` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `soo` varchar(255) NOT NULL,
  `staffid` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `log` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_reg`
--

INSERT INTO `staff_reg` (`id`, `firstname`, `email`, `address`, `country`, `soo`, `staffid`, `lastname`, `phonenumber`, `dob`, `log`, `state`, `gender`, `town`, `date_created`) VALUES
(1, 'Abdulazeez', 'ridwan@gmail.com', '1, Olunloyo Street, Ikorodu.', 'Nigeria', 'Osun State', '372/7JS/001', 'Sofiyat', '23896327861', '2000-06-22', '', 'Ikorodu', 'Male', 'Igbo-Olomu', '2021-09-23 21:33:13'),
(2, 'Abdulhammed', 'zfuad6454@gmail.com', '1, Olunloyo Street, Ikorodu.', 'united states', 'Osun State', '4MN/UU4/001', 'Sofiyat', '0975756356325653776', '1997-08-09', 'Iwo', '', 'male', 'Igbo-Olomu', '2021-09-23 23:35:32'),
(3, 'Adigun Shukura', 'bjsdjkgshk@gmail.com', 'dgjkuksdg sdjkhsdkkxc sd', 'Nigeria', 'Osun', '8R3/WYY/001', 'xcgdrgsefaefawd', '856373284635652', '2000-06-06', '', 'Oyo', 'Male', 'Okereke', '2021-11-15 13:09:39'),
(4, 'Tajudeen Modasola', 'aish@gmail.com', 'Okanlawon Street', 'Togo', 'Ijuhy', 'RDXE8Y327', 'Aish', '07016360410', '2021-05-05', '', 'Fredsa', 'Female', 'Ikouytf', '2022-02-21 06:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `regnum` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`user_id`, `name`, `phone`, `email`, `regnum`, `password`, `confirm_password`) VALUES
(1, 'Abdulhammed Fuad', '07067752068', 'zfuad6454@gmail.com', '3Y27W5UB248', '15317ede3526ea08664db7c5737ba843', '15317ede3526ea08664db7c5737ba843'),
(2, 'Adedigba Aliu', '08020394669', 'aliu@gmail.com', '3Y27W5UB249', '4739472903f07860138a31b762399395', '4739472903f07860138a31b762399395'),
(3, 'Thomas Tuchel', '08033837523', 'tuchel@gmail.com', '3Y27W5UB259', '3ee4d6d201a796bc8d56b4317e58bdbc', '3ee4d6d201a796bc8d56b4317e58bdbc'),
(4, 'Eden Michael Hazard', '08067486793', 'hazard@gmail.com', '3Y27W5UB245', 'afbe5099e0f5bb8cd70f7e8563759d33', 'afbe5099e0f5bb8cd70f7e8563759d33'),
(5, 'Mason Mount', '04087677877', 'mason@gmail.com', '4750Z49MULY', '5c29c2e513aadfe372fd0af7553b5a6c', '5c29c2e513aadfe372fd0af7553b5a6c'),
(6, 'onabanjo sodiq', '07069262482', 'johnsurdson@gmail.com', '4K5FZ22F363', '638b38b97fc1e498caa2e6dd69315b86', '638b38b97fc1e498caa2e6dd69315b86');

-- --------------------------------------------------------

--
-- Table structure for table `unique_attendance`
--

CREATE TABLE `unique_attendance` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `moment` varchar(100) NOT NULL,
  `morning_signin` varchar(250) NOT NULL DEFAULT '0',
  `morning_signout` varchar(255) NOT NULL DEFAULT '0',
  `afternoon_signin` varchar(250) NOT NULL DEFAULT '0',
  `afternoon_signout` varchar(255) NOT NULL DEFAULT '0',
  `evening_signin` varchar(250) NOT NULL DEFAULT '0',
  `evening_signout` varchar(255) DEFAULT '0',
  `todays_date` date NOT NULL DEFAULT current_timestamp(),
  `waqt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unique_attendance`
--

INSERT INTO `unique_attendance` (`id`, `staff_id`, `moment`, `morning_signin`, `morning_signout`, `afternoon_signin`, `afternoon_signout`, `evening_signin`, `evening_signout`, `todays_date`, `waqt`) VALUES
(36, 1, 'afternoon', '10:34:49', '11:33:26', '0', '0', '0', '0', '2022-02-20', '2022-02-20 09:34:50'),
(51, 1, 'morning', '07:29:42', '08:55:58', '0', '0', '0', '0', '2022-02-21', '2022-02-21 18:29:43'),
(53, 4, 'morning', '07:58:07', '09:06:16', '0', '0', '0', '0', '2022-02-21', '2022-02-21 18:58:08'),
(55, 3, 'morning', '0', '0', '09:08:44', '14:10:04', '0', '0', '2022-02-21', '2022-02-21 20:08:45'),
(56, 3, 'afternoon', '0', '0', '09:09:13', '21:10:04', '0', '0', '2022-02-21', '2022-02-21 20:09:13'),
(57, 2, 'morning', '07:10:34', '18:00:00', '0', '0', '0', '0', '2022-02-22', '2022-02-22 18:10:35'),
(58, 1, 'morning', '17:13:14', '0', '0', '0', '0', '0', '2022-02-23', '2022-02-23 04:13:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `showcase`
--
ALTER TABLE `showcase`
  ADD PRIMARY KEY (`pre_id`);

--
-- Indexes for table `staff_reg`
--
ALTER TABLE `staff_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `unique_attendance`
--
ALTER TABLE `unique_attendance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `showcase`
--
ALTER TABLE `showcase`
  MODIFY `pre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `staff_reg`
--
ALTER TABLE `staff_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unique_attendance`
--
ALTER TABLE `unique_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
