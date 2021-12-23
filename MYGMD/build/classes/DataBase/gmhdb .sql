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
drop database MYGMHDB;
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
(2, 'chambre2', 0, 'chambre', 1400),
(3, 'chambre3', 0, 'chambre', 1100),
(4, 'chambre4', 0, 'chambre', 1500),
(5, 'chambre5', 0, 'chambre', 2000),
(6, 'chambre6', 0, 'chambre', 3500),
(7, 'chambre7', 0, 'chambre', 1800),
(8, 'chambre8', 0, 'chambre', 2500),
(9, 'chambre9', 0, 'chambre', 1950),
(10, 'chambre10', 0, 'chambre', 1000),
(11, 'chambre11', 0, 'chambre', 1400),
(12, 'chambre12', 0, 'chambre', 1100),
(13, 'chambre13', 0, 'chambre', 1500),
(14, 'chambre14', 0, 'chambre', 2000),
(15, 'chambre15', 0, 'chambre', 3500),
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

insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (1, 'Warden', 'Berggren', 'wberggren0@example.com', '552-897-3536', '661097494-2');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (2, 'Mariele', 'Meegan', 'mmeegan1@nasa.gov', '466-408-2039', '649522284-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (3, 'Jard', 'Bernat', 'jbernat2@marriott.com', '227-820-4670', '518855561-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (4, 'Suzette', 'Logsdale', 'slogsdale3@about.me', '258-576-6866', '620600129-6');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (5, 'Irina', 'McCreadie', 'imccreadie4@freewebs.com', '100-521-4956', '626171538-6');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (6, 'Davidde', 'Zum Felde', 'dzumfelde5@parallels.com', '395-928-9226', '054960387-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (7, 'Henka', 'Wollen', 'hwollen6@artisteer.com', '589-334-3849', '757201444-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (8, 'Jarrett', 'Hassen', 'jhassen7@nationalgeographic.com', '790-449-3454', '317095548-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (9, 'Bob', 'Legges', 'blegges8@youtu.be', '508-853-1954', '566372967-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (10, 'Thomasine', 'Teeney', 'tteeney9@ed.gov', '976-736-3450', '750642990-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (11, 'Nariko', 'Mattsson', 'nmattssona@oakley.com', '535-776-8274', '977030259-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (12, 'Else', 'Sissons', 'esissonsb@stumbleupon.com', '139-703-3502', '724575565-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (13, 'Dyann', 'Sprowson', 'dsprowsonc@ed.gov', '612-919-1197', '629843153-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (14, 'Ailis', 'Luck', 'aluckd@cmu.edu', '592-127-0216', '694827996-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (15, 'Kinny', 'Joburn', 'kjoburne@marketwatch.com', '607-856-9764', '163673148-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (16, 'Harriot', 'Lofthouse', 'hlofthousef@free.fr', '544-908-1278', '363316490-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (17, 'Glennis', 'Vivians', 'gviviansg@wp.com', '918-456-9441', '494587848-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (18, 'Kevyn', 'Cambridge', 'kcambridgeh@oaic.gov.au', '715-933-4923', '978310011-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (19, 'Brittan', 'Duhig', 'bduhigi@apple.com', '283-898-1932', '532434374-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (20, 'Isabelle', 'Tuer', 'ituerj@jigsy.com', '755-733-7000', '391421115-6');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (21, 'Chaddy', 'Sent', 'csentk@discuz.net', '332-890-1417', '531764468-2');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (22, 'Fidelio', 'Whyte', 'fwhytel@desdev.cn', '799-728-7379', '169402615-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (23, 'Cinda', 'Fawbert', 'cfawbertm@w3.org', '723-165-0181', '290610829-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (24, 'Nancie', 'Boulstridge', 'nboulstridgen@symantec.com', '948-518-0443', '562678732-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (25, 'Vance', 'Herculeson', 'vherculesono@techcrunch.com', '235-674-6455', '567991319-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (26, 'Muire', 'Scotchmur', 'mscotchmurp@themeforest.net', '215-876-7011', '252932373-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (27, 'Dahlia', 'Ianetti', 'dianettiq@so-net.ne.jp', '498-861-3515', '021562585-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (28, 'Alayne', 'Ride', 'arider@telegraph.co.uk', '743-333-8052', '642551381-0');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (29, 'Bron', 'Kubal', 'bkubals@marriott.com', '873-662-3887', '179216937-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (30, 'Katherine', 'Nornable', 'knornablet@arstechnica.com', '806-226-3931', '378482447-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (31, 'Vinnie', 'Tethacot', 'vtethacotu@simplemachines.org', '800-953-8632', '607970591-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (32, 'Portie', 'Acres', 'pacresv@utexas.edu', '289-492-4046', '346304028-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (33, 'Eugenius', 'Crossfield', 'ecrossfieldw@nydailynews.com', '892-974-0332', '431463084-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (34, 'Brendis', 'Dowe', 'bdowex@mail.ru', '569-798-9715', '400197214-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (35, 'Lenore', 'Arrighetti', 'larrighettiy@princeton.edu', '927-266-6012', '719257827-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (36, 'Gillie', 'Itzkovsky', 'gitzkovskyz@google.ca', '228-157-5982', '198592678-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (37, 'Avie', 'Connolly', 'aconnolly10@wordpress.com', '301-248-8272', '080445096-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (38, 'Hilary', 'Dell''Abbate', 'hdellabbate11@statcounter.com', '815-843-7988', '663377183-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (39, 'Farica', 'Pembry', 'fpembry12@ustream.tv', '539-112-7698', '751427830-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (40, 'Candice', 'Maiden', 'cmaiden13@surveymonkey.com', '707-180-7286', '119783836-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (41, 'Lodovico', 'Spurdens', 'lspurdens14@bloglines.com', '159-651-8651', '834775717-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (42, 'Welbie', 'Getcliff', 'wgetcliff15@vk.com', '618-561-3914', '405668236-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (43, 'Deerdre', 'Wisker', 'dwisker16@latimes.com', '722-507-5397', '303838617-0');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (44, 'Jimmie', 'Revell', 'jrevell17@yahoo.com', '382-673-6254', '660000123-2');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (45, 'Rafaellle', 'Chilver', 'rchilver18@google.it', '156-637-3812', '244271982-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (46, 'Carina', 'Keddie', 'ckeddie19@sun.com', '380-257-6777', '171409085-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (47, 'Dermot', 'Choulerton', 'dchoulerton1a@mysql.com', '343-830-2587', '592753486-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (48, 'Kinsley', 'Beddoe', 'kbeddoe1b@fc2.com', '715-907-4749', '441800766-0');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (49, 'Valeria', 'Norton', 'vnorton1c@unc.edu', '598-825-6280', '936561648-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (50, 'Iorgos', 'Hek', 'ihek1d@mit.edu', '685-646-4506', '574057893-0');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (51, 'Jessamyn', 'Scutchings', 'jscutchings1e@delicious.com', '913-720-3714', '535730108-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (52, 'Carny', 'Astall', 'castall1f@tmall.com', '223-565-5322', '786613542-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (53, 'Beatrisa', 'Slayford', 'bslayford1g@cargocollective.com', '929-202-7430', '733886973-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (54, 'Oren', 'Manclark', 'omanclark1h@so-net.ne.jp', '544-716-6838', '861556861-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (55, 'Stinky', 'Josskovitz', 'sjosskovitz1i@ustream.tv', '711-810-7571', '616672809-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (56, 'Nyssa', 'O''Hannigan', 'nohannigan1j@123-reg.co.uk', '594-413-3177', '421158423-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (57, 'Margaux', 'Apperley', 'mapperley1k@hao123.com', '609-834-1236', '675700734-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (58, 'Brandais', 'Hakeworth', 'bhakeworth1l@aboutads.info', '549-439-1094', '659104746-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (59, 'Merilee', 'Yepiskopov', 'myepiskopov1m@yellowbook.com', '609-304-4178', '409660476-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (60, 'Quillan', 'Eliasen', 'qeliasen1n@cafepress.com', '576-959-4600', '066301037-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (61, 'Vallie', 'Eyer', 'veyer1o@slideshare.net', '975-168-6905', '862110087-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (62, 'Park', 'Campana', 'pcampana1p@mtv.com', '210-893-7376', '335902069-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (63, 'Sauncho', 'Wallbridge', 'swallbridge1q@ycombinator.com', '361-806-9733', '573414921-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (64, 'Locke', 'Ellse', 'lellse1r@phoca.cz', '204-702-1498', '454972286-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (65, 'Kellby', 'Leward', 'kleward1s@about.me', '316-688-0480', '637846878-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (66, 'Fabio', 'Kirkhouse', 'fkirkhouse1t@mysql.com', '276-945-1832', '307189944-0');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (67, 'Gerek', 'Munnis', 'gmunnis1u@hostgator.com', '562-747-9484', '033743558-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (68, 'Dougie', 'Gerin', 'dgerin1v@cargocollective.com', '844-285-7002', '893535686-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (69, 'Stefania', 'Grafton-Herbert', 'sgraftonherbert1w@psu.edu', '619-326-0646', '039888497-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (70, 'Nolan', 'Cazereau', 'ncazereau1x@wufoo.com', '383-666-2298', '920876375-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (71, 'Berthe', 'Hasty', 'bhasty1y@skyrock.com', '332-208-1986', '720733524-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (72, 'Chrissy', 'Beckerleg', 'cbeckerleg1z@shareasale.com', '801-344-3502', '162306144-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (73, 'Gregorio', 'Goodsall', 'ggoodsall20@hubpages.com', '266-982-9118', '568851401-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (74, 'Irma', 'Folkes', 'ifolkes21@bigcartel.com', '168-789-1869', '890572544-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (75, 'Jania', 'Delves', 'jdelves22@disqus.com', '657-107-3744', '655341910-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (76, 'Davita', 'Aguirrezabal', 'daguirrezabal23@psu.edu', '397-885-4725', '139797198-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (77, 'Spencer', 'Paradin', 'sparadin24@i2i.jp', '999-834-0992', '917992584-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (78, 'Johnath', 'Norledge', 'jnorledge25@admin.ch', '203-218-5504', '323974741-3');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (79, 'Bethany', 'Dansie', 'bdansie26@4shared.com', '323-326-1098', '844026386-4');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (80, 'Rafe', 'Jurick', 'rjurick27@omniture.com', '255-228-4633', '368811773-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (81, 'Moyna', 'Blachford', 'mblachford28@gmpg.org', '489-103-0537', '780481342-2');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (82, 'Dorian', 'Brundill', 'dbrundill29@newsvine.com', '167-689-5326', '338798306-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (83, 'Celka', 'Rosier', 'crosier2a@1688.com', '260-246-8673', '711677211-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (84, 'Leonard', 'Mitton', 'lmitton2b@japanpost.jp', '961-964-2222', '154292036-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (85, 'Margarete', 'Bitcheno', 'mbitcheno2c@state.gov', '919-122-7477', '205004619-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (86, 'Jere', 'Souttar', 'jsouttar2d@harvard.edu', '147-933-1386', '847594206-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (87, 'Doralynn', 'Bish', 'dbish2e@about.com', '253-513-3003', '083007727-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (88, 'Averell', 'Ferneyhough', 'aferneyhough2f@china.com.cn', '768-696-7624', '828710557-9');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (89, 'Aida', 'Bonsale', 'abonsale2g@nationalgeographic.com', '558-816-4378', '416298562-6');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (90, 'Leese', 'Hedley', 'lhedley2h@ted.com', '425-451-4553', '231354541-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (91, 'Libbie', 'Mulqueen', 'lmulqueen2i@harvard.edu', '224-346-8756', '889079500-X');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (92, 'Glen', 'Teale', 'gteale2j@thetimes.co.uk', '553-200-1926', '423699457-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (93, 'Hulda', 'Wemyss', 'hwemyss2k@sakura.ne.jp', '263-329-0669', '792302808-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (94, 'Dewitt', 'Harbin', 'dharbin2l@whitehouse.gov', '584-102-6763', '001256594-6');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (95, 'Emmalee', 'Navarijo', 'enavarijo2m@freewebs.com', '247-992-8714', '814384996-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (96, 'Karisa', 'Domb', 'kdomb2n@gmpg.org', '565-327-3753', '986391627-7');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (97, 'Moore', 'Izod', 'mizod2o@miibeian.gov.cn', '693-509-4706', '991680281-5');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (98, 'Cathie', 'Beston', 'cbeston2p@creativecommons.org', '959-395-1030', '293964510-8');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (99, 'Lenna', 'Linskey', 'llinskey2q@arizona.edu', '675-998-8893', '610700208-1');
insert into client (idclient, FirstName, LastName, Email, Phone, CIN) values (100, 'Claudell', 'Plaschke', 'cplaschke2r@canalblog.com', '802-607-9231', '852733271-X');



INSERT INTO `demande` (`Iddemande`, `Idclient`, `Typeoffer`, `Idoffer`, `Idadmin`, `status`, `dateDemande`) VALUES
(1, 1, 'chambre', 1, 1, 1, '2021-12-23'),
(2, 2, 'table', 26, 1, 1, '2021-12-23'),
(3, 3, 'chambre', 2, 1, 1, '2021-12-23'),
(4, 4, 'chambre', 3, 1, 1, '2021-12-23'),
(5, 5, 'table', 27, 1, 1, '2021-12-23'),
(6, 6, 'table', 28, 1, 1, '2021-12-23'),
(7, 7, 'chambre', 5, 1, 1, '2021-12-23'),
(8, 8, 'chambre', 6, 1, 1, '2021-12-23'),
(9, 9, 'table', 29, 1, 1, '2021-12-23'),
(10, 10, 'table', 30, 1, 1, '2021-12-23'),
(11, 11, 'chambre', 7, 1, 1, '2021-12-23'),
(12, 12, 'chambre', 8, 1, 1, '2021-12-23'),
(13, 13, 'chambre', 9, 1, 1, '2021-12-23'),
(14, 14, 'table', 32, 1, 1, '2021-12-23'),
(15, 15, 'table', 33, 1, 1, '2021-12-23'),
(16, 16, 'table', 34, 1, 1, '2021-12-23'),
(17, 17, 'chambre', 13, 1, 1, '2021-12-23'),
(18, 18, 'chambre', 14, 1, 1, '2021-12-23'),
(19, 19, 'chambre', 15, 1, 1, '2021-12-23'),
(20, 20, 'table', 36, 1, 1, '2021-12-23'),
(21, 21, 'table', 37, 1, 1, '2021-12-23'),
(22, 22, 'table', 38, 1, 1, '2021-12-23'),
(23, 24, 'table', 50, 1, 1, '2021-12-23'),
(24, 25, 'chambre', 20, 1, 1, '2021-12-23'),
(25, 26, 'chambre', 19, 1, 1, '2021-12-23'),
(26, 27, 'chambre', 18, 1, 1, '2021-12-23'),
(27, 28, 'chambre', 16, 1, 1, '2021-12-23'),
(28, 28, 'table', 49, 1, 1, '2021-12-23'),
(29, 29, 'chambre', 17, 1, 1, '2021-12-23'),
(30, 30, 'table', 48, 1, 1, '2021-12-23'),
(31, 31, 'table', 45, 1, 1, '2021-12-23'),
(32, 32, 'table', 44, 1, 1, '2021-12-23'),
(33, 33, 'chambre', 22, 1, 1, '2021-12-23'),
(34, 34, 'chambre', 25, 1, 1, '2021-12-23'),
(35, 34, 'chambre', 24, 1, 1, '2021-12-23'),
(36, 35, 'table', 41, 1, 1, '2021-12-23');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
