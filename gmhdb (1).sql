-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 05:43 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `IdAdmin` int(11) NOT NULL,
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

INSERT INTO `admin` (`IdAdmin`, `FirstName`, `LastName`, `Username`, `Email`, `Phone`, `CIN`, `Password`, `HireDate`) VALUES
(15, 'AdminF', 'AdminL', 'AdminF.AdminL', 'Admin@gmail.com', '+212 625417841', 'HF124578', 'admin', '2021-12-08'),
(17, 'ownerF', 'ownerL', 'ownerF.ownerL', 'owner@gmail.com', '(+212) 645712821', 'GF741509', 'owner', '2021-12-18'),
(22, 'ad', 'ad', 'ad.ad', 'ad@gmail.com', 'null', 'null', 'ad', '2021-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Idclient` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `CIN` varchar(25) NOT NULL,
  `ID_OFFER` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Idclient`, `FirstName`, `LastName`, `Email`, `Phone`, `CIN`, `ID_OFFER`, `status`) VALUES
(10, 'test', 'test', 'test', 'test', 'test', 6, 0),
(11, 't', 't', 't', 'tt', 't', 6, 1),
(12, 'h', 'j', 'j', 'i', 'i', 7, 0),
(13, 'cl', 'cl', 'cl@gmail.com', '215426', 'N463371', 7, 0),
(15, 'cl', 'cl', 'cl1@gmail.com', '2154267', 'N4063371', 5, 0),
(16, 'tee', 'tee', 'tee', 'tteee', 'tee', 7, 0),
(19, 'thyf', 'tff', 'tf', 'ttf', 'tsd', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `offre`
--

CREATE TABLE `offre` (
  `IdOffre` int(4) NOT NULL,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `type` varchar(25) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offre`
--

INSERT INTO `offre` (`IdOffre`, `label`, `status`, `type`, `price`) VALUES
(5, 'table1', 0, 'table', 12),
(6, 'chambre1', 1, 'chambre', 12457),
(7, 'table2', 0, 'table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `IdOwner` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`IdOwner`, `FirstName`, `LastName`, `Password`) VALUES
(1, 'ownerF', 'ownerL', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IdAdmin`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `CIN` (`CIN`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Idclient`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `CIN` (`CIN`),
  ADD KEY `ID_OFFER` (`ID_OFFER`);

--
-- Indexes for table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`IdOffre`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`IdOwner`),
  ADD UNIQUE KEY `FirstName` (`FirstName`),
  ADD UNIQUE KEY `LastName` (`LastName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `Idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offre`
--
ALTER TABLE `offre`
  MODIFY `IdOffre` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `IdOwner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`ID_OFFER`) REFERENCES `offre` (`IdOffre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
