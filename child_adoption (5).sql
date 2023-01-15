-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2023 at 06:39 AM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `child_adoption`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
CREATE TABLE IF NOT EXISTS `agency` (
  `AgencyCode` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Address` longtext NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  PRIMARY KEY (`AgencyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autobiography`
--

DROP TABLE IF EXISTS `autobiography`;
CREATE TABLE IF NOT EXISTS `autobiography` (
  `SR_no` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `Education` varchar(20) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `Marital_status` varchar(30) NOT NULL,
  `current_residency` varchar(50) NOT NULL,
  `relation_type` varchar(50) NOT NULL,
  PRIMARY KEY (`SR_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `child_desired`
--

DROP TABLE IF EXISTS `child_desired`;
CREATE TABLE IF NOT EXISTS `child_desired` (
  `Parent_id` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `child_info`
--

DROP TABLE IF EXISTS `child_info`;
CREATE TABLE IF NOT EXISTS `child_info` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Bio_Adopted` varchar(20) NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_employement_det`
--

DROP TABLE IF EXISTS `h_employement_det`;
CREATE TABLE IF NOT EXISTS `h_employement_det` (
  `Parent_id` int(11) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `office_address` longtext NOT NULL,
  `income_salary` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_fam_details`
--

DROP TABLE IF EXISTS `h_fam_details`;
CREATE TABLE IF NOT EXISTS `h_fam_details` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `liv_st` varchar(20) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_personal_details`
--

DROP TABLE IF EXISTS `h_personal_details`;
CREATE TABLE IF NOT EXISTS `h_personal_details` (
  `Parent_id` int(11) NOT NULL,
  `HName` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `address` longtext NOT NULL,
  `Phone_No` bigint(20) NOT NULL,
  `Education` varchar(50) NOT NULL,
  `Religion` varchar(20) NOT NULL,
  `Mothertongue` varchar(20) NOT NULL,
  `Marriage_Date` date NOT NULL,
  `Marriage_Place` varchar(50) NOT NULL,
  `marriagedoc` longblob NOT NULL,
  `PAN_card` longblob NOT NULL,
  `Adhar_card` longblob NOT NULL,
  `Medical_cer` longblob NOT NULL,
  `Bank_Details` longblob NOT NULL,
  `Signature` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_docs`
--

DROP TABLE IF EXISTS `other_docs`;
CREATE TABLE IF NOT EXISTS `other_docs` (
  `S_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_id` int(11) NOT NULL,
  `affidivit_letter` longblob NOT NULL,
  `Undertaking_Letter` longblob NOT NULL,
  `Property_declaration` longblob NOT NULL,
  `Family_photo` longblob NOT NULL,
  `marriage_certificate` longblob NOT NULL,
  PRIMARY KEY (`S_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Transaction_id` bigint(15) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Payment_Amt` decimal(20,0) NOT NULL,
  `Payment_Date` date NOT NULL,
  `Payment_mode` varchar(50) NOT NULL,
  PRIMARY KEY (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questionires`
--

DROP TABLE IF EXISTS `questionires`;
CREATE TABLE IF NOT EXISTS `questionires` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_id` int(11) NOT NULL,
  `Rooms_in_Home` longtext NOT NULL,
  `Spare_Time` longtext NOT NULL,
  `Help_at_Home` longtext NOT NULL,
  `Strng_pnts_Mrg` longtext NOT NULL,
  `Decision_for_Adopt` longtext NOT NULL,
  `Both_wish_Adopt` longtext NOT NULL,
  `Fam_Decision` longtext NOT NULL,
  `Fam_Reaction` longtext NOT NULL,
  `ifNo_Reason` longtext NOT NULL,
  `Strength_as_Parent` longtext NOT NULL,
  `Child_care` longtext NOT NULL,
  `ChildeCare_Absence` longtext NOT NULL,
  `Legal_Adopt` longtext NOT NULL,
  `Introducer` longtext NOT NULL,
  `Other_Details` longtext NOT NULL,
  PRIMARY KEY (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

DROP TABLE IF EXISTS `reference`;
CREATE TABLE IF NOT EXISTS `reference` (
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `Address` longtext NOT NULL,
  `Phone_no` bigint(13) NOT NULL,
  `Adhar_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `Parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) NOT NULL,
  `Phone_no` bigint(13) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`Parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Parent_id`, `Username`, `Phone_no`, `Email`, `Password`, `status`) VALUES
(1, 'dhanya', 8073503072, 'dhanya@gmail.com', '1bbd886460827015e5d605ed44252251', 'accepted'),
(2, 'dhanya h', 8073503072, 'dhanyah514@gmail.com', '1bbd886460827015e5d605ed44252251', 'rejected'),
(3, 'manya', 8073503072, 'manyah514@gmail.com', '725e81d4cc8acacce717db8b6d3290bd', 'accepted'),
(4, 'jahnavi', 8073503072, 'jahnavi@gmail.com', 'd702af1d701d104102bc3b3c4292a803', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `w_employement_det`
--

DROP TABLE IF EXISTS `w_employement_det`;
CREATE TABLE IF NOT EXISTS `w_employement_det` (
  `Parent_id` int(11) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `office_address` mediumtext NOT NULL,
  `income_salary` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_fam_details`
--

DROP TABLE IF EXISTS `w_fam_details`;
CREATE TABLE IF NOT EXISTS `w_fam_details` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `liv_st` varchar(20) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_personal_details`
--

DROP TABLE IF EXISTS `w_personal_details`;
CREATE TABLE IF NOT EXISTS `w_personal_details` (
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Address` mediumtext NOT NULL,
  `Phone_no` bigint(13) NOT NULL,
  `Educaton` varchar(20) NOT NULL,
  `Religion` varchar(10) NOT NULL,
  `mothertounge` varchar(10) NOT NULL,
  `marriage_date` date NOT NULL,
  `marriage_place` varchar(20) NOT NULL,
  `marriagedoc` longblob NOT NULL,
  `PAN_card` longblob NOT NULL,
  `Adhar_card` longblob NOT NULL,
  `Medical_certificate` longblob NOT NULL,
  `Bank_Details` longblob NOT NULL,
  `signature` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
