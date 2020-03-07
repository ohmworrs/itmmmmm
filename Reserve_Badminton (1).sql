-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2020 at 02:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Reserve_Badminton`
--

-- --------------------------------------------------------

--
-- Table structure for table `Badminton`
--

CREATE TABLE `Badminton` (
  `BadmintonID` int(11) NOT NULL,
  `BadmintonCourt` varchar(10) CHARACTER SET utf8 NOT NULL,
  `StatusCourt` varchar(15) CHARACTER SET utf8 NOT NULL,
  `GymID` int(11) DEFAULT NULL,
  `TimeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Badminton`
--

INSERT INTO `Badminton` (`BadmintonID`, `BadmintonCourt`, `StatusCourt`, `GymID`, `TimeID`) VALUES
(1, 'คอร์ดที่1', 'กำลังจอง', 1, 1),
(2, 'คอร์ดที่1', 'ว่าง', 1, 2),
(3, 'คอร์ดที่1', 'ว่าง', 1, 3),
(4, 'คอร์ดที่1', 'ว่าง', 1, 4),
(5, 'คอร์ดที่2', 'ว่าง', 1, 1),
(6, 'คอร์ดที่2', 'ว่าง', 1, 2),
(7, 'คอร์ดที่2', 'ว่าง', 1, 3),
(8, 'คอร์ดที่2', 'ว่าง', 1, 4),
(9, 'คอร์ดที่3', 'ว่าง', 1, 1),
(10, 'คอร์ดที่3', 'ว่าง', 1, 2),
(11, 'คอร์ดที่3', 'ว่าง', 1, 3),
(12, 'คอร์ดที่3', 'ว่าง', 1, 4),
(13, 'คอร์ดที่4', 'ว่าง', 1, 1),
(14, 'คอร์ดที่4', 'ว่าง', 1, 2),
(15, 'คอร์ดที่4', 'ว่าง', 1, 3),
(16, 'คอร์ดที่4', 'ว่าง', 1, 4),
(17, 'คอร์ดที่5', 'ว่าง', 1, 1),
(18, 'คอร์ดที่5', 'ว่าง', 1, 2),
(19, 'คอร์ดที่5', 'ว่าง', 1, 3),
(20, 'คอร์ดที่5', 'ว่าง', 1, 4),
(21, 'คอร์ดที่6', 'ว่าง', 1, 1),
(22, 'คอร์ดที่6', 'ว่าง', 1, 2),
(23, 'คอร์ดที่6', 'ว่าง', 1, 3),
(24, 'คอร์ดที่6', 'ว่าง', 1, 4),
(25, 'คอร์ดที่7', 'ว่าง', 1, 1),
(26, 'คอร์ดที่7', 'ว่าง', 1, 2),
(27, 'คอร์ดที่7', 'ว่าง', 1, 3),
(28, 'คอร์ดที่7', 'ว่าง', 1, 4),
(29, 'คอร์ดที่1', 'ว่าง', 2, 1),
(30, 'คอร์ดที่1', 'กำลังจอง', 2, 2),
(31, 'คอร์ดที่1', 'ว่าง', 2, 3),
(32, 'คอร์ดที่1', 'ว่าง', 2, 4),
(33, 'คอร์ดที่2', 'ว่าง', 2, 1),
(34, 'คอร์ดที่2', 'ว่าง', 2, 2),
(35, 'คอร์ดที่2', 'ว่าง', 2, 3),
(36, 'คอร์ดที่2', 'ว่าง', 2, 4),
(37, 'คอร์ดที่3', 'ว่าง', 2, 1),
(38, 'คอร์ดที่3', 'ว่าง', 2, 2),
(39, 'คอร์ดที่3', 'ว่าง', 2, 3),
(40, 'คอร์ดที่3', 'ว่าง', 2, 4),
(41, 'คอร์ดที่4', 'ว่าง', 2, 1),
(42, 'คอร์ดที่4', 'ว่าง', 2, 2),
(43, 'คอร์ดที่4', 'ว่าง', 2, 3),
(44, 'คอร์ดที่4', 'ว่าง', 2, 4),
(45, 'คอร์ดที่5', 'ว่าง', 2, 1),
(46, 'คอร์ดที่5', 'ว่าง', 2, 2),
(47, 'คอร์ดที่5', 'ว่าง', 2, 3),
(48, 'คอร์ดที่5', 'ว่าง', 2, 4),
(49, 'คอร์ดที่6', 'ว่าง', 2, 1),
(50, 'คอร์ดที่6', 'ว่าง', 2, 2),
(51, 'คอร์ดที่6', 'ว่าง', 2, 3),
(52, 'คอร์ดที่6', 'ว่าง', 2, 4),
(53, 'คอร์ดที่7', 'ว่าง', 2, 1),
(54, 'คอร์ดที่7', 'ว่าง', 2, 2),
(55, 'คอร์ดที่7', 'ว่าง', 2, 3),
(56, 'คอร์ดที่7', 'ว่าง', 2, 4),
(57, 'คอร์ดที่8', 'ว่าง', 2, 1),
(58, 'คอร์ดที่8', 'ว่าง', 2, 2),
(59, 'คอร์ดที่8', 'ว่าง', 2, 3),
(60, 'คอร์ดที่8', 'ว่าง', 2, 4),
(61, 'คอร์ดที่9', 'ว่าง', 2, 1),
(62, 'คอร์ดที่9', 'ว่าง', 2, 2),
(63, 'คอร์ดที่9', 'ว่าง', 2, 3),
(64, 'คอร์ดที่9', 'ว่าง', 2, 4),
(65, 'คอร์ดที่10', 'ว่าง', 2, 1),
(66, 'คอร์ดที่10', 'ว่าง', 2, 2),
(67, 'คอร์ดที่10', 'ว่าง', 2, 3),
(68, 'คอร์ดที่10', 'ว่าง', 2, 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `badmintonshoww`
-- (See below for the actual view)
--
CREATE TABLE `badmintonshoww` (
`BadmintonID` int(11)
,`BadmintonCourt` varchar(10)
,`TerminalGym` varchar(10)
,`TimeStart` time
,`TimeFinish` time
,`StatusCourt` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `Gym`
--

CREATE TABLE `Gym` (
  `GymID` int(11) NOT NULL,
  `GymName` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Gym`
