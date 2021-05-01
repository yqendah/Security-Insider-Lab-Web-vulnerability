-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2014 at 02:12 PM
-- Server version: 5.5.35-0ubuntu0.13.10.2
-- PHP Version: 5.5.3-1ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `account` int(10) NOT NULL AUTO_INCREMENT,
  `branch` int(10) DEFAULT NULL,
  `curbal` float NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `deposit` float NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `modtime` datetime DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33333334 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account`, `branch`, `curbal`, `currency`, `deposit`, `owner`, `modtime`, `type`) VALUES
(11111111, 2, 1000, '1', 0, '1', '2014-03-30 03:46:12', '2'),
(22222222, 3, 222, '1', 0, '2', '2014-03-30 03:46:11', '2'),
(33333333, 4, 344, '2', 0, '1', '2014-04-06 15:53:57', '2');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `code`) VALUES
(1, 'P-Bank', 20999999),
(2, 'C-Bank', 20888888),
(3, 'S-Bank', 20555555),
(4, 'V-Bank', 41131337);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`) VALUES
(1, 'Berlin'),
(2, 'Passau'),
(3, 'Stutgart'),
(4, 'Bonn');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`) VALUES
(1, '$'),
(2, '€');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE IF NOT EXISTS `loans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `amount` float NOT NULL,
  `period` float NOT NULL,
  `interest` float NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `creditacc` varchar(100) DEFAULT NULL,
  `debitacc` varchar(100) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `amount`, `period`, `interest`, `owner`, `creditacc`, `debitacc`, `time`) VALUES
(10, 1000, 1, 4.2, '1', '11111111', '33333333', '2014-03-27 04:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(100) DEFAULT NULL,
  `dstacc` int(10) NOT NULL,
  `dstbank` int(10) NOT NULL,
  `srcacc` int(10) NOT NULL,
  `srcbank` int(10) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `time`, `dstacc`, `dstbank`, `srcacc`, `srcbank`, `remark`, `amount`) VALUES
(4, '2014-03-29 04:14:07', 22222222, 41131337, 11111111, 41131337, 'Refund', 70),
(5, '2014-03-29 04:24:33', 11111111, 41131337, 22222222, 41131337, 'WG rent', 300),
(7, '2014-03-30 03:46:13', 11111111, 41131337, 22222222, 41131337, 'Insurance', 110);

-- --------------------------------------------------------

--
-- Table structure for table `typesAcc`
--

CREATE TABLE IF NOT EXISTS `typesAcc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `typesAcc`
--

INSERT INTO `typesAcc` (`id`, `name`) VALUES
(1, 'Local'),
(2, 'Global');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `lastip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `username`, `name`, `firstname`, `time`, `lasttime`, `lastip`) VALUES
(1, '413Xp455', 'alex', 'Lexo', 'Alex', '2014-03-02 00:00:00', '2014-04-06 15:54:23', '127.0.0.1'),
(2, 'b0BP4S5', 'bob', 'Obby', 'Bob', '2014-03-02 00:00:00', '2014-03-30 04:28:49', '127.0.0.1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
