-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 05:57 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmhdb`
--
--drop database MYGMHDB;
CREATE OR REPLACE DATABASE MYGMHDB;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

use MYGMHDB;
CREATE TABLE `admin` (
  `Idadmin` int(11) primary key AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `CIN` varchar(25) DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `HireDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Idadmin`, `FirstName`, `LastName`, `Username`, `Email`, `Phone`, `CIN`, `Password`, `HireDate`) VALUES
(1, 'adminF', 'adminL', 'adminF.adminL', 'Admin@gmail.com', '+212 625417841', 'HF124578', 'admin', '2021-12-08'),
(2, 'ownerF', 'ownerL', 'ownerF.ownerL', 'owner@gmail.com', '(+212) 645712821', 'GF741509', 'owner', '2021-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--
use MYGMHDB;
CREATE TABLE `client` (
  `Idclient` int(11) primary key AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) not NULL UNIQUE,
  `Phone` varchar(50) not NULL UNIQUE,
  `CIN` varchar(25) not NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--


-- --------------------------------------------------------

--
-- Table structure for table `offre`
--
use MYGMHDB;
CREATE TABLE `offer` (
  `Idoffer` int(4) primary key AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `type` varchar(25) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offre`
--
use MYGMHDB;
INSERT INTO `offer` (`Idoffer`, `label`, `status`, `type`, `price`) VALUES
(1, 'chambre1', 0, 'chambre', 1000),
(2, 'chamber2', 0, 'chambre', 1400),
(3, 'chambre3', 0, 'chambre', 1100),
(4, 'chambre4', 0, 'chambre', 1500),
(5, 'chambre5', 0, 'chambre', 2000),
(6, 'chamber6', 0, 'chambre', 3500),
(7, 'chambre7', 0, 'chambre', 1800),
(8, 'chambre8', 0, 'chambre', 2500),
(9, 'chambre9', 0, 'chambre', 1950),
(10, 'chambre10', 0, 'chambre', 1000),
(11, 'chamber11', 0, 'chambre', 1400),
(12, 'chambre12', 0, 'chambre', 1100),
(13, 'chambre13', 0, 'chambre', 1500),
(14, 'chambre14', 0, 'chambre', 2000),
(15, 'chamber15', 0, 'chambre', 3500),
(16, 'chambre16', 0, 'chambre', 1800),
(17, 'chambre17', 0, 'chambre', 2500),
(18, 'chambre18', 0, 'chambre', 1950),
(19, 'chambre19', 0, 'chambre', 1800),
(20, 'chambre20', 0, 'chambre', 1050),
(21, 'chambre21', 0, 'chambre', 1500),
(22, 'chambre22', 0, 'chambre', 1150),
(23, 'chambre23', 0, 'chambre', 1250),
(24, 'chambre24', 0, 'chambre', 2050),
(25, 'chambre25', 0, 'chambre', 1150),
(26, 'table1', 0, 'table', 100),
(27, 'table2', 0, 'table', 140),
(28, 'table3', 0, 'table', 110),
(29, 'table4', 0, 'table', 150),
(30, 'table5', 0, 'table', 200),
(31, 'table6', 0, 'table', 350),
(32, 'table7', 0, 'table', 180),
(33, 'table8', 0, 'table', 250),
(34, 'table9', 0, 'table', 195),
(35, 'table10', 0, 'table', 100),
(36, 'table11', 0, 'table', 140),
(37, 'table12', 0, 'table', 110),
(38, 'table13', 0, 'table', 150),
(39, 'table14', 0, 'table', 200),
(40, 'table15', 0, 'table', 350),
(41, 'table16', 0, 'table', 180),
(42, 'table17', 0, 'table', 250),
(43, 'table18', 0, 'table', 190),
(44, 'table19', 0, 'table', 180),
(45, 'table20', 0, 'table', 100),
(46, 'table21', 0, 'table', 150),
(47, 'table22', 0, 'table', 115),
(48, 'table23', 0, 'table', 120),
(49, 'table24', 0, 'table', 200),
(50, 'table25', 0, 'table', 110);
-- --------------------------------------------------------

--
-- Table structure for table `owner`
--
use MYGMHDB;
CREATE TABLE `owner` (
  `Idowner` int(11) primary key AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Idowner`, `FirstName`, `LastName`, `Password`) VALUES
(1, 'ownerF', 'ownerL', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--

use MYGMHDB;
CREATE TABLE `demande` (
  `Iddemande` int(11) PRIMARY KEY AUTO_INCREMENT,
  `Idclient` int(11) NOT NULL,
  `Typeoffer` varchar(50) NOT NULL,
  `Idoffer` int(11) NOT NULL,
  `Idadmin` int(11) NOT NULL,
  `status` boolean default true,
  `dateDemande` date DEFAULT sysdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






ALTER TABLE `admin`
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `CIN` (`CIN`);

--
-- Indexes for table `client`
--


--
-- Indexes for table `offre`
--


--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD UNIQUE KEY `FirstName` (`FirstName`),
  ADD UNIQUE KEY `LastName` (`LastName`);

--
-- AUTO_INCREMENT for dumped tables
--

ALTER TABLE `demande`
  ADD FOREIGN KEY (`Idclient`) REFERENCES client(`Idclient`),
  ADD FOREIGN KEY (`Idadmin`) REFERENCES admin(`Idadmin`),
  ADD FOREIGN KEY (`Idoffer`) REFERENCES offer(`Idoffer`);


--
-- AUTO_INCREMENT for table `admin`
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
