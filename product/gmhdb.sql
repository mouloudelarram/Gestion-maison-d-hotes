-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 02 sep. 2022 à 16:36
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gmhdb`
--
CREATE DATABASE IF NOT EXISTS `gmhdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gmhdb`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
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
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`IdAdmin`, `FirstName`, `LastName`, `Username`, `Email`, `Phone`, `CIN`, `Password`, `HireDate`) VALUES
(15, 'AdminF', 'AdminL', 'AdminF.AdminL', 'Admin@gmail.com', '+212 625417841', 'HF124578', 'admin', '2021-12-08'),
(17, 'ownerF', 'ownerL', 'ownerF.ownerL', 'owner@gmail.com', '(+212) 645712821', 'GF741509', 'owner', '2021-12-18'),
(22, 'ad', 'ad', 'ad.ad', 'ad@gmail.com', 'null', 'null', 'ad', '2021-12-21');

-- --------------------------------------------------------

--
-- Structure de la table `client`
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
-- Déchargement des données de la table `client`
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
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `IdOffre` int(4) NOT NULL,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `type` varchar(25) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`IdOffre`, `label`, `status`, `type`, `price`) VALUES
(5, 'table1', 1, 'table', 12),
(6, 'chambre1', 1, 'chambre', 12457),
(7, 'table2', 0, 'table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `owner`
--

CREATE TABLE `owner` (
  `IdOwner` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `owner`
--

INSERT INTO `owner` (`IdOwner`, `FirstName`, `LastName`, `Password`) VALUES
(1, 'ownerF', 'ownerL', 'owner');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IdAdmin`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `CIN` (`CIN`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Idclient`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `CIN` (`CIN`),
  ADD KEY `ID_OFFER` (`ID_OFFER`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`IdOffre`);

--
-- Index pour la table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`IdOwner`),
  ADD UNIQUE KEY `FirstName` (`FirstName`),
  ADD UNIQUE KEY `LastName` (`LastName`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `Idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `IdOffre` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `owner`
--
ALTER TABLE `owner`
  MODIFY `IdOwner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`ID_OFFER`) REFERENCES `offre` (`IdOffre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