--

INSERT INTO `Gym` (`GymID`, `GymName`) VALUES
(1, 'อาคาร1'),
(2, 'อาคาร3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`, `name`, `level`) VALUES
(1, 'admin', '1234', 'admin', 'admin'),
(2, 'worrasak', '1234', 'worr', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `RateBadminton`
--

CREATE TABLE `RateBadminton` (
  `RateBadmintonID` int(11) NOT NULL,
  `TypeRatePerson` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TerminalGym` varchar(20) CHARACTER SET utf8 NOT NULL,
  `PriceMemberPerYear` int(11) NOT NULL,
  `PriceMember` int(11) NOT NULL,
  `PriceNotMember` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RateBadminton`
--

INSERT INTO `RateBadminton` (`RateBadmintonID`, `TypeRatePerson`, `TerminalGym`, `PriceMemberPerYear`, `PriceMember`, `PriceNotMember`) VALUES
(1, 'เด็กอายุต่ำกว่า13', 'อาคาร1', 200, 40, 60),
(2, 'นักเรียนและนิสิต', 'อาคาร1', 100, 40, 60),
(3, 'บุคลากร', 'อาคาร1', 200, 40, 60),
(4, 'บุคคลทั่วไป', 'อาคาร1', 500, 60, 80),
(5, 'เด็กอายุต่ำกว่า13', 'อาคาร3', 200, 100, 140),
(6, 'นักเรียนและนิสิต', 'อาคาร3', 100, 100, 140),
(7, 'บุคลากร', 'อาคาร3', 200, 100, 140),
(8, 'บุคคลทั่วไป', 'อาคาร3', 500, 120, 160);

-- --------------------------------------------------------

--
-- Table structure for table `Reserve`
--

CREATE TABLE `Reserve` (
  `ReserveID` int(11) NOT NULL,
  `ReserveName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ReserveTel` varchar(11) NOT NULL,
  `ReserveEmail` varchar(50) NOT NULL,
  `TimeID` int(11) NOT NULL,
  `BadmintonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Reserve`
--

INSERT INTO `Reserve` (`ReserveID`, `ReserveName`, `ReserveTel`, `ReserveEmail`, `TimeID`, `BadmintonID`) VALUES
(1, 'วรศักดิ์ คำเหมือง', '0643348302', 'Worrasak.k@ku.th', 1, 1),
(2, 'จุฑามาศ ศรีประเสริฐ', '0971383971', 'Juthamas.s@ku.th', 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `Time`
--

CREATE TABLE `Time` (
  `TimeID` int(10) NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeFinish` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Time`
--

INSERT INTO `Time` (`TimeID`, `TimeStart`, `TimeFinish`) VALUES
(1, '16:30:00', '17:30:00'),
(2, '17:30:00', '18:30:00'),
(3, '18:30:00', '19:30:00'),
(4, '19:30:00', '20:30:00');

-- --------------------------------------------------------

--
-- Structure for view `badmintonshoww`
--
DROP TABLE IF EXISTS `badmintonshoww`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reserve_badminton`.`badmintonshoww`  AS  select `reserve_badminton`.`badminton`.`BadmintonID` AS `BadmintonID`,`reserve_badminton`.`badminton`.`BadmintonCourt` AS `BadmintonCourt`,`reserve_badminton`.`gym`.`GymName` AS `TerminalGym`,`reserve_badminton`.`time`.`TimeStart` AS `TimeStart`,`reserve_badminton`.`time`.`TimeFinish` AS `TimeFinish`,`reserve_badminton`.`badminton`.`StatusCourt` AS `StatusCourt` from ((`reserve_badminton`.`badminton` join `reserve_badminton`.`gym`) join `reserve_badminton`.`time`) where `reserve_badminton`.`badminton`.`TimeID` = `reserve_badminton`.`time`.`TimeID` and `reserve_badminton`.`badminton`.`GymID` = `reserve_badminton`.`gym`.`GymID` order by `reserve_badminton`.`badminton`.`BadmintonID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Badminton`
--
ALTER TABLE `Badminton`
  ADD PRIMARY KEY (`BadmintonID`),
  ADD KEY `GymID` (`GymID`),
  ADD KEY `TimeID` (`TimeID`);

--
-- Indexes for table `Gym`
--
ALTER TABLE `Gym`
  ADD PRIMARY KEY (`GymID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `RateBadminton`
--
ALTER TABLE `RateBadminton`
  ADD PRIMARY KEY (`RateBadmintonID`);

--
-- Indexes for table `Reserve`
--
ALTER TABLE `Reserve`
  ADD PRIMARY KEY (`ReserveID`),
  ADD KEY `TimeID` (`TimeID`),
  ADD KEY `BadmintonID` (`BadmintonID`);

--
-- Indexes for table `Time`
--
ALTER TABLE `Time`
  ADD PRIMARY KEY (`TimeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Badminton`
--
ALTER TABLE `Badminton`
  MODIFY `BadmintonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `Gym`
--
ALTER TABLE `Gym`
  MODIFY `GymID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `RateBadminton`
--
ALTER TABLE `RateBadminton`
  MODIFY `RateBadmintonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Reserve`
--
ALTER TABLE `Reserve`
  MODIFY `ReserveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Time`
--
ALTER TABLE `Time`
  MODIFY `TimeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Badminton`
--
ALTER TABLE `Badminton`
  ADD CONSTRAINT `badminton_ibfk_1` FOREIGN KEY (`GymID`) REFERENCES `Gym` (`GymID`),
  ADD CONSTRAINT `badminton_ibfk_2` FOREIGN KEY (`TimeID`) REFERENCES `Time` (`TimeID`);

--
-- Constraints for table `Reserve`
--
ALTER TABLE `Reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`TimeID`) REFERENCES `Time` (`TimeID`),
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`BadmintonID`) REFERENCES `Badminton` (`BadmintonID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
