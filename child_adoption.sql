-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 03:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
CREATE DATABASE IF NOT EXISTS `child_adoption` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `child_adoption`;

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `AgencyCode` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` longtext NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autobiography`
--

CREATE TABLE `autobiography` (
  `SR_no` int(11) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `Education` varchar(20) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `Marital_status` varchar(30) NOT NULL,
  `current_residency` varchar(50) NOT NULL,
  `relation_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `child_desired`
--

CREATE TABLE `child_desired` (
  `Parent_id` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `child_info`
--

CREATE TABLE `child_info` (
  `serial_no` int(11) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Bio_Adopted` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_employement_det`
--

CREATE TABLE `h_employement_det` (
  `Parent_id` int(11) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `office_address` longtext NOT NULL,
  `income_salary` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_fam_details`
--

CREATE TABLE `h_fam_details` (
  `SNo` int(11) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `liv_st` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_personal_details`
--

CREATE TABLE `h_personal_details` (
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

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_docs`
--

CREATE TABLE `other_docs` (
  `S_Number` int(11) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `affidivit_letter` longblob NOT NULL,
  `Undertaking_Letter` longblob NOT NULL,
  `Property_declaration` longblob NOT NULL,
  `Family_photo` longblob NOT NULL,
  `marriage_certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Transaction_id` bigint(15) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Payment_Amt` decimal(20,0) NOT NULL,
  `Payment_Date` date NOT NULL,
  `Payment_mode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questionires`
--

CREATE TABLE `questionires` (
  `S_No` int(11) NOT NULL,
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
  `Other_Details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
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

CREATE TABLE `registration` (
  `Parent_id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Phone_no` bigint(13) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_employement_det`
--

CREATE TABLE `w_employement_det` (
  `Parent_id` int(11) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `office_address` mediumtext NOT NULL,
  `income_salary` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_fam_details`
--

CREATE TABLE `w_fam_details` (
  `SNo` int(11) NOT NULL,
  `Parent_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `liv_st` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_personal_details`
--

CREATE TABLE `w_personal_details` (
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`AgencyCode`);

--
-- Indexes for table `autobiography`
--
ALTER TABLE `autobiography`
  ADD PRIMARY KEY (`SR_no`);

--
-- Indexes for table `child_info`
--
ALTER TABLE `child_info`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `h_fam_details`
--
ALTER TABLE `h_fam_details`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `other_docs`
--
ALTER TABLE `other_docs`
  ADD PRIMARY KEY (`S_Number`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Transaction_id`);

--
-- Indexes for table `questionires`
--
ALTER TABLE `questionires`
  ADD PRIMARY KEY (`S_No`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Parent_id`);

--
-- Indexes for table `w_fam_details`
--
ALTER TABLE `w_fam_details`
  ADD PRIMARY KEY (`SNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `AgencyCode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autobiography`
--
ALTER TABLE `autobiography`
  MODIFY `SR_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `child_info`
--
ALTER TABLE `child_info`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `h_fam_details`
--
ALTER TABLE `h_fam_details`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_docs`
--
ALTER TABLE `other_docs`
  MODIFY `S_Number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionires`
--
ALTER TABLE `questionires`
  MODIFY `S_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `w_fam_details`
--
ALTER TABLE `w_fam_details`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
