-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 11:31 PM
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
-- Database: `mygmhdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Idadmin` int(11) NOT NULL,
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

CREATE TABLE `client` (
  `Idclient` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `CIN` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Idclient`, `FirstName`, `LastName`, `Email`, `Phone`, `CIN`) VALUES
(1, 'client1', 'client1', 'client1', 'client1client1', 'client1'),
(2, 'client2', 'client2', 'client2', 'client2', 'client2');

-- --------------------------------------------------------

--
-- Table structure for table `demande`
--

CREATE TABLE `demande` (
  `Iddemande` int(11) NOT NULL,
  `Idclient` int(11) NOT NULL,
  `Typeoffer` varchar(50) NOT NULL,
  `Idoffer` int(11) NOT NULL,
  `Idadmin` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `dateDemande` date DEFAULT sysdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demande`
--

INSERT INTO `demande` (`Iddemande`, `Idclient`, `Typeoffer`, `Idoffer`, `Idadmin`, `status`, `dateDemande`) VALUES
(1, 1, 'chambre', 1, 1, 0, '2021-12-22'),
(2, 2, 'table', 11, 1, 0, '2021-12-22'),
(3, 1, 'chambre', 5, 1, 0, '2021-12-22'),
(4, 1, 'table', 15, 1, 0, '2021-12-22'),
(5, 1, 'chambre', 8, 1, 0, '2021-12-22'),
(6, 1, 'chambre', 2, 1, 0, '2021-12-22'),
(7, 1, 'table', 17, 1, 0, '2021-12-22'),
(8, 1, 'chambre', 1, 1, 0, '2021-12-22'),
(9, 2, 'chambre', 4, 1, 0, '2021-12-22'),
(10, 2, 'chambre', 5, 1, 0, '2021-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `Idoffer` int(4) NOT NULL,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `type` varchar(25) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer`
--

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
(10, 'table1', 0, 'table', 100),
(11, 'table2', 0, 'table', 100),
(12, 'table3', 0, 'table', 100),
(13, 'table4', 0, 'table', 150),
(14, 'table5', 0, 'table', 120),
(15, 'table6', 0, 'table', 200),
(16, 'table7', 0, 'table', 110),
(17, 'table8', 0, 'table', 140);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Idowner` int(11) NOT NULL,
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
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Idadmin`),
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
  ADD UNIQUE KEY `CIN` (`CIN`);

--
-- Indexes for table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`Iddemande`),
  ADD KEY `Idclient` (`Idclient`),
  ADD KEY `Idadmin` (`Idadmin`),
  ADD KEY `Idoffer` (`Idoffer`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`Idoffer`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Idowner`),
  ADD UNIQUE KEY `FirstName` (`FirstName`),
  ADD UNIQUE KEY `LastName` (`LastName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `Idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demande`
--
ALTER TABLE `demande`
  MODIFY `Iddemande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `Idoffer` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `Idowner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`Idclient`) REFERENCES `client` (`Idclient`),
  ADD CONSTRAINT `demande_ibfk_2` FOREIGN KEY (`Idadmin`) REFERENCES `admin` (`Idadmin`),
  ADD CONSTRAINT `demande_ibfk_3` FOREIGN KEY (`Idoffer`) REFERENCES `offer` (`Idoffer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
