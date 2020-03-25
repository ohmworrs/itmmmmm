-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2020 at 07:50 PM
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
-- Database: `se62_12`
--

-- --------------------------------------------------------

--
-- Table structure for table `Advisor`
--

CREATE TABLE `Advisor` (
  `AdvisorID` int(4) NOT NULL,
  `AdvisorName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Advisor`
--

INSERT INTO `Advisor` (`AdvisorID`, `AdvisorName`) VALUES
(1, 'โออิชิ เคียวโฮ'),
(2, 'อิชิตัน กรีนที');

-- --------------------------------------------------------

--
-- Table structure for table `ApproveEquipment`
--

CREATE TABLE `ApproveEquipment` (
  `ApproveEquipmentID` int(11) NOT NULL,
  `EquipmentINCartID` int(11) NOT NULL,
  `UserCode` varchar(15) NOT NULL,
  `EquipmentID` varchar(40) NOT NULL,
  `EquipmentName` varchar(30) NOT NULL,
  `EquipmentDetail` varchar(40) NOT NULL,
  `EquipmentImage` varchar(19) NOT NULL,
  `TypeID` varchar(5) NOT NULL,
  `DateBorrow` date NOT NULL,
  `DateReturn` date NOT NULL,
  `Reason` varchar(40) NOT NULL,
  `AdvisorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `DepartmentCode` varchar(10) NOT NULL,
  `DepartmentName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`DepartmentCode`, `DepartmentName`) VALUES
('E29', 'ภาควิชาวิศวกรรมคอมพิวเตอร์');

-- --------------------------------------------------------

--
-- Table structure for table `Equipment`
--

CREATE TABLE `Equipment` (
  `EquipmentID` varchar(30) NOT NULL,
  `EquipmentName` varchar(30) NOT NULL,
  `EquipmentDetail` varchar(30) NOT NULL,
  `EquipmentStatus` varchar(30) NOT NULL,
  `EquipmentImage` varchar(30) NOT NULL,
  `TypeID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`EquipmentID`, `EquipmentName`, `EquipmentDetail`, `EquipmentStatus`, `EquipmentImage`, `TypeID`) VALUES
('1002003000', 'โน้ตบุค', 'คอมพิวเตอร์ชนิดเคลื่อนที่', 'ไม่พร้อมใช้งาน', 'Notebook.jpeg', 'EH'),
('2001003000', 'เร้าเตอร์', 'อุปกรณ์รับสัญญาณ', 'พร้อมใช้งาน', 'Router.jpeg', 'EN'),
('212224', 'aaaaa', 'aaaaa', '', 'aaaaa', 'EH'),
('3001002000', 'แผ่นลงไดร์เวอร์', 'ลงไดร์เวอร์ให้กับคอมพิวเตอร์', 'พร้อมใช้งาน', 'Driver.jpeg', 'ES');

-- --------------------------------------------------------

--
-- Table structure for table `EquipmentINCart`
--

CREATE TABLE `EquipmentINCart` (
  `EquipmentINCartID` int(11) NOT NULL,
  `UserCode` varchar(15) NOT NULL,
  `EquipmentID` varchar(30) NOT NULL,
  `EquipmentName` varchar(30) NOT NULL,
  `EquipmentDetail` varchar(50) NOT NULL,
  `EquipmentImage` varchar(40) NOT NULL,
  `TypeID` varchar(11) NOT NULL,
  `DateBorrow` date NOT NULL,
  `DateReturn` date NOT NULL,
  `Reason` text NOT NULL,
  `AdvisorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EquipmentType`
--

CREATE TABLE `EquipmentType` (
  `TypeID` varchar(30) NOT NULL,
  `TypeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EquipmentType`
--

INSERT INTO `EquipmentType` (`TypeID`, `TypeName`) VALUES
('EH', 'อุปกรณ์ฮาร์ดแวร์'),
('EN', 'อุปกรณ์เน็ตเวิร์ค'),
('ES', 'อุปกรณ์ซอฟต์แวร์');

-- --------------------------------------------------------

--
-- Stand-in structure for view `followequipment`
-- (See below for the actual view)
--
CREATE TABLE `followequipment` (
`EquipmentID` varchar(30)
,`EquipmentName` varchar(30)
,`UserCode` varchar(15)
,`EquipmentStatus` varchar(30)
,`DateBorrow` date
,`DateReturn` date
);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `name`, `level`) VALUES
('admin', '1234', 'admin', 'admin'),
('b6020552004', '@Ohmworrs98', 'Worrasak Khammuang', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `StatusReserve`
--

CREATE TABLE `StatusReserve` (
  `StatusReserveID` int(11) NOT NULL,
  `EquipmentID` varchar(15) NOT NULL,
  `EquipmentName` varchar(30) NOT NULL,
  `UserCode` varchar(15) NOT NULL,
  `DateBorrow` date NOT NULL,
  `DateReturn` date NOT NULL,
  `StatusReserve` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Teacher`
--

CREATE TABLE `Teacher` (
  `TeacherID` int(11) NOT NULL,
  `TeacherName` varchar(40) NOT NULL,
  `Position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Teacher`
--

INSERT INTO `Teacher` (`TeacherID`, `TeacherName`, `Position`) VALUES
(1, 'วันเฉลิม ทูเฉลิม', ''),
(2, 'โอริโอ้ ชาเขียวเย็น', 'ศาสตราจารย์');

-- --------------------------------------------------------

--
-- Table structure for table `TeacherApp`
--

CREATE TABLE `TeacherApp` (
  `TeacherAppID` int(11) NOT NULL,
  `ApproveEqID` int(11) NOT NULL,
  `TeacherID` int(40) NOT NULL,
  `UserCode` varchar(15) NOT NULL,
  `EquipmentID` varchar(15) NOT NULL,
  `EquipmentName` varchar(45) NOT NULL,
  `DateBorrow` date NOT NULL,
  `DateReturn` date NOT NULL,
  `StatusReserve` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeacherApp`
--

INSERT INTO `TeacherApp` (`TeacherAppID`, `ApproveEqID`, `TeacherID`, `UserCode`, `EquipmentID`, `EquipmentName`, `DateBorrow`, `DateReturn`, `StatusReserve`) VALUES
(12, 13, 1, '1234456789', '11111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'อนุมัติแล้ว'),
(13, 13, 1, '1234456789', '111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'ไม่อนุมัติ'),
(14, 14, 1, '1234456789', '1111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'ไม่อนุมัติ'),
(15, 1, 1, '1234456789', '1111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'aaa'),
(16, 1, 1, '1234456789', '111111', 'โคอาล่า', '0000-00-00', '0000-00-00', '11'),
(17, 16, 1, '1234456789', '1111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'อนุมัติ'),
(18, 17, 1, '1234456789', '111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'ไม่อนุมัติ'),
(19, 18, 1, '1234456789', '111111', 'โคอาล่า', '0000-00-00', '0000-00-00', 'ไม่อนุมัติ'),
(20, 19, 1, 'b6020552004', '1002003000', 'โน้ตบุค', '2020-03-25', '2020-03-26', 'อนุมัติ'),
(21, 20, 1, 'b6020552004', '3001002000', 'แผ่นลงไดร์เวอร์', '2020-03-07', '2020-03-07', 'อนุมัติ'),
(22, 21, 1, 'b6020552004', '1002003000', 'โน้ตบุค', '2020-03-26', '2020-03-26', 'ไม่อนุมัติ');

-- --------------------------------------------------------

--
-- Table structure for table `UserMember`
--

CREATE TABLE `UserMember` (
  `UserCode` varchar(15) NOT NULL,
  `NameTitle` varchar(10) NOT NULL,
  `UserFNameEn` varchar(30) NOT NULL,
  `UserLNameEn` varchar(30) NOT NULL,
  `UserFNameTh` varchar(30) NOT NULL,
  `UserLNameTh` varchar(30) NOT NULL,
  `UserEmail` varchar(40) NOT NULL,
  `UserGender` varchar(10) NOT NULL,
  `DepartmentCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserMember`
--

INSERT INTO `UserMember` (`UserCode`, `NameTitle`, `UserFNameEn`, `UserLNameEn`, `UserFNameTh`, `UserLNameTh`, `UserEmail`, `UserGender`, `DepartmentCode`) VALUES
('b6020552004', 'Mr./นาย', 'Worrasak', 'Khammuang', 'วรศักดิ์', 'คำเหมือง', 'Worrasak.k@ku.th', 'Male', 'E29');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view1`
-- (See below for the actual view)
--
CREATE TABLE `view1` (
`EquipmentID` varchar(30)
,`EquipmentName` varchar(30)
,`EquipmentStatus` varchar(30)
,`EquipmentINCartID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view2`
-- (See below for the actual view)
--
CREATE TABLE `view2` (
`ApproveEquipmentID` int(11)
,`UserCode` varchar(15)
,`EquipmentID` varchar(30)
,`EquipmentName` varchar(30)
,`EquipmentStatus` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `followequipment`
--
DROP TABLE IF EXISTS `followequipment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `followequipment`  AS  select `equipment`.`EquipmentID` AS `EquipmentID`,`equipment`.`EquipmentName` AS `EquipmentName`,`approveequipment`.`UserCode` AS `UserCode`,`equipment`.`EquipmentStatus` AS `EquipmentStatus`,`approveequipment`.`DateBorrow` AS `DateBorrow`,`approveequipment`.`DateReturn` AS `DateReturn` from (`equipment` join `approveequipment`) where `equipment`.`EquipmentID` = `approveequipment`.`EquipmentID` ;

-- --------------------------------------------------------

--
-- Structure for view `view1`
--
DROP TABLE IF EXISTS `view1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1`  AS  select `equipment`.`EquipmentID` AS `EquipmentID`,`equipment`.`EquipmentName` AS `EquipmentName`,`equipment`.`EquipmentStatus` AS `EquipmentStatus`,`equipmentincart`.`EquipmentINCartID` AS `EquipmentINCartID` from (`equipment` join `equipmentincart`) where `equipment`.`EquipmentID` = `equipmentincart`.`EquipmentID` ;

-- --------------------------------------------------------

--
-- Structure for view `view2`
--
DROP TABLE IF EXISTS `view2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2`  AS  select `approveequipment`.`ApproveEquipmentID` AS `ApproveEquipmentID`,`approveequipment`.`UserCode` AS `UserCode`,`equipment`.`EquipmentID` AS `EquipmentID`,`equipment`.`EquipmentName` AS `EquipmentName`,`equipment`.`EquipmentStatus` AS `EquipmentStatus` from (`approveequipment` join `equipment`) where `approveequipment`.`EquipmentID` = `equipment`.`EquipmentID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Advisor`
--
ALTER TABLE `Advisor`
  ADD PRIMARY KEY (`AdvisorID`);

--
-- Indexes for table `ApproveEquipment`
--
ALTER TABLE `ApproveEquipment`
  ADD PRIMARY KEY (`ApproveEquipmentID`),
  ADD KEY `TypeID` (`TypeID`),
  ADD KEY `UserCode` (`UserCode`),
  ADD KEY `AdvisorID` (`AdvisorID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`DepartmentCode`);

--
-- Indexes for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD PRIMARY KEY (`EquipmentID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `EquipmentINCart`
--
ALTER TABLE `EquipmentINCart`
  ADD PRIMARY KEY (`EquipmentINCartID`),
  ADD KEY `EquipmentID` (`EquipmentID`),
  ADD KEY `TypeID` (`TypeID`),
  ADD KEY `UserCode` (`UserCode`),
  ADD KEY `AdvisorID` (`AdvisorID`);

--
-- Indexes for table `EquipmentType`
--
ALTER TABLE `EquipmentType`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `StatusReserve`
--
ALTER TABLE `StatusReserve`
  ADD PRIMARY KEY (`StatusReserveID`),
  ADD KEY `EquipmentID` (`EquipmentID`);

--
-- Indexes for table `Teacher`
--
ALTER TABLE `Teacher`
  ADD PRIMARY KEY (`TeacherID`);

--
-- Indexes for table `TeacherApp`
--
ALTER TABLE `TeacherApp`
  ADD PRIMARY KEY (`TeacherAppID`),
  ADD KEY `ApproveEqID` (`ApproveEqID`),
  ADD KEY `Teacher` (`TeacherID`);

--
-- Indexes for table `UserMember`
--
ALTER TABLE `UserMember`
  ADD PRIMARY KEY (`UserCode`),
  ADD KEY `DepartmentCode` (`DepartmentCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Advisor`
--
ALTER TABLE `Advisor`
  MODIFY `AdvisorID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ApproveEquipment`
--
ALTER TABLE `ApproveEquipment`
  MODIFY `ApproveEquipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `EquipmentINCart`
--
ALTER TABLE `EquipmentINCart`
  MODIFY `EquipmentINCartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `StatusReserve`
--
ALTER TABLE `StatusReserve`
  MODIFY `StatusReserveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Teacher`
--
ALTER TABLE `Teacher`
  MODIFY `TeacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TeacherApp`
--
ALTER TABLE `TeacherApp`
  MODIFY `TeacherAppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ApproveEquipment`
--
ALTER TABLE `ApproveEquipment`
  ADD CONSTRAINT `approveequipment_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `EquipmentType` (`TypeID`),
  ADD CONSTRAINT `approveequipment_ibfk_3` FOREIGN KEY (`UserCode`) REFERENCES `UserMember` (`UserCode`),
  ADD CONSTRAINT `approveequipment_ibfk_4` FOREIGN KEY (`AdvisorID`) REFERENCES `Advisor` (`AdvisorID`);

--
-- Constraints for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `EquipmentType` (`TypeID`);

--
-- Constraints for table `EquipmentINCart`
--
ALTER TABLE `EquipmentINCart`
  ADD CONSTRAINT `equipmentincart_ibfk_1` FOREIGN KEY (`EquipmentID`) REFERENCES `Equipment` (`EquipmentID`),
  ADD CONSTRAINT `equipmentincart_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `EquipmentType` (`TypeID`),
  ADD CONSTRAINT `equipmentincart_ibfk_3` FOREIGN KEY (`UserCode`) REFERENCES `UserMember` (`UserCode`),
  ADD CONSTRAINT `equipmentincart_ibfk_4` FOREIGN KEY (`AdvisorID`) REFERENCES `Advisor` (`AdvisorID`);

--
-- Constraints for table `StatusReserve`
--
ALTER TABLE `StatusReserve`
  ADD CONSTRAINT `statusreserve_ibfk_1` FOREIGN KEY (`EquipmentID`) REFERENCES `Equipment` (`EquipmentID`);

--
-- Constraints for table `TeacherApp`
--
ALTER TABLE `TeacherApp`
  ADD CONSTRAINT `teacherapp_ibfk_2` FOREIGN KEY (`TeacherID`) REFERENCES `Teacher` (`TeacherID`);

--
-- Constraints for table `UserMember`
--
ALTER TABLE `UserMember`
  ADD CONSTRAINT `usermember_ibfk_1` FOREIGN KEY (`UserCode`) REFERENCES `login` (`username`),
  ADD CONSTRAINT `usermember_ibfk_2` FOREIGN KEY (`DepartmentCode`) REFERENCES `Department` (`DepartmentCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
