-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 01:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kancaroo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries_form`
--

CREATE TABLE `enquiries_form` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `pickup_location` varchar(150) NOT NULL,
  `delivery_location` varchar(150) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `company_payment_type` varchar(100) DEFAULT NULL,
  `car_number` varchar(150) DEFAULT NULL,
  `car_make` varchar(150) DEFAULT NULL,
  `car_model` varchar(150) DEFAULT NULL,
  `body_type` varchar(150) DEFAULT NULL,
  `car_color` varchar(150) DEFAULT NULL,
  `chassis_no` varchar(150) DEFAULT NULL,
  `engine_no` varchar(150) DEFAULT NULL,
  `policy_no` varchar(150) DEFAULT NULL,
  `insurance_company` varchar(150) DEFAULT NULL,
  `pickup_geo_location` varchar(200) DEFAULT NULL,
  `delivery_geo_location` varchar(150) DEFAULT NULL,
  `pickup_date` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiries_form`
--

INSERT INTO `enquiries_form` (`id`, `name`, `mobile_no`, `pickup_location`, `delivery_location`, `email`, `payment_type`, `company_name`, `company_payment_type`, `car_number`, `car_make`, `car_model`, `body_type`, `car_color`, `chassis_no`, `engine_no`, `policy_no`, `insurance_company`, `pickup_geo_location`, `delivery_geo_location`, `pickup_date`) VALUES
(1, 'bharathi', '9952147994', 'Chennai', 'madurai', 'kaleelinkwc@gmail.com', 'self payment', '', 'To be paid', 'TN67 BJ 1982', 'maruthi', 'eratiya', '', '', '', '', '', '', '', '', ''),
(2, 'Dinesh', '9952147994', 'delhi', 'Mumbai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dinesh', '9952147994', 'delhi', 'Mumbai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'bharathi', '9952147994', 'chennai', 'Mumbai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'bharathi1', '9876543210', 'chennai', 'madurai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'kwctest', '9874563210', 'Chennai', 'Munbai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries_form`
--
ALTER TABLE `enquiries_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries_form`
--
ALTER TABLE `enquiries_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
