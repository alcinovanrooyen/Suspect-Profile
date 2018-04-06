-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 10:47 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procrime`
--

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspects`
--

CREATE TABLE `pc_suspects` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `alias` text NOT NULL,
  `id_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_suspects`
--

INSERT INTO `pc_suspects` (`id`, `name`, `surname`, `alias`, `id_number`) VALUES
(1, 'Ronaldo', 'Van Rooyen', 'Naldo', 2147483647),
(2, 'Deriek', 'Van Wyk', 'Dicky', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_addresses`
--

CREATE TABLE `pc_suspect_addresses` (
  `suspect_id` int(11) NOT NULL,
  `current_address` text NOT NULL,
  `current_status_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `previous_address` text NOT NULL,
  `previous_status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `postal_address` text NOT NULL,
  `postal_status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `postal-type` text NOT NULL,
  `business_name` text NOT NULL,
  `business-address` text NOT NULL,
  `business_status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `occupation` text NOT NULL,
  `appointment_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `previous_occupation` text NOT NULL,
  `duration` int(11) NOT NULL,
  `email_address` text NOT NULL,
  `email_status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `web_page` text NOT NULL,
  `internet_service-provider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_circulation`
--

CREATE TABLE `pc_suspect_circulation` (
  `suspect_id` int(11) NOT NULL,
  `crime` text NOT NULL,
  `police_station` text NOT NULL,
  `cas` text NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_contact`
--

CREATE TABLE `pc_suspect_contact` (
  `suspect_id` int(11) NOT NULL,
  `tel_home` int(11) NOT NULL,
  `tel_office` int(11) NOT NULL,
  `tel_office_status-date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fax_home` int(11) NOT NULL,
  `fax_office` int(11) NOT NULL,
  `fax-office-status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cell_number` int(11) NOT NULL,
  `cell_number_status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_firearms`
--

CREATE TABLE `pc_suspect_firearms` (
  `suspect_id` int(11) NOT NULL,
  `firearms_registered` tinyint(1) NOT NULL,
  `number_of_firearms` int(11) NOT NULL,
  `firearm_serial_nr` int(11) NOT NULL,
  `firearm_calibre` text NOT NULL,
  `firearm_calibre_code` text NOT NULL,
  `firearm_make` text NOT NULL,
  `date_issued` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered_address` text NOT NULL,
  `dealer` text NOT NULL,
  `firearm_permit_over_border` tinyint(1) NOT NULL,
  `permit_nr` int(11) NOT NULL,
  `individual_fitness_to_carry-firearm` tinyint(1) NOT NULL,
  `firearm_status` int(11) NOT NULL,
  `police_station` text NOT NULL,
  `cas` text NOT NULL,
  `application_in-process` text NOT NULL,
  `application_declined` text NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_general`
--

CREATE TABLE `pc_suspect_general` (
  `suspect_id` int(11) NOT NULL,
  `social_activities` text NOT NULL,
  `place` text NOT NULL,
  `habits` text NOT NULL,
  `hobbies` text NOT NULL,
  `likes` text NOT NULL,
  `dislikes` text NOT NULL,
  `substance_use` text NOT NULL,
  `smoke` tinyint(1) NOT NULL,
  `religion` text NOT NULL,
  `personal_protection` tinyint(1) NOT NULL,
  `logical_description` text NOT NULL,
  `marks_tattoos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_marital`
--

CREATE TABLE `pc_suspect_marital` (
  `suspect_id` int(11) NOT NULL,
  `marital_status` int(11) NOT NULL,
  `orphan` tinyint(1) NOT NULL,
  `partner_id_number` int(11) NOT NULL,
  `maiden_name` text NOT NULL,
  `full_names` text NOT NULL,
  `children` int(11) NOT NULL,
  `names` text NOT NULL,
  `age` int(11) NOT NULL,
  `address` text NOT NULL,
  `status_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_photos`
--

CREATE TABLE `pc_suspect_photos` (
  `suspect_id` int(11) NOT NULL,
  `photo_url` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_services`
--

CREATE TABLE `pc_suspect_services` (
  `suspect_id` int(11) NOT NULL,
  `service` text NOT NULL,
  `service_number` int(11) NOT NULL,
  `security_clearance` tinyint(1) NOT NULL,
  `security_expiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `passport_number` int(11) NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `date_issued` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `passport_expiry_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `place_issued` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_suspect_vehicles`
--

CREATE TABLE `pc_suspect_vehicles` (
  `suspect_id` int(11) NOT NULL,
  `registration_number` int(11) NOT NULL,
  `vehicle_description` text NOT NULL,
  `engine-number` int(11) NOT NULL,
  `chassis_number` int(11) NOT NULL,
  `current_owner` text NOT NULL,
  `current_identity_number` int(11) NOT NULL,
  `ownership_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered-address` text NOT NULL,
  `previous_owner` text NOT NULL,
  `previous-identity_number` int(11) NOT NULL,
  `title_owner` text NOT NULL,
  `comments` text NOT NULL,
  `sabs_reference_nr` int(11) NOT NULL,
  `circulation_registration_nr` int(11) NOT NULL,
  `circulation_case_nr` int(11) NOT NULL,
  `circulation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `natis_nr` int(11) NOT NULL,
  `natis_attachment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pc_suspects`
--
ALTER TABLE `pc_suspects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pc_suspects`
--
ALTER TABLE `pc_suspects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
