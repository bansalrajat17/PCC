-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2018 at 02:48 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `BILL_NO` bigint(20) NOT NULL AUTO_INCREMENT,
  `BILL_TYPE` varchar(40) NOT NULL,
  `BILL_DATE` date NOT NULL,
  `PARTICULARS` text NOT NULL,
  `QUANTITY` text NOT NULL,
  `RATE` text NOT NULL,
  `AMOUNT` text NOT NULL,
  `TOTAL_AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`BILL_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` varchar(40) NOT NULL,
  `PIECES_AVAILABLE` float NOT NULL,
  `UNITS` int(11) NOT NULL,
  `PIECES` int(11) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ITEM_NAME` (`ITEM_NAME`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `ITEM_NAME`, `PIECES_AVAILABLE`, `UNITS`, `PIECES`, `LAST_MODIFIED_DATE`) VALUES
(8, 'Malai Chaap Rolls', 1, 1, 6, '2018-02-25 18:08:16'),
(9, 'Malai Tikka', 0, 1, 6, '2018-02-25 19:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `ITEM_CATEGORY` varchar(40) NOT NULL,
  `ITEM_NAME` varchar(40) NOT NULL,
  `INHERITED_FROM` varchar(50) DEFAULT NULL,
  `HALF_UNIT_PRICE` int(11) NOT NULL,
  `FULL_UNIT_PRICE` int(11) NOT NULL,
  `LAST_MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ITEM_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ITEM_CATEGORY`, `ITEM_NAME`, `INHERITED_FROM`, `HALF_UNIT_PRICE`, `FULL_UNIT_PRICE`, `LAST_MODIFIED_DATE`) VALUES
('Rolls', 'Malai Chaap Rolls', NULL, 90, 160, '2018-02-25 18:08:16'),
('Tikkas', 'Malai Tikka', NULL, 90, 160, '2018-02-25 19:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 'admin', 'raj');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
